inline.NumInlined: 58
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvNtNtCsgFSQ9XOTBNe_3syn4expr7parsing10unary_expr:bb.a

bb.q:                                             ; preds = %bb.p
  br i1 %i.an, label %bb.n, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  call fastcc void @_RNvNtNtCsgFSQ9XOTBNe_3syn4expr7parsing12trailer_expr(ptr noalias align 8 %0, ptr align 8 %i.i, ptr align 8 %i.h, ptr align 8 %1, i1 zeroext %2)
  br label %bb.bk

bb.s:                                             ; preds = %bb.n
  invoke void @_RINvMNtCshzWfHUSfYae_4core6resultINtB3_6ResultNtNtCsgFSQ9XOTBNe_3syn4expr9ExprUnaryNtNtBM_5error5ErrorE3mapNtBK_4ExprNcNtB1H_5Unary0EBM_(ptr sret([176 x i8]) align 8 %0, ptr nonnull align 8 %i.k)
          to label %.critedge unwind label %.thread43.thread69

bb.t:                                             ; preds = %bb.k
  invoke void @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtCsgFSQ9XOTBNe_3syn5token3AndNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([24 x i8]) align 8 %i.y, ptr nonnull align 8 %i.x)
          to label %bb.u unwind label %.thread53

bb.u:                                             ; preds = %bb.t
  %i.ao = load i64, ptr %i.y, align 8
  %.not = icmp eq i64 %i.ao, -1
  br i1 %.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  br label %.invoke

.invoke:                                          ; preds = %bb.ax, %bb.at, %bb.ak, %bb.ag, %bb.v
  %i.ap = phi ptr [ %i.b, %bb.v ], [ %i.c, %bb.ag ], [ %i.d, %bb.ak ], [ %i.e, %bb.at ], [ %i.f, %bb.ax ]
  %i.aq = phi ptr [ @80, %bb.v ], [ @79, %bb.ag ], [ @78, %bb.ak ], [ @77, %bb.at ], [ @76, %bb.ax ]
  invoke void @_RNvXsq_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtCsgFSQ9XOTBNe_3syn4expr4ExprNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1g_EE13from_residualBO_(ptr sret([176 x i8]) align 8 %0, ptr nonnull align 8 %i.ap, ptr nonnull align 8 %i.aq)
          to label %bb.bl unwind label %.thread53

bb.w:                                             ; preds = %bb.u
  %i.ar = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.0.0.copyload = load i32, ptr %i.ar, align 8 ; 2 uses
  %i.as = invoke zeroext i1 @_RINvMs9_NtCsgFSQ9XOTBNe_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token3RawNtNtB8_9lookahead11TokenMarkerEEB8_(ptr align 8 %1)
          to label %bb.x unwind label %.thread53

bb.x:                                             ; preds = %bb.w
  br i1 %i.as, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %bb.x
  %i.at = invoke zeroext i1 @_RINvMs9_NtCsgFSQ9XOTBNe_3syn5parseNtB6_11ParseBuffer5peek2INvNtB8_5token3MutNtNtB8_9lookahead11TokenMarkerEEB8_(ptr align 8 %1)
          to label %bb.z unwind label %.thread53

bb.z:                                             ; preds = %bb.y
  br i1 %i.at, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.au = invoke zeroext i1 @_RINvMs9_NtCsgFSQ9XOTBNe_3syn5parseNtB6_11ParseBuffer5peek2INvNtB8_5token5ConstNtNtB8_9lookahead11TokenMarkerEEB8_(ptr align 8 %1)
          to label %bb.ac unwind label %.thread53

bb.ab:                                            ; preds = %bb.ac, %bb.z
  invoke void @_RINvMs9_NtCsgFSQ9XOTBNe_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token3RawEB8_(ptr nonnull sret([24 x i8]) align 8 %i.u, ptr align 8 %1)
          to label %bb.ae unwind label %.thread53

bb.ac:                                            ; preds = %bb.aa
  br i1 %i.au, label %bb.ab, label %bb.ad

bb.ad:                                            ; preds = %bb.x, %bb.ac, %bb.ah
  %storemerge = phi i32 [ 1, %bb.ah ], [ 0, %bb.ac ], [ 0, %bb.x ]
  store i32 %storemerge, ptr %i.w, align 4
  invoke void @_RINvMs9_NtCsgFSQ9XOTBNe_3syn5parseNtB6_11ParseBuffer5parseINtNtCshzWfHUSfYae_4core6option6OptionNtNtB8_5token3MutEEB8_(ptr nonnull sret([24 x i8]) align 8 %i.r, ptr align 8 %1)
          to label %bb.ai unwind label %.thread53

bb.ae:                                            ; preds = %bb.ab
  invoke void @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtCsgFSQ9XOTBNe_3syn5token3RawNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([24 x i8]) align 8 %i.v, ptr nonnull align 8 %i.u)
          to label %bb.af unwind label %.thread53

bb.af:                                            ; preds = %bb.ae
  %i.av = load i64, ptr %i.v, align 8
  %.not33 = icmp eq i64 %i.av, -1
  br i1 %.not33, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  br label %.invoke

bb.ah:                                            ; preds = %bb.af
  %i.aw = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 %i.ax, ptr %i.ay, align 4
  br label %bb.ad

bb.ai:                                            ; preds = %bb.ad
  invoke void @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtNtCsgFSQ9XOTBNe_3syn5token3MutENtNtB1a_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1a_(ptr nonnull sret([24 x i8]) align 8 %i.s, ptr nonnull align 8 %i.r)
          to label %bb.aj unwind label %.thread53

bb.aj:                                            ; preds = %bb.ai
  %i.az = load i64, ptr %i.s, align 8
  %.not34 = icmp eq i64 %i.az, -1
  br i1 %.not34, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  br label %.invoke

bb.al:                                            ; preds = %bb.aj
  %i.ba = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.bc = load <2 x i32>, ptr %i.ba, align 8
  store <2 x i32> %i.bc, ptr %i.t, align 8
  %i.bd = invoke zeroext i1 @_RNvMNtCshzWfHUSfYae_4core6optionINtB2_6OptionNtNtCsgFSQ9XOTBNe_3syn5token3RawE7is_someBL_(ptr nonnull align 4 %i.w)
          to label %bb.am unwind label %.thread53

bb.am:                                            ; preds = %bb.al
  br i1 %i.bd, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.be = invoke zeroext i1 @_RNvMNtCshzWfHUSfYae_4core6optionINtB2_6OptionNtNtCsgFSQ9XOTBNe_3syn5token3MutE7is_noneBL_(ptr nonnull align 4 %i.t)
          to label %bb.ao unwind label %.thread53

bb.ao:                                            ; preds = %bb.an
  br i1 %i.be, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RINvMs9_NtCsgFSQ9XOTBNe_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token5ConstEB8_(ptr nonnull sret([24 x i8]) align 8 %i.p, ptr align 8 %1)
          to label %bb.ar unwind label %.thread53

bb.aq:                                            ; preds = %bb.am, %bb.ao, %bb.au
  %.sroa.3.0 = phi i32 [ %i.bh, %bb.au ], [ undef, %bb.ao ], [ undef, %bb.am ]
  %.sroa.03.0 = phi i1 [ true, %bb.au ], [ false, %bb.ao ], [ false, %bb.am ]
  invoke void @_RNvNtNtCsgFSQ9XOTBNe_3syn4expr7parsing10unary_expr(ptr nonnull sret([176 x i8]) align 8 %i.m, ptr align 8 %1, i1 zeroext %2)
          to label %bb.av unwind label %.thread53

bb.ar:                                            ; preds = %bb.ap
  invoke void @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtCsgFSQ9XOTBNe_3syn5token5ConstNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([24 x i8]) align 8 %i.q, ptr nonnull align 8 %i.p)
          to label %bb.as unwind label %.thread53

bb.as:                                            ; preds = %bb.ar
  %i.bf = load i64, ptr %i.q, align 8
  %.not35 = icmp eq i64 %i.bf, -1
  br i1 %.not35, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  br label %.invoke

bb.au:                                            ; preds = %bb.as
  %i.bg = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bh = load i32, ptr %i.bg, align 8
  br label %bb.aq

bb.av:                                            ; preds = %bb.aq
  invoke void @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtCsgFSQ9XOTBNe_3syn4expr4ExprNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([176 x i8]) align 8 %i.n, ptr nonnull align 8 %i.m)
          to label %bb.aw unwind label %.thread53

bb.aw:                                            ; preds = %bb.av
  %i.bi = load i64, ptr %i.n, align 8
  %i.bj = icmp eq i64 %i.bi, -1
  br i1 %i.bj, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.bk = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false)
  br label %.invoke

bb.ay:                                            ; preds = %bb.aw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.g, ptr noundef nonnull align 8 dereferenceable(176) %i.n, i64 176, i1 false)
  %i.bl = invoke ptr @_RNvNtCsbSS6DM8SDEO_5alloc5boxed14box_new_uninitCsgFSQ9XOTBNe_3syn(i64 8, i64 176)
          to label %bb.bb unwind label %bb.az     ; 4 uses

bb.az:                                            ; preds = %bb.ay
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn4expr4ExprEBF_(ptr nonnull align 8 %i.g) #18
          to label %.thread47 unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.bb:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.bl, ptr noundef nonnull align 8 dereferenceable(176) %i.g, i64 176, i1 false)
  store ptr %i.bl, ptr %i.o, align 8
  %i.bo = load i32, ptr %i.w, align 4
  %i.bp = trunc i32 %i.bo to i1
  br i1 %i.bp, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.bq = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.br = load i32, ptr %i.bq, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  %i.bs = load i32, ptr %i.t, align 8
  %i.bt = trunc i32 %i.bs to i1
  br i1 %i.bt, label %bb.be, label %bb.bf

bb.bd:                                            ; preds = %bb.bb
  store i64 28, ptr %0, align 8
  %.sroa.2.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx12, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  %.sroa.2.sroa.221.0..sroa.2.0..sroa_idx12.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bu = load <2 x i32>, ptr %i.t, align 8
  store <2 x i32> %i.bu, ptr %.sroa.2.sroa.221.0..sroa.2.0..sroa_idx12.sroa_idx, align 8
  %.sroa.2.sroa.423.0..sroa.2.0..sroa_idx12.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.bl, ptr %.sroa.2.sroa.423.0..sroa.2.0..sroa_idx12.sroa_idx, align 8
  %.sroa.2.sroa.524.0..sroa.2.0..sroa_idx12.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.sroa.0.0.copyload, ptr %.sroa.2.sroa.524.0..sroa.2.0..sroa_idx12.sroa_idx, align 8
  br label %.critedge

bb.be:                                            ; preds = %bb.bc
  %i.bv = load i32, ptr %i.bb, align 4
  br label %_RNvMNtCshzWfHUSfYae_4core6optionINtB2_6OptionNtNtCsgFSQ9XOTBNe_3syn5token5ConstE6unwrapBL_.exit

bb.bf:                                            ; preds = %bb.bc
  br i1 %.sroa.03.0, label %_RNvMNtCshzWfHUSfYae_4core6optionINtB2_6OptionNtNtCsgFSQ9XOTBNe_3syn5token5ConstE6unwrapBL_.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr nonnull align 8 @75) #22
          to label %.noexc unwind label %bb.bh

.noexc:                                           ; preds = %bb.bg
  unreachable

bb.bh:                                            ; preds = %bb.bg
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.l) #18
          to label %bb.bj unwind label %bb.bi

_RNvMNtCshzWfHUSfYae_4core6optionINtB2_6OptionNtNtCsgFSQ9XOTBNe_3syn5token5ConstE6unwrapBL_.exit: ; preds = %bb.bf, %bb.be
  %.sroa.09.0 = phi i32 [ 1, %bb.be ], [ 0, %bb.bf ]
  %.sroa.310.0 = phi i32 [ %i.bv, %bb.be ], [ %.sroa.3.0, %bb.bf ]
  store i64 27, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.sroa.09.0, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.sroa.310.0, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx, align 4
  %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.bl, ptr %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %.sroa.2.sroa.5.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.sroa.0.0.copyload, ptr %.sroa.2.sroa.5.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %.sroa.2.sroa.6.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.br, ptr %.sroa.2.sroa.6.0..sroa.2.0..sroa_idx.sroa_idx, align 4
  br label %.critedge

bb.bi:                                            ; preds = %.thread43.thread, %.thread47, %bb.bj, %bb.bh
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.bj:                                            ; preds = %bb.bh
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtCsgFSQ9XOTBNe_3syn4expr4ExprEEB1e_(ptr nonnull align 8 %i.o) #18
          to label %.thread43.thread unwind label %bb.bi

.critedge:                                        ; preds = %_RNvMNtCshzWfHUSfYae_4core6optionINtB2_6OptionNtNtCsgFSQ9XOTBNe_3syn5token5ConstE6unwrapBL_.exit, %bb.bd, %bb.s
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.ae)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.h, %bb.r, %bb.bm, %.critedge
  ret void

bb.bl:                                            ; preds = %.invoke
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.ad)
          to label %bb.bm unwind label %.thread

.thread47:                                        ; preds = %bb.az, %.thread53
  %eh.lpad-body52 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread53 ], [ %i.bm, %bb.az ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsgFSQ9XOTBNe_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.ad) #18
          to label %.thread43.thread unwind label %bb.bi

bb.bm:                                            ; preds = %bb.d, %bb.bl
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.ae)
  br label %bb.bk

bb.bn:                                            ; preds = %.thread43.thread
  resume { ptr, i32 } %.pn3742

.thread43.thread:                                 ; preds = %bb.bj, %.thread47, %.thread43.thread69, %.thread
  %.pn3742 = phi { ptr, i32 } [ %i.af, %.thread ], [ %lpad.thr_comm67, %.thread43.thread69 ], [ %i.bw, %bb.bj ], [ %eh.lpad-body52, %.thread47 ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.ae) #18
          to label %bb.bn unwind label %bb.bi
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsgFSQ9XOTBNe_3syn4expr7parsing11expr_become(ptr noalias nonnull align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 2 uses
  %i.d = alloca [176 x i8], align 8               ; 2 uses
  %i.e = alloca [176 x i8], align 8               ; 4 uses
  %i.f = alloca [176 x i8], align 8               ; 2 uses
  %i.g = alloca [24 x i8], align 8                ; 2 uses
  %i.h = alloca [24 x i8], align 8                ; 3 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  call void @_RNvMs9_NtCsgFSQ9XOTBNe_3syn5parseNtB5_11ParseBuffer4fork(ptr nonnull sret([32 x i8]) align 8 %i.i, ptr align 8 %1)
  invoke void @_RINvMs9_NtCsgFSQ9XOTBNe_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token6BecomeEB8_(ptr nonnull sret([24 x i8]) align 8 %i.g, ptr align 8 %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.invoke, %bb.k, %bb.j, %bb.g, %bb.f, %bb.c, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.i) #18
          to label %bb.o unwind label %bb.n

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtCsgFSQ9XOTBNe_3syn5token6BecomeNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([24 x i8]) align 8 %i.h, ptr nonnull align 8 %i.g)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.k = load i64, ptr %i.h, align 8
  %.not = icmp eq i64 %i.k, -1
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  br label %.invoke

bb.f:                                             ; preds = %bb.d
  invoke void @_RINvMs9_NtCsgFSQ9XOTBNe_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_4expr4ExprEB8_(ptr nonnull sret([176 x i8]) align 8 %i.d, ptr align 8 %1)
          to label %bb.g unwind label %bb.b

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtCsgFSQ9XOTBNe_3syn4expr4ExprNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([176 x i8]) align 8 %i.e, ptr nonnull align 8 %i.d)
          to label %bb.h unwind label %bb.b

bb.h:                                             ; preds = %bb.g
  %i.l = load i64, ptr %i.e, align 8
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  br label %.invoke

.invoke:                                          ; preds = %bb.e, %bb.i
  %i.o = phi ptr [ %i.b, %bb.i ], [ %i.a, %bb.e ]
  %i.p = phi ptr [ @88, %bb.i ], [ @89, %bb.e ]
  invoke void @_RNvXsq_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtCsgFSQ9XOTBNe_3syn4expr4ExprNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1g_EE13from_residualBO_(ptr nonnull sret([176 x i8]) align 8 %0, ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.p)
          to label %bb.m unwind label %bb.b

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.f, ptr noundef nonnull align 8 dereferenceable(176) %i.e, i64 176, i1 false)
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn4expr4ExprEBF_(ptr nonnull align 8 %i.f)
          to label %bb.k unwind label %bb.b

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCsgFSQ9XOTBNe_3syn8verbatim7between(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr nonnull align 8 %i.i, ptr align 8 %1)
          to label %bb.l unwind label %bb.b

bb.l:                                             ; preds = %bb.k
  store i64 37, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %.invoke, %bb.l
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgFSQ9XOTBNe_3syn5parse11ParseBufferEBF_(ptr nonnull align 8 %i.i)
  ret void

bb.n:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.o:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsgFSQ9XOTBNe_3syn4expr7parsing12atom_labeled(ptr noalias nonnull align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8
  %i.c = alloca [24 x i8], align 8
  %i.d = alloca [24 x i8], align 8
  %i.e = alloca [24 x i8], align 8
  %i.f = alloca [40 x i8], align 8                ; 3 uses
  %i.g = alloca [24 x i8], align 8                ; 2 uses
  %i.h = alloca [104 x i8], align 8               ; 2 uses
  %i.i = alloca [104 x i8], align 8               ; 4 uses
  %i.j = alloca [112 x i8], align 8               ; 2 uses
  %i.k = alloca [112 x i8], align 8               ; 4 uses
  %i.l = alloca [128 x i8], align 8               ; 2 uses
  %i.m = alloca [128 x i8], align 8               ; 4 uses
  %i.n = alloca [120 x i8], align 8               ; 2 uses
  %i.o = alloca [120 x i8], align 8               ; 4 uses
  %i.p = alloca [176 x i8], align 8               ; 8 uses
  %i.q = alloca [48 x i8], align 8                ; 2 uses
  %i.r = alloca [48 x i8], align 8                ; 3 uses
  %i.s = alloca [40 x i8], align 8                ; 4 uses
  call void @_RINvMs9_NtCsgFSQ9XOTBNe_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_4expr5LabelEB8_(ptr nonnull sret([48 x i8]) align 8 %i.q, ptr align 8 %1)
  call void @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtCsgFSQ9XOTBNe_3syn4expr5LabelNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([48 x i8]) align 8 %i.r, ptr nonnull align 8 %i.q) #20
  %i.t = load i64, ptr %i.r, align 8
  %i.u = trunc nuw i64 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %.sink17.sroa.gep = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sink17.sroa.gep18 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sink17.sroa.gep19 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sink17.sroa.gep20 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  call void @_RNvXsq_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtCsgFSQ9XOTBNe_3syn4expr4ExprNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1g_EE13from_residualBO_(ptr nonnull sret([176 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @98) #20
  br label %bb.af

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 8 dereferenceable(40) %i.v, i64 40, i1 false)
  %i.w = invoke zeroext i1 @_RINvMs9_NtCsgFSQ9XOTBNe_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token5WhileNtNtB8_9lookahead11TokenMarkerEEB8_(ptr align 8 %1)
          to label %bb.d unwind label %bb.aj

bb.d:                                             ; preds = %bb.c
  br i1 %i.w, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = invoke zeroext i1 @_RINvMs9_NtCsgFSQ9XOTBNe_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token3ForNtNtB8_9lookahead11TokenMarkerEEB8_(ptr align 8 %1)
          to label %bb.g unwind label %bb.aj

bb.f:                                             ; preds = %bb.d
  invoke void @_RINvMs9_NtCsgFSQ9XOTBNe_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_4expr9ExprWhileEB8_(ptr nonnull sret([120 x i8]) align 8 %i.n, ptr align 8 %1)
          to label %bb.x unwind label %bb.aj

bb.g:                                             ; preds = %bb.e
  br i1 %i.x, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = invoke zeroext i1 @_RINvMs9_NtCsgFSQ9XOTBNe_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token4LoopNtNtB8_9lookahead11TokenMarkerEEB8_(ptr align 8 %1)
          to label %bb.j unwind label %bb.aj

bb.i:                                             ; preds = %bb.g
  invoke void @_RINvMs9_NtCsgFSQ9XOTBNe_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_4expr11ExprForLoopEB8_(ptr nonnull sret([128 x i8]) align 8 %i.l, ptr align 8 %1)
          to label %bb.v unwind label %bb.aj

bb.j:                                             ; preds = %bb.h
  br i1 %i.y, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = invoke zeroext i1 @_RINvMs9_NtCsgFSQ9XOTBNe_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token5BraceNtNtB8_9lookahead11TokenMarkerEEB8_(ptr align 8 %1)
          to label %bb.m unwind label %bb.aj

bb.l:                                             ; preds = %bb.j
  invoke void @_RINvMs9_NtCsgFSQ9XOTBNe_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_4expr8ExprLoopEB8_(ptr nonnull sret([112 x i8]) align 8 %i.j, ptr align 8 %1)
          to label %bb.t unwind label %bb.aj

bb.m:                                             ; preds = %bb.k
  br i1 %i.z, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_RINvMs9_NtCsgFSQ9XOTBNe_3syn5parseNtB6_11ParseBuffer5errorReEB8_(ptr nonnull sret([24 x i8]) align 8 %i.g, ptr align 8 %1, ptr nonnull @93, i64 33)
          to label %bb.p unwind label %bb.aj

bb.o:                                             ; preds = %bb.m
end_hunk_0
