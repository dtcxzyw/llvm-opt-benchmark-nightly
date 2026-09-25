Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/thiserror_impl-8eded05bf296438f.thiserror_impl.f42dfe45b583b116-cgu.2?download=true
inline.NumInlined: 34
inline.NumDeleted: 21
begin_hunk_0_@_RNvNtCskXLhsuIG0ok_14thiserror_impl4attr16parse_token_expr:bb.a
  invoke void @_RNvXsq_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtCsghEUimwObfx_11proc_macro211TokenStreamNtNtCsfq6Q4Do6HaX_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1q_EE13from_residualB1u_(ptr nonnull sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.g, ptr nonnull align 8 @45)
          to label %.invoke205 unwind label %.thread172.loopexit.split-lp

bb.fs:                                            ; preds = %bb.fq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false)
  invoke void @_RNvMsr_CsghEUimwObfx_11proc_macro2NtB5_5Group3new(ptr nonnull sret([24 x i8]) align 8 %i.ae, i8 0, ptr nonnull align 8 %i.ad)
          to label %bb.fu unwind label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %.thread164

bb.fu:                                            ; preds = %bb.fs
  %i.gq = invoke i32 @_RNvMNtCsghEUimwObfx_11proc_macro25extraNtB2_9DelimSpan4join(ptr nonnull align 4 %i.ai)
          to label %bb.fw unwind label %bb.fv

bb.fv:                                            ; preds = %bb.fw, %bb.fu
  %i.gr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro25GroupEBD_(ptr nonnull align 8 %i.ae) #16
          to label %.thread164 unwind label %bb.by

bb.fw:                                            ; preds = %bb.fu
  invoke void @_RNvMsr_CsghEUimwObfx_11proc_macro2NtB5_5Group8set_span(ptr nonnull align 8 %i.ae, i32 %i.gq)
          to label %.invoke unwind label %bb.fv

.thread164:                                       ; preds = %.thread172.loopexit, %.thread172.loopexit.split-lp, %bb.ft, %bb.fv
  %.pn110167 = phi { ptr, i32 } [ %i.gr, %bb.fv ], [ %i.gp, %bb.ft ], [ %lpad.loopexit185, %.thread172.loopexit ], [ %lpad.loopexit.split-lp186, %.thread172.loopexit.split-lp ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfq6Q4Do6HaX_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.aj) #16
          to label %.thread unwind label %bb.by

bb.fx:                                            ; preds = %bb.bv, %bb.fy
  %i.gs = load i64, ptr %i.cc, align 8
  %switch128 = icmp ugt i64 %i.gs, -3
  br i1 %switch128, label %bb.fz, label %bb.ga

bb.fy:                                            ; preds = %bb.bv
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsfq6Q4Do6HaX_3syn4expr5IndexNtNtB11_5error5ErrorEECskXLhsuIG0ok_14thiserror_impl(ptr nonnull align 8 %i.az) #16
          to label %bb.fx unwind label %bb.by

bb.fz:                                            ; preds = %bb.fx, %bb.ga
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCsfq6Q4Do6HaX_3syn4expr5IndexNtNtB1n_5error5ErrorEEECskXLhsuIG0ok_14thiserror_impl(ptr nonnull align 8 %i.cd) #16
          to label %.thread unwind label %bb.by

bb.ga:                                            ; preds = %bb.fx
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsfq6Q4Do6HaX_3syn4expr5IndexNtNtB11_5error5ErrorEECskXLhsuIG0ok_14thiserror_impl(ptr nonnull align 8 %i.cc) #16
          to label %bb.fz unwind label %bb.by

bb.gb:                                            ; preds = %bb.q
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtNtCsfq6Q4Do6HaX_3syn5token3DotNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([24 x i8]) align 8 %i.bu, ptr nonnull align 8 %i.bt)
          to label %bb.gc unwind label %.thread134.loopexit

bb.gc:                                            ; preds = %bb.gb
  %i.gt = load i64, ptr %i.bu, align 8
  %.not114 = icmp eq i64 %i.gt, -1
  br i1 %.not114, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i64 24, i1 false)
  br label %.invoke204

bb.ge:                                            ; preds = %bb.gc
  invoke void @_RINvMs9_NtCsfq6Q4Do6HaX_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_4expr5IndexEB8_(ptr nonnull sret([24 x i8]) align 8 %i.bq, ptr align 8 %1)
          to label %bb.gf unwind label %.thread134.loopexit

bb.gf:                                            ; preds = %bb.ge
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtNtCsfq6Q4Do6HaX_3syn4expr5IndexNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([24 x i8]) align 8 %i.br, ptr nonnull align 8 %i.bq)
          to label %bb.gg unwind label %.thread134.loopexit

bb.gg:                                            ; preds = %bb.gf
  %i.gu = load i64, ptr %i.br, align 8
  %.not115 = icmp eq i64 %i.gu, -1
  br i1 %.not115, label %bb.gi, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.br, i64 24, i1 false)
  br label %.invoke204

bb.gi:                                            ; preds = %bb.gg
  %i.gv = load <2 x i32>, ptr %i.cm, align 8
  store <2 x i32> %i.gv, ptr %i.bs, align 8
  store ptr %i.bs, ptr %i.bn, align 8
  invoke void @_RINvMNtNtCs4NRVxsYgnAr_4core3fmt2rtNtB3_8Argument11new_displayINtNtCsdQT5ZjIgVrW_5quote9___private20IdentFragmentAdapterRmEECskXLhsuIG0ok_14thiserror_impl(ptr nonnull sret([16 x i8]) align 8 %i.bj, ptr nonnull align 8 %i.bn)
          to label %bb.gj unwind label %.thread134.loopexit

bb.gj:                                            ; preds = %bb.gi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false)
  %i.gw = invoke { ptr, ptr } @_RINvMs2_NtCs4NRVxsYgnAr_4core3fmtNtB6_9Arguments3newKj4_Kj1_ECskXLhsuIG0ok_14thiserror_impl(ptr nonnull @36, ptr nonnull align 8 %i.bk)
          to label %bb.gk unwind label %.thread134.loopexit ; 2 uses

bb.gk:                                            ; preds = %bb.gj
  %i.gx = extractvalue { ptr, ptr } %i.gw, 0
  %i.gy = extractvalue { ptr, ptr } %i.gw, 1
  invoke void @_RNvNtCscdodAO9FK5_5alloc3fmt6formatCskXLhsuIG0ok_14thiserror_impl(ptr nonnull sret([24 x i8]) align 8 %i.bl, ptr %i.gx, ptr %i.gy)
          to label %bb.gl unwind label %.thread134.loopexit

bb.gl:                                            ; preds = %bb.gk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 24, i1 false)
  %i.gz = invoke { ptr, i64 } @_RNvXsx_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5derefCskXLhsuIG0ok_14thiserror_impl(ptr nonnull align 8 %i.bm)
          to label %bb.gn unwind label %bb.gm     ; 2 uses

bb.gm:                                            ; preds = %bb.gn, %bb.gl
  %i.ha = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsghEUimwObfx_11proc_macro2(ptr nonnull align 8 %i.bm) #16
          to label %.thread unwind label %bb.by

bb.gn:                                            ; preds = %bb.gl
  %i.hb = extractvalue { ptr, i64 } %i.gz, 0
  %i.hc = extractvalue { ptr, i64 } %i.gz, 1
  %i.hd = load i32, ptr %i.cn, align 4
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private8mk_ident(ptr nonnull sret([24 x i8]) align 8 %i.bo, ptr %i.hb, i64 %i.hc, i32 1, i32 %i.hd)
          to label %bb.go unwind label %bb.gm

bb.go:                                            ; preds = %bb.gn
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsghEUimwObfx_11proc_macro2(ptr nonnull align 8 %i.bm)
          to label %bb.gp unwind label %.thread134.loopexit

bb.gp:                                            ; preds = %bb.go
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.co, ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 24, i1 false)
  store i32 1, ptr %i.bp, align 8
  invoke void @_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCsghEUimwObfx_11proc_macro29TokenTreeE4pushBG_(ptr nonnull align 8 %i.ca, ptr nonnull align 8 %i.bp)
          to label %.backedge.backedge unwind label %.thread134.loopexit

bb.gq:                                            ; preds = %bb.n
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtNtCsfq6Q4Do6HaX_3syn5token3DotNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([24 x i8]) align 8 %i.bw, ptr nonnull align 8 %i.bv)
          to label %bb.gr unwind label %.thread134.loopexit

bb.gr:                                            ; preds = %bb.gq
  %i.he = load i64, ptr %i.bw, align 8
  %.not116 = icmp eq i64 %i.he, -1
  br i1 %.not116, label %.backedge.backedge, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i64 24, i1 false)
  br label %.invoke204

bb.gt:                                            ; preds = %bb.g
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtCsghEUimwObfx_11proc_macro29TokenTreeNtNtCsfq6Q4Do6HaX_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCskXLhsuIG0ok_14thiserror_impl(ptr nonnull sret([32 x i8]) align 8 %i.bz, ptr nonnull align 8 %i.by)
          to label %bb.gu unwind label %.thread134.loopexit

bb.gu:                                            ; preds = %bb.gt
  %i.hf = load i32, ptr %i.bz, align 8
  %i.hg = icmp eq i32 %i.hf, -1
  br i1 %i.hg, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %bb.gu
  %i.hh = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.hh, i64 24, i1 false)
  br label %.invoke204

bb.gw:                                            ; preds = %bb.gu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, ptr noundef nonnull align 8 dereferenceable(32) %i.bz, i64 32, i1 false)
  invoke void @_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCsghEUimwObfx_11proc_macro29TokenTreeE4pushBG_(ptr nonnull align 8 %i.ca, ptr nonnull align 8 %i.bx)
          to label %.backedge.backedge unwind label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.gy:                                            ; preds = %bb.d, %bb.ep
  ret void

bb.gz:                                            ; preds = %.thread
  resume { ptr, i32 } %.pn117132

.thread:                                          ; preds = %.thread134.loopexit, %.thread134.loopexit.split-lp, %bb.fm, %bb.fb, %bb.eq, %bb.cf, %.thread138, %.thread151, %.thread164, %bb.u, %bb.gm, %bb.gx, %bb.fz
  %.pn117132 = phi { ptr, i32 } [ %.pn89, %bb.fz ], [ %.pn98, %bb.cf ], [ %lpad.thr_comm.split-lp145, %bb.eq ], [ %.pn102141, %.thread138 ], [ %lpad.thr_comm.split-lp158, %bb.fb ], [ %.pn106154, %.thread151 ], [ %lpad.thr_comm.split-lp171, %bb.fm ], [ %.pn110167, %.thread164 ], [ %.pn112, %bb.u ], [ %i.ha, %bb.gm ], [ %i.hi, %bb.gx ], [ %lpad.loopexit, %.thread134.loopexit ], [ %lpad.loopexit.split-lp, %.thread134.loopexit.split-lp ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsghEUimwObfx_11proc_macro29TokenTreeEEB19_(ptr nonnull align 8 %i.ca) #16
          to label %bb.gz unwind label %bb.by
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCskXLhsuIG0ok_14thiserror_impl4attr3get(ptr sret([272 x i8]) align 8 %0, ptr align 8 %1, i64 %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = alloca [24 x i8], align 8                ; 2 uses
  %i.g = alloca [24 x i8], align 8                ; 2 uses
  %i.h = alloca [24 x i8], align 8                ; 2 uses
  %i.i = alloca [24 x i8], align 8                ; 3 uses
  %i.j = alloca [24 x i8], align 8                ; 2 uses
  %i.k = alloca [24 x i8], align 8                ; 2 uses
  %i.l = alloca [24 x i8], align 8                ; 3 uses
  %i.m = alloca [24 x i8], align 8                ; 2 uses
  %i.n = alloca [24 x i8], align 8                ; 3 uses
  %i.o = alloca [16 x i8], align 8                ; 3 uses
  %i.p = alloca [272 x i8], align 8               ; 12 uses
  store i64 -1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 216 ; 3 uses
  store ptr null, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 224
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 232 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 240 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 248
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 104 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.p, i64 256 ; 2 uses
  store ptr null, ptr %3, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.v, align 8
  %i.w = invoke { ptr, ptr } @_RNvXs_NtNtCs4NRVxsYgnAr_4core5slice4iterRSNtNtCsfq6Q4Do6HaX_3syn4attr9AttributeNtNtNtNtB8_4iter6traits7collect12IntoIterator9into_iterBI_(ptr align 8 %1, i64 %2)
          to label %bb.c unwind label %.loopexit.split-lp ; 2 uses

.loopexit:                                        ; preds = %.backedge, %bb.e, %bb.h, %bb.j, %bb.l, %bb.n, %bb.o, %bb.p, %bb.r, %bb.s, %bb.t, %bb.w, %bb.y, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionRNtCsghEUimwObfx_11proc_macro25IdentE6unwrapCskXLhsuIG0ok_14thiserror_impl.exit12, %bb.af, %bb.ai, %bb.al, %bb.ap, %bb.as, %bb.au, %bb.aw, %bb.ax, %bb.ay, %bb.az, %_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionRNtCsghEUimwObfx_11proc_macro25IdentE6unwrapCskXLhsuIG0ok_14thiserror_impl.exit, %bb.bb, %bb.bd, %bb.k
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

.loopexit.split-lp:                               ; preds = %.invoke40, %.invoke, %bb.a, %bb.z, %bb.ao, %bb.av
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskXLhsuIG0ok_14thiserror_impl4attr5AttrsEBF_(ptr nonnull align 8 %i.p) #16
          to label %bb.bh unwind label %bb.bg

bb.c:                                             ; preds = %bb.a
  %i.x = extractvalue { ptr, ptr } %i.w, 0
  %i.y = extractvalue { ptr, ptr } %i.w, 1
  store ptr %i.x, ptr %i.o, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.y, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ac = insertelement <2 x ptr> poison, ptr %3, i64 0
  %i.ad = insertelement <2 x ptr> %i.ac, ptr %i.v, i64 1
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.c
  %i.ae = invoke align 8 ptr @_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCsfq6Q4Do6HaX_3syn4attr9AttributeENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_(ptr nonnull align 8 %i.o)
          to label %bb.d unwind label %.loopexit  ; 22 uses

bb.d:                                             ; preds = %.backedge
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = invoke align 8 ptr @_RNvMNtCsfq6Q4Do6HaX_3syn4attrNtB2_9Attribute4path(ptr nonnull align 8 %i.ae)
          to label %bb.h unwind label %.loopexit

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(272) %i.p, i64 272, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.ah, %bb.f
  ret void

bb.h:                                             ; preds = %bb.e
  %i.ag = invoke zeroext i1 @_RINvMs_NtCsfq6Q4Do6HaX_3syn4pathNtB5_4Path8is_identeECskXLhsuIG0ok_14thiserror_impl(ptr align 8 %i.af, ptr nonnull @52, i64 5)
          to label %bb.i unwind label %.loopexit

bb.i:                                             ; preds = %bb.h
  br i1 %i.ag, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = invoke align 8 ptr @_RNvMNtCsfq6Q4Do6HaX_3syn4attrNtB2_9Attribute4path(ptr nonnull align 8 %i.ae)
          to label %bb.l unwind label %.loopexit

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.ae, ptr %i.b, align 8, !noalias !11
  store ptr %i.p, ptr %i.a, align 8, !noalias !11
  store <2 x ptr> %i.ad, ptr %i.aa, align 8, !noalias !11
  store ptr %i.b, ptr %i.ab, align 8, !noalias !11
  invoke void @_RINvMNtCsfq6Q4Do6HaX_3syn4attrNtB3_9Attribute15parse_args_withNCNvNtCskXLhsuIG0ok_14thiserror_impl4attr21parse_error_attribute0EB14_(ptr nonnull sret([24 x i8]) align 8 %i.m, ptr nonnull align 8 %i.ae, ptr nonnull align 8 %i.a)
          to label %bb.bd unwind label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.ai = invoke zeroext i1 @_RINvMs_NtCsfq6Q4Do6HaX_3syn4pathNtB5_4Path8is_identeECskXLhsuIG0ok_14thiserror_impl(ptr align 8 %i.ah, ptr nonnull @53, i64 6)
          to label %bb.m unwind label %.loopexit

bb.m:                                             ; preds = %bb.l
  br i1 %i.ai, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = invoke align 8 ptr @_RNvMNtCsfq6Q4Do6HaX_3syn4attrNtB2_9Attribute4path(ptr nonnull align 8 %i.ae)
          to label %bb.p unwind label %.loopexit

bb.o:                                             ; preds = %bb.m
  invoke void @_RNvMs_NtCsfq6Q4Do6HaX_3syn4attrNtB4_4Meta17require_path_only(ptr nonnull sret([24 x i8]) align 8 %i.k, ptr nonnull align 8 %i.ae)
          to label %bb.ap unwind label %.loopexit

bb.p:                                             ; preds = %bb.n
  %i.ak = invoke zeroext i1 @_RINvMs_NtCsfq6Q4Do6HaX_3syn4pathNtB5_4Path8is_identeECskXLhsuIG0ok_14thiserror_impl(ptr align 8 %i.aj, ptr nonnull @54, i64 9)
          to label %bb.q unwind label %.loopexit

bb.q:                                             ; preds = %bb.p
  br i1 %i.ak, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.al = invoke align 8 ptr @_RNvMNtCsfq6Q4Do6HaX_3syn4attrNtB2_9Attribute4path(ptr nonnull align 8 %i.ae)
          to label %bb.t unwind label %.loopexit

bb.s:                                             ; preds = %bb.q
  invoke void @_RNvMs_NtCsfq6Q4Do6HaX_3syn4attrNtB4_4Meta17require_path_only(ptr nonnull sret([24 x i8]) align 8 %i.h, ptr nonnull align 8 %i.ae)
          to label %bb.ai unwind label %.loopexit

bb.t:                                             ; preds = %bb.r
  %i.am = invoke zeroext i1 @_RINvMs_NtCsfq6Q4Do6HaX_3syn4pathNtB5_4Path8is_identeECskXLhsuIG0ok_14thiserror_impl(ptr align 8 %i.al, ptr nonnull @55, i64 4)
          to label %bb.u unwind label %.loopexit

bb.u:                                             ; preds = %bb.t
  br i1 %i.am, label %bb.v, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.u, %bb.ag, %bb.an, %bb.bc, %bb.be, %bb.v
  br label %.backedge

bb.v:                                             ; preds = %bb.u
  %i.an = load i64, ptr %i.ae, align 8
  %i.ao = icmp eq i64 %i.an, -9223372036854775808
  br i1 %i.ao, label %bb.w, label %.backedge.backedge

bb.w:                                             ; preds = %bb.v
  %i.ap = invoke zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionNtNtCskXLhsuIG0ok_14thiserror_impl4attr4FromE7is_someBL_(ptr nonnull align 8 %i.t)
          to label %bb.x unwind label %.loopexit

bb.x:                                             ; preds = %bb.w
  br i1 %i.ap, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 232
  %i.ar = invoke align 4 ptr @_RNvXsht_NtCsfq6Q4Do6HaX_3syn5tokenNtB6_5PoundNtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5deref(ptr nonnull align 4 %i.aq)
          to label %bb.aa unwind label %.loopexit

bb.z:                                             ; preds = %bb.x
  invoke void @_RINvMNtCsfq6Q4Do6HaX_3syn5errorNtB3_5Error11new_spannedRNtNtB5_4attr9AttributeReECskXLhsuIG0ok_14thiserror_impl(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr nonnull align 8 %i.ae, ptr nonnull @57, i64 27)
          to label %.sink.split unwind label %.loopexit.split-lp

bb.aa:                                            ; preds = %bb.y
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 236
  %i.at = invoke i32 @_RNvMNtCsghEUimwObfx_11proc_macro25extraNtB2_9DelimSpan4join(ptr nonnull align 4 %i.as)
          to label %bb.ab unwind label %.loopexit

bb.ab:                                            ; preds = %bb.aa
  %i.au = invoke { i32, i32 } @_RNvMsi_CsghEUimwObfx_11proc_macro2NtB5_4Span4join(ptr align 4 %i.ar, i32 %i.at)
          to label %bb.ac unwind label %.loopexit ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  %i.av = extractvalue { i32, i32 } %i.au, 0
  %i.aw = extractvalue { i32, i32 } %i.au, 1
  %i.ax = invoke align 8 ptr @_RNvMNtCsfq6Q4Do6HaX_3syn4attrNtB2_9Attribute4path(ptr nonnull align 8 %i.ae)
          to label %bb.ad unwind label %.loopexit

bb.ad:                                            ; preds = %bb.ac
  %i.ay = invoke align 8 ptr @_RNvMs_NtCsfq6Q4Do6HaX_3syn4pathNtB4_4Path9get_ident(ptr align 8 %i.ax)
          to label %bb.ae unwind label %.loopexit ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  %.not.i10 = icmp eq ptr %i.ay, null
  br i1 %.not.i10, label %.invoke40, label %_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionRNtCsghEUimwObfx_11proc_macro25IdentE6unwrapCskXLhsuIG0ok_14thiserror_impl.exit12

_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionRNtCsghEUimwObfx_11proc_macro25IdentE6unwrapCskXLhsuIG0ok_14thiserror_impl.exit12: ; preds = %bb.ae
  %i.az = invoke i32 @_RNvMsx_CsghEUimwObfx_11proc_macro2NtB5_5Ident4span(ptr nonnull align 8 %i.ay)
          to label %bb.af unwind label %.loopexit

bb.af:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionRNtCsghEUimwObfx_11proc_macro25IdentE6unwrapCskXLhsuIG0ok_14thiserror_impl.exit12
  %i.ba = invoke i32 @_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionNtCsghEUimwObfx_11proc_macro24SpanE9unwrap_orCsdQT5ZjIgVrW_5quote(i32 %i.av, i32 %i.aw, i32 %i.az)
          to label %bb.ag unwind label %.loopexit

bb.ag:                                            ; preds = %bb.af
  store ptr %i.ae, ptr %i.t, align 8
  store i32 %i.ba, ptr %i.u, align 8
  br label %.backedge.backedge

.sink.split:                                      ; preds = %bb.z, %bb.av, %bb.ao
  %.sink41 = phi ptr [ %i.g, %bb.ao ], [ %i.j, %bb.av ], [ %i.f, %bb.z ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %.sink41, i64 24, i1 false)
  store i64 -2, ptr %0, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %.sink.split, %.invoke
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskXLhsuIG0ok_14thiserror_impl4attr5AttrsEBF_(ptr nonnull align 8 %i.p)
  br label %bb.g

bb.ai:                                            ; preds = %bb.s
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultRNtNtCsfq6Q4Do6HaX_3syn4path4PathNtNtBP_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCskXLhsuIG0ok_14thiserror_impl(ptr nonnull sret([24 x i8]) align 8 %i.i, ptr nonnull align 8 %i.h)
          to label %bb.aj unwind label %.loopexit

bb.aj:                                            ; preds = %bb.ai
  %i.bc = load i64, ptr %i.i, align 8
  %.not7 = icmp eq i64 %i.bc, -1
  br i1 %.not7, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  br label %.invoke

.invoke:                                          ; preds = %bb.bf, %bb.ar, %bb.ak
  %i.bd = phi ptr [ %i.e, %bb.ak ], [ %i.d, %bb.ar ], [ %i.c, %bb.bf ]
  %i.be = phi ptr [ @59, %bb.ak ], [ @62, %bb.ar ], [ @63, %bb.bf ]
  invoke void @_RNvXsq_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtNtCskXLhsuIG0ok_14thiserror_impl4attr5AttrsNtNtCsfq6Q4Do6HaX_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1t_EE13from_residualBO_(ptr sret([272 x i8]) align 8 %0, ptr nonnull align 8 %i.bd, ptr nonnull align 8 %i.be)
          to label %bb.ah unwind label %.loopexit.split-lp

bb.al:                                            ; preds = %bb.aj
  %i.bf = invoke zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionRNtNtCsfq6Q4Do6HaX_3syn4attr9AttributeE7is_someCskXLhsuIG0ok_14thiserror_impl(ptr nonnull align 8 %i.s)
          to label %bb.am unwind label %.loopexit

bb.am:                                            ; preds = %bb.al
  br i1 %i.bf, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store ptr %i.ae, ptr %i.s, align 8
  br label %.backedge.backedge

bb.ao:                                            ; preds = %bb.am
  invoke void @_RINvMNtCsfq6Q4Do6HaX_3syn5errorNtB3_5Error11new_spannedRNtNtB5_4attr9AttributeReECskXLhsuIG0ok_14thiserror_impl(ptr nonnull sret([24 x i8]) align 8 %i.g, ptr nonnull align 8 %i.ae, ptr nonnull @58, i64 32)
          to label %.sink.split unwind label %.loopexit.split-lp

bb.ap:                                            ; preds = %bb.o
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultRNtNtCsfq6Q4Do6HaX_3syn4path4PathNtNtBP_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCskXLhsuIG0ok_14thiserror_impl(ptr nonnull sret([24 x i8]) align 8 %i.l, ptr nonnull align 8 %i.k)
          to label %bb.aq unwind label %.loopexit

bb.aq:                                            ; preds = %bb.ap
  %i.bg = load i64, ptr %i.l, align 8
  %.not8 = icmp eq i64 %i.bg, -1
  br i1 %.not8, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  br label %.invoke

bb.as:                                            ; preds = %bb.aq
  %i.bh = invoke zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionNtNtCskXLhsuIG0ok_14thiserror_impl4attr6SourceE7is_someBL_(ptr nonnull align 8 %i.q)
          to label %bb.at unwind label %.loopexit
end_hunk_0
