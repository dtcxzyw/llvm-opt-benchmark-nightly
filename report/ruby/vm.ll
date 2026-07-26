inline.NumInlined: 3274
inline.NumDeleted: 574
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 39
begin_hunk_0_@vm_exec_core:bb.a

bb.dt:                                            ; preds = %bb.ds
  %i.aju = call i64 @rb_check_to_array(i64 noundef %i.ajr) #23 ; 2 uses
  %i.ajv = icmp eq i64 %i.aju, 4
  br i1 %i.ajv, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.ajw = call i64 @rb_ary_push(i64 noundef %i.ajq, i64 noundef %i.ajr) #23
  br label %vm_concat_to_array.exit

bb.dv:                                            ; preds = %bb.dt
  %i.ajx = call i64 @rb_ary_concat(i64 noundef %i.ajq, i64 noundef %i.aju) #23
  br label %vm_concat_to_array.exit

vm_concat_to_array.exit:                          ; preds = %bb.ds, %bb.du, %bb.dv
  %.1.i2447 = phi i64 [ %i.ajq, %bb.ds ], [ %i.ajw, %bb.du ], [ %i.ajx, %bb.dv ]
  %i.ajy = load ptr, ptr %i.ajm, align 8, !tbaa !73 ; 2 uses
  %i.ajz = getelementptr i8, ptr %i.ajy, i64 -8
  store ptr %i.ajz, ptr %i.ajm, align 8, !tbaa !73
  %i.aka = getelementptr i8, ptr %i.ajy, i64 -16
  store i64 %.1.i2447, ptr %i.aka, align 8, !tbaa !11
  br label %.backedge.backedge

bb.dw:                                            ; preds = %.backedge, %bb.agp
  %i.akb = getelementptr i8, ptr %.6, i64 8
  %i.akc = load i64, ptr %i.akb, align 8, !tbaa !11 ; 2 uses
  %i.akd = getelementptr i8, ptr %.6, i64 16      ; 2 uses
  store ptr %i.akd, ptr %.02257, align 8, !tbaa !146
  %i.ake = getelementptr i8, ptr %.02257, i64 8   ; 3 uses
  %i.akf = load ptr, ptr %i.ake, align 8, !tbaa !73
  %i.akg = sub i64 0, %i.akc                      ; 2 uses
  %i.akh = getelementptr [8 x i8], ptr %i.akf, i64 %i.akg ; 2 uses
  %i.aki = getelementptr i8, ptr %i.akh, i64 -8
  %i.akj = load i64, ptr %i.aki, align 8, !tbaa !11
  %i.akk = call i64 @rb_ary_cat(i64 noundef %i.akj, ptr noundef %i.akh, i64 noundef %i.akc) #23
  %i.akl = load ptr, ptr %i.ake, align 8, !tbaa !73
  %i.akm = getelementptr [8 x i8], ptr %i.akl, i64 %i.akg ; 2 uses
  store ptr %i.akm, ptr %i.ake, align 8, !tbaa !73
  %i.akn = getelementptr i8, ptr %i.akm, i64 -8
  store i64 %i.akk, ptr %i.akn, align 8, !tbaa !11
  br label %.backedge.backedge

bb.dx:                                            ; preds = %.backedge, %bb.agq
  %i.ako = getelementptr i8, ptr %.6, i64 8
  %i.akp = load i64, ptr %i.ako, align 8, !tbaa !11 ; 2 uses
  %i.akq = getelementptr i8, ptr %.02257, i64 8   ; 2 uses
  %i.akr = load ptr, ptr %i.akq, align 8, !tbaa !73
  %i.aks = getelementptr i8, ptr %i.akr, i64 -8
  %i.akt = load i64, ptr %i.aks, align 8, !tbaa !11 ; 3 uses
  %i.aku = getelementptr i8, ptr %.6, i64 16      ; 2 uses
  store ptr %i.aku, ptr %.02257, align 8, !tbaa !146
  %i.akv = icmp eq i64 %i.akt, 4
  br i1 %i.akv, label %bb.dy, label %bb.eb

bb.dy:                                            ; preds = %bb.dx
  %i.akw = and i64 %i.akp, -5
  %.not9.i = icmp eq i64 %i.akw, 0
  br i1 %.not9.i, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.akx = call i64 @rb_ary_new() #23
  br label %vm_splat_array.exit

bb.ea:                                            ; preds = %bb.dy
  %i.aky = load i64, ptr @rb_cArray_empty_frozen, align 8, !tbaa !11
  br label %vm_splat_array.exit

bb.eb:                                            ; preds = %bb.dx
  %i.akz = call i64 @rb_check_to_array(i64 noundef %i.akt) #23 ; 3 uses
  %i.ala = icmp eq i64 %i.akz, 4
  br i1 %i.ala, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.alb = call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 1, i64 noundef %i.akt) #23
  br label %vm_splat_array.exit

bb.ed:                                            ; preds = %bb.eb
  %i.alc = and i64 %i.akp, -5
  %.not.i2448 = icmp eq i64 %i.alc, 0
  br i1 %.not.i2448, label %vm_splat_array.exit, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.ald = call i64 @rb_ary_dup(i64 noundef %i.akz) #23
  br label %vm_splat_array.exit

vm_splat_array.exit:                              ; preds = %bb.dz, %bb.ea, %bb.ec, %bb.ed, %bb.ee
  %.1.i2449 = phi i64 [ %i.aky, %bb.ea ], [ %i.akx, %bb.dz ], [ %i.alb, %bb.ec ], [ %i.ald, %bb.ee ], [ %i.akz, %bb.ed ]
  %i.ale = load ptr, ptr %i.akq, align 8, !tbaa !73
  %i.alf = getelementptr i8, ptr %i.ale, i64 -8
  store i64 %.1.i2449, ptr %i.alf, align 8, !tbaa !11
  br label %.backedge.backedge

bb.ef:                                            ; preds = %.backedge, %bb.agr
  %i.alg = getelementptr i8, ptr %.02257, i64 8   ; 2 uses
  %i.alh = load ptr, ptr %i.alg, align 8, !tbaa !73 ; 3 uses
  %i.ali = getelementptr i8, ptr %i.alh, i64 -8
  %i.alj = getelementptr i8, ptr %i.alh, i64 -16
  %i.alk = load i64, ptr %i.alj, align 8, !tbaa !11 ; 2 uses
  %i.all = load i64, ptr %i.ali, align 8, !tbaa !11
  %i.alm = getelementptr i8, ptr %.6, i64 8       ; 2 uses
  store ptr %i.alm, ptr %.02257, align 8, !tbaa !146
  %i.aln = icmp eq i64 %i.alk, 4
  br i1 %i.aln, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.alo = call i64 @rb_to_hash_type(i64 noundef %i.alk) #23
  %.pre3203 = load ptr, ptr %i.alg, align 8, !tbaa !73
  br label %bb.eh

bb.eh:                                            ; preds = %bb.ef, %bb.eg
  %i.alp = phi ptr [ %.pre3203, %bb.eg ], [ %i.alh, %bb.ef ] ; 2 uses
  %.02261 = phi i64 [ %i.alo, %bb.eg ], [ 4, %bb.ef ]
  %i.alq = getelementptr i8, ptr %i.alp, i64 -8
  store i64 %i.all, ptr %i.alq, align 8, !tbaa !11
  %i.alr = getelementptr i8, ptr %i.alp, i64 -16
  store i64 %.02261, ptr %i.alr, align 8, !tbaa !11
  br label %.backedge.backedge

bb.ei:                                            ; preds = %.backedge, %bb.ags
  %i.als = getelementptr i8, ptr %.6, i64 8
  %i.alt = load i64, ptr %i.als, align 8, !tbaa !11 ; 5 uses
  %i.alu = getelementptr i8, ptr %.6, i64 16      ; 2 uses
  store ptr %i.alu, ptr %.02257, align 8, !tbaa !146
  %.not2339 = icmp eq i64 %i.alt, 0
  br i1 %.not2339, label %.split2274, label %.split

.split:                                           ; preds = %bb.ei
  %i.alv = lshr i64 %i.alt, 1
  %i.alw = call i64 @rb_hash_new_with_size(i64 noundef %i.alv) #23 ; 2 uses
  %i.alx = getelementptr i8, ptr %.02257, i64 8
  %i.aly = load ptr, ptr %i.alx, align 8, !tbaa !73
  %i.alz = sub i64 0, %i.alt
  %i.ama = getelementptr [8 x i8], ptr %i.aly, i64 %i.alz
  call void @rb_hash_bulk_insert(i64 noundef %i.alt, ptr noundef %i.ama, i64 noundef %i.alw) #23
  %i.amb = sub i64 1, %i.alt
  br label %bb.ej

.split2274:                                       ; preds = %bb.ei
  %i.amc = call i64 @rb_hash_new() #23
  br label %bb.ej

bb.ej:                                            ; preds = %.split2274, %.split
  %phi.call = phi i64 [ %i.amb, %.split ], [ 1, %.split2274 ]
  %.02262 = phi i64 [ %i.alw, %.split ], [ %i.amc, %.split2274 ]
  %i.amd = getelementptr i8, ptr %.02257, i64 8   ; 2 uses
  %i.ame = load ptr, ptr %i.amd, align 8, !tbaa !73
  %i.amf = getelementptr [8 x i8], ptr %i.ame, i64 %phi.call ; 2 uses
  store ptr %i.amf, ptr %i.amd, align 8, !tbaa !73
  %i.amg = getelementptr i8, ptr %i.amf, i64 -8
  store i64 %.02262, ptr %i.amg, align 8, !tbaa !11
  br label %.backedge.backedge

bb.ek:                                            ; preds = %.backedge, %bb.agt
  %i.amh = getelementptr i8, ptr %.6, i64 8
  %i.ami = load i64, ptr %i.amh, align 8, !tbaa !11
  %i.amj = getelementptr i8, ptr %.02257, i64 8   ; 3 uses
  %i.amk = load ptr, ptr %i.amj, align 8, !tbaa !73 ; 2 uses
  %i.aml = getelementptr i8, ptr %i.amk, i64 -8
  %i.amm = getelementptr i8, ptr %i.amk, i64 -16
  %i.amn = load i64, ptr %i.amm, align 8, !tbaa !11
  %i.amo = load i64, ptr %i.aml, align 8, !tbaa !11
  %i.amp = getelementptr i8, ptr %.6, i64 16      ; 2 uses
  store ptr %i.amp, ptr %.02257, align 8, !tbaa !146
  %i.amq = trunc i64 %i.ami to i32
  %i.amr = call i64 @rb_range_new(i64 noundef %i.amn, i64 noundef %i.amo, i32 noundef %i.amq) #23
  %i.ams = load ptr, ptr %i.amj, align 8, !tbaa !73 ; 2 uses
  %i.amt = getelementptr i8, ptr %i.ams, i64 -8
  store ptr %i.amt, ptr %i.amj, align 8, !tbaa !73
  %i.amu = getelementptr i8, ptr %i.ams, i64 -16
  store i64 %i.amr, ptr %i.amu, align 8, !tbaa !11
  br label %.backedge.backedge

bb.el:                                            ; preds = %.backedge, %bb.agu
  %i.amv = getelementptr i8, ptr %.02257, i64 8   ; 2 uses
  %i.amw = getelementptr i8, ptr %.6, i64 8       ; 2 uses
  store ptr %i.amw, ptr %.02257, align 8, !tbaa !146
  %i.amx = load ptr, ptr %i.amv, align 8, !tbaa !73
  %i.amy = getelementptr i8, ptr %i.amx, i64 -8
  store ptr %i.amy, ptr %i.amv, align 8, !tbaa !73
  br label %.backedge.backedge

bb.em:                                            ; preds = %.backedge, %bb.agv
  %i.amz = getelementptr i8, ptr %.02257, i64 8   ; 2 uses
  %i.ana = load ptr, ptr %i.amz, align 8, !tbaa !73 ; 3 uses
  %i.anb = getelementptr i8, ptr %i.ana, i64 -8
  %i.anc = load i64, ptr %i.anb, align 8, !tbaa !11
  %i.and = getelementptr i8, ptr %.6, i64 8       ; 2 uses
  store ptr %i.and, ptr %.02257, align 8, !tbaa !146
  %i.ane = getelementptr i8, ptr %i.ana, i64 8
  store ptr %i.ane, ptr %i.amz, align 8, !tbaa !73
  store i64 %i.anc, ptr %i.ana, align 8, !tbaa !11
  br label %.backedge.backedge

bb.en:                                            ; preds = %.backedge, %bb.agw
  %i.anf = getelementptr i8, ptr %.6, i64 8
  %i.ang = load i64, ptr %i.anf, align 8, !tbaa !11 ; 6 uses
  %i.anh = getelementptr i8, ptr %.6, i64 16      ; 2 uses
  store ptr %i.anh, ptr %.02257, align 8, !tbaa !146
  %i.ani = getelementptr i8, ptr %.02257, i64 8   ; 3 uses
  %i.anj = load ptr, ptr %i.ani, align 8, !tbaa !73 ; 3 uses
  %i.ank = sub nsw i64 0, %i.ang
  %i.anl = getelementptr [8 x i8], ptr %i.anj, i64 %i.ank
  %i.anm = icmp ugt i64 %i.ang, 2305843009213693951
  br i1 %i.anm, label %bb.eo, label %rbimpl_size_mul_or_raise.exit, !prof !177

bb.eo:                                            ; preds = %bb.en
  call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef %i.ang) #42
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %bb.en
  %.not.i2450 = icmp eq i64 %i.ang, 0
  br i1 %.not.i2450, label %ruby_nonempty_memcpy.exit, label %bb.ep

bb.ep:                                            ; preds = %rbimpl_size_mul_or_raise.exit
  %i.ann = shl nuw i64 %i.ang, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.anj, ptr noundef nonnull readonly align 1 %i.anl, i64 noundef %i.ann, i1 noundef false) #23
  %.pre3202 = load ptr, ptr %i.ani, align 8, !tbaa !73
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %rbimpl_size_mul_or_raise.exit, %bb.ep
  %i.ano = phi ptr [ %i.anj, %rbimpl_size_mul_or_raise.exit ], [ %.pre3202, %bb.ep ]
  %i.anp = getelementptr [8 x i8], ptr %i.ano, i64 %i.ang
  store ptr %i.anp, ptr %i.ani, align 8, !tbaa !73
  br label %.backedge.backedge

bb.eq:                                            ; preds = %.backedge, %bb.agx
  %i.anq = getelementptr i8, ptr %.02257, i64 8
  %i.anr = load ptr, ptr %i.anq, align 8, !tbaa !73
  %i.ans = getelementptr i8, ptr %i.anr, i64 -16  ; 2 uses
  %i.ant = getelementptr i8, ptr %.6, i64 8       ; 2 uses
  store ptr %i.ant, ptr %.02257, align 8, !tbaa !146
  %i.anu = load <2 x i64>, ptr %i.ans, align 8, !tbaa !11
  %i.anv = shufflevector <2 x i64> %i.anu, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.anv, ptr %i.ans, align 8, !tbaa !11
  br label %.backedge.backedge

bb.er:                                            ; preds = %.backedge, %bb.agy
  %i.anw = getelementptr i8, ptr %.6, i64 8
  %i.anx = load i64, ptr %i.anw, align 8, !tbaa !11 ; 3 uses
  %i.any = getelementptr i8, ptr %.6, i64 16      ; 4 uses
  store ptr %i.any, ptr %.02257, align 8, !tbaa !146
  %i.anz = getelementptr i8, ptr %.02257, i64 8
  %i.aoa = load ptr, ptr %i.anz, align 8, !tbaa !73 ; 4 uses
  %i.aob = sub i64 0, %i.anx
  %i.aoc = getelementptr [8 x i8], ptr %i.aoa, i64 %i.aob ; 3 uses
  %i.aod = lshr i64 %i.anx, 1                     ; 3 uses
  switch i64 %i.aod, label %.lr.ph3058.preheader.new [
    i64 0, label %.backedge.backedge
    i64 1, label %.lr.ph3058.epil.preheader
  ]

.backedge.backedge:                               ; preds = %.lr.ph3058.epil.preheader, %.backedge.loopexit.unr-lcssa, %bb.er, %bb.lr, %vm_method_cfunc_is.exit.thread, %bb.c, %vm_get_ep.exit, %vm_env_write.exit, %bb.p, %vm_env_write.exit2389, %bb.ab, %vm_getspecial.exit, %VM_EP_LEP.exit2414, %vm_getivar.exit, %bb.bn, %vm_getclassvariable.exit, %vm_setclassvariable.exit, %bb.bz, %bb.ca, %vm_ensure_not_refinement_module.exit2434, %bb.cd, %bb.ce, %bb.cf, %bb.cg, %bb.ch, %bb.ci, %bb.cj, %bb.ck, %bb.cl, %bb.cm, %bb.cn, %bb.co, %bb.cp, %bb.cu, %bb.cv, %bb.cw, %vm_expandarray.exit, %vm_concat_array.exit, %vm_concat_to_array.exit, %bb.dw, %vm_splat_array.exit, %bb.eh, %bb.ej, %bb.ek, %bb.el, %bb.em, %ruby_nonempty_memcpy.exit, %bb.eq, %bb.es, %bb.et, %bb.eu, %bb.ev, %bb.fr, %vm_check_match.exit, %vm_check_keyword.exit, %rb_type.exit, %vm_push_frame.exit, %bb.ho, %bb.hp, %.thread2842, %.thread2844, %bb.ka, %bb.kb, %.thread2856, %.thread2858, %bb.lt, %bb.lw, %bb.lz, %bb.mc, %bb.mm, %bb.mp, %vm_opt_duparray_include_p.exit, %vm_opt_newarray_hash.exit, %.thread2870, %.thread2872, %bb.ov, %bb.ow, %.thread2884, %.thread2886, %bb.pz, %rb_vm_check_ints.exit, %bb.qg, %bb.qk, %bb.qo, %vm_once_dispatch.exit, %vm_case_dispatch.exit.thread, %vm_opt_plus.exit.thread2893, %vm_opt_minus.exit.thread2898, %vm_opt_mult.exit.thread2903, %bb.vm, %vm_opt_mod.exit.thread2912, %opt_equality.exit, %vm_opt_neq.exit, %vm_opt_lt.exit, %vm_opt_le.exit, %vm_opt_gt.exit, %vm_opt_ge.exit, %bb.aar, %bb.aat, %bb.aaw, %vm_opt_aref.exit.thread2927, %bb.abw, %bb.abz, %bb.acc, %bb.acf, %vm_opt_succ.exit.thread2932, %vm_opt_not.exit, %bb.adl, %bb.adm, %vm_invoke_builtin_delegate.exit, %bb.adu, %bb.adv, %.lr.ph.i2774, %vm_env_write.exit2783, %vm_env_write.exit2791, %bb.aeb, %bb.aec
  %.02257.be = phi ptr [ %.02257, %bb.c ], [ %.02257, %vm_get_ep.exit ], [ %.02257, %vm_env_write.exit ], [ %.02257, %bb.p ], [ %.02257, %vm_env_write.exit2389 ], [ %.02257, %bb.ab ], [ %.02257, %vm_getspecial.exit ], [ %.02257, %VM_EP_LEP.exit2414 ], [ %.02257, %vm_getivar.exit ], [ %.02257, %bb.bn ], [ %.02257, %vm_getclassvariable.exit ], [ %.02257, %vm_setclassvariable.exit ], [ %.02257, %bb.bz ], [ %.02257, %bb.ca ], [ %.02257, %vm_ensure_not_refinement_module.exit2434 ], [ %.02257, %bb.cd ], [ %.02257, %bb.ce ], [ %.02257, %bb.cf ], [ %.02257, %bb.cg ], [ %.02257, %bb.ch ], [ %.02257, %bb.ci ], [ %.02257, %bb.cj ], [ %.02257, %bb.ck ], [ %.02257, %bb.cl ], [ %.02257, %bb.cm ], [ %.02257, %bb.cn ], [ %.02257, %bb.co ], [ %.02257, %bb.cp ], [ %.02257, %bb.cu ], [ %.02257, %bb.cv ], [ %.02257, %bb.cw ], [ %.02257, %vm_expandarray.exit ], [ %.02257, %vm_concat_array.exit ], [ %.02257, %vm_concat_to_array.exit ], [ %.02257, %bb.dw ], [ %.02257, %vm_splat_array.exit ], [ %.02257, %bb.eh ], [ %.02257, %bb.ej ], [ %.02257, %bb.ek ], [ %.02257, %bb.el ], [ %.02257, %bb.em ], [ %.02257, %ruby_nonempty_memcpy.exit ], [ %.02257, %bb.eq ], [ %.02257, %bb.aec ], [ %.02257, %bb.es ], [ %.02257, %bb.et ], [ %.02257, %bb.eu ], [ %.02257, %bb.ev ], [ %.02257, %bb.fr ], [ %.02257, %vm_check_match.exit ], [ %.02257, %vm_check_keyword.exit ], [ %.02257, %rb_type.exit ], [ %i.bbb, %vm_push_frame.exit ], [ %.02257, %bb.ho ], [ %.02257, %bb.hp ], [ %i.bgk, %.thread2842 ], [ %.02257, %.thread2844 ], [ %i.bkw, %bb.ka ], [ %.02257, %bb.kb ], [ %i.bpd, %.thread2856 ], [ %.02257, %.thread2858 ], [ %.02257, %bb.lr ], [ %.02257, %bb.lt ], [ %.02257, %bb.lw ], [ %.02257, %bb.lz ], [ %.02257, %bb.mc ], [ %.02257, %bb.mm ], [ %.02257, %bb.mp ], [ %.02257, %vm_opt_duparray_include_p.exit ], [ %.02257, %vm_opt_newarray_hash.exit ], [ %i.cbo, %.thread2870 ], [ %.02257, %.thread2872 ], [ %i.cel, %bb.ov ], [ %.02257, %bb.ow ], [ %i.cgv, %.thread2884 ], [ %.02257, %.thread2886 ], [ %i.ciu, %bb.pz ], [ %.02257, %rb_vm_check_ints.exit ], [ %.02257, %bb.qg ], [ %.02257, %bb.qk ], [ %.02257, %bb.qo ], [ %.02257, %vm_once_dispatch.exit ], [ %.02257, %vm_case_dispatch.exit.thread ], [ %.02257, %vm_opt_plus.exit.thread2893 ], [ %.02257, %vm_opt_minus.exit.thread2898 ], [ %.02257, %vm_opt_mult.exit.thread2903 ], [ %.02257, %bb.vm ], [ %.02257, %vm_opt_mod.exit.thread2912 ], [ %.02257, %opt_equality.exit ], [ %.02257, %vm_opt_neq.exit ], [ %.02257, %vm_opt_lt.exit ], [ %.02257, %vm_opt_le.exit ], [ %.02257, %vm_opt_gt.exit ], [ %.02257, %vm_opt_ge.exit ], [ %.02257, %bb.aar ], [ %.02257, %bb.aat ], [ %.02257, %bb.aaw ], [ %.02257, %vm_opt_aref.exit.thread2927 ], [ %.02257, %bb.abw ], [ %.02257, %bb.abz ], [ %.02257, %bb.acc ], [ %.02257, %bb.acf ], [ %.02257, %vm_opt_succ.exit.thread2932 ], [ %.02257, %vm_opt_not.exit ], [ %.02257, %bb.adl ], [ %.02257, %bb.adm ], [ %.02257, %vm_invoke_builtin_delegate.exit ], [ %i.ekl, %bb.adu ], [ %.02257, %bb.adv ], [ %.02257, %.lr.ph.i2774 ], [ %.02257, %vm_env_write.exit2783 ], [ %.02257, %vm_env_write.exit2791 ], [ %.02257, %bb.aeb ], [ %.02257, %vm_method_cfunc_is.exit.thread ], [ %.02257, %bb.er ], [ %.02257, %.backedge.loopexit.unr-lcssa ], [ %.02257, %.lr.ph3058.epil.preheader ]
  %.6.be = phi ptr [ %i.as, %bb.c ], [ %i.ax, %vm_get_ep.exit ], [ %i.cz, %vm_env_write.exit ], [ %i.fa, %bb.p ], [ %i.id, %vm_env_write.exit2389 ], [ %i.kg, %bb.ab ], [ %i.nb, %vm_getspecial.exit ], [ %i.ou, %VM_EP_LEP.exit2414 ], [ %i.pj, %vm_getivar.exit ], [ %i.rt, %bb.bn ], [ %i.sd, %vm_getclassvariable.exit ], [ %i.tk, %vm_setclassvariable.exit ], [ %i.ut, %bb.bz ], [ %i.vg, %bb.ca ], [ %i.vu, %vm_ensure_not_refinement_module.exit2434 ], [ %i.wq, %bb.cd ], [ %i.xb, %bb.ce ], [ %i.xf, %bb.cf ], [ %i.xj, %bb.cg ], [ %i.xr, %bb.ch ], [ %i.xx, %bb.ci ], [ %i.yh, %bb.cj ], [ %i.yo, %bb.ck ], [ %i.yv, %bb.cl ], [ %i.zl, %bb.cm ], [ %i.zu, %bb.cn ], [ %i.aal, %bb.co ], [ %i.aar, %bb.cp ], [ %i.abh, %bb.cu ], [ %i.aby, %bb.cv ], [ %i.acf, %bb.cw ], [ %i.acs, %vm_expandarray.exit ], [ %i.aiz, %vm_concat_array.exit ], [ %i.ajs, %vm_concat_to_array.exit ], [ %i.akd, %bb.dw ], [ %i.aku, %vm_splat_array.exit ], [ %i.alm, %bb.eh ], [ %i.alu, %bb.ej ], [ %i.amp, %bb.ek ], [ %i.amw, %bb.el ], [ %i.and, %bb.em ], [ %i.anh, %ruby_nonempty_memcpy.exit ], [ %i.ant, %bb.eq ], [ %i.enj, %bb.aec ], [ %i.aou, %bb.es ], [ %i.api, %bb.et ], [ %i.apo, %bb.eu ], [ %i.aqd, %bb.ev ], [ %i.aqo, %bb.fr ], [ %i.asy, %vm_check_match.exit ], [ %i.auc, %vm_check_keyword.exit ], [ %i.avb, %rb_type.exit ], [ %i.bbt, %vm_push_frame.exit ], [ %i.bby, %bb.ho ], [ %i.bch, %bb.hp ], [ %i.bgl, %.thread2842 ], [ %i.bco, %.thread2844 ], [ %i.bkx, %bb.ka ], [ %i.bgu, %bb.kb ], [ %i.bpe, %.thread2856 ], [ %i.bld, %.thread2858 ], [ %i.bpm, %bb.lr ], [ %i.brp, %bb.lt ], [ %i.bry, %bb.lw ], [ %i.bsn, %bb.lz ], [ %i.btc, %bb.mc ], [ %i.btw, %bb.mm ], [ %i.bvf, %bb.mp ], [ %i.bvy, %vm_opt_duparray_include_p.exit ], [ %i.bwr, %vm_opt_newarray_hash.exit ], [ %i.cbp, %.thread2870 ], [ %i.bzj, %.thread2872 ], [ %i.cem, %bb.ov ], [ %i.cby, %bb.ow ], [ %i.cgw, %.thread2884 ], [ %i.ces, %.thread2886 ], [ %i.ciw, %bb.pz ], [ %i.cjq, %rb_vm_check_ints.exit ], [ %.2, %bb.qg ], [ %.3, %bb.qk ], [ %.4, %bb.qo ], [ %i.clt, %vm_once_dispatch.exit ], [ %.5, %vm_case_dispatch.exit.thread ], [ %i.cpj, %vm_opt_plus.exit.thread2893 ], [ %i.ctx, %vm_opt_minus.exit.thread2898 ], [ %i.cxr, %vm_opt_mult.exit.thread2903 ], [ %i.dbo, %bb.vm ], [ %i.ddv, %vm_opt_mod.exit.thread2912 ], [ %i.dhw, %opt_equality.exit ], [ %i.djq, %vm_opt_neq.exit ], [ %i.dlz, %vm_opt_lt.exit ], [ %i.doo, %vm_opt_le.exit ], [ %i.dre, %vm_opt_gt.exit ], [ %i.dtt, %vm_opt_ge.exit ], [ %i.dwj, %bb.aar ], [ %i.dxw, %bb.aat ], [ %i.dyh, %bb.aaw ], [ %i.dyu, %vm_opt_aref.exit.thread2927 ], [ %i.eax, %bb.abw ], [ %i.eca, %bb.abz ], [ %i.ecj, %bb.acc ], [ %i.ecs, %bb.acf ], [ %i.eda, %vm_opt_succ.exit.thread2932 ], [ %i.eee, %vm_opt_not.exit ], [ %i.efp, %bb.adl ], [ %i.ehb, %bb.adm ], [ %i.ehx, %vm_invoke_builtin_delegate.exit ], [ %i.ekn, %bb.adu ], [ %i.ekt, %bb.adv ], [ %i.ele, %.lr.ph.i2774 ], [ %i.elx, %vm_env_write.exit2783 ], [ %i.emp, %vm_env_write.exit2791 ], [ %i.enf, %bb.aeb ], [ %i.brh, %vm_method_cfunc_is.exit.thread ], [ %i.any, %bb.er ], [ %i.any, %.backedge.loopexit.unr-lcssa ], [ %i.any, %.lr.ph3058.epil.preheader ]
  br label %.backedge

.lr.ph3058.preheader.new:                         ; preds = %bb.er
  %unroll_iter = and i64 %i.aod, 9223372036854775806
  br label %.lr.ph3058

.lr.ph3058:                                       ; preds = %.lr.ph3058, %.lr.ph3058.preheader.new
  %.022633057 = phi i64 [ 0, %.lr.ph3058.preheader.new ], [ %i.aor, %.lr.ph3058 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph3058.preheader.new ], [ %niter.next.1, %.lr.ph3058 ]
  %i.aoe = getelementptr [8 x i8], ptr %i.aoc, i64 %.022633057 ; 2 uses
  %i.aof = load i64, ptr %i.aoe, align 8, !tbaa !11
  %i.aog = sub nsw i64 0, %.022633057
  %i.aoh = getelementptr [8 x i8], ptr %i.aoa, i64 %i.aog
  %i.aoi = getelementptr i8, ptr %i.aoh, i64 -8   ; 2 uses
  %i.aoj = load i64, ptr %i.aoi, align 8, !tbaa !11
  store i64 %i.aoj, ptr %i.aoe, align 8, !tbaa !11
  store i64 %i.aof, ptr %i.aoi, align 8, !tbaa !11
  %i.aok = getelementptr [8 x i8], ptr %i.aoc, i64 %.022633057
  %i.aol = getelementptr i8, ptr %i.aok, i64 8    ; 2 uses
  %i.aom = load i64, ptr %i.aol, align 8, !tbaa !11
  %i.aon = xor i64 %.022633057, -1
  %i.aoo = getelementptr [8 x i8], ptr %i.aoa, i64 %i.aon
  %i.aop = getelementptr i8, ptr %i.aoo, i64 -8   ; 2 uses
  %i.aoq = load i64, ptr %i.aop, align 8, !tbaa !11
  store i64 %i.aoq, ptr %i.aol, align 8, !tbaa !11
  store i64 %i.aom, ptr %i.aop, align 8, !tbaa !11
  %i.aor = add nuw nsw i64 %.022633057, 2         ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.backedge.loopexit.unr-lcssa, label %.lr.ph3058, !llvm.loop !349

bb.es:                                            ; preds = %.backedge, %bb.agz
  %i.aos = getelementptr i8, ptr %.6, i64 8
  %i.aot = load i64, ptr %i.aos, align 8, !tbaa !11
  %i.aou = getelementptr i8, ptr %.6, i64 16      ; 2 uses
  store ptr %i.aou, ptr %.02257, align 8, !tbaa !146
  %i.aov = getelementptr i8, ptr %.02257, i64 8   ; 2 uses
  %i.aow = load ptr, ptr %i.aov, align 8, !tbaa !73 ; 3 uses
  %i.aox = sub i64 0, %i.aot
  %i.aoy = getelementptr [8 x i8], ptr %i.aow, i64 %i.aox
  %i.aoz = getelementptr i8, ptr %i.aoy, i64 -8
  %i.apa = load i64, ptr %i.aoz, align 8, !tbaa !11
  %i.apb = getelementptr i8, ptr %i.aow, i64 8
  store ptr %i.apb, ptr %i.aov, align 8, !tbaa !73
  store i64 %i.apa, ptr %i.aow, align 8, !tbaa !11
  br label %.backedge.backedge

bb.et:                                            ; preds = %.backedge, %bb.aha
  %i.apc = getelementptr i8, ptr %.6, i64 8
  %i.apd = load i64, ptr %i.apc, align 8, !tbaa !11
  %i.ape = getelementptr i8, ptr %.02257, i64 8
  %i.apf = load ptr, ptr %i.ape, align 8, !tbaa !73 ; 2 uses
  %i.apg = getelementptr i8, ptr %i.apf, i64 -8   ; 2 uses
  %i.aph = load i64, ptr %i.apg, align 8, !tbaa !11 ; 2 uses
  %i.api = getelementptr i8, ptr %.6, i64 16      ; 2 uses
  store ptr %i.api, ptr %.02257, align 8, !tbaa !146
  %i.apj = sub i64 0, %i.apd
  %i.apk = getelementptr [8 x i8], ptr %i.apf, i64 %i.apj
  %i.apl = getelementptr i8, ptr %i.apk, i64 -8
  store i64 %i.aph, ptr %i.apl, align 8, !tbaa !11
  store i64 %i.aph, ptr %i.apg, align 8, !tbaa !11
  br label %.backedge.backedge

bb.eu:                                            ; preds = %.backedge, %bb.ahb
  %i.apm = getelementptr i8, ptr %.6, i64 8
  %i.apn = load i64, ptr %i.apm, align 8, !tbaa !11
  %i.apo = getelementptr i8, ptr %.6, i64 16      ; 2 uses
  store ptr %i.apo, ptr %.02257, align 8, !tbaa !146
  %i.app = sub i64 0, %i.apn
  %i.apq = getelementptr i8, ptr %.02257, i64 8   ; 2 uses
  %i.apr = load ptr, ptr %i.apq, align 8, !tbaa !73
  %i.aps = getelementptr [8 x i8], ptr %i.apr, i64 %i.app
  store ptr %i.aps, ptr %i.apq, align 8, !tbaa !73
  br label %.backedge.backedge

bb.ev:                                            ; preds = %.backedge, %bb.ahc
  %i.apt = getelementptr i8, ptr %.6, i64 8
  %i.apu = load i64, ptr %i.apt, align 8, !tbaa !11
  %i.apv = getelementptr i8, ptr %.6, i64 16
  %i.apw = load i64, ptr %i.apv, align 8, !tbaa !11
  %i.apx = getelementptr i8, ptr %.6, i64 24
  %i.apy = load i64, ptr %i.apx, align 8, !tbaa !11
  %i.apz = getelementptr i8, ptr %.02257, i64 8   ; 2 uses
  %i.aqa = load ptr, ptr %i.apz, align 8, !tbaa !73
  %i.aqb = getelementptr i8, ptr %i.aqa, i64 -8
  %i.aqc = load i64, ptr %i.aqb, align 8, !tbaa !11
  %i.aqd = getelementptr i8, ptr %.6, i64 32      ; 2 uses
  store ptr %i.aqd, ptr %.02257, align 8, !tbaa !146
  %i.aqe = call fastcc zeroext i1 @vm_defined(ptr noundef %0, ptr noundef nonnull %.02257, i64 noundef %i.apu, i64 noundef %i.apw, i64 noundef %i.aqc)
  %spec.select = select i1 %i.aqe, i64 %i.apy, i64 4
  %i.aqf = load ptr, ptr %i.apz, align 8, !tbaa !73
  %i.aqg = getelementptr i8, ptr %i.aqf, i64 -8
  store i64 %spec.select, ptr %i.aqg, align 8, !tbaa !11
  br label %.backedge.backedge

bb.ew:                                            ; preds = %.backedge, %bb.ahd, %bb.aef
  %i.aqh = getelementptr i8, ptr %.6, i64 8
  %i.aqi = load i64, ptr %i.aqh, align 8, !tbaa !11 ; 4 uses
  %i.aqj = getelementptr i8, ptr %.6, i64 16
  %i.aqk = load i64, ptr %i.aqj, align 8, !tbaa !11
  %i.aql = inttoptr i64 %i.aqk to ptr             ; 3 uses
  %i.aqm = getelementptr i8, ptr %.6, i64 24
  %i.aqn = load i64, ptr %i.aqm, align 8, !tbaa !11 ; 2 uses
  %i.aqo = getelementptr i8, ptr %.6, i64 32      ; 2 uses
  store ptr %i.aqo, ptr %.02257, align 8, !tbaa !146
  %i.aqp = getelementptr i8, ptr %.02257, i64 24
  %i.aqq = load i64, ptr %i.aqp, align 8, !tbaa !74 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.aqr = icmp eq i64 %i.aqq, 0
  %i.aqs = and i64 %i.aqq, 7
  %i.aqt = icmp ne i64 %i.aqs, 0
  %i.aqu = or i1 %i.aqr, %i.aqt
  br i1 %i.aqu, label %.sink.split, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.aqv = inttoptr i64 %i.aqq to ptr             ; 5 uses
  %i.aqw = load i64, ptr %i.aqv, align 8, !tbaa !77 ; 2 uses
  %i.aqx = trunc i64 %i.aqw to i32
  %i.aqy = and i32 %i.aqx, 31
  switch i32 %i.aqy, label %bb.fd [
    i32 1, label %.thread2826
    i32 2, label %bb.ey
    i32 3, label %bb.ey
  ]

bb.ey:                                            ; preds = %bb.ex, %bb.ex
  %i.aqz = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !90
  %.not.i2452 = icmp eq ptr %i.aqz, null
  br i1 %.not.i2452, label %rb_ractor_main_p.exit2454, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i2461

rb_ractor_main_p.exit2454:                        ; preds = %bb.ey
  %i.ara = call zeroext i1 @rb_ractor_main_p_() #23
  br i1 %i.ara, label %rb_ractor_main_p.exit2454.RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i2461_crit_edge, label %bb.ez, !prof !91

rb_ractor_main_p.exit2454.RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i2461_crit_edge: ; preds = %rb_ractor_main_p.exit2454
  %.pre3200 = load i64, ptr %i.aqv, align 8, !tbaa !77
  br label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i2461

bb.ez:                                            ; preds = %rb_ractor_main_p.exit2454
  %i.arb = call i64 @rb_ivar_defined(i64 noundef %i.aqq, i64 noundef %i.aqi) #23
  %.not49.i = icmp eq i64 %i.arb, 0
  br i1 %.not49.i, label %.sink.split, label %vm_getivar.exit2349.thread2832

vm_getivar.exit2349.thread2832:                   ; preds = %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
end_hunk_0
