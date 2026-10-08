Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel_derives-7142f47bbbb769aa.diesel_derives.eaea373b367c385f-cgu.14?download=true
inline.NumInlined: 33
inline.NumDeleted: 30
begin_hunk_0_@_RNvNtCskarGseaywcB_14diesel_derives10insertable24derive_into_single_table:bb.a
  %i.lv = invoke i32 @_RNvMsi_Csf5uYjtxkodL_11proc_macro2NtB5_4Span10mixed_site()
          to label %bb.os unwind label %bb.oq, !noalias !16

bb.os:                                            ; preds = %bb.or
  store i32 %i.lv, ptr %i.al, align 4, !noalias !16
  %i.lw = getelementptr inbounds nuw i8, ptr %i.hw, i64 1460
  %i.lx = load i32, ptr %i.lw, align 4, !noalias !16
  %i.ly = invoke i32 @_RNvMsi_Csf5uYjtxkodL_11proc_macro2NtB5_4Span10located_at(ptr nonnull align 4 %i.al, i32 %i.lx)
          to label %bb.ot unwind label %bb.oq, !noalias !16 ; 2 uses

bb.ot:                                            ; preds = %bb.os
  br i1 %.sroa.03.0, label %bb.ov, label %bb.ou

bb.ou:                                            ; preds = %bb.ot
  %i.lz = invoke i32 @_RINvNtCsa66IwKi6YE3_5quote9___private8get_spanNtCsf5uYjtxkodL_11proc_macro24SpanECsjWx9XcG30NR_12darling_core(i32 %i.ly)
          to label %bb.ow unwind label %bb.oq, !noalias !16

bb.ov:                                            ; preds = %bb.ot
  %i.ma = invoke align 8 ptr @_RNvNtCskarGseaywcB_14diesel_derives4util18inner_of_option_ty(ptr nonnull align 8 %i.kg)
          to label %bb.po unwind label %bb.oq, !noalias !16

bb.ow:                                            ; preds = %bb.ou
  %i.mb = invoke i32 @_RNvMNtNtCsa66IwKi6YE3_5quote9___private8get_spanINtB2_7GetSpanNtCsf5uYjtxkodL_11proc_macro24SpanE11___into_spanCskarGseaywcB_14diesel_derives(i32 %i.lz)
          to label %bb.ox unwind label %bb.oq, !noalias !16 ; 10 uses

bb.ox:                                            ; preds = %bb.ow
  invoke void @_RNvMCsf5uYjtxkodL_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.ai)
          to label %bb.oy unwind label %bb.oq, !noalias !16

bb.oy:                                            ; preds = %bb.ox
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private18push_ident_spanned(ptr nonnull align 8 %i.ai, i32 %i.mb, ptr nonnull @6, i64 6)
          to label %bb.pa unwind label %bb.oz, !noalias !16

bb.oz:                                            ; preds = %bb.pl, %bb.pk, %bb.pj, %bb.pi, %bb.ph, %bb.pg, %bb.pf, %bb.pe, %bb.pd, %bb.pc, %bb.pb, %bb.pa, %bb.oy
  %i.mc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro211TokenStreamECsa66IwKi6YE3_5quote(ptr nonnull align 8 %i.ai) #19
          to label %bb.op unwind label %bb.pn, !noalias !16

bb.pa:                                            ; preds = %bb.oy
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private19push_colon2_spanned(ptr nonnull align 8 %i.ai, i32 %i.mb)
          to label %bb.pb unwind label %bb.oz, !noalias !16

bb.pb:                                            ; preds = %bb.pa
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private18push_ident_spanned(ptr nonnull align 8 %i.ai, i32 %i.mb, ptr nonnull @30, i64 3)
          to label %bb.pc unwind label %bb.oz, !noalias !16

bb.pc:                                            ; preds = %bb.pb
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private19push_colon2_spanned(ptr nonnull align 8 %i.ai, i32 %i.mb)
          to label %bb.pd unwind label %bb.oz, !noalias !16

bb.pd:                                            ; preds = %bb.pc
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private18push_ident_spanned(ptr nonnull align 8 %i.ai, i32 %i.mb, ptr nonnull @31, i64 2)
          to label %bb.pe unwind label %bb.oz, !noalias !16

bb.pe:                                            ; preds = %bb.pd
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private15push_lt_spanned(ptr nonnull align 8 %i.ai, i32 %i.mb)
          to label %bb.pf unwind label %bb.oz, !noalias !16

bb.pf:                                            ; preds = %bb.pe
  invoke void @_RNvXNtCsa66IwKi6YE3_5quote9to_tokensRNtNtCshMFl0SviwmK_3syn4path4PathNtB2_8ToTokens9to_tokensCsjWx9XcG30NR_12darling_core(ptr nonnull align 8 %i.at, ptr nonnull align 8 %i.ai)
          to label %bb.pg unwind label %bb.oz, !noalias !16

bb.pg:                                            ; preds = %bb.pf
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private19push_colon2_spanned(ptr nonnull align 8 %i.ai, i32 %i.mb)
          to label %bb.ph unwind label %bb.oz, !noalias !16

bb.ph:                                            ; preds = %bb.pg
  invoke void @_RNvXsq_NtCsa66IwKi6YE3_5quote9to_tokensNtCsf5uYjtxkodL_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.ar, ptr nonnull align 8 %i.ai)
          to label %bb.pi unwind label %bb.oz, !noalias !16

bb.pi:                                            ; preds = %bb.ph
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private18push_comma_spanned(ptr nonnull align 8 %i.ai, i32 %i.mb)
          to label %bb.pj unwind label %bb.oz, !noalias !16

bb.pj:                                            ; preds = %bb.pi
  invoke void @_RNvXNtCsa66IwKi6YE3_5quote9to_tokensRNtNtCshMFl0SviwmK_3syn2ty4TypeNtB2_8ToTokens9to_tokensBD_(ptr nonnull align 8 %i.as, ptr nonnull align 8 %i.ai)
          to label %bb.pk unwind label %bb.oz, !noalias !16

bb.pk:                                            ; preds = %bb.pj
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private18push_comma_spanned(ptr nonnull align 8 %i.ai, i32 %i.mb)
          to label %bb.pl unwind label %bb.oz, !noalias !16

bb.pl:                                            ; preds = %bb.pk
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private15push_gt_spanned(ptr nonnull align 8 %i.ai, i32 %i.mb)
          to label %bb.pm unwind label %bb.oz, !noalias !16

bb.pm:                                            ; preds = %bb.qk, %bb.pl
  %.sink.i = phi ptr [ %i.aj, %bb.qk ], [ %i.ai, %bb.pl ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ei, ptr noundef nonnull align 8 dereferenceable(32) %.sink.i, i64 32, i1 false)
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.ar)
          to label %bb.qn unwind label %.loopexit154.loopexit.split-lp

bb.pn:                                            ; preds = %bb.ps, %bb.oz, %bb.op, %bb.ok
  %i.md = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.po:                                            ; preds = %bb.ov
  store ptr %i.ma, ptr %i.ak, align 8, !noalias !16
  %i.me = invoke i32 @_RINvNtCsa66IwKi6YE3_5quote9___private8get_spanNtCsf5uYjtxkodL_11proc_macro24SpanECsjWx9XcG30NR_12darling_core(i32 %i.ly)
          to label %bb.pp unwind label %bb.oq, !noalias !16

bb.pp:                                            ; preds = %bb.po
  %i.mf = invoke i32 @_RNvMNtNtCsa66IwKi6YE3_5quote9___private8get_spanINtB2_7GetSpanNtCsf5uYjtxkodL_11proc_macro24SpanE11___into_spanCskarGseaywcB_14diesel_derives(i32 %i.me)
          to label %bb.pq unwind label %bb.oq, !noalias !16 ; 16 uses

bb.pq:                                            ; preds = %bb.pp
  invoke void @_RNvMCsf5uYjtxkodL_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.aj)
          to label %bb.pr unwind label %bb.oq, !noalias !16

bb.pr:                                            ; preds = %bb.pq
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private18push_ident_spanned(ptr nonnull align 8 %i.aj, i32 %i.mf, ptr nonnull @17, i64 3)
          to label %bb.pt unwind label %bb.ps, !noalias !16

bb.ps:                                            ; preds = %bb.qk, %bb.qj, %bb.qi, %bb.qh, %bb.qg, %bb.qf, %bb.qe, %bb.qd, %bb.qc, %bb.qb, %bb.qa, %bb.pz, %bb.py, %bb.px, %bb.pw, %bb.pv, %bb.pu, %bb.pt, %bb.pr
  %i.mg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro211TokenStreamECsa66IwKi6YE3_5quote(ptr nonnull align 8 %i.aj) #19
          to label %bb.op unwind label %bb.pn, !noalias !16

bb.pt:                                            ; preds = %bb.pr
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private19push_colon2_spanned(ptr nonnull align 8 %i.aj, i32 %i.mf)
          to label %bb.pu unwind label %bb.ps, !noalias !16

bb.pu:                                            ; preds = %bb.pt
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private18push_ident_spanned(ptr nonnull align 8 %i.aj, i32 %i.mf, ptr nonnull @18, i64 6)
          to label %bb.pv unwind label %bb.ps, !noalias !16

bb.pv:                                            ; preds = %bb.pu
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private19push_colon2_spanned(ptr nonnull align 8 %i.aj, i32 %i.mf)
          to label %bb.pw unwind label %bb.ps, !noalias !16

bb.pw:                                            ; preds = %bb.pv
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private18push_ident_spanned(ptr nonnull align 8 %i.aj, i32 %i.mf, ptr nonnull @19, i64 6)
          to label %bb.px unwind label %bb.ps, !noalias !16

bb.px:                                            ; preds = %bb.pw
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private15push_lt_spanned(ptr nonnull align 8 %i.aj, i32 %i.mf)
          to label %bb.py unwind label %bb.ps, !noalias !16

bb.py:                                            ; preds = %bb.px
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private18push_ident_spanned(ptr nonnull align 8 %i.aj, i32 %i.mf, ptr nonnull @6, i64 6)
          to label %bb.pz unwind label %bb.ps, !noalias !16

bb.pz:                                            ; preds = %bb.py
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private19push_colon2_spanned(ptr nonnull align 8 %i.aj, i32 %i.mf)
          to label %bb.qa unwind label %bb.ps, !noalias !16

bb.qa:                                            ; preds = %bb.pz
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private18push_ident_spanned(ptr nonnull align 8 %i.aj, i32 %i.mf, ptr nonnull @30, i64 3)
          to label %bb.qb unwind label %bb.ps, !noalias !16

bb.qb:                                            ; preds = %bb.qa
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private19push_colon2_spanned(ptr nonnull align 8 %i.aj, i32 %i.mf)
          to label %bb.qc unwind label %bb.ps, !noalias !16

bb.qc:                                            ; preds = %bb.qb
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private18push_ident_spanned(ptr nonnull align 8 %i.aj, i32 %i.mf, ptr nonnull @31, i64 2)
          to label %bb.qd unwind label %bb.ps, !noalias !16

bb.qd:                                            ; preds = %bb.qc
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private15push_lt_spanned(ptr nonnull align 8 %i.aj, i32 %i.mf)
          to label %bb.qe unwind label %bb.ps, !noalias !16

bb.qe:                                            ; preds = %bb.qd
  invoke void @_RNvXNtCsa66IwKi6YE3_5quote9to_tokensRNtNtCshMFl0SviwmK_3syn4path4PathNtB2_8ToTokens9to_tokensCsjWx9XcG30NR_12darling_core(ptr nonnull align 8 %i.at, ptr nonnull align 8 %i.aj)
          to label %bb.qf unwind label %bb.ps, !noalias !16

bb.qf:                                            ; preds = %bb.qe
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private19push_colon2_spanned(ptr nonnull align 8 %i.aj, i32 %i.mf)
          to label %bb.qg unwind label %bb.ps, !noalias !16

bb.qg:                                            ; preds = %bb.qf
  invoke void @_RNvXsq_NtCsa66IwKi6YE3_5quote9to_tokensNtCsf5uYjtxkodL_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.ar, ptr nonnull align 8 %i.aj)
          to label %bb.qh unwind label %bb.ps, !noalias !16

bb.qh:                                            ; preds = %bb.qg
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private18push_comma_spanned(ptr nonnull align 8 %i.aj, i32 %i.mf)
          to label %bb.qi unwind label %bb.ps, !noalias !16

bb.qi:                                            ; preds = %bb.qh
  invoke void @_RNvXNtCsa66IwKi6YE3_5quote9to_tokensRNtNtCshMFl0SviwmK_3syn2ty4TypeNtB2_8ToTokens9to_tokensBD_(ptr nonnull align 8 %i.ak, ptr nonnull align 8 %i.aj)
          to label %bb.qj unwind label %bb.ps, !noalias !16

bb.qj:                                            ; preds = %bb.qi
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private18push_comma_spanned(ptr nonnull align 8 %i.aj, i32 %i.mf)
          to label %bb.qk unwind label %bb.ps, !noalias !16

bb.qk:                                            ; preds = %bb.qj
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private16push_shr_spanned(ptr nonnull align 8 %i.aj, i32 %i.mf)
          to label %bb.pm unwind label %bb.ps, !noalias !16

bb.ql:                                            ; preds = %bb.on
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskarGseaywcB_14diesel_derives5attrs13SqlIdentifierEBF_(ptr nonnull align 8 %i.ao)
          to label %bb.qn unwind label %.loopexit154.loopexit.split-lp

bb.qm:                                            ; preds = %bb.mh
  %i.mh = getelementptr inbounds nuw i8, ptr %i.kg, i64 224
  %i.mi = load i32, ptr %i.mh, align 4
  invoke void @_RINvMNtCshMFl0SviwmK_3syn5errorNtB3_5Error3newReEB5_(ptr nonnull sret([24 x i8]) align 8 %i.ec, i32 %i.mi, ptr nonnull @65, i64 68)
          to label %.sink.split unwind label %.loopexit.split-lp155

bb.qn:                                            ; preds = %bb.oi, %bb.pm, %bb.ql
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  invoke void @_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtCsf5uYjtxkodL_11proc_macro211TokenStreamNtNtCshMFl0SviwmK_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1u_(ptr nonnull sret([32 x i8]) align 8 %i.ej, ptr nonnull align 8 %i.ei)
          to label %bb.qo unwind label %.loopexit154.loopexit.split-lp

bb.qo:                                            ; preds = %bb.qn
  %i.mj = load i64, ptr %i.ej, align 8
  %i.mk = icmp eq i64 %i.mj, -2
  br i1 %i.mk, label %.invoke, label %bb.qp

bb.qp:                                            ; preds = %bb.qo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %i.ej, i64 32, i1 false)
  invoke void @_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtCsf5uYjtxkodL_11proc_macro211TokenStreamE4pushCsjWx9XcG30NR_12darling_core(ptr nonnull align 8 %i.gb, ptr nonnull align 8 %i.az)
          to label %bb.qq unwind label %.loopexit154.loopexit.split-lp

bb.qq:                                            ; preds = %bb.qp
  %i.ml = load ptr, ptr %i.gh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store ptr %i.ml, ptr %i.af, align 8, !noalias !17
  store ptr %i.kg, ptr %i.ae, align 8, !noalias !17
  %i.mm = getelementptr inbounds nuw i8, ptr %i.hw, i64 1376
  store ptr %i.mm, ptr %i.ad, align 8, !noalias !17
  invoke void @_RNvMNtCskarGseaywcB_14diesel_derives5fieldNtB2_5Field11column_name(ptr nonnull sret([32 x i8]) align 8 %i.x, ptr nonnull align 8 %i.hw)
          to label %.noexc89 unwind label %.loopexit154.loopexit.split-lp

.noexc89:                                         ; preds = %bb.qq
  invoke void @_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtCskarGseaywcB_14diesel_derives5attrs13SqlIdentifierNtNtCshMFl0SviwmK_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([32 x i8]) align 8 %i.y, ptr nonnull align 8 %i.x)
          to label %.noexc90 unwind label %.loopexit154.loopexit.split-lp

.noexc90:                                         ; preds = %.noexc89
  %i.mn = load i64, ptr %i.y, align 8, !noalias !17
  %i.mo = icmp eq i64 %i.mn, -1
  br i1 %i.mo, label %bb.qr, label %bb.qs

bb.qr:                                            ; preds = %.noexc90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.hu, i64 24, i1 false), !noalias !17
  invoke void @_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtCsf5uYjtxkodL_11proc_macro211TokenStreamNtNtCshMFl0SviwmK_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1q_EE13from_residualB1u_(ptr nonnull sret([32 x i8]) align 8 %i.eg, ptr nonnull align 8 %i.a, ptr nonnull align 8 @37)
          to label %bb.wa unwind label %.loopexit154.loopexit.split-lp

bb.qs:                                            ; preds = %.noexc90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 32, i1 false), !noalias !17
  invoke void @_RNvMNtCskarGseaywcB_14diesel_derives5attrsNtB2_13SqlIdentifier8to_ident(ptr nonnull sret([32 x i8]) align 8 %i.aa, ptr nonnull align 8 %i.z)
          to label %bb.qu unwind label %bb.qt, !noalias !17

bb.qt:                                            ; preds = %bb.qw, %bb.qu, %bb.qs
  %i.mp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskarGseaywcB_14diesel_derives5attrs13SqlIdentifierEBF_(ptr nonnull align 8 %i.z) #19
          to label %.body unwind label %bb.sq

bb.qu:                                            ; preds = %bb.qs
  invoke void @_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtCsf5uYjtxkodL_11proc_macro25IdentNtNtCshMFl0SviwmK_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1n_(ptr nonnull sret([32 x i8]) align 8 %i.ab, ptr nonnull align 8 %i.aa)
          to label %bb.qv unwind label %bb.qt, !noalias !17

bb.qv:                                            ; preds = %bb.qu
  %i.mq = load i64, ptr %i.ab, align 8, !noalias !17
  %i.mr = trunc nuw i64 %i.mq to i1
  br i1 %i.mr, label %bb.qw, label %bb.qx

bb.qw:                                            ; preds = %bb.qv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.ht, i64 24, i1 false), !noalias !17
  invoke void @_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtCsf5uYjtxkodL_11proc_macro211TokenStreamNtNtCshMFl0SviwmK_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1q_EE13from_residualB1u_(ptr nonnull sret([32 x i8]) align 8 %i.eg, ptr nonnull align 8 %i.b, ptr nonnull align 8 @37)
          to label %bb.vz unwind label %bb.qt

bb.qx:                                            ; preds = %bb.qv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.ht, i64 24, i1 false), !noalias !17
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskarGseaywcB_14diesel_derives5attrs13SqlIdentifierEBF_(ptr nonnull align 8 %i.z)
          to label %bb.ra unwind label %bb.qz, !noalias !17

bb.qy:                                            ; preds = %bb.ri, %bb.rc, %bb.qz
  %.pn15.i = phi { ptr, i32 } [ %i.ms, %bb.qz ], [ %.pn12.pn.i, %bb.ri ], [ %i.mt, %bb.rc ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.ac) #19
          to label %.body unwind label %bb.sq, !noalias !17

bb.qz:                                            ; preds = %bb.sp, %bb.ra, %bb.qx
  %i.ms = landingpad { ptr, i32 }
          cleanup
  br label %bb.qy

bb.ra:                                            ; preds = %bb.qx
  invoke void @_RNvMCsf5uYjtxkodL_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.v)
          to label %bb.rb unwind label %bb.qz, !noalias !17

bb.rb:                                            ; preds = %bb.ra
  invoke void @_RNvXNtCsa66IwKi6YE3_5quote9to_tokensRNtNtCshMFl0SviwmK_3syn4path4PathNtB2_8ToTokens9to_tokensCsjWx9XcG30NR_12darling_core(ptr nonnull align 8 %i.af, ptr nonnull align 8 %i.v)
          to label %bb.rd unwind label %bb.rc, !noalias !17

bb.rc:                                            ; preds = %bb.re, %bb.rd, %bb.rb
  %i.mt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro211TokenStreamECsa66IwKi6YE3_5quote(ptr nonnull align 8 %i.v) #19
          to label %bb.qy unwind label %bb.sq, !noalias !17

bb.rd:                                            ; preds = %bb.rb
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private11push_colon2(ptr nonnull align 8 %i.v)
          to label %bb.re unwind label %bb.rc, !noalias !17

bb.re:                                            ; preds = %bb.rd
  invoke void @_RNvXsq_NtCsa66IwKi6YE3_5quote9to_tokensNtCsf5uYjtxkodL_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.ac, ptr nonnull align 8 %i.v)
          to label %bb.rf unwind label %bb.rc, !noalias !17

bb.rf:                                            ; preds = %bb.re
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false), !noalias !17
  br i1 %.sroa.03.0, label %bb.rh, label %bb.rg

bb.rg:                                            ; preds = %bb.rf
  invoke void @_RNvMCsf5uYjtxkodL_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.g)
          to label %bb.rk unwind label %bb.rj, !noalias !17

bb.rh:                                            ; preds = %bb.rf
  %i.mu = load ptr, ptr %i.ae, align 8, !noalias !17
  %i.mv = invoke zeroext i1 @_RNvNtCskarGseaywcB_14diesel_derives4util12is_option_ty(ptr align 8 %i.mu)
          to label %bb.sr unwind label %bb.rj, !noalias !17

bb.ri:                                            ; preds = %bb.ul, %bb.sv, %bb.rl, %bb.rj
  %.pn12.pn.i = phi { ptr, i32 } [ %.pn12.i, %bb.ul ], [ %i.mw, %bb.rj ], [ %.pn8.i, %bb.sv ], [ %.pn2.i86, %bb.rl ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro211TokenStreamECsa66IwKi6YE3_5quote(ptr nonnull align 8 %i.w) #19
          to label %bb.qy unwind label %bb.sq, !noalias !17

bb.rj:                                            ; preds = %bb.st, %bb.ss, %bb.rh, %bb.rg
  %i.mw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ri

bb.rk:                                            ; preds = %bb.rg
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private10push_ident(ptr nonnull align 8 %i.g, ptr nonnull @6, i64 6)
          to label %bb.rn unwind label %bb.rm, !noalias !17

bb.rl:                                            ; preds = %bb.rt, %bb.rm
  %.pn2.i86 = phi { ptr, i32 } [ %i.mx, %bb.rm ], [ %.pn.i87, %bb.rt ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro211TokenStreamECsa66IwKi6YE3_5quote(ptr nonnull align 8 %i.g) #19
          to label %bb.ri unwind label %bb.sq, !noalias !17

bb.rm:                                            ; preds = %bb.so, %bb.rr, %bb.rq, %bb.rp, %bb.ro, %bb.rn, %bb.rk
  %i.mx = landingpad { ptr, i32 }
          cleanup
  br label %bb.rl

bb.rn:                                            ; preds = %bb.rk
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private11push_colon2(ptr nonnull align 8 %i.g)
          to label %bb.ro unwind label %bb.rm, !noalias !17

bb.ro:                                            ; preds = %bb.rn
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private10push_ident(ptr nonnull align 8 %i.g, ptr nonnull @14, i64 17)
          to label %bb.rp unwind label %bb.rm, !noalias !17

bb.rp:                                            ; preds = %bb.ro
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private11push_colon2(ptr nonnull align 8 %i.g)
          to label %bb.rq unwind label %bb.rm, !noalias !17

bb.rq:                                            ; preds = %bb.rp
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private10push_ident(ptr nonnull align 8 %i.g, ptr nonnull @15, i64 2)
          to label %bb.rr unwind label %bb.rm, !noalias !17
end_hunk_0
begin_hunk_1_@_RNvNtCskarGseaywcB_14diesel_derives12as_changeset6derive:bb.a
          to label %bb.pk unwind label %bb.pi, !noalias !22

bb.pk:                                            ; preds = %bb.pj
  %i.mv = load i64, ptr %i.aj, align 8, !noalias !22
  %i.mw = trunc nuw i64 %i.mv to i1
  br i1 %i.mw, label %bb.pl, label %bb.pm

bb.pl:                                            ; preds = %bb.pk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.ij, i64 24, i1 false), !noalias !22
  invoke void @_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtCsf5uYjtxkodL_11proc_macro211TokenStreamNtNtCshMFl0SviwmK_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1q_EE13from_residualB1u_(ptr nonnull sret([32 x i8]) align 8 %i.fs, ptr nonnull align 8 %i.ab, ptr nonnull align 8 @74)
          to label %bb.rd unwind label %bb.pi

bb.pm:                                            ; preds = %bb.pk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.ij, i64 24, i1 false), !noalias !22
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskarGseaywcB_14diesel_derives5attrs13SqlIdentifierEBF_(ptr nonnull align 8 %i.ah)
          to label %bb.pp unwind label %bb.po, !noalias !22

bb.pn:                                            ; preds = %bb.qr, %bb.pw, %bb.po
  %.pn.i = phi { ptr, i32 } [ %i.nc, %bb.qr ], [ %i.mx, %bb.po ], [ %i.na, %bb.pw ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.ak) #19
          to label %.body unwind label %bb.qp, !noalias !22

bb.po:                                            ; preds = %bb.pu, %bb.pt, %bb.pr, %bb.pq, %bb.pm
  %i.mx = landingpad { ptr, i32 }
          cleanup
  br label %bb.pn

bb.pp:                                            ; preds = %bb.pm
  br i1 %.sroa.03.0, label %bb.pr, label %bb.pq

bb.pq:                                            ; preds = %bb.pp
  %i.my = invoke zeroext i1 @_RNvNtCskarGseaywcB_14diesel_derives4util12is_option_ty(ptr nonnull align 8 %i.io)
          to label %bb.ps unwind label %bb.po, !noalias !22

bb.pr:                                            ; preds = %bb.ps, %bb.pp
  invoke void @_RNvMCsf5uYjtxkodL_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.ac)
          to label %bb.qq unwind label %bb.po, !noalias !22

bb.ps:                                            ; preds = %bb.pq
  br i1 %i.my, label %bb.pt, label %bb.pr

bb.pt:                                            ; preds = %bb.ps
  %i.mz = invoke align 8 ptr @_RNvNtCskarGseaywcB_14diesel_derives4util18inner_of_option_ty(ptr nonnull align 8 %i.lj)
          to label %bb.pu unwind label %bb.po, !noalias !22

bb.pu:                                            ; preds = %bb.pt
  store ptr %i.mz, ptr %i.ae, align 8, !noalias !22
  invoke void @_RNvMCsf5uYjtxkodL_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.ad)
          to label %bb.pv unwind label %bb.po, !noalias !22

bb.pv:                                            ; preds = %bb.pu
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private10push_ident(ptr nonnull align 8 %i.ad, ptr nonnull @17, i64 3)
          to label %bb.px unwind label %bb.pw, !noalias !22

bb.pw:                                            ; preds = %bb.qn, %bb.qm, %bb.ql, %bb.qk, %bb.qj, %bb.qi, %bb.qh, %bb.qg, %bb.qf, %bb.qe, %bb.qd, %bb.qc, %bb.qb, %bb.qa, %bb.pz, %bb.py, %bb.px, %bb.pv
  %i.na = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro211TokenStreamECsa66IwKi6YE3_5quote(ptr nonnull align 8 %i.ad) #19
          to label %bb.pn unwind label %bb.qp, !noalias !22

bb.px:                                            ; preds = %bb.pv
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private11push_colon2(ptr nonnull align 8 %i.ad)
          to label %bb.py unwind label %bb.pw, !noalias !22

bb.py:                                            ; preds = %bb.px
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private10push_ident(ptr nonnull align 8 %i.ad, ptr nonnull @18, i64 6)
          to label %bb.pz unwind label %bb.pw, !noalias !22

bb.pz:                                            ; preds = %bb.py
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private11push_colon2(ptr nonnull align 8 %i.ad)
          to label %bb.qa unwind label %bb.pw, !noalias !22

bb.qa:                                            ; preds = %bb.pz
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private10push_ident(ptr nonnull align 8 %i.ad, ptr nonnull @19, i64 6)
          to label %bb.qb unwind label %bb.pw, !noalias !22

bb.qb:                                            ; preds = %bb.qa
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private7push_lt(ptr nonnull align 8 %i.ad)
          to label %bb.qc unwind label %bb.pw, !noalias !22

bb.qc:                                            ; preds = %bb.qb
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private10push_ident(ptr nonnull align 8 %i.ad, ptr nonnull @6, i64 6)
          to label %bb.qd unwind label %bb.pw, !noalias !22

bb.qd:                                            ; preds = %bb.qc
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private11push_colon2(ptr nonnull align 8 %i.ad)
          to label %bb.qe unwind label %bb.pw, !noalias !22

bb.qe:                                            ; preds = %bb.qd
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private10push_ident(ptr nonnull align 8 %i.ad, ptr nonnull @30, i64 3)
          to label %bb.qf unwind label %bb.pw, !noalias !22

bb.qf:                                            ; preds = %bb.qe
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private11push_colon2(ptr nonnull align 8 %i.ad)
          to label %bb.qg unwind label %bb.pw, !noalias !22

bb.qg:                                            ; preds = %bb.qf
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private10push_ident(ptr nonnull align 8 %i.ad, ptr nonnull @31, i64 2)
          to label %bb.qh unwind label %bb.pw, !noalias !22

bb.qh:                                            ; preds = %bb.qg
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private7push_lt(ptr nonnull align 8 %i.ad)
          to label %bb.qi unwind label %bb.pw, !noalias !22

bb.qi:                                            ; preds = %bb.qh
  invoke void @_RNvXNtCsa66IwKi6YE3_5quote9to_tokensRNtNtCshMFl0SviwmK_3syn4path4PathNtB2_8ToTokens9to_tokensCsjWx9XcG30NR_12darling_core(ptr nonnull align 8 %i.am, ptr nonnull align 8 %i.ad)
          to label %bb.qj unwind label %bb.pw, !noalias !22

bb.qj:                                            ; preds = %bb.qi
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private11push_colon2(ptr nonnull align 8 %i.ad)
          to label %bb.qk unwind label %bb.pw, !noalias !22

bb.qk:                                            ; preds = %bb.qj
  invoke void @_RNvXsq_NtCsa66IwKi6YE3_5quote9to_tokensNtCsf5uYjtxkodL_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.ak, ptr nonnull align 8 %i.ad)
          to label %bb.ql unwind label %bb.pw, !noalias !22

bb.ql:                                            ; preds = %bb.qk
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private10push_comma(ptr nonnull align 8 %i.ad)
          to label %bb.qm unwind label %bb.pw, !noalias !22

bb.qm:                                            ; preds = %bb.ql
  invoke void @_RNvXNtCsa66IwKi6YE3_5quote9to_tokensRNtNtCshMFl0SviwmK_3syn2ty4TypeNtB2_8ToTokens9to_tokensBD_(ptr nonnull align 8 %i.ae, ptr nonnull align 8 %i.ad)
          to label %bb.qn unwind label %bb.pw, !noalias !22

bb.qn:                                            ; preds = %bb.qm
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private8push_shr(ptr nonnull align 8 %i.ad)
          to label %bb.qo unwind label %bb.pw, !noalias !22

bb.qo:                                            ; preds = %bb.rc, %bb.qn
  %.sink.i = phi ptr [ %i.ac, %bb.rc ], [ %i.ad, %bb.qn ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fs, ptr noundef nonnull align 8 dereferenceable(32) %.sink.i, i64 32, i1 false)
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.ak)
          to label %bb.rf unwind label %.loopexit183.loopexit.split-lp

bb.qp:                                            ; preds = %bb.qr, %bb.pw, %bb.pn, %bb.pi
  %i.nb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.qq:                                            ; preds = %bb.pr
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private10push_ident(ptr nonnull align 8 %i.ac, ptr nonnull @6, i64 6)
          to label %bb.qs unwind label %bb.qr, !noalias !22

bb.qr:                                            ; preds = %bb.rc, %bb.rb, %bb.ra, %bb.qz, %bb.qy, %bb.qx, %bb.qw, %bb.qv, %bb.qu, %bb.qt, %bb.qs, %bb.qq
  %i.nc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro211TokenStreamECsa66IwKi6YE3_5quote(ptr nonnull align 8 %i.ac) #19
          to label %bb.pn unwind label %bb.qp, !noalias !22

bb.qs:                                            ; preds = %bb.qq
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private11push_colon2(ptr nonnull align 8 %i.ac)
          to label %bb.qt unwind label %bb.qr, !noalias !22

bb.qt:                                            ; preds = %bb.qs
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private10push_ident(ptr nonnull align 8 %i.ac, ptr nonnull @30, i64 3)
          to label %bb.qu unwind label %bb.qr, !noalias !22

bb.qu:                                            ; preds = %bb.qt
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private11push_colon2(ptr nonnull align 8 %i.ac)
          to label %bb.qv unwind label %bb.qr, !noalias !22

bb.qv:                                            ; preds = %bb.qu
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private10push_ident(ptr nonnull align 8 %i.ac, ptr nonnull @31, i64 2)
          to label %bb.qw unwind label %bb.qr, !noalias !22

bb.qw:                                            ; preds = %bb.qv
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private7push_lt(ptr nonnull align 8 %i.ac)
          to label %bb.qx unwind label %bb.qr, !noalias !22

bb.qx:                                            ; preds = %bb.qw
  invoke void @_RNvXNtCsa66IwKi6YE3_5quote9to_tokensRNtNtCshMFl0SviwmK_3syn4path4PathNtB2_8ToTokens9to_tokensCsjWx9XcG30NR_12darling_core(ptr nonnull align 8 %i.am, ptr nonnull align 8 %i.ac)
          to label %bb.qy unwind label %bb.qr, !noalias !22

bb.qy:                                            ; preds = %bb.qx
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private11push_colon2(ptr nonnull align 8 %i.ac)
          to label %bb.qz unwind label %bb.qr, !noalias !22

bb.qz:                                            ; preds = %bb.qy
  invoke void @_RNvXsq_NtCsa66IwKi6YE3_5quote9to_tokensNtCsf5uYjtxkodL_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.ak, ptr nonnull align 8 %i.ac)
          to label %bb.ra unwind label %bb.qr, !noalias !22

bb.ra:                                            ; preds = %bb.qz
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private10push_comma(ptr nonnull align 8 %i.ac)
          to label %bb.rb unwind label %bb.qr, !noalias !22

bb.rb:                                            ; preds = %bb.ra
  invoke void @_RNvXNtCsa66IwKi6YE3_5quote9to_tokensRNtNtCshMFl0SviwmK_3syn2ty4TypeNtB2_8ToTokens9to_tokensBD_(ptr nonnull align 8 %i.al, ptr nonnull align 8 %i.ac)
          to label %bb.rc unwind label %bb.qr, !noalias !22

bb.rc:                                            ; preds = %bb.rb
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private7push_gt(ptr nonnull align 8 %i.ac)
          to label %bb.qo unwind label %bb.qr, !noalias !22

bb.rd:                                            ; preds = %bb.pl
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskarGseaywcB_14diesel_derives5attrs13SqlIdentifierEBF_(ptr nonnull align 8 %i.ah)
          to label %bb.rf unwind label %.loopexit183.loopexit.split-lp

bb.re:                                            ; preds = %bb.nf
  %i.nd = getelementptr inbounds nuw i8, ptr %i.lj, i64 224
  %i.ne = load i32, ptr %i.nd, align 4
  invoke void @_RINvMNtCshMFl0SviwmK_3syn5errorNtB3_5Error3newReEB5_(ptr nonnull sret([24 x i8]) align 8 %i.fm, i32 %i.ne, ptr nonnull @65, i64 68)
          to label %.sink.split unwind label %.loopexit.split-lp184

bb.rf:                                            ; preds = %bb.pg, %bb.qo, %bb.rd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  invoke void @_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtCsf5uYjtxkodL_11proc_macro211TokenStreamNtNtCshMFl0SviwmK_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1u_(ptr nonnull sret([32 x i8]) align 8 %i.ft, ptr nonnull align 8 %i.fs)
          to label %bb.rg unwind label %.loopexit183.loopexit.split-lp

bb.rg:                                            ; preds = %bb.rf
  %i.nf = load i64, ptr %i.ft, align 8
  %i.ng = icmp eq i64 %i.nf, -2
  br i1 %i.ng, label %.invoke, label %bb.rh

bb.rh:                                            ; preds = %bb.rg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %i.ft, i64 32, i1 false)
  invoke void @_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtCsf5uYjtxkodL_11proc_macro211TokenStreamE4pushCsjWx9XcG30NR_12darling_core(ptr nonnull align 8 %i.gg, ptr nonnull align 8 %i.at)
          to label %bb.ri unwind label %.loopexit183.loopexit.split-lp

bb.ri:                                            ; preds = %bb.rh
  %i.nh = load ptr, ptr %i.go, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr %i.nh, ptr %i.z, align 8, !noalias !23
  store ptr %i.lj, ptr %i.y, align 8, !noalias !23
  %i.ni = getelementptr inbounds nuw i8, ptr %i.io, i64 1376
  store ptr %i.ni, ptr %i.x, align 8, !noalias !23
  invoke void @_RNvMNtCskarGseaywcB_14diesel_derives5fieldNtB2_5Field11column_name(ptr nonnull sret([32 x i8]) align 8 %i.r, ptr nonnull align 8 %i.io)
          to label %.noexc104 unwind label %.loopexit183.loopexit.split-lp

.noexc104:                                        ; preds = %bb.ri
  invoke void @_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtNtCskarGseaywcB_14diesel_derives5attrs13SqlIdentifierNtNtCshMFl0SviwmK_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([32 x i8]) align 8 %i.s, ptr nonnull align 8 %i.r)
          to label %.noexc105 unwind label %.loopexit183.loopexit.split-lp

.noexc105:                                        ; preds = %.noexc104
  %i.nj = load i64, ptr %i.s, align 8, !noalias !23
  %i.nk = icmp eq i64 %i.nj, -1
  br i1 %i.nk, label %bb.rj, label %bb.rk

bb.rj:                                            ; preds = %.noexc105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.im, i64 24, i1 false), !noalias !23
  invoke void @_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtCsf5uYjtxkodL_11proc_macro211TokenStreamNtNtCshMFl0SviwmK_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1q_EE13from_residualB1u_(ptr nonnull sret([32 x i8]) align 8 %i.fq, ptr nonnull align 8 %i.a, ptr nonnull align 8 @76)
          to label %bb.uz unwind label %.loopexit183.loopexit.split-lp

bb.rk:                                            ; preds = %.noexc105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false), !noalias !23
  invoke void @_RNvMNtCskarGseaywcB_14diesel_derives5attrsNtB2_13SqlIdentifier8to_ident(ptr nonnull sret([32 x i8]) align 8 %i.u, ptr nonnull align 8 %i.t)
          to label %bb.rm unwind label %bb.rl, !noalias !23

bb.rl:                                            ; preds = %bb.ro, %bb.rm, %bb.rk
  %i.nl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskarGseaywcB_14diesel_derives5attrs13SqlIdentifierEBF_(ptr nonnull align 8 %i.t) #19
          to label %.body unwind label %bb.tv

bb.rm:                                            ; preds = %bb.rk
  invoke void @_RNvXsp_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtCsf5uYjtxkodL_11proc_macro25IdentNtNtCshMFl0SviwmK_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1n_(ptr nonnull sret([32 x i8]) align 8 %i.v, ptr nonnull align 8 %i.u)
          to label %bb.rn unwind label %bb.rl, !noalias !23

bb.rn:                                            ; preds = %bb.rm
  %i.nm = load i64, ptr %i.v, align 8, !noalias !23
  %i.nn = trunc nuw i64 %i.nm to i1
  br i1 %i.nn, label %bb.ro, label %bb.rp

bb.ro:                                            ; preds = %bb.rn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.il, i64 24, i1 false), !noalias !23
  invoke void @_RNvXsq_NtCscI6d9CVNmLh_4core6resultINtB5_6ResultNtCsf5uYjtxkodL_11proc_macro211TokenStreamNtNtCshMFl0SviwmK_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1q_EE13from_residualB1u_(ptr nonnull sret([32 x i8]) align 8 %i.fq, ptr nonnull align 8 %i.b, ptr nonnull align 8 @76)
          to label %bb.uy unwind label %bb.rl

bb.rp:                                            ; preds = %bb.rn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.il, i64 24, i1 false), !noalias !23
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskarGseaywcB_14diesel_derives5attrs13SqlIdentifierEBF_(ptr nonnull align 8 %i.t)
          to label %bb.rs unwind label %bb.rr, !noalias !23

bb.rq:                                            ; preds = %bb.sb, %bb.ru, %bb.rr
  %.pn11.i = phi { ptr, i32 } [ %i.no, %bb.rr ], [ %.pn8.pn.i, %bb.sb ], [ %i.np, %bb.ru ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.w) #19
          to label %.body unwind label %bb.tv, !noalias !23

bb.rr:                                            ; preds = %bb.tu, %bb.rx, %bb.rs, %bb.rp
  %i.no = landingpad { ptr, i32 }
          cleanup
  br label %bb.rq

bb.rs:                                            ; preds = %bb.rp
  invoke void @_RNvMCsf5uYjtxkodL_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.o)
          to label %bb.rt unwind label %bb.rr, !noalias !23

bb.rt:                                            ; preds = %bb.rs
  invoke void @_RNvXNtCsa66IwKi6YE3_5quote9to_tokensRNtNtCshMFl0SviwmK_3syn4path4PathNtB2_8ToTokens9to_tokensCsjWx9XcG30NR_12darling_core(ptr nonnull align 8 %i.z, ptr nonnull align 8 %i.o)
          to label %bb.rv unwind label %bb.ru, !noalias !23

bb.ru:                                            ; preds = %bb.rw, %bb.rv, %bb.rt
  %i.np = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro211TokenStreamECsa66IwKi6YE3_5quote(ptr nonnull align 8 %i.o) #19
          to label %bb.rq unwind label %bb.tv, !noalias !23

bb.rv:                                            ; preds = %bb.rt
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private11push_colon2(ptr nonnull align 8 %i.o)
          to label %bb.rw unwind label %bb.ru, !noalias !23

bb.rw:                                            ; preds = %bb.rv
  invoke void @_RNvXsq_NtCsa66IwKi6YE3_5quote9to_tokensNtCsf5uYjtxkodL_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.w, ptr nonnull align 8 %i.o)
          to label %bb.rx unwind label %bb.ru, !noalias !23

bb.rx:                                            ; preds = %bb.rw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false), !noalias !23
  invoke void @_RINvNtCshMFl0SviwmK_3syn11parse_quote5parseNtNtB4_4expr4ExprECsjWx9XcG30NR_12darling_core(ptr nonnull sret([176 x i8]) align 8 %i.q, ptr nonnull align 8 %i.p, ptr nonnull align 8 @75)
          to label %bb.ry unwind label %bb.rr, !noalias !23

bb.ry:                                            ; preds = %bb.rx
  br i1 %.sroa.03.0, label %bb.sa, label %bb.rz

bb.rz:                                            ; preds = %bb.ry
  %i.nq = invoke zeroext i1 @_RNvNtCskarGseaywcB_14diesel_derives4util12is_option_ty(ptr nonnull align 8 %i.io)
          to label %bb.sd unwind label %bb.sc, !noalias !23

bb.sa:                                            ; preds = %bb.sd, %bb.ry
  invoke void @_RNvMCsf5uYjtxkodL_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.g)
          to label %bb.tw unwind label %bb.sc, !noalias !23

bb.sb:                                            ; preds = %bb.tx, %bb.sg, %bb.sc
  %.pn8.pn.i = phi { ptr, i32 } [ %.pn8.i, %bb.tx ], [ %i.nr, %bb.sc ], [ %.pn4.i, %bb.sg ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn4expr4ExprEBF_(ptr nonnull align 8 %i.q) #19
          to label %bb.rq unwind label %bb.tv, !noalias !23

bb.sc:                                            ; preds = %bb.se, %bb.sa, %bb.rz
  %i.nr = landingpad { ptr, i32 }
          cleanup
  br label %bb.sb

bb.sd:                                            ; preds = %bb.rz
  br i1 %i.nq, label %bb.se, label %bb.sa

bb.se:                                            ; preds = %bb.sd
  invoke void @_RNvMCsf5uYjtxkodL_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.n)
          to label %bb.sf unwind label %bb.sc, !noalias !23

bb.sf:                                            ; preds = %bb.se
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private10push_ident(ptr nonnull align 8 %i.n, ptr nonnull @16, i64 4)
          to label %bb.si unwind label %bb.sh, !noalias !23

bb.sg:                                            ; preds = %bb.so, %bb.sh
  %.pn4.i = phi { ptr, i32 } [ %i.ns, %bb.sh ], [ %.pn2.i102, %bb.so ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro211TokenStreamECsa66IwKi6YE3_5quote(ptr nonnull align 8 %i.n) #19
          to label %bb.sb unwind label %bb.tv, !noalias !23

bb.sh:                                            ; preds = %bb.tt, %bb.sm, %bb.sl, %bb.sk, %bb.sj, %bb.si, %bb.sf
  %i.ns = landingpad { ptr, i32 }
          cleanup
  br label %bb.sg

bb.si:                                            ; preds = %bb.sf
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private8push_dot(ptr nonnull align 8 %i.n)
          to label %bb.sj unwind label %bb.sh, !noalias !23

bb.sj:                                            ; preds = %bb.si
  invoke void @_RNvXNtCsa66IwKi6YE3_5quote9to_tokensRNtNtCskarGseaywcB_14diesel_derives5field9FieldNameNtB2_8ToTokens9to_tokensBD_(ptr nonnull align 8 %i.x, ptr nonnull align 8 %i.n)
          to label %bb.sk unwind label %bb.sh, !noalias !23

bb.sk:                                            ; preds = %bb.sj
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private8push_dot(ptr nonnull align 8 %i.n)
          to label %bb.sl unwind label %bb.sh, !noalias !23

end_hunk_1
