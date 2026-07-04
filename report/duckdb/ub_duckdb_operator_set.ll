inline.NumInlined: 2116
inline.NumDeleted: 1345
begin_hunk_0_@_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev:bb.a

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #20
  br label %_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13PhysicalUnion14BuildPipelinesERNS_8PipelineERNS_12MetaPipelineE(ptr noundef nonnull align 8 dereferenceable(137) %0, ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull align 8 dereferenceable(280) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::optional_ptr", align 8 ; 10 uses
  %4 = alloca %"struct.duckdb::OperatorPartitionInfo", align 8 ; 7 uses
  %5 = alloca %"class.duckdb::vector.90", align 8 ; 11 uses
  %6 = alloca %"class.duckdb::vector.12", align 16 ; 12 uses
  %7 = alloca %"class.duckdb::optional_ptr.105", align 8 ; 8 uses
  %8 = alloca %"class.duckdb::vector.12", align 16 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60   ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !60
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10unique_ptrINS_19GlobalOperatorStateESt14default_deleteIS1_ELb1EE5resetEPS1_.exit, label %_ZNKSt14default_deleteIN6duckdb19GlobalOperatorStateEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN6duckdb19GlobalOperatorStateEEclEPS1_.exit.i.i.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #19, !inline_history !61
  br label %_ZN6duckdb10unique_ptrINS_19GlobalOperatorStateESt14default_deleteIS1_ELb1EE5resetEPS1_.exit

_ZN6duckdb10unique_ptrINS_19GlobalOperatorStateESt14default_deleteIS1_ELb1EE5resetEPS1_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6duckdb19GlobalOperatorStateEEclEPS1_.exit.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !62   ; 3 uses
  store ptr null, ptr %i.f, align 8, !tbaa !62
  %.not.i.i.i59 = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i59, label %_ZN6duckdb10unique_ptrINS_15GlobalSinkStateESt14default_deleteIS1_ELb1EE5resetEPS1_.exit, label %_ZNKSt14default_deleteIN6duckdb15GlobalSinkStateEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN6duckdb15GlobalSinkStateEEclEPS1_.exit.i.i.i: ; preds = %_ZN6duckdb10unique_ptrINS_19GlobalOperatorStateESt14default_deleteIS1_ELb1EE5resetEPS1_.exit
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(81) %i.g) #19, !inline_history !63
  br label %_ZN6duckdb10unique_ptrINS_15GlobalSinkStateESt14default_deleteIS1_ELb1EE5resetEPS1_.exit

_ZN6duckdb10unique_ptrINS_15GlobalSinkStateESt14default_deleteIS1_ELb1EE5resetEPS1_.exit: ; preds = %_ZN6duckdb10unique_ptrINS_19GlobalOperatorStateESt14default_deleteIS1_ELb1EE5resetEPS1_.exit, %_ZNKSt14default_deleteIN6duckdb15GlobalSinkStateEEclEPS1_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.k = tail call ptr @_ZNK6duckdb12MetaPipeline7GetSinkEv(ptr noundef nonnull align 8 dereferenceable(280) %2) ; 2 uses
  store ptr %i.k, ptr %3, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.m = load i8, ptr %i.l, align 8, !tbaa !18, !range !64, !noundef !51
  %not. = xor i8 %i.m, 1
  %i.n = tail call noundef zeroext i1 @_ZNK6duckdb8Pipeline16IsOrderDependentEv(ptr noundef nonnull align 8 dereferenceable(224) %1)
  %spec.select = select i1 %i.n, i8 1, i8 %not.   ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %_ZN6duckdb10unique_ptrINS_15GlobalSinkStateESt14default_deleteIS1_ELb1EE5resetEPS1_.exit
  call void @_ZNK6duckdb12optional_ptrINS_16PhysicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.o = load ptr, ptr %3, align 8, !tbaa !65     ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 304
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(136) %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @_ZNK6duckdb12optional_ptrINS_16PhysicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.t = load ptr, ptr %3, align 8, !tbaa !65     ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 296
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::OperatorPartitionInfo") align 8 %4, ptr noundef nonnull align 8 dereferenceable(136) %i.t)
  %i.x = load i8, ptr %4, align 8, !tbaa !67, !range !64, !noundef !51
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = or i1 %i.s, %i.y
  invoke void @_ZNK6duckdb12optional_ptrINS_16PhysicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.aa = load ptr, ptr %3, align 8, !tbaa !65    ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 288
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = invoke noundef zeroext i1 %i.ad(ptr noundef nonnull align 8 dereferenceable(136) %i.aa)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.af = xor i1 %i.z, true
  %i.ag = select i1 %i.ae, i1 %i.af, i1 false
  %spec.select57 = select i1 %i.ag, i8 %spec.select, i8 1
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !75 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb21OperatorPartitionInfoD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZdlPv(ptr noundef nonnull %i.ai) #20
  br label %_ZN6duckdb21OperatorPartitionInfoD2Ev.exit

_ZN6duckdb21OperatorPartitionInfoD2Ev.exit:       ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.h

bb.f:                                             ; preds = %bb.b, %bb.c
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !75 ; 2 uses
  %.not.i.i.i.i60 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i60, label %_ZN6duckdb21OperatorPartitionInfoD2Ev.exit61, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZdlPv(ptr noundef nonnull %i.al) #20
  br label %_ZN6duckdb21OperatorPartitionInfoD2Ev.exit61

_ZN6duckdb21OperatorPartitionInfoD2Ev.exit61:     ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.bw

bb.h:                                             ; preds = %_ZN6duckdb21OperatorPartitionInfoD2Ev.exit, %_ZN6duckdb10unique_ptrINS_15GlobalSinkStateESt14default_deleteIS1_ELb1EE5resetEPS1_.exit
  %.4 = phi i8 [ %spec.select57, %_ZN6duckdb21OperatorPartitionInfoD2Ev.exit ], [ %spec.select, %_ZN6duckdb10unique_ptrINS_15GlobalSinkStateESt14default_deleteIS1_ELb1EE5resetEPS1_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !59
  %i.ao = icmp ugt i64 %i.an, 1
  br i1 %i.ao, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.ap = trunc nuw i8 %.4 to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.i

._crit_edge:                                      ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE9push_backEOS3_.exit, %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb15ArenaLinkedListISt17reference_wrapperINS_16PhysicalOperatorEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %i.as, i64 noundef 0)
          to label %bb.p unwind label %bb.y

bb.i:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE9push_backEOS3_.exit
  %i.au = phi i64 [ 1, %.lr.ph ], [ %i.cf, %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE9push_backEOS3_.exit ]
  %i.av = invoke noundef nonnull align 8 dereferenceable(224) ptr @_ZN6duckdb12MetaPipeline19CreateUnionPipelineERNS_8PipelineEb(ptr noundef nonnull align 8 dereferenceable(280) %2, ptr noundef nonnull align 8 dereferenceable(224) %1, i1 noundef zeroext %i.ap)
          to label %bb.j unwind label %bb.o       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !76 ; 5 uses
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !79
  %.not.i.i = icmp eq ptr %i.aw, %i.ax
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = ptrtoint ptr %i.av to i64
  store i64 %i.ay, ptr %i.aw, align 8
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !76
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.ba, ptr %i.aq, align 8, !tbaa !76
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE9push_backEOS3_.exit

bb.l:                                             ; preds = %bb.j
  %i.bb = load ptr, ptr %5, align 8, !tbaa !80    ; 7 uses
  %i.bc = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.bd = ptrtoint ptr %i.bb to i64               ; 3 uses
  %i.be = sub i64 %i.bc, %i.bd                    ; 3 uses
  %i.bf = icmp eq i64 %i.be, 9223372036854775800
  br i1 %i.bf, label %bb.m, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #21
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.m
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.l
  %i.bg = ashr exact i64 %i.be, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bg, i64 1)
  %i.bh = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bg ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %i.bg
  %i.bj = call i64 @llvm.umin.i64(i64 %i.bh, i64 1152921504606846975)
  %i.bk = select i1 %i.bi, i64 1152921504606846975, i64 %i.bj ; 3 uses
  %.not.i.i.i.i62 = icmp ne i64 %i.bk, 0
  call void @llvm.assume(i1 %.not.i.i.i.i62)
  %i.bl = shl nuw nsw i64 %i.bk, 3
  %i.bm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #22
          to label %.noexc63 unwind label %.loopexit ; 8 uses

.noexc63:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.be
  %i.bo = ptrtoint ptr %i.av to i64
  store i64 %i.bo, ptr %i.bn, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.bb, %i.aw
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc63
  %i.bp = ptrtoaddr ptr %i.bm to i64
  %9 = add i64 %i.bc, -8
  %10 = sub i64 %9, %i.bd                         ; 2 uses
  %i.bq = lshr i64 %10, 3
  %i.br = add nuw nsw i64 %i.bq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %10, 24
  %i.bs = sub i64 %i.bd, %i.bp
  %diff.check = icmp ugt i64 %i.bs, -32
  %or.cond132 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond132, label %.lr.ph.i.i.i.i.i.i.i.preheader133, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.br, 4611686018427387900     ; 3 uses
  %i.bt = shl i64 %n.vec, 3                       ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bm, i64 %i.bt  ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bb, i64 %i.bt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bm, i64 %i.bw ; 2 uses
  %next.gep129 = getelementptr i8, ptr %i.bb, i64 %i.bw ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.bx = getelementptr i8, ptr %next.gep129, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep129, align 8, !alias.scope !84, !noalias !81
  %wide.load130 = load <2 x i64>, ptr %i.bx, align 8, !alias.scope !84, !noalias !81
  %i.by = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !81, !noalias !84
  store <2 x i64> %wide.load130, ptr %i.by, align 8, !alias.scope !81, !noalias !84
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !86

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.br, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader133

.lr.ph.i.i.i.i.i.i.i.preheader133:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bu, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bv, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader133, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader133 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader133 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.ca = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !84, !noalias !81
  store i64 %i.ca, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !81, !noalias !84
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cb, %i.aw
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !89

_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc63
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bm, %.noexc63 ], [ %i.bu, %middle.block ], [ %i.cc, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bb) #20
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.n, %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.bm, ptr %5, align 8, !tbaa !80
  store ptr %i.cd, ptr %i.aq, align 8, !tbaa !76
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bk
  store ptr %i.ce, ptr %i.ar, align 8, !tbaa !79
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.k
  %i.cf = add nuw i64 %i.au, 1                    ; 2 uses
  %i.cg = load i64, ptr %i.am, align 8, !tbaa !59
  %i.ch = icmp ult i64 %i.cf, %i.cg
  br i1 %i.ch, label %bb.i, label %._crit_edge, !llvm.loop !90

bb.o:                                             ; preds = %bb.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

.loopexit:                                        ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

.loopexit.split-lp:                               ; preds = %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.p:                                             ; preds = %._crit_edge
  %i.cj = load ptr, ptr %i.at, align 8, !tbaa !91 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 320
  %i.cm = load ptr, ptr %i.cl, align 8
  invoke void %i.cm(ptr noundef nonnull align 8 dereferenceable(136) %i.cj, ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull align 8 dereferenceable(280) %2)
          to label %bb.q unwind label %bb.y

bb.q:                                             ; preds = %bb.p
  %i.cn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb15ArenaLinkedListISt17reference_wrapperINS_16PhysicalOperatorEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %i.as, i64 noundef 0)
          to label %bb.r unwind label %bb.z

bb.r:                                             ; preds = %bb.q
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !91
  %i.cp = invoke fastcc noundef zeroext i1 @_ZN6duckdbL12ContainsSinkERNS_16PhysicalOperatorE(ptr noundef nonnull align 8 dereferenceable(136) %i.co)
          to label %bb.s unwind label %bb.z

bb.s:                                             ; preds = %bb.r
  br i1 %i.cp, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.cq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb15ArenaLinkedListISt17reference_wrapperINS_16PhysicalOperatorEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %i.as, i64 noundef 0)
          to label %bb.u unwind label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !91
  %i.cs = invoke noundef nonnull align 1 ptr @_ZN6duckdb8Pipeline16GetClientContextEv(ptr noundef nonnull align 8 dereferenceable(224) %1)
          to label %bb.v unwind label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.ct = invoke noundef zeroext i1 @_ZNK6duckdb16PhysicalOperator18CanSaturateThreadsERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(136) %i.cr, ptr noundef nonnull align 1 %i.cs)
          to label %bb.w unwind label %bb.z

bb.w:                                             ; preds = %bb.v, %bb.s
  %i.cu = phi i1 [ false, %bb.s ], [ %i.ct, %bb.v ]
  %i.cv = load i64, ptr %i.am, align 8, !tbaa !59 ; 2 uses
  %i.cw = icmp ugt i64 %i.cv, 1
  br i1 %i.cw, label %.lr.ph98, label %._crit_edge99

.lr.ph98:                                         ; preds = %bb.w
  %i.cx = trunc nuw i8 %.4 to i1
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.da = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %bb.aa

._crit_edge99:                                    ; preds = %_ZNSt6vectorIN6duckdb10shared_ptrINS0_8PipelineELb1EEESaIS3_EED2Ev.exit81, %bb.w
  %i.dc = load ptr, ptr %5, align 8, !tbaa !80    ; 2 uses
  %.not.i.i.i64 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i64, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %._crit_edge99
  call void @_ZdlPv(ptr noundef nonnull %i.dc) #20
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EED2Ev.exit: ; preds = %._crit_edge99, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void

bb.y:                                             ; preds = %bb.p, %._crit_edge
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.z:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.r, %bb.q
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.aa:                                            ; preds = %.lr.ph98, %_ZNSt6vectorIN6duckdb10shared_ptrINS0_8PipelineELb1EEESaIS3_EED2Ev.exit81
  %i.df = phi i64 [ %i.cv, %.lr.ph98 ], [ %i.gs, %_ZNSt6vectorIN6duckdb10shared_ptrINS0_8PipelineELb1EEESaIS3_EED2Ev.exit81 ]
  %.03396 = phi i64 [ 1, %.lr.ph98 ], [ %i.gr, %_ZNSt6vectorIN6duckdb10shared_ptrINS0_8PipelineELb1EEESaIS3_EED2Ev.exit81 ] ; 4 uses
  %.03495 = phi i1 [ %i.cu, %.lr.ph98 ], [ %.135, %_ZNSt6vectorIN6duckdb10shared_ptrINS0_8PipelineELb1EEESaIS3_EED2Ev.exit81 ] ; 2 uses
  %i.dg = xor i64 %.03396, -1
  %i.dh = add i64 %i.df, %i.dg
  %i.di = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_8PipelineEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.dh)
          to label %bb.ab unwind label %bb.ai

bb.ab:                                            ; preds = %bb.aa
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !92 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store ptr null, ptr %7, align 8, !tbaa !95
  %i.dk = add i64 %.03396, -1                     ; 2 uses
  %i.dl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb15ArenaLinkedListISt17reference_wrapperINS_16PhysicalOperatorEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %i.as, i64 noundef %i.dk)
          to label %bb.ac unwind label %bb.aj

bb.ac:                                            ; preds = %bb.ab
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !91
  %i.dn = invoke fastcc noundef zeroext i1 @_ZN6duckdbL12ContainsSinkERNS_16PhysicalOperatorE(ptr noundef nonnull align 8 dereferenceable(136) %i.dm)
          to label %bb.ad unwind label %bb.aj

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.dn, label %bb.ae, label %bb.ak

bb.ae:                                            ; preds = %bb.ad
  %i.do = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb15ArenaLinkedListISt17reference_wrapperINS_16PhysicalOperatorEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %i.as, i64 noundef %i.dk)
          to label %bb.af unwind label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !91
  %i.dq = invoke noundef nonnull align 1 ptr @_ZN6duckdb8Pipeline16GetClientContextEv(ptr noundef nonnull align 8 dereferenceable(224) %1)
          to label %bb.ag unwind label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.dr = invoke noundef zeroext i1 @_ZNK6duckdb16PhysicalOperator18CanSaturateThreadsERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(136) %i.dp, ptr noundef nonnull align 1 %i.dq)
end_hunk_0
begin_hunk_1_@_ZN6duckdb20PhysicalRecursiveCTE14BuildPipelinesERNS_8PipelineERNS_12MetaPipelineE:bb.a

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i36
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #19
  br label %_ZN6duckdb10shared_ptrINS_8PipelineELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_8PipelineELb1EED2Ev.exit: ; preds = %bb.ae, %bb.ag, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i36, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %_ZNSt13unordered_mapISt17reference_wrapperIKN6duckdb16PhysicalOperatorEES0_INS1_8PipelineEENS1_21ReferenceHashFunctionIS3_EENS1_17ReferenceEqualityIS3_EESaISt4pairIKS4_S6_EEE4findERSC_.exit.thread

_ZNSt13unordered_mapISt17reference_wrapperIKN6duckdb16PhysicalOperatorEES0_INS1_8PipelineEENS1_21ReferenceHashFunctionIS3_EENS1_17ReferenceEqualityIS3_EESaISt4pairIKS4_S6_EEE4findERSC_.exit.thread: ; preds = %.lr.ph.i.i.i.i, %.preheader, %bb.z, %..loopexit_crit_edge21.i.i.i.i, %_ZN6duckdb10shared_ptrINS_8PipelineELb1EED2Ev.exit
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.045.055, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ea, %i.by
  br i1 %.not, label %._crit_edge.loopexit, label %bb.x

bb.al:                                            ; preds = %_ZNSt13unordered_mapISt17reference_wrapperIKN6duckdb16PhysicalOperatorEES0_INS1_8PipelineEENS1_21ReferenceHashFunctionIS3_EENS1_17ReferenceEqualityIS3_EESaISt4pairIKS4_S6_EEE4findERSC_.exit
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.am:                                            ; preds = %bb.ad
  %i.ec = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_8PipelineELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #19
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pn = phi { ptr, i32 } [ %i.ec, %bb.am ], [ %i.eb, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.w
  %.pn.pn.pn = phi { ptr, i32 } [ %i.cf, %bb.w ], [ %.pn, %bb.an ]
  %i.ed = load ptr, ptr %4, align 8, !tbaa !126   ; 2 uses
  %.not.i.i.i38 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i.i38, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EED2Ev.exit39, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_ZdlPv(ptr noundef nonnull %i.ed) #20
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EED2Ev.exit39

_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EED2Ev.exit39: ; preds = %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %.pn.pn.pn
}

declare noundef nonnull align 8 dereferenceable(112) ptr @_ZNK6duckdb12MetaPipeline8GetStateEv(ptr noundef nonnull align 8 dereferenceable(280)) local_unnamed_addr #1

declare void @_ZN6duckdb18PipelineBuildState17SetPipelineSourceERNS_8PipelineERNS_16PhysicalOperatorE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #1

declare void @_ZN6duckdb8Executor15AddRecursiveCTEERNS_16PhysicalOperatorE(ptr noundef nonnull align 8 dereferenceable(424), ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(280) ptr @_ZN6duckdb12MetaPipeline23CreateChildMetaPipelineERNS_8PipelineERNS_16PhysicalOperatorENS_16MetaPipelineTypeE(ptr noundef nonnull align 8 dereferenceable(280), ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 8 dereferenceable(136), i8 noundef zeroext) local_unnamed_addr #1

declare void @_ZN6duckdb12MetaPipeline5BuildERNS_16PhysicalOperatorE(ptr noundef nonnull align 8 dereferenceable(280), ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb15make_shared_ptrINS_12MetaPipelineEJRNS_8ExecutorERNS_18PipelineBuildStateEPNS_20PhysicalRecursiveCTEEEEENS_10shared_ptrIT_Lb1EEEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.duckdb::shared_ptr.226") align 8 %0, ptr noundef nonnull align 8 dereferenceable(424) %1, ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(296) ptr @_Znwm(i64 noundef 296) #22, !noalias !370 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 8 uses
  store i32 1, ptr %i.b, align 8, !tbaa !107, !noalias !370
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !109, !noalias !370
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6duckdb12MetaPipelineESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !16, !noalias !370
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.e = load ptr, ptr %3, align 8, !tbaa !354, !noalias !370
  invoke void @_ZN6duckdb12MetaPipelineC1ERNS_8ExecutorERNS_18PipelineBuildStateENS_12optional_ptrINS_16PhysicalOperatorELb1EEENS_16MetaPipelineTypeE(ptr noundef nonnull align 8 dereferenceable(280) %i.d, ptr noundef nonnull align 8 dereferenceable(424) %1, ptr noundef nonnull align 8 dereferenceable(112) %2, ptr %i.e, i8 noundef zeroext 0)
          to label %bb.b unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb12MetaPipelineESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i, !noalias !370

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb12MetaPipelineESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i: ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #20, !noalias !370
  resume { ptr, i32 } %i.f

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !327
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.g, align 8, !tbaa !104
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.b, align 8, !tbaa !3
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.b, align 8, !tbaa !3
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.k = atomicrmw volatile add ptr %i.b, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !327
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = phi ptr [ %.pre.i, %bb.d ], [ %i.d, %bb.c ] ; 2 uses
  tail call void @_ZN6duckdb10shared_ptrINS_12MetaPipelineELb1EE18__enable_weak_thisIS1_S1_TnNSt9enable_ifIXsr3std14is_convertibleIPT0_PKNS_23enable_shared_from_thisIT_EEEE5valueEiE4typeELi0EEEvSB_S6_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.l, ptr noundef %i.l) #19
  %i.m = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 4294967297
  %i.o = trunc i64 %i.m to i32                    ; 2 uses
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.b, align 8, !tbaa !107
  store i32 0, ptr %i.c, align 4, !tbaa !109
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #19, !inline_history !153
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #19, !inline_history !153
  br label %_ZNSt12__shared_ptrIN6duckdb12MetaPipelineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = add nsw i32 %i.o, -1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.x = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.o, %bb.h ], [ %i.x, %bb.i ]
  %i.y = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.y, label %bb.j, label %_ZNSt12__shared_ptrIN6duckdb12MetaPipelineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !112

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #19
  br label %_ZNSt12__shared_ptrIN6duckdb12MetaPipelineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6duckdb12MetaPipelineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  ret void
}

declare void @_ZN6duckdb12MetaPipeline15SetRecursiveCTEEv(ptr noundef nonnull align 8 dereferenceable(280)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL21GatherColumnDataScansERKNS_16PhysicalOperatorERNS_6vectorISt17reference_wrapperIS1_ELb1ESaIS5_EEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !373
  %.off = add i8 %i.b, -27
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %bb.b, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !374  ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !375
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = ptrtoint ptr %0 to i64
  store i64 %i.g, ptr %i.d, align 8
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !374
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.i, ptr %i.c, align 8, !tbaa !374
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %1, align 8, !tbaa !126    ; 7 uses
  %i.k = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.e, label %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #21
  unreachable

_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i.i.i, %i.o ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #22 ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  %i.w = ptrtoint ptr %0 to i64
  store i64 %i.w, ptr %i.v, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.x = ptrtoaddr ptr %i.u to i64
  %2 = add i64 %i.k, -8
  %3 = sub i64 %2, %i.l                           ; 2 uses
  %i.y = lshr i64 %3, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %3, 72
  %i.aa = sub i64 %i.l, %i.x
  %diff.check = icmp ugt i64 %i.aa, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader22, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.z, 4611686018427387900      ; 3 uses
  %i.ab = shl i64 %n.vec, 3                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.u, i64 %i.ab   ; 2 uses
  %i.ad = getelementptr i8, ptr %i.j, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ae ; 2 uses
  %next.gep19 = getelementptr i8, ptr %i.j, i64 %i.ae ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  %i.af = getelementptr i8, ptr %next.gep19, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep19, align 8, !alias.scope !379, !noalias !376
  %wide.load20 = load <2 x i64>, ptr %i.af, align 8, !alias.scope !379, !noalias !376
  %i.ag = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !376, !noalias !379
  store <2 x i64> %wide.load20, ptr %i.ag, align 8, !alias.scope !376, !noalias !379
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !381

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader22

.lr.ph.i.i.i.i.i.i.i.preheader22:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader22, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader22 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader22 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  %i.ai = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !379, !noalias !376
  store i64 %i.ai, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !376, !noalias !379
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aj, %i.d
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !382

_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.u, %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ac, %middle.block ], [ %i.ak, %.lr.ph.i.i.i.i.i.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.j) #20
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  store ptr %i.u, ptr %1, align 8, !tbaa !126
  store ptr %i.al, ptr %i.c, align 8, !tbaa !374
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.am, ptr %i.e, align 8, !tbaa !375
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.c, %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.09.014 = load ptr, ptr %i.an, align 8, !tbaa !49 ; 2 uses
  %.not15 = icmp eq ptr %.sroa.09.014, null
  br i1 %.not15, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit
  ret void

.lr.ph:                                           ; preds = %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit, %.lr.ph
  %.sroa.09.016 = phi ptr [ %.sroa.09.0, %.lr.ph ], [ %.sroa.09.014, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.09.016, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !91
  tail call fastcc void @_ZN6duckdbL21GatherColumnDataScansERKNS_16PhysicalOperatorERNS_6vectorISt17reference_wrapperIS1_ELb1ESaIS5_EEE(ptr noundef nonnull align 8 dereferenceable(136) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %.sroa.09.0 = load ptr, ptr %.sroa.09.016, align 8, !tbaa !49 ; 2 uses
  %.not = icmp eq ptr %.sroa.09.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb23enable_shared_from_thisINS_8PipelineEE16shared_from_thisEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::shared_ptr.459") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !383
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !386  ; 9 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null          ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZN6duckdb8weak_ptrINS_8PipelineELb1EEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 6 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i.i.i = icmp eq i8 %i.e, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.e

_ZN6duckdb8weak_ptrINS_8PipelineELb1EEC2ERKS2_.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.i, align 8, !tbaa !104
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.j, align 8, !tbaa !104
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.l = load atomic i32, ptr %i.k monotonic, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.06.i.i.i.i.i = phi i32 [ %i.l, %bb.e ], [ %i.p, %bb.g ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = add nsw i32 %.06.i.i.i.i.i, 1
  %i.n = cmpxchg weak ptr %i.k, i32 %.06.i.i.i.i.i, i32 %i.m acq_rel monotonic, align 8 ; 2 uses
  %i.o = extractvalue { i32, i1 } %i.n, 1
  %i.p = extractvalue { i32, i1 } %i.n, 0
  br i1 %i.o, label %bb.h, label %bb.f, !llvm.loop !387

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i: ; preds = %bb.f, %_ZN6duckdb8weak_ptrINS_8PipelineELb1EEC2ERKS2_.exit
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.q, align 8, !tbaa !16
  invoke void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #21
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i
  unreachable

bb.h:                                             ; preds = %bb.g
  store ptr %i.a, ptr %0, align 8, !tbaa !349
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i.i2 = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i2, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.t = add nsw i32 %i.s, -1
  store i32 %i.t, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.u = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.s, %bb.i ], [ %i.u, %bb.j ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.v, label %bb.k, label %_ZN6duckdb8weak_ptrINS_8PipelineELb1EED2Ev.exit

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #19, !inline_history !388
  br label %_ZN6duckdb8weak_ptrINS_8PipelineELb1EED2Ev.exit

_ZN6duckdb8weak_ptrINS_8PipelineELb1EED2Ev.exit:  ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  ret void

bb.l:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br i1 %.not.i.i.i.i, label %_ZN6duckdb8weak_ptrINS_8PipelineELb1EED2Ev.exit7, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 3 uses
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i.i4 = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i4, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !3  ; 2 uses
  %i.ad = add nsw i32 %i.ac, -1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i5

bb.o:                                             ; preds = %bb.m
  %i.ae = atomicrmw volatile add ptr %i.aa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i5

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i5: ; preds = %bb.o, %bb.n
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !129
  br label %_ZN6duckdb20ExceptionFormatValueC2EOS0_.exit

_ZN6duckdb20ExceptionFormatValueC2EOS0_.exit:     ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ac = phi i64 [ %i.y, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i64 %i.ac, ptr %i.ae, align 8, !tbaa !129
  store ptr %i.v, ptr %i.s, align 8, !tbaa !117
  store i64 0, ptr %i.ad, align 8, !tbaa !129
  store i8 0, ptr %i.v, align 8, !tbaa !111
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN6duckdb20ExceptionFormatValueC2EOS0_.exit, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.au, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.p, %_ZN6duckdb20ExceptionFormatValueC2EOS0_.exit ] ; 5 uses
  %.0911.i.i.i.i = phi ptr [ %i.at, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.c, %_ZN6duckdb20ExceptionFormatValueC2EOS0_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !506)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !509)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.0911.i.i.i.i, i64 32, i1 false), !alias.scope !511
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 48 ; 3 uses
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !128, !alias.scope !506, !noalias !509
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !117, !alias.scope !509, !noalias !506 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 48 ; 5 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40
  %i.am = load i64, ptr %i.al, align 8, !tbaa !129, !alias.scope !509, !noalias !506 ; 3 uses
  %i.an = icmp ult i64 %i.am, 16
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = add nuw nsw i64 %i.am, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ah, ptr noundef nonnull align 8 dereferenceable(1) %i.aj, i64 %i.ao, i1 false), !alias.scope !511
  br label %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !117, !alias.scope !506, !noalias !509
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !111, !alias.scope !509, !noalias !506
  store i64 %i.ap, ptr %i.ah, align 8, !tbaa !111, !alias.scope !506, !noalias !509
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !129, !alias.scope !509, !noalias !506
  br label %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.d
  %i.aq = phi i64 [ %i.am, %bb.d ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  store i64 %i.aq, ptr %i.as, align 8, !tbaa !129, !alias.scope !506, !noalias !509
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !117, !alias.scope !509, !noalias !506
  store i64 0, ptr %i.ar, align 8, !tbaa !129, !alias.scope !509, !noalias !506
  store i8 0, ptr %i.aj, align 8, !tbaa !111, !alias.scope !509, !noalias !506
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 64 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.at, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !512

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i, %_ZN6duckdb20ExceptionFormatValueC2EOS0_.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.p, %_ZN6duckdb20ExceptionFormatValueC2EOS0_.exit ], [ %i.au, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 64 ; 2 uses
  %.not10.i.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i16, label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26, label %.lr.ph.i.i.i.i17

.lr.ph.i.i.i.i17:                                 ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23
  %.012.i.i.i.i18 = phi ptr [ %i.bl, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23 ], [ %i.av, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 5 uses
  %.0911.i.i.i.i19 = phi ptr [ %i.bk, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23 ], [ %1, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !513)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !516)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.012.i.i.i.i18, ptr noundef nonnull align 8 dereferenceable(64) %.0911.i.i.i.i19, i64 32, i1 false), !alias.scope !518
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 32 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 48 ; 3 uses
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !128, !alias.scope !513, !noalias !516
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !117, !alias.scope !516, !noalias !513 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 48 ; 5 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i.i17
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 40
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !129, !alias.scope !516, !noalias !513 ; 3 uses
  %i.be = icmp ult i64 %i.bd, 16
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = add nuw nsw i64 %i.bd, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %i.ba, i64 %i.bf, i1 false), !alias.scope !518
  br label %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i.i17
  store ptr %i.az, ptr %i.aw, align 8, !tbaa !117, !alias.scope !513, !noalias !516
  %i.bg = load i64, ptr %i.ba, align 8, !tbaa !111, !alias.scope !516, !noalias !513
  store i64 %i.bg, ptr %i.ay, align 8, !tbaa !111, !alias.scope !513, !noalias !516
  %.phi.trans.insert.i.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 40
  %.pre.i.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i.i21, align 8, !tbaa !129, !alias.scope !516, !noalias !513
  br label %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23

_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20, %bb.e
  %i.bh = phi i64 [ %i.bd, %bb.e ], [ %.pre.i.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 40
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 40
  store i64 %i.bh, ptr %i.bj, align 8, !tbaa !129, !alias.scope !513, !noalias !516
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !117, !alias.scope !516, !noalias !513
  store i64 0, ptr %i.bi, align 8, !tbaa !129, !alias.scope !516, !noalias !513
  store i8 0, ptr %i.ba, align 8, !tbaa !111, !alias.scope !516, !noalias !513
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 64 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 64 ; 2 uses
  %.not.i.i.i.i24 = icmp eq ptr %i.bk, %i.b
  br i1 %.not.i.i.i.i24, label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26, label %.lr.ph.i.i.i.i17, !llvm.loop !512

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26: ; preds = %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i.i25 = phi ptr [ %i.av, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.bl, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23 ]
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseIN6duckdb20ExceptionFormatValueESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #20
  br label %_ZNSt12_Vector_baseIN6duckdb20ExceptionFormatValueESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb20ExceptionFormatValueESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26, %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !399
  store ptr %.0.lcssa.i.i.i.i25, ptr %i.a, align 8, !tbaa !402
  %i.bn = getelementptr inbounds nuw [64 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !505
  ret void
}

declare void @_ZN6duckdb9Exception25ConstructMessageRecursiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorINS_20ExceptionFormatValueESaISA_EE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb12optional_ptrINS_12MetaPipelineELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.148", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !95
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !117    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #19
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEEvSB_T_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = ptrtoaddr ptr %1 to i64                    ; 3 uses
  %.not94 = icmp eq ptr %2, %3
  br i1 %.not94, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 4 uses
  %i.b = ptrtoint ptr %2 to i64                   ; 6 uses
  %i.c = sub i64 %i.a, %i.b                       ; 9 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !375
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !374  ; 16 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 7 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.c
  br i1 %.not, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.m = sub i64 %i.j, %i.l                       ; 6 uses
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.c
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 %.idx ; 4 uses
  %5 = add i64 %i.a, -8
  %6 = sub i64 %5, %i.b                           ; 2 uses
  %i.q = lshr i64 %6, 3
  %i.r = add nuw nsw i64 %i.q, 1                  ; 2 uses
  %min.iters.check143 = icmp ult i64 %6, 56
  %diff.check141 = icmp ult i64 %i.c, 32
  %or.cond = or i1 %min.iters.check143, %diff.check141
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph144

vector.ph144:                                     ; preds = %bb.d
  %n.vec146 = and i64 %i.r, 4611686018427387900   ; 3 uses
  %i.s = shl i64 %n.vec146, 3                     ; 2 uses
  %i.t = getelementptr i8, ptr %i.h, i64 %i.s
  %i.u = getelementptr i8, ptr %i.p, i64 %i.s
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph144
  %index148 = phi i64 [ 0, %vector.ph144 ], [ %index.next153, %vector.body147 ] ; 2 uses
  %i.v = shl i64 %index148, 3                     ; 2 uses
  %next.gep149 = getelementptr i8, ptr %i.h, i64 %i.v ; 2 uses
  %next.gep150 = getelementptr i8, ptr %i.p, i64 %i.v ; 2 uses
  %i.w = getelementptr i8, ptr %next.gep150, i64 16
  %wide.load151 = load <2 x i64>, ptr %next.gep150, align 8
  %wide.load152 = load <2 x i64>, ptr %i.w, align 8
  %i.x = getelementptr i8, ptr %next.gep149, i64 16
  store <2 x i64> %wide.load151, ptr %next.gep149, align 8
  store <2 x i64> %wide.load152, ptr %i.x, align 8
  %index.next153 = add nuw i64 %index148, 4       ; 2 uses
  %i.y = icmp eq i64 %index.next153, %n.vec146
  br i1 %i.y, label %middle.block154, label %vector.body147, !llvm.loop !519

middle.block154:                                  ; preds = %vector.body147
  %cmp.n155 = icmp eq i64 %i.r, %n.vec146
  br i1 %cmp.n155, label %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %middle.block154
  %.013.i.i.i.i.i.ph = phi ptr [ %i.h, %bb.d ], [ %i.t, %middle.block154 ]
  %.sroa.08.012.i.i.i.i.i.ph = phi ptr [ %i.p, %bb.d ], [ %i.u, %middle.block154 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.z = load i64, ptr %.sroa.08.012.i.i.i.i.i, align 8
  store i64 %i.z, ptr %.013.i.i.i.i.i, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !520

_ZSt22__uninitialized_move_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block154
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !374
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.c
  store ptr %i.ad, ptr %i.g, align 8, !tbaa !374
  %i.ae = ptrtoint ptr %i.p to i64
  %i.af = sub i64 %i.ae, %i.l                     ; 3 uses
  %i.ag = ashr exact i64 %i.af, 3                 ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, 1
  br i1 %i.ah, label %bb.e, label %bb.f, !prof !122

bb.e:                                             ; preds = %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  %i.ai = sub nsw i64 0, %i.ag
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ai
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aj, ptr align 8 %1, i64 %i.af, i1 false)
  br label %_ZSt13move_backwardIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_ET0_T_S7_S6_.exit

bb.f:                                             ; preds = %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  %i.ak = icmp eq i64 %i.af, 8
  br i1 %i.ak, label %bb.g, label %_ZSt13move_backwardIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_ET0_T_S7_S6_.exit

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds i8, ptr %i.h, i64 -8
  %i.am = load i64, ptr %1, align 8
  store i64 %i.am, ptr %i.al, align 8
  br label %_ZSt13move_backwardIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_ET0_T_S7_S6_.exit

_ZSt13move_backwardIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_ET0_T_S7_S6_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.an = icmp sgt i64 %i.c, 8
  br i1 %i.an, label %bb.h, label %bb.i, !prof !122

bb.h:                                             ; preds = %_ZSt13move_backwardIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_ET0_T_S7_S6_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

bb.i:                                             ; preds = %_ZSt13move_backwardIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_ET0_T_S7_S6_.exit
  %i.ao = icmp eq i64 %i.c, 8
  br i1 %i.ao, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

bb.j:                                             ; preds = %bb.i
  %i.ap = load i64, ptr %2, align 8
  store i64 %i.ap, ptr %1, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.aq = getelementptr inbounds i8, ptr %2, i64 %i.m ; 4 uses
  %.not7.i.i.i.i = icmp eq ptr %i.aq, %3
  br i1 %.not7.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEES7_S6_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.ar = add i64 %i.a, %i.l
  %i.as = add i64 %i.ar, -8
  %7 = add i64 %i.j, %i.b
  %8 = sub i64 %i.as, %7                          ; 2 uses
  %i.at = lshr i64 %8, 3
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %8, 72
  %i.av = sub i64 %i.b, %i.l
  %diff.check = icmp ugt i64 %i.av, -32
  %or.cond214 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond214, label %.lr.ph.i.i.i.i.preheader223, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.au, 4611686018427387900     ; 3 uses
  %i.aw = shl i64 %n.vec, 3                       ; 2 uses
  %i.ax = getelementptr i8, ptr %i.h, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.aq, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.az ; 2 uses
  %next.gep119 = getelementptr i8, ptr %i.aq, i64 %i.az ; 2 uses
  %i.ba = getelementptr i8, ptr %next.gep119, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep119, align 8
  %wide.load120 = load <2 x i64>, ptr %i.ba, align 8
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8
  store <2 x i64> %wide.load120, ptr %i.bb, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !521

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEES7_S6_ET0_T_SD_SC_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i.preheader223

.lr.ph.i.i.i.i.preheader223:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.ph = phi ptr [ %i.h, %.lr.ph.i.i.i.i.preheader ], [ %i.ax, %middle.block ]
  %.sroa.04.08.i.i.i.i.ph = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.preheader ], [ %i.ay, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader223, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i ], [ %.09.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader223 ] ; 2 uses
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader223 ] ; 2 uses
  %i.bd = load i64, ptr %.sroa.04.08.i.i.i.i, align 8
  store i64 %i.bd, ptr %.09.i.i.i.i, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.be, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEES7_S6_ET0_T_SD_SC_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !522

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEES7_S6_ET0_T_SD_SC_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i, %middle.block
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !374
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEES7_S6_ET0_T_SD_SC_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEES7_S6_ET0_T_SD_SC_RSaIT1_E.exit: ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEES7_S6_ET0_T_SD_SC_RSaIT1_E.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.bg = phi ptr [ %.pre, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEES7_S6_ET0_T_SD_SC_RSaIT1_E.exit.loopexit ], [ %i.h, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.bh = ptrtoaddr ptr %i.bg to i64
  %i.bi = sub nuw nsw i64 %i.d, %i.n
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bi ; 6 uses
  store ptr %i.bj, ptr %i.g, align 8, !tbaa !374
  %.not11.i.i.i.i.i51 = icmp eq ptr %1, %i.h
  br i1 %.not11.i.i.i.i.i51, label %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit57, label %.lr.ph.i.i.i.i.i52.preheader

.lr.ph.i.i.i.i.i52.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEES7_S6_ET0_T_SD_SC_RSaIT1_E.exit
  %9 = add i64 %i.j, -8
  %10 = sub i64 %9, %i.l                          ; 2 uses
  %i.bk = lshr i64 %10, 3
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check125 = icmp ult i64 %10, 136
  br i1 %min.iters.check125, label %.lr.ph.i.i.i.i.i52.preheader222, label %vector.memcheck122

vector.memcheck122:                               ; preds = %.lr.ph.i.i.i.i.i52.preheader
  %i.bm = add i64 %i.c, %i.bh
  %i.bn = sub i64 %i.j, %i.bm
  %diff.check123 = icmp ugt i64 %i.bn, -32
  br i1 %diff.check123, label %.lr.ph.i.i.i.i.i52.preheader222, label %vector.ph126

vector.ph126:                                     ; preds = %vector.memcheck122
  %n.vec128 = and i64 %i.bl, 4611686018427387900  ; 3 uses
  %i.bo = shl i64 %n.vec128, 3                    ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bj, i64 %i.bo
  %i.bq = getelementptr i8, ptr %1, i64 %i.bo
  br label %vector.body129

vector.body129:                                   ; preds = %vector.body129, %vector.ph126
  %index130 = phi i64 [ 0, %vector.ph126 ], [ %index.next135, %vector.body129 ] ; 2 uses
  %i.br = shl i64 %index130, 3                    ; 2 uses
  %next.gep131 = getelementptr i8, ptr %i.bj, i64 %i.br ; 2 uses
  %next.gep132 = getelementptr i8, ptr %1, i64 %i.br ; 2 uses
  %i.bs = getelementptr i8, ptr %next.gep132, i64 16
  %wide.load133 = load <2 x i64>, ptr %next.gep132, align 8
  %wide.load134 = load <2 x i64>, ptr %i.bs, align 8
  %i.bt = getelementptr i8, ptr %next.gep131, i64 16
  store <2 x i64> %wide.load133, ptr %next.gep131, align 8
  store <2 x i64> %wide.load134, ptr %i.bt, align 8
  %index.next135 = add nuw i64 %index130, 4       ; 2 uses
  %i.bu = icmp eq i64 %index.next135, %n.vec128
  br i1 %i.bu, label %middle.block136, label %vector.body129, !llvm.loop !523

middle.block136:                                  ; preds = %vector.body129
  %cmp.n137 = icmp eq i64 %i.bl, %n.vec128
  br i1 %cmp.n137, label %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit57.loopexit, label %.lr.ph.i.i.i.i.i52.preheader222

.lr.ph.i.i.i.i.i52.preheader222:                  ; preds = %vector.memcheck122, %.lr.ph.i.i.i.i.i52.preheader, %middle.block136
  %.013.i.i.i.i.i53.ph = phi ptr [ %i.bj, %vector.memcheck122 ], [ %i.bj, %.lr.ph.i.i.i.i.i52.preheader ], [ %i.bp, %middle.block136 ]
  %.sroa.08.012.i.i.i.i.i54.ph = phi ptr [ %1, %vector.memcheck122 ], [ %1, %.lr.ph.i.i.i.i.i52.preheader ], [ %i.bq, %middle.block136 ]
  br label %.lr.ph.i.i.i.i.i52

.lr.ph.i.i.i.i.i52:                               ; preds = %.lr.ph.i.i.i.i.i52.preheader222, %.lr.ph.i.i.i.i.i52
  %.013.i.i.i.i.i53 = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i52 ], [ %.013.i.i.i.i.i53.ph, %.lr.ph.i.i.i.i.i52.preheader222 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i54 = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i52 ], [ %.sroa.08.012.i.i.i.i.i54.ph, %.lr.ph.i.i.i.i.i52.preheader222 ] ; 2 uses
  %i.bv = load i64, ptr %.sroa.08.012.i.i.i.i.i54, align 8
  store i64 %i.bv, ptr %.013.i.i.i.i.i53, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i54, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i53, i64 8
  %.not.i.i.i.i.i55 = icmp eq ptr %i.bw, %i.h
  br i1 %.not.i.i.i.i.i55, label %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit57.loopexit, label %.lr.ph.i.i.i.i.i52, !llvm.loop !524

_ZSt22__uninitialized_move_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit57.loopexit: ; preds = %.lr.ph.i.i.i.i.i52, %middle.block136
  %.pre99 = load ptr, ptr %i.g, align 8, !tbaa !374
  br label %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit57

_ZSt22__uninitialized_move_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit57: ; preds = %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit57.loopexit, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEES7_S6_ET0_T_SD_SC_RSaIT1_E.exit
  %i.by = phi ptr [ %.pre99, %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit57.loopexit ], [ %i.bj, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEES7_S6_ET0_T_SD_SC_RSaIT1_E.exit ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.m
  store ptr %i.bz, ptr %i.g, align 8, !tbaa !374
  %i.ca = icmp sgt i64 %i.m, 8
  br i1 %i.ca, label %bb.k, label %bb.l, !prof !122

bb.k:                                             ; preds = %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit57
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %i.m, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

bb.l:                                             ; preds = %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit57
  %i.cb = icmp eq i64 %i.m, 8
  br i1 %i.cb, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

bb.m:                                             ; preds = %bb.l
  %i.cc = load i64, ptr %2, align 8
  store i64 %i.cc, ptr %1, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

bb.n:                                             ; preds = %bb.b
  %i.cd = load ptr, ptr %0, align 8, !tbaa !126   ; 7 uses
  %i.ce = ptrtoint ptr %i.cd to i64               ; 3 uses
  %i.cf = sub i64 %i.j, %i.ce
  %i.cg = ashr exact i64 %i.cf, 3                 ; 4 uses
  %i.ch = sub nsw i64 1152921504606846975, %i.cg
  %i.ci = icmp ult i64 %i.ch, %i.d
  br i1 %i.ci, label %bb.o, label %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #21
  unreachable

_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.n
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.cg, i64 %i.d)
  %i.cj = add nsw i64 %.sroa.speculated.i, %i.cg  ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %i.cg
  %i.cl = tail call i64 @llvm.umin.i64(i64 %i.cj, i64 1152921504606846975)
  %i.cm = select i1 %i.ck, i64 1152921504606846975, i64 %i.cl ; 3 uses
  %.not.i = icmp eq i64 %i.cm, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_M_allocateEm.exit, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit
  %i.cn = shl nuw nsw i64 %i.cm, 3
  %i.co = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #22
  br label %_ZNSt12_Vector_baseISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit, %bb.p
  %i.cp = phi ptr [ %i.co, %bb.p ], [ null, %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %.not11.i.i.i.i.i59 = icmp eq ptr %i.cd, %1
  br i1 %.not11.i.i.i.i.i59, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i60.preheader

.lr.ph.i.i.i.i.i60.preheader:                     ; preds = %_ZNSt12_Vector_baseISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_M_allocateEm.exit
  %i.cq = ptrtoaddr ptr %i.cp to i64
  %i.cr = add i64 %4, -8
  %i.cs = sub i64 %i.cr, %i.ce                    ; 2 uses
  %i.ct = lshr i64 %i.cs, 3
  %i.cu = add nuw nsw i64 %i.ct, 1                ; 2 uses
  %min.iters.check161 = icmp ult i64 %i.cs, 72
  %i.cv = sub i64 %i.ce, %i.cq
  %diff.check159 = icmp ugt i64 %i.cv, -32
  %or.cond215 = or i1 %min.iters.check161, %diff.check159
  br i1 %or.cond215, label %.lr.ph.i.i.i.i.i60.preheader220, label %vector.ph162

vector.ph162:                                     ; preds = %.lr.ph.i.i.i.i.i60.preheader
  %n.vec164 = and i64 %i.cu, 4611686018427387900  ; 3 uses
  %i.cw = shl i64 %n.vec164, 3                    ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cp, i64 %i.cw  ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cd, i64 %i.cw
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph162
  %index166 = phi i64 [ 0, %vector.ph162 ], [ %index.next171, %vector.body165 ] ; 2 uses
  %i.cz = shl i64 %index166, 3                    ; 2 uses
  %next.gep167 = getelementptr i8, ptr %i.cp, i64 %i.cz ; 2 uses
  %next.gep168 = getelementptr i8, ptr %i.cd, i64 %i.cz ; 2 uses
  %i.da = getelementptr i8, ptr %next.gep168, i64 16
  %wide.load169 = load <2 x i64>, ptr %next.gep168, align 8
  %wide.load170 = load <2 x i64>, ptr %i.da, align 8
  %i.db = getelementptr i8, ptr %next.gep167, i64 16
  store <2 x i64> %wide.load169, ptr %next.gep167, align 8
  store <2 x i64> %wide.load170, ptr %i.db, align 8
  %index.next171 = add nuw i64 %index166, 4       ; 2 uses
  %i.dc = icmp eq i64 %index.next171, %n.vec164
  br i1 %i.dc, label %middle.block172, label %vector.body165, !llvm.loop !525

middle.block172:                                  ; preds = %vector.body165
  %cmp.n173 = icmp eq i64 %i.cu, %n.vec164
  br i1 %cmp.n173, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i60.preheader220

.lr.ph.i.i.i.i.i60.preheader220:                  ; preds = %.lr.ph.i.i.i.i.i60.preheader, %middle.block172
  %.013.i.i.i.i.i61.ph = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i60.preheader ], [ %i.cx, %middle.block172 ]
  %.sroa.08.012.i.i.i.i.i62.ph = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i60.preheader ], [ %i.cy, %middle.block172 ]
  br label %.lr.ph.i.i.i.i.i60

.lr.ph.i.i.i.i.i60:                               ; preds = %.lr.ph.i.i.i.i.i60.preheader220, %.lr.ph.i.i.i.i.i60
  %.013.i.i.i.i.i61 = phi ptr [ %i.df, %.lr.ph.i.i.i.i.i60 ], [ %.013.i.i.i.i.i61.ph, %.lr.ph.i.i.i.i.i60.preheader220 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i62 = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i60 ], [ %.sroa.08.012.i.i.i.i.i62.ph, %.lr.ph.i.i.i.i.i60.preheader220 ] ; 2 uses
  %i.dd = load i64, ptr %.sroa.08.012.i.i.i.i.i62, align 8
  store i64 %i.dd, ptr %.013.i.i.i.i.i61, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i62, i64 8 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i61, i64 8 ; 2 uses
  %.not.i.i.i.i.i63 = icmp eq ptr %i.de, %1
  br i1 %.not.i.i.i.i.i63, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i60, !llvm.loop !526

_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i60, %middle.block172, %_ZNSt12_Vector_baseISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_M_allocateEm.exit
  %.0.lcssa.i.i.i.i.i64 = phi ptr [ %i.cp, %_ZNSt12_Vector_baseISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_M_allocateEm.exit ], [ %i.cx, %middle.block172 ], [ %i.df, %.lr.ph.i.i.i.i.i60 ] ; 4 uses
  %11 = add i64 %i.a, -8
  %12 = sub i64 %11, %i.b                         ; 2 uses
  %i.dg = lshr i64 %12, 3
  %i.dh = add nuw nsw i64 %i.dg, 1                ; 2 uses
  %min.iters.check180 = icmp ult i64 %12, 72
  %.0.lcssa.i.i.i.i.i64177 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i64 to i64
  %i.di = sub i64 %i.b, %.0.lcssa.i.i.i.i.i64177
  %diff.check178 = icmp ugt i64 %i.di, -32
  %or.cond216 = select i1 %min.iters.check180, i1 true, i1 %diff.check178
  br i1 %or.cond216, label %.lr.ph.i.i.i.i66.preheader, label %vector.ph181

vector.ph181:                                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  %n.vec183 = and i64 %i.dh, 4611686018427387900  ; 3 uses
  %i.dj = shl i64 %n.vec183, 3                    ; 2 uses
  %i.dk = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i64, i64 %i.dj ; 2 uses
  %i.dl = getelementptr i8, ptr %2, i64 %i.dj
  br label %vector.body184

vector.body184:                                   ; preds = %vector.body184, %vector.ph181
  %index185 = phi i64 [ 0, %vector.ph181 ], [ %index.next190, %vector.body184 ] ; 2 uses
  %i.dm = shl i64 %index185, 3                    ; 2 uses
  %next.gep186 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i64, i64 %i.dm ; 2 uses
  %next.gep187 = getelementptr i8, ptr %2, i64 %i.dm ; 2 uses
  %i.dn = getelementptr i8, ptr %next.gep187, i64 16
  %wide.load188 = load <2 x i64>, ptr %next.gep187, align 8
  %wide.load189 = load <2 x i64>, ptr %i.dn, align 8
  %i.do = getelementptr i8, ptr %next.gep186, i64 16
  store <2 x i64> %wide.load188, ptr %next.gep186, align 8
  store <2 x i64> %wide.load189, ptr %i.do, align 8
  %index.next190 = add nuw i64 %index185, 4       ; 2 uses
  %i.dp = icmp eq i64 %index.next190, %n.vec183
  br i1 %i.dp, label %middle.block191, label %vector.body184, !llvm.loop !527

middle.block191:                                  ; preds = %vector.body184
  %cmp.n192 = icmp eq i64 %i.dh, %n.vec183
  br i1 %cmp.n192, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEES7_S6_ET0_T_SD_SC_RSaIT1_E.exit71, label %.lr.ph.i.i.i.i66.preheader

.lr.ph.i.i.i.i66.preheader:                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, %middle.block191
  %.09.i.i.i.i67.ph = phi ptr [ %.0.lcssa.i.i.i.i.i64, %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit ], [ %i.dk, %middle.block191 ]
  %.sroa.04.08.i.i.i.i68.ph = phi ptr [ %2, %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit ], [ %i.dl, %middle.block191 ]
  br label %.lr.ph.i.i.i.i66

.lr.ph.i.i.i.i66:                                 ; preds = %.lr.ph.i.i.i.i66.preheader, %.lr.ph.i.i.i.i66
  %.09.i.i.i.i67 = phi ptr [ %i.ds, %.lr.ph.i.i.i.i66 ], [ %.09.i.i.i.i67.ph, %.lr.ph.i.i.i.i66.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i68 = phi ptr [ %i.dr, %.lr.ph.i.i.i.i66 ], [ %.sroa.04.08.i.i.i.i68.ph, %.lr.ph.i.i.i.i66.preheader ] ; 2 uses
  %i.dq = load i64, ptr %.sroa.04.08.i.i.i.i68, align 8
  store i64 %i.dq, ptr %.09.i.i.i.i67, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i68, i64 8 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i67, i64 8 ; 2 uses
  %.not.i.i.i.i69 = icmp eq ptr %i.dr, %3
  br i1 %.not.i.i.i.i69, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEES7_S6_ET0_T_SD_SC_RSaIT1_E.exit71, label %.lr.ph.i.i.i.i66, !llvm.loop !528

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEES7_S6_ET0_T_SD_SC_RSaIT1_E.exit71: ; preds = %.lr.ph.i.i.i.i66, %middle.block191
  %.lcssa117 = phi ptr [ %i.dk, %middle.block191 ], [ %i.ds, %.lr.ph.i.i.i.i66 ] ; 5 uses
  %.not11.i.i.i.i.i72 = icmp eq ptr %1, %i.h
  br i1 %.not11.i.i.i.i.i72, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit78, label %.lr.ph.i.i.i.i.i73.preheader

.lr.ph.i.i.i.i.i73.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEES7_S6_ET0_T_SD_SC_RSaIT1_E.exit71
  %.lcssa117196 = ptrtoaddr ptr %.lcssa117 to i64
  %i.dt = add i64 %i.j, -8
  %i.du = sub i64 %i.dt, %4                       ; 2 uses
  %i.dv = lshr i64 %i.du, 3
  %i.dw = add nuw nsw i64 %i.dv, 1                ; 2 uses
  %min.iters.check199 = icmp ult i64 %i.du, 72
  %i.dx = sub i64 %4, %.lcssa117196
  %diff.check197 = icmp ugt i64 %i.dx, -32
  %or.cond217 = select i1 %min.iters.check199, i1 true, i1 %diff.check197
  br i1 %or.cond217, label %.lr.ph.i.i.i.i.i73.preheader218, label %vector.ph200

vector.ph200:                                     ; preds = %.lr.ph.i.i.i.i.i73.preheader
  %n.vec202 = and i64 %i.dw, 4611686018427387900  ; 3 uses
  %i.dy = shl i64 %n.vec202, 3                    ; 2 uses
  %i.dz = getelementptr i8, ptr %.lcssa117, i64 %i.dy ; 2 uses
  %i.ea = getelementptr i8, ptr %1, i64 %i.dy
  br label %vector.body203

vector.body203:                                   ; preds = %vector.body203, %vector.ph200
  %index204 = phi i64 [ 0, %vector.ph200 ], [ %index.next209, %vector.body203 ] ; 2 uses
  %i.eb = shl i64 %index204, 3                    ; 2 uses
  %next.gep205 = getelementptr i8, ptr %.lcssa117, i64 %i.eb ; 2 uses
  %next.gep206 = getelementptr i8, ptr %1, i64 %i.eb ; 2 uses
  %i.ec = getelementptr i8, ptr %next.gep206, i64 16
  %wide.load207 = load <2 x i64>, ptr %next.gep206, align 8
  %wide.load208 = load <2 x i64>, ptr %i.ec, align 8
  %i.ed = getelementptr i8, ptr %next.gep205, i64 16
  store <2 x i64> %wide.load207, ptr %next.gep205, align 8
  store <2 x i64> %wide.load208, ptr %i.ed, align 8
  %index.next209 = add nuw i64 %index204, 4       ; 2 uses
  %i.ee = icmp eq i64 %index.next209, %n.vec202
  br i1 %i.ee, label %middle.block210, label %vector.body203, !llvm.loop !529

middle.block210:                                  ; preds = %vector.body203
  %cmp.n211 = icmp eq i64 %i.dw, %n.vec202
  br i1 %cmp.n211, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit78, label %.lr.ph.i.i.i.i.i73.preheader218

.lr.ph.i.i.i.i.i73.preheader218:                  ; preds = %.lr.ph.i.i.i.i.i73.preheader, %middle.block210
  %.013.i.i.i.i.i74.ph = phi ptr [ %.lcssa117, %.lr.ph.i.i.i.i.i73.preheader ], [ %i.dz, %middle.block210 ]
  %.sroa.08.012.i.i.i.i.i75.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i73.preheader ], [ %i.ea, %middle.block210 ]
  br label %.lr.ph.i.i.i.i.i73

.lr.ph.i.i.i.i.i73:                               ; preds = %.lr.ph.i.i.i.i.i73.preheader218, %.lr.ph.i.i.i.i.i73
  %.013.i.i.i.i.i74 = phi ptr [ %i.eh, %.lr.ph.i.i.i.i.i73 ], [ %.013.i.i.i.i.i74.ph, %.lr.ph.i.i.i.i.i73.preheader218 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i75 = phi ptr [ %i.eg, %.lr.ph.i.i.i.i.i73 ], [ %.sroa.08.012.i.i.i.i.i75.ph, %.lr.ph.i.i.i.i.i73.preheader218 ] ; 2 uses
  %i.ef = load i64, ptr %.sroa.08.012.i.i.i.i.i75, align 8
  store i64 %i.ef, ptr %.013.i.i.i.i.i74, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i75, i64 8 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i74, i64 8 ; 2 uses
  %.not.i.i.i.i.i76 = icmp eq ptr %i.eg, %i.h
  br i1 %.not.i.i.i.i.i76, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit78, label %.lr.ph.i.i.i.i.i73, !llvm.loop !530

_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit78: ; preds = %.lr.ph.i.i.i.i.i73, %middle.block210, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEES7_S6_ET0_T_SD_SC_RSaIT1_E.exit71
  %.0.lcssa.i.i.i.i.i77 = phi ptr [ %.lcssa117, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEES7_S6_ET0_T_SD_SC_RSaIT1_E.exit71 ], [ %i.dz, %middle.block210 ], [ %i.eh, %.lr.ph.i.i.i.i.i73 ]
  %.not.i79 = icmp eq ptr %i.cd, null
  br i1 %.not.i79, label %_ZNSt12_Vector_baseISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit78
  tail call void @_ZdlPv(ptr noundef nonnull %i.cd) #20
  br label %_ZNSt12_Vector_baseISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEES5_SaIS4_EET0_T_S8_S7_RT1_.exit78, %bb.q
  store ptr %i.cp, ptr %0, align 8, !tbaa !126
  store ptr %.0.lcssa.i.i.i.i.i77, ptr %i.g, align 8, !tbaa !374
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.cm
  store ptr %i.ei, ptr %i.e, align 8, !tbaa !375
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIKN6duckdb16PhysicalOperatorEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE13_M_deallocateEPS4_m.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17RecursiveCTEStateC2ERNS_13ClientContextERKNS_20PhysicalRecursiveCTEE(ptr noundef nonnull align 8 dereferenceable(992) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(360) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::vector", align 8    ; 6 uses
  %4 = alloca %"class.duckdb::vector.757", align 8 ; 10 uses
  %5 = alloca %"class.duckdb::unique_ptr.263", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.a, align 8, !tbaa !424
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.c, align 8, !tbaa !531
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb17RecursiveCTEStateE, i64 16), ptr %0, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 0, i64 48, i1 false)
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit unwind label %bb.h

_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit: ; preds = %bb.a
  invoke void @_ZN6duckdb20ColumnDataCollectionC1ERNS_13ClientContextENS_6vectorINS_11LogicalTypeELb1ESaIS4_EEENS_23ColumnDataAllocatorTypeENS_28ColumnDataCollectionLifetimeE(ptr noundef nonnull align 8 dereferenceable(112) %i.e, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull %3, i8 noundef zeroext 0, i32 noundef 0)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit
  %i.g = load ptr, ptr %3, align 8, !tbaa !12     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i ], [ %i.g, %bb.b ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #19
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.i
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !14

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !12
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.b
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.g, %bb.b ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.k) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.l, i8 0, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr %i.n, ptr %i.m, align 8, !tbaa !316
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i64 1, ptr %i.o, align 8, !tbaa !317
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 296
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.q, align 8, !tbaa !318
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.r, i8 0, i64 17, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.s, i8 0, i64 26, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 noundef 2048)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit unwind label %bb.e
end_hunk_2
