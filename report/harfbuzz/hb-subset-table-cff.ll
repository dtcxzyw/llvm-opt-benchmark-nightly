Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-table-cff?download=true
inline.NumInlined: 7369
inline.NumDeleted: 3187
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN3CFF21cff2_top_dict_opset_t10process_opEjRNS_12interp_env_tINS_8number_tEEERNS_22cff2_top_dict_values_tE:bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !323 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i.i, label %bb.o, label %bb.n, !prof !74

bb.n:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bf = add i32 %i.bd, -1
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bg
  %.pre.i.i25 = load double, ptr %i.bh, align 8, !tbaa !324
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i

bb.o:                                             ; preds = %bb.m
  store i8 1, ptr %i.bb, align 8, !tbaa !327
  %i.bi = load i64, ptr @_hb_NullPool, align 16   ; 2 uses
  store i64 %i.bi, ptr @_hb_CrapPool, align 16
  %i.bj = bitcast i64 %i.bi to double
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i

_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i: ; preds = %bb.o, %bb.n
  %i.bk = phi double [ %.pre.i.i25, %bb.n ], [ %i.bj, %bb.o ] ; 3 uses
  %i.bl = fcmp oge double %i.bk, f0xC1E0000000000000
  %i.bm = fcmp ole double %i.bk, f0x41DFFFFFFFC00000
  %spec.select.not.i.i.i = and i1 %i.bl, %i.bm
  %i.bn = fptosi double %i.bk to i32
  br i1 %spec.select.not.i.i.i, label %_ZN3CFF11arg_stack_tINS_8number_tEE7pop_intEv.exit.i, label %bb.p, !prof !75

bb.p:                                             ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i
  store i8 1, ptr %i.bb, align 8, !tbaa !327
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE7pop_intEv.exit.i

_ZN3CFF11arg_stack_tINS_8number_tEE7pop_intEv.exit.i: ; preds = %bb.p, %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i
  %storemerge.i.i.i = phi i32 [ 0, %bb.p ], [ %i.bn, %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %storemerge.i.i.i, ptr %i.bo, align 8, !tbaa !2259
  store i32 0, ptr %i.bc, align 4, !tbaa !323
  br label %_ZN3CFF16top_dict_opset_tINS_8op_str_tEE10process_opEjRNS_12interp_env_tINS_8number_tEEERNS_17top_dict_values_tIS1_EE.exit.thread

bb.q:                                             ; preds = %bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !323 ; 2 uses
  %.not.i.i9.i = icmp eq i32 %i.br, 0
  br i1 %.not.i.i9.i, label %bb.s, label %bb.r, !prof !74

bb.r:                                             ; preds = %bb.q
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bt = add i32 %i.br, -1
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bu
  %.pre.i10.i = load double, ptr %i.bv, align 8, !tbaa !324
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i11.i

bb.s:                                             ; preds = %bb.q
  store i8 1, ptr %i.bp, align 8, !tbaa !327
  %i.bw = load i64, ptr @_hb_NullPool, align 16   ; 2 uses
  store i64 %i.bw, ptr @_hb_CrapPool, align 16
  %i.bx = bitcast i64 %i.bw to double
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i11.i

_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i11.i: ; preds = %bb.s, %bb.r
  %i.by = phi double [ %.pre.i10.i, %bb.r ], [ %i.bx, %bb.s ] ; 3 uses
  %i.bz = fcmp oge double %i.by, f0xC1E0000000000000
  %i.ca = fcmp ole double %i.by, f0x41DFFFFFFFC00000
  %spec.select.not.i.i12.i = and i1 %i.bz, %i.ca
  %i.cb = fptosi double %i.by to i32
  br i1 %spec.select.not.i.i12.i, label %_ZN3CFF11arg_stack_tINS_8number_tEE7pop_intEv.exit14.i, label %bb.t, !prof !75

bb.t:                                             ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i11.i
  store i8 1, ptr %i.bp, align 8, !tbaa !327
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE7pop_intEv.exit14.i

_ZN3CFF11arg_stack_tINS_8number_tEE7pop_intEv.exit14.i: ; preds = %bb.t, %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i11.i
  %storemerge.i.i13.i = phi i32 [ 0, %bb.t ], [ %i.cb, %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i11.i ]
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 %storemerge.i.i13.i, ptr %i.cc, align 4, !tbaa !2261
  store i32 0, ptr %i.bq, align 4, !tbaa !323
  br label %_ZN3CFF16top_dict_opset_tINS_8op_str_tEE10process_opEjRNS_12interp_env_tINS_8number_tEEERNS_17top_dict_values_tIS1_EE.exit.thread

_ZN3CFF16top_dict_opset_tINS_8op_str_tEE10process_opEjRNS_12interp_env_tINS_8number_tEEERNS_17top_dict_values_tIS1_EE.exit: ; preds = %bb.a
  tail call void @_ZN3CFF12dict_opset_t10process_opEjRNS_12interp_env_tINS_8number_tEEE(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(4128) %1)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !323
  %i.cd = icmp eq i32 %.pre, 0
  br i1 %i.cd, label %_ZN3CFF16top_dict_opset_tINS_8op_str_tEE10process_opEjRNS_12interp_env_tINS_8number_tEEERNS_17top_dict_values_tIS1_EE.exit.thread, label %bb.x

_ZN3CFF16top_dict_opset_tINS_8op_str_tEE10process_opEjRNS_12interp_env_tINS_8number_tEEERNS_17top_dict_values_tIS1_EE.exit.thread: ; preds = %_ZN3CFF11arg_stack_tINS_8number_tEE7pop_intEv.exit14.i, %_ZN3CFF11arg_stack_tINS_8number_tEE7pop_intEv.exit.i, %_ZN3CFF16top_dict_opset_tINS_8op_str_tEE10process_opEjRNS_12interp_env_tINS_8number_tEEERNS_17top_dict_values_tIS1_EE.exit, %_ZN3CFF11arg_stack_tINS_8number_tEE7pop_intEv.exit24, %_ZN3CFF11arg_stack_tINS_8number_tEE7pop_intEv.exit, %_ZN3CFF15parsed_values_tINS_8op_str_tEE6add_opEjRKNS_14byte_str_ref_tERKS1_.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !262
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !272
  %i.ci = icmp ugt i32 %i.cf, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ck = load i8, ptr %i.cj, align 8, !range !161
  %i.cl = trunc nuw i8 %i.ck to i1
  %i.cm = select i1 %i.ci, i1 true, i1 %i.cl
  br i1 %i.cm, label %bb.x, label %bb.u, !prof !74

bb.u:                                             ; preds = %_ZN3CFF16top_dict_opset_tINS_8op_str_tEE10process_opEjRNS_12interp_env_tINS_8number_tEEERNS_17top_dict_values_tIS1_EE.exit.thread
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !318 ; 3 uses
  %i.cq = load i32, ptr %i.cn, align 8, !tbaa !317
  %.not.i.i26 = icmp slt i32 %i.cp, %i.cq
  br i1 %.not.i.i26, label %.critedge.i.i32, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cr = add i32 %i.cp, 1
  %i.cs = tail call noundef zeroext i1 @_ZN11hb_vector_tIN3CFF8op_str_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i32 noundef %i.cr, i1 noundef zeroext false)
  br i1 %i.cs, label %..critedge_crit_edge.i.i30, label %bb.w, !prof !75

..critedge_crit_edge.i.i30:                       ; preds = %bb.v
  %.pre.i.i31 = load i32, ptr %i.co, align 4, !tbaa !318
  br label %.critedge.i.i32

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %_ZN3CFF15parsed_values_tINS_8op_str_tEE6add_opEjRKNS_14byte_str_ref_tERKS1_.exit33

.critedge.i.i32:                                  ; preds = %..critedge_crit_edge.i.i30, %bb.u
  %i.ct = phi i32 [ %.pre.i.i31, %..critedge_crit_edge.i.i30 ], [ %i.cp, %bb.u ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !319
  %i.cw = add i32 %i.ct, 1
  store i32 %i.cw, ptr %i.co, align 4, !tbaa !318
  %i.cx = zext i32 %i.ct to i64
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.cv, i64 %i.cx ; 4 uses
  store ptr null, ptr %i.cy, align 8, !tbaa !340
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i32 65535, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !166
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  store i32 0, ptr %.sroa.6.0..sroa_idx, align 4
  br label %_ZN3CFF15parsed_values_tINS_8op_str_tEE6add_opEjRKNS_14byte_str_ref_tERKS1_.exit33

_ZN3CFF15parsed_values_tINS_8op_str_tEE6add_opEjRKNS_14byte_str_ref_tERKS1_.exit33: ; preds = %bb.w, %.critedge.i.i32
  %.0.i.i27 = phi ptr [ @_hb_CrapPool, %bb.w ], [ %i.cy, %.critedge.i.i32 ] ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i.i27, i64 8
  store i32 %0, ptr %i.cz, align 8, !tbaa !333
  %i.da = load i32, ptr %2, align 8, !tbaa !291   ; 3 uses
  %i.db = load i32, ptr %i.ce, align 4, !tbaa !262 ; 2 uses
  %i.dc = sub i32 %i.db, %i.da
  %i.dd = load i32, ptr %i.cg, align 8, !tbaa !335
  %storemerge.i.i.i.i28 = tail call i32 @llvm.usub.sat.i32(i32 %i.dd, i32 %i.da)
  %.sroa.speculated.i.i.i.i29 = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i.i.i28, i32 %i.dc)
  %i.de = load ptr, ptr %1, align 8, !tbaa !336
  %i.df = zext i32 %i.da to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.df
  store ptr %i.dg, ptr %.0.i.i27, align 8, !tbaa !337
  %i.dh = trunc i32 %.sroa.speculated.i.i.i.i29 to i8
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i.i27, i64 12
  store i8 %i.dh, ptr %i.di, align 4, !tbaa !338
  store i32 %i.db, ptr %2, align 8, !tbaa !291
  br label %bb.x

bb.x:                                             ; preds = %_ZN3CFF16top_dict_opset_tINS_8op_str_tEE10process_opEjRNS_12interp_env_tINS_8number_tEEERNS_17top_dict_values_tIS1_EE.exit.thread, %_ZN3CFF16top_dict_opset_tINS_8op_str_tEE10process_opEjRNS_12interp_env_tINS_8number_tEEERNS_17top_dict_values_tIS1_EE.exit, %_ZN3CFF15parsed_values_tINS_8op_str_tEE6add_opEjRKNS_14byte_str_ref_tERKS1_.exit33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(6) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !247
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !248
  %i.i = zext i32 %i.h to i64
  %.not5 = icmp ugt i64 %i.f, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  br i1 %.not5, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit.thread, label %bb.b, !prof !74

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !254
  %i.k = load i32, ptr %0, align 1, !tbaa !258    ; 3 uses
  %i.l = tail call noundef i32 @llvm.bswap.i32(i32 %i.k) ; 2 uses
  %i.m = icmp eq i32 %i.k, 0
  br i1 %i.m, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = add i32 %i.l, 1                          ; 2 uses
  %.not6 = icmp eq i32 %i.k, -1
  br i1 %.not6, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 5 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !247
  %i.q = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r
  %i.t = load i32, ptr %i.g, align 8, !tbaa !248
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %.not7 = icmp ugt i64 %i.s, %i.u
  br i1 %.not7, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load i8, ptr %i.a, align 1, !tbaa !251   ; 3 uses
  %i.w = add i8 %i.v, -1
  %or.cond = icmp ult i8 %i.w, 4
  br i1 %or.cond, label %bb.f, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit.thread

bb.f:                                             ; preds = %bb.e
  %2 = zext nneg i8 %i.v to i32                   ; 2 uses
  %i.x = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 %i.n)
  %3 = mul i32 %i.n, %2                           ; 3 uses
  %i.y = extractvalue { i32, i1 } %i.x, 1
  br i1 %i.y, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !246
  %i.aa = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ab = sub i64 %i.aa, %i.q
  %i.ac = trunc i64 %i.ab to i32
  %.not12.i.i.i.i = icmp ugt i32 %3, %i.ac
  br i1 %.not12.i.i.i.i, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit.thread, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit

_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit: ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !249
  %i.af = sub i32 %i.ae, %3                       ; 3 uses
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !249
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %bb.h, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit.thread

bb.h:                                             ; preds = %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit
  %i.ah = zext i32 %3 to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ah
  %i.aj = zext i32 %i.l to i64                    ; 4 uses
  switch i8 %i.v, label %default.unreachable [
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %bb.k
    i8 4, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !251
  %i.am = zext i8 %i.al to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit

bb.j:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.aj
  %i.ao = load i16, ptr %i.an, align 1, !tbaa !255
  %i.ap = tail call noundef i16 @llvm.bswap.i16(i16 %i.ao)
  %i.aq = zext i16 %i.ap to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit

bb.k:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw [3 x i8], ptr %i.o, i64 %i.aj ; 3 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !257
  %i.at = zext i8 %i.as to i32
  %i.au = shl nuw nsw i32 %i.at, 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !257
  %i.ax = zext i8 %i.aw to i32
  %i.ay = shl nuw nsw i32 %i.ax, 8
  %i.az = or disjoint i32 %i.ay, %i.au
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !257
  %i.bc = zext i8 %i.bb to i32
  %i.bd = or disjoint i32 %i.az, %i.bc
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit

bb.l:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.aj
  %i.bf = load i32, ptr %i.be, align 1, !tbaa !258
  %i.bg = tail call noundef i32 @llvm.bswap.i32(i32 %i.bf)
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit

default.unreachable:                              ; preds = %bb.h
  unreachable

_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit: ; preds = %bb.i, %bb.j, %bb.k, %bb.l
  %.0.i = phi i32 [ %i.bg, %bb.l ], [ %i.am, %bb.i ], [ %i.aq, %bb.j ], [ %i.bd, %bb.k ] ; 2 uses
  %i.bh = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.bi = sub i64 %i.bh, %i.r
  %.not.i = icmp ugt i64 %i.bi, %i.u
  %i.bj = sub i64 %i.aa, %i.bh
  %i.bk = trunc i64 %i.bj to i32
  %.not12.i = icmp ugt i32 %.0.i, %i.bk
  %or.cond12 = select i1 %.not.i, i1 true, i1 %.not12.i
  br i1 %or.cond12, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit.thread, label %bb.m

bb.m:                                             ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit
  %i.bl = sub i32 %i.af, %.0.i                    ; 2 uses
  store i32 %i.bl, ptr %i.ad, align 4, !tbaa !249
  %i.bm = icmp sgt i32 %i.bl, 0
  br label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit.thread

_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit.thread: ; preds = %bb.m, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit, %bb.g, %bb.f, %bb.b, %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit, %bb.e, %bb.d, %bb.c, %bb.a
  %i.bn = phi i1 [ false, %bb.g ], [ false, %bb.a ], [ true, %bb.b ], [ false, %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit ], [ %i.bm, %bb.m ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.f ], [ false, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit ]
  ret i1 %i.bn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT18ItemVariationStore8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(12) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !247
  %i.d = ptrtoint ptr %i.a to i64                 ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !248
  %i.i = zext i32 %i.h to i64
  %.not = icmp ugt i64 %i.f, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %.not, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !254
  %i.k = load i16, ptr %0, align 1, !tbaa !255
  %i.l = icmp eq i16 %i.k, 256
  br i1 %i.l, label %bb.c, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !247
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = load i32, ptr %i.g, align 8, !tbaa !248
  %i.s = zext i32 %i.r to i64
  %.not.i4.not = icmp ugt i64 %i.q, %i.s
  br i1 %.not.i4.not, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %bb.d, !prof !74

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !254
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !254
  %i.u = load i32, ptr %i.t, align 1, !tbaa !258  ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !247 ; 2 uses
  %.pre22 = load i32, ptr %i.g, align 8, !tbaa !248 ; 2 uses
  br i1 %i.v, label %._ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread_crit_edge, label %bb.e

._ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread_crit_edge: ; preds = %bb.d
  %.pre23 = ptrtoint ptr %.pre to i64
  %.pre24 = zext i32 %.pre22 to i64
  br label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.w = tail call noundef i32 @llvm.bswap.i32(i32 %i.u)
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.ab = ptrtoint ptr %.pre to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = zext i32 %.pre22 to i64
  %.not.i.i.i = icmp ugt i64 %i.ac, %i.ad
  br i1 %.not.i.i.i, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !254
  %i.ae = load i16, ptr %i.y, align 1, !tbaa !255
  %i.af = tail call noundef i16 @llvm.bswap.i16(i16 %i.ae)
  %i.ag = zext i16 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.ai = load i16, ptr %i.ah, align 1, !tbaa !255
  %i.aj = tail call noundef i16 @llvm.bswap.i16(i16 %i.ai)
  %i.ak = zext i16 %i.aj to i32
  %i.al = mul nuw i32 %i.ak, %i.ag                ; 2 uses
  %2 = mul nuw i32 %i.al, 6                       ; 2 uses
  %3 = icmp ugt i32 %i.al, 715827882
  br i1 %3, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %bb.g, !prof !261

bb.g:                                             ; preds = %bb.f
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !247
  %i.an = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ao = sub i64 %i.aa, %i.an
  %i.ap = load i32, ptr %i.g, align 8, !tbaa !248
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %i.ao, %i.aq
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %bb.h, !prof !261

bb.h:                                             ; preds = %bb.g
  %i.ar = load ptr, ptr %i.j, align 8, !tbaa !246
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.aa
  %i.au = trunc i64 %i.at to i32
  %.not12.i.i.i.i.i.i.i = icmp ugt i32 %2, %i.au
  br i1 %.not12.i.i.i.i.i.i.i, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, !prof !261

_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit: ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !249
  %i.ax = sub i32 %i.aw, %2                       ; 2 uses
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !249
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13

_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread: ; preds = %._ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread_crit_edge, %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit
  %.pre-phi25 = phi i64 [ %.pre24, %._ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread_crit_edge ], [ %i.aq, %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit ]
  %.pre-phi = phi i64 [ %.pre23, %._ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread_crit_edge ], [ %i.an, %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit ]
  %i.az = sub i64 %i.d, %.pre-phi
  %.not.i5 = icmp ugt i64 %i.az, %.pre-phi25
  br i1 %.not.i5, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %bb.i, !prof !261

bb.i:                                             ; preds = %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !254
  %i.ba = load i16, ptr %i.m, align 1, !tbaa !255
  %i.bb = tail call noundef i16 @llvm.bswap.i16(i16 %i.ba)
  %i.bc = zext i16 %i.bb to i32
  %i.bd = shl nuw nsw i32 %i.bc, 2                ; 2 uses
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !247
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = sub i64 %i.d, %i.bf
  %i.bh = load i32, ptr %i.g, align 8, !tbaa !248
  %i.bi = zext i32 %i.bh to i64
  %.not.i.i.i6 = icmp ugt i64 %i.bg, %i.bi
  br i1 %.not.i.i.i6, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %bb.j, !prof !261

bb.j:                                             ; preds = %bb.i
  %i.bj = load ptr, ptr %i.j, align 8, !tbaa !246
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.d
  %i.bm = trunc i64 %i.bl to i32
  %.not12.i.i.i = icmp ugt i32 %i.bd, %i.bm
  br i1 %.not12.i.i.i, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit, !prof !261

_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit: ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !249
  %i.bp = sub i32 %i.bo, %i.bd                    ; 2 uses
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !249
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %bb.k, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, !prof !163

bb.k:                                             ; preds = %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !254
  %i.br = load i16, ptr %i.m, align 1, !tbaa !255 ; 2 uses
  %.not.i16.not = icmp eq i16 %i.br, 0
  br i1 %.not.i16.not, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.k
  %i.bs = tail call noundef i16 @llvm.bswap.i16(i16 %i.br)
  %wide.trip.count = zext i16 %i.bs to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit.thread ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bv = load ptr, ptr %i.b, align 8, !tbaa !247
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = load i32, ptr %i.g, align 8, !tbaa !248
  %i.ca = zext i32 %i.bz to i64
  %.not.i.not.i.i = icmp ugt i64 %i.by, %i.ca
  br i1 %.not.i.not.i.i, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %bb.l, !prof !74

bb.l:                                             ; preds = %.lr.ph
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !254
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !254
  %i.cb = load i32, ptr %i.bt, align 1, !tbaa !258 ; 2 uses
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit.thread, label %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit

_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit: ; preds = %bb.l
  %i.cd = tail call noundef i32 @llvm.bswap.i32(i32 %i.cb)
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 %i.ce
  %i.cg = tail call noundef zeroext i1 @_ZNK2OT7VarData8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(8) %i.cf, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br i1 %i.cg, label %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit.thread, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, !prof !163

_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit.thread: ; preds = %bb.l, %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %.lr.ph, !llvm.loop !2294

_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13: ; preds = %.lr.ph, %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit, %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit.thread, %bb.k, %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit, %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, %bb.j, %bb.i, %bb.h, %bb.f, %bb.g, %bb.e, %bb.c, %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, %bb.b, %bb.a
  %i.ch = phi i1 [ false, %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit ], [ false, %bb.b ], [ false, %bb.h ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.i ], [ false, %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit ], [ false, %bb.j ], [ false, %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread ], [ true, %bb.k ], [ false, %.lr.ph ], [ false, %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit ], [ true, %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit.thread ]
  ret i1 %i.ch
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT7VarData8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !247
  %i.d = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !248
  %i.i = zext i32 %i.h to i64
  %.not8 = icmp ugt i64 %i.f, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %.not8, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !254
  %i.l = load i16, ptr %i.k, align 1, !tbaa !255
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %i.l)
  %i.n = zext i16 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 1                  ; 2 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !247
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.d, %i.q
  %i.s = load i32, ptr %i.g, align 8, !tbaa !248
  %i.t = zext i32 %i.s to i64
  %.not.i.i.i = icmp ugt i64 %i.r, %i.t
  br i1 %.not.i.i.i, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit.thread, label %bb.c, !prof !261

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !246
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.d
  %i.x = trunc i64 %i.w to i32
  %.not12.i.i.i = icmp ugt i32 %i.o, %i.x
  br i1 %.not12.i.i.i, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit.thread, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E16sanitize_shallowEP21hb_sanitize_context_t.exit, !prof !261

_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E16sanitize_shallowEP21hb_sanitize_context_t.exit: ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 4 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !249
  %i.aa = sub i32 %i.z, %i.o                      ; 2 uses
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !249
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit.thread, !prof !163

_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit: ; preds = %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E16sanitize_shallowEP21hb_sanitize_context_t.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !254
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ad = load i16, ptr %i.ac, align 1, !tbaa !255 ; 2 uses
  %i.ae = and i16 %i.ad, -129
  %i.af = tail call i16 @llvm.bswap.i16(i16 %i.ae) ; 2 uses
  %i.ag = load i16, ptr %i.k, align 1, !tbaa !255
  %i.ah = tail call noundef i16 @llvm.bswap.i16(i16 %i.ag) ; 3 uses
  %.not = icmp ugt i16 %i.af, %i.ah
  br i1 %.not, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit
  %i.ai = zext i16 %i.ah to i32
  %i.aj = zext nneg i16 %i.af to i32
  %i.ak = load i16, ptr %0, align 1, !tbaa !255
  %i.al = tail call noundef i16 @llvm.bswap.i16(i16 %i.ak)
  %i.am = zext i16 %i.al to i32                   ; 2 uses
  %i.an = add nuw nsw i32 %i.aj, %i.ai
  %.mask.i.i = lshr i16 %i.ad, 7
  %.mask.i.lobit.i = and i16 %.mask.i.i, 1
  %i.ao = zext nneg i16 %.mask.i.lobit.i to i32
  %i.ap = shl nuw nsw i32 %i.an, %i.ao            ; 2 uses
  %i.aq = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.am, i32 %i.ap)
  %2 = mul nuw i32 %i.ap, %i.am                   ; 2 uses
  %i.ar = extractvalue { i32, i1 } %i.aq, 1
  br i1 %i.ar, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = zext i16 %i.ah to i64
  %i.at = shl nuw nsw i64 %i.as, 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !247
  %i.ax = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = load i32, ptr %i.g, align 8, !tbaa !248
  %i.bb = zext i32 %i.ba to i64
  %.not.i.i = icmp ugt i64 %i.az, %i.bb
  br i1 %.not.i.i, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = load ptr, ptr %i.j, align 8, !tbaa !246
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %i.ax
  %i.bf = trunc i64 %i.be to i32
  %.not12.i.i = icmp ugt i32 %2, %i.bf
  br i1 %.not12.i.i, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = load i32, ptr %i.y, align 4, !tbaa !249
  %i.bh = sub i32 %i.bg, %2                       ; 2 uses
  store i32 %i.bh, ptr %i.y, align 4, !tbaa !249
  %i.bi = icmp sgt i32 %i.bh, 0
  br label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit.thread

_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit.thread: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.b, %bb.c, %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E16sanitize_shallowEP21hb_sanitize_context_t.exit, %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit, %bb.a
  %i.bj = phi i1 [ false, %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit ], [ false, %bb.b ], [ false, %bb.a ], [ false, %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E16sanitize_shallowEP21hb_sanitize_context_t.exit ], [ %i.bi, %bb.g ], [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.e ]
  ret i1 %i.bj
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_tj(ptr noundef nonnull align 1 dereferenceable(10) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !247
  %i.d = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !248
  %i.i = zext i32 %i.h to i64
  %.not43 = icmp ugt i64 %i.f, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  br i1 %.not43, label %.critedge, label %bb.b, !prof !74

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !254
  %i.k = load i32, ptr %0, align 1, !tbaa !258
  %i.l = tail call noundef i32 @llvm.bswap.i32(i32 %i.k) ; 2 uses
  %3 = mul nuw i32 %i.l, 6                        ; 2 uses
  %4 = icmp ugt i32 %i.l, 715827882
  br i1 %4, label %.critedge, label %bb.c, !prof !74

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !247
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.d, %i.n
  %i.p = load i32, ptr %i.g, align 8, !tbaa !248
  %i.q = zext i32 %i.p to i64
  %.not.i.i.i = icmp ugt i64 %i.o, %i.q
  br i1 %.not.i.i.i, label %.critedge, label %bb.d, !prof !261

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !246
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %i.s, %i.d
  %i.u = trunc i64 %i.t to i32
  %.not12.i.i.i = icmp ugt i32 %3, %i.u
  br i1 %.not12.i.i.i, label %.critedge, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_E16sanitize_shallowEP21hb_sanitize_context_t.exit, !prof !261

_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_E16sanitize_shallowEP21hb_sanitize_context_t.exit: ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !249
  %i.x = sub i32 %i.w, %3                         ; 2 uses
  store i32 %i.x, ptr %i.v, align 4, !tbaa !249
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %bb.e, label %.critedge, !prof !163

bb.e:                                             ; preds = %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_E16sanitize_shallowEP21hb_sanitize_context_t.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !254
  %i.z = load i32, ptr %0, align 1, !tbaa !258    ; 2 uses
  %.not.i48.not = icmp eq i32 %i.z, 0
  br i1 %.not.i48.not, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_E8sanitizeIJDnRjEEEbP21hb_sanitize_context_tDpOT_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.aa = tail call noundef i32 @llvm.bswap.i32(i32 %i.z)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56
  %wide.trip.count = zext i32 %i.aa to i64
  br label %bb.g

bb.f:                                             ; preds = %_ZN21hb_sanitize_context_t8dispatchIN3CFF17FDSelect3_4_RangeIN2OT7NumTypeILb1EjLj4EEENS4_ILb1EtLj2EEEEEJDnRjEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSB_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_E8sanitizeIJDnRjEEEbP21hb_sanitize_context_tDpOT_.exit, label %bb.g, !llvm.loop !2295

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [6 x i8], ptr %i.a, i64 %indvars.iv ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 6
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !247
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = load i32, ptr %i.g, align 8, !tbaa !248
  %i.aj = zext i32 %i.ai to i64
  %.not.i.i.i17 = icmp ugt i64 %i.ah, %i.aj
  br i1 %.not.i.i.i17, label %.critedge, label %bb.h, !prof !261

bb.h:                                             ; preds = %bb.g
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !254
  %i.ak = load i32, ptr %i.ac, align 1, !tbaa !258
  %i.al = tail call noundef i32 @llvm.bswap.i32(i32 %i.ak)
  %i.am = load i32, ptr %i.ab, align 8, !tbaa !239
  %i.an = icmp ult i32 %i.al, %i.am
  br i1 %i.an, label %_ZN21hb_sanitize_context_t8dispatchIN3CFF17FDSelect3_4_RangeIN2OT7NumTypeILb1EjLj4EEENS4_ILb1EtLj2EEEEEJDnRjEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSB_.exit, label %.critedge, !prof !350

_ZN21hb_sanitize_context_t8dispatchIN3CFF17FDSelect3_4_RangeIN2OT7NumTypeILb1EjLj4EEENS4_ILb1EtLj2EEEEEJDnRjEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSB_.exit: ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ap = load i16, ptr %i.ao, align 1, !tbaa !255
  %i.aq = tail call noundef i16 @llvm.bswap.i16(i16 %i.ap)
  %i.ar = zext i16 %i.aq to i32
  %i.as = icmp ugt i32 %2, %i.ar
  br i1 %i.as, label %bb.f, label %.critedge, !prof !163

_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_E8sanitizeIJDnRjEEEbP21hb_sanitize_context_tDpOT_.exit: ; preds = %bb.f, %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !254
  %.sroa.0.0.copyload.i = load i32, ptr %0, align 1, !tbaa !257
  %.not = icmp eq i32 %.sroa.0.0.copyload.i, 0
  br i1 %.not, label %.critedge, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit, !prof !74

_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit: ; preds = %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_E8sanitizeIJDnRjEEEbP21hb_sanitize_context_tDpOT_.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !254
  %i.at = load i32, ptr %i.a, align 1, !tbaa !258
  %.not44 = icmp eq i32 %i.at, 0
  br i1 %.not44, label %.preheader, label %.critedge, !prof !75

.preheader:                                       ; preds = %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit
  %.sroa.0.0.copyload.i2050 = load i32, ptr %0, align 1, !tbaa !257 ; 2 uses
  %i.au = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload.i2050)
  %.not1351 = icmp ugt i32 %i.au, 1
  br i1 %.not1351, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit23, label %._crit_edge

bb.i:                                             ; preds = %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit26
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %.sroa.0.0.copyload.i20 = load i32, ptr %0, align 1, !tbaa !257 ; 2 uses
  %i.av = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload.i20)
  %i.aw = zext i32 %i.av to i64
  %.not13 = icmp samesign ult i64 %indvars.iv.next56, %i.aw
  br i1 %.not13, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit23, label %._crit_edge, !llvm.loop !2296

_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit23: ; preds = %.preheader, %bb.i
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %bb.i ], [ 1, %.preheader ] ; 4 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !254
  %i.ax = getelementptr [6 x i8], ptr %i.a, i64 %indvars.iv55
  %i.ay = getelementptr i8, ptr %i.ax, i64 -6
  %i.az = load i32, ptr %i.ay, align 1, !tbaa !258
  %i.ba = tail call noundef i32 @llvm.bswap.i32(i32 %i.az)
  %i.bb = load i32, ptr %0, align 1, !tbaa !258
  %i.bc = tail call noundef i32 @llvm.bswap.i32(i32 %i.bb)
  %i.bd = zext i32 %i.bc to i64
  %.not.i24 = icmp samesign ult i64 %indvars.iv55, %i.bd
  br i1 %.not.i24, label %bb.j, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit26, !prof !75

bb.j:                                             ; preds = %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit23
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !254
  %i.be = getelementptr inbounds nuw [6 x i8], ptr %i.a, i64 %indvars.iv55
  br label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit26

_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit26: ; preds = %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit23, %bb.j
  %.0.i25 = phi ptr [ %i.be, %bb.j ], [ @_hb_NullPool, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit23 ]
  %i.bf = load i32, ptr %.0.i25, align 1, !tbaa !258
  %i.bg = tail call noundef i32 @llvm.bswap.i32(i32 %i.bf)
  %.not12 = icmp ult i32 %i.ba, %i.bg
  br i1 %.not12, label %bb.i, label %.critedge, !prof !75

._crit_edge:                                      ; preds = %bb.i, %.preheader
  %.sroa.0.0.copyload.i.i = phi i32 [ %.sroa.0.0.copyload.i2050, %.preheader ], [ %.sroa.0.0.copyload.i20, %bb.i ] ; 2 uses
  %.not.i.not.i = icmp eq i32 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i.not.i, label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE8sentinelEv.exit, label %bb.k, !prof !74

bb.k:                                             ; preds = %._crit_edge
  %i.bh = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload.i.i)
  %i.bi = add i32 %i.bh, -1
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !254
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [6 x i8], ptr %i.a, i64 %i.bj
  br label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE8sentinelEv.exit

_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE8sentinelEv.exit: ; preds = %._crit_edge, %bb.k
  %.0.i.i = phi ptr [ %i.bk, %bb.k ], [ @_hb_NullPool, %._crit_edge ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 10
  %i.bm = load ptr, ptr %i.b, align 8, !tbaa !247
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = load i32, ptr %i.g, align 8, !tbaa !248
  %i.br = zext i32 %i.bq to i64
  %.not45 = icmp ugt i64 %i.bp, %i.br
  br i1 %.not45, label %.critedge, label %bb.l, !prof !74

bb.l:                                             ; preds = %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE8sentinelEv.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !254
  %.sroa.0.0.copyload.i.i27 = load i32, ptr %0, align 1, !tbaa !257 ; 2 uses
  %.not.i.not.i28 = icmp eq i32 %.sroa.0.0.copyload.i.i27, 0
  br i1 %.not.i.not.i28, label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE8sentinelEv.exit30, label %bb.m, !prof !74

bb.m:                                             ; preds = %bb.l
  %i.bs = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload.i.i27)
  %i.bt = add i32 %i.bs, -1
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !254
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [6 x i8], ptr %i.a, i64 %i.bu
  br label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE8sentinelEv.exit30

_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE8sentinelEv.exit30: ; preds = %bb.l, %bb.m
  %.0.i.i29 = phi ptr [ %i.bv, %bb.m ], [ @_hb_NullPool, %bb.l ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i.i29, i64 6
  %i.bx = load i32, ptr %i.bw, align 1, !tbaa !258
  %i.by = tail call noundef i32 @llvm.bswap.i32(i32 %i.bx)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !239
  %.not46 = icmp eq i32 %i.by, %i.ca
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.h, %_ZN21hb_sanitize_context_t8dispatchIN3CFF17FDSelect3_4_RangeIN2OT7NumTypeILb1EjLj4EEENS4_ILb1EtLj2EEEEEJDnRjEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSB_.exit, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit26, %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE8sentinelEv.exit30, %bb.c, %bb.d, %bb.b, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_E16sanitize_shallowEP21hb_sanitize_context_t.exit, %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE8sentinelEv.exit, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit, %bb.a, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_E8sanitizeIJDnRjEEEbP21hb_sanitize_context_tDpOT_.exit
  %.1 = phi i1 [ false, %bb.c ], [ false, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit ], [ false, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit26 ], [ false, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_E8sanitizeIJDnRjEEEbP21hb_sanitize_context_tDpOT_.exit ], [ false, %bb.a ], [ %.not46, %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE8sentinelEv.exit30 ], [ false, %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE8sentinelEv.exit ], [ false, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_E16sanitize_shallowEP21hb_sanitize_context_t.exit ], [ false, %bb.b ], [ false, %bb.d ], [ false, %_ZN21hb_sanitize_context_t8dispatchIN3CFF17FDSelect3_4_RangeIN2OT7NumTypeILb1EjLj4EEENS4_ILb1EtLj2EEEEEJDnRjEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSB_.exit ], [ false, %bb.h ], [ false, %bb.g ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIN3CFF31cff2_private_dict_values_base_tINS0_8op_str_tEEELb0EE11resize_fullEibb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %_ZN11hb_vector_tIN3CFF31cff2_private_dict_values_base_tINS0_8op_str_tEEELb0EE5allocEjb.exit.thread19, label %bb.b, !prof !74

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !2285   ; 6 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %_ZN11hb_vector_tIN3CFF31cff2_private_dict_values_base_tINS0_8op_str_tEEELb0EE5allocEjb.exit.thread19, label %bb.c, !prof !74

bb.c:                                             ; preds = %bb.b
  br i1 %3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !166
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.e) ; 3 uses
  %.not19.i = icmp ugt i32 %.sroa.speculated.i, %i.b
  %i.f = lshr i32 %i.b, 2
  %.not20.i = icmp ult i32 %.sroa.speculated.i, %i.f
  %or.cond.i = or i1 %.not19.i, %.not20.i
  br i1 %or.cond.i, label %.thread.i, label %_ZN11hb_vector_tIN3CFF31cff2_private_dict_values_base_tINS0_8op_str_tEEELb0EE5allocEjb.exit.thread

bb.e:                                             ; preds = %bb.c
  %.not.i = icmp samesign ugt i32 %1, %i.b
  br i1 %.not.i, label %.preheader.i, label %_ZN11hb_vector_tIN3CFF31cff2_private_dict_values_base_tINS0_8op_str_tEEELb0EE5allocEjb.exit.thread, !prof !74

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.039.i = phi i32 [ %i.i, %.preheader.i ], [ %i.b, %bb.e ] ; 2 uses
  %i.g = lshr i32 %.039.i, 1
  %i.h = add nuw i32 %.039.i, 8
  %i.i = add nuw i32 %i.h, %i.g                   ; 3 uses
  %i.j = icmp ugt i32 %1, %i.i
  br i1 %i.j, label %.preheader.i, label %.thread.i, !llvm.loop !2297

.thread.i:                                        ; preds = %.preheader.i, %bb.d
  %.138.i = phi i32 [ %.sroa.speculated.i, %bb.d ], [ %i.i, %.preheader.i ] ; 5 uses
  %i.k = icmp ugt i32 %.138.i, 89478485
  br i1 %i.k, label %_ZN11hb_vector_tIN3CFF31cff2_private_dict_values_base_tINS0_8op_str_tEEELb0EE5allocEjb.exit.thread22, label %bb.f, !prof !74

bb.f:                                             ; preds = %.thread.i
  %i.l = tail call noundef ptr @_ZN11hb_vector_tIN3CFF31cff2_private_dict_values_base_tINS0_8op_str_tEEELb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %.138.i) ; 2 uses
  %.not21.i = icmp ne i32 %.138.i, 0
  %.not22.i = icmp eq ptr %i.l, null
end_hunk_0
