inline.NumInlined: 3274
inline.NumDeleted: 574
begin_hunk_0_@vm_caller_setup_fwd_args:bb.a
  br label %ruby_nonempty_memcpy.exit.i

ruby_nonempty_memcpy.exit.i:                      ; preds = %bb.s, %rbimpl_size_mul_or_raise.exit.i
  %i.cx = phi i64 [ %.pre.i, %bb.s ], [ %i.ci, %rbimpl_size_mul_or_raise.exit.i ] ; 2 uses
  %i.cy = and i64 %i.cx, 8192
  %.not.i41.i = icmp eq i64 %i.cy, 0
  br i1 %.not.i41.i, label %bb.u, label %bb.t
end_hunk_0
begin_hunk_1_@vm_exec_core:bb.a

bb.cs:                                            ; preds = %bb.cq
  %i.abn = add i64 %i.abg, 24
  %i.abo = inttoptr i64 %i.abn to ptr             ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.abo) ]
  %i.abp = getelementptr i8, ptr %i.abo, i64 16
  %i.abq = load i64, ptr %i.abp, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit
end_hunk_1
begin_hunk_2_@vm_exec_core:bb.a
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %rbimpl_size_mul_or_raise.exit, %bb.ep
  %i.anj = phi ptr [ %.pre3202, %bb.ep ], [ %i.ane, %rbimpl_size_mul_or_raise.exit ]
  %i.ank = getelementptr [8 x i8], ptr %i.anj, i64 %i.anb
  store ptr %i.ank, ptr %i.and, align 8, !tbaa !73
  br label %.backedge.backedge
end_hunk_2
begin_hunk_3_@Init_eval_method:rb_method_entry.exit
  %i.ab = tail call i64 @rb_singleton_class(i64 noundef %i.aa) #24
  tail call void @rb_define_private_method(i64 noundef %i.ab, ptr noundef nonnull @.str.22, ptr noundef nonnull @top_ruby2_keywords, i32 noundef -1) #24
  %i.ac = load i64, ptr @rb_eException, align 8, !tbaa !11
  %i.ad = tail call fastcc nonnull ptr @search_method0(i64 noundef %i.ac, i64 noundef 2913, ptr noundef null, i1 noundef zeroext false) ; 2 uses
  %i.ae = load i64, ptr @rb_eException, align 8, !tbaa !11 ; 2 uses
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !217
  %i.ag = trunc i64 %i.af to i32
end_hunk_3
begin_hunk_4_@Init_eval_method:rb_method_entry.exit
  %i.ai = and i32 %i.ah, 3
  %i.aj = tail call fastcc ptr @method_entry_set(i64 noundef %i.ae, i64 noundef 2913, ptr noundef nonnull readonly %i.ad, i32 noundef %i.ai, i64 noundef %i.ae) ; 0 uses
  %i.ak = load i64, ptr @rb_eException, align 8, !tbaa !11
  %i.al = tail call fastcc nonnull ptr @search_method0(i64 noundef %i.ak, i64 noundef 157, ptr noundef null, i1 noundef zeroext false) ; 2 uses
  %i.am = load i64, ptr @rb_eException, align 8, !tbaa !11 ; 2 uses
  %i.an = load i64, ptr %i.al, align 8, !tbaa !217
  %i.ao = trunc i64 %i.an to i32
end_hunk_4
begin_hunk_5_@Init_eval_method:rb_method_entry.exit
  %i.aq = and i32 %i.ap, 3
  %i.ar = tail call fastcc ptr @method_entry_set(i64 noundef %i.am, i64 noundef 157, ptr noundef nonnull readonly %i.al, i32 noundef %i.aq, i64 noundef %i.am) ; 0 uses
  %i.as = load i64, ptr @rb_eException, align 8, !tbaa !11
  %i.at = tail call fastcc nonnull ptr @search_method0(i64 noundef %i.as, i64 noundef 158, ptr noundef null, i1 noundef zeroext false) ; 2 uses
  %i.au = load i64, ptr @rb_eException, align 8, !tbaa !11 ; 2 uses
  %i.av = load i64, ptr %i.at, align 8, !tbaa !217
  %i.aw = trunc i64 %i.av to i32
end_hunk_5
begin_hunk_6_@rb_binding_add_dynavars:bb.a
  br i1 %i.ah, label %rbimpl_size_mul_or_raise.exit, label %rbimpl_size_mul_or_raise.exit.thread

rbimpl_size_mul_or_raise.exit.thread:             ; preds = %vm_block_iseq.exit
  %i.ai = call noalias nonnull ptr @rb_alloc_tmp_buffer(ptr noundef nonnull %i.b, i64 noundef %i.ag) #61 ; 3 uses
  store i32 %2, ptr %i.ai, align 8, !tbaa !7
  %5 = getelementptr i8, ptr %i.ai, i64 8
  br label %bb.i

rbimpl_size_mul_or_raise.exit:                    ; preds = %vm_block_iseq.exit
  %i.aj = alloca i8, i64 %i.ag, align 16          ; 4 uses
  store i32 %2, ptr %i.aj, align 16, !tbaa !7
  %6 = getelementptr i8, ptr %i.aj, i64 8
  %.not.i = icmp eq i32 %2, 0
  br i1 %.not.i, label %ruby_nonempty_memcpy.exit, label %bb.i

bb.i:                                             ; preds = %rbimpl_size_mul_or_raise.exit.thread, %rbimpl_size_mul_or_raise.exit
  %i.ak = phi ptr [ %5, %rbimpl_size_mul_or_raise.exit.thread ], [ %6, %rbimpl_size_mul_or_raise.exit ]
  %7 = phi ptr [ %i.ai, %rbimpl_size_mul_or_raise.exit.thread ], [ %i.aj, %rbimpl_size_mul_or_raise.exit ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ak, ptr noundef nonnull readonly align 1 %3, i64 noundef %i.af, i1 noundef false) #24
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %rbimpl_size_mul_or_raise.exit, %bb.i
  %i.al = phi ptr [ %7, %bb.i ], [ %i.aj, %rbimpl_size_mul_or_raise.exit ]
  call void @rb_node_init(ptr noundef nonnull %4, i32 noundef 0) #24
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8, !tbaa !563
end_hunk_6
begin_hunk_7_@vm_invoke_bmethod:bb.a

bb.v:                                             ; preds = %bb.t
  %i.ek = add i64 %.0.i, 24
  %i.el = inttoptr i64 %i.ek to ptr               ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.el) ]
  %i.em = getelementptr i8, ptr %i.el, i64 16
  %i.en = load i64, ptr %i.em, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit
end_hunk_7
begin_hunk_8_@vm_invoke_proc:bb.a

bb.q:                                             ; preds = %bb.o
  %i.db = add i64 %.0.i, 24
  %i.dc = inttoptr i64 %i.db to ptr               ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dc) ]
  %i.dd = getelementptr i8, ptr %i.dc, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit
end_hunk_8
begin_hunk_9_@CALLER_SETUP_ARG:bb.a

bb.g:                                             ; preds = %bb.e
  %i.z = add i64 %i.s, 24
  %i.aa = inttoptr i64 %i.z to ptr                ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  %i.ab = getelementptr i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit
end_hunk_9
begin_hunk_10_@CALLER_SETUP_ARG:bb.a

bb.x:                                             ; preds = %bb.v
  %i.bx = add i64 %i.bk, 24
  %i.by = inttoptr i64 %i.bx to ptr               ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.by) ]
  %i.bz = getelementptr i8, ptr %i.by, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit90
end_hunk_10
begin_hunk_11_@CALLER_SETUP_ARG:bb.a

bb.ag:                                            ; preds = %bb.ae
  %i.da = add i64 %i.cp, 24
  %i.db = inttoptr i64 %i.da to ptr               ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.db) ]
  %i.dc = getelementptr i8, ptr %i.db, i64 16
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit96
end_hunk_11
begin_hunk_12_@CALLER_SETUP_ARG:bb.a

bb.am:                                            ; preds = %bb.ak
  %i.dv = add i64 %i.do, 24
  %i.dw = inttoptr i64 %i.dv to ptr               ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dw) ]
  %i.dx = getelementptr i8, ptr %i.dw, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit102
end_hunk_12
begin_hunk_13_@setup_parameters_complex:bb.a

bb.q:                                             ; preds = %bb.o
  %i.bv = add i64 %i.bi, 24
  %i.bw = inttoptr i64 %i.bv to ptr               ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bw) ]
  %i.bx = getelementptr i8, ptr %i.bw, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit
end_hunk_13
begin_hunk_14_@setup_parameters_complex:bb.a

bb.af:                                            ; preds = %bb.ad
  %i.em = add i64 %.019.i, 24
  %i.en = inttoptr i64 %i.em to ptr               ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.en) ]
  %i.eo = getelementptr i8, ptr %i.en, i64 16
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit.i
end_hunk_14
begin_hunk_15_@setup_parameters_complex:bb.a

bb.an:                                            ; preds = %bb.al
  %i.fj = add i64 %.1.i, 24
  %i.fk = inttoptr i64 %i.fj to ptr               ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fk) ]
  %i.fl = getelementptr i8, ptr %i.fk, i64 16
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit31.i
end_hunk_15
begin_hunk_16_@setup_parameters_complex:bb.a

bb.bq:                                            ; preds = %bb.bo
  %i.le = add i64 %i.kt, 24
  %i.lf = inttoptr i64 %i.le to ptr               ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lf) ]
  %i.lg = getelementptr i8, ptr %i.lf, i64 16
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit502
end_hunk_16
begin_hunk_17_@setup_parameters_complex:bb.a

bb.bw:                                            ; preds = %bb.bu
  %i.ma = add i64 %.019.i507, 24
  %i.mb = inttoptr i64 %i.ma to ptr               ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.mb) ]
  %i.mc = getelementptr i8, ptr %i.mb, i64 16
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit.i509
end_hunk_17
begin_hunk_18_@setup_parameters_complex:bb.a

bb.bz:                                            ; preds = %bb.bx
  %i.ml = add i64 %.019.i507, 24
  %i.mm = inttoptr i64 %i.ml to ptr               ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.mm) ]
  %i.mn = getelementptr i8, ptr %i.mm, i64 16
  %i.mo = load i64, ptr %i.mn, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit31.i516
end_hunk_18
begin_hunk_19_@setup_parameters_complex:bb.a

bb.cy:                                            ; preds = %bb.cw
  %i.oy = add i64 %.019.i533, 24
  %i.oz = inttoptr i64 %i.oy to ptr               ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.oz) ]
  %i.pa = getelementptr i8, ptr %i.oz, i64 16
  %i.pb = load i64, ptr %i.pa, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit.i535
end_hunk_19
begin_hunk_20_@setup_parameters_complex:bb.a

bb.dg:                                            ; preds = %bb.de
  %i.pv = add i64 %.1.i538, 24
  %i.pw = inttoptr i64 %i.pv to ptr               ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.pw) ]
  %i.px = getelementptr i8, ptr %i.pw, i64 16
  %i.py = load i64, ptr %i.px, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit31.i542
end_hunk_20
begin_hunk_21_@setup_parameters_complex:bb.a

bb.ha:                                            ; preds = %bb.gy
  %i.ahu = add i64 %.5341731, 24
  %i.ahv = inttoptr i64 %i.ahu to ptr             ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ahv) ]
  %i.ahw = getelementptr i8, ptr %i.ahv, i64 16
  %i.ahx = load i64, ptr %i.ahw, align 8, !tbaa !315
  br label %RHASH_SIZE.exit
end_hunk_21
begin_hunk_22_@args_setup_kw_parameters_from_kwsplat:bb.a

bb.c:                                             ; preds = %bb.a
  %i.q = add i64 %3, 24
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.s = getelementptr i8, ptr %i.r, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !315
  br label %RHASH_SIZE.exit
end_hunk_22
begin_hunk_23_@args_setup_kw_parameters_from_kwsplat:bb.a

bb.ag:                                            ; preds = %bb.ae
  %i.bz = add i64 %3, 24
  %i.ca = inttoptr i64 %i.bz to ptr               ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ca) ]
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit
end_hunk_23
begin_hunk_24_@vm_call_cfunc_only_splat:bb.a

bb.r:                                             ; preds = %bb.p
  %i.cr = add i64 %i.t, 24
  %i.cs = inttoptr i64 %i.cr to ptr               ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cs) ]
  %i.ct = getelementptr i8, ptr %i.cs, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit
end_hunk_24
begin_hunk_25_@vm_call_cfunc_only_splat_kw:bb.a

bb.e:                                             ; preds = %bb.c
  %i.r = add i64 %i.e, 24
  %i.s = inttoptr i64 %i.r to ptr                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit
end_hunk_25
begin_hunk_26_@vm_caller_setup_keyword_hash:bb.a

bb.h:                                             ; preds = %bb.f
  %i.t = add i64 %1, 24
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.v = getelementptr i8, ptr %i.u, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit
end_hunk_26
begin_hunk_27_@vm_opt_length:bb.a

bb.t:                                             ; preds = %bb.r
  %i.ay = add i64 %0, 24
  %i.az = inttoptr i64 %i.ay to ptr               ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  %i.ba = getelementptr i8, ptr %i.az, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !315
  br label %RHASH_SIZE.exit
end_hunk_27
begin_hunk_28_@vm_call0_body:bb.a

bb.q:                                             ; preds = %bb.o
  %i.dv = add i64 %i.dj, 24
  %i.dw = inttoptr i64 %i.dv to ptr               ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dw) ]
  %i.dx = getelementptr i8, ptr %i.dw, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit.i.i
end_hunk_28
begin_hunk_29_@vm_call0_body:bb.a

bb.af:                                            ; preds = %bb.ad
  %i.hr = add i64 %i.hf, 24
  %i.hs = inttoptr i64 %i.hr to ptr               ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hs) ]
  %i.ht = getelementptr i8, ptr %i.hs, i64 16
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit.i
end_hunk_29
begin_hunk_30_@vm_call0_body:bb.a

bb.as:                                            ; preds = %bb.aq
  %i.lo = add i64 %i.lc, 24
  %i.lp = inttoptr i64 %i.lo to ptr               ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lp) ]
  %i.lq = getelementptr i8, ptr %i.lp, i64 16
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit.i259
end_hunk_30
begin_hunk_31_@vm_call0_body:bb.a

bb.cq:                                            ; preds = %bb.co
  %i.ur = add i64 %i.uf, 24
  %i.us = inttoptr i64 %i.ur to ptr               ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.us) ]
  %i.ut = getelementptr i8, ptr %i.us, i64 16
  %i.uu = load i64, ptr %i.ut, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit.i293
end_hunk_31
begin_hunk_32_@vm_call0_body:bb.a

bb.di:                                            ; preds = %bb.dg
  %i.yz = add i64 %i.yn, 24
  %i.za = inttoptr i64 %i.yz to ptr               ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.za) ]
  %i.zb = getelementptr i8, ptr %i.za, i64 16
  %i.zc = load i64, ptr %i.zb, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit.i319
end_hunk_32
begin_hunk_33_@send_internal:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.bq, ptr noundef nonnull readonly align 1 %i.bp, i64 noundef %i.bo, i1 noundef false) #24
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %rb_method_basic_definition_p.exit.thread, %bb.r, %rbimpl_size_mul_or_raise.exit, %bb.s, %RB_SYMBOL_P.exit
  %.1 = phi ptr [ %1, %RB_SYMBOL_P.exit ], [ %1, %bb.r ], [ %i.bl, %rbimpl_size_mul_or_raise.exit ], [ %i.b, %bb.s ], [ %1, %rb_method_basic_definition_p.exit.thread ]
  %i.br = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 145
  store i8 0, ptr %i.br, align 1
end_hunk_33
