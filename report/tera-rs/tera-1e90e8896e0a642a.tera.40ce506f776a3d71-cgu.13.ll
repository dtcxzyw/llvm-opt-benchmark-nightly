Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/tera-1e90e8896e0a642a.tera.40ce506f776a3d71-cgu.13?download=true
inline.NumInlined: 849
inline.NumDeleted: 466
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk8optimize:bb.a
  %i.dj = load i64, ptr %i.bk, align 8, !dbg !21167, !noundef !1328 ; 2 uses
    #dbg_value(ptr poison, !20293, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20297)
    #dbg_value(ptr poison, !20301, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20305)
    #dbg_value(i64 %i.dj, !20293, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20297)
    #dbg_value(i64 %i.dj, !20301, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20305)
  %i.dk = icmp ult i64 %.lcssa492, %i.dj, !dbg !21168
  br i1 %i.dk, label %bb.z, label %.invoke985, !dbg !21168

bb.y:                                             ; preds = %.lr.ph621, %.backedge
  %.sroa.04.0619 = phi i64 [ 0, %.lr.ph621 ], [ %.sroa.04.0.be, %.backedge ] ; 9 uses
    #dbg_value(i64 %.sroa.04.0619, !19727, !DIExpression(), !20170)
    #dbg_value(ptr %i.ai, !20035, !DIExpression(), !20307)
  %i.dl = load i64, ptr %i.ay, align 8, !dbg !21169, !noundef !1328 ; 2 uses
  %i.dm = icmp ult i64 %i.dl, 164703072086692426, !dbg !21170
  call void @llvm.assume(i1 %i.dm), !dbg !21171
    #dbg_value(ptr %i.ah, !20254, !DIExpression(), !20309)
    #dbg_value(ptr %i.ah, !20262, !DIExpression(), !20312)
    #dbg_value(ptr %i.ah, !20273, !DIExpression(), !20315)
    #dbg_value(ptr %i.ah, !20279, !DIExpression(), !20318)
    #dbg_value(i64 %.sroa.04.0619, !20257, !DIExpression(), !20319)
    #dbg_value(i64 %.sroa.04.0619, !20290, !DIExpression(), !20321)
    #dbg_value(i64 %.sroa.04.0619, !20298, !DIExpression(), !20324)
  %i.dn = load i64, ptr %i.bk, align 8, !dbg !21172, !noundef !1328 ; 2 uses
    #dbg_value(ptr poison, !20293, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20321)
    #dbg_value(ptr poison, !20301, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20324)
    #dbg_value(i64 %i.dn, !20293, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20321)
    #dbg_value(i64 %i.dn, !20301, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20324)
  %i.do = icmp ult i64 %.sroa.04.0619, %i.dn, !dbg !21173
  br i1 %i.do, label %bb.az, label %.invoke, !dbg !21173

bb.z:                                             ; preds = %._crit_edge622
  %i.dp = load ptr, ptr %i.bj, align 8, !dbg !21174, !nonnull !1328, !noundef !1328
    #dbg_value(ptr %i.dp, !20293, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20297)
    #dbg_value(ptr %i.dp, !20301, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20305)
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %.lcssa492, !dbg !21175
  store i64 %i.dh, ptr %i.dq, align 8, !dbg !21176
    #dbg_value(ptr %i.ai, !20345, !DIExpression(), !20351)
    #dbg_value(ptr %i.ai, !20352, !DIExpression(), !20360)
    #dbg_value(ptr %i.ai, !20361, !DIExpression(), !20366)
    #dbg_value(ptr %i.ai, !20367, !DIExpression(), !20371)
  %i.dr = load ptr, ptr %i.ax, align 8, !dbg !21177, !nonnull !1328, !noundef !1328 ; 2 uses
  %i.ds = load i64, ptr %i.ay, align 8, !dbg !21178, !noundef !1328 ; 2 uses
    #dbg_value(i64 %i.ds, !20378, !DIExpression(), !20391)
    #dbg_value(i64 %i.ds, !20153, !DIExpression(), !20395)
    #dbg_value(ptr %i.dr, !20392, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20396)
    #dbg_value(ptr %i.dr, !20382, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20397)
    #dbg_value(i64 %i.ds, !20392, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20396)
    #dbg_value(i64 %i.ds, !20382, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20397)
    #dbg_value(ptr %i.dr, !20383, !DIExpression(), !20398)
    #dbg_value(ptr %i.dr, !20154, !DIExpression(), !20395)
  %.idx629 = mul nuw nsw i64 %i.ds, 56, !dbg !21179
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx629, !dbg !21179
    #dbg_value(ptr %i.dr, !19749, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20399)
    #dbg_value(ptr %i.dt, !19749, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20399)
    #dbg_value(ptr undef, !19816, !DIExpression(), !19833)
    #dbg_value(ptr %i.dr, !19827, !DIExpression(), !20400)
    #dbg_value(ptr %i.dr, !19949, !DIExpression(), !20020)
    #dbg_value(ptr %i.dt, !19828, !DIExpression(), !20401)
    #dbg_value(ptr poison, !20164, !DIExpression(), !20403)
    #dbg_value(ptr poison, !20165, !DIExpression(), !20404)
  %i.du = icmp eq i64 %i.ds, 0, !dbg !21180
  br i1 %i.du, label %._crit_edge627, label %.lr.ph626, !dbg !21181

.body337:                                         ; preds = %.invoke987, %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %bb.ew, %bb.es, %bb.er, %bb.eq, %bb.by, %bb.bx, %bb.bw, %.body274
  %i.dv = phi ptr [ %i.dg, %.body274 ], [ %i.ch, %bb.es ], [ %i.ch, %bb.eq ], [ %i.ch, %bb.er ], [ %i.ch, %bb.bw ], [ %i.ea, %.loopexit.split-lp.loopexit.split-lp ], [ %i.ch, %bb.bx ], [ %i.ch, %.invoke987 ], [ %i.ch, %bb.by ], [ %i.ch, %bb.ew ], [ %i.ch, %.loopexit.split-lp.loopexit ] ; 4 uses
  %.sroa.064.6 = phi i1 [ false, %.body274 ], [ true, %bb.es ], [ true, %bb.eq ], [ true, %bb.er ], [ true, %bb.bw ], [ true, %.loopexit.split-lp.loopexit.split-lp ], [ true, %bb.bx ], [ true, %.invoke987 ], [ true, %bb.by ], [ true, %bb.ew ], [ true, %.loopexit.split-lp.loopexit ], !dbg !21133
  %.pn253 = phi { ptr, i32 } [ %eh.lpad-body275, %.body274 ], [ %.pn248.pn.pn416, %bb.es ], [ %.pn248.pn.pn416, %bb.eq ], [ %.pn248.pn.pn416, %bb.er ], [ %.pn364, %bb.bw ], [ %lpad.loopexit.split-lp631, %.loopexit.split-lp.loopexit.split-lp ], [ %.pn364, %bb.bx ], [ %.pn364, %.invoke987 ], [ %.pn364, %bb.by ], [ %i.ls, %bb.ew ], [ %lpad.loopexit630, %.loopexit.split-lp.loopexit ]
    #dbg_value(ptr %i.af, !3775, !DIExpression(), !19435)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions11InstructionEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.af)
          to label %bb.ab unwind label %bb.aa, !dbg !21182

bb.aa:                                            ; preds = %.body337
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dv) #25
          to label %.body unwind label %bb.ae, !dbg !21182

bb.ab:                                            ; preds = %.body337
    #dbg_value(ptr %i.dv, !2705, !DIExpression(), !19437)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dv)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEB1c_.exit.i unwind label %bb.ac, !dbg !21183

bb.ac:                                            ; preds = %bb.ab
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
    #dbg_value(ptr %i.dv, !2710, !DIExpression(), !19439)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5yXxDE1DkoT_4tera5utils4SpanENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dv)
          to label %.body unwind label %bb.ad, !dbg !21184

bb.ad:                                            ; preds = %bb.ac
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24, !dbg !21183
  unreachable, !dbg !21183

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEB1c_.exit.i: ; preds = %bb.ab
    #dbg_value(ptr %i.dv, !2710, !DIExpression(), !19441)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5yXxDE1DkoT_4tera5utils4SpanENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dv)
          to label %.body280 unwind label %bb.bt, !dbg !21185

bb.ae:                                            ; preds = %bb.aa
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24, !dbg !21182
  unreachable, !dbg !21182

.loopexit.split-lp.loopexit:                      ; preds = %bb.bf, %bb.bq, %bb.cc, %bb.eb, %bb.et
  %lpad.loopexit630 = landingpad { ptr, i32 }
          cleanup
  br label %.body337

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke985, %.invoke
  %i.ea = phi ptr [ %i.ch, %.invoke ], [ %i.dg, %.invoke985 ]
  %lpad.loopexit.split-lp631 = landingpad { ptr, i32 }
          cleanup
  br label %.body337

.lr.ph626:                                        ; preds = %bb.z, %bb.ai
  %.sroa.047.0624 = phi ptr [ %i.eb, %bb.ai ], [ %i.dr, %bb.z ] ; 3 uses
    #dbg_value(ptr %.sroa.047.0624, !19749, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20399)
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.047.0624, i64 56, !dbg !21186 ; 2 uses
    #dbg_value(ptr %i.eb, !19749, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20399)
    #dbg_value(ptr %.sroa.047.0624, !19750, !DIExpression(), !20405)
  %i.ec = load i8, ptr %.sroa.047.0624, align 8, !dbg !21187, !range !3742, !noundef !1328
  switch i8 %i.ec, label %bb.ai [
    i8 25, label %bb.aj
    i8 26, label %bb.aj
    i8 27, label %bb.aj
    i8 28, label %bb.aj
    i8 33, label %bb.aj
  ], !dbg !21188

._crit_edge627:                                   ; preds = %bb.ai, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !21189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !dbg !21189
    #dbg_value(ptr %0, !2881, !DIExpression(), !19443)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions11InstructionIBw_NtNtBM_5utils4SpanEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.ag unwind label %bb.af, !dbg !21190

bb.af:                                            ; preds = %._crit_edge627
  %i.ed = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !2886, !DIExpression(), !19445)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions11InstructionINtNtB7_3vec3VecNtNtBT_5utils4SpanEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body274 unwind label %bb.ah, !dbg !21191

bb.ag:                                            ; preds = %._crit_edge627
    #dbg_value(ptr %0, !2886, !DIExpression(), !19447)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions11InstructionINtNtB7_3vec3VecNtNtBT_5utils4SpanEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions11InstructionIBC_NtNtB1f_5utils4SpanEEEEB1f_.exit276 unwind label %bb.al, !dbg !21192

bb.ah:                                            ; preds = %bb.af
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24, !dbg !21190
  unreachable, !dbg !21190

bb.ai:                                            ; preds = %bb.ak, %.lr.ph626
    #dbg_value(ptr %i.eb, !19749, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20399)
    #dbg_value(ptr undef, !19816, !DIExpression(), !19833)
    #dbg_value(ptr %i.eb, !19827, !DIExpression(), !20400)
    #dbg_value(ptr %i.eb, !19949, !DIExpression(), !20020)
    #dbg_value(ptr %i.dt, !19828, !DIExpression(), !20401)
    #dbg_value(ptr poison, !20164, !DIExpression(), !20403)
    #dbg_value(ptr poison, !20165, !DIExpression(), !20404)
  %i.ef = icmp eq ptr %i.eb, %i.dt, !dbg !21180
  br i1 %i.ef, label %._crit_edge627, label %.lr.ph626, !dbg !21181

bb.aj:                                            ; preds = %.lr.ph626, %.lr.ph626, %.lr.ph626, %.lr.ph626, %.lr.ph626
  %.sroa.050.0 = getelementptr inbounds nuw i8, ptr %.sroa.047.0624, i64 8, !dbg !21193 ; 2 uses
    #dbg_value(ptr %.sroa.050.0, !19751, !DIExpression(), !20406)
    #dbg_value(ptr %i.ah, !20408, !DIExpression(), !20415)
    #dbg_value(ptr %i.ah, !20416, !DIExpression(), !20425)
    #dbg_value(ptr %i.ah, !20426, !DIExpression(), !20431)
    #dbg_value(ptr %i.ah, !20432, !DIExpression(), !20439)
  %i.eg = load i64, ptr %.sroa.050.0, align 8, !dbg !21194, !noundef !1328 ; 3 uses
    #dbg_value(i64 %i.eg, !20412, !DIExpression(), !20440)
    #dbg_value(i64 %i.eg, !20441, !DIExpression(), !20451)
    #dbg_value(i64 %i.eg, !20452, !DIExpression(), !20459)
  %i.eh = load i64, ptr %i.bk, align 8, !dbg !21195, !noundef !1328 ; 2 uses
    #dbg_value(ptr poison, !20445, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20451)
    #dbg_value(ptr poison, !20455, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20459)
    #dbg_value(i64 %i.eh, !20445, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20451)
    #dbg_value(i64 %i.eh, !20455, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20459)
  %i.ei = icmp ult i64 %i.eg, %i.eh, !dbg !21196
  br i1 %i.ei, label %bb.ak, label %.invoke985, !dbg !21196

bb.ak:                                            ; preds = %bb.aj
  %i.ej = load ptr, ptr %i.bj, align 8, !dbg !21197, !nonnull !1328, !noundef !1328
    #dbg_value(ptr %i.ej, !20445, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20451)
    #dbg_value(ptr %i.ej, !20455, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20459)
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.eg, !dbg !21198
  %i.el = load i64, ptr %i.ek, align 8, !dbg !21199, !noundef !1328
  store i64 %i.el, ptr %.sroa.050.0, align 8, !dbg !21200
  br label %bb.ai, !dbg !21201

.invoke985:                                       ; preds = %bb.aj, %._crit_edge622
  %i.em = phi i64 [ %.lcssa492, %._crit_edge622 ], [ %i.eg, %bb.aj ]
  %i.en = phi i64 [ %i.dj, %._crit_edge622 ], [ %i.eh, %bb.aj ]
  %i.eo = phi ptr [ @14, %._crit_edge622 ], [ @15, %bb.aj ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.em, i64 noundef %i.en, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eo) #28
          to label %.cont986 unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !21202

.cont986:                                         ; preds = %.invoke985
  unreachable

bb.al:                                            ; preds = %bb.ag
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %.body274, !dbg !21203

.body274:                                         ; preds = %bb.af, %bb.al
  %eh.lpad-body275 = phi { ptr, i32 } [ %i.ep, %bb.al ], [ %i.ed, %bb.af ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !dbg !21203
  br label %.body337, !dbg !21204

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions11InstructionIBC_NtNtB1f_5utils4SpanEEEEB1f_.exit276: ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !dbg !21203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !21204
    #dbg_value(ptr %i.af, !3775, !DIExpression(), !19457)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions11InstructionEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.af)
          to label %bb.an unwind label %bb.am, !dbg !21205

bb.am:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions11InstructionIBC_NtNtB1f_5utils4SpanEEEEB1f_.exit276
  %i.eq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dg) #25
          to label %.body280 unwind label %bb.aq, !dbg !21205

bb.an:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions11InstructionIBC_NtNtB1f_5utils4SpanEEEEB1f_.exit276
    #dbg_value(ptr %i.dg, !2705, !DIExpression(), !19459)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dg)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEB1c_.exit.i279 unwind label %bb.ao, !dbg !21206

bb.ao:                                            ; preds = %bb.an
  %i.er = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.dg, !2710, !DIExpression(), !19461)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5yXxDE1DkoT_4tera5utils4SpanENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dg)
          to label %.body280 unwind label %bb.ap, !dbg !21207

bb.ap:                                            ; preds = %bb.ao
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24, !dbg !21206
  unreachable, !dbg !21206

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEB1c_.exit.i279: ; preds = %bb.an
    #dbg_value(ptr %i.dg, !2710, !DIExpression(), !19463)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5yXxDE1DkoT_4tera5utils4SpanENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dg)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions11InstructionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBI_5utils4SpanEEEBI_.exit283 unwind label %bb.w, !dbg !21208

bb.aq:                                            ; preds = %bb.am
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24, !dbg !21205
  unreachable, !dbg !21205

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions11InstructionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBI_5utils4SpanEEEBI_.exit283: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEB1c_.exit.i279
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !21209
    #dbg_value(ptr %i.ag, !2895, !DIExpression(), !19465)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecbENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %bb.as unwind label %bb.ar, !dbg !21210

bb.ar:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions11InstructionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBI_5utils4SpanEEEBI_.exit283
  %i.eu = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.ag, !2900, !DIExpression(), !19467)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecbENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.body286 unwind label %bb.at, !dbg !21211

bb.as:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions11InstructionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBI_5utils4SpanEEEBI_.exit283
    #dbg_value(ptr %i.ag, !2900, !DIExpression(), !19469)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecbENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecbEECs5yXxDE1DkoT_4tera.exit288 unwind label %bb.o, !dbg !21212

bb.at:                                            ; preds = %bb.ar
  %i.ev = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24, !dbg !21210
  unreachable, !dbg !21210

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecbEECs5yXxDE1DkoT_4tera.exit288: ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !21213
    #dbg_value(ptr %i.ah, !20108, !DIExpression(), !19471)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %bb.av unwind label %bb.au, !dbg !21214

bb.au:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecbEECs5yXxDE1DkoT_4tera.exit288
  %i.ew = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.ah, !20115, !DIExpression(), !19473)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %.thread unwind label %bb.aw, !dbg !21215

bb.av:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecbEECs5yXxDE1DkoT_4tera.exit288
    #dbg_value(ptr %i.ah, !20115, !DIExpression(), !19475)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs5yXxDE1DkoT_4tera.exit293 unwind label %bb.i, !dbg !21216

bb.aw:                                            ; preds = %bb.au
  %i.ex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24, !dbg !21214
  unreachable, !dbg !21214

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs5yXxDE1DkoT_4tera.exit293: ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !21217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !21119
    #dbg_value(ptr %i.aj, !2881, !DIExpression(), !19477)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions11InstructionIBw_NtNtBM_5utils4SpanEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions11InstructionIBC_NtNtB1f_5utils4SpanEEEEB1f_.exit295 unwind label %bb.ax, !dbg !21218

bb.ax:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs5yXxDE1DkoT_4tera.exit293
  %i.ey = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.aj, !2886, !DIExpression(), !19479)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions11InstructionINtNtB7_3vec3VecNtNtBT_5utils4SpanEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %common.resume unwind label %bb.ay, !dbg !21219

bb.ay:                                            ; preds = %bb.ax
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24, !dbg !21218
  unreachable, !dbg !21218

common.resume:                                    ; preds = %bb.c, %bb.ax
  %common.resume.op = phi { ptr, i32 } [ %i.ey, %bb.ax ], [ %.pn258, %bb.c ]
  resume { ptr, i32 } %common.resume.op, !dbg !19850

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions11InstructionIBC_NtNtB1f_5utils4SpanEEEEB1f_.exit295: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs5yXxDE1DkoT_4tera.exit293
    #dbg_value(ptr %i.aj, !2886, !DIExpression(), !19481)
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions11InstructionINtNtB7_3vec3VecNtNtBT_5utils4SpanEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj), !dbg !21220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !21221
  ret void, !dbg !21222

bb.az:                                            ; preds = %bb.y
  %i.fa = load ptr, ptr %i.bj, align 8, !dbg !21223, !nonnull !1328, !noundef !1328
    #dbg_value(ptr %i.fa, !20293, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20321)
    #dbg_value(ptr %i.fa, !20301, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20324)
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %.sroa.04.0619, !dbg !21224
  store i64 %i.dl, ptr %i.fb, align 8, !dbg !21225
  %i.fc = add nuw nsw i64 %.sroa.04.0619, 1, !dbg !21226 ; 13 uses
    #dbg_value(ptr %i.aj, !20035, !DIExpression(), !20473)
  %i.fd = load i64, ptr %i.ak, align 8, !dbg !21227, !noundef !1328 ; 4 uses
  %i.fe = icmp ult i64 %i.fd, 164703072086692426, !dbg !21228
  call void @llvm.assume(i1 %i.fe), !dbg !21229
  %i.ff = icmp samesign ult i64 %i.fc, %i.fd, !dbg !21226
  br i1 %i.ff, label %bb.ba, label %bb.bb, !dbg !21226

bb.ba:                                            ; preds = %bb.az
    #dbg_value(ptr %i.ag, !20474, !DIExpression(), !20480)
    #dbg_value(ptr %i.ag, !20481, !DIExpression(), !20489)
    #dbg_value(ptr %i.ag, !20490, !DIExpression(), !20495)
    #dbg_value(ptr %i.ag, !20496, !DIExpression(), !20503)
    #dbg_value(i64 %i.fc, !20477, !DIExpression(), !20504)
    #dbg_value(i64 %i.fc, !20505, !DIExpression(), !20514)
    #dbg_value(i64 %i.fc, !20515, !DIExpression(), !20521)
  %i.fg = load i64, ptr %i.by, align 8, !dbg !21230, !noundef !1328 ; 2 uses
    #dbg_value(ptr poison, !20508, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20514)
    #dbg_value(ptr poison, !20518, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20521)
    #dbg_value(i64 %i.fg, !20508, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20514)
    #dbg_value(i64 %i.fg, !20518, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20521)
  %i.fh = icmp ult i64 %i.fc, %i.fg, !dbg !21231
  br i1 %i.fh, label %bb.bc, label %.invoke, !dbg !21231

bb.bb:                                            ; preds = %bb.bd, %bb.bc, %bb.az, %bb.be
    #dbg_value(ptr %i.aj, !20522, !DIExpression(), !20529)
    #dbg_value(ptr %i.aj, !20128, !DIExpression(), !20532)
    #dbg_value(ptr %i.aj, !20132, !DIExpression(), !20535)
    #dbg_value(ptr %i.aj, !20136, !DIExpression(), !20538)
    #dbg_value(i64 %.sroa.04.0619, !20525, !DIExpression(), !20539)
    #dbg_value(i64 %.sroa.04.0619, !20540, !DIExpression(), !20546)
    #dbg_value(i64 %.sroa.04.0619, !20547, !DIExpression(), !20554)
    #dbg_value(ptr poison, !20543, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20546)
    #dbg_value(ptr poison, !20550, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20554)
    #dbg_value(i64 %i.fd, !20543, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20546)
    #dbg_value(i64 %i.fd, !20550, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20554)
  %i.fi = icmp samesign ult i64 %.sroa.04.0619, %i.fd, !dbg !21232
  br i1 %i.fi, label %bb.bz, label %.invoke, !dbg !21232

bb.bc:                                            ; preds = %bb.ba
  %i.fj = load ptr, ptr %i.bx, align 8, !dbg !21233, !nonnull !1328, !noundef !1328
    #dbg_value(ptr %i.fj, !20508, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20514)
    #dbg_value(ptr %i.fj, !20518, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20521)
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fc, !dbg !21234
  %i.fl = load i8, ptr %i.fk, align 1, !dbg !21235, !range !3918, !noundef !1328
  %i.fm = trunc nuw i8 %i.fl to i1, !dbg !21235
  br i1 %i.fm, label %bb.bb, label %bb.bd, !dbg !21235

bb.bd:                                            ; preds = %bb.bc
    #dbg_value(ptr %i.aj, !20522, !DIExpression(), !20562)
    #dbg_value(ptr %i.aj, !20128, !DIExpression(), !20565)
    #dbg_value(ptr %i.aj, !20132, !DIExpression(), !20568)
    #dbg_value(ptr %i.aj, !20136, !DIExpression(), !20571)
    #dbg_value(i64 %.sroa.04.0619, !20525, !DIExpression(), !20572)
    #dbg_value(i64 %.sroa.04.0619, !20540, !DIExpression(), !20574)
    #dbg_value(i64 %.sroa.04.0619, !20547, !DIExpression(), !20577)
    #dbg_value(ptr poison, !20543, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20574)
    #dbg_value(ptr poison, !20550, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20577)
    #dbg_value(i64 %i.fd, !20543, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20574)
end_hunk_0
begin_hunk_1_@_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk8optimize:bb.a
    #dbg_value(!DIArgList(ptr %i.fn, i64 %.sroa.04.0619), !19861, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 56, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !20634)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !21243
  invoke fastcc void @_RNvYTNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions11InstructionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB9_5utils4SpanEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneB9_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.af)
          to label %bb.bg unwind label %.loopexit.split-lp.loopexit, !dbg !21244

bb.bg:                                            ; preds = %bb.bf
    #dbg_value(ptr %i.fo, !19861, !DIExpression(), !20634)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.fo, i64 32, i1 false), !dbg !21245
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 32, !dbg !21245
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.ft, i64 24, i1 false), !dbg !21245
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fo, ptr noundef nonnull align 8 dereferenceable(56) %i.ac, i64 56, i1 false), !dbg !21246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !21247
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !dbg !21248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !dbg !21248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !21249
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !21249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !21250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !21250
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !21251
  %i.fu = load i8, ptr %i.ae, align 8, !dbg !21252, !range !3742, !noundef !1328
  switch i8 %i.fu, label %bb.bh [
    i8 18, label %bb.bj
    i8 20, label %bb.bi
  ], !dbg !21253, !prof !20635

bb.bh:                                            ; preds = %bb.bg
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #28
          to label %bb.x unwind label %bb.bu, !dbg !21254

bb.bi:                                            ; preds = %bb.bg
  br label %bb.bj, !dbg !21255

bb.bj:                                            ; preds = %bb.bg, %bb.bi
  %.sink = phi i8 [ 21, %bb.bi ], [ 19, %bb.bg ]
  %.sroa.062.0 = phi i1 [ true, %bb.bi ], [ false, %bb.bg ], !dbg !21202 ; 2 uses
  %.sroa.063.0 = phi i1 [ false, %bb.bi ], [ true, %bb.bg ], !dbg !21202 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, ptr noundef nonnull align 8 dereferenceable(24) %i.cj, i64 24, i1 false), !dbg !21256
  store i8 %.sink, ptr %i.ab, align 8, !dbg !21256
    #dbg_value(ptr %i.ai, !20035, !DIExpression(), !20637)
  %i.fv = load i64, ptr %i.ay, align 8, !dbg !21257, !noundef !1328 ; 2 uses
  %i.fw = icmp ult i64 %i.fv, 164703072086692426, !dbg !21258
  call void @llvm.assume(i1 %i.fw), !dbg !21259
    #dbg_value(ptr %i.ah, !20254, !DIExpression(), !20639)
    #dbg_value(ptr %i.ah, !20262, !DIExpression(), !20642)
    #dbg_value(ptr %i.ah, !20273, !DIExpression(), !20645)
    #dbg_value(ptr %i.ah, !20279, !DIExpression(), !20648)
    #dbg_value(i64 %i.fc, !20257, !DIExpression(), !20649)
    #dbg_value(i64 %i.fc, !20290, !DIExpression(), !20651)
    #dbg_value(i64 %i.fc, !20298, !DIExpression(), !20654)
  %i.fx = load i64, ptr %i.bk, align 8, !dbg !21260, !noundef !1328 ; 2 uses
    #dbg_value(ptr poison, !20293, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20651)
    #dbg_value(ptr poison, !20301, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20654)
    #dbg_value(i64 %i.fx, !20293, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20651)
    #dbg_value(i64 %i.fx, !20301, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20654)
  %i.fy = icmp ult i64 %i.fc, %i.fx, !dbg !21261
  br i1 %i.fy, label %bb.bk, label %bb.bo, !dbg !21261

bb.bk:                                            ; preds = %bb.bj
  %i.fz = load ptr, ptr %i.bj, align 8, !dbg !21262, !nonnull !1328, !noundef !1328
    #dbg_value(ptr %i.fz, !20293, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20651)
    #dbg_value(ptr %i.fz, !20301, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20654)
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.fc, !dbg !21263
  store i64 %i.fv, ptr %i.ga, align 8, !dbg !21264
    #dbg_value(ptr %i.ai, !19869, !DIExpression(), !20661)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !21265
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i64 32, i1 false), !dbg !21266
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !dbg !21267
    #dbg_value(ptr %i.ai, !5128, !DIExpression(), !19497)
    #dbg_value(ptr %i.ai, !5136, !DIExpression(), !19499)
    #dbg_declare(ptr %i.aa, !5132, !DIExpression(), !19500)
    #dbg_value(i64 56, !5141, !DIExpression(), !19503)
  %i.gb = load i64, ptr %i.ay, align 8, !dbg !21268, !alias.scope !20662, !noundef !1328 ; 3 uses
    #dbg_value(i64 %i.gb, !5133, !DIExpression(), !19506)
    #dbg_value(i64 %i.gb, !5152, !DIExpression(), !19508)
    #dbg_value(ptr %i.ai, !5150, !DIExpression(), !19509)
  %i.gc = load i64, ptr %i.ai, align 8, !dbg !21269, !range !5155, !alias.scope !20662, !noundef !1328
  %i.gd = icmp eq i64 %i.gb, %i.gc, !dbg !21270
  br i1 %i.gd, label %bb.bl, label %bb.bp, !dbg !21270

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions11InstructionINtNtB7_3vec3VecNtNtBT_5utils4SpanEEE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %bb.bp unwind label %bb.bm, !dbg !21271, !noalias !20663

bb.bm:                                            ; preds = %bb.bl
  %i.ge = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions11InstructionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBI_5utils4SpanEEEBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.aa) #25
          to label %.body296 unwind label %bb.bn, !dbg !21272

bb.bn:                                            ; preds = %bb.bm
  %i.gf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24, !dbg !21273
  unreachable, !dbg !21273

bb.bo:                                            ; preds = %bb.bj
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.fc, i64 noundef %i.fx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #28
          to label %bb.x unwind label %bb.bs, !dbg !21261

bb.bp:                                            ; preds = %bb.bl, %bb.bk
  %i.gg = load ptr, ptr %i.ax, align 8, !dbg !21274, !alias.scope !20662, !nonnull !1328, !noundef !1328
    #dbg_value(ptr %i.gg, !5153, !DIExpression(), !19508)
  %i.gh = getelementptr inbounds nuw [56 x i8], ptr %i.gg, i64 %i.gb, !dbg !21275
    #dbg_value(ptr %i.gh, !5134, !DIExpression(), !19514)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.gh, ptr noundef nonnull align 8 dereferenceable(56) %i.aa, i64 56, i1 false), !dbg !21276
  %i.gi = add i64 %i.gb, 1, !dbg !21277
  store i64 %i.gi, ptr %i.ay, align 8, !dbg !21277, !alias.scope !20662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !21278
  %i.gj = add nuw nsw i64 %.sroa.04.0619, 2, !dbg !21279
    #dbg_value(i64 %i.gj, !19727, !DIExpression(), !20170)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !21280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !21281
  %i.gk = load i8, ptr %i.ae, align 8, !dbg !21281, !range !3742, !noundef !1328
  switch i8 %i.gk, label %bb.bq [
    i8 18, label %bb.br
    i8 20, label %bb.br
  ], !dbg !21281

bb.bq:                                            ; preds = %bb.bp
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions11InstructionEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ae)
          to label %bb.br unwind label %.loopexit.split-lp.loopexit, !dbg !21281

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !21281
  br label %.backedge, !dbg !21282

.backedge:                                        ; preds = %bb.br, %bb.ea, %bb.ey
  %.sroa.04.0.be = phi i64 [ %i.fc, %bb.ey ], [ %.sroa.04.3, %bb.ea ], [ %i.gj, %bb.br ] ; 2 uses
    #dbg_value(i64 %.sroa.04.0.be, !19727, !DIExpression(), !20170)
    #dbg_value(ptr %i.aj, !20035, !DIExpression(), !20172)
  %i.gl = load i64, ptr %i.ak, align 8, !dbg !21150, !noundef !1328 ; 3 uses
  %i.gm = icmp ult i64 %i.gl, 164703072086692426, !dbg !21151
  call void @llvm.assume(i1 %i.gm), !dbg !21152
  %i.gn = icmp ult i64 %.sroa.04.0.be, %i.gl, !dbg !21146
  br i1 %i.gn, label %bb.y, label %._crit_edge622, !dbg !21146

bb.bs:                                            ; preds = %bb.bo
  %i.go = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions11InstructionEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ab) #25
          to label %bb.bv unwind label %bb.bt, !dbg !21280

bb.bt:                                            ; preds = %.invoke987, %bb.fb, %bb.eo, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit.i, %bb.eh, %bb.ed, %bb.cy, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEB1c_.exit.i, %bb.u, %bb.m, %bb.c, %bb.es, %bb.er, %bb.dc, %bb.db, %bb.bw, %bb.bv, %bb.bs
  %i.gp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body, !dbg !21283

.body:                                            ; preds = %bb.fa, %bb.en, %bb.ek, %bb.eg, %bb.ec, %bb.cx, %bb.l, %bb.ac, %bb.aa, %bb.bt, %bb.t, %bb.b
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24, !dbg !21283
  unreachable, !dbg !21283

bb.bu:                                            ; preds = %bb.bh
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

.body296:                                         ; preds = %bb.bm, %bb.bv
  %.pn364 = phi { ptr, i32 } [ %.pn.ph, %bb.bv ], [ %i.ge, %bb.bm ] ; 4 uses
  %.sroa.063.1362 = phi i1 [ %.sroa.063.1.ph, %bb.bv ], [ %.sroa.063.0, %bb.bm ]
  %.sroa.062.1360 = phi i1 [ %.sroa.062.1.ph, %bb.bv ], [ %.sroa.062.0, %bb.bm ]
  %i.gr = load i8, ptr %i.ae, align 8, !dbg !21281, !range !3742, !noundef !1328
  switch i8 %i.gr, label %bb.bw [
    i8 18, label %bb.bx
    i8 20, label %bb.by
  ], !dbg !21281

bb.bv:                                            ; preds = %bb.bu, %bb.bs
  %.sroa.062.1.ph = phi i1 [ %.sroa.062.0, %bb.bs ], [ true, %bb.bu ]
  %.sroa.063.1.ph = phi i1 [ %.sroa.063.0, %bb.bs ], [ true, %bb.bu ]
  %.pn.ph = phi { ptr, i32 } [ %i.go, %bb.bs ], [ %i.gq, %bb.bu ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ad) #25
          to label %.body296 unwind label %bb.bt, !dbg !21281

bb.bw:                                            ; preds = %.body296
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions11InstructionEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ae) #25
          to label %.body337 unwind label %bb.bt, !dbg !21281

bb.bx:                                            ; preds = %.body296
  br i1 %.sroa.062.1360, label %.invoke987, label %.body337, !dbg !21281

bb.by:                                            ; preds = %.body296
  br i1 %.sroa.063.1362, label %.invoke987, label %.body337, !dbg !21281

.invoke987:                                       ; preds = %bb.by, %bb.bx
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cj) #25
          to label %.body337 unwind label %bb.bt, !dbg !21281

bb.bz:                                            ; preds = %bb.bb
  %i.gs = load ptr, ptr %i.bz, align 8, !dbg !21284, !nonnull !1328, !noundef !1328
    #dbg_value(ptr %i.gs, !20543, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20546)
    #dbg_value(ptr %i.gs, !20550, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20554)
  %i.gt = getelementptr inbounds nuw [56 x i8], ptr %i.gs, i64 %.sroa.04.0619, !dbg !21285 ; 8 uses
  %i.gu = load i8, ptr %i.gt, align 8, !dbg !21286, !range !3742, !noundef !1328
  %i.gv = icmp eq i8 %i.gu, 1, !dbg !21287
  br i1 %i.gv, label %bb.ca, label %bb.et, !dbg !21287

.invoke:                                          ; preds = %bb.bb, %bb.ba, %bb.y
  %i.gw = phi i64 [ %i.fc, %bb.ba ], [ %.sroa.04.0619, %bb.y ], [ %.sroa.04.0619, %bb.bb ]
  %i.gx = phi i64 [ %i.fg, %bb.ba ], [ %i.dn, %bb.y ], [ %i.fd, %bb.bb ]
  %i.gy = phi ptr [ @17, %bb.ba ], [ @16, %bb.y ], [ @20, %bb.bb ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.gw, i64 noundef %i.gx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gy) #28
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !21202

.cont:                                            ; preds = %.invoke
  unreachable

bb.ca:                                            ; preds = %bb.bz
    #dbg_value(ptr %i.gt, !20671, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !20674)
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gt, i64 24, !dbg !21288
  %i.ha = load i64, ptr %i.gz, align 8, !dbg !21288, !noundef !1328 ; 2 uses
    #dbg_value(ptr poison, !20676, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20685)
    #dbg_value(ptr poison, !20691, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20695)
    #dbg_value(i64 %i.ha, !20676, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20685)
    #dbg_value(i64 %i.ha, !20691, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20695)
    #dbg_value(ptr poison, !20688, !DIExpression(), !20696)
    #dbg_value(ptr @_RNvNtNtCs5yXxDE1DkoT_4tera2vm5state16MAGICAL_DUMP_VAR, !20689, !DIExpression(), !20697)
  %i.hb = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs5yXxDE1DkoT_4tera2vm5state16MAGICAL_DUMP_VAR, i64 8), align 8, !dbg !21289, !noundef !1328
    #dbg_value(ptr poison, !20678, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20685)
    #dbg_value(ptr poison, !20692, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20695)
    #dbg_value(i64 %i.hb, !20678, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20685)
    #dbg_value(i64 %i.hb, !20692, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20695)
    #dbg_value(ptr poison, !20698, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20704)
    #dbg_value(i64 %i.ha, !20698, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20704)
    #dbg_value(ptr poison, !20705, !DIExpression(), !20708)
    #dbg_value(ptr poison, !20699, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20704)
    #dbg_value(i64 %i.hb, !20699, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20704)
    #dbg_value(ptr poison, !20706, !DIExpression(), !20709)
    #dbg_value(i64 %i.ha, !20700, !DIExpression(), !20710)
    #dbg_value(i64 %i.ha, !20711, !DIExpression(), !20717)
    #dbg_value(i64 %i.ha, !20714, !DIExpression(), !20718)
  %i.hc = icmp eq i64 %i.ha, %i.hb, !dbg !21290
  br i1 %i.hc, label %bb.cb, label %bb.cc, !dbg !21290

bb.cb:                                            ; preds = %bb.ca
  %i.hd = load ptr, ptr @_RNvNtNtCs5yXxDE1DkoT_4tera2vm5state16MAGICAL_DUMP_VAR, align 8, !dbg !21289, !nonnull !1328, !noundef !1328
    #dbg_value(ptr %i.hd, !20699, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20704)
    #dbg_value(ptr %i.hd, !20678, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20685)
    #dbg_value(ptr %i.hd, !20692, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20695)
  %i.he = getelementptr inbounds nuw i8, ptr %i.gt, i64 16, !dbg !21291
  %i.hf = load ptr, ptr %i.he, align 8, !dbg !21291, !nonnull !1328, !noundef !1328
    #dbg_value(ptr %i.hf, !20676, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20685)
    #dbg_value(ptr %i.hf, !20691, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20695)
    #dbg_value(ptr %i.hf, !20698, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20704)
    #dbg_value(ptr %i.hf, !20712, !DIExpression(), !20717)
    #dbg_value(ptr %i.hd, !20713, !DIExpression(), !20717)
  %bcmp = call i32 @bcmp(ptr nonnull %i.hf, ptr nonnull %i.hd, i64 %i.ha), !dbg !21292
  %.not = icmp eq i32 %bcmp, 0, !dbg !21292
  br i1 %.not, label %bb.et, label %bb.cc, !dbg !20683

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !19875
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !19875
    #dbg_value(ptr %i.aj, !20601, !DIExpression(), !20728)
    #dbg_value(ptr %i.aj, !20352, !DIExpression(), !20731)
    #dbg_value(ptr %i.aj, !20361, !DIExpression(), !20734)
    #dbg_value(ptr %i.aj, !20367, !DIExpression(), !20737)
    #dbg_value(i64 poison, !20604, !DIExpression(), !20738)
    #dbg_value(i64 poison, !20618, !DIExpression(), !20740)
    #dbg_value(i64 poison, !20625, !DIExpression(), !20743)
    #dbg_value(i64 %i.fd, !20621, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20740)
    #dbg_value(i64 %i.fd, !20628, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20743)
    #dbg_value(ptr %i.gs, !20621, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20740)
    #dbg_value(ptr %i.gs, !20628, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20743)
    #dbg_value(!DIArgList(ptr %i.gs, i64 poison), !19861, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 56, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !20744)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !21293
  invoke fastcc void @_RNvYTNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions11InstructionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB9_5utils4SpanEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneB9_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.af)
          to label %bb.cd unwind label %.loopexit.split-lp.loopexit, !dbg !21294

bb.cd:                                            ; preds = %bb.cc
    #dbg_value(ptr %i.gt, !19861, !DIExpression(), !20744)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.gt, i64 32, i1 false), !dbg !21295
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gt, i64 32, !dbg !21295
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.hg, i64 24, i1 false), !dbg !21295
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.gt, ptr noundef nonnull align 8 dereferenceable(56) %i.x, i64 56, i1 false), !dbg !21296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !21297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !21298
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !dbg !21298
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !21299
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !21299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !21300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !21300
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !21301
  %i.hh = load i8, ptr %i.z, align 8, !dbg !21302, !range !3742, !noundef !1328
  %.not252 = icmp eq i8 %i.hh, 1, !dbg !21303     ; 2 uses
  br i1 %.not252, label %bb.ce, label %bb.cg, !dbg !21303, !prof !3833

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i64 24, i1 false), !dbg !21304
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !21305
    #dbg_value(i64 8, !20745, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19534)
    #dbg_value(i64 8, !20756, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19542)
    #dbg_value(i64 8, !20773, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19545)
    #dbg_value(i64 24, !20745, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19534)
    #dbg_value(i64 24, !20756, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19542)
    #dbg_value(i64 24, !20773, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19545)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !20771, !DIExpression(), !19542)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !20777, !DIExpression(), !19545)
    #dbg_value(i8 0, !20778, !DIExpression(), !19545)
    #dbg_value(i64 8, !20780, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19557)
    #dbg_value(i64 8, !20800, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19560)
    #dbg_value(i64 24, !20780, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19557)
    #dbg_value(i64 24, !20800, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19560)
    #dbg_value(i1 false, !20784, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19557)
    #dbg_value(i64 24, !20785, !DIExpression(), !19561)
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !dbg !21306
  %i.hi = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #26, !dbg !21307 ; 3 uses
  %i.hj = icmp eq ptr %i.hi, null, !dbg !21308
  br i1 %i.hj, label %bb.cf, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit, !dbg !21309, !prof !3837

bb.cf:                                            ; preds = %bb.ce
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #28
          to label %.noexc298 unwind label %bb.ej, !dbg !21310

.noexc298:                                        ; preds = %bb.cf
  unreachable, !dbg !21310

bb.cg:                                            ; preds = %bb.cd
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #28
          to label %bb.x unwind label %bb.em, !dbg !21311

bb.ch:                                            ; preds = %bb.dx
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEB1c_.exit336, !dbg !21312

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.ce
    #dbg_value(ptr %i.hi, !19982, !DIExpression(), !20802)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hi, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !dbg !21313
    #dbg_value(ptr %i.hi, !19960, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20803)
    #dbg_value(i64 1, !19960, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20803)
    #dbg_value(i64 1, !19961, !DIExpression(), !20804)
    #dbg_value(i64 1, !19989, !DIExpression(), !20805)
    #dbg_value(i64 1, !19990, !DIExpression(), !20805)
    #dbg_value(ptr %i.hi, !19962, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20806)
    #dbg_value(i64 1, !19962, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20806)
    #dbg_value(ptr %i.hi, !19988, !DIExpression(), !20805)
  store i64 1, ptr %i.v, align 8, !dbg !21314
  store ptr %i.hi, ptr %i.cn, align 8, !dbg !21314
  store i64 1, ptr %i.co, align 8, !dbg !21314
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !21315
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !dbg !21316
    #dbg_value(i64 %i.fc, !19743, !DIExpression(), !20807)
    #dbg_value(ptr %i.aj, !20035, !DIExpression(), !20809)
  %i.hl = load i64, ptr %i.ak, align 8, !dbg !21317, !noundef !1328 ; 2 uses
  %i.hm = icmp ult i64 %i.hl, 164703072086692426, !dbg !21318
  call void @llvm.assume(i1 %i.hm), !dbg !21319
  %i.hn = icmp samesign ult i64 %i.fc, %i.hl, !dbg !21320
  br i1 %i.hn, label %.lr.ph618, label %.loopexit, !dbg !21320

.lr.ph618:                                        ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit, %bb.cv
  %.sroa.022.0617 = phi i64 [ %i.iw, %bb.cv ], [ %i.fc, %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit ] ; 15 uses
    #dbg_value(i64 %.sroa.022.0617, !19743, !DIExpression(), !20807)
    #dbg_value(ptr %i.ag, !20474, !DIExpression(), !20811)
    #dbg_value(ptr %i.ag, !20481, !DIExpression(), !20814)
    #dbg_value(ptr %i.ag, !20490, !DIExpression(), !20817)
    #dbg_value(ptr %i.ag, !20496, !DIExpression(), !20820)
    #dbg_value(i64 %.sroa.022.0617, !20477, !DIExpression(), !20821)
    #dbg_value(i64 %.sroa.022.0617, !20505, !DIExpression(), !20823)
    #dbg_value(i64 %.sroa.022.0617, !20515, !DIExpression(), !20826)
  %i.ho = load i64, ptr %i.by, align 8, !dbg !21321, !noundef !1328 ; 2 uses
    #dbg_value(ptr poison, !20508, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20823)
    #dbg_value(ptr poison, !20518, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20826)
    #dbg_value(i64 %i.ho, !20508, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20823)
    #dbg_value(i64 %i.ho, !20518, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20826)
  %i.hp = icmp ult i64 %.sroa.022.0617, %i.ho, !dbg !21322
  br i1 %i.hp, label %bb.ci, label %.invoke988, !dbg !21322

bb.ci:                                            ; preds = %.lr.ph618
  %i.hq = load ptr, ptr %i.bx, align 8, !dbg !21323, !nonnull !1328, !noundef !1328
    #dbg_value(ptr %i.hq, !20508, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20823)
    #dbg_value(ptr %i.hq, !20518, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20826)
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 %.sroa.022.0617, !dbg !21324
  %i.hs = load i8, ptr %i.hr, align 1, !dbg !21325, !range !3918, !noundef !1328
  %i.ht = trunc nuw i8 %i.hs to i1, !dbg !21325
  br i1 %i.ht, label %.loopexit, label %bb.cj, !dbg !21325

.thread395.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cm, %bb.cw, %.invoke988, %bb.dq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread379

bb.cj:                                            ; preds = %bb.ci
    #dbg_value(ptr %i.aj, !20522, !DIExpression(), !20834)
    #dbg_value(ptr %i.aj, !20128, !DIExpression(), !20837)
    #dbg_value(ptr %i.aj, !20132, !DIExpression(), !20840)
    #dbg_value(ptr %i.aj, !20136, !DIExpression(), !20843)
    #dbg_value(i64 %.sroa.022.0617, !20525, !DIExpression(), !20844)
    #dbg_value(i64 %.sroa.022.0617, !20540, !DIExpression(), !20846)
    #dbg_value(i64 %.sroa.022.0617, !20547, !DIExpression(), !20849)
    #dbg_value(ptr poison, !20543, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20846)
    #dbg_value(ptr poison, !20550, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20849)
    #dbg_value(i64 poison, !20543, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20846)
    #dbg_value(i64 poison, !20550, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20849)
  %i.hu = load ptr, ptr %i.bz, align 8, !dbg !21326, !nonnull !1328, !noundef !1328
    #dbg_value(ptr %i.hu, !20543, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20846)
    #dbg_value(ptr %i.hu, !20550, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20849)
  %i.hv = getelementptr inbounds nuw [56 x i8], ptr %i.hu, i64 %.sroa.022.0617, !dbg !21327
  %i.hw = load i8, ptr %i.hv, align 8, !dbg !21328, !range !3742, !noundef !1328
  %i.hx = icmp eq i8 %i.hw, 2, !dbg !21329
  br i1 %i.hx, label %bb.ck, label %bb.dd, !dbg !21329

end_hunk_1
begin_hunk_2_@_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk8optimize:bb.a
    #dbg_value(ptr %.sroa.4220.0.copyload, !19795, !DIExpression(), !20942)
    #dbg_value(ptr %.sroa.4220.0.copyload, !19796, !DIExpression(), !20943)
    #dbg_value(ptr %.sroa.4220.0.copyload, !20944, !DIExpression(), !20950)
    #dbg_value(ptr undef, !19808, !DIExpression(), !19814)
    #dbg_value(i64 %.sroa.5221.0.copyload, !20947, !DIExpression(), !20950)
  %i.it = icmp ult i64 %.sroa.5221.0.copyload, 192153584101141163, !dbg !21367
  call void @llvm.assume(i1 %i.it), !dbg !21368
  %i.iu = getelementptr inbounds nuw [48 x i8], ptr %.sroa.4220.0.copyload, i64 %.sroa.5221.0.copyload, !dbg !21369
    #dbg_value(ptr %i.iu, !19797, !DIExpression(), !20951)
    #dbg_value(ptr undef, !19805, !DIExpression(), !19807)
    #dbg_value(ptr undef, !19766, !DIExpression(), !19773)
    #dbg_value(i64 %.sroa.0219.0.copyload, !20048, !DIExpression(), !20954)
  %i.iv = icmp sgt i64 %.sroa.0219.0.copyload, -1, !dbg !21370
  call void @llvm.assume(i1 %i.iv), !dbg !21370
    #dbg_value(i64 %.sroa.0219.0.copyload, !19798, !DIExpression(), !20955)
  store ptr %.sroa.4220.0.copyload, ptr %i.i, align 8, !dbg !21371
  store i64 %.sroa.0219.0.copyload, ptr %i.cq, align 8, !dbg !21371
  store ptr %.sroa.4220.0.copyload, ptr %i.cr, align 8, !dbg !21371
  store ptr %i.iu, ptr %i.cs, align 8, !dbg !21371
  invoke void @_RNvXs0_NtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB7_3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendBY_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.i)
          to label %bb.cu unwind label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEB1c_.exit.thread, !dbg !21372

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !21373
  %i.iw = add nuw nsw i64 %.sroa.022.0617, 1, !dbg !21374 ; 3 uses
    #dbg_value(i64 %i.iw, !19743, !DIExpression(), !20807)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !21360
  %i.ix = load i8, ptr %i.t, align 8, !dbg !21360, !range !3742, !noundef !1328
  %i.iy = icmp eq i8 %i.ix, 2, !dbg !21360
  br i1 %i.iy, label %bb.cv, label %bb.cw, !dbg !21360

bb.cv:                                            ; preds = %bb.cw, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !21360
    #dbg_value(i64 %i.iw, !19743, !DIExpression(), !20807)
    #dbg_value(ptr %i.aj, !20035, !DIExpression(), !20809)
  %i.iz = load i64, ptr %i.ak, align 8, !dbg !21317, !noundef !1328 ; 2 uses
  %i.ja = icmp ult i64 %i.iz, 164703072086692426, !dbg !21318
  call void @llvm.assume(i1 %i.ja), !dbg !21319
  %i.jb = icmp samesign ult i64 %i.iw, %i.iz, !dbg !21320
  br i1 %i.jb, label %.lr.ph618, label %.loopexit, !dbg !21320

bb.cw:                                            ; preds = %bb.cu
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions11InstructionEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.t)
          to label %bb.cv unwind label %.thread395.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !21360

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEB1c_.exit: ; preds = %bb.cy
  %i.jc = load i8, ptr %i.t, align 8, !dbg !21360, !range !3742, !noundef !1328
  %i.jd = icmp eq i8 %i.jc, 2, !dbg !21360
  br i1 %i.jd, label %bb.da, label %bb.db, !dbg !21360

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEB1c_.exit.thread: ; preds = %bb.ct
  %i.je = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jf = load i8, ptr %i.t, align 8, !dbg !21360, !range !3742, !noundef !1328
  %i.jg = icmp eq i8 %i.jf, 2, !dbg !21360
  br i1 %i.jg, label %.thread379, label %bb.db, !dbg !21360

.body299.thread:                                  ; preds = %bb.cq, %.body299.thread402
  %eh.lpad-body300401 = phi { ptr, i32 } [ %i.ip, %.body299.thread402 ], [ %i.in, %bb.cq ] ; 3 uses
    #dbg_value(ptr %i.s, !2705, !DIExpression(), !19593)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.cy unwind label %bb.cx, !dbg !21375

bb.cx:                                            ; preds = %.body299.thread
  %i.jh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
    #dbg_value(ptr %i.s, !2710, !DIExpression(), !19595)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5yXxDE1DkoT_4tera5utils4SpanENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body unwind label %bb.cz, !dbg !21376

bb.cy:                                            ; preds = %.body299.thread
    #dbg_value(ptr %i.s, !2710, !DIExpression(), !19597)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5yXxDE1DkoT_4tera5utils4SpanENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEB1c_.exit unwind label %bb.bt, !dbg !21377

bb.cz:                                            ; preds = %bb.cx
  %i.ji = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24, !dbg !21375
  unreachable, !dbg !21375

bb.da:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEB1c_.exit
  br i1 %.not247, label %.thread379, label %bb.dc, !dbg !21360

bb.db:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEB1c_.exit.thread, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEB1c_.exit
  %eh.lpad-body300400406 = phi { ptr, i32 } [ %i.je, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEB1c_.exit.thread ], [ %eh.lpad-body300401, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEB1c_.exit ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions11InstructionEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.t) #25
          to label %.thread379 unwind label %bb.bt, !dbg !21360

bb.dc:                                            ; preds = %bb.da
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cp) #25
          to label %.thread379 unwind label %bb.bt, !dbg !21360

bb.dd:                                            ; preds = %bb.cj
    #dbg_value(ptr %i.aj, !20035, !DIExpression(), !20957)
    #dbg_value(ptr %i.ag, !20474, !DIExpression(), !20959)
    #dbg_value(ptr %i.ag, !20481, !DIExpression(), !20962)
    #dbg_value(ptr %i.ag, !20490, !DIExpression(), !20965)
    #dbg_value(ptr %i.ag, !20496, !DIExpression(), !20968)
    #dbg_value(i64 %.sroa.022.0617, !20477, !DIExpression(), !20969)
    #dbg_value(i64 %.sroa.022.0617, !20505, !DIExpression(), !20971)
    #dbg_value(i64 %.sroa.022.0617, !20515, !DIExpression(), !20974)
    #dbg_value(i64 poison, !20508, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20971)
    #dbg_value(i64 poison, !20518, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20974)
    #dbg_value(ptr %i.hq, !20508, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20971)
    #dbg_value(ptr %i.hq, !20518, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20974)
    #dbg_value(ptr %i.aj, !20522, !DIExpression(), !20976)
    #dbg_value(ptr %i.aj, !20128, !DIExpression(), !20979)
    #dbg_value(ptr %i.aj, !20132, !DIExpression(), !20982)
    #dbg_value(ptr %i.aj, !20136, !DIExpression(), !20985)
    #dbg_value(i64 %.sroa.022.0617, !20525, !DIExpression(), !20986)
    #dbg_value(i64 %.sroa.022.0617, !20540, !DIExpression(), !20988)
    #dbg_value(i64 %.sroa.022.0617, !20547, !DIExpression(), !20991)
    #dbg_value(ptr poison, !20543, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20988)
    #dbg_value(ptr poison, !20550, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20991)
    #dbg_value(i64 poison, !20543, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20988)
    #dbg_value(i64 poison, !20550, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20991)
  %i.jj = load ptr, ptr %i.bz, align 8, !dbg !21378, !nonnull !1328, !noundef !1328
    #dbg_value(ptr %i.jj, !20543, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20988)
    #dbg_value(ptr %i.jj, !20550, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20991)
  %i.jk = getelementptr inbounds nuw [56 x i8], ptr %i.jj, i64 %.sroa.022.0617, !dbg !21379
  %i.jl = load i8, ptr %i.jk, align 8, !dbg !21380, !range !3742, !noundef !1328
  %i.jm = icmp eq i8 %i.jl, 9, !dbg !21381
    #dbg_value(i1 %i.jm, !19748, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20998)
  br i1 %i.jm, label %bb.de, label %.loopexit, !dbg !21382

.loopexit:                                        ; preds = %bb.ci, %bb.cv, %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit, %bb.dd
  %.sroa.022.0433 = phi i64 [ %.sroa.022.0617, %bb.dd ], [ %i.fc, %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit ], [ %.sroa.022.0617, %bb.ci ], [ %i.iw, %bb.cv ]
    #dbg_value(ptr %i.v, !20999, !DIExpression(), !21003)
  %i.jn = load i64, ptr %i.co, align 8, !dbg !21383, !noundef !1328 ; 3 uses
  %i.jo = icmp ult i64 %i.jn, 384307168202282326, !dbg !21384
  call void @llvm.assume(i1 %i.jo), !dbg !21385
  %i.jp = icmp samesign ugt i64 %i.jn, 1, !dbg !21386
  br i1 %i.jp, label %bb.dm, label %bb.dl, !dbg !21386

bb.de:                                            ; preds = %bb.dd
    #dbg_value(ptr %i.ai, !20035, !DIExpression(), !21005)
  %i.jq = load i64, ptr %i.ay, align 8, !dbg !21387, !noundef !1328 ; 2 uses
  %i.jr = icmp ult i64 %i.jq, 164703072086692426, !dbg !21388
  call void @llvm.assume(i1 %i.jr), !dbg !21389
    #dbg_value(ptr %i.ah, !20254, !DIExpression(), !21007)
    #dbg_value(ptr %i.ah, !20262, !DIExpression(), !21010)
    #dbg_value(ptr %i.ah, !20273, !DIExpression(), !21013)
    #dbg_value(ptr %i.ah, !20279, !DIExpression(), !21016)
    #dbg_value(i64 %.sroa.022.0617, !20257, !DIExpression(), !21017)
    #dbg_value(i64 %.sroa.022.0617, !20290, !DIExpression(), !21019)
    #dbg_value(i64 %.sroa.022.0617, !20298, !DIExpression(), !21022)
  %i.js = load i64, ptr %i.bk, align 8, !dbg !21390, !noundef !1328 ; 2 uses
    #dbg_value(ptr poison, !20293, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21019)
    #dbg_value(ptr poison, !20301, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21022)
    #dbg_value(i64 %i.js, !20293, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21019)
    #dbg_value(i64 %i.js, !20301, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21022)
  %i.jt = icmp ult i64 %.sroa.022.0617, %i.js, !dbg !21391
  br i1 %i.jt, label %bb.df, label %.invoke988, !dbg !21391

bb.df:                                            ; preds = %bb.de
  %i.ju = load ptr, ptr %i.bj, align 8, !dbg !21392, !nonnull !1328, !noundef !1328
    #dbg_value(ptr %i.ju, !20293, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21019)
    #dbg_value(ptr %i.ju, !20301, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21022)
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %.sroa.022.0617, !dbg !21393
  store i64 %i.jq, ptr %i.jv, align 8, !dbg !21394
    #dbg_value(ptr %i.ai, !19869, !DIExpression(), !21029)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !21395
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.436), !dbg !21396
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.436.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !dbg !21396
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !dbg !21397
  store i8 57, ptr %i.p, align 8, !dbg !21395
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.436.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.436, i64 31, i1 false), !dbg !21395
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.436), !dbg !21398
    #dbg_value(ptr %i.ai, !5128, !DIExpression(), !19600)
    #dbg_value(ptr %i.ai, !5136, !DIExpression(), !19602)
    #dbg_declare(ptr %i.p, !5132, !DIExpression(), !19603)
    #dbg_value(i64 56, !5141, !DIExpression(), !19606)
  %i.jw = load i64, ptr %i.ay, align 8, !dbg !21399, !alias.scope !21030, !noundef !1328 ; 3 uses
    #dbg_value(i64 %i.jw, !5133, !DIExpression(), !19609)
    #dbg_value(i64 %i.jw, !5152, !DIExpression(), !19611)
    #dbg_value(ptr %i.ai, !5150, !DIExpression(), !19612)
  %i.jx = load i64, ptr %i.ai, align 8, !dbg !21400, !range !5155, !alias.scope !21030, !noundef !1328
  %i.jy = icmp eq i64 %i.jw, %i.jx, !dbg !21401
  br i1 %i.jy, label %bb.dg, label %bb.dj, !dbg !21401

bb.dg:                                            ; preds = %bb.df
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions11InstructionINtNtB7_3vec3VecNtNtBT_5utils4SpanEEE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %bb.dj unwind label %bb.dh, !dbg !21402, !noalias !21031

bb.dh:                                            ; preds = %bb.dg
  %i.jz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions11InstructionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBI_5utils4SpanEEEBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.p) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEB1c_.exit336 unwind label %bb.di, !dbg !21403

bb.di:                                            ; preds = %bb.dh
  %i.ka = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24, !dbg !21404
  unreachable, !dbg !21404

.invoke988:                                       ; preds = %bb.de, %.lr.ph618, %bb.cl, %bb.ck
  %i.kb = phi i64 [ %i.ie, %bb.cl ], [ %i.ia, %bb.ck ], [ %i.ho, %.lr.ph618 ], [ %i.js, %bb.de ]
  %i.kc = phi ptr [ @23, %bb.cl ], [ @22, %bb.ck ], [ @21, %.lr.ph618 ], [ @25, %bb.de ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.022.0617, i64 noundef %i.kb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kc) #28
          to label %.cont989 unwind label %.thread395.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !20807

.cont989:                                         ; preds = %.invoke988
  unreachable

bb.dj:                                            ; preds = %bb.dg, %bb.df
  %i.kd = load ptr, ptr %i.ax, align 8, !dbg !21405, !alias.scope !21030, !nonnull !1328, !noundef !1328
    #dbg_value(ptr %i.kd, !5153, !DIExpression(), !19611)
  %i.ke = getelementptr inbounds nuw [56 x i8], ptr %i.kd, i64 %i.jw, !dbg !21406
    #dbg_value(ptr %i.ke, !5134, !DIExpression(), !19617)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ke, ptr noundef nonnull align 8 dereferenceable(56) %i.p, i64 56, i1 false), !dbg !21407
  %i.kf = add i64 %i.jw, 1, !dbg !21408
  store i64 %i.kf, ptr %i.ay, align 8, !dbg !21408, !alias.scope !21030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !21409
  %i.kg = add nuw nsw i64 %.sroa.022.0617, 1, !dbg !21410
    #dbg_value(i64 %i.kg, !19727, !DIExpression(), !20170)
  br label %bb.dk, !dbg !21411

bb.dk:                                            ; preds = %bb.dz, %bb.dj
  %.sroa.04.2 = phi i64 [ %.sroa.022.0433, %bb.dz ], [ %i.kg, %bb.dj ], !dbg !20998
    #dbg_value(i64 %.sroa.04.2, !19727, !DIExpression(), !20170)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !21412
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECs5yXxDE1DkoT_4tera.exit, !dbg !21413

bb.dl:                                            ; preds = %.loopexit
    #dbg_value(ptr %i.ai, !19869, !DIExpression(), !21032)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !21414
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.440.sroa.4), !dbg !21415
    #dbg_value(ptr %i.v, !20005, !DIExpression(), !21033)
    #dbg_value(ptr %i.v, !20010, !DIExpression(), !21034)
    #dbg_value(ptr %i.v, !21035, !DIExpression(), !21041)
    #dbg_value(ptr %i.v, !20999, !DIExpression(), !21043)
  %i.kh = icmp eq i64 %i.jn, 0, !dbg !21416
  br i1 %i.kh, label %bb.dq, label %bb.dr, !dbg !21416, !prof !3837

bb.dm:                                            ; preds = %.loopexit
    #dbg_value(ptr %i.ai, !19869, !DIExpression(), !21044)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !21417
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.438), !dbg !21418
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.438.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !dbg !21418
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !dbg !21419
  store i8 56, ptr %i.o, align 8, !dbg !21417
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.438.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.438, i64 31, i1 false), !dbg !21417
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.438), !dbg !21420
    #dbg_value(ptr %i.ai, !5128, !DIExpression(), !19620)
    #dbg_value(ptr %i.ai, !5136, !DIExpression(), !19622)
    #dbg_declare(ptr %i.o, !5132, !DIExpression(), !19623)
    #dbg_value(i64 56, !5141, !DIExpression(), !19626)
  %i.ki = load i64, ptr %i.ay, align 8, !dbg !21421, !alias.scope !21045, !noundef !1328 ; 3 uses
    #dbg_value(i64 %i.ki, !5133, !DIExpression(), !19629)
    #dbg_value(i64 %i.ki, !5152, !DIExpression(), !19631)
    #dbg_value(ptr %i.ai, !5150, !DIExpression(), !19632)
  %i.kj = load i64, ptr %i.ai, align 8, !dbg !21422, !range !5155, !alias.scope !21045, !noundef !1328
  %i.kk = icmp eq i64 %i.ki, %i.kj, !dbg !21423
  br i1 %i.kk, label %bb.dn, label %bb.dz, !dbg !21423

bb.dn:                                            ; preds = %bb.dm
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions11InstructionINtNtB7_3vec3VecNtNtBT_5utils4SpanEEE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %bb.dz unwind label %bb.do, !dbg !21424, !noalias !21046

bb.do:                                            ; preds = %bb.dn
  %i.kl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions11InstructionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBI_5utils4SpanEEEBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.o) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEB1c_.exit336 unwind label %bb.dp, !dbg !21425

bb.dp:                                            ; preds = %bb.do
  %i.km = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24, !dbg !21426
  unreachable, !dbg !21426

bb.dq:                                            ; preds = %bb.dl
    #dbg_value(i64 -1, !19834, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21047)
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #28
          to label %bb.x unwind label %.thread395.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !21427

bb.dr:                                            ; preds = %bb.dl
  store i64 0, ptr %i.co, align 8, !dbg !21428
    #dbg_value(i64 poison, !20048, !DIExpression(), !21050)
    #dbg_value(i1 true, !20055, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !21052)
  %i.kn = load ptr, ptr %i.cn, align 8, !dbg !21429, !nonnull !1328, !noundef !1328 ; 2 uses
    #dbg_value(ptr %i.kn, !21059, !DIExpression(), !21064)
  %.sroa.068.0.copyload = load i64, ptr %i.kn, align 8, !dbg !21430
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kn, i64 8, !dbg !21430
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.440.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.469.0..sroa_idx, i64 16, i1 false), !dbg !21430
    #dbg_value(i64 %.sroa.068.0.copyload, !19834, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21047)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !dbg !21431
  store i8 1, ptr %i.n, align 8, !dbg !21414
  store i64 %.sroa.068.0.copyload, ptr %.sroa.440.sroa.3.0..sroa.440.0..sroa_idx.sroa_idx, align 8, !dbg !21414
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.440.sroa.4.0..sroa.440.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.440.sroa.4, i64 16, i1 false), !dbg !21414
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.440.sroa.4), !dbg !21432
    #dbg_value(ptr %i.ai, !5128, !DIExpression(), !19639)
    #dbg_value(ptr %i.ai, !5136, !DIExpression(), !19641)
    #dbg_declare(ptr %i.n, !5132, !DIExpression(), !19642)
    #dbg_value(i64 56, !5141, !DIExpression(), !19645)
  %i.ko = load i64, ptr %i.ay, align 8, !dbg !21433, !alias.scope !21065, !noundef !1328 ; 3 uses
    #dbg_value(i64 %i.ko, !5133, !DIExpression(), !19648)
    #dbg_value(i64 %i.ko, !5152, !DIExpression(), !19650)
    #dbg_value(ptr %i.ai, !5150, !DIExpression(), !19651)
  %i.kp = load i64, ptr %i.ai, align 8, !dbg !21434, !range !5155, !alias.scope !21065, !noundef !1328
  %i.kq = icmp eq i64 %i.ko, %i.kp, !dbg !21435
  br i1 %i.kq, label %bb.ds, label %bb.dv, !dbg !21435

bb.ds:                                            ; preds = %bb.dr
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions11InstructionINtNtB7_3vec3VecNtNtBT_5utils4SpanEEE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %bb.dv unwind label %bb.dt, !dbg !21436, !noalias !21066

bb.dt:                                            ; preds = %bb.ds
  %i.kr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions11InstructionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBI_5utils4SpanEEEBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.n) #25
          to label %bb.ef unwind label %bb.du, !dbg !21437

bb.du:                                            ; preds = %bb.dt
  %i.ks = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24, !dbg !21438
  unreachable, !dbg !21438

bb.dv:                                            ; preds = %bb.ds, %bb.dr
  %i.kt = load ptr, ptr %i.ax, align 8, !dbg !21439, !alias.scope !21065, !nonnull !1328, !noundef !1328
    #dbg_value(ptr %i.kt, !5153, !DIExpression(), !19650)
  %i.ku = getelementptr inbounds nuw [56 x i8], ptr %i.kt, i64 %i.ko, !dbg !21440
    #dbg_value(ptr %i.ku, !5134, !DIExpression(), !19656)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ku, ptr noundef nonnull align 8 dereferenceable(56) %i.n, i64 56, i1 false), !dbg !21441
  %i.kv = add i64 %i.ko, 1, !dbg !21442
  store i64 %i.kv, ptr %i.ay, align 8, !dbg !21442, !alias.scope !21065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !21443
    #dbg_value(i64 %i.fc, !19727, !DIExpression(), !20170)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !21412
    #dbg_value(ptr %i.v, !2659, !DIExpression(), !19658)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %bb.dx unwind label %bb.dw, !dbg !21444

bb.dw:                                            ; preds = %bb.dv
  %i.kw = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.v, !2664, !DIExpression(), !19660)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEB1c_.exit336 unwind label %bb.dy, !dbg !21445

bb.dx:                                            ; preds = %bb.dv
    #dbg_value(ptr %i.v, !2664, !DIExpression(), !19662)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECs5yXxDE1DkoT_4tera.exit unwind label %bb.ch, !dbg !21446

bb.dy:                                            ; preds = %bb.dw
  %i.kx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24, !dbg !21444
  unreachable, !dbg !21444

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECs5yXxDE1DkoT_4tera.exit: ; preds = %bb.dx, %bb.dk
  %.sroa.04.3 = phi i64 [ %.sroa.04.2, %bb.dk ], [ %i.fc, %bb.dx ], !dbg !20998
    #dbg_value(i64 %.sroa.04.3, !19727, !DIExpression(), !20170)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !21413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !21312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !21447
  %i.ky = load i8, ptr %i.z, align 8, !dbg !21447, !range !3742, !noundef !1328
  %i.kz = icmp eq i8 %i.ky, 1, !dbg !21447
  br i1 %i.kz, label %bb.ea, label %bb.eb, !dbg !21447

bb.dz:                                            ; preds = %bb.dn, %bb.dm
  %i.la = load ptr, ptr %i.ax, align 8, !dbg !21448, !alias.scope !21045, !nonnull !1328, !noundef !1328
    #dbg_value(ptr %i.la, !5153, !DIExpression(), !19631)
  %i.lb = getelementptr inbounds nuw [56 x i8], ptr %i.la, i64 %i.ki, !dbg !21449
    #dbg_value(ptr %i.lb, !5134, !DIExpression(), !19666)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.lb, ptr noundef nonnull align 8 dereferenceable(56) %i.o, i64 56, i1 false), !dbg !21450
  %i.lc = add i64 %i.ki, 1, !dbg !21451
  store i64 %i.lc, ptr %i.ay, align 8, !dbg !21451, !alias.scope !21045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !21452
    #dbg_value(i64 %.sroa.022.0433, !19727, !DIExpression(), !20170)
  br label %bb.dk, !dbg !21453

bb.ea:                                            ; preds = %bb.eb, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECs5yXxDE1DkoT_4tera.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !21447
  br label %.backedge, !dbg !21282

bb.eb:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECs5yXxDE1DkoT_4tera.exit
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions11InstructionEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.z)
          to label %bb.ea unwind label %.loopexit.split-lp.loopexit, !dbg !21447

.thread379:                                       ; preds = %.thread395.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEB1c_.exit.thread, %bb.db, %bb.da, %bb.dc
  %.pn248386 = phi { ptr, i32 } [ %i.je, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEEB1c_.exit.thread ], [ %eh.lpad-body300400406, %bb.db ], [ %eh.lpad-body300401, %bb.da ], [ %eh.lpad-body300401, %bb.dc ], [ %lpad.loopexit.split-lp, %.thread395.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
    #dbg_value(ptr %i.u, !2705, !DIExpression(), !19668)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.ed unwind label %bb.ec, !dbg !21454

bb.ec:                                            ; preds = %.thread379
  %i.ld = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
    #dbg_value(ptr %i.u, !2710, !DIExpression(), !19670)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5yXxDE1DkoT_4tera5utils4SpanENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.body unwind label %bb.ee, !dbg !21455

bb.ed:                                            ; preds = %.thread379
    #dbg_value(ptr %i.u, !2710, !DIExpression(), !19672)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5yXxDE1DkoT_4tera5utils4SpanENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.ef unwind label %bb.bt, !dbg !21456
end_hunk_2
begin_hunk_3_@_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapINtNtBb_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE6appendB1w_:bb.a
  br i1 %.not54.i, label %bb.m, label %bb.k, !dbg !22799, !prof !22567

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !dbg !22803, !noalias !22498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false), !dbg !22804, !noalias !22498
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 24, !dbg !22804
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !dbg !22805, !noalias !22498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false), !dbg !22804, !noalias !22498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !22806, !noalias !22498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !22807, !noalias !22498
  call void @llvm.experimental.noalias.scope.decl(metadata !22568), !dbg !22808
  call void @llvm.experimental.noalias.scope.decl(metadata !22569), !dbg !22808
    #dbg_value(i64 0, !22570, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22080)
    #dbg_value(ptr %i.am, !22570, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22080)
    #dbg_value(ptr %0, !22586, !DIExpression(), !22080)
    #dbg_declare(ptr poison, !22591, !DIExpression(), !22081)
    #dbg_value(ptr %0, !22587, !DIExpression(), !22082)
    #dbg_value(ptr %0, !22593, !DIExpression(), !22086)
    #dbg_value(ptr %0, !22588, !DIExpression(), !22082)
  %i.ba = load ptr, ptr %0, align 8, !dbg !22809, !alias.scope !22596, !noundef !1328 ; 2 uses
  %.not.i68.i = icmp eq ptr %i.ba, null, !dbg !22809
  br i1 %.not.i68.i, label %.thread197.i, label %bb.l, !dbg !22810

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22809
    #dbg_value(ptr %0, !22590, !DIExpression(), !22087)
    #dbg_value(ptr %0, !22597, !DIExpression(), !22090)
  %i.bc = load i64, ptr %i.bb, align 8, !dbg !22811, !alias.scope !22596, !noundef !1328
    #dbg_value(ptr %i.ba, !22589, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22091)
    #dbg_value(i64 %i.bc, !22589, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22091)
  %.sroa.611.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24, !dbg !22812 ; 8 uses
  invoke void @_RINvMsq_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB8_4node7NodeRefNtNtB11_6marker3MutINtNtBc_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueNtB1l_14LeafOrInternalE11lower_boundB1C_EB21_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.611.0..sroa_idx.i.i, ptr noundef nonnull %i.ba, i64 noundef %i.bc, i64 noundef 0, ptr nonnull %i.am)
          to label %bb.q unwind label %bb.p, !dbg !22813, !noalias !22465

.thread197.i:                                     ; preds = %bb.k
    #dbg_value(ptr %0, !22600, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !22094)
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24, !dbg !22814 ; 2 uses
  store ptr null, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !dbg !22814, !alias.scope !22568, !noalias !22498
  %.sink.i198.i = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !22815
  store ptr %0, ptr %i.aj, align 8, !dbg !22816, !alias.scope !22568, !noalias !22498
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !22816
  store ptr %i.as, ptr %i.bd, align 8, !dbg !22816, !alias.scope !22568, !noalias !22498
  %i.be = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !22816
  store ptr %.sink.i198.i, ptr %i.be, align 8, !dbg !22816, !alias.scope !22568, !noalias !22498
    #dbg_value(ptr %i.aj, !22605, !DIExpression(), !22101)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !22817, !noalias !22612
    #dbg_value(ptr %i.aj, !22630, !DIExpression(), !22119)
    #dbg_declare(ptr %i.l, !22638, !DIExpression(), !22123)
    #dbg_value(ptr %i.aj, !22626, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !22124)
  br label %.thread132.i, !dbg !22818

bb.m:                                             ; preds = %bb.j, %.thread.i
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #28
          to label %bb.n unwind label %.body.thread122.i, !dbg !22819, !noalias !22465

bb.n:                                             ; preds = %bb.x, %bb.m
  unreachable

bb.o:                                             ; preds = %.body112.i, %bb.p
  %.pn63.i = phi { ptr, i32 } [ %i.bg, %bb.p ], [ %.pn.pn.pn.i, %.body112.i ] ; 2 uses
  %.sroa.014.2.i = phi i1 [ %.sroa.014.3.i, %bb.p ], [ false, %.body112.i ], !dbg !22800 ; 2 uses
  %.sroa.010.0.i = phi i8 [ %.sroa.010.1.i, %bb.p ], [ %.sroa.010.3.i, %.body112.i ], !dbg !22803 ; 2 uses
  %.sroa.08.0.i = phi i8 [ %.sroa.08.1.i, %bb.p ], [ %.sroa.08.3.i, %.body112.i ], !dbg !22820
  %i.bf = trunc nuw i8 %.sroa.08.0.i to i1, !dbg !22821
  br i1 %i.bf, label %bb.bu, label %bb.ar, !dbg !22821

bb.p:                                             ; preds = %.loopexit179.i, %bb.z, %bb.y, %bb.x, %bb.v, %bb.t, %bb.r, %bb.l
  %.sroa.014.3.i = phi i1 [ true, %bb.x ], [ false, %.loopexit179.i ], [ true, %bb.y ], [ true, %bb.z ], [ true, %bb.r ], [ true, %bb.v ], [ true, %bb.t ], [ true, %bb.l ], !dbg !22800
  %.sroa.010.1.i = phi i8 [ 1, %bb.x ], [ %.sroa.010.3.i, %.loopexit179.i ], [ 1, %bb.y ], [ 0, %bb.z ], [ 1, %bb.r ], [ 0, %bb.v ], [ 1, %bb.t ], [ 1, %bb.l ], !dbg !22820
  %.sroa.08.1.i = phi i8 [ 1, %bb.x ], [ %.sroa.08.3.i, %.loopexit179.i ], [ 1, %bb.y ], [ 0, %bb.z ], [ 1, %bb.r ], [ 0, %bb.v ], [ 1, %bb.t ], [ 1, %bb.l ], !dbg !22820
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.q:                                             ; preds = %bb.l
  %.pre.i = load ptr, ptr %.sroa.611.0..sroa_idx.i.i, align 8, !dbg !22817, !alias.scope !22641, !noalias !22498 ; 2 uses
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !22815
  store ptr %0, ptr %i.aj, align 8, !dbg !22816, !alias.scope !22568, !noalias !22498
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !22816
  store ptr %i.as, ptr %i.bh, align 8, !dbg !22816, !alias.scope !22568, !noalias !22498
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !22816
  store ptr %.sink.i.i, ptr %i.bi, align 8, !dbg !22816, !alias.scope !22568, !noalias !22498
  call void @llvm.experimental.noalias.scope.decl(metadata !22642), !dbg !22822
    #dbg_value(ptr %i.aj, !22605, !DIExpression(), !22101)
  call void @llvm.experimental.noalias.scope.decl(metadata !22643), !dbg !22823
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !22817, !noalias !22644
    #dbg_value(ptr %i.aj, !22630, !DIExpression(), !22119)
    #dbg_declare(ptr %i.l, !22638, !DIExpression(), !22123)
    #dbg_value(ptr %i.aj, !22626, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !22124)
  %.not.i.i.i = icmp eq ptr %.pre.i, null, !dbg !22817
  br i1 %.not.i.i.i, label %.thread132.i, label %bb.r, !dbg !22818

bb.r:                                             ; preds = %bb.q
    #dbg_value(ptr %.sroa.611.0..sroa_idx.i.i, !22631, !DIExpression(), !22129)
    #dbg_value(ptr %.sroa.611.0..sroa_idx.i.i, !22645, !DIExpression(), !22132)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !22824, !noalias !22651
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !22824, !noalias !22651
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aj, i64 32, !dbg !22825
  store ptr %.pre.i, ptr %i.k, align 8, !dbg !22826, !noalias !22651
  %i.bk = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !22826
  %i.bl = load <2 x i64>, ptr %i.bj, align 8, !dbg !22825, !alias.scope !22641, !noalias !22498
  store <2 x i64> %i.bl, ptr %i.bk, align 8, !dbg !22826, !noalias !22651
  invoke void @_RNvMsh_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutINtNtBb_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueNtB1y_4LeafENtB1y_4EdgeE7next_kvB2e_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.k)
          to label %.noexc71.i unwind label %bb.p, !dbg !22827, !noalias !22465

.noexc71.i:                                       ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !22828, !noalias !22651
  %i.bm = load ptr, ptr %i.l, align 8, !dbg !22829, !noalias !22651, !noundef !1328 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null, !dbg !22829
  br i1 %i.bn, label %bb.s, label %bb.t, !dbg !22830

bb.s:                                             ; preds = %.noexc71.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !22831, !noalias !22651
  br label %.thread132.i, !dbg !22832

bb.t:                                             ; preds = %.noexc71.i
  %.sroa.47.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !22833
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !22824
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.47.0..sroa_idx.i.i.i, i64 16, i1 false), !dbg !22833, !noalias !22651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !22831, !noalias !22651
  store ptr %i.bm, ptr %i.j, align 8, !dbg !22824, !noalias !22651
  %i.bo = invoke { ptr, ptr } @_RNvMsQ_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutINtNtBb_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueNtB1m_14LeafOrInternalENtB1m_2KVE11into_kv_mutB21_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j)
          to label %bb.u unwind label %bb.p, !dbg !22834, !noalias !22465

.thread132.i:                                     ; preds = %bb.s, %bb.q, %.thread197.i
  %i.bp = phi ptr [ %.sroa.6.0..sroa_idx.i.i, %.thread197.i ], [ %.sroa.611.0..sroa_idx.i.i, %bb.q ], [ %.sroa.611.0..sroa_idx.i.i, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !22835, !noalias !22644
    #dbg_value(ptr null, !22657, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22142)
    #dbg_value(ptr poison, !22657, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22142)
  br label %bb.v, !dbg !22836

bb.u:                                             ; preds = %bb.t
  %i.bq = extractvalue { ptr, ptr } %i.bo, 0, !dbg !22834 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !22835, !noalias !22644
    #dbg_value(ptr %i.bq, !22657, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22142)
    #dbg_value(ptr poison, !22657, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22142)
  %.not.i70.i = icmp eq ptr %i.bq, null, !dbg !22837
  br i1 %.not.i70.i, label %bb.v, label %bb.w, !dbg !22836

bb.v:                                             ; preds = %bb.u, %.thread132.i
  %i.br = phi ptr [ %i.bp, %.thread132.i ], [ %.sroa.611.0..sroa_idx.i.i, %bb.u ]
    #dbg_value(ptr %i.aj, !22495, !DIExpression(), !22143)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !22838, !noalias !22498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false), !dbg !22838, !noalias !22498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !22839, !noalias !22498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !dbg !22839, !noalias !22498
  invoke fastcc void @_RNvMs1I_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_12CursorMutKeyINtNtBc_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE23insert_before_uncheckedB1C_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.aj, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.aa)
          to label %bb.aj unwind label %bb.p, !dbg !22840, !noalias !22465

bb.w:                                             ; preds = %bb.u
    #dbg_value(ptr %i.bq, !22443, !DIExpression(), !22144)
  call void @llvm.experimental.noalias.scope.decl(metadata !22673), !dbg !22841
  call void @llvm.experimental.noalias.scope.decl(metadata !22674), !dbg !22841
    #dbg_value(ptr %i.bq, !22675, !DIExpression(), !22150)
    #dbg_value(ptr %i.bq, !22681, !DIExpression(), !22157)
    #dbg_value(ptr %i.am, !22679, !DIExpression(), !22150)
    #dbg_value(ptr %i.am, !22681, !DIExpression(), !22159)
  %.sroa.0.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8, !dbg !22842
  %.sroa.0.0.i.i = load ptr, ptr %.sroa.0.0.in.i.i, align 8, !dbg !22842, !alias.scope !22673, !noalias !22465, !nonnull !1328, !noundef !1328
  %.sroa.3.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 16, !dbg !22842
  %.sroa.3.0.i.i = load i64, ptr %.sroa.3.0.in.i.i, align 8, !dbg !22842, !alias.scope !22673, !noalias !22465, !noundef !1328 ; 2 uses
  %.sroa.01.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !22843
  %.sroa.01.0.i.i = load ptr, ptr %.sroa.01.0.in.i.i, align 8, !dbg !22843, !alias.scope !22674, !noalias !22498, !nonnull !1328, !noundef !1328
  %.sroa.32.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16, !dbg !22843
  %.sroa.32.0.i.i = load i64, ptr %.sroa.32.0.in.i.i, align 8, !dbg !22843, !alias.scope !22674, !noalias !22498, !noundef !1328 ; 2 uses
    #dbg_value(ptr poison, !22689, !DIExpression(), !22173)
    #dbg_value(ptr %.sroa.0.0.i.i, !22714, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22174)
    #dbg_value(i64 %.sroa.3.0.i.i, !22714, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22174)
    #dbg_value(ptr %.sroa.01.0.i.i, !22715, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22174)
    #dbg_value(i64 %.sroa.32.0.i.i, !22715, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22174)
    #dbg_value(ptr poison, !22693, !DIExpression(), !22175)
    #dbg_value(ptr %.sroa.0.0.i.i, !22708, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22176)
    #dbg_value(ptr %.sroa.0.0.i.i, !22698, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22177)
    #dbg_value(i64 %.sroa.3.0.i.i, !22708, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22176)
    #dbg_value(i64 %.sroa.3.0.i.i, !22698, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22177)
    #dbg_value(ptr %.sroa.01.0.i.i, !22709, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22176)
    #dbg_value(ptr %.sroa.01.0.i.i, !22699, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22177)
    #dbg_value(i64 %.sroa.32.0.i.i, !22709, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22176)
    #dbg_value(i64 %.sroa.32.0.i.i, !22699, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22177)
    #dbg_value(i64 %.sroa.3.0.i.i, !22701, !DIExpression(), !22178)
  %i.bs = sub i64 %.sroa.3.0.i.i, %.sroa.32.0.i.i, !dbg !22844
    #dbg_value(i64 %i.bs, !22700, !DIExpression(), !22179)
  %spec.store.select.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i, i64 %.sroa.32.0.i.i), !dbg !22845
    #dbg_value(i64 %spec.store.select.i.i.i, !22701, !DIExpression(), !22178)
    #dbg_value(ptr %.sroa.0.0.i.i, !22702, !DIExpression(), !22180)
    #dbg_value(ptr %.sroa.01.0.i.i, !22703, !DIExpression(), !22181)
  %i.bt = call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i, ptr nonnull readonly %.sroa.01.0.i.i, i64 %spec.store.select.i.i.i), !dbg !22846, !alias.scope !22717, !noalias !22718 ; 2 uses
  %i.bu = sext i32 %i.bt to i64, !dbg !22846
    #dbg_value(i64 %i.bu, !22704, !DIExpression(), !22185)
  %i.bv = icmp eq i32 %i.bt, 0, !dbg !22847
  %spec.store.select1.i.i.i = select i1 %i.bv, i64 %i.bs, i64 %i.bu, !dbg !22847
    #dbg_value(i64 %spec.store.select1.i.i.i, !22704, !DIExpression(), !22185)
    #dbg_value(ptr undef, !22689, !DIExpression(), !22173)
  %i.bw = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select1.i.i.i, i64 0), !dbg !22848
  switch i8 %i.bw, label %.loopexit178.i [
    i8 -1, label %bb.x
    i8 0, label %bb.y
    i8 1, label %bb.z
  ], !dbg !22849, !prof !22719

.loopexit178.i:                                   ; preds = %bb.az, %bb.w
  unreachable, !dbg !22850

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 161 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #28
          to label %bb.n unwind label %bb.p, !dbg !22851, !noalias !22465

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !22852, !noalias !22498
    #dbg_value(ptr %i.aj, !22721, !DIExpression(), !22188)
  invoke fastcc void @_RNvMs1I_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_12CursorMutKeyINtNtBc_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE11remove_nextB1C_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.ai, ptr noalias nofree noundef align 8 dereferenceable(48) %i.aj)
          to label %bb.aa unwind label %bb.p, !dbg !22853, !noalias !22465

bb.z:                                             ; preds = %bb.w
    #dbg_value(ptr %i.aj, !22495, !DIExpression(), !22189)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !22854, !noalias !22498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false), !dbg !22854, !noalias !22498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !22855, !noalias !22498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !dbg !22855, !noalias !22498
  invoke fastcc void @_RNvMs1I_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_12CursorMutKeyINtNtBc_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE23insert_before_uncheckedB1C_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.aj, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ad, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ac)
          to label %bb.ah unwind label %bb.p, !dbg !22856, !noalias !22465

bb.aa:                                            ; preds = %bb.y
  %i.bx = load i64, ptr %i.ai, align 8, !dbg !22852, !range !22726, !noalias !22498, !noundef !1328
  %.not56.i = icmp eq i64 %i.bx, -2, !dbg !22852
  br i1 %.not56.i, label %bb.ac, label %bb.ab, !dbg !22857

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !dbg !22858, !noalias !22498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !dbg !22858, !noalias !22498
  %i.by = getelementptr inbounds nuw i8, ptr %i.ai, i64 24, !dbg !22859
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !22860, !noalias !22498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.by, i64 24, i1 false), !dbg !22859, !noalias !22498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !22861, !noalias !22498
  %i.bz = getelementptr inbounds nuw i8, ptr %i.af, i64 32, !dbg !22860
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !dbg !22862, !noalias !22498
  %i.ca = getelementptr inbounds nuw i8, ptr %i.af, i64 24, !dbg !22860
  store ptr %i.ah, ptr %i.ca, align 8, !dbg !22860, !noalias !22498
    #dbg_value(ptr poison, !22728, !DIExpression(), !22192)
    #dbg_value(ptr poison, !22731, !DIExpression(), !22192)
    #dbg_declare(ptr %i.af, !22732, !DIExpression(), !22193)
    #dbg_declare(ptr %i.bz, !22733, !DIExpression(), !22194)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !dbg !22863, !noalias !22498
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RNCNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB7_8BTreeMapINtNtBd_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE6append0B1y_.exit.i unwind label %bb.af, !dbg !22864, !noalias !22465

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !22865, !noalias !22498
  br label %bb.ai, !dbg !22866

bb.ad:                                            ; preds = %_RNCNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB7_8BTreeMapINtNtBd_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE6append0B1y_.exit.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.thread143.i, !dbg !22865

_RNCNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB7_8BTreeMapINtNtBd_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE6append0B1y_.exit.i: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !22867, !noalias !22498
    #dbg_value(ptr %i.aj, !22490, !DIExpression(), !22195)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !dbg !22868, !noalias !22498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !dbg !22868, !noalias !22498
  invoke fastcc void @_RNvMs1I_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_12CursorMutKeyINtNtBc_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE22insert_after_uncheckedB1C_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.aj, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ae, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ag)
          to label %bb.ae unwind label %bb.ad, !dbg !22869, !noalias !22465

bb.ae:                                            ; preds = %_RNCNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB7_8BTreeMapINtNtBd_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE6append0B1y_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !22870, !noalias !22498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !22871, !noalias !22498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !22865, !noalias !22498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !22865, !noalias !22498
  br label %bb.ai, !dbg !22866

bb.af:                                            ; preds = %bb.ab
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ah) #25
          to label %.thread143.i unwind label %bb.ag, !dbg !22865, !noalias !22465

bb.ag:                                            ; preds = %bb.bv, %.thread143.i, %bb.bu, %.thread150.i, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bo, %.body112.i, %bb.af
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24, !dbg !22872, !noalias !22465
  unreachable, !dbg !22872

bb.ah:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !22873, !noalias !22498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !22873, !noalias !22498
  br label %bb.ai, !dbg !22874

bb.ai:                                            ; preds = %bb.aj, %bb.ah, %bb.ae, %bb.ac
  %i.ce = phi ptr [ %i.br, %bb.aj ], [ %.sroa.611.0..sroa_idx.i.i, %bb.ae ], [ %.sroa.611.0..sroa_idx.i.i, %bb.ac ], [ %.sroa.611.0..sroa_idx.i.i, %bb.ah ] ; 6 uses
  %.sroa.010.3.i = phi i8 [ 0, %bb.aj ], [ 1, %bb.ae ], [ 1, %bb.ac ], [ 0, %bb.ah ], !dbg !22820 ; 4 uses
  %.sroa.08.3.i = phi i8 [ 0, %bb.aj ], [ 0, %bb.ae ], [ 1, %bb.ac ], [ 0, %bb.ah ], !dbg !22875 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !22876, !noalias !22498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.z, ptr noundef nonnull align 8 dereferenceable(72) %i.an, i64 72, i1 false), !dbg !22876, !noalias !22498
  %i.cf = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.cg = getelementptr inbounds nuw i8, ptr %i.aj, i64 32 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.47.0..sroa_idx.i.i80.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5.0..sroa_idx.i.i81.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.01.0.in.i93.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.32.0.in.i95.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.5.0..sroa_idx.i.i100.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.co = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.cp = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  br label %bb.ak, !dbg !22877

bb.aj:                                            ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !22878, !noalias !22498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !22878, !noalias !22498
  br label %bb.ai, !dbg !22879

bb.ak:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECs5yXxDE1DkoT_4tera.exit115.i, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !22880, !noalias !22498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !22881, !noalias !22498
    #dbg_value(ptr %i.z, !22550, !DIExpression(), !22197)
    #dbg_declare(ptr %i.i, !22552, !DIExpression(), !22199)
    #dbg_declare(ptr %i.i, !22560, !DIExpression(), !22200)
    #dbg_declare(ptr %i.i, !22562, !DIExpression(), !22202)
    #dbg_declare(ptr poison, !22559, !DIExpression(), !22203)
  invoke fastcc void @_RNvMsz_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterINtNtBb_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE10dying_nextB1w_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.z)
          to label %.noexc75.i unwind label %bb.bp, !dbg !22881, !noalias !22465

.noexc75.i:                                       ; preds = %bb.ak
  %i.cq = load ptr, ptr %i.i, align 8, !dbg !22882, !noalias !22735, !noundef !1328
  %.not.i74.i = icmp eq ptr %i.cq, null, !dbg !22882
  br i1 %.not.i74.i, label %.thread141.i, label %bb.al, !dbg !22883

bb.al:                                            ; preds = %.noexc75.i
  invoke void @_RNvMsT_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingINtNtBb_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueNtB1m_14LeafOrInternalENtB1m_2KVE12into_key_valB23_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i)
          to label %bb.am unwind label %bb.bp, !dbg !22884, !noalias !22465

.thread141.i:                                     ; preds = %.noexc75.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !22885, !noalias !22498
  br label %.loopexit179.i, !dbg !22880

.body112.i:                                       ; preds = %.thread150.i, %bb.bp, %bb.bm
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.ph.i, %.thread150.i ], [ %lpad.thr_comm.split-lp156.i, %bb.bp ], [ %i.gm, %bb.bm ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8IntoIterINtNtBK_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueEEB1Z_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.z) #25
          to label %bb.o unwind label %bb.ag, !dbg !22886, !noalias !22465

bb.am:                                            ; preds = %bb.al
  %.pr140.i = load i64, ptr %i.y, align 8, !dbg !22880, !noalias !22498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !22885, !noalias !22498
  %.not57.i = icmp eq i64 %.pr140.i, -2, !dbg !22880
  br i1 %.not57.i, label %.loopexit179.i, label %bb.an, !dbg !22880

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !22887, !noalias !22498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !dbg !22887, !noalias !22498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !22888, !noalias !22498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.cf, i64 24, i1 false), !dbg !22888, !noalias !22498
  call void @llvm.experimental.noalias.scope.decl(metadata !22736), !dbg !22889
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !22890, !noalias !22737
  %i.cr = load ptr, ptr %i.ce, align 8, !dbg !22890, !alias.scope !22738, !noalias !22498, !noundef !1328 ; 2 uses
  %.not.i.i79180.i = icmp eq ptr %i.cr, null, !dbg !22890
  br i1 %.not.i.i79180.i, label %.thread163.i, label %.lr.ph.i, !dbg !22891

.loopexit179.i:                                   ; preds = %bb.am, %.thread141.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !22892, !noalias !22498
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8IntoIterINtNtBK_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueEEB1Z_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.z)
          to label %bb.ao unwind label %bb.p, !dbg !22886, !noalias !22465

bb.ao:                                            ; preds = %.loopexit179.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !22886, !noalias !22498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !22893, !noalias !22498
  %i.cs = trunc nuw i8 %.sroa.08.3.i to i1, !dbg !22821
  br i1 %i.cs, label %bb.aq, label %bb.ap, !dbg !22821

bb.ap:                                            ; preds = %bb.aq, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !dbg !22821, !noalias !22498
  %i.ct = trunc nuw i8 %.sroa.010.3.i to i1, !dbg !22821
    #dbg_value(ptr %i.am, !1878, !DIExpression(), !22215)
  %i.cu = load i64, ptr %i.am, align 8, !range !1882, !noalias !22498
  %i.cv = icmp ne i64 %i.cu, -1
  %or.cond.not.i = select i1 %i.ct, i1 %i.cv, i1 false, !dbg !22821
  br i1 %or.cond.not.i, label %bb.at, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECs5yXxDE1DkoT_4tera.exit.i, !dbg !22821

bb.aq:                                            ; preds = %bb.ao
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.al)
          to label %bb.ap unwind label %bb.as, !dbg !22821, !noalias !22465

bb.ar:                                            ; preds = %bb.bu, %bb.as, %bb.o
  %.pn63.pn.i = phi { ptr, i32 } [ %.pn63.i, %bb.bu ], [ %.pn63.i, %bb.o ], [ %i.cx, %bb.as ] ; 2 uses
  %.sroa.014.4.i = phi i1 [ %.sroa.014.2.i, %bb.bu ], [ %.sroa.014.2.i, %bb.o ], [ false, %bb.as ], !dbg !22800 ; 2 uses
  %.sroa.010.4.i = phi i8 [ %.sroa.010.0.i, %bb.bu ], [ %.sroa.010.0.i, %bb.o ], [ %.sroa.010.3.i, %bb.as ], !dbg !22803
  %i.cw = trunc nuw i8 %.sroa.010.4.i to i1, !dbg !22821
  br i1 %i.cw, label %.thread143.i, label %bb.i, !dbg !22821

bb.as:                                            ; preds = %bb.aq
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECs5yXxDE1DkoT_4tera.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i.i, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !dbg !22821, !noalias !22498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !22801, !noalias !22498
  br label %_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapINtNtBc_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE5mergeNCNvB2_6append0EB1x_.exit, !dbg !22801

bb.at:                                            ; preds = %bb.ap
    #dbg_value(ptr %i.am, !1884, !DIExpression(), !22217)
    #dbg_value(ptr %i.am, !1889, !DIExpression(), !22219)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i.i unwind label %bb.au, !dbg !22894, !noalias !22465

bb.au:                                            ; preds = %bb.at
  %i.cy = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.am, !1894, !DIExpression(), !22221)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %.body.thread.i unwind label %bb.av, !dbg !22895, !noalias !22465

bb.av:                                            ; preds = %bb.au
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24, !dbg !22894, !noalias !22465
  unreachable, !dbg !22894

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i.i: ; preds = %bb.at
    #dbg_value(ptr %i.am, !1894, !DIExpression(), !22223)
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am), !dbg !22896, !noalias !22465
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECs5yXxDE1DkoT_4tera.exit.i, !dbg !22896

.lr.ph.i:                                         ; preds = %bb.an, %_RNvMs1G_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_9CursorMutINtNtBc_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE4nextB1y_.exit.i
  %i.da = phi ptr [ %.pre185.i, %_RNvMs1G_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_9CursorMutINtNtBc_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE4nextB1y_.exit.i ], [ %i.cr, %bb.an ]
  call void @llvm.experimental.noalias.scope.decl(metadata !22739), !dbg !22889
  call void @llvm.experimental.noalias.scope.decl(metadata !22740), !dbg !22897
    #dbg_value(ptr %i.ce, !22631, !DIExpression(), !22228)
    #dbg_value(ptr %i.ce, !22645, !DIExpression(), !22230)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !22898, !noalias !22741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !22898, !noalias !22741
  store ptr %i.da, ptr %i.g, align 8, !dbg !22899, !noalias !22741
  %i.db = load <2 x i64>, ptr %i.cg, align 8, !dbg !22900, !alias.scope !22742, !noalias !22498
  store <2 x i64> %i.db, ptr %i.ci, align 8, !dbg !22899, !noalias !22741
  invoke void @_RNvMsh_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutINtNtBb_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueNtB1y_4LeafENtB1y_4EdgeE7next_kvB2e_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g)
          to label %.noexc86.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !22901, !noalias !22465

.noexc86.i:                                       ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !22902, !noalias !22741
  %i.dc = load ptr, ptr %i.h, align 8, !dbg !22903, !noalias !22741, !noundef !1328 ; 2 uses
  %i.dd = icmp eq ptr %i.dc, null, !dbg !22903
  br i1 %i.dd, label %bb.aw, label %bb.ax, !dbg !22904

bb.aw:                                            ; preds = %.noexc86.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !22905, !noalias !22741
  br label %.thread163.i, !dbg !22906

bb.ax:                                            ; preds = %.noexc86.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i81.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.47.0..sroa_idx.i.i80.i, i64 16, i1 false), !dbg !22907, !noalias !22741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !22905, !noalias !22741
  store ptr %i.dc, ptr %i.f, align 8, !dbg !22898, !noalias !22741
  %i.de = invoke { ptr, ptr } @_RNvMsQ_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutINtNtBb_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueNtB1m_14LeafOrInternalENtB1m_2KVE11into_kv_mutB21_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f)
          to label %bb.ay unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !22908, !noalias !22465

.thread163.i:                                     ; preds = %_RNvMs1G_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_9CursorMutINtNtBc_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE4nextB1y_.exit.i, %_RNvMs1G_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_9CursorMutINtNtBc_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE4nextB1y_.exit.thread.i, %bb.aw, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !22909, !noalias !22743
    #dbg_value(ptr null, !22657, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22234)
    #dbg_value(ptr poison, !22657, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22234)
  br label %.loopexit177.i, !dbg !22910

bb.ay:                                            ; preds = %bb.ax
  %i.df = extractvalue { ptr, ptr } %i.de, 0, !dbg !22908 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !22909, !noalias !22743
    #dbg_value(ptr %i.df, !22657, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22234)
    #dbg_value(ptr poison, !22657, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22234)
  %.not.i84.i = icmp eq ptr %i.df, null, !dbg !22911
  br i1 %.not.i84.i, label %.loopexit177.i, label %bb.az, !dbg !22910

.loopexit177.i:                                   ; preds = %bb.ay, %.thread163.i
    #dbg_value(ptr %i.aj, !22495, !DIExpression(), !22235)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !22912, !noalias !22498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !dbg !22912, !noalias !22498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !22913, !noalias !22498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !dbg !22913, !noalias !22498
  invoke fastcc void @_RNvMs1I_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_12CursorMutKeyINtNtBc_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE23insert_before_uncheckedB1C_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.aj, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.o, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.n)
          to label %bb.bt unwind label %bb.bp, !dbg !22914, !noalias !22465

bb.az:                                            ; preds = %bb.ay
    #dbg_value(ptr %i.df, !22450, !DIExpression(), !22236)
  call void @llvm.experimental.noalias.scope.decl(metadata !22744), !dbg !22915
  call void @llvm.experimental.noalias.scope.decl(metadata !22745), !dbg !22915
    #dbg_value(ptr %i.df, !22675, !DIExpression(), !22241)
    #dbg_value(ptr %i.df, !22681, !DIExpression(), !22243)
    #dbg_value(ptr %i.x, !22679, !DIExpression(), !22241)
    #dbg_value(ptr %i.x, !22681, !DIExpression(), !22245)
  %.sroa.0.0.in.i89.i = getelementptr inbounds nuw i8, ptr %i.df, i64 8, !dbg !22916
  %.sroa.0.0.i90.i = load ptr, ptr %.sroa.0.0.in.i89.i, align 8, !dbg !22916, !alias.scope !22744, !noalias !22465, !nonnull !1328, !noundef !1328
  %.sroa.3.0.in.i91.i = getelementptr inbounds nuw i8, ptr %i.df, i64 16, !dbg !22916
  %.sroa.3.0.i92.i = load i64, ptr %.sroa.3.0.in.i91.i, align 8, !dbg !22916, !alias.scope !22744, !noalias !22465, !noundef !1328 ; 2 uses
  %.sroa.01.0.i94.i = load ptr, ptr %.sroa.01.0.in.i93.i, align 8, !dbg !22917, !alias.scope !22745, !noalias !22498, !nonnull !1328, !noundef !1328
  %.sroa.32.0.i96.i = load i64, ptr %.sroa.32.0.in.i95.i, align 8, !dbg !22917, !alias.scope !22745, !noalias !22498, !noundef !1328 ; 2 uses
    #dbg_value(ptr poison, !22689, !DIExpression(), !22250)
    #dbg_value(ptr %.sroa.0.0.i90.i, !22714, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22251)
    #dbg_value(i64 %.sroa.3.0.i92.i, !22714, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22251)
    #dbg_value(ptr %.sroa.01.0.i94.i, !22715, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22251)
    #dbg_value(i64 %.sroa.32.0.i96.i, !22715, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22251)
    #dbg_value(ptr poison, !22693, !DIExpression(), !22252)
    #dbg_value(ptr %.sroa.0.0.i90.i, !22708, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22253)
    #dbg_value(ptr %.sroa.0.0.i90.i, !22698, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22254)
    #dbg_value(i64 %.sroa.3.0.i92.i, !22708, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22253)
    #dbg_value(i64 %.sroa.3.0.i92.i, !22698, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22254)
    #dbg_value(ptr %.sroa.01.0.i94.i, !22709, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22253)
    #dbg_value(ptr %.sroa.01.0.i94.i, !22699, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22254)
    #dbg_value(i64 %.sroa.32.0.i96.i, !22709, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22253)
    #dbg_value(i64 %.sroa.32.0.i96.i, !22699, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22254)
    #dbg_value(i64 %.sroa.3.0.i92.i, !22701, !DIExpression(), !22255)
  %i.dg = sub i64 %.sroa.3.0.i92.i, %.sroa.32.0.i96.i, !dbg !22918
    #dbg_value(i64 %i.dg, !22700, !DIExpression(), !22256)
  %spec.store.select.i.i97.i = call i64 @llvm.umin.i64(i64 %.sroa.3.0.i92.i, i64 %.sroa.32.0.i96.i), !dbg !22919
    #dbg_value(i64 %spec.store.select.i.i97.i, !22701, !DIExpression(), !22255)
    #dbg_value(ptr %.sroa.0.0.i90.i, !22702, !DIExpression(), !22257)
    #dbg_value(ptr %.sroa.01.0.i94.i, !22703, !DIExpression(), !22258)
  %i.dh = call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i90.i, ptr nonnull readonly %.sroa.01.0.i94.i, i64 %spec.store.select.i.i97.i), !dbg !22920, !alias.scope !22746, !noalias !22747 ; 2 uses
  %i.di = sext i32 %i.dh to i64, !dbg !22920
    #dbg_value(i64 %i.di, !22704, !DIExpression(), !22262)
  %i.dj = icmp eq i32 %i.dh, 0, !dbg !22921
  %spec.store.select1.i.i98.i = select i1 %i.dj, i64 %i.dg, i64 %i.di, !dbg !22921
    #dbg_value(i64 %spec.store.select1.i.i98.i, !22704, !DIExpression(), !22262)
    #dbg_value(ptr undef, !22689, !DIExpression(), !22250)
  %i.dk = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select1.i.i98.i, i64 0), !dbg !22922
  switch i8 %i.dk, label %.loopexit178.i [
    i8 -1, label %bb.ba
    i8 0, label %bb.be
    i8 1, label %bb.bf
  ], !dbg !22923

bb.ba:                                            ; preds = %bb.az
  call void @llvm.experimental.noalias.scope.decl(metadata !22748), !dbg !22924
    #dbg_value(ptr %i.aj, !22424, !DIExpression(), !22265)
  call void @llvm.experimental.noalias.scope.decl(metadata !22749), !dbg !22925
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !22926, !noalias !22750
    #dbg_declare(ptr poison, !22755, !DIExpression(DW_OP_LLVM_fragment, 64, 128), !22275)
    #dbg_value(ptr %i.aj, !22395, !DIExpression(), !22276)
    #dbg_declare(ptr %i.e, !22396, !DIExpression(), !22277)
    #dbg_value(ptr %i.aj, !22753, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !22278)
    #dbg_value(ptr %i.aj, !22751, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !22279)
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr %i.ce, align 8, !dbg !22926, !alias.scope !22758, !noalias !22498 ; 2 uses
    #dbg_value(ptr %.sroa.01.0.copyload.i.i.i, !22755, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22280)
  store ptr null, ptr %i.ce, align 8, !dbg !22927, !alias.scope !22758, !noalias !22498
  %.not.i.i99.i = icmp eq ptr %.sroa.01.0.copyload.i.i.i, null, !dbg !22928
  br i1 %.not.i.i99.i, label %_RNvMs1G_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_9CursorMutINtNtBc_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE4nextB1y_.exit.thread.i, label %bb.bb, !dbg !22929

_RNvMs1G_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_9CursorMutINtNtBc_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE4nextB1y_.exit.thread.i: ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !22930, !noalias !22750
    #dbg_value(ptr %i.aj, !22605, !DIExpression(), !22281)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !22890, !noalias !22759
    #dbg_value(ptr %i.aj, !22630, !DIExpression(), !22284)
    #dbg_declare(ptr %i.h, !22638, !DIExpression(), !22285)
    #dbg_value(ptr %i.aj, !22626, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !22286)
  br label %.thread163.i, !dbg !22891

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i100.i, ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i64 16, i1 false), !dbg !22931, !noalias !22498
  store ptr %.sroa.01.0.copyload.i.i.i, ptr %i.e, align 8, !dbg !22932, !noalias !22760
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !22933, !noalias !22760
  invoke void @_RNvMsh_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker3MutINtNtBb_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueNtB1y_4LeafENtB1y_4EdgeE7next_kvB2e_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e)
          to label %.noexc105.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !22934, !noalias !22465

.noexc105.i:                                      ; preds = %bb.bb
  %i.dl = load ptr, ptr %i.d, align 8, !dbg !22933, !noalias !22760, !noundef !1328 ; 2 uses
  %i.dm = icmp eq ptr %i.dl, null, !dbg !22933
  %i.dn = load i64, ptr %i.ck, align 8, !dbg !22935, !noalias !22760 ; 6 uses
  br i1 %i.dm, label %bb.bc, label %bb.bd, !dbg !22936

bb.bc:                                            ; preds = %.noexc105.i
  %i.do = load ptr, ptr %i.cj, align 8, !dbg !22937, !noalias !22760, !nonnull !1328, !noundef !1328 ; 3 uses
    #dbg_value(ptr %i.do, !22404, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22287)
    #dbg_value(i64 %i.dn, !22404, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22287)
    #dbg_value(ptr %i.do, !5321, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22289)
    #dbg_value(i64 %i.dn, !5321, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22289)
    #dbg_value(i64 %i.dn, !5326, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22290)
    #dbg_value(i64 %i.dn, !5335, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22292)
    #dbg_value(ptr %i.do, !5326, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22290)
    #dbg_value(ptr %i.do, !5335, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22292)
    #dbg_value(ptr %i.do, !5352, !DIExpression(), !22294)
  %i.dp = icmp eq i64 %i.dn, 0, !dbg !22938
  br i1 %i.dp, label %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutINtNtBb_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueNtB1k_14LeafOrInternalE14last_leaf_edgeB20_.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader, !dbg !22938

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.bc
  %xtraiter = and i64 %i.dn, 7, !dbg !22938       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !22938
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !dbg !22938

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.sroa.03.019.i.i.i.i.prol = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.prol ], [ %i.do, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.sroa.05.018.i.i.i.i.prol = phi i64 [ %i.dx, %.lr.ph.i.i.i.i.prol ], [ %i.dn, %.lr.ph.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
    #dbg_value(ptr %.sroa.03.019.i.i.i.i.prol, !5352, !DIExpression(), !22294)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i.prol, !5335, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22292)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i.prol, !5328, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22295)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i.prol, !5366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22297)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i.prol, !5362, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22298)
    #dbg_value(ptr %.sroa.03.019.i.i.i.i.prol, !5328, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22295)
    #dbg_value(ptr %.sroa.03.019.i.i.i.i.prol, !5366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22297)
    #dbg_value(ptr %.sroa.03.019.i.i.i.i.prol, !5362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22298)
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.03.019.i.i.i.i.prol, i64 538, !dbg !22939
  %i.dr = load i16, ptr %i.dq, align 2, !dbg !22939, !noalias !22761, !noundef !1328 ; 2 uses
  %i.ds = zext nneg i16 %i.dr to i64, !dbg !22940
    #dbg_value(i64 %i.ds, !5362, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22298)
    #dbg_value(i64 %i.ds, !5375, !DIExpression(), !22304)
    #dbg_value(i64 %i.ds, !5387, !DIExpression(), !22306)
    #dbg_value(ptr %.sroa.03.019.i.i.i.i.prol, !5364, !DIExpression(), !22307)
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.03.019.i.i.i.i.prol, i64 544, !dbg !22941
    #dbg_value(ptr %i.dt, !5383, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22304)
    #dbg_value(ptr %i.dt, !5394, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22306)
    #dbg_value(i64 12, !5383, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22304)
    #dbg_value(i64 12, !5394, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22306)
  %i.du = icmp ult i16 %i.dr, 12, !dbg !22942
  call void @llvm.assume(i1 %i.du), !dbg !22943
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.ds, !dbg !22944
    #dbg_value(ptr %i.dv, !5397, !DIExpression(), !22309)
    #dbg_value(ptr %i.dv, !5403, !DIExpression(), !22311)
    #dbg_value(ptr %i.dv, !5407, !DIExpression(), !22313)
  %i.dw = load ptr, ptr %i.dv, align 8, !dbg !22945, !noalias !22761, !nonnull !1328, !noundef !1328 ; 3 uses
    #dbg_value(ptr %i.dw, !5326, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22290)
    #dbg_value(ptr %i.dw, !5335, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22292)
    #dbg_value(ptr %i.dw, !5352, !DIExpression(), !22294)
  %i.dx = add i64 %.sroa.05.018.i.i.i.i.prol, -1, !dbg !22946 ; 2 uses
    #dbg_value(i64 %i.dx, !5335, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22292)
    #dbg_value(i64 %i.dx, !5326, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22290)
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !22938 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !22938
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !dbg !22938, !llvm.loop !22314

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.dw, %.lr.ph.i.i.i.i.prol ]
  %.sroa.03.019.i.i.i.i.unr = phi ptr [ %i.do, %.lr.ph.i.i.i.i.preheader ], [ %i.dw, %.lr.ph.i.i.i.i.prol ]
  %.sroa.05.018.i.i.i.i.unr = phi i64 [ %i.dn, %.lr.ph.i.i.i.i.preheader ], [ %i.dx, %.lr.ph.i.i.i.i.prol ]
  %i.dy = icmp ult i64 %i.dn, 8, !dbg !22938
  br i1 %i.dy, label %_RNvMsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker3MutINtNtBb_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueNtB1k_14LeafOrInternalE14last_leaf_edgeB20_.exit.i.i.i, label %.lr.ph.i.i.i.i, !dbg !22938

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.sroa.03.019.i.i.i.i = phi ptr [ %i.gc, %.lr.ph.i.i.i.i ], [ %.sroa.03.019.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.05.018.i.i.i.i = phi i64 [ %i.gd, %.lr.ph.i.i.i.i ], [ %.sroa.05.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
    #dbg_value(ptr %.sroa.03.019.i.i.i.i, !5352, !DIExpression(), !22294)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5335, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22292)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5328, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22295)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22297)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5362, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22298)
    #dbg_value(ptr %.sroa.03.019.i.i.i.i, !5328, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22295)
    #dbg_value(ptr %.sroa.03.019.i.i.i.i, !5366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22297)
    #dbg_value(ptr %.sroa.03.019.i.i.i.i, !5362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22298)
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.03.019.i.i.i.i, i64 538, !dbg !22939
  %i.ea = load i16, ptr %i.dz, align 2, !dbg !22939, !noalias !22761, !noundef !1328 ; 2 uses
  %i.eb = zext nneg i16 %i.ea to i64, !dbg !22940
    #dbg_value(i64 %i.eb, !5362, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22298)
    #dbg_value(i64 %i.eb, !5375, !DIExpression(), !22304)
    #dbg_value(i64 %i.eb, !5387, !DIExpression(), !22306)
    #dbg_value(ptr %.sroa.03.019.i.i.i.i, !5364, !DIExpression(), !22307)
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.03.019.i.i.i.i, i64 544, !dbg !22941
    #dbg_value(ptr %i.ec, !5383, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22304)
    #dbg_value(ptr %i.ec, !5394, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22306)
    #dbg_value(i64 12, !5383, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22304)
    #dbg_value(i64 12, !5394, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22306)
  %i.ed = icmp ult i16 %i.ea, 12, !dbg !22942
  call void @llvm.assume(i1 %i.ed), !dbg !22943
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.eb, !dbg !22944
    #dbg_value(ptr %i.ee, !5397, !DIExpression(), !22309)
    #dbg_value(ptr %i.ee, !5403, !DIExpression(), !22311)
    #dbg_value(ptr %i.ee, !5407, !DIExpression(), !22313)
  %i.ef = load ptr, ptr %i.ee, align 8, !dbg !22945, !noalias !22761, !nonnull !1328, !noundef !1328 ; 2 uses
    #dbg_value(ptr %i.ef, !5326, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22290)
    #dbg_value(ptr %i.ef, !5335, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22292)
    #dbg_value(ptr %i.ef, !5352, !DIExpression(), !22294)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5326, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22290)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5335, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22292)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5328, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22295)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5366, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22297)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5362, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22298)
    #dbg_value(ptr %i.ef, !5328, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22295)
    #dbg_value(ptr %i.ef, !5366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22297)
    #dbg_value(ptr %i.ef, !5362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22298)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 538, !dbg !22939
  %i.eh = load i16, ptr %i.eg, align 2, !dbg !22939, !noalias !22761, !noundef !1328 ; 2 uses
  %i.ei = zext nneg i16 %i.eh to i64, !dbg !22940
    #dbg_value(i64 %i.ei, !5362, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22298)
    #dbg_value(i64 %i.ei, !5375, !DIExpression(), !22304)
    #dbg_value(i64 %i.ei, !5387, !DIExpression(), !22306)
    #dbg_value(ptr %i.ef, !5364, !DIExpression(), !22307)
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 544, !dbg !22941
    #dbg_value(ptr %i.ej, !5383, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22304)
    #dbg_value(ptr %i.ej, !5394, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22306)
    #dbg_value(i64 12, !5383, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22304)
    #dbg_value(i64 12, !5394, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22306)
  %i.ek = icmp ult i16 %i.eh, 12, !dbg !22942
  call void @llvm.assume(i1 %i.ek), !dbg !22943
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.ei, !dbg !22944
    #dbg_value(ptr %i.el, !5397, !DIExpression(), !22309)
    #dbg_value(ptr %i.el, !5403, !DIExpression(), !22311)
    #dbg_value(ptr %i.el, !5407, !DIExpression(), !22313)
  %i.em = load ptr, ptr %i.el, align 8, !dbg !22945, !noalias !22761, !nonnull !1328, !noundef !1328 ; 2 uses
    #dbg_value(ptr %i.em, !5326, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22290)
    #dbg_value(ptr %i.em, !5335, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22292)
    #dbg_value(ptr %i.em, !5352, !DIExpression(), !22294)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5326, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22290)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5335, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22292)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5328, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22295)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5366, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22297)
    #dbg_value(i64 %.sroa.05.018.i.i.i.i, !5362, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22298)
    #dbg_value(ptr %i.em, !5328, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22295)
    #dbg_value(ptr %i.em, !5366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22297)
    #dbg_value(ptr %i.em, !5362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22298)
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 538, !dbg !22939
  %i.eo = load i16, ptr %i.en, align 2, !dbg !22939, !noalias !22761, !noundef !1328 ; 2 uses
  %i.ep = zext nneg i16 %i.eo to i64, !dbg !22940
    #dbg_value(i64 %i.ep, !5362, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22298)
    #dbg_value(i64 %i.ep, !5375, !DIExpression(), !22304)
    #dbg_value(i64 %i.ep, !5387, !DIExpression(), !22306)
    #dbg_value(ptr %i.em, !5364, !DIExpression(), !22307)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 544, !dbg !22941
    #dbg_value(ptr %i.eq, !5383, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22304)
    #dbg_value(ptr %i.eq, !5394, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22306)
    #dbg_value(i64 12, !5383, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22304)
    #dbg_value(i64 12, !5394, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22306)
  %i.er = icmp ult i16 %i.eo, 12, !dbg !22942
  call void @llvm.assume(i1 %i.er), !dbg !22943
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.ep, !dbg !22944
    #dbg_value(ptr %i.es, !5397, !DIExpression(), !22309)
    #dbg_value(ptr %i.es, !5403, !DIExpression(), !22311)
    #dbg_value(ptr %i.es, !5407, !DIExpression(), !22313)
  %i.et = load ptr, ptr %i.es, align 8, !dbg !22945, !noalias !22761, !nonnull !1328, !noundef !1328 ; 2 uses
end_hunk_3
