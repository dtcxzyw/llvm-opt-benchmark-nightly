Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-ot-cff2-table?download=true
inline.NumInlined: 1161
inline.NumDeleted: 254
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZNK2OT4cff213accelerator_t11get_path_atEP9hb_font_tjR17hb_draw_session_t10hb_array_tIKiEPl:bb.a

bb.g:                                             ; preds = %bb.f
  %i.bx = load ptr, ptr %7, align 8, !tbaa !125   ; 2 uses
  %i.by = zext i32 %i.bv to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !126 ; 2 uses
  %i.cb = zext i8 %i.ca to i32
  store i32 %i.bw, ptr %.sroa.gep, align 4, !tbaa !78
  %i.cc = icmp eq i8 %i.ca, 12
  br i1 %i.cc, label %bb.h, label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8fetch_opEv.exit.i

bb.h:                                             ; preds = %bb.g
  %i.cd = add i32 %i.bv, 2                        ; 2 uses
  %.not5.i.i.i = icmp ugt i32 %i.cd, %i.bu
  br i1 %.not5.i.i.i, label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8fetch_opEv.exit.i, label %bb.i, !prof !127

bb.i:                                             ; preds = %bb.h
  %i.ce = zext i32 %i.bw to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !126
  %i.ch = zext i8 %i.cg to i32
  %i.ci = or disjoint i32 %i.ch, 256
  store i32 %i.cd, ptr %.sroa.gep, align 4, !tbaa !78
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8fetch_opEv.exit.i

bb.j:                                             ; preds = %bb.f
  %i.cj = load i32, ptr %.sroa.gep16, align 4, !tbaa !128
  %.not.i1.i.i = icmp eq i32 %i.cj, 0
  %..i.i = select i1 %.not.i1.i.i, i32 14, i32 11
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8fetch_opEv.exit.i

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8fetch_opEv.exit.i: ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %.0.i.i9 = phi i32 [ %..i.i, %bb.j ], [ 65535, %bb.h ], [ %i.cb, %bb.g ], [ %i.ci, %bb.i ]
  call void @_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE10process_opEjRNS_20cff2_cs_interp_env_tIS3_EERS2_(i32 noundef %.0.i.i9, ptr noundef nonnull align 8 dereferenceable(4523) %7, ptr noundef nonnull align 8 dereferenceable(16) %8)
  %i.ck = load i8, ptr %i.ab, align 8, !tbaa !80, !range !129, !noundef !130
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8fetch_opEv.exit..thread_crit_edge.i, label %_ZNK3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE8in_errorEv.exit.i

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8fetch_opEv.exit..thread_crit_edge.i: ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8fetch_opEv.exit.i
  %.pre21.i = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !131
  br label %.thread.i

_ZNK3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE8in_errorEv.exit.i: ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8fetch_opEv.exit.i
  %i.cm = load i32, ptr %.sroa.gep, align 4, !tbaa !78 ; 2 uses
  %i.cn = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !131 ; 3 uses
  %i.co = icmp ugt i32 %i.cm, %i.cn
  %i.cp = load i8, ptr %i.bt, align 8, !range !129
  %i.cq = trunc nuw i8 %i.cp to i1
  %i.cr = select i1 %i.co, i1 true, i1 %i.cq
  %cond.fr.i = freeze i1 %i.cr                    ; 2 uses
  %i.cs = add nsw i32 %.0.i, -1                   ; 4 uses
  %.not.i10 = icmp eq i32 %i.cs, 0
  %brmerge.i = select i1 %cond.fr.i, i1 true, i1 %.not.i10, !prof !132
  br i1 %brmerge.i, label %.thread.i.loopexit, label %bb.k, !prof !132

.thread.i.loopexit:                               ; preds = %_ZNK3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE8in_errorEv.exit.i
  %.0.mux.i.le = select i1 %cond.fr.i, i32 %.0.i, i32 %i.cs, !prof !132
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.i.loopexit, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8fetch_opEv.exit..thread_crit_edge.i
  %i.ct = phi i32 [ %.pre21.i, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8fetch_opEv.exit..thread_crit_edge.i ], [ %i.cn, %.thread.i.loopexit ]
  %i.cu = phi i32 [ %.0.i, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8fetch_opEv.exit..thread_crit_edge.i ], [ %.0.mux.i.le, %.thread.i.loopexit ]
  %i.cv = add i32 %i.ct, 1
  store i32 %i.cv, ptr %.sroa.gep, align 4, !tbaa !78
  br label %.loopexit.i

bb.k:                                             ; preds = %_ZNK3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE8in_errorEv.exit.i
  %i.cw = load i8, ptr %i.bs, align 8, !tbaa !124, !range !129, !noundef !130
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %.loopexit.i, label %bb.f, !llvm.loop !187

.loopexit.i:                                      ; preds = %bb.k, %.thread.i
  %.06.i = phi i1 [ false, %.thread.i ], [ true, %bb.k ]
  %i.cy = phi i32 [ %i.cu, %.thread.i ], [ %i.cs, %bb.k ]
  %.not8.i = icmp eq ptr %6, null
  br i1 %.not8.i, label %_ZN3CFF16cs_interpreter_tINS_20cff2_cs_interp_env_tINS_8number_tEEE20cff2_cs_opset_path_t17cff2_path_param_tE9interpretERS5_Pl.exit, label %bb.l

bb.l:                                             ; preds = %.loopexit.i
  %i.cz = sub i32 200000, %i.cy
  %i.da = zext i32 %i.cz to i64
  %i.db = load i64, ptr %6, align 8, !tbaa !134
  %i.dc = sub nsw i64 %i.db, %i.da
  store i64 %i.dc, ptr %6, align 8, !tbaa !134
  br label %_ZN3CFF16cs_interpreter_tINS_20cff2_cs_interp_env_tINS_8number_tEEE20cff2_cs_opset_path_t17cff2_path_param_tE9interpretERS5_Pl.exit

_ZN3CFF16cs_interpreter_tINS_20cff2_cs_interp_env_tINS_8number_tEEE20cff2_cs_opset_path_t17cff2_path_param_tE9interpretERS5_Pl.exit: ; preds = %.loopexit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #6
  %i.dd = load ptr, ptr %i.ay, align 8, !tbaa !106 ; 7 uses
  %.not.i.i11 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i11, label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN3CFF16cs_interpreter_tINS_20cff2_cs_interp_env_tINS_8number_tEEE20cff2_cs_opset_path_t17cff2_path_param_tE9interpretERS5_Pl.exit
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4 ; 2 uses
  store i32 0, ptr %i.de, align 4, !tbaa !138
  %i.df = load ptr, ptr %i.az, align 8, !tbaa !107
  %i.dg = cmpxchg weak ptr %i.df, ptr null, ptr %i.dd acq_rel monotonic, align 8
  %i.dh = extractvalue { ptr, i1 } %i.dg, 1
  br i1 %i.dh, label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.di = load i32, ptr %i.dd, align 8, !tbaa !139
  %i.dj = add i32 %i.di, -1
  %spec.select.i.i.i.i = icmp ult i32 %i.dj, -2
  br i1 %spec.select.i.i.i.i, label %bb.o, label %_ZN11hb_vector_tIfLb0EE4finiEv.exit.i.i

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.de, align 4, !tbaa !138
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !140
  call void @hb_free(ptr noundef %i.dl) #6
  br label %_ZN11hb_vector_tIfLb0EE4finiEv.exit.i.i

_ZN11hb_vector_tIfLb0EE4finiEv.exit.i.i:          ; preds = %bb.o, %bb.n
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dd, i8 0, i64 16, i1 false)
  call void @hb_free(ptr noundef nonnull %i.dd) #6
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEED2Ev.exit

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEED2Ev.exit: ; preds = %_ZN3CFF16cs_interpreter_tINS_20cff2_cs_interp_env_tINS_8number_tEEE20cff2_cs_opset_path_t17cff2_path_param_tE9interpretERS5_Pl.exit, %bb.m, %_ZN11hb_vector_tIfLb0EE4finiEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEED2Ev.exit
  %.1 = phi i1 [ %.06.i, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEED2Ev.exit ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare void @hb_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE10process_opEjRNS_20cff2_cs_interp_env_tIS3_EERS2_(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(4523) %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  switch i32 %0, label %bb.g [
    i32 10, label %bb.b
    i32 29, label %bb.b
    i32 16, label %bb.c
    i32 15, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  tail call void @_ZN3CFF10cs_opset_tINS_8number_tE23cff2_cs_opset_extents_tNS_20cff2_cs_interp_env_tIS1_EE20cff2_extents_param_t25cff2_path_procs_extents_tE10process_opEjRS4_RS5_(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(4523) %1, ptr noundef nonnull align 8 dereferenceable(40) %2)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE13process_blendERNS_20cff2_cs_interp_env_tIS3_EERS2_(ptr noundef nonnull align 8 dereferenceable(4523) %1, ptr noundef nonnull align 8 dereferenceable(40) %2)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !148  ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e, !prof !127

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = add i32 %i.c, -1
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f
  %.pre.i.i.i.i = load double, ptr %i.g, align 8, !tbaa !123
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  store i8 1, ptr %i.a, align 8, !tbaa !149
  %i.h = load i64, ptr @_hb_NullPool, align 16    ; 2 uses
  store i64 %i.h, ptr @_hb_CrapPool, align 16
  %i.i = bitcast i64 %i.h to double
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i.i

_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.j = phi double [ %.pre.i.i.i.i, %bb.e ], [ %i.i, %bb.f ] ; 3 uses
  %i.k = fcmp ult double %i.j, f0xC1E0000000000000
  %i.l = fcmp ugt double %i.j, f0x41DFFFFFFFC00000
  %spec.select.not.i.i.not9.i.i.i = or i1 %i.k, %i.l
  %i.m = fptosi double %i.j to i32                ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  %or.cond.i.i.i = select i1 %spec.select.not.i.i.not9.i.i.i, i1 true, i1 %i.n, !prof !150
  br i1 %or.cond.i.i.i, label %.sink.split.i.i.i, label %_ZN3CFF11arg_stack_tINS_8number_tEE8pop_uintEv.exit.i.i, !prof !150

.sink.split.i.i.i:                                ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i.i
  store i8 1, ptr %i.a, align 8, !tbaa !149
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8pop_uintEv.exit.i.i

_ZN3CFF11arg_stack_tINS_8number_tEE8pop_uintEv.exit.i.i: ; preds = %.sink.split.i.i.i, %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i.i
  %.0.i.i.i = phi i32 [ %i.m, %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i.i ], [ 0, %.sink.split.i.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4521 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !108, !range !129, !noundef !130
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %.critedge.i.i, label %3, !prof !127

3:                                                ; preds = %_ZN3CFF11arg_stack_tINS_8number_tEE8pop_uintEv.exit.i.i
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 4522
  %5 = load i8, ptr %4, align 2, !tbaa !109, !range !129, !noundef !130
  %6 = trunc nuw i8 %5 to i1
  br i1 %6, label %.critedge.i.i, label %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE15process_vsindexERNS_20cff2_cs_interp_env_tIS3_EERS2_.exit, !prof !127

.critedge.i.i:                                    ; preds = %3, %_ZN3CFF11arg_stack_tINS_8number_tEE8pop_uintEv.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !131
  %i.t = add i32 %i.s, 1
  br label %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE15process_vsindexERNS_20cff2_cs_interp_env_tIS3_EERS2_.exit

_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE15process_vsindexERNS_20cff2_cs_interp_env_tIS3_EERS2_.exit: ; preds = %3, %.critedge.i.i
  %.sink2.i.i = phi i64 [ 12, %.critedge.i.i ], [ 4492, %3 ]
  %.0.i.sink.i.i = phi i32 [ %i.t, %.critedge.i.i ], [ %.0.i.i.i, %3 ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %.sink2.i.i
  store i32 %.0.i.sink.i.i, ptr %i.u, align 4, !tbaa !136
  store i8 1, ptr %i.o, align 1, !tbaa !108
  store i32 0, ptr %i.b, align 4, !tbaa !148
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void @_ZN3CFF10cs_opset_tINS_8number_tE23cff2_cs_opset_extents_tNS_20cff2_cs_interp_env_tIS1_EE20cff2_extents_param_t25cff2_path_procs_extents_tE10process_opEjRS4_RS5_(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(4523) %1, ptr noundef nonnull align 8 dereferenceable(40) %2)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE15process_vsindexERNS_20cff2_cs_interp_env_tIS3_EERS2_.exit, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF10cs_opset_tINS_8number_tE23cff2_cs_opset_extents_tNS_20cff2_cs_interp_env_tIS1_EE20cff2_extents_param_t25cff2_path_procs_extents_tE10process_opEjRS4_RS5_(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(4523) %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  switch i32 %0, label %bb.bk [
    i32 11, label %bb.b
    i32 14, label %bb.g
    i32 255, label %bb.h
    i32 10, label %bb.n
    i32 29, label %bb.v
    i32 1, label %bb.ad
    i32 18, label %bb.ad
    i32 3, label %bb.ae
    i32 23, label %bb.ae
    i32 19, label %bb.af
    i32 20, label %bb.af
    i32 21, label %bb.ai
    i32 22, label %bb.am
    i32 4, label %bb.ar
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
    i32 293, label %bb.bj
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !78
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !131  ; 2 uses
  %i.e = icmp ugt i32 %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.d, !prof !127

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i32 %i.d, 1
  store i32 %i.f, ptr %i.a, align 4, !tbaa !78
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4172 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !128  ; 2 uses
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e, !prof !127

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4176
  %i.j = add i32 %i.h, -1                         ; 2 uses
  store i32 %i.j, ptr %i.g, align 4, !tbaa !128
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.k
  br label %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE16return_from_subrEv.exit

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4168
  store i8 1, ptr %i.m, align 8, !tbaa !80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  br label %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE16return_from_subrEv.exit

_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE16return_from_subrEv.exit: ; preds = %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.l, %bb.e ], [ @_hb_CrapPool, %bb.f ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %.0.i.i, i64 24, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4464) %1, ptr noundef nonnull align 8 dereferenceable(16) %.0.i.i, i64 16, i1 false)
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.g:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4152
  store i8 1, ptr %i.o, align 8, !tbaa !124
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.p, align 4, !tbaa !148
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.h:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !78   ; 4 uses
  %i.t = add i32 %i.s, 4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !131  ; 3 uses
  %.not = icmp ugt i32 %i.t, %i.v
  br i1 %.not, label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit, label %bb.i, !prof !127

bb.i:                                             ; preds = %bb.h
  %.not.i.i128 = icmp ult i32 %i.s, %i.v
  br i1 %.not.i.i128, label %bb.k, label %bb.j, !prof !69

bb.j:                                             ; preds = %bb.i
  %i.w = add i32 %i.v, 1
  br label %_ZN3CFF14byte_str_ref_tixEi.exit.i

bb.k:                                             ; preds = %bb.i
  %i.x = load ptr, ptr %1, align 8, !tbaa !125
  %i.y = zext i32 %i.s to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y
  br label %_ZN3CFF14byte_str_ref_tixEi.exit.i

_ZN3CFF14byte_str_ref_tixEi.exit.i:               ; preds = %bb.k, %bb.j
  %i.aa = phi i32 [ %i.w, %bb.j ], [ %i.s, %bb.k ]
  %.0.i.i129 = phi ptr [ @_hb_NullPool, %bb.j ], [ %i.z, %bb.k ]
  %i.ab = load i32, ptr %.0.i.i129, align 1, !tbaa !101
  %i.ac = tail call noundef i32 @llvm.bswap.i32(i32 %i.ab)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !148 ; 3 uses
  %i.af = icmp ult i32 %i.ae, 513
  br i1 %i.af, label %bb.l, label %bb.m, !prof !69

bb.l:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = add nuw nsw i32 %i.ae, 1
  store i32 %i.ah, ptr %i.ad, align 4, !tbaa !148
  %i.ai = zext nneg i32 %i.ae to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ai
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE10push_fixedEi.exit.i

bb.m:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit.i
  store i8 1, ptr %i.q, align 8, !tbaa !149
  %i.ak = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.ak, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE10push_fixedEi.exit.i

_ZN3CFF11arg_stack_tINS_8number_tEE10push_fixedEi.exit.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i = phi ptr [ %i.aj, %bb.l ], [ @_hb_CrapPool, %bb.m ]
  %i.al = sitofp i32 %i.ac to double
  %i.am = fmul nnan double %i.al, f0x3EF0000000000000
  store double %i.am, ptr %.0.i.i.i, align 8, !tbaa !123
  %i.an = add i32 %i.aa, 4
  store i32 %i.an, ptr %i.r, align 4, !tbaa !78
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.n:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 4432
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !148 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i.i, label %bb.p, label %bb.o, !prof !127

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.at = add i32 %i.ar, -1                       ; 2 uses
  store i32 %i.at, ptr %i.aq, align 4, !tbaa !148
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.au
  %.pre.i.i.i = load double, ptr %i.av, align 8, !tbaa !123
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  store i8 1, ptr %i.ap, align 8, !tbaa !149
  %i.aw = load i64, ptr @_hb_NullPool, align 16   ; 2 uses
  store i64 %i.aw, ptr @_hb_CrapPool, align 16
  %i.ax = bitcast i64 %i.aw to double
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i

_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i: ; preds = %bb.p, %bb.o
  %i.ay = phi double [ %.pre.i.i.i, %bb.o ], [ %i.ax, %bb.p ] ; 3 uses
  %i.az = fcmp oge double %i.ay, f0xC1E0000000000000
  %i.ba = fcmp ole double %i.ay, f0x41DFFFFFFFC00000
  %spec.select.not.i.i.i.i = and i1 %i.az, %i.ba
  %i.bb = fptosi double %i.ay to i32
  br i1 %spec.select.not.i.i.i.i, label %_ZN3CFF11arg_stack_tINS_8number_tEE7pop_intEv.exit.i.i, label %bb.q, !prof !69

bb.q:                                             ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i
  store i8 1, ptr %i.ap, align 8, !tbaa !149
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE7pop_intEv.exit.i.i

_ZN3CFF11arg_stack_tINS_8number_tEE7pop_intEv.exit.i.i: ; preds = %bb.q, %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i
  %storemerge.i.i.i.i = phi i32 [ 0, %bb.q ], [ %i.bb, %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i ]
  %i.bc = load i32, ptr %i.ao, align 8, !tbaa !102
  %i.bd = add i32 %i.bc, %storemerge.i.i.i.i      ; 5 uses
  %i.be = icmp slt i32 %i.bd, 0
  br i1 %i.be, label %.critedge.i, label %bb.r, !prof !127

bb.r:                                             ; preds = %_ZN3CFF11arg_stack_tINS_8number_tEE7pop_intEv.exit.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 4440 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !99 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i, label %.critedge.i, label %bb.s, !prof !151
end_hunk_0
begin_hunk_1_@_ZNK2OT7VarData18get_region_scalarsEPKijRKNS_13VarRegionListEPfj:bb.a
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count27
  br i1 %cmp.n, label %.preheader, label %.lr.ph.split.us.preheader42

.lr.ph.split.us.preheader42:                      ; preds = %.lr.ph.split.us.preheader, %middle.block
  %indvars.iv24.ph = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader42, %.lr.ph.split.us
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %.lr.ph.split.us ], [ %indvars.iv24.ph, %.lr.ph.split.us.preheader42 ] ; 3 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv24
  %i.y = load i16, ptr %i.x, align 1, !tbaa !116
  %i.z = tail call noundef i16 @llvm.bswap.i16(i16 %i.y)
  %.not.i.us = icmp ult i16 %i.z, %i.g
  %.1.i.us = select i1 %.not.i.us, float 1.000000e+00, float 0.000000e+00, !prof !69
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv24
  store float %.1.i.us, ptr %i.aa, align 4, !tbaa !135
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1 ; 2 uses
  %exitcond28.not = icmp eq i64 %indvars.iv.next25, %wide.trip.count27
  br i1 %exitcond28.not, label %.preheader, label %.lr.ph.split.us, !llvm.loop !218

.preheader:                                       ; preds = %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit, %.lr.ph.split.us, %middle.block, %bb.a
  %i.ab = icmp ugt i32 %5, %i.c
  br i1 %i.ab, label %.lr.ph21.preheader, label %._crit_edge

.lr.ph21.preheader:                               ; preds = %.preheader
  %i.ac = zext i16 %i.b to i64
  %i.ad = zext i32 %5 to i64
  %umin = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 %i.ad)
  %i.ae = shl nuw nsw i64 %umin, 2
  %scevgep = getelementptr i8, ptr %4, i64 %i.ae
  %i.af = xor i32 %spec.select.i, -1
  %i.ag = add i32 %5, %i.af
  %i.ah = zext i32 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 2
  %i.aj = add nuw nsw i64 %i.ai, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.aj, i1 false), !tbaa !135
  br label %._crit_edge

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit ], [ 0, %.lr.ph ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv
  %i.al = load i16, ptr %i.ak, align 1, !tbaa !116
  %i.am = tail call noundef i16 @llvm.bswap.i16(i16 %i.al) ; 2 uses
  %.not.i = icmp ult i16 %i.am, %i.g
  br i1 %.not.i, label %.lr.ph.preheader.i, label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit, !prof !69

.lr.ph.preheader.i:                               ; preds = %.lr.ph.split
  %i.an = zext i16 %i.am to i64
  %i.ao = mul nuw nsw i64 %i.k, %i.an
  %i.ap = getelementptr inbounds nuw [6 x i8], ptr %i.h, i64 %i.ao
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i ] ; 4 uses
  %.01726.i = phi float [ 1.000000e+00, %.lr.ph.preheader.i ], [ %.121.i, %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i ] ; 4 uses
  %i.aq = icmp samesign ult i64 %indvars.iv.i, %i.l
  br i1 %i.aq, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !136
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.at = phi i32 [ %i.as, %bb.b ], [ 0, %.lr.ph.i ] ; 7 uses
  %i.au = getelementptr inbounds nuw [6 x i8], ptr %i.ap, i64 %indvars.iv.i ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  %i.aw = load i16, ptr %i.av, align 1, !tbaa !116 ; 2 uses
  %i.ax = tail call noundef i16 @llvm.bswap.i16(i16 %i.aw) ; 3 uses
  %i.ay = sext i16 %i.ax to i32                   ; 4 uses
  %i.az = icmp eq i16 %i.aw, 0
  %i.ba = icmp eq i32 %i.at, %i.ay
  %or.cond.i.i = or i1 %i.az, %i.ba
  br i1 %or.cond.i.i, label %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bb = icmp eq i32 %i.at, 0
  br i1 %i.bb, label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bc = load i16, ptr %i.au, align 1, !tbaa !116
  %i.bd = tail call noundef i16 @llvm.bswap.i16(i16 %i.bc) ; 3 uses
  %i.be = sext i16 %i.bd to i32                   ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.bg = load i16, ptr %i.bf, align 1, !tbaa !116
  %i.bh = tail call noundef i16 @llvm.bswap.i16(i16 %i.bg) ; 3 uses
  %i.bi = sext i16 %i.bh to i32                   ; 3 uses
  %i.bj = icmp sgt i16 %i.bd, %i.ax
  %i.bk = icmp sgt i16 %i.ax, %i.bh
  %i.bl = or i1 %i.bj, %i.bk
  br i1 %i.bl, label %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i, label %bb.f, !prof !127

bb.f:                                             ; preds = %bb.e
  %i.bm = icmp slt i16 %i.bd, 0
  %i.bn = icmp sgt i16 %i.bh, 0
  %i.bo = and i1 %i.bm, %i.bn
  br i1 %i.bo, label %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i, label %bb.g, !prof !127

bb.g:                                             ; preds = %bb.f
  %.not.i.i = icmp sgt i32 %i.at, %i.be
  %.not29.i.i = icmp slt i32 %i.at, %i.bi
  %or.cond30.i.i = and i1 %.not.i.i, %.not29.i.i
  br i1 %or.cond30.i.i, label %_ZNK2OT13VarRegionAxis8evaluateEi.exit.i, label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit

_ZNK2OT13VarRegionAxis8evaluateEi.exit.i:         ; preds = %bb.g
  %i.bp = icmp slt i32 %i.at, %i.ay               ; 2 uses
  %i.bq = sub nsw i32 %i.at, %i.be
  %i.br = sub nsw i32 %i.ay, %i.be
  %i.bs = sub nsw i32 %i.bi, %i.at
  %i.bt = sub nsw i32 %i.bi, %i.ay
  %.sink40.i = select i1 %i.bp, i32 %i.br, i32 %i.bt
  %.sink.in.i = select i1 %i.bp, i32 %i.bq, i32 %i.bs
  %.sink.i = sitofp i32 %.sink.in.i to float
  %i.bu = sitofp i32 %.sink40.i to float
  %i.bv = fdiv float %.sink.i, %i.bu              ; 2 uses
  %i.bw = fcmp une float %i.bv, 0.000000e+00
  %i.bx = fmul float %.01726.i, %i.bv
  br i1 %i.bw, label %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i, label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit

_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i:  ; preds = %_ZNK2OT13VarRegionAxis8evaluateEi.exit.i, %bb.f, %bb.e, %bb.c
  %.121.i = phi float [ %i.bx, %_ZNK2OT13VarRegionAxis8evaluateEi.exit.i ], [ %.01726.i, %bb.c ], [ %.01726.i, %bb.e ], [ %.01726.i, %bb.f ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.k
  br i1 %exitcond.not.i, label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit, label %.lr.ph.i, !llvm.loop !219

_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit: ; preds = %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i, %_ZNK2OT13VarRegionAxis8evaluateEi.exit.i, %bb.g, %bb.d, %.lr.ph.split
  %.1.i = phi float [ 0.000000e+00, %.lr.ph.split ], [ 0.000000e+00, %_ZNK2OT13VarRegionAxis8evaluateEi.exit.i ], [ 0.000000e+00, %bb.g ], [ 0.000000e+00, %bb.d ], [ %.121.i, %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i ]
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  store float %.1.i, ptr %i.by, align 4, !tbaa !135
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count27
  br i1 %exitcond.not, label %.preheader, label %.lr.ph.split, !llvm.loop !220

._crit_edge:                                      ; preds = %.lr.ph21.preheader, %.preheader
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE10process_opEjRNS_20cff2_cs_interp_env_tIS3_EERS2_(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(4523) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  switch i32 %0, label %bb.g [
    i32 10, label %bb.b
    i32 29, label %bb.b
    i32 16, label %bb.c
    i32 15, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  tail call void @_ZN3CFF10cs_opset_tINS_8number_tE20cff2_cs_opset_path_tNS_20cff2_cs_interp_env_tIS1_EE17cff2_path_param_t22cff2_path_procs_path_tE10process_opEjRS4_RS5_(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(4523) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE13process_blendERNS_20cff2_cs_interp_env_tIS3_EERS2_(ptr noundef nonnull align 8 dereferenceable(4523) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !148  ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e, !prof !127

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = add i32 %i.c, -1
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f
  %.pre.i.i.i.i = load double, ptr %i.g, align 8, !tbaa !123
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  store i8 1, ptr %i.a, align 8, !tbaa !149
  %i.h = load i64, ptr @_hb_NullPool, align 16    ; 2 uses
  store i64 %i.h, ptr @_hb_CrapPool, align 16
  %i.i = bitcast i64 %i.h to double
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i.i

_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.j = phi double [ %.pre.i.i.i.i, %bb.e ], [ %i.i, %bb.f ] ; 3 uses
  %i.k = fcmp ult double %i.j, f0xC1E0000000000000
  %i.l = fcmp ugt double %i.j, f0x41DFFFFFFFC00000
  %spec.select.not.i.i.not9.i.i.i = or i1 %i.k, %i.l
  %i.m = fptosi double %i.j to i32                ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  %or.cond.i.i.i = select i1 %spec.select.not.i.i.not9.i.i.i, i1 true, i1 %i.n, !prof !150
  br i1 %or.cond.i.i.i, label %.sink.split.i.i.i, label %_ZN3CFF11arg_stack_tINS_8number_tEE8pop_uintEv.exit.i.i, !prof !150

.sink.split.i.i.i:                                ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i.i
  store i8 1, ptr %i.a, align 8, !tbaa !149
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8pop_uintEv.exit.i.i

_ZN3CFF11arg_stack_tINS_8number_tEE8pop_uintEv.exit.i.i: ; preds = %.sink.split.i.i.i, %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i.i
  %.0.i.i.i = phi i32 [ %i.m, %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i.i ], [ 0, %.sink.split.i.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4521 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !108, !range !129, !noundef !130
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %.critedge.i.i, label %3, !prof !127

3:                                                ; preds = %_ZN3CFF11arg_stack_tINS_8number_tEE8pop_uintEv.exit.i.i
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 4522
  %5 = load i8, ptr %4, align 2, !tbaa !109, !range !129, !noundef !130
  %6 = trunc nuw i8 %5 to i1
  br i1 %6, label %.critedge.i.i, label %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE15process_vsindexERNS_20cff2_cs_interp_env_tIS3_EERS2_.exit, !prof !127

.critedge.i.i:                                    ; preds = %3, %_ZN3CFF11arg_stack_tINS_8number_tEE8pop_uintEv.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !131
  %i.t = add i32 %i.s, 1
  br label %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE15process_vsindexERNS_20cff2_cs_interp_env_tIS3_EERS2_.exit

_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE15process_vsindexERNS_20cff2_cs_interp_env_tIS3_EERS2_.exit: ; preds = %3, %.critedge.i.i
  %.sink2.i.i = phi i64 [ 12, %.critedge.i.i ], [ 4492, %3 ]
  %.0.i.sink.i.i = phi i32 [ %i.t, %.critedge.i.i ], [ %.0.i.i.i, %3 ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %.sink2.i.i
  store i32 %.0.i.sink.i.i, ptr %i.u, align 4, !tbaa !136
  store i8 1, ptr %i.o, align 1, !tbaa !108
  store i32 0, ptr %i.b, align 4, !tbaa !148
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void @_ZN3CFF10cs_opset_tINS_8number_tE20cff2_cs_opset_path_tNS_20cff2_cs_interp_env_tIS1_EE17cff2_path_param_t22cff2_path_procs_path_tE10process_opEjRS4_RS5_(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(4523) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE15process_vsindexERNS_20cff2_cs_interp_env_tIS3_EERS2_.exit, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF10cs_opset_tINS_8number_tE20cff2_cs_opset_path_tNS_20cff2_cs_interp_env_tIS1_EE17cff2_path_param_t22cff2_path_procs_path_tE10process_opEjRS4_RS5_(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(4523) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  switch i32 %0, label %bb.bf [
    i32 11, label %bb.b
    i32 14, label %bb.g
    i32 255, label %bb.h
    i32 10, label %bb.n
    i32 29, label %bb.v
    i32 1, label %bb.ad
    i32 18, label %bb.ad
    i32 3, label %bb.ae
    i32 23, label %bb.ae
    i32 19, label %bb.af
    i32 20, label %bb.af
    i32 21, label %bb.ai
    i32 22, label %bb.al
    i32 4, label %bb.ao
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
  %i.b = load i32, ptr %i.a, align 4, !tbaa !78
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !131  ; 2 uses
  %i.e = icmp ugt i32 %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.d, !prof !127

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i32 %i.d, 1
  store i32 %i.f, ptr %i.a, align 4, !tbaa !78
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4172 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !128  ; 2 uses
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e, !prof !127

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4176
  %i.j = add i32 %i.h, -1                         ; 2 uses
  store i32 %i.j, ptr %i.g, align 4, !tbaa !128
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.k
  br label %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE16return_from_subrEv.exit

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4168
  store i8 1, ptr %i.m, align 8, !tbaa !80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  br label %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE16return_from_subrEv.exit

_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE16return_from_subrEv.exit: ; preds = %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.l, %bb.e ], [ @_hb_CrapPool, %bb.f ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %.0.i.i, i64 24, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4464) %1, ptr noundef nonnull align 8 dereferenceable(16) %.0.i.i, i64 16, i1 false)
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.g:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4152
  store i8 1, ptr %i.o, align 8, !tbaa !124
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.p, align 4, !tbaa !148
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.h:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !78   ; 4 uses
  %i.t = add i32 %i.s, 4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !131  ; 3 uses
  %.not = icmp ugt i32 %i.t, %i.v
  br i1 %.not, label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit, label %bb.i, !prof !127

bb.i:                                             ; preds = %bb.h
  %.not.i.i128 = icmp ult i32 %i.s, %i.v
  br i1 %.not.i.i128, label %bb.k, label %bb.j, !prof !69

bb.j:                                             ; preds = %bb.i
  %i.w = add i32 %i.v, 1
  br label %_ZN3CFF14byte_str_ref_tixEi.exit.i

bb.k:                                             ; preds = %bb.i
  %i.x = load ptr, ptr %1, align 8, !tbaa !125
  %i.y = zext i32 %i.s to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y
  br label %_ZN3CFF14byte_str_ref_tixEi.exit.i

_ZN3CFF14byte_str_ref_tixEi.exit.i:               ; preds = %bb.k, %bb.j
  %i.aa = phi i32 [ %i.w, %bb.j ], [ %i.s, %bb.k ]
  %.0.i.i129 = phi ptr [ @_hb_NullPool, %bb.j ], [ %i.z, %bb.k ]
  %i.ab = load i32, ptr %.0.i.i129, align 1, !tbaa !101
  %i.ac = tail call noundef i32 @llvm.bswap.i32(i32 %i.ab)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !148 ; 3 uses
  %i.af = icmp ult i32 %i.ae, 513
  br i1 %i.af, label %bb.l, label %bb.m, !prof !69

bb.l:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = add nuw nsw i32 %i.ae, 1
  store i32 %i.ah, ptr %i.ad, align 4, !tbaa !148
  %i.ai = zext nneg i32 %i.ae to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ai
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE10push_fixedEi.exit.i

bb.m:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit.i
  store i8 1, ptr %i.q, align 8, !tbaa !149
  %i.ak = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.ak, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE10push_fixedEi.exit.i

_ZN3CFF11arg_stack_tINS_8number_tEE10push_fixedEi.exit.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i = phi ptr [ %i.aj, %bb.l ], [ @_hb_CrapPool, %bb.m ]
  %i.al = sitofp i32 %i.ac to double
  %i.am = fmul nnan double %i.al, f0x3EF0000000000000
  store double %i.am, ptr %.0.i.i.i, align 8, !tbaa !123
  %i.an = add i32 %i.aa, 4
  store i32 %i.an, ptr %i.r, align 4, !tbaa !78
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.n:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 4432
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !148 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i.i, label %bb.p, label %bb.o, !prof !127

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.at = add i32 %i.ar, -1                       ; 2 uses
  store i32 %i.at, ptr %i.aq, align 4, !tbaa !148
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.au
  %.pre.i.i.i = load double, ptr %i.av, align 8, !tbaa !123
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  store i8 1, ptr %i.ap, align 8, !tbaa !149
  %i.aw = load i64, ptr @_hb_NullPool, align 16   ; 2 uses
  store i64 %i.aw, ptr @_hb_CrapPool, align 16
  %i.ax = bitcast i64 %i.aw to double
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i

_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i: ; preds = %bb.p, %bb.o
  %i.ay = phi double [ %.pre.i.i.i, %bb.o ], [ %i.ax, %bb.p ] ; 3 uses
  %i.az = fcmp oge double %i.ay, f0xC1E0000000000000
  %i.ba = fcmp ole double %i.ay, f0x41DFFFFFFFC00000
  %spec.select.not.i.i.i.i = and i1 %i.az, %i.ba
  %i.bb = fptosi double %i.ay to i32
  br i1 %spec.select.not.i.i.i.i, label %_ZN3CFF11arg_stack_tINS_8number_tEE7pop_intEv.exit.i.i, label %bb.q, !prof !69

bb.q:                                             ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i
  store i8 1, ptr %i.ap, align 8, !tbaa !149
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE7pop_intEv.exit.i.i

_ZN3CFF11arg_stack_tINS_8number_tEE7pop_intEv.exit.i.i: ; preds = %bb.q, %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i
  %storemerge.i.i.i.i = phi i32 [ 0, %bb.q ], [ %i.bb, %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i ]
  %i.bc = load i32, ptr %i.ao, align 8, !tbaa !102
  %i.bd = add i32 %i.bc, %storemerge.i.i.i.i      ; 5 uses
  %i.be = icmp slt i32 %i.bd, 0
  br i1 %i.be, label %.critedge.i, label %bb.r, !prof !127

bb.r:                                             ; preds = %_ZN3CFF11arg_stack_tINS_8number_tEE7pop_intEv.exit.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 4440 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !99 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i, label %.critedge.i, label %bb.s, !prof !151
end_hunk_1
