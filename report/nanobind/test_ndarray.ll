Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/test_ndarray?download=true
inline.NumInlined: 2079
inline.NumDeleted: 1057
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZL30nanobind_test_ndarray_ext_execP7_object:bb.a
  store ptr %i.dg, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !15
  %.not = icmp eq ptr %i.dg, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %128, align 8
  %.not.i.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.dh = load i32, ptr %0, align 8, !tbaa !16
  %i.di = add i32 %i.dh, 1                        ; 2 uses
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.di, ptr %0, align 8, !tbaa !16
  %.pre = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %i.dk = phi ptr [ %i.dg, %bb.b ], [ %i.dg, %bb.c ], [ %.pre, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %122)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn) #25
  store ptr null, ptr %i.cn, align 8, !tbaa !208
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #25
  %i.dl = getelementptr inbounds nuw i8, ptr %94, i64 56
  %i.dm = getelementptr inbounds nuw i8, ptr %94, i64 32
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3$_0bJRKNS_7ndarrayIJNS_2roEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj4ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSE_jPNS0_12cleanup_listEE_8__invokeESS_ST_jSV_", ptr %i.dm, align 8, !tbaa !211
  %i.dn = getelementptr inbounds nuw i8, ptr %94, i64 40
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3$_0bJRKNS_7ndarrayIJNS_2roEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj4ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr", ptr %i.dn, align 8, !tbaa !212
  %i.do = getelementptr inbounds nuw i8, ptr %94, i64 48
  store ptr %i.cn, ptr %i.do, align 8, !tbaa !213
  %i.dp = getelementptr inbounds nuw i8, ptr %94, i64 60
  store <2 x i16> splat (i16 1), ptr %i.dp, align 4, !tbaa !20
  %i.dq = getelementptr inbounds nuw i8, ptr %94, i64 88
  %i.dr = getelementptr inbounds nuw i8, ptr %94, i64 96
  %i.ds = getelementptr inbounds nuw i8, ptr %94, i64 112
  store i32 4, ptr %i.ds, align 8, !tbaa !215
  %i.dt = getelementptr inbounds nuw i8, ptr %94, i64 80
  store ptr %0, ptr %i.dt, align 8, !tbaa !216
  %i.du = getelementptr inbounds nuw i8, ptr %94, i64 64
  store ptr @.str.3, ptr %i.du, align 8, !tbaa !217
  store i32 11, ptr %i.dl, align 8, !tbaa !218
  store ptr @.str.4, ptr %i.dq, align 8, !tbaa !219
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dr, i8 0, i64 16, i1 false)
  %i.dv = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.dk, ptr noundef nonnull %94) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %121) #25
  store ptr @.str.4, ptr %121, align 8, !tbaa !221
  %i.dw = getelementptr inbounds nuw i8, ptr %121, i64 8
  store ptr null, ptr %i.dw, align 8, !tbaa !222
  %i.dx = getelementptr inbounds nuw i8, ptr %121, i64 16 ; 2 uses
  store i64 ptrtoint (ptr @_Py_NoneStruct to i64), ptr %i.dx, align 8
  store ptr null, ptr %122, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm) #25
  store ptr null, ptr %i.cm, align 8, !tbaa !208
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #25
  %i.dy = getelementptr inbounds nuw i8, ptr %93, i64 56
  %i.dz = getelementptr inbounds nuw i8, ptr %93, i64 32
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3$_1bJRKNS_7ndarrayIJNS_2roEEEEEJLm0EEJNS_5scopeENS_4nameENS_7arg_v_tILj4ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSE_jPNS0_12cleanup_listEE_8__invokeESS_ST_jSV_", ptr %i.dz, align 8, !tbaa !211
  %i.ea = getelementptr inbounds nuw i8, ptr %93, i64 40
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3$_1bJRKNS_7ndarrayIJNS_2roEEEEEJLm0EEJNS_5scopeENS_4nameENS_7arg_v_tILj4ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr", ptr %i.ea, align 8, !tbaa !212
  %i.eb = getelementptr inbounds nuw i8, ptr %93, i64 48
  store ptr %i.cm, ptr %i.eb, align 8, !tbaa !213
  %i.ec = getelementptr inbounds nuw i8, ptr %93, i64 60
  store <2 x i16> splat (i16 1), ptr %i.ec, align 4, !tbaa !20
  %i.ed = getelementptr inbounds nuw i8, ptr %93, i64 88
  %i.ee = getelementptr inbounds nuw i8, ptr %93, i64 96
  %i.ef = getelementptr inbounds nuw i8, ptr %93, i64 104
  %i.eg = getelementptr inbounds nuw i8, ptr %93, i64 112
  store i32 4, ptr %i.eg, align 8, !tbaa !215
  %i.eh = getelementptr inbounds nuw i8, ptr %93, i64 80
  store ptr %0, ptr %i.eh, align 8, !tbaa !216
  %i.ei = getelementptr inbounds nuw i8, ptr %93, i64 64
  store ptr @.str.5, ptr %i.ei, align 8, !tbaa !217
  store i32 11, ptr %i.dy, align 8, !tbaa !218
  store ptr @.str.4, ptr %i.ed, align 8, !tbaa !219
  store ptr null, ptr %i.ee, align 8, !tbaa !223
  store ptr @_Py_NoneStruct, ptr %i.ef, align 8, !tbaa !224
  %i.ej = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !15
  %i.ek = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.ej, ptr noundef nonnull %93) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm) #25
  %i.el = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dx) #24 ; 0 uses
  %i.em = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %122) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %121) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl) #25
  store ptr null, ptr %i.cl, align 8, !tbaa !208
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #25
  %i.en = getelementptr inbounds nuw i8, ptr %92, i64 56
  %i.eo = getelementptr inbounds nuw i8, ptr %92, i64 32
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3$_2NS_4listEJRKNS_7ndarrayIJNS_2roEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSF_jPNS0_12cleanup_listEE_8__invokeEST_SU_jSW_", ptr %i.eo, align 8, !tbaa !211
  %i.ep = getelementptr inbounds nuw i8, ptr %92, i64 40
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3$_2NS_4listEJRKNS_7ndarrayIJNS_2roEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr", ptr %i.ep, align 8, !tbaa !212
  %i.eq = getelementptr inbounds nuw i8, ptr %92, i64 48
  store ptr %i.cl, ptr %i.eq, align 8, !tbaa !213
  %i.er = getelementptr inbounds nuw i8, ptr %92, i64 60
  store <2 x i16> splat (i16 1), ptr %i.er, align 4, !tbaa !20
  %i.es = getelementptr inbounds nuw i8, ptr %92, i64 88
  %i.et = getelementptr inbounds nuw i8, ptr %92, i64 96
  %i.eu = getelementptr inbounds nuw i8, ptr %92, i64 80
  %i.ev = getelementptr inbounds nuw i8, ptr %92, i64 112
  store i32 0, ptr %i.ev, align 8
  store ptr %0, ptr %i.eu, align 8, !tbaa !216
  %i.ew = getelementptr inbounds nuw i8, ptr %92, i64 64
  store ptr @.str.6, ptr %i.ew, align 8, !tbaa !217
  store i32 11, ptr %i.en, align 8, !tbaa !218
  store ptr @.str.4, ptr %i.es, align 8, !tbaa !219
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.et, i8 0, i64 16, i1 false)
  %i.ex = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !15
  %i.ey = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.ex, ptr noundef nonnull %92) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl) #25
  %.sroa.0.0.copyload.i286.i = load ptr, ptr %128, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck) #25
  store ptr null, ptr %i.ck, align 8, !tbaa !208
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #25
  %i.ez = getelementptr inbounds nuw i8, ptr %91, i64 56
  %i.fa = getelementptr inbounds nuw i8, ptr %91, i64 32
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3$_3mJRKNS_7ndarrayIJEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj4ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSD_jPNS0_12cleanup_listEE_8__invokeESR_SS_jSU_", ptr %i.fa, align 8, !tbaa !211
  %i.fb = getelementptr inbounds nuw i8, ptr %91, i64 40
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3$_3mJRKNS_7ndarrayIJEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj4ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr", ptr %i.fb, align 8, !tbaa !212
  %i.fc = getelementptr inbounds nuw i8, ptr %91, i64 48
  store ptr %i.ck, ptr %i.fc, align 8, !tbaa !213
  %i.fd = getelementptr inbounds nuw i8, ptr %91, i64 60
  store <2 x i16> splat (i16 1), ptr %i.fd, align 4, !tbaa !20
  %i.fe = getelementptr inbounds nuw i8, ptr %91, i64 88
  %i.ff = getelementptr inbounds nuw i8, ptr %91, i64 96
  %i.fg = getelementptr inbounds nuw i8, ptr %91, i64 112
  store i32 4, ptr %i.fg, align 8, !tbaa !215
  %i.fh = getelementptr inbounds nuw i8, ptr %91, i64 80
  store ptr %.sroa.0.0.copyload.i286.i, ptr %i.fh, align 8, !tbaa !216
  %i.fi = getelementptr inbounds nuw i8, ptr %91, i64 64
  store ptr @.str.7, ptr %i.fi, align 8, !tbaa !217
  store i32 11, ptr %i.ez, align 8, !tbaa !218
  store ptr @.str.4, ptr %i.fe, align 8, !tbaa !219
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ff, i8 0, i64 16, i1 false)
  %i.fj = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !15
  %i.fk = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.fj, ptr noundef nonnull %91) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj) #25
  store ptr null, ptr %i.cj, align 8, !tbaa !208
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #25
  %i.fl = getelementptr inbounds nuw i8, ptr %90, i64 56
  %i.fm = getelementptr inbounds nuw i8, ptr %90, i64 32
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3$_4mJRKNS_7ndarrayIJEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj4ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSD_jPNS0_12cleanup_listEE_8__invokeESR_SS_jSU_", ptr %i.fm, align 8, !tbaa !211
  %i.fn = getelementptr inbounds nuw i8, ptr %90, i64 40
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3$_4mJRKNS_7ndarrayIJEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj4ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr", ptr %i.fn, align 8, !tbaa !212
  %i.fo = getelementptr inbounds nuw i8, ptr %90, i64 48
  store ptr %i.cj, ptr %i.fo, align 8, !tbaa !213
  %i.fp = getelementptr inbounds nuw i8, ptr %90, i64 60
  store <2 x i16> splat (i16 1), ptr %i.fp, align 4, !tbaa !20
  %i.fq = getelementptr inbounds nuw i8, ptr %90, i64 88
  %i.fr = getelementptr inbounds nuw i8, ptr %90, i64 96
  %i.fs = getelementptr inbounds nuw i8, ptr %90, i64 112
  store i32 4, ptr %i.fs, align 8, !tbaa !215
  %i.ft = getelementptr inbounds nuw i8, ptr %90, i64 80
  store ptr %.sroa.0.0.copyload.i286.i, ptr %i.ft, align 8, !tbaa !216
  %i.fu = getelementptr inbounds nuw i8, ptr %90, i64 64
  store ptr @.str.8, ptr %i.fu, align 8, !tbaa !217
  store i32 11, ptr %i.fl, align 8, !tbaa !218
  store ptr @.str.4, ptr %i.fq, align 8, !tbaa !219
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fr, i8 0, i64 16, i1 false)
  %i.fv = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !15
  %i.fw = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.fv, ptr noundef nonnull %90) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci) #25
  store ptr null, ptr %i.ci, align 8, !tbaa !208
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #25
  %i.fx = getelementptr inbounds nuw i8, ptr %89, i64 56
  %i.fy = getelementptr inbounds nuw i8, ptr %89, i64 32
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3$_5mJRKNS_7ndarrayIJEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj4ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSD_jPNS0_12cleanup_listEE_8__invokeESR_SS_jSU_", ptr %i.fy, align 8, !tbaa !211
  %i.fz = getelementptr inbounds nuw i8, ptr %89, i64 40
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3$_5mJRKNS_7ndarrayIJEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj4ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr", ptr %i.fz, align 8, !tbaa !212
  %i.ga = getelementptr inbounds nuw i8, ptr %89, i64 48
  store ptr %i.ci, ptr %i.ga, align 8, !tbaa !213
  %i.gb = getelementptr inbounds nuw i8, ptr %89, i64 60
  store <2 x i16> splat (i16 1), ptr %i.gb, align 4, !tbaa !20
  %i.gc = getelementptr inbounds nuw i8, ptr %89, i64 88
  %i.gd = getelementptr inbounds nuw i8, ptr %89, i64 96
  %i.ge = getelementptr inbounds nuw i8, ptr %89, i64 112
  store i32 4, ptr %i.ge, align 8, !tbaa !215
  %i.gf = getelementptr inbounds nuw i8, ptr %89, i64 80
  store ptr %.sroa.0.0.copyload.i286.i, ptr %i.gf, align 8, !tbaa !216
  %i.gg = getelementptr inbounds nuw i8, ptr %89, i64 64
  store ptr @.str.9, ptr %i.gg, align 8, !tbaa !217
  store i32 11, ptr %i.fx, align 8, !tbaa !218
  store ptr @.str.4, ptr %i.gc, align 8, !tbaa !219
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gd, i8 0, i64 16, i1 false)
  %i.gh = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !15
  %i.gi = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.gh, ptr noundef nonnull %89) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch) #25
  store ptr null, ptr %i.ch, align 8, !tbaa !208
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #25
  %i.gj = getelementptr inbounds nuw i8, ptr %88, i64 56
  %i.gk = getelementptr inbounds nuw i8, ptr %88, i64 32
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3$_6lJRKNS_7ndarrayIJEEEmEJLm0ELm1EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEENSA_ILj1ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSE_jPNS0_12cleanup_listEE_8__invokeESS_ST_jSV_", ptr %i.gk, align 8, !tbaa !211
  %i.gl = getelementptr inbounds nuw i8, ptr %88, i64 40
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3$_6lJRKNS_7ndarrayIJEEEmEJLm0ELm1EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEENSA_ILj1ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr", ptr %i.gl, align 8, !tbaa !212
  %i.gm = getelementptr inbounds nuw i8, ptr %88, i64 48
  store ptr %i.ch, ptr %i.gm, align 8, !tbaa !213
  %i.gn = getelementptr inbounds nuw i8, ptr %88, i64 60
  store <2 x i16> splat (i16 2), ptr %i.gn, align 4, !tbaa !20
  %129 = getelementptr inbounds nuw i8, ptr %88, i64 88
  %i.go = getelementptr inbounds nuw i8, ptr %88, i64 80
  %i.gp = getelementptr inbounds nuw i8, ptr %88, i64 112
  store i32 0, ptr %i.gp, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %88, i64 144
  store i32 0, ptr %i.gq, align 8
  store ptr %.sroa.0.0.copyload.i286.i, ptr %i.go, align 8, !tbaa !216
  %i.gr = getelementptr inbounds nuw i8, ptr %88, i64 64
  store ptr @.str.10, ptr %i.gr, align 8, !tbaa !217
  store i32 11, ptr %i.gj, align 8, !tbaa !218
  store ptr @.str.4, ptr %129, align 8, !tbaa !219
  %130 = getelementptr inbounds nuw i8, ptr %88, i64 96
  %i.gs = getelementptr inbounds nuw i8, ptr %88, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %130, i8 0, i64 16, i1 false)
  store ptr @.str.11, ptr %i.gs, align 8, !tbaa !219
  %i.gt = getelementptr inbounds nuw i8, ptr %88, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gt, i8 0, i64 16, i1 false)
  %i.gu = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !15
  %i.gv = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.gu, ptr noundef nonnull %88) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch) #25
  %.sroa.0.0.copyload.i290.i = load ptr, ptr %128, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg) #25
  store ptr null, ptr %i.cg, align 8, !tbaa !208
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #25
  %i.gw = getelementptr inbounds nuw i8, ptr %87, i64 56
  %i.gx = getelementptr inbounds nuw i8, ptr %87, i64 32
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3$_7bJRKNS_7ndarrayIJEEEEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSB_jPNS0_12cleanup_listEE_8__invokeESP_SQ_jSS_", ptr %i.gx, align 8, !tbaa !211
  %i.gy = getelementptr inbounds nuw i8, ptr %87, i64 40
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3$_7bJRKNS_7ndarrayIJEEEEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr", ptr %i.gy, align 8, !tbaa !212
  %i.gz = getelementptr inbounds nuw i8, ptr %87, i64 48
  store ptr %i.cg, ptr %i.gz, align 8, !tbaa !213
  %i.ha = getelementptr inbounds nuw i8, ptr %87, i64 60
  store <2 x i16> splat (i16 1), ptr %i.ha, align 4, !tbaa !20
  %i.hb = getelementptr inbounds nuw i8, ptr %87, i64 80
  store ptr %.sroa.0.0.copyload.i290.i, ptr %i.hb, align 8, !tbaa !216
  %i.hc = getelementptr inbounds nuw i8, ptr %87, i64 64
  store ptr @.str.12, ptr %i.hc, align 8, !tbaa !217
  store i32 3, ptr %i.gw, align 8, !tbaa !218
  %i.hd = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !15
  %i.he = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.hd, ptr noundef nonnull %87) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf) #25
  store ptr null, ptr %i.cf, align 8, !tbaa !208
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #25
  %i.hf = getelementptr inbounds nuw i8, ptr %86, i64 56
  %i.hg = getelementptr inbounds nuw i8, ptr %86, i64 32
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3$_8bJRKNS_7ndarrayIJEEEEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSB_jPNS0_12cleanup_listEE_8__invokeESP_SQ_jSS_", ptr %i.hg, align 8, !tbaa !211
  %i.hh = getelementptr inbounds nuw i8, ptr %86, i64 40
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3$_8bJRKNS_7ndarrayIJEEEEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr", ptr %i.hh, align 8, !tbaa !212
  %i.hi = getelementptr inbounds nuw i8, ptr %86, i64 48
  store ptr %i.cf, ptr %i.hi, align 8, !tbaa !213
  %i.hj = getelementptr inbounds nuw i8, ptr %86, i64 60
  store <2 x i16> splat (i16 1), ptr %i.hj, align 4, !tbaa !20
  %i.hk = getelementptr inbounds nuw i8, ptr %86, i64 80
  store ptr %.sroa.0.0.copyload.i290.i, ptr %i.hk, align 8, !tbaa !216
  %i.hl = getelementptr inbounds nuw i8, ptr %86, i64 64
  store ptr @.str.13, ptr %i.hl, align 8, !tbaa !217
  store i32 3, ptr %i.hf, align 8, !tbaa !218
  %i.hm = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !15
  %i.hn = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.hm, ptr noundef nonnull %86) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce) #25
  store ptr null, ptr %i.ce, align 8, !tbaa !208
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #25
  %i.ho = getelementptr inbounds nuw i8, ptr %85, i64 56
  %i.hp = getelementptr inbounds nuw i8, ptr %85, i64 32
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3$_9bJRKNS_7ndarrayIJEEEEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSB_jPNS0_12cleanup_listEE_8__invokeESP_SQ_jSS_", ptr %i.hp, align 8, !tbaa !211
  %i.hq = getelementptr inbounds nuw i8, ptr %85, i64 40
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3$_9bJRKNS_7ndarrayIJEEEEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr", ptr %i.hq, align 8, !tbaa !212
  %i.hr = getelementptr inbounds nuw i8, ptr %85, i64 48
  store ptr %i.ce, ptr %i.hr, align 8, !tbaa !213
  %i.hs = getelementptr inbounds nuw i8, ptr %85, i64 60
  store <2 x i16> splat (i16 1), ptr %i.hs, align 4, !tbaa !20
  %i.ht = getelementptr inbounds nuw i8, ptr %85, i64 80
  store ptr %.sroa.0.0.copyload.i290.i, ptr %i.ht, align 8, !tbaa !216
  %i.hu = getelementptr inbounds nuw i8, ptr %85, i64 64
  store ptr @.str.14, ptr %i.hu, align 8, !tbaa !217
  store i32 3, ptr %i.ho, align 8, !tbaa !218
  %i.hv = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !15
  %i.hw = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.hv, ptr noundef nonnull %85) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd) #25
  store ptr null, ptr %i.cd, align 8, !tbaa !208
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #25
  %i.hx = getelementptr inbounds nuw i8, ptr %84, i64 56
  %i.hy = getelementptr inbounds nuw i8, ptr %84, i64 32
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_10bJRKNS_7ndarrayIJEEEEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSB_jPNS0_12cleanup_listEE_8__invokeESP_SQ_jSS_", ptr %i.hy, align 8, !tbaa !211
  %i.hz = getelementptr inbounds nuw i8, ptr %84, i64 40
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_10bJRKNS_7ndarrayIJEEEEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr", ptr %i.hz, align 8, !tbaa !212
  %i.ia = getelementptr inbounds nuw i8, ptr %84, i64 48
  store ptr %i.cd, ptr %i.ia, align 8, !tbaa !213
  %i.ib = getelementptr inbounds nuw i8, ptr %84, i64 60
  store <2 x i16> splat (i16 1), ptr %i.ib, align 4, !tbaa !20
  %i.ic = getelementptr inbounds nuw i8, ptr %84, i64 80
  store ptr %.sroa.0.0.copyload.i290.i, ptr %i.ic, align 8, !tbaa !216
  %i.id = getelementptr inbounds nuw i8, ptr %84, i64 64
  store ptr @.str.15, ptr %i.id, align 8, !tbaa !217
  store i32 3, ptr %i.hx, align 8, !tbaa !218
  %i.ie = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !15
  %i.if = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.ie, ptr noundef nonnull %84) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc) #25
  store ptr null, ptr %i.cc, align 8, !tbaa !208
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #25
  %i.ig = getelementptr inbounds nuw i8, ptr %83, i64 56
  %i.ih = getelementptr inbounds nuw i8, ptr %83, i64 32
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_11vJRKNS_7ndarrayIJfEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSD_jPNS0_12cleanup_listEE_8__invokeESR_SS_jSU_", ptr %i.ih, align 8, !tbaa !211
  %i.ii = getelementptr inbounds nuw i8, ptr %83, i64 40
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_11vJRKNS_7ndarrayIJfEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr", ptr %i.ii, align 8, !tbaa !212
  %i.ij = getelementptr inbounds nuw i8, ptr %83, i64 48
  store ptr %i.cc, ptr %i.ij, align 8, !tbaa !213
  %i.ik = getelementptr inbounds nuw i8, ptr %83, i64 60
  store <2 x i16> splat (i16 1), ptr %i.ik, align 4, !tbaa !20
  %i.il = getelementptr inbounds nuw i8, ptr %83, i64 88
  %i.im = getelementptr inbounds nuw i8, ptr %83, i64 96
  %i.in = getelementptr inbounds nuw i8, ptr %83, i64 80
  %i.io = getelementptr inbounds nuw i8, ptr %83, i64 112
  store i32 0, ptr %i.io, align 8
  store ptr %.sroa.0.0.copyload.i290.i, ptr %i.in, align 8, !tbaa !216
  %i.ip = getelementptr inbounds nuw i8, ptr %83, i64 64
  store ptr @.str.16, ptr %i.ip, align 8, !tbaa !217
  store i32 11, ptr %i.ig, align 8, !tbaa !218
  store ptr @.str.4, ptr %i.il, align 8, !tbaa !219
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.im, i8 0, i64 16, i1 false)
  %i.iq = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !15
  %i.ir = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.iq, ptr noundef nonnull %83) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc) #25
  %.sroa.0.0.copyload.i295.i = load ptr, ptr %128, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb) #25
  store ptr null, ptr %i.cb, align 8, !tbaa !208
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #25
  %i.is = getelementptr inbounds nuw i8, ptr %82, i64 56
  %i.it = getelementptr inbounds nuw i8, ptr %82, i64 32
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_12vJRKNS_7ndarrayIJKfEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSE_jPNS0_12cleanup_listEE_8__invokeESS_ST_jSV_", ptr %i.it, align 8, !tbaa !211
  %i.iu = getelementptr inbounds nuw i8, ptr %82, i64 40
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_12vJRKNS_7ndarrayIJKfEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr", ptr %i.iu, align 8, !tbaa !212
  %i.iv = getelementptr inbounds nuw i8, ptr %82, i64 48
  store ptr %i.cb, ptr %i.iv, align 8, !tbaa !213
  %i.iw = getelementptr inbounds nuw i8, ptr %82, i64 60
  store <2 x i16> splat (i16 1), ptr %i.iw, align 4, !tbaa !20
  %i.ix = getelementptr inbounds nuw i8, ptr %82, i64 88
  %i.iy = getelementptr inbounds nuw i8, ptr %82, i64 96
  %i.iz = getelementptr inbounds nuw i8, ptr %82, i64 80
  %i.ja = getelementptr inbounds nuw i8, ptr %82, i64 112
  store i32 0, ptr %i.ja, align 8
  store ptr %.sroa.0.0.copyload.i295.i, ptr %i.iz, align 8, !tbaa !216
  %i.jb = getelementptr inbounds nuw i8, ptr %82, i64 64
  store ptr @.str.17, ptr %i.jb, align 8, !tbaa !217
  store i32 11, ptr %i.is, align 8, !tbaa !218
  store ptr @.str.4, ptr %i.ix, align 8, !tbaa !219
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.iy, i8 0, i64 16, i1 false)
  %i.jc = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !15
  %i.jd = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.jc, ptr noundef nonnull %82) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca) #25
  store ptr null, ptr %i.ca, align 8, !tbaa !208
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #25
  %i.je = getelementptr inbounds nuw i8, ptr %81, i64 56
  %i.jf = getelementptr inbounds nuw i8, ptr %81, i64 32
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_13vJRKNS_7ndarrayIJSt7complexIfEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSF_jPNS0_12cleanup_listEE_8__invokeEST_SU_jSW_", ptr %i.jf, align 8, !tbaa !211
  %i.jg = getelementptr inbounds nuw i8, ptr %81, i64 40
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_13vJRKNS_7ndarrayIJSt7complexIfEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr", ptr %i.jg, align 8, !tbaa !212
  %i.jh = getelementptr inbounds nuw i8, ptr %81, i64 48
  store ptr %i.ca, ptr %i.jh, align 8, !tbaa !213
  %i.ji = getelementptr inbounds nuw i8, ptr %81, i64 60
  store <2 x i16> splat (i16 1), ptr %i.ji, align 4, !tbaa !20
  %i.jj = getelementptr inbounds nuw i8, ptr %81, i64 88
  %i.jk = getelementptr inbounds nuw i8, ptr %81, i64 96
  %i.jl = getelementptr inbounds nuw i8, ptr %81, i64 80
  %i.jm = getelementptr inbounds nuw i8, ptr %81, i64 112
  store i32 0, ptr %i.jm, align 8
  store ptr %.sroa.0.0.copyload.i295.i, ptr %i.jl, align 8, !tbaa !216
  %i.jn = getelementptr inbounds nuw i8, ptr %81, i64 64
  store ptr @.str.18, ptr %i.jn, align 8, !tbaa !217
  store i32 11, ptr %i.je, align 8, !tbaa !218
  store ptr @.str.4, ptr %i.jj, align 8, !tbaa !219
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jk, i8 0, i64 16, i1 false)
  %i.jo = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !15
  %i.jp = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.jo, ptr noundef nonnull %81) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz) #25
  store ptr null, ptr %i.bz, align 8, !tbaa !208
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #25
  %i.jq = getelementptr inbounds nuw i8, ptr %80, i64 56
  %i.jr = getelementptr inbounds nuw i8, ptr %80, i64 32
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_14vJNS_7ndarrayIJKSt7complexIfEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSE_jPNS0_12cleanup_listEE_8__invokeESS_ST_jSV_", ptr %i.jr, align 8, !tbaa !211
  %i.js = getelementptr inbounds nuw i8, ptr %80, i64 40
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_14vJNS_7ndarrayIJKSt7complexIfEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr", ptr %i.js, align 8, !tbaa !212
  %i.jt = getelementptr inbounds nuw i8, ptr %80, i64 48
  store ptr %i.bz, ptr %i.jt, align 8, !tbaa !213
  %i.ju = getelementptr inbounds nuw i8, ptr %80, i64 60
  store <2 x i16> splat (i16 1), ptr %i.ju, align 4, !tbaa !20
  %i.jv = getelementptr inbounds nuw i8, ptr %80, i64 88
  %i.jw = getelementptr inbounds nuw i8, ptr %80, i64 96
  %i.jx = getelementptr inbounds nuw i8, ptr %80, i64 80
  %i.jy = getelementptr inbounds nuw i8, ptr %80, i64 112
  store i32 0, ptr %i.jy, align 8
  store ptr %.sroa.0.0.copyload.i295.i, ptr %i.jx, align 8, !tbaa !216
  %i.jz = getelementptr inbounds nuw i8, ptr %80, i64 64
  store ptr @.str.19, ptr %i.jz, align 8, !tbaa !217
  store i32 11, ptr %i.jq, align 8, !tbaa !218
  store ptr @.str.4, ptr %i.jv, align 8, !tbaa !219
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jw, i8 0, i64 16, i1 false)
  %i.ka = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !15
  %i.kb = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.ka, ptr noundef nonnull %80) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz) #25
end_hunk_0
begin_hunk_1_@_ZN8nanobind7ndarrayIJNS_5numpyEfEEC2EPvSt16initializer_listImENS_6handleES4_IlENS_6dlpack5dtypeEiicm:bb.a
bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 44
  store i32 0, ptr %i.h, align 4, !tbaa !131
  store ptr %1, ptr %11, align 8, !tbaa !118
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %2, ptr %i.i, align 8, !tbaa !119
  %i.j = load ptr, ptr %5, align 8, !tbaa !132
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  %i.k = phi ptr [ %i.g, %bb.d ], [ %i.c, %.thread ]
  %i.l = phi ptr [ %i.j, %bb.d ], [ null, %.thread ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %i.l, ptr %i.n, align 8, !tbaa !120
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %4, ptr %i.o, align 8, !tbaa !121
  %i.p = trunc i64 %3 to i32
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i32 %i.p, ptr %i.q, align 8, !tbaa !133
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i64 %10, ptr %i.r, align 8, !tbaa !122
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 48
  store i32 %7, ptr %i.s, align 8, !tbaa !134
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 52
  store i32 %8, ptr %i.t, align 4, !tbaa !135
  store i32 %6, ptr %i.k, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 60
  store i8 %9, ptr %i.u, align 4, !tbaa !123
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 61
  store i8 0, ptr %i.v, align 1, !tbaa !124
  %i.w = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !15
  %i.x = call noundef ptr @_ZN8nanobind6detail14ndarray_createEPNS0_12nb_internalsEPKNS0_19ndarray_create_argsE(ptr noundef %i.w, ptr noundef nonnull %11) #27 ; 2 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !159
  %i.y = call noundef ptr @_ZN8nanobind6detail15ndarray_inc_refEPNS0_14ndarray_handleE(ptr noundef %i.x) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %i.y, i64 48, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  ret void
}

; Function Attrs: nounwind optsize
declare noundef ptr @_ZN8nanobind6detail11nb_type_putEPNS0_12nb_internalsEPKSt9type_infoS5_PvNS_9rv_policyEPNS0_12cleanup_listEPb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress optsize uwtable
define internal noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_16cpp_function_defIZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3ClsNS_7ndarrayIJNS_5numpyEfEEES4_JEJNS_5scopeENS_4nameENS_9is_methodENS_9rv_policy10policy_tagILNSB_5valueE6EEEEEEvMT1_FT0_DpT2_EDpRKT3_EUlPS4_E_S7_JSP_EJLm0EEJS8_S9_SA_SE_EEEP7_objectOSF_PFT2_DpSL_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSS_jPNS0_12cleanup_listEE_8__invokeES14_S15_jS17_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.729", align 8 ; 4 uses
  %5 = alloca %"class.nanobind::ndarray", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.a = load ptr, ptr %1, align 8, !tbaa !13
  %i.b = and i32 %2, -2
  %i.c = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !15
  %i.d = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.c, ptr noundef nonnull @_ZTIZL35nanobind_test_ndarray_ext_exec_implN8nanobind7module_EE3Cls, ptr noundef %i.a, i32 noundef %i.b, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #24
  br i1 %i.d, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_16cpp_function_defIZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3ClsNS_7ndarrayIJNS_5numpyEfEEES4_JEJNS_5scopeENS_4nameENS_9is_methodENS_9rv_policy10policy_tagILNSB_5valueE6EEEEEEvMT1_FT0_DpT2_EDpRKT3_EUlPS4_E_S7_JSP_EJLm0EEJS8_S9_SA_SE_EEEP7_objectOSF_PFT2_DpSL_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSS_jPNS0_12cleanup_listEE_clES14_S15_jS17_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %.val = load ptr, ptr %4, align 8, !tbaa !157
  %.unpack.i = load i64, ptr %0, align 8, !tbaa !431, !noalias !432 ; 3 uses
  %.elt2.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.unpack3.i = load i64, ptr %.elt2.i, align 8, !tbaa !431, !noalias !432
  %i.e = getelementptr inbounds i8, ptr %.val, i64 %.unpack3.i ; 2 uses
  %i.f = and i64 %.unpack.i, 1
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !56, !noalias !432
  %i.h = getelementptr i8, ptr %i.g, i64 %.unpack.i
  %i.i = getelementptr i8, ptr %i.h, i64 -1
  %i.j = load ptr, ptr %i.i, align 8, !noalias !432, !nosanitize !104
  br label %_ZZN8nanobind16cpp_function_defIZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3ClsNS_7ndarrayIJNS_5numpyEfEEES2_JEJNS_5scopeENS_4nameENS_9is_methodENS_9rv_policy10policy_tagILNS9_5valueE6EEEEEEvMT1_FT0_DpT2_EDpRKT3_ENKUlPS2_E_clESN_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = inttoptr i64 %.unpack.i to ptr
  br label %_ZZN8nanobind16cpp_function_defIZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3ClsNS_7ndarrayIJNS_5numpyEfEEES2_JEJNS_5scopeENS_4nameENS_9is_methodENS_9rv_policy10policy_tagILNS9_5valueE6EEEEEEvMT1_FT0_DpT2_EDpRKT3_ENKUlPS2_E_clESN_.exit

_ZZN8nanobind16cpp_function_defIZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3ClsNS_7ndarrayIJNS_5numpyEfEEES2_JEJNS_5scopeENS_4nameENS_9is_methodENS_9rv_policy10policy_tagILNS9_5valueE6EEEEEEvMT1_FT0_DpT2_EDpRKT3_ENKUlPS2_E_clESN_.exit: ; preds = %bb.c, %bb.d
  %i.l = phi ptr [ %i.j, %bb.c ], [ %i.k, %bb.d ]
  call void %i.l(ptr dead_on_unwind nonnull writable sret(%"class.nanobind::ndarray") align 8 %5, ptr noundef nonnull align 4 dereferenceable(40) %i.e) #27, !inline_history !429
  %i.m = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !15
  %i.n = load ptr, ptr %5, align 8, !tbaa !159
  %i.o = call noundef ptr @_ZN8nanobind6detail14ndarray_exportEPNS0_12nb_internalsEPNS0_14ndarray_handleEiNS_9rv_policyEPNS0_12cleanup_listE(ptr noundef %i.m, ptr noundef %i.n, i32 noundef 1, i8 6, ptr noundef %3) #24
  %i.p = load ptr, ptr %5, align 8, !tbaa !159
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.p) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_16cpp_function_defIZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3ClsNS_7ndarrayIJNS_5numpyEfEEES4_JEJNS_5scopeENS_4nameENS_9is_methodENS_9rv_policy10policy_tagILNSB_5valueE6EEEEEEvMT1_FT0_DpT2_EDpRKT3_EUlPS4_E_S7_JSP_EJLm0EEJS8_S9_SA_SE_EEEP7_objectOSF_PFT2_DpSL_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSS_jPNS0_12cleanup_listEE_clES14_S15_jS17_.exit

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_16cpp_function_defIZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3ClsNS_7ndarrayIJNS_5numpyEfEEES4_JEJNS_5scopeENS_4nameENS_9is_methodENS_9rv_policy10policy_tagILNSB_5valueE6EEEEEEvMT1_FT0_DpT2_EDpRKT3_EUlPS4_E_S7_JSP_EJLm0EEJS8_S9_SA_SE_EEEP7_objectOSF_PFT2_DpSL_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSS_jPNS0_12cleanup_listEE_clES14_S15_jS17_.exit: ; preds = %bb.a, %_ZZN8nanobind16cpp_function_defIZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3ClsNS_7ndarrayIJNS_5numpyEfEEES2_JEJNS_5scopeENS_4nameENS_9is_methodENS_9rv_policy10policy_tagILNS9_5valueE6EEEEEEvMT1_FT0_DpT2_EDpRKT3_ENKUlPS2_E_clESN_.exit
  %.0.i = phi ptr [ %i.o, %_ZZN8nanobind16cpp_function_defIZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3ClsNS_7ndarrayIJNS_5numpyEfEEES2_JEJNS_5scopeENS_4nameENS_9is_methodENS_9rv_policy10policy_tagILNS9_5valueE6EEEEEEvMT1_FT0_DpT2_EDpRKT3_ENKUlPS2_E_clESN_.exit ], [ inttoptr (i64 1 to ptr), %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret ptr %.0.i
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define internal noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_16cpp_function_defIZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3ClsNS_7ndarrayIJNS_5numpyEfEEES4_JNS_6handleEEJNS_5scopeENS_4nameENS_9is_methodENS_9rv_policy10policy_tagILNSC_5valueE6EEEEEEvMT1_FT0_DpT2_EDpRKT3_EUlPS4_S8_E_S7_JSQ_S8_EJLm0ELm1EEJS9_SA_SB_SF_EEEP7_objectOSG_PFT2_DpSM_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPST_jPNS0_12cleanup_listEE_8__invokeES15_S16_jS18_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.743", align 8 ; 5 uses
  %5 = alloca %"class.nanobind::ndarray", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr null, ptr %4, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !13
  %i.c = and i32 %2, -2
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !15
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.d, ptr noundef nonnull @_ZTIZL35nanobind_test_ndarray_ext_exec_implN8nanobind7module_EE3Cls, ptr noundef %i.b, i32 noundef %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #24
  br i1 %i.e, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_16cpp_function_defIZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3ClsNS_7ndarrayIJNS_5numpyEfEEES4_JNS_6handleEEJNS_5scopeENS_4nameENS_9is_methodENS_9rv_policy10policy_tagILNSC_5valueE6EEEEEEvMT1_FT0_DpT2_EDpRKT3_EUlPS4_S8_E_S7_JSQ_S8_EJLm0ELm1EEJS9_SA_SB_SF_EEEP7_objectOSG_PFT2_DpSM_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPST_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13   ; 2 uses
  store ptr %i.g, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %.val = load ptr, ptr %i.a, align 8, !tbaa !157
  %.unpack.i = load i64, ptr %0, align 8, !tbaa !437, !noalias !438 ; 3 uses
  %.elt3.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.unpack4.i = load i64, ptr %.elt3.i, align 8, !tbaa !437, !noalias !438
  %i.h = getelementptr inbounds i8, ptr %.val, i64 %.unpack4.i ; 2 uses
  %i.i = and i64 %.unpack.i, 1
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !56, !noalias !438
  %i.k = getelementptr i8, ptr %i.j, i64 %.unpack.i
  %i.l = getelementptr i8, ptr %i.k, i64 -1
  %i.m = load ptr, ptr %i.l, align 8, !noalias !438, !nosanitize !104
  br label %_ZZN8nanobind16cpp_function_defIZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3ClsNS_7ndarrayIJNS_5numpyEfEEES2_JNS_6handleEEJNS_5scopeENS_4nameENS_9is_methodENS_9rv_policy10policy_tagILNSA_5valueE6EEEEEEvMT1_FT0_DpT2_EDpRKT3_ENKUlPS2_S6_E_clESO_S6_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = inttoptr i64 %.unpack.i to ptr
  br label %_ZZN8nanobind16cpp_function_defIZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3ClsNS_7ndarrayIJNS_5numpyEfEEES2_JNS_6handleEEJNS_5scopeENS_4nameENS_9is_methodENS_9rv_policy10policy_tagILNSA_5valueE6EEEEEEvMT1_FT0_DpT2_EDpRKT3_ENKUlPS2_S6_E_clESO_S6_.exit

_ZZN8nanobind16cpp_function_defIZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3ClsNS_7ndarrayIJNS_5numpyEfEEES2_JNS_6handleEEJNS_5scopeENS_4nameENS_9is_methodENS_9rv_policy10policy_tagILNSA_5valueE6EEEEEEvMT1_FT0_DpT2_EDpRKT3_ENKUlPS2_S6_E_clESO_S6_.exit: ; preds = %bb.c, %bb.d
  %i.o = phi ptr [ %i.m, %bb.c ], [ %i.n, %bb.d ]
  call void %i.o(ptr dead_on_unwind nonnull writable sret(%"class.nanobind::ndarray") align 8 %5, ptr noundef nonnull align 4 dereferenceable(40) %i.h, ptr %i.g) #27, !inline_history !435
  %i.p = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !15
  %i.q = load ptr, ptr %5, align 8, !tbaa !159
  %i.r = call noundef ptr @_ZN8nanobind6detail14ndarray_exportEPNS0_12nb_internalsEPNS0_14ndarray_handleEiNS_9rv_policyEPNS0_12cleanup_listE(ptr noundef %i.p, ptr noundef %i.q, i32 noundef 1, i8 6, ptr noundef %3) #24
  %i.s = load ptr, ptr %5, align 8, !tbaa !159
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.s) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_16cpp_function_defIZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3ClsNS_7ndarrayIJNS_5numpyEfEEES4_JNS_6handleEEJNS_5scopeENS_4nameENS_9is_methodENS_9rv_policy10policy_tagILNSC_5valueE6EEEEEEvMT1_FT0_DpT2_EDpRKT3_EUlPS4_S8_E_S7_JSQ_S8_EJLm0ELm1EEJS9_SA_SB_SF_EEEP7_objectOSG_PFT2_DpSM_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPST_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_16cpp_function_defIZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3ClsNS_7ndarrayIJNS_5numpyEfEEES4_JNS_6handleEEJNS_5scopeENS_4nameENS_9is_methodENS_9rv_policy10policy_tagILNSC_5valueE6EEEEEEvMT1_FT0_DpT2_EDpRKT3_EUlPS4_S8_E_S7_JSQ_S8_EJLm0ELm1EEJS9_SA_SB_SF_EEEP7_objectOSG_PFT2_DpSM_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPST_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit: ; preds = %bb.a, %_ZZN8nanobind16cpp_function_defIZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3ClsNS_7ndarrayIJNS_5numpyEfEEES2_JNS_6handleEEJNS_5scopeENS_4nameENS_9is_methodENS_9rv_policy10policy_tagILNSA_5valueE6EEEEEEvMT1_FT0_DpT2_EDpRKT3_ENKUlPS2_S6_E_clESO_S6_.exit
  %.0.i = phi ptr [ %i.r, %_ZZN8nanobind16cpp_function_defIZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3ClsNS_7ndarrayIJNS_5numpyEfEEES2_JNS_6handleEEJNS_5scopeENS_4nameENS_9is_methodENS_9rv_policy10policy_tagILNSA_5valueE6EEEEEEvMT1_FT0_DpT2_EDpRKT3_ENKUlPS2_S6_E_clESO_S6_.exit ], [ inttoptr (i64 1 to ptr), %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret ptr %.0.i
}

; Function Attrs: inlinehint mustprogress nounwind optsize uwtable
define internal noundef nonnull ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_77vJNS_7ndarrayIJEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSB_jPNS0_12cleanup_listEE_8__invokeESP_SQ_jSS_"(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::ndarray_view.749", align 8 ; 3 uses
  %5 = alloca %"struct.nanobind::detail::tuple.220", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !13
  %i.b = and i32 %2, -2
  %i.c = call noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_7ndarrayIJEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr %i.a, i32 noundef %i.b, ptr noundef %3) #24
  br i1 %i.c, label %bb.b, label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_77vJNS_7ndarrayIJEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSB_jPNS0_12cleanup_listEE_clESP_SQ_jSS_.exit"

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %5, align 8, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.5.8.copyload = load ptr, ptr %i.e, align 8, !tbaa !25
  %.sroa.74.8..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.74.8.copyload = load i32, ptr %.sroa.74.8..sroa_idx, align 8, !tbaa !24
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 28
  %.sroa.8.8.copyload = load i32, ptr %.sroa.8.8..sroa_idx, align 4
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.sroa.9.8.copyload = load ptr, ptr %.sroa.9.8..sroa_idx, align 8, !tbaa !53 ; 2 uses
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.sroa.10.8.copyload = load ptr, ptr %.sroa.10.8..sroa_idx, align 8, !tbaa !53
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.sroa.11.8.copyload = load i64, ptr %.sroa.11.8..sroa_idx, align 8, !tbaa !27
  store ptr null, ptr %5, align 8, !tbaa !58
  %i.f = icmp eq i32 %.sroa.74.8.copyload, 2
  %or.cond4.i = icmp eq i32 %.sroa.8.8.copyload, 73730
  %or.cond.i = select i1 %i.f, i1 %or.cond4.i, i1 false
  br i1 %or.cond.i, label %bb.c, label %"_ZZL35nanobind_test_ndarray_ext_exec_implN8nanobind7module_EENK4$_77clENS_7ndarrayIJEEE.exit"

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.5.8.copyload, i64 %.sroa.11.8.copyload
  %scevgep13.i.i = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.h = load i64, ptr %.sroa.9.8.copyload, align 8, !tbaa !27 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.9.8.copyload, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !27   ; 2 uses
  %i.k = load <2 x i64>, ptr %.sroa.10.8.copyload, align 8, !tbaa !27
  store <2 x i64> %i.k, ptr %scevgep13.i.i, align 8, !tbaa !27
  %.not.i = icmp eq i64 %i.h, 0
  %.not10.i = icmp eq i64 %i.j, 0
  %or.cond = select i1 %.not.i, i1 true, i1 %.not10.i
  br i1 %or.cond, label %._crit_edge9.split.i, label %.preheader.i.a

.preheader.i.a:                                   ; preds = %bb.c, %._crit_edge.i
  %.068.i = phi i64 [ %i.l, %._crit_edge.i ], [ 0, %bb.c ] ; 2 uses
  br label %6

._crit_edge9.split.i:                             ; preds = %._crit_edge.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %"_ZZL35nanobind_test_ndarray_ext_exec_implN8nanobind7module_EENK4$_77clENS_7ndarrayIJEEE.exit"

._crit_edge.i:                                    ; preds = %_ZNK8nanobind12ndarray_viewIfLm2ELc0EEclIJmmEEERfDpT_.exit.i
  %i.l = add nuw i64 %.068.i, 1                   ; 2 uses
  %exitcond11.not.i = icmp eq i64 %i.l, %i.h
  br i1 %exitcond11.not.i, label %._crit_edge9.split.i, label %.preheader.i.a, !llvm.loop !439

6:                                                ; preds = %_ZNK8nanobind12ndarray_viewIfLm2ELc0EEclIJmmEEERfDpT_.exit.i, %.preheader.i.a
  %.07.i = phi i64 [ 0, %.preheader.i.a ], [ %i.t, %_ZNK8nanobind12ndarray_viewIfLm2ELc0EEclIJmmEEERfDpT_.exit.i ] ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %6
  %7 = phi i1 [ true, %6 ], [ false, %bb.d ]
  %.0.i6.i.sroa.phi.sroa.speculated = phi i64 [ %.068.i, %6 ], [ %.07.i, %bb.d ]
  %.0.i6.i = phi i64 [ 0, %6 ], [ 1, %bb.d ]
  %.08.i5.i = phi i64 [ 0, %6 ], [ %i.p, %bb.d ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %scevgep13.i.i, i64 %.0.i6.i
  %i.n = load i64, ptr %i.m, align 8, !tbaa !27
  %i.o = mul nsw i64 %i.n, %.0.i6.i.sroa.phi.sroa.speculated
  %i.p = add nsw i64 %i.o, %.08.i5.i              ; 2 uses
  br i1 %7, label %bb.d, label %_ZNK8nanobind12ndarray_viewIfLm2ELc0EEclIJmmEEERfDpT_.exit.i, !llvm.loop !1

_ZNK8nanobind12ndarray_viewIfLm2ELc0EEclIJmmEEERfDpT_.exit.i: ; preds = %bb.d
  %i.q = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.p ; 2 uses
  %i.r = load float, ptr %i.q, align 4, !tbaa !109
  %i.s = fmul float %i.r, 2.000000e+00
  store float %i.s, ptr %i.q, align 4, !tbaa !109
  %i.t = add nuw i64 %.07.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.t, %i.j
  br i1 %exitcond.not.i, label %._crit_edge.i, label %6, !llvm.loop !440

"_ZZL35nanobind_test_ndarray_ext_exec_implN8nanobind7module_EENK4$_77clENS_7ndarrayIJEEE.exit": ; preds = %._crit_edge9.split.i, %bb.b
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.d) #24
  br label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_77vJNS_7ndarrayIJEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSB_jPNS0_12cleanup_listEE_clESP_SQ_jSS_.exit"

"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_77vJNS_7ndarrayIJEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSB_jPNS0_12cleanup_listEE_clESP_SQ_jSS_.exit": ; preds = %bb.a, %"_ZZL35nanobind_test_ndarray_ext_exec_implN8nanobind7module_EENK4$_77clENS_7ndarrayIJEEE.exit"
  %.0.i = phi ptr [ @_Py_NoneStruct, %"_ZZL35nanobind_test_ndarray_ext_exec_implN8nanobind7module_EENK4$_77clENS_7ndarrayIJEEE.exit" ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.u = load ptr, ptr %5, align 8, !tbaa !58
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.u) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret ptr %.0.i
}

; Function Attrs: inlinehint mustprogress nounwind optsize uwtable
define internal noundef nonnull ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_78vJNS_7ndarrayIJfNS0_5shapeIJLln1ELln1EEEENS_6device3cpuEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSF_jPNS0_12cleanup_listEE_8__invokeEST_SU_jSW_"(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::ndarray_view.749", align 8 ; 3 uses
  %5 = alloca %"struct.nanobind::detail::tuple.755", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !13
  %i.b = and i32 %2, -2
  %i.c = call noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_7ndarrayIJfNS0_5shapeIJLln1ELln1EEEENS_6device3cpuEEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr %i.a, i32 noundef %i.b, ptr noundef %3) #24
  br i1 %i.c, label %bb.b, label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_78vJNS_7ndarrayIJfNS0_5shapeIJLln1ELln1EEEENS_6device3cpuEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSF_jPNS0_12cleanup_listEE_clEST_SU_jSW_.exit"

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %5, align 8, !tbaa !161
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.5.8.copyload = load ptr, ptr %i.e, align 8, !tbaa !25
  %.sroa.74.8..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.sroa.74.8.copyload = load ptr, ptr %.sroa.74.8..sroa_idx, align 8, !tbaa !53 ; 2 uses
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.sroa.8.8.copyload = load ptr, ptr %.sroa.8.8..sroa_idx, align 8, !tbaa !53
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.sroa.9.8.copyload = load i64, ptr %.sroa.9.8..sroa_idx, align 8, !tbaa !27
  store ptr null, ptr %5, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.5.8.copyload, i64 %.sroa.9.8.copyload
  %scevgep13.i.i = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.g = load i64, ptr %.sroa.74.8.copyload, align 8, !tbaa !27 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.74.8.copyload, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !27   ; 2 uses
  %i.j = load <2 x i64>, ptr %.sroa.8.8.copyload, align 8, !tbaa !27
  store <2 x i64> %i.j, ptr %scevgep13.i.i, align 8, !tbaa !27
  %.not.i = icmp eq i64 %i.g, 0
  %.not6.i = icmp eq i64 %i.i, 0
  %or.cond = select i1 %.not.i, i1 true, i1 %.not6.i
  br i1 %or.cond, label %.loopexit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b, %._crit_edge.i
  %.084.i = phi i64 [ %i.l, %._crit_edge.i ], [ 0, %bb.b ] ; 3 uses
  %i.k = mul i64 %.084.i, 10
  br label %bb.c

._crit_edge.i:                                    ; preds = %_ZNK8nanobind12ndarray_viewIfLm2ELc0EEclIJmmEEERfDpT_.exit.i
  %i.l = add nuw i64 %.084.i, 1                   ; 2 uses
  %exitcond7.not.i = icmp eq i64 %i.l, %i.g
  br i1 %exitcond7.not.i, label %.loopexit, label %.preheader.i, !llvm.loop !441

bb.c:                                             ; preds = %_ZNK8nanobind12ndarray_viewIfLm2ELc0EEclIJmmEEERfDpT_.exit.i, %.preheader.i
  %.03.i = phi i64 [ 0, %.preheader.i ], [ %i.t, %_ZNK8nanobind12ndarray_viewIfLm2ELc0EEclIJmmEEERfDpT_.exit.i ] ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %6 = phi i1 [ true, %bb.c ], [ false, %bb.d ]
  %.0.i2.i.sroa.phi.sroa.speculated = phi i64 [ %.084.i, %bb.c ], [ %.03.i, %bb.d ]
  %.0.i2.i = phi i64 [ 0, %bb.c ], [ 1, %bb.d ]
  %.08.i1.i = phi i64 [ 0, %bb.c ], [ %i.p, %bb.d ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %scevgep13.i.i, i64 %.0.i2.i
  %i.n = load i64, ptr %i.m, align 8, !tbaa !27
  %i.o = mul nsw i64 %i.n, %.0.i2.i.sroa.phi.sroa.speculated
  %i.p = add nsw i64 %i.o, %.08.i1.i              ; 2 uses
  br i1 %6, label %bb.d, label %_ZNK8nanobind12ndarray_viewIfLm2ELc0EEclIJmmEEERfDpT_.exit.i, !llvm.loop !1

_ZNK8nanobind12ndarray_viewIfLm2ELc0EEclIJmmEEERfDpT_.exit.i: ; preds = %bb.d
  %i.q = add i64 %.03.i, %i.k
  %i.r = uitofp i64 %i.q to float
  %i.s = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.p
  store float %i.r, ptr %i.s, align 4, !tbaa !109
  %i.t = add nuw i64 %.03.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.t, %i.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.c, !llvm.loop !442

.loopexit:                                        ; preds = %._crit_edge.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.d) #24
  br label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_78vJNS_7ndarrayIJfNS0_5shapeIJLln1ELln1EEEENS_6device3cpuEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSF_jPNS0_12cleanup_listEE_clEST_SU_jSW_.exit"

"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_78vJNS_7ndarrayIJfNS0_5shapeIJLln1ELln1EEEENS_6device3cpuEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSF_jPNS0_12cleanup_listEE_clEST_SU_jSW_.exit": ; preds = %bb.a, %.loopexit
  %.0.i = phi ptr [ @_Py_NoneStruct, %.loopexit ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.u = load ptr, ptr %5, align 8, !tbaa !161
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.u) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_7ndarrayIJfNS0_5shapeIJLln1ELln1EEEENS_6device3cpuEEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 4 uses
  %4 = alloca %"struct.nanobind::detail::ndarray_config", align 16 ; 7 uses
  %i.b = icmp ne ptr %1, @_Py_NoneStruct
  %i.c = and i32 %2, 4
  %.not = icmp eq i32 %i.c, 0
  %or.cond = or i1 %i.b, %.not
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !161
  tail call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.d) #24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  tail call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef null) #24
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store <4 x i32> <i32 0, i32 1, i32 2, i32 73730>, ptr %4, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 0, ptr %i.e, align 16, !tbaa !49
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 0, ptr %i.f, align 1, !tbaa !50
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 -1, i64 16, i1 false)
  store ptr %i.a, ptr %i.g, align 8, !tbaa !51
  %i.h = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !15
  %i.i = trunc i32 %2 to i1
  %i.j = call noundef ptr @_ZN8nanobind6detail14ndarray_importEPNS0_12nb_internalsEP7_objectPKNS0_14ndarray_configEbPNS0_12cleanup_listE(ptr noundef %i.h, ptr noundef %1, ptr noundef nonnull %4, i1 noundef zeroext %i.i, ptr noundef %3) #24 ; 3 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !444    ; 2 uses
  %.not10 = icmp eq ptr %i.k, null
  br i1 %.not10, label %bb.e, label %bb.d, !prof !52

bb.d:                                             ; preds = %bb.c
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef nonnull %i.k) #24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = icmp ne ptr %i.j, null                   ; 2 uses
  br i1 %i.l, label %bb.f, label %bb.g, !prof !52

bb.f:                                             ; preds = %bb.e
  %i.m = call noundef ptr @_ZN8nanobind6detail15ndarray_inc_refEPNS0_14ndarray_handleE(ptr noundef nonnull %i.j) #24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false), !tbaa.struct !54
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr %i.j, ptr %0, align 8, !tbaa !444
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ %i.l, %bb.g ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress nounwind optsize uwtable
define internal noundef nonnull ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_79vJNS_7ndarrayIJfNS0_5shapeIJLl3ELl4EEEENS_8c_contigENS_6device3cpuEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSG_jPNS0_12cleanup_listEE_8__invokeESU_SV_jSX_"(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::ndarray_view.770", align 8 ; 3 uses
  %5 = alloca %"struct.nanobind::detail::tuple.765", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !13
  %i.b = and i32 %2, -2
  %i.c = call noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_7ndarrayIJfNS0_5shapeIJLl3ELl4EEEENS_8c_contigENS_6device3cpuEEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr %i.a, i32 noundef %i.b, ptr noundef %3) #24
  br i1 %i.c, label %bb.b, label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_79vJNS_7ndarrayIJfNS0_5shapeIJLl3ELl4EEEENS_8c_contigENS_6device3cpuEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSG_jPNS0_12cleanup_listEE_clESU_SV_jSX_.exit"

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %5, align 8, !tbaa !163
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.5.8.copyload = load ptr, ptr %i.e, align 8, !tbaa !25
  %.sroa.74.8..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.sroa.74.8.copyload = load i64, ptr %.sroa.74.8..sroa_idx, align 8, !tbaa !27
  store ptr null, ptr %5, align 8, !tbaa !163
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.5.8.copyload, i64 %.sroa.74.8.copyload
  %scevgep15.i.i = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store <2 x i64> <i64 4, i64 1>, ptr %scevgep15.i.i, align 8, !tbaa !27
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.c, %bb.b
  %.084.i = phi i64 [ 0, %bb.b ], [ %i.h, %bb.c ] ; 3 uses
  %i.g = mul nuw nsw i64 %.084.i, 10
  br label %bb.d

bb.c:                                             ; preds = %_ZNK8nanobind12ndarray_viewIfLm2ELc67EEclIJmmEEERfDpT_.exit.i
  %i.h = add nuw nsw i64 %.084.i, 1               ; 2 uses
  %exitcond5.not.i = icmp eq i64 %i.h, 3
  br i1 %exitcond5.not.i, label %bb.f, label %.preheader.i, !llvm.loop !445

bb.d:                                             ; preds = %_ZNK8nanobind12ndarray_viewIfLm2ELc67EEclIJmmEEERfDpT_.exit.i, %.preheader.i
  %.03.i = phi i64 [ 0, %.preheader.i ], [ %i.p, %_ZNK8nanobind12ndarray_viewIfLm2ELc67EEclIJmmEEERfDpT_.exit.i ] ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %6 = phi i1 [ true, %bb.d ], [ false, %bb.e ]
  %.0.i2.i.sroa.phi.sroa.speculated = phi i64 [ %.084.i, %bb.d ], [ %.03.i, %bb.e ]
  %.0.i2.i = phi i64 [ 0, %bb.d ], [ 1, %bb.e ]
  %.08.i1.i = phi i64 [ 0, %bb.d ], [ %i.l, %bb.e ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %scevgep15.i.i, i64 %.0.i2.i
  %i.j = load i64, ptr %i.i, align 8, !tbaa !27
  %i.k = mul nsw i64 %i.j, %.0.i2.i.sroa.phi.sroa.speculated
  %i.l = add nsw i64 %i.k, %.08.i1.i              ; 2 uses
  br i1 %6, label %bb.e, label %_ZNK8nanobind12ndarray_viewIfLm2ELc67EEclIJmmEEERfDpT_.exit.i, !llvm.loop !446

_ZNK8nanobind12ndarray_viewIfLm2ELc67EEclIJmmEEERfDpT_.exit.i: ; preds = %bb.e
  %i.m = add nuw nsw i64 %.03.i, %i.g
  %i.n = uitofp nneg i64 %i.m to float
  %i.o = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.l
  store float %i.n, ptr %i.o, align 4, !tbaa !109
  %i.p = add nuw nsw i64 %.03.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.p, 4
  br i1 %exitcond.not.i, label %bb.c, label %bb.d, !llvm.loop !447

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.d) #24
  br label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_79vJNS_7ndarrayIJfNS0_5shapeIJLl3ELl4EEEENS_8c_contigENS_6device3cpuEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSG_jPNS0_12cleanup_listEE_clESU_SV_jSX_.exit"

"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_79vJNS_7ndarrayIJfNS0_5shapeIJLl3ELl4EEEENS_8c_contigENS_6device3cpuEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSG_jPNS0_12cleanup_listEE_clESU_SV_jSX_.exit": ; preds = %bb.a, %bb.f
  %.0.i = phi ptr [ @_Py_NoneStruct, %bb.f ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.q = load ptr, ptr %5, align 8, !tbaa !163
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.q) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_7ndarrayIJfNS0_5shapeIJLl3ELl4EEEENS_8c_contigENS_6device3cpuEEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 4 uses
  %4 = alloca %"struct.nanobind::detail::ndarray_config", align 16 ; 7 uses
  %i.b = icmp ne ptr %1, @_Py_NoneStruct
  %i.c = and i32 %2, 4
  %.not = icmp eq i32 %i.c, 0
  %or.cond = or i1 %i.b, %.not
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !163
  tail call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.d) #24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  tail call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef null) #24
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store <4 x i32> <i32 0, i32 1, i32 2, i32 73730>, ptr %4, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 67, ptr %i.e, align 16, !tbaa !49
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 0, ptr %i.f, align 1, !tbaa !50
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  store <2 x i64> <i64 3, i64 4>, ptr %i.a, align 16, !tbaa !27
  store ptr %i.a, ptr %i.g, align 8, !tbaa !51
  %i.h = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !15
  %i.i = trunc i32 %2 to i1
  %i.j = call noundef ptr @_ZN8nanobind6detail14ndarray_importEPNS0_12nb_internalsEP7_objectPKNS0_14ndarray_configEbPNS0_12cleanup_listE(ptr noundef %i.h, ptr noundef %1, ptr noundef nonnull %4, i1 noundef zeroext %i.i, ptr noundef %3) #24 ; 3 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !449    ; 2 uses
  %.not10 = icmp eq ptr %i.k, null
  br i1 %.not10, label %bb.e, label %bb.d, !prof !52

bb.d:                                             ; preds = %bb.c
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef nonnull %i.k) #24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = icmp ne ptr %i.j, null                   ; 2 uses
  br i1 %i.l, label %bb.f, label %bb.g, !prof !52

bb.f:                                             ; preds = %bb.e
  %i.m = call noundef ptr @_ZN8nanobind6detail15ndarray_inc_refEPNS0_14ndarray_handleE(ptr noundef nonnull %i.j) #24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false), !tbaa.struct !54
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr %i.j, ptr %0, align 8, !tbaa !449
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ %i.l, %bb.g ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress nounwind optsize uwtable
define internal noundef nonnull ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_80vJNS_7ndarrayIJfNS0_5shapeIJLl3ELl4EEEENS_8f_contigENS_6device3cpuEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSG_jPNS0_12cleanup_listEE_8__invokeESU_SV_jSX_"(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::ndarray_view.782", align 8 ; 3 uses
  %5 = alloca %"struct.nanobind::detail::tuple.776", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !13
  %i.b = and i32 %2, -2
  %i.c = call noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_7ndarrayIJfNS0_5shapeIJLl3ELl4EEEENS_8f_contigENS_6device3cpuEEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr %i.a, i32 noundef %i.b, ptr noundef %3) #24
  br i1 %i.c, label %bb.b, label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_80vJNS_7ndarrayIJfNS0_5shapeIJLl3ELl4EEEENS_8f_contigENS_6device3cpuEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSG_jPNS0_12cleanup_listEE_clESU_SV_jSX_.exit"

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %5, align 8, !tbaa !165
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.5.8.copyload = load ptr, ptr %i.e, align 8, !tbaa !25
  %.sroa.74.8..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.sroa.74.8.copyload = load i64, ptr %.sroa.74.8..sroa_idx, align 8, !tbaa !27
  store ptr null, ptr %5, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.5.8.copyload, i64 %.sroa.74.8.copyload
  %scevgep15.i.i = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store <2 x i64> <i64 1, i64 3>, ptr %scevgep15.i.i, align 8, !tbaa !27
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.c, %bb.b
  %.084.i = phi i64 [ 0, %bb.b ], [ %i.h, %bb.c ] ; 3 uses
  %i.g = mul nuw nsw i64 %.084.i, 10
  br label %bb.d

bb.c:                                             ; preds = %_ZNK8nanobind12ndarray_viewIfLm2ELc70EEclIJmmEEERfDpT_.exit.i
  %i.h = add nuw nsw i64 %.084.i, 1               ; 2 uses
  %exitcond5.not.i = icmp eq i64 %i.h, 3
  br i1 %exitcond5.not.i, label %bb.f, label %.preheader.i, !llvm.loop !450

bb.d:                                             ; preds = %_ZNK8nanobind12ndarray_viewIfLm2ELc70EEclIJmmEEERfDpT_.exit.i, %.preheader.i
  %.03.i = phi i64 [ 0, %.preheader.i ], [ %i.p, %_ZNK8nanobind12ndarray_viewIfLm2ELc70EEclIJmmEEERfDpT_.exit.i ] ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %6 = phi i1 [ true, %bb.d ], [ false, %bb.e ]
  %.0.i2.i.sroa.phi.sroa.speculated = phi i64 [ %.084.i, %bb.d ], [ %.03.i, %bb.e ]
  %.0.i2.i = phi i64 [ 0, %bb.d ], [ 1, %bb.e ]
  %.08.i1.i = phi i64 [ 0, %bb.d ], [ %i.l, %bb.e ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %scevgep15.i.i, i64 %.0.i2.i
  %i.j = load i64, ptr %i.i, align 8, !tbaa !27
  %i.k = mul nsw i64 %i.j, %.0.i2.i.sroa.phi.sroa.speculated
  %i.l = add nsw i64 %i.k, %.08.i1.i              ; 2 uses
  br i1 %6, label %bb.e, label %_ZNK8nanobind12ndarray_viewIfLm2ELc70EEclIJmmEEERfDpT_.exit.i, !llvm.loop !451

_ZNK8nanobind12ndarray_viewIfLm2ELc70EEclIJmmEEERfDpT_.exit.i: ; preds = %bb.e
  %i.m = add nuw nsw i64 %.03.i, %i.g
  %i.n = uitofp nneg i64 %i.m to float
  %i.o = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.l
  store float %i.n, ptr %i.o, align 4, !tbaa !109
  %i.p = add nuw nsw i64 %.03.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.p, 4
  br i1 %exitcond.not.i, label %bb.c, label %bb.d, !llvm.loop !452

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.d) #24
  br label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_80vJNS_7ndarrayIJfNS0_5shapeIJLl3ELl4EEEENS_8f_contigENS_6device3cpuEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSG_jPNS0_12cleanup_listEE_clESU_SV_jSX_.exit"

"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_80vJNS_7ndarrayIJfNS0_5shapeIJLl3ELl4EEEENS_8f_contigENS_6device3cpuEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSG_jPNS0_12cleanup_listEE_clESU_SV_jSX_.exit": ; preds = %bb.a, %bb.f
  %.0.i = phi ptr [ @_Py_NoneStruct, %bb.f ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.q = load ptr, ptr %5, align 8, !tbaa !165
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.q) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_7ndarrayIJfNS0_5shapeIJLl3ELl4EEEENS_8f_contigENS_6device3cpuEEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 4 uses
  %4 = alloca %"struct.nanobind::detail::ndarray_config", align 16 ; 7 uses
  %i.b = icmp ne ptr %1, @_Py_NoneStruct
  %i.c = and i32 %2, 4
  %.not = icmp eq i32 %i.c, 0
  %or.cond = or i1 %i.b, %.not
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !165
  tail call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.d) #24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  tail call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef null) #24
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store <4 x i32> <i32 0, i32 1, i32 2, i32 73730>, ptr %4, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 70, ptr %i.e, align 16, !tbaa !49
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 0, ptr %i.f, align 1, !tbaa !50
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  store <2 x i64> <i64 3, i64 4>, ptr %i.a, align 16, !tbaa !27
  store ptr %i.a, ptr %i.g, align 8, !tbaa !51
  %i.h = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !15
  %i.i = trunc i32 %2 to i1
  %i.j = call noundef ptr @_ZN8nanobind6detail14ndarray_importEPNS0_12nb_internalsEP7_objectPKNS0_14ndarray_configEbPNS0_12cleanup_listE(ptr noundef %i.h, ptr noundef %1, ptr noundef nonnull %4, i1 noundef zeroext %i.i, ptr noundef %3) #24 ; 3 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !454    ; 2 uses
  %.not10 = icmp eq ptr %i.k, null
  br i1 %.not10, label %bb.e, label %bb.d, !prof !52

bb.d:                                             ; preds = %bb.c
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef nonnull %i.k) #24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = icmp ne ptr %i.j, null                   ; 2 uses
  br i1 %i.l, label %bb.f, label %bb.g, !prof !52

bb.f:                                             ; preds = %bb.e
  %i.m = call noundef ptr @_ZN8nanobind6detail15ndarray_inc_refEPNS0_14ndarray_handleE(ptr noundef nonnull %i.j) #24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false), !tbaa.struct !54
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr %i.j, ptr %0, align 8, !tbaa !454
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ %i.l, %bb.g ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress nounwind optsize uwtable
define internal noundef nonnull ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_81vJNS_7ndarrayIJSt7complexIfENS0_5shapeIJLl2ELl2EEEENS_8c_contigENS_6device3cpuEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSI_jPNS0_12cleanup_listEE_8__invokeESW_SX_jSZ_"(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #20 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::ndarray_view.792", align 8 ; 3 uses
  %5 = alloca %"struct.nanobind::detail::tuple.787", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !13
  %i.b = and i32 %2, -2
  %i.c = call noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_7ndarrayIJSt7complexIfENS0_5shapeIJLl2ELl2EEEENS_8c_contigENS_6device3cpuEEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr %i.a, i32 noundef %i.b, ptr noundef %3) #24
  br i1 %i.c, label %bb.b, label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_81vJNS_7ndarrayIJSt7complexIfENS0_5shapeIJLl2ELl2EEEENS_8c_contigENS_6device3cpuEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSI_jPNS0_12cleanup_listEE_clESW_SX_jSZ_.exit"

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %5, align 8, !tbaa !167
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.5.8.copyload = load ptr, ptr %i.e, align 8, !tbaa !25
  %.sroa.74.8..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.sroa.74.8.copyload = load i64, ptr %.sroa.74.8..sroa_idx, align 8, !tbaa !27
  store ptr null, ptr %5, align 8, !tbaa !167
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.5.8.copyload, i64 %.sroa.74.8.copyload
  %scevgep15.i.i = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store <2 x i64> <i64 2, i64 1>, ptr %scevgep15.i.i, align 8, !tbaa !27
  br label %.preheader.i.a

.preheader.i.a:                                   ; preds = %6, %bb.b
  %i.g = phi i1 [ true, %bb.b ], [ false, %6 ]
  %.064.i = phi i64 [ 0, %bb.b ], [ 1, %6 ]
  br label %bb.c

6:                                                ; preds = %_ZNSt7complexIfEmLIfEERS0_RKS_IT_E.exit.i
  br i1 %i.g, label %.preheader.i.a, label %bb.g, !llvm.loop !455

bb.c:                                             ; preds = %_ZNSt7complexIfEmLIfEERS0_RKS_IT_E.exit.i, %.preheader.i.a
  %i.h = phi i1 [ true, %.preheader.i.a ], [ false, %_ZNSt7complexIfEmLIfEERS0_RKS_IT_E.exit.i ]
  %.03.i = phi i64 [ 0, %.preheader.i.a ], [ 1, %_ZNSt7complexIfEmLIfEERS0_RKS_IT_E.exit.i ]
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %7 = phi i1 [ true, %bb.c ], [ false, %bb.d ]
  %.0.i2.i.sroa.phi.sroa.speculated = phi i64 [ %.064.i, %bb.c ], [ %.03.i, %bb.d ]
  %.0.i2.i = phi i64 [ 0, %bb.c ], [ 1, %bb.d ]
  %.08.i1.i = phi i64 [ 0, %bb.c ], [ %i.l, %bb.d ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %scevgep15.i.i, i64 %.0.i2.i
  %i.j = load i64, ptr %i.i, align 8, !tbaa !27
  %i.k = mul nuw nsw i64 %i.j, %.0.i2.i.sroa.phi.sroa.speculated
  %i.l = add nsw i64 %i.k, %.08.i1.i              ; 2 uses
  br i1 %7, label %bb.d, label %_ZNK8nanobind12ndarray_viewISt7complexIfELm2ELc67EEclIJmmEEERS2_DpT_.exit.i, !llvm.loop !456

_ZNK8nanobind12ndarray_viewISt7complexIfELm2ELc67EEclIJmmEEERS2_DpT_.exit.i: ; preds = %bb.d
  %i.m = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.l ; 3 uses
  %i.n = load float, ptr %i.m, align 4            ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.p = load float, ptr %i.o, align 4            ; 3 uses
  %i.q = fneg float %i.n
  %i.r = fmul float %i.p, 2.000000e+00
  %i.s = fmul float %i.n, 2.000000e+00
  %i.t = insertelement <2 x float> poison, float %i.q, i64 0
  %i.u = insertelement <2 x float> %i.t, float %i.s, i64 1
  %i.v = insertelement <2 x float> poison, float %i.r, i64 0
  %i.w = insertelement <2 x float> %i.v, float %i.p, i64 1
  %i.x = fsub <2 x float> %i.u, %i.w              ; 4 uses
  %i.y = extractelement <2 x float> %i.x, i64 0
  %i.z = fcmp uno float %i.y, 0.000000e+00
  br i1 %i.z, label %bb.e, label %_ZNSt7complexIfEmLIfEERS0_RKS_IT_E.exit.i, !prof !458

bb.e:                                             ; preds = %_ZNK8nanobind12ndarray_viewISt7complexIfELm2ELc67EEclIJmmEEERS2_DpT_.exit.i
  %i.aa = extractelement <2 x float> %i.x, i64 1
  %i.ab = fcmp uno float %i.aa, 0.000000e+00
  br i1 %i.ab, label %bb.f, label %_ZNSt7complexIfEmLIfEERS0_RKS_IT_E.exit.i, !prof !458

bb.f:                                             ; preds = %bb.e
  %i.ac = call noundef <2 x float> @__mulsc3(float noundef %i.n, float noundef %i.p, float noundef -1.000000e+00, float noundef 2.000000e+00) #24
  br label %_ZNSt7complexIfEmLIfEERS0_RKS_IT_E.exit.i

_ZNSt7complexIfEmLIfEERS0_RKS_IT_E.exit.i:        ; preds = %bb.f, %bb.e, %_ZNK8nanobind12ndarray_viewISt7complexIfELm2ELc67EEclIJmmEEERS2_DpT_.exit.i
  %i.ad = phi <2 x float> [ %i.x, %_ZNK8nanobind12ndarray_viewISt7complexIfELm2ELc67EEclIJmmEEERS2_DpT_.exit.i ], [ %i.x, %bb.e ], [ %i.ac, %bb.f ]
  store <2 x float> %i.ad, ptr %i.m, align 4
  br i1 %i.h, label %bb.c, label %6, !llvm.loop !457

bb.g:                                             ; preds = %6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.d) #24
  br label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_81vJNS_7ndarrayIJSt7complexIfENS0_5shapeIJLl2ELl2EEEENS_8c_contigENS_6device3cpuEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSI_jPNS0_12cleanup_listEE_clESW_SX_jSZ_.exit"

"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_81vJNS_7ndarrayIJSt7complexIfENS0_5shapeIJLl2ELl2EEEENS_8c_contigENS_6device3cpuEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSI_jPNS0_12cleanup_listEE_clESW_SX_jSZ_.exit": ; preds = %bb.a, %bb.g
  %.0.i = phi ptr [ @_Py_NoneStruct, %bb.g ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.ae = load ptr, ptr %5, align 8, !tbaa !167
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.ae) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_7ndarrayIJSt7complexIfENS0_5shapeIJLl2ELl2EEEENS_8c_contigENS_6device3cpuEEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 4 uses
  %4 = alloca %"struct.nanobind::detail::ndarray_config", align 16 ; 7 uses
  %i.b = icmp ne ptr %1, @_Py_NoneStruct
  %i.c = and i32 %2, 4
  %.not = icmp eq i32 %i.c, 0
  %or.cond = or i1 %i.b, %.not
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !167
  tail call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.d) #24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  tail call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef null) #24
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store <4 x i32> <i32 0, i32 1, i32 2, i32 81925>, ptr %4, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 67, ptr %i.e, align 16, !tbaa !49
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 0, ptr %i.f, align 1, !tbaa !50
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  store <2 x i64> splat (i64 2), ptr %i.a, align 16, !tbaa !27
  store ptr %i.a, ptr %i.g, align 8, !tbaa !51
  %i.h = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !15
  %i.i = trunc i32 %2 to i1
  %i.j = call noundef ptr @_ZN8nanobind6detail14ndarray_importEPNS0_12nb_internalsEP7_objectPKNS0_14ndarray_configEbPNS0_12cleanup_listE(ptr noundef %i.h, ptr noundef %1, ptr noundef nonnull %4, i1 noundef zeroext %i.i, ptr noundef %3) #24 ; 3 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !460    ; 2 uses
  %.not10 = icmp eq ptr %i.k, null
  br i1 %.not10, label %bb.e, label %bb.d, !prof !52

bb.d:                                             ; preds = %bb.c
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef nonnull %i.k) #24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = icmp ne ptr %i.j, null                   ; 2 uses
  br i1 %i.l, label %bb.f, label %bb.g, !prof !52

bb.f:                                             ; preds = %bb.e
  %i.m = call noundef ptr @_ZN8nanobind6detail15ndarray_inc_refEPNS0_14ndarray_handleE(ptr noundef nonnull %i.j) #24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false), !tbaa.struct !54
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr %i.j, ptr %0, align 8, !tbaa !460
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ %i.l, %bb.g ]
  ret i1 %.0
}

declare <2 x float> @__mulsc3(float, float, float, float) local_unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind optsize uwtable
define internal noundef nonnull ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_82vJNS_7ndarrayIJSt7complexIfENS0_5shapeIJLl2ELl2EEEENS_8c_contigENS_6device3cpuEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSI_jPNS0_12cleanup_listEE_8__invokeESW_SX_jSZ_"(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #20 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.787", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !13
  %i.b = and i32 %2, -2
  %i.c = call noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_7ndarrayIJSt7complexIfENS0_5shapeIJLl2ELl2EEEENS_8c_contigENS_6device3cpuEEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr %i.a, i32 noundef %i.b, ptr noundef %3) #24
  br i1 %i.c, label %bb.b, label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_82vJNS_7ndarrayIJSt7complexIfENS0_5shapeIJLl2ELl2EEEENS_8c_contigENS_6device3cpuEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSI_jPNS0_12cleanup_listEE_clESW_SX_jSZ_.exit"

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %4, align 8, !tbaa !167
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.5.8.copyload = load ptr, ptr %i.e, align 8, !tbaa !25
  %.sroa.74.8..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.sroa.74.8.copyload = load i64, ptr %.sroa.74.8..sroa_idx, align 8, !tbaa !27
  store ptr null, ptr %4, align 8, !tbaa !167
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.5.8.copyload, i64 %.sroa.74.8.copyload
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %bb.b
  %.05.i = phi i64 [ 0, %bb.b ], [ %i.j, %.preheader.i ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.05.i ; 2 uses
  %i.h = load <2 x float>, ptr %i.g, align 4, !tbaa !109
  %i.i = fneg <2 x float> %i.h
  store <2 x float> %i.i, ptr %i.g, align 4, !tbaa !16
  %i.j = add nuw nsw i64 %.05.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.j, 4
  br i1 %exitcond.not.i, label %"_ZZL35nanobind_test_ndarray_ext_exec_implN8nanobind7module_EENK4$_82clENS_7ndarrayIJSt7complexIfENS_6detail5shapeIJLl2ELl2EEEENS_8c_contigENS_6device3cpuEEEE.exit", label %.preheader.i, !llvm.loop !461

"_ZZL35nanobind_test_ndarray_ext_exec_implN8nanobind7module_EENK4$_82clENS_7ndarrayIJSt7complexIfENS_6detail5shapeIJLl2ELl2EEEENS_8c_contigENS_6device3cpuEEEE.exit": ; preds = %.preheader.i
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.d) #24
  br label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_82vJNS_7ndarrayIJSt7complexIfENS0_5shapeIJLl2ELl2EEEENS_8c_contigENS_6device3cpuEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSI_jPNS0_12cleanup_listEE_clESW_SX_jSZ_.exit"

"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_82vJNS_7ndarrayIJSt7complexIfENS0_5shapeIJLl2ELl2EEEENS_8c_contigENS_6device3cpuEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSI_jPNS0_12cleanup_listEE_clESW_SX_jSZ_.exit": ; preds = %bb.a, %"_ZZL35nanobind_test_ndarray_ext_exec_implN8nanobind7module_EENK4$_82clENS_7ndarrayIJSt7complexIfENS_6detail5shapeIJLl2ELl2EEEENS_8c_contigENS_6device3cpuEEEE.exit"
  %.0.i = phi ptr [ @_Py_NoneStruct, %"_ZZL35nanobind_test_ndarray_ext_exec_implN8nanobind7module_EENK4$_82clENS_7ndarrayIJSt7complexIfENS_6detail5shapeIJLl2ELl2EEEENS_8c_contigENS_6device3cpuEEEE.exit" ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.k = load ptr, ptr %4, align 8, !tbaa !167
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.k) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret ptr %.0.i
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define internal noundef ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_83NS_7ndarrayIJNS_5numpyEEEEJbEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSA_jPNS0_12cleanup_listEE_8__invokeESO_SP_jSR_"(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 %2, ptr noundef %3) #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::ndarray_create_args", align 8 ; 8 uses
  %5 = alloca %"struct.nanobind::detail::ndarray_create_args", align 8 ; 8 uses
  %6 = alloca %"class.nanobind::ndarray.805", align 8 ; 8 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.b = icmp eq ptr %i.a, @_Py_TrueStruct
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %i.a, @_Py_FalseStruct
  br i1 %i.c, label %bb.d, label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_83NS_7ndarrayIJNS_5numpyEEEEJbEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSA_jPNS0_12cleanup_listEE_clESO_SP_jSR_.exit"

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !464
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 44
  store ptr @_ZL8f_global, ptr %5, align 8, !tbaa !118, !noalias !464
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.e, i8 0, i64 36, i1 false), !noalias !464
  store <4 x i32> <i32 0, i32 0, i32 0, i32 73730>, ptr %i.d, align 4, !noalias !464
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 60
  store i8 0, ptr %i.f, align 4, !tbaa !123, !noalias !464
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 61
  store i8 0, ptr %i.g, align 1, !tbaa !124, !noalias !464
  %i.h = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !15, !noalias !464
  %i.i = call noundef ptr @_ZN8nanobind6detail14ndarray_createEPNS0_12nb_internalsEPKNS0_19ndarray_create_argsE(ptr noundef %i.h, ptr noundef nonnull %5) #27, !noalias !464 ; 4 uses
  %i.j = call noundef ptr @_ZN8nanobind6detail15ndarray_inc_refEPNS0_14ndarray_handleE(ptr noundef %i.i) #24, !noalias !464 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !464
  store ptr %i.i, ptr %6, align 8, !tbaa !466, !alias.scope !464
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %"_ZZL35nanobind_test_ndarray_ext_exec_implN8nanobind7module_EENK4$_83clEb.exit", label %_ZN8nanobind7ndarrayIJNS_5numpyEEEC2IJS1_fNS_6detail5shapeIJEEEEEERKNS0_IJDpT_EEE.exit.sink.split.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !464)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !464
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 44
  store ptr @_ZL8i_global, ptr %4, align 8, !tbaa !118, !noalias !464
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.m, i8 0, i64 36, i1 false), !noalias !464
  store <4 x i32> <i32 0, i32 0, i32 0, i32 73728>, ptr %i.l, align 4, !noalias !464
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 60
  store i8 0, ptr %i.n, align 4, !tbaa !123, !noalias !464
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 61
end_hunk_1
