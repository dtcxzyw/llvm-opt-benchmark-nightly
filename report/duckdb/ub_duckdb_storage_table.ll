inline.NumInlined: 22010
inline.NumDeleted: 8913
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 650
loop-unroll.NumUnrolled: 660
begin_hunk_0_@_ZN6duckdb22ColumnDataCheckpointerC2ERNS_6vectorISt17reference_wrapperINS_21ColumnCheckpointStateEELb1ESaIS4_EEERNS_14StorageManagerERKNS_8RowGroupERNS_20ColumnCheckpointInfoE:bb.a
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !713
  %i.y = load ptr, ptr %1, align 8, !tbaa !716
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 3                 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !717 ; 3 uses
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !718 ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = sdiv exact i64 %i.ai, 24                ; 3 uses
  %i.ak = icmp ugt i64 %i.ac, %i.aj
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.al = sub nuw nsw i64 %i.ac, %i.aj
  invoke void @_ZNSt6vectorIN6duckdb6vectorINS0_12optional_ptrIKNS0_19CompressionFunctionELb1EEELb1ESaIS5_EEESaIS7_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 noundef %i.al)
          to label %_ZNSt6vectorIN6duckdb6vectorINS0_12optional_ptrIKNS0_19CompressionFunctionELb1EEELb1ESaIS5_EEESaIS7_EE6resizeEm.exit unwind label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.am = icmp ult i64 %i.ac, %i.aj
  br i1 %i.am, label %bb.n, label %_ZNSt6vectorIN6duckdb6vectorINS0_12optional_ptrIKNS0_19CompressionFunctionELb1EEELb1ESaIS5_EEESaIS7_EE6resizeEm.exit

bb.n:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.ac ; 3 uses
  %.not.i.i = icmp eq ptr %i.ae, %i.an
  br i1 %.not.i.i, label %_ZNSt6vectorIN6duckdb6vectorINS0_12optional_ptrIKNS0_19CompressionFunctionELb1EEELb1ESaIS5_EEESaIS7_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.n, %_ZSt8_DestroyIN6duckdb6vectorINS0_12optional_ptrIKNS0_19CompressionFunctionELb1EEELb1ESaIS5_EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ap, %_ZSt8_DestroyIN6duckdb6vectorINS0_12optional_ptrIKNS0_19CompressionFunctionELb1EEELb1ESaIS5_EEEEvPT_.exit.i.i.i.i ], [ %i.an, %bb.n ] ; 2 uses
  %i.ao = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !719 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb6vectorINS0_12optional_ptrIKNS0_19CompressionFunctionELb1EEELb1ESaIS5_EEEEvPT_.exit.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ao) #39
  br label %_ZSt8_DestroyIN6duckdb6vectorINS0_12optional_ptrIKNS0_19CompressionFunctionELb1EEELb1ESaIS5_EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb6vectorINS0_12optional_ptrIKNS0_19CompressionFunctionELb1EEELb1ESaIS5_EEEEvPT_.exit.i.i.i.i: ; preds = %bb.o, %.lr.ph.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ap, %i.ae
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb6vectorINS0_12optional_ptrIKNS0_19CompressionFunctionELb1EEELb1ESaIS5_EEES7_EvT_S9_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !722

_ZSt8_DestroyIPN6duckdb6vectorINS0_12optional_ptrIKNS0_19CompressionFunctionELb1EEELb1ESaIS5_EEES7_EvT_S9_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN6duckdb6vectorINS0_12optional_ptrIKNS0_19CompressionFunctionELb1EEELb1ESaIS5_EEEEvPT_.exit.i.i.i.i
  store ptr %i.an, ptr %i.ad, align 8, !tbaa !717
  br label %_ZNSt6vectorIN6duckdb6vectorINS0_12optional_ptrIKNS0_19CompressionFunctionELb1EEELb1ESaIS5_EEESaIS7_EE6resizeEm.exit

_ZNSt6vectorIN6duckdb6vectorINS0_12optional_ptrIKNS0_19CompressionFunctionELb1EEELb1ESaIS5_EEESaIS7_EE6resizeEm.exit: ; preds = %bb.l, %bb.m, %bb.n, %_ZSt8_DestroyIPN6duckdb6vectorINS0_12optional_ptrIKNS0_19CompressionFunctionELb1EEELb1ESaIS5_EEES7_EvT_S9_RSaIT0_E.exit.i.i
  %i.aq = load ptr, ptr %i.w, align 8, !tbaa !713
  %i.ar = load ptr, ptr %1, align 8, !tbaa !716
  %.not49 = icmp eq ptr %i.aq, %i.ar
  br i1 %.not49, label %._crit_edge48, label %.lr.ph47

.lr.ph47:                                         ; preds = %_ZNSt6vectorIN6duckdb6vectorINS0_12optional_ptrIKNS0_19CompressionFunctionELb1EEELb1ESaIS5_EEESaIS7_EE6resizeEm.exit
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %bb.r

._crit_edge48:                                    ; preds = %_ZNSt6vectorISt17reference_wrapperIKN6duckdb19CompressionFunctionEESaIS4_EED2Ev.exit, %_ZNSt6vectorIN6duckdb6vectorINS0_12optional_ptrIKNS0_19CompressionFunctionELb1EEELb1ESaIS5_EEESaIS7_EE6resizeEm.exit
  ret void

bb.p:                                             ; preds = %_ZN6duckdbL24CreateIntermediateVectorERNS_6vectorISt17reference_wrapperINS_21ColumnCheckpointStateEELb1ESaIS3_EEE.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.q:                                             ; preds = %bb.l, %bb.j
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.r:                                             ; preds = %.lr.ph47, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb19CompressionFunctionEESaIS4_EED2Ev.exit
  %.02746 = phi i64 [ 0, %.lr.ph47 ], [ %i.bh, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb19CompressionFunctionEESaIS4_EED2Ev.exit ] ; 3 uses
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_21ColumnCheckpointStateEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.02746)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !687
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !344, !nonnull !70, !align !145
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 57
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !438
  invoke void @_ZNK6duckdb8DBConfig23GetCompressionFunctionsENS_12PhysicalTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.626") align 8 %8, ptr noundef nonnull align 8 dereferenceable(1360) %i.v, i8 noundef zeroext %i.ba)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.bb = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS0_INS_12optional_ptrIKNS_19CompressionFunctionELb1EEELb1ESaIS4_EEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 noundef %.02746)
          to label %bb.u unwind label %bb.y       ; 4 uses

bb.u:                                             ; preds = %bb.t
  %i.bc = load ptr, ptr %8, align 8, !tbaa !723   ; 3 uses
  %i.bd = load ptr, ptr %i.as, align 8, !tbaa !723 ; 2 uses
  %.not44 = icmp eq ptr %i.bc, %i.bd
  br i1 %.not44, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.u
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %.pre = load ptr, ptr %i.be, align 8, !tbaa !725
  %.pre50 = load ptr, ptr %i.bf, align 8, !tbaa !726
  br label %bb.z

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIN6duckdb12optional_ptrIKNS0_19CompressionFunctionELb1EEESaIS4_EE9push_backEOS4_.exit
  %.pre51 = load ptr, ptr %8, align 8, !tbaa !727
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.u
  %i.bg = phi ptr [ %.pre51, %._crit_edge.loopexit ], [ %i.bc, %bb.u ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb19CompressionFunctionEESaIS4_EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %._crit_edge
  call void @_ZdlPv(ptr noundef nonnull %i.bg) #39
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb19CompressionFunctionEESaIS4_EED2Ev.exit

_ZNSt6vectorISt17reference_wrapperIKN6duckdb19CompressionFunctionEESaIS4_EED2Ev.exit: ; preds = %._crit_edge, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  %i.bh = add nuw i64 %.02746, 1                  ; 2 uses
  %i.bi = load ptr, ptr %i.w, align 8, !tbaa !713
  %i.bj = load ptr, ptr %1, align 8, !tbaa !716
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 3
  %i.bo = icmp ult i64 %i.bh, %i.bn
  br i1 %i.bo, label %bb.r, label %._crit_edge48, !llvm.loop !729

bb.w:                                             ; preds = %bb.r
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.x:                                             ; preds = %bb.s
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb19CompressionFunctionEESaIS4_EED2Ev.exit38

bb.y:                                             ; preds = %bb.t
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.z:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN6duckdb12optional_ptrIKNS0_19CompressionFunctionELb1EEESaIS4_EE9push_backEOS4_.exit
  %i.bs = phi ptr [ %.pre50, %.lr.ph ], [ %i.db, %_ZNSt6vectorIN6duckdb12optional_ptrIKNS0_19CompressionFunctionELb1EEESaIS4_EE9push_backEOS4_.exit ] ; 5 uses
  %i.bt = phi ptr [ %.pre, %.lr.ph ], [ %i.dc, %_ZNSt6vectorIN6duckdb12optional_ptrIKNS0_19CompressionFunctionELb1EEESaIS4_EE9push_backEOS4_.exit ] ; 3 uses
  %.sroa.041.045 = phi ptr [ %i.bc, %.lr.ph ], [ %i.dd, %_ZNSt6vectorIN6duckdb12optional_ptrIKNS0_19CompressionFunctionELb1EEESaIS4_EE9push_backEOS4_.exit ] ; 2 uses
  %i.bu = load ptr, ptr %.sroa.041.045, align 8, !tbaa !647 ; 2 uses
  %.not.i.i33 = icmp eq ptr %i.bt, %i.bs
  br i1 %.not.i.i33, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bv = ptrtoint ptr %i.bu to i64
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !730
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 2 uses
  store ptr %i.bw, ptr %i.be, align 8, !tbaa !725
  br label %_ZNSt6vectorIN6duckdb12optional_ptrIKNS0_19CompressionFunctionELb1EEESaIS4_EE9push_backEOS4_.exit

bb.ab:                                            ; preds = %bb.z
  %i.bx = load ptr, ptr %i.bb, align 8, !tbaa !719 ; 7 uses
  %i.by = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.bz = ptrtoint ptr %i.bx to i64               ; 3 uses
  %i.ca = sub i64 %i.by, %i.bz                    ; 3 uses
  %i.cb = icmp eq i64 %i.ca, 9223372036854775800
  br i1 %i.cb, label %bb.ac, label %_ZNKSt6vectorIN6duckdb12optional_ptrIKNS0_19CompressionFunctionELb1EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.164) #40
          to label %.noexc35 unwind label %.loopexit.split-lp

.noexc35:                                         ; preds = %bb.ac
  unreachable

_ZNKSt6vectorIN6duckdb12optional_ptrIKNS0_19CompressionFunctionELb1EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ab
  %i.cc = ashr exact i64 %i.ca, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cc, i64 1)
  %i.cd = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cc ; 2 uses
  %i.ce = icmp ult i64 %i.cd, %i.cc
  %i.cf = call i64 @llvm.umin.i64(i64 %i.cd, i64 1152921504606846975)
  %i.cg = select i1 %i.ce, i64 1152921504606846975, i64 %i.cf ; 3 uses
  %.not.i.i.i.i34 = icmp ne i64 %i.cg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i34)
  %i.ch = shl nuw nsw i64 %i.cg, 3
  %i.ci = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ch) #38
          to label %.noexc36 unwind label %.loopexit ; 8 uses

.noexc36:                                         ; preds = %_ZNKSt6vectorIN6duckdb12optional_ptrIKNS0_19CompressionFunctionELb1EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ca
  %i.ck = ptrtoint ptr %i.bu to i64
  store i64 %i.ck, ptr %i.cj, align 8, !tbaa !730
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.bx, %i.bs
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb12optional_ptrIKNS0_19CompressionFunctionELb1EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc36
  %i.cl = ptrtoaddr ptr %i.ci to i64
  %9 = sub i64 %i.by, %i.bz
  %10 = add i64 %9, -8                            ; 2 uses
  %i.cm = lshr i64 %10, 3
  %i.cn = add nuw nsw i64 %i.cm, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %10, 24
  %i.co = sub i64 %i.bz, %i.cl
  %diff.check = icmp ugt i64 %i.co, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader73, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.cn, 4611686018427387900     ; 3 uses
  %i.cp = shl i64 %n.vec, 3                       ; 2 uses
  %i.cq = getelementptr i8, ptr %i.ci, i64 %i.cp  ; 2 uses
  %i.cr = getelementptr i8, ptr %i.bx, i64 %i.cp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cs = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ci, i64 %i.cs ; 2 uses
  %next.gep70 = getelementptr i8, ptr %i.bx, i64 %i.cs ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !731)
  call void @llvm.experimental.noalias.scope.decl(metadata !734)
  %i.ct = getelementptr i8, ptr %next.gep70, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep70, align 8, !tbaa !730, !alias.scope !734, !noalias !731
  %wide.load71 = load <2 x i64>, ptr %i.ct, align 8, !tbaa !730, !alias.scope !734, !noalias !731
  %i.cu = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !730, !alias.scope !731, !noalias !734
  store <2 x i64> %wide.load71, ptr %i.cu, align 8, !tbaa !730, !alias.scope !731, !noalias !734
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %middle.block, label %vector.body, !llvm.loop !736

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cn, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb12optional_ptrIKNS0_19CompressionFunctionELb1EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader73

.lr.ph.i.i.i.i.i.i.i.preheader73:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cq, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cr, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader73, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader73 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader73 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !731)
  call void @llvm.experimental.noalias.scope.decl(metadata !734)
  %i.cw = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !730, !alias.scope !734, !noalias !731
  store i64 %i.cw, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !730, !alias.scope !731, !noalias !734
  %i.cx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cx, %i.bs
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb12optional_ptrIKNS0_19CompressionFunctionELb1EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !737

_ZNSt6vectorIN6duckdb12optional_ptrIKNS0_19CompressionFunctionELb1EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc36
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ci, %.noexc36 ], [ %i.cq, %middle.block ], [ %i.cy, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb12optional_ptrIKNS0_19CompressionFunctionELb1EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIN6duckdb12optional_ptrIKNS0_19CompressionFunctionELb1EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bx) #39
  br label %_ZNSt6vectorIN6duckdb12optional_ptrIKNS0_19CompressionFunctionELb1EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb12optional_ptrIKNS0_19CompressionFunctionELb1EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.ad, %_ZNSt6vectorIN6duckdb12optional_ptrIKNS0_19CompressionFunctionELb1EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  store ptr %i.ci, ptr %i.bb, align 8, !tbaa !719
  store ptr %i.cz, ptr %i.be, align 8, !tbaa !725
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cg ; 2 uses
  store ptr %i.da, ptr %i.bf, align 8, !tbaa !726
  br label %_ZNSt6vectorIN6duckdb12optional_ptrIKNS0_19CompressionFunctionELb1EEESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIN6duckdb12optional_ptrIKNS0_19CompressionFunctionELb1EEESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt6vectorIN6duckdb12optional_ptrIKNS0_19CompressionFunctionELb1EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.aa
  %i.db = phi ptr [ %i.da, %_ZNSt6vectorIN6duckdb12optional_ptrIKNS0_19CompressionFunctionELb1EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.bs, %bb.aa ]
  %i.dc = phi ptr [ %i.cz, %_ZNSt6vectorIN6duckdb12optional_ptrIKNS0_19CompressionFunctionELb1EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.bw, %bb.aa ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.041.045, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.dd, %i.bd
  br i1 %.not, label %._crit_edge.loopexit, label %bb.z

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb12optional_ptrIKNS0_19CompressionFunctionELb1EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.loopexit.split-lp:                               ; preds = %bb.ac
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ae:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.y
  %.pn = phi { ptr, i32 } [ %i.br, %bb.y ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.de = load ptr, ptr %8, align 8, !tbaa !727   ; 2 uses
  %.not.i.i.i37 = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i37, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb19CompressionFunctionEESaIS4_EED2Ev.exit38, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_ZdlPv(ptr noundef nonnull %i.de) #39
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb19CompressionFunctionEESaIS4_EED2Ev.exit38

_ZNSt6vectorISt17reference_wrapperIKN6duckdb19CompressionFunctionEESaIS4_EED2Ev.exit38: ; preds = %bb.af, %bb.ae, %bb.x
  %.pn.pn = phi { ptr, i32 } [ %i.bq, %bb.x ], [ %.pn, %bb.ae ], [ %.pn, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.ag

bb.ag:                                            ; preds = %bb.q, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb19CompressionFunctionEESaIS4_EED2Ev.exit38, %bb.w, %bb.p
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.at, %bb.p ], [ %i.au, %bb.q ], [ %.pn.pn, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb19CompressionFunctionEESaIS4_EED2Ev.exit38 ], [ %i.bp, %bb.w ]
  call void @_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_12AnalyzeStateESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.t) #37
  call void @_ZNSt6vectorIN6duckdb6vectorINS0_12optional_ptrIKNS0_19CompressionFunctionELb1EEELb1ESaIS5_EEESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.s) #37
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.c) #37
  br label %common.resume
}

declare noundef nonnull align 8 dereferenceable(1560) ptr @_ZN6duckdb14StorageManager11GetDatabaseEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_21ColumnCheckpointStateEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.17", align 1 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !713
  %i.e = load ptr, ptr %0, align 8, !tbaa !716    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !24
  store i64 %i.i, ptr %i.b, align 8, !tbaa !24
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorISt17reference_wrapperINS_21ColumnCheckpointStateEELb1ESaIS3_EE3getILb1EEERS3_m.exit, label %bb.b, !prof !432

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.183, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !35     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #37
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorISt17reference_wrapperINS_21ColumnCheckpointStateEELb1ESaIS3_EE3getILb1EEERS3_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

declare void @_ZNK6duckdb8DBConfig23GetCompressionFunctionsENS_12PhysicalTypeE(ptr dead_on_unwind writable sret(%"class.duckdb::vector.626") align 8, ptr noundef nonnull align 8 dereferenceable(1360), i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS0_INS_12optional_ptrIKNS_19CompressionFunctionELb1EEELb1ESaIS4_EEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb22ColumnDataCheckpointer11InitAnalyzeEv:bb.a

bb.k:                                             ; preds = %_ZNK6duckdb12optional_ptrIKNS_19CompressionFunctionELb1EE10CheckValidEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %.02138 ; 2 uses
  %i.co = load ptr, ptr %2, align 8, !tbaa !744
  store ptr null, ptr %2, align 8, !tbaa !744
  %i.cp = load ptr, ptr %i.cn, align 8, !tbaa !744 ; 3 uses
  store ptr %i.co, ptr %i.cn, align 8, !tbaa !744
  %.not.i.i.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_12AnalyzeStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb12AnalyzeStateEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb12AnalyzeStateEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.k
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !12
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.cp) #37, !inline_history !867
  br label %_ZN6duckdb10unique_ptrINS_12AnalyzeStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_12AnalyzeStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.k, %_ZNKSt14default_deleteIN6duckdb12AnalyzeStateEEclEPS1_.exit.i.i.i.i.i
  %i.ct = load ptr, ptr %2, align 8, !tbaa !744   ; 3 uses
  %.not.i = icmp eq ptr %i.ct, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb12AnalyzeStateESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb12AnalyzeStateEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb12AnalyzeStateEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_12AnalyzeStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !12
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ct) #37, !inline_history !868
  br label %_ZNSt10unique_ptrIN6duckdb12AnalyzeStateESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12AnalyzeStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN6duckdb10unique_ptrINS_12AnalyzeStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb12AnalyzeStateEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  %.pre = load ptr, ptr %i.av, align 8, !tbaa !725
  %.pre43 = load ptr, ptr %i.am, align 8, !tbaa !719
  br label %bb.l

bb.l:                                             ; preds = %_ZN6duckdb6vectorINS_12optional_ptrIKNS_19CompressionFunctionELb1EEELb1ESaIS4_EEixEm.exit, %_ZNSt10unique_ptrIN6duckdb12AnalyzeStateESt14default_deleteIS1_EED2Ev.exit
  %i.cx = phi ptr [ %i.bq, %_ZN6duckdb6vectorINS_12optional_ptrIKNS_19CompressionFunctionELb1EEELb1ESaIS4_EEixEm.exit ], [ %.pre43, %_ZNSt10unique_ptrIN6duckdb12AnalyzeStateESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %i.cy = phi ptr [ %i.br, %_ZN6duckdb6vectorINS_12optional_ptrIKNS_19CompressionFunctionELb1EEELb1ESaIS4_EEixEm.exit ], [ %.pre, %_ZNSt10unique_ptrIN6duckdb12AnalyzeStateESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %i.cz = add nuw i64 %.02138, 1                  ; 2 uses
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = ptrtoint ptr %i.cx to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = ashr exact i64 %i.dc, 3
  %i.de = icmp ult i64 %i.cz, %i.dd
  br i1 %i.de, label %_ZN6duckdb6vectorINS_12optional_ptrIKNS_19CompressionFunctionELb1EEELb1ESaIS4_EEixEm.exit, label %._crit_edge, !llvm.loop !869

.body:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27 ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i28 ], [ %.pn8.i.i.i24, %bb.i ]
  %i.df = load ptr, ptr %2, align 8, !tbaa !744   ; 3 uses
  %.not.i29 = icmp eq ptr %i.df, null
  br i1 %.not.i29, label %common.resume, label %_ZNKSt14default_deleteIN6duckdb12AnalyzeStateEEclEPS1_.exit.i30

_ZNKSt14default_deleteIN6duckdb12AnalyzeStateEEclEPS1_.exit.i30: ; preds = %.body
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !12
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.df) #37, !inline_history !868
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS0_INS_10unique_ptrINS_12AnalyzeStateESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEELb1ESaIS7_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.17", align 1 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !739
  %i.e = load ptr, ptr %0, align 8, !tbaa !738    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !24
  store i64 %i.i, ptr %i.b, align 8, !tbaa !24
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS0_INS_10unique_ptrINS_12AnalyzeStateESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEELb1ESaIS7_EE3getILb1EEERS7_m.exit, label %bb.b, !prof !432

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.183, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !35     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #37
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorINS0_INS_10unique_ptrINS_12AnalyzeStateESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEELb1ESaIS7_EE3getILb1EEERS7_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_12AnalyzeStateESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !743  ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !740    ; 11 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !870
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.d
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not28.i = icmp ult i64 %i.n, %i.i
  br i1 %.not28.i, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_12AnalyzeStateESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_12AnalyzeStateESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i: ; preds = %bb.b
  %i.r = shl nuw nsw i64 %i.i, 3                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.r, i1 false), !tbaa !871
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !743
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12AnalyzeStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.p, %i.i
  br i1 %i.s, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12AnalyzeStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.182) #40
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12AnalyzeStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #38 ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  %i.y = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.x, i8 0, i64 %i.y, i1 false), !tbaa !871
  %.not10.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12AnalyzeStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12AnalyzeStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %2 = sub i64 %i.d, %i.e
  %3 = add i64 %2, -8                             ; 2 uses
  %i.z = lshr i64 %3, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %3, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader20, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ab = add i64 %i.d, -8
  %i.ac = sub i64 %i.ab, %i.e
  %i.ad = and i64 %i.ac, -8
  %i.ae = add i64 %i.ad, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.ae
  %scevgep16 = getelementptr i8, ptr %i.c, i64 %i.ae
  %bound0 = icmp ult ptr %i.w, %scevgep16
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader20, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.w, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.c, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ai ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.c, i64 %i.ai ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !873)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !876)
  %i.aj = getelementptr i8, ptr %next.gep17, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep17, align 8, !tbaa !744, !alias.scope !878, !noalias !873
  %wide.load18 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !744, !alias.scope !878, !noalias !873
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !744, !alias.scope !881, !noalias !878
  store <2 x i64> %wide.load18, ptr %i.ak, align 8, !tbaa !744, !alias.scope !881, !noalias !878
  %i.al = getelementptr i8, ptr %next.gep17, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep17, align 8, !tbaa !744, !alias.scope !878, !noalias !873
  store <2 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !744, !alias.scope !878, !noalias !873
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !883

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12AnalyzeStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader20

.lr.ph.i.i.i.i.i.preheader20:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader20, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !873)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !876)
  %i.an = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !744, !alias.scope !876, !noalias !873
  store i64 %i.an, ptr %.012.i.i.i.i.i, align 8, !tbaa !744, !alias.scope !873, !noalias !876
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !744, !alias.scope !876, !noalias !873
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12AnalyzeStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !884

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12AnalyzeStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12AnalyzeStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %.not.i35.i = icmp eq ptr %i.c, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_12AnalyzeStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12AnalyzeStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #39
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_12AnalyzeStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_12AnalyzeStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i: ; preds = %bb.e, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12AnalyzeStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !740
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.i
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !743
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !870
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12AnalyzeStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.f:                                             ; preds = %bb.a
  %i.as = icmp ult i64 %1, %i.g
  br i1 %i.as, label %bb.g, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12AnalyzeStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1 ; 3 uses
  %.not.i4 = icmp eq ptr %i.b, %i.at
  br i1 %.not.i4, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12AnalyzeStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12AnalyzeStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ay, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12AnalyzeStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.at, %bb.g ] ; 2 uses
  %i.au = load ptr, ptr %.05.i.i.i, align 8, !tbaa !744 ; 3 uses
  %.not.i.i.i.i.i5 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i5, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12AnalyzeStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb12AnalyzeStateEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb12AnalyzeStateEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !12
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.au) #37, !inline_history !885
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12AnalyzeStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12AnalyzeStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb12AnalyzeStateEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ay, %i.b
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12AnalyzeStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !747

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12AnalyzeStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12AnalyzeStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  store ptr %i.at, ptr %i.a, align 8, !tbaa !743
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12AnalyzeStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12AnalyzeStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12AnalyzeStateESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.g, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_12AnalyzeStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i, %_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_12AnalyzeStateESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb22ColumnDataCheckpointer27DetectBestCompressionMethodEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::vector.700") align 8 %0, ptr noundef nonnull align 8 dereferenceable(192) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.17", align 1 ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.duckdb::vector.706", align 8 ; 11 uses
  %6 = alloca %"class.std::function", align 8     ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::allocator.17", align 1 ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !886, !nonnull !70, !align !145
  %i.g = tail call noundef nonnull align 8 dereferenceable(1560) ptr @_ZN6duckdb14StorageManager11GetDatabaseEv(ptr noundef nonnull align 8 dereferenceable(224) %i.f) ; 2 uses
  %i.h = tail call noundef nonnull align 8 dereferenceable(1360) ptr @_ZN6duckdb8DBConfig9GetConfigERNS_16DatabaseInstanceE(ptr noundef nonnull align 8 dereferenceable(1560) %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.i = load ptr, ptr %1, align 8, !tbaa !750, !nonnull !70, !align !145 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !713  ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !716  ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3                   ; 4 uses
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %.noexc, label %_ZNSt6vectorIN6duckdb15CompressionTypeESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.160) #40
  unreachable

_ZNSt6vectorIN6duckdb15CompressionTypeESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i.i.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIN6duckdb15CompressionTypeESaIS1_EEC2EmRKS2_.exit.thread.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i:             ; preds = %_ZNSt6vectorIN6duckdb15CompressionTypeESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #38 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.r, i8 0, i64 %i.p, i1 false), !tbaa !887
  br label %_ZNSt12_Vector_baseIN6duckdb15CompressionTypeESaIS1_EEC2EmRKS2_.exit.thread.i.i

_ZNSt12_Vector_baseIN6duckdb15CompressionTypeESaIS1_EEC2EmRKS2_.exit.thread.i.i: ; preds = %_ZNSt6vectorIN6duckdb15CompressionTypeESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i
  %.sink = phi ptr [ %i.r, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ], [ null, %_ZNSt6vectorIN6duckdb15CompressionTypeESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i ]
  %.sink.i.i = phi ptr [ %i.s, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ], [ null, %_ZNSt6vectorIN6duckdb15CompressionTypeESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i ] ; 2 uses
  store ptr %.sink, ptr %5, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.sink.i.i, ptr %i.u, align 8, !tbaa !888
  store ptr %.sink.i.i, ptr %i.t, align 8, !tbaa !890
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !891, !nonnull !70, !align !145 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !892, !nonnull !70, !align !145
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !895, !nonnull !70, !align !145
  %i.ab = load i64, ptr %i.w, align 8, !tbaa !906
  %i.ac = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZNK6duckdb6vectorINS_15CompressionTypeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 noundef %i.ab)
          to label %_ZN6duckdb20ColumnCheckpointInfo18GetCompressionTypeEv.exit unwind label %bb.h

_ZN6duckdb20ColumnCheckpointInfo18GetCompressionTypeEv.exit: ; preds = %_ZNSt12_Vector_baseIN6duckdb15CompressionTypeESaIS1_EEC2EmRKS2_.exit.thread.i.i
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !887
  %.fr = freeze i8 %i.ad                          ; 2 uses
  %i.ae = load ptr, ptr %1, align 8, !tbaa !750, !nonnull !70, !align !145 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !713
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !716
  %.not313 = icmp eq ptr %i.ag, %i.ah
  br i1 %.not313, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6duckdb20ColumnCheckpointInfo18GetCompressionTypeEv.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %cond = icmp eq i8 %.fr, 0
  br i1 %cond, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.g
end_hunk_1
begin_hunk_2_@_ZN6duckdb10ColumnData10ScanVectorERNS_15ColumnScanStateERNS_6VectorEmNS_14ScanVectorTypeEm:bb.a
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0.i = phi i1 [ false, %bb.n ], [ true, %bb.m ] ; 2 uses
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ba = load ptr, ptr %7, align 8, !tbaa !35    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.o
  call void @_ZdlPv(ptr noundef %i.ba) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br i1 %.0.i, label %bb.p, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br i1 %.0.i, label %bb.p, label %.body

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn14.i = phi { ptr, i32 } [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.ax) #37
  br label %.body

bb.q:                                             ; preds = %bb.k
  %i.bd = add i64 %.05487, %i.am
  %i.be = load ptr, ptr %i.ar, align 8, !tbaa !647
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 104
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1053
  invoke void %i.bg(ptr noundef nonnull align 8 dereferenceable(240) %i.ae, ptr noundef nonnull align 8 dereferenceable(104) %11, i64 noundef %i.au, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.bd)
          to label %_ZN6duckdb13ColumnSegment8FetchRowERNS_16ColumnFetchStateElRNS_6VectorEm.exit unwind label %bb.v, !inline_history !1054

bb.r:                                             ; preds = %bb.n
  unreachable

_ZN6duckdb13ColumnSegment8FetchRowERNS_16ColumnFetchStateElRNS_6VectorEm.exit: ; preds = %bb.q
  %i.bh = load ptr, ptr %i.t, align 8, !tbaa !1055 ; 3 uses
  %i.bi = load ptr, ptr %i.u, align 8, !tbaa !1056 ; 2 uses
  %.not.i2.i.i = icmp eq ptr %i.bh, %i.bi
  br i1 %.not.i2.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ColumnFetchStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN6duckdb13ColumnSegment8FetchRowERNS_16ColumnFetchStateElRNS_6VectorEm.exit, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ColumnFetchStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i
  %.0.i3.i.i = phi ptr [ %i.bk, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ColumnFetchStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i ], [ %i.bh, %_ZN6duckdb13ColumnSegment8FetchRowERNS_16ColumnFetchStateElRNS_6VectorEm.exit ] ; 4 uses
  %i.bj = load ptr, ptr %.0.i3.i.i, align 8, !tbaa !1057 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ColumnFetchStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i
  call void @_ZNKSt14default_deleteIN6duckdb16ColumnFetchStateEEclEPS1_(ptr noundef nonnull align 1 dereferenceable(1) %.0.i3.i.i, ptr noundef nonnull %i.bj), !inline_history !1059
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ColumnFetchStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ColumnFetchStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i: ; preds = %bb.s, %.lr.ph.i.i
  store ptr null, ptr %.0.i3.i.i, align 8, !tbaa !1057
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bk, %i.bi
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ColumnFetchStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exitthread-pre-split.i, label %.lr.ph.i.i, !llvm.loop !1060

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ColumnFetchStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ColumnFetchStateESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i
  %.pr.i = load ptr, ptr %i.t, align 8, !tbaa !1055
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ColumnFetchStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ColumnFetchStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ColumnFetchStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exitthread-pre-split.i, %_ZN6duckdb13ColumnSegment8FetchRowERNS_16ColumnFetchStateElRNS_6VectorEm.exit
  %i.bl = phi ptr [ %.pr.i, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ColumnFetchStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exitthread-pre-split.i ], [ %i.bh, %_ZN6duckdb13ColumnSegment8FetchRowERNS_16ColumnFetchStateElRNS_6VectorEm.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i1.i, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ColumnFetchStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ColumnFetchStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.bl) #39, !inline_history !1061
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ColumnFetchStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ColumnFetchStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i: ; preds = %bb.t, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ColumnFetchStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i
  %i.bm = load ptr, ptr %i.q, align 8, !tbaa !1062 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableIlSt4pairIKlN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ColumnFetchStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i ], [ %i.bm, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ColumnFetchStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i ] ; 3 uses
  %i.bn = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !69 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 16
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bo) #37, !inline_history !1061
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i) #39, !inline_history !1061
  %.not.i.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_HashtableIlSt4pairIKlN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1063

_ZNSt10_HashtableIlSt4pairIKlN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ColumnFetchStateESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i
  %i.bp = load ptr, ptr %i.n, align 8, !tbaa !1050
  %i.bq = load i64, ptr %i.p, align 8, !tbaa !1051
  %i.br = shl i64 %i.bq, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bp, i8 0, i64 %i.br, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %i.bs = load ptr, ptr %i.n, align 8, !tbaa !1050 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.o
  br i1 %i.bt, label %_ZN6duckdb16ColumnFetchStateD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt10_HashtableIlSt4pairIKlN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i
  call void @_ZdlPv(ptr noundef %i.bs) #39, !inline_history !1061
  br label %_ZN6duckdb16ColumnFetchStateD2Ev.exit

_ZN6duckdb16ColumnFetchStateD2Ev.exit:            ; preds = %_ZNSt10_HashtableIlSt4pairIKlN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  %i.bu = add nuw i64 %.05487, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bu, %i.al
  br i1 %exitcond.not, label %.loopexit, label %bb.k, !llvm.loop !1064

bb.v:                                             ; preds = %bb.q
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.p, %bb.v
  %eh.lpad-body = phi { ptr, i32 } [ %i.bv, %bb.v ], [ %i.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn14.i, %bb.p ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @_ZN6duckdb16ColumnFetchStateD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %11) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  br label %bb.af

bb.w:                                             ; preds = %bb.j, %bb.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ae, i64 200
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !647 ; 2 uses
  br i1 %i.v, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 72
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !1065
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(240) %i.ae, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %i.al, ptr noundef nonnull align 8 dereferenceable(104) %2), !inline_history !1066
  br label %.loopexit

bb.y:                                             ; preds = %bb.w
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 80
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !1067
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(240) %i.ae, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %i.al, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.am), !inline_history !1068
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN6duckdb16ColumnFetchStateD2Ev.exit, %bb.x, %bb.y
  %i.cc = load i64, ptr %i.j, align 8, !tbaa !779
  %i.cd = add i64 %i.cc, %i.al
  store i64 %i.cd, ptr %i.j, align 8, !tbaa !779
  %i.ce = sub i64 %.05589, %i.al                  ; 2 uses
  %.not66 = icmp eq i64 %i.ce, 0
  br i1 %.not66, label %.thread82, label %.thread

.thread:                                          ; preds = %bb.h, %.loopexit
  %.15679 = phi i64 [ %i.ce, %.loopexit ], [ %.05589, %bb.h ] ; 2 uses
  call void @_ZNK6duckdb12optional_ptrINS_11SegmentNodeINS_13ColumnSegmentEEELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %i.cf = load ptr, ptr %i.i, align 8, !tbaa !751
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load atomic ptr, ptr %i.cg seq_cst, align 8 ; 2 uses
  %.not86 = icmp eq ptr %i.ch, null
  br i1 %.not86, label %.thread82, label %bb.z

bb.z:                                             ; preds = %.thread
  %i.ci = load ptr, ptr %i.y, align 8, !tbaa !849 ; 6 uses
  %i.cj = load ptr, ptr %i.z, align 8, !tbaa !1069
  %.not.i = icmp eq ptr %i.ci, %i.cj
  br i1 %.not.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ck = load i64, ptr %i.x, align 8, !tbaa !760
  store i64 %i.ck, ptr %i.ci, align 8, !tbaa !760
  store ptr null, ptr %i.x, align 8, !tbaa !760
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %i.cl, ptr %i.y, align 8, !tbaa !849
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16SegmentScanStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

bb.ab:                                            ; preds = %bb.z
  %i.cm = load ptr, ptr %i.w, align 8, !tbaa !848 ; 10 uses
  %i.cn = ptrtoint ptr %i.ci to i64               ; 3 uses
  %i.co = ptrtoint ptr %i.cm to i64               ; 3 uses
  %i.cp = sub i64 %i.cn, %i.co                    ; 3 uses
  %i.cq = icmp eq i64 %i.cp, 9223372036854775800
  br i1 %i.cq, label %bb.ac, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16SegmentScanStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.164) #40
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16SegmentScanStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ab
  %i.cr = ashr exact i64 %i.cp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cr, i64 1)
  %i.cs = add nsw i64 %.sroa.speculated.i.i.i, %i.cr ; 2 uses
  %i.ct = icmp ult i64 %i.cs, %i.cr
  %i.cu = call i64 @llvm.umin.i64(i64 %i.cs, i64 1152921504606846975)
  %i.cv = select i1 %i.ct, i64 1152921504606846975, i64 %i.cu ; 3 uses
  %.not.i.i.i69 = icmp ne i64 %i.cv, 0
  call void @llvm.assume(i1 %.not.i.i.i69)
  %i.cw = shl nuw nsw i64 %i.cv, 3
  %i.cx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cw) #38 ; 10 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cp
  %i.cz = load i64, ptr %i.x, align 8, !tbaa !760
  store i64 %i.cz, ptr %i.cy, align 8, !tbaa !760
  store ptr null, ptr %i.x, align 8, !tbaa !760
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.cm, %i.ci
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16SegmentScanStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16SegmentScanStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %12 = sub i64 %i.cn, %i.co
  %13 = add i64 %12, -8                           ; 2 uses
  %i.da = lshr i64 %13, 3
  %i.db = add nuw nsw i64 %i.da, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %13, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader120, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.cx, i64 8
  %i.dc = add i64 %i.cn, -8
  %i.dd = sub i64 %i.dc, %i.co
  %i.de = and i64 %i.dd, -8                       ; 2 uses
  %scevgep114 = getelementptr i8, ptr %scevgep, i64 %i.de
  %scevgep115 = getelementptr i8, ptr %i.cm, i64 8
  %scevgep116 = getelementptr i8, ptr %scevgep115, i64 %i.de
  %bound0 = icmp ult ptr %i.cx, %scevgep116
  %bound1 = icmp ult ptr %i.cm, %scevgep114
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader120, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.db, 4611686018427387900     ; 3 uses
  %i.df = shl i64 %n.vec, 3                       ; 2 uses
  %i.dg = getelementptr i8, ptr %i.cx, i64 %i.df  ; 2 uses
  %i.dh = getelementptr i8, ptr %i.cm, i64 %i.df
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.di = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cx, i64 %i.di ; 2 uses
  %next.gep117 = getelementptr i8, ptr %i.cm, i64 %i.di ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1070)
  call void @llvm.experimental.noalias.scope.decl(metadata !1073)
  %i.dj = getelementptr i8, ptr %next.gep117, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep117, align 8, !tbaa !760, !alias.scope !1075, !noalias !1070
  %wide.load118 = load <2 x i64>, ptr %i.dj, align 8, !tbaa !760, !alias.scope !1075, !noalias !1070
  %i.dk = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !760, !alias.scope !1078, !noalias !1075
  store <2 x i64> %wide.load118, ptr %i.dk, align 8, !tbaa !760, !alias.scope !1078, !noalias !1075
  %i.dl = getelementptr i8, ptr %next.gep117, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep117, align 8, !tbaa !760, !alias.scope !1075, !noalias !1070
  store <2 x ptr> splat (ptr null), ptr %i.dl, align 8, !tbaa !760, !alias.scope !1075, !noalias !1070
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !1080

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.db, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16SegmentScanStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader120

.lr.ph.i.i.i.i.i.i.preheader120:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.cx, %vector.memcheck ], [ %i.cx, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.dg, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.cm, %vector.memcheck ], [ %i.cm, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.dh, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader120, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader120 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.do, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader120 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1070)
  call void @llvm.experimental.noalias.scope.decl(metadata !1073)
  %i.dn = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !760, !alias.scope !1073, !noalias !1070
  store i64 %i.dn, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !760, !alias.scope !1070, !noalias !1073
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !760, !alias.scope !1073, !noalias !1070
  %i.do = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.do, %i.ci
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16SegmentScanStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1081

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16SegmentScanStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16SegmentScanStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.cx, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16SegmentScanStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.dg, %middle.block ], [ %i.dp, %.lr.ph.i.i.i.i.i.i ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16SegmentScanStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16SegmentScanStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.cm) #39
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16SegmentScanStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16SegmentScanStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.ad, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16SegmentScanStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.cx, ptr %i.w, align 8, !tbaa !848
  store ptr %i.dq, ptr %i.y, align 8, !tbaa !849
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cv
  store ptr %i.dr, ptr %i.z, align 8, !tbaa !1069
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16SegmentScanStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16SegmentScanStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit: ; preds = %bb.aa, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16SegmentScanStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i
  %i.ds = ptrtoint ptr %i.ch to i64
  store i64 %i.ds, ptr %i.i, align 8, !tbaa !757
  call void @_ZNK6duckdb12optional_ptrINS_11SegmentNodeINS_13ColumnSegmentEEELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %i.dt = load ptr, ptr %i.i, align 8, !tbaa !751
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = call noundef nonnull align 8 dereferenceable(240) ptr @_ZNK6duckdb10shared_ptrINS_13ColumnSegmentELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.du) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 200
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !647
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 64
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !758
  call void %i.dz(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.651") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull align 8 dereferenceable(240) %i.dv), !inline_history !759
  %i.ea = load ptr, ptr %6, align 8, !tbaa !760
  store ptr null, ptr %6, align 8, !tbaa !760
  %i.eb = load ptr, ptr %i.x, align 8, !tbaa !760 ; 3 uses
  store ptr %i.ea, ptr %i.x, align 8, !tbaa !760
  %.not.i.i.i.i.i.i70 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i.i.i.i70, label %bb.ae, label %_ZN6duckdb10unique_ptrINS_16SegmentScanStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i

_ZN6duckdb10unique_ptrINS_16SegmentScanStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16SegmentScanStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !12
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8
  call void %i.ee(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.eb) #37, !inline_history !762
  %.pr.i71 = load ptr, ptr %6, align 8, !tbaa !760 ; 3 uses
  %.not.i.i = icmp eq ptr %.pr.i71, null
  br i1 %.not.i.i, label %bb.ae, label %_ZNKSt14default_deleteIN6duckdb16SegmentScanStateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb16SegmentScanStateEEclEPS1_.exit.i.i: ; preds = %_ZN6duckdb10unique_ptrINS_16SegmentScanStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i
  %i.ef = load ptr, ptr %.pr.i71, align 8, !tbaa !12
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8
  call void %i.eh(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.pr.i71) #37, !inline_history !763
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16SegmentScanStateESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, %_ZN6duckdb10unique_ptrINS_16SegmentScanStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i, %_ZNKSt14default_deleteIN6duckdb16SegmentScanStateEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  store i8 0, ptr %i.ab, align 1, !tbaa !1082
  br label %bb.h

.thread82:                                        ; preds = %.loopexit, %.thread, %bb.g
  %.2 = phi i64 [ 0, %bb.g ], [ 0, %.loopexit ], [ %.15679, %.thread ]
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !779
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.ej, ptr %i.ek, align 8, !tbaa !1017
  %i.el = sub i64 %3, %.2
  ret i64 %i.el

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f, %.body
  %.pn.pn = phi { ptr, i32 } [ %.pn74, %bb.f ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %eh.lpad-body, %.body ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn.pn

bb.ag:                                            ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13ColumnSegment8FetchRowERNS_16ColumnFetchStateElRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator.17", align 1 ; 5 uses
  %i.a = load atomic i64, ptr %0 seq_cst, align 8
  %i.b = icmp ugt i64 %2, %i.a
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.57, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %5, align 8, !tbaa !35     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.f) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn14 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #37
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
end_hunk_2
begin_hunk_3_@_ZN6duckdb10ColumnData14UpdateInternalENS_15TransactionDataERNS_9DataTableEmRNS_6VectorEPlmS5_m:bb.a
          to label %.noexc unwind label %bb.e     ; 3 uses

.noexc:                                           ; preds = %bb.c
  invoke void @_ZN6duckdb13UpdateSegmentC1ERNS_10ColumnDataE(ptr noundef nonnull align 8 dereferenceable(352) %i.e, ptr noundef nonnull align 8 dereferenceable(296) %0)
          to label %_ZN6duckdb9make_uniqINS_13UpdateSegmentEJRNS_10ColumnDataEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.d, !noalias !1131

bb.d:                                             ; preds = %.noexc
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #39, !noalias !1131
  br label %.body

_ZN6duckdb9make_uniqINS_13UpdateSegmentEJRNS_10ColumnDataEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %.noexc
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !990  ; 3 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !990
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb13UpdateSegmentESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb13UpdateSegmentEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb13UpdateSegmentEEclEPS1_.exit.i.i.i.i.i: ; preds = %_ZN6duckdb9make_uniqINS_13UpdateSegmentEJRNS_10ColumnDataEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  tail call void @_ZN6duckdb13UpdateSegmentD1Ev(ptr noundef nonnull align 8 dead_on_return(352) dereferenceable(352) %i.g) #37
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #39
  br label %_ZNSt10unique_ptrIN6duckdb13UpdateSegmentESt14default_deleteIS1_EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt10unique_ptrIN6duckdb13UpdateSegmentESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN6duckdb9make_uniqINS_13UpdateSegmentEJRNS_10ColumnDataEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit, %_ZNKSt14default_deleteIN6duckdb13UpdateSegmentEEclEPS1_.exit.i.i.i.i.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.i = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13UpdateSegmentESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb13UpdateSegmentESt14default_deleteIS1_EED2Ev.exit
  invoke void @_ZN6duckdb13UpdateSegment6UpdateENS_15TransactionDataERNS_9DataTableEmRNS_6VectorEPlmS5_m(ptr noundef nonnull align 8 dereferenceable(352) %i.i, ptr noundef nonnull byval(%"struct.duckdb::TransactionData") align 8 %1, ptr noundef nonnull align 8 dereferenceable(124) %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(104) %7, i64 noundef %8)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #37 ; 0 uses
  ret void

bb.h:                                             ; preds = %bb.f, %_ZNSt10unique_ptrIN6duckdb13UpdateSegmentESt14default_deleteIS1_EED2Ev.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.d, %bb.h
  %.pn = phi { ptr, i32 } [ %i.k, %bb.h ], [ %i.h, %bb.e ], [ %i.f, %bb.d ]
  %i.l = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #37 ; 0 uses
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13UpdateSegment6UpdateENS_15TransactionDataERNS_9DataTableEmRNS_6VectorEPlmS5_m(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef byval(%"struct.duckdb::TransactionData") align 8 %1, ptr noundef nonnull align 8 dereferenceable(124) %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(104) %7, i64 noundef %8) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"struct.duckdb::UndoBufferPointer", align 8 ; 7 uses
  %10 = alloca %"struct.duckdb::UndoBufferReference", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::allocator.17", align 1 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %13 = alloca %"struct.duckdb::SelectionVector", align 8 ; 8 uses
  %14 = alloca %"class.duckdb::unique_ptr.923", align 8 ; 6 uses
  %15 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %16 = alloca %"struct.duckdb::SelectionVector", align 8 ; 19 uses
  %17 = alloca %"struct.duckdb::UndoBufferPointer", align 8 ; 6 uses
  %18 = alloca %"struct.duckdb::UndoBufferReference", align 8 ; 8 uses
  %19 = alloca %"struct.duckdb::UndoBufferReference", align 8 ; 13 uses
  %20 = alloca %"class.duckdb::optional_ptr.1451", align 8 ; 27 uses
  %21 = alloca %"struct.duckdb::UndoBufferReference", align 8 ; 7 uses
  %22 = alloca %"struct.duckdb::UndoBufferReference", align 8 ; 8 uses
  %23 = alloca %"struct.duckdb::UndoBufferReference", align 8 ; 10 uses
  %24 = alloca %"struct.duckdb::UndoBufferReference", align 8 ; 11 uses
  %25 = alloca %"class.duckdb::optional_ptr.1451", align 8 ; 17 uses
  %26 = alloca %"struct.duckdb::UndoBufferReference", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #37
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN6duckdb11StorageLock16GetExclusiveLockEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.923") align 8 %14, ptr noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #37
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %15)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %4, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(73) %15)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.d = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #37 ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.d) #40
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1134
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = invoke noundef i64 %i.f(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(128) %i.g, ptr noundef nonnull align 8 dereferenceable(73) %15, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.e unwind label %bb.i       ; 20 uses

bb.e:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.i = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #37 ; 0 uses
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %bb.fi, label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

bb.g:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

bb.h:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #37 ; 0 uses
  br label %.body

bb.j:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %5, ptr %i.a, align 8, !tbaa !312
  %.not5961.i.not = icmp eq i64 %i.h, 1
  %.pre305 = load ptr, ptr %16, align 8, !tbaa !152 ; 4 uses
  br i1 %.not5961.i.not, label %.loopexit295, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j
  %.not.i.i130 = icmp eq ptr %.pre305, null
  br i1 %.not.i.i130, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit50.us.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit50.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit50.us.i: ; preds = %.lr.ph.i, %bb.k
  %.03762.us.i = phi i64 [ %i.t, %bb.k ], [ 1, %.lr.ph.i ] ; 2 uses
  %i.p = getelementptr [8 x i8], ptr %5, i64 %.03762.us.i ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !24
  %i.r = getelementptr i8, ptr %i.p, i64 -8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !24
  %.not.us.i = icmp sgt i64 %i.q, %i.s
  br i1 %.not.us.i, label %bb.k, label %.split.us.i

bb.k:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit50.us.i
  %i.t = add nuw i64 %.03762.us.i, 1              ; 2 uses
  %exitcond74.not.i = icmp eq i64 %i.t, %i.h
  br i1 %exitcond74.not.i, label %.loopexit295.thread, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit50.us.i, !llvm.loop !1135

.loopexit295.thread:                              ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

bb.l:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit50.i
  %i.u = add nuw i64 %.03762.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.u, %i.h
  br i1 %exitcond.not.i, label %.loopexit295.thread349, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit50.i, !llvm.loop !1135

.loopexit295.thread349:                           ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ap

_ZNK6duckdb15SelectionVector9get_indexEm.exit50.i: ; preds = %.lr.ph.i, %bb.l
  %.03762.i = phi i64 [ %i.u, %bb.l ], [ 1, %.lr.ph.i ] ; 2 uses
  %i.v = getelementptr [4 x i8], ptr %.pre305, i64 %.03762.i ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 -4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !3
  %i.y = zext i32 %i.x to i64
  %i.z = load i32, ptr %i.v, align 4, !tbaa !3
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !24
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.y
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !24
  %.not.i = icmp sgt i64 %i.ac, %i.ae
  br i1 %.not.i, label %bb.l, label %.split.us.i

.split.us.i:                                      ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit50.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit50.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %13, i64 noundef range(i64 1, 0) %i.h)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit.preheader.i unwind label %bb.m

_ZN6duckdb15SelectionVectorC2Em.exit.preheader.i: ; preds = %.split.us.i
  %i.ag = load ptr, ptr %16, align 8, !tbaa !152  ; 8 uses
  %.not.i51.i = icmp eq ptr %i.ag, null
  %i.ah = load ptr, ptr %13, align 8, !tbaa !152  ; 26 uses
  %min.iters.check367 = icmp ult i64 %i.h, 8      ; 2 uses
  br i1 %.not.i51.i, label %_ZN6duckdb15SelectionVectorC2Em.exit.us.i.preheader, label %_ZN6duckdb15SelectionVectorC2Em.exit.i.preheader

_ZN6duckdb15SelectionVectorC2Em.exit.i.preheader: ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.preheader.i
  %27 = ptrtoaddr ptr %i.ah to i64
  %i.ai = ptrtoaddr ptr %i.ag to i64
  %i.aj = sub i64 %i.ai, %27
  %diff.check = icmp ugt i64 %i.aj, -32
  %or.cond = select i1 %min.iters.check367, i1 true, i1 %diff.check
  br i1 %or.cond, label %_ZN6duckdb15SelectionVectorC2Em.exit.i.preheader382, label %vector.ph

vector.ph:                                        ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.i.preheader
  %n.vec = and i64 %i.h, -8                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load = load <4 x i32>, ptr %i.ak, align 4, !tbaa !3
  %wide.load365 = load <4 x i32>, ptr %i.al, align 4, !tbaa !3
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <4 x i32> %wide.load, ptr %i.am, align 4, !tbaa !3
  store <4 x i32> %wide.load365, ptr %i.an, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !1136

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.split65.us.i, label %_ZN6duckdb15SelectionVectorC2Em.exit.i.preheader382

_ZN6duckdb15SelectionVectorC2Em.exit.i.preheader382: ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.i.preheader, %middle.block
  %.04263.i.ph = phi i64 [ 0, %_ZN6duckdb15SelectionVectorC2Em.exit.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.h, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb15SelectionVectorC2Em.exit.i.prol.loopexit, label %_ZN6duckdb15SelectionVectorC2Em.exit.i.prol

_ZN6duckdb15SelectionVectorC2Em.exit.i.prol:      ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.i.preheader382, %_ZN6duckdb15SelectionVectorC2Em.exit.i.prol
  %.04263.i.prol = phi i64 [ %i.as, %_ZN6duckdb15SelectionVectorC2Em.exit.i.prol ], [ %.04263.i.ph, %_ZN6duckdb15SelectionVectorC2Em.exit.i.preheader382 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN6duckdb15SelectionVectorC2Em.exit.i.prol ], [ 0, %_ZN6duckdb15SelectionVectorC2Em.exit.i.preheader382 ]
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.04263.i.prol
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.04263.i.prol
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !3
  %i.as = add nuw i64 %.04263.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZN6duckdb15SelectionVectorC2Em.exit.i.prol.loopexit, label %_ZN6duckdb15SelectionVectorC2Em.exit.i.prol, !llvm.loop !1137

_ZN6duckdb15SelectionVectorC2Em.exit.i.prol.loopexit: ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.i.prol, %_ZN6duckdb15SelectionVectorC2Em.exit.i.preheader382
  %.04263.i.unr = phi i64 [ %.04263.i.ph, %_ZN6duckdb15SelectionVectorC2Em.exit.i.preheader382 ], [ %i.as, %_ZN6duckdb15SelectionVectorC2Em.exit.i.prol ]
  %i.at = sub i64 %.04263.i.ph, %i.h
  %i.au = icmp ugt i64 %i.at, -4
  br i1 %i.au, label %.split65.us.i, label %_ZN6duckdb15SelectionVectorC2Em.exit.i

_ZN6duckdb15SelectionVectorC2Em.exit.us.i.preheader: ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.preheader.i
  br i1 %min.iters.check367, label %_ZN6duckdb15SelectionVectorC2Em.exit.us.i.preheader381, label %vector.ph368

vector.ph368:                                     ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.us.i.preheader
  %n.vec370 = and i64 %i.h, -8                    ; 3 uses
  br label %vector.body371

vector.body371:                                   ; preds = %vector.body371, %vector.ph368
  %index372 = phi i64 [ 0, %vector.ph368 ], [ %index.next373, %vector.body371 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph368 ], [ %vec.ind.next, %vector.body371 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index372 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store <4 x i32> %vec.ind, ptr %i.av, align 4, !tbaa !3
  store <4 x i32> %step.add, ptr %i.aw, align 4, !tbaa !3
  %index.next373 = add nuw i64 %index372, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.ax = icmp eq i64 %index.next373, %n.vec370
  br i1 %i.ax, label %middle.block374, label %vector.body371, !llvm.loop !1138

middle.block374:                                  ; preds = %vector.body371
  %cmp.n375 = icmp eq i64 %i.h, %n.vec370
  br i1 %cmp.n375, label %.split65.us.i, label %_ZN6duckdb15SelectionVectorC2Em.exit.us.i.preheader381

_ZN6duckdb15SelectionVectorC2Em.exit.us.i.preheader381: ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.us.i.preheader, %middle.block374
  %.04263.us.i.ph = phi i64 [ 0, %_ZN6duckdb15SelectionVectorC2Em.exit.us.i.preheader ], [ %n.vec370, %middle.block374 ]
  br label %_ZN6duckdb15SelectionVectorC2Em.exit.us.i

_ZN6duckdb15SelectionVectorC2Em.exit.us.i:        ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.us.i.preheader381, %_ZN6duckdb15SelectionVectorC2Em.exit.us.i
  %.04263.us.i = phi i64 [ %i.ba, %_ZN6duckdb15SelectionVectorC2Em.exit.us.i ], [ %.04263.us.i.ph, %_ZN6duckdb15SelectionVectorC2Em.exit.us.i.preheader381 ] ; 3 uses
  %i.ay = trunc i64 %.04263.us.i to i32
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.04263.us.i
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !3
  %i.ba = add nuw i64 %.04263.us.i, 1             ; 2 uses
  %exitcond76.not.i = icmp eq i64 %i.ba, %i.h
  br i1 %exitcond76.not.i, label %.split65.us.i, label %_ZN6duckdb15SelectionVectorC2Em.exit.us.i, !llvm.loop !1139

bb.m:                                             ; preds = %.split.us.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.af) #37
  br label %.body

.split65.us.i:                                    ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.i.prol.loopexit, %_ZN6duckdb15SelectionVectorC2Em.exit.i, %_ZN6duckdb15SelectionVectorC2Em.exit.us.i, %middle.block, %middle.block374
  %.idx.i = shl nuw nsw i64 %i.h, 2
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx.i ; 3 uses
  %i.bd = ptrtoint ptr %i.ah to i64
  %i.be = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.h, i1 true)
  %i.bf = shl nuw nsw i64 %i.be, 1
  %i.bg = xor i64 %i.bf, 126
  call fastcc void @"_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_SA_T0_T1_"(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.bc, i64 noundef %i.bg, ptr nonnull readonly %i.a)
  %i.bh = icmp ugt i64 %i.h, 16
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.ah, i64 4 ; 2 uses
  br i1 %i.bh, label %.preheader.i.i, label %.lr.ph.i20.i.i.i.i

.preheader.i.i:                                   ; preds = %.split65.us.i, %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i.i.i.i.i
  %.021.i.idx.i.i.i.i = phi i64 [ %.021.i.add.i.i.i.i, %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i.i.i.i.i ], [ 4, %.split65.us.i ] ; 4 uses
  %.pn20.i.i.i.i.i = phi ptr [ %.021.i.ptr.i.i.i.i, %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i.i.i.i.i ], [ %i.ah, %.split65.us.i ] ; 3 uses
  %.021.i.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.021.i.idx.i.i.i.i ; 4 uses
  %.0.val.i.i.i.i.i = load i32, ptr %.021.i.ptr.i.i.i.i, align 4, !tbaa !3 ; 2 uses
  %.val17.i.i.i.i.i = load i32, ptr %i.ah, align 4, !tbaa !3 ; 2 uses
  %i.bi = zext i32 %.0.val.i.i.i.i.i to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !24 ; 3 uses
  %i.bl = zext i32 %.val17.i.i.i.i.i to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !24
  %i.bo = icmp slt i64 %i.bk, %i.bn
  br i1 %i.bo, label %bb.n, label %bb.q

bb.n:                                             ; preds = %.preheader.i.i
  %i.bp = icmp samesign ugt i64 %.021.i.idx.i.i.i.i, 4
  br i1 %i.bp, label %bb.o, label %bb.p, !prof !432

bb.o:                                             ; preds = %bb.n
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(1) %i.ah, i64 %.021.i.idx.i.i.i.i, i1 false)
  br label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i.i, i64 4
  store i32 %.val17.i.i.i.i.i, ptr %i.bq, align 4, !tbaa !3
  br label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i.i.i.i.i

bb.q:                                             ; preds = %.preheader.i.i
  %.0.val13.i.i.i.i.i.i = load i32, ptr %.pn20.i.i.i.i.i, align 4, !tbaa !3 ; 2 uses
  %i.br = zext i32 %.0.val13.i.i.i.i.i.i to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.br
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !24
  %i.bu = icmp slt i64 %i.bk, %i.bt
  br i1 %i.bu, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.q, %.lr.ph.i.i.i.i.i.i
  %.0.val16.i.i.i.i.i.i = phi i32 [ %.0.val.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.0.val13.i.i.i.i.i.i, %bb.q ]
  %.015.i.i.i.i.i.i = phi ptr [ %.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.pn20.i.i.i.i.i, %bb.q ] ; 3 uses
  %.0914.i.i.i.i.i.i = phi ptr [ %.015.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.021.i.ptr.i.i.i.i, %bb.q ]
  store i32 %.0.val16.i.i.i.i.i.i, ptr %.0914.i.i.i.i.i.i, align 4, !tbaa !3
  %.0.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.015.i.i.i.i.i.i, i64 -4 ; 2 uses
  %.0.val.i.i.i.i.i.i = load i32, ptr %.0.i.i.i.i.i.i, align 4, !tbaa !3 ; 2 uses
  %i.bv = zext i32 %.0.val.i.i.i.i.i.i to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !24
  %i.by = icmp slt i64 %i.bk, %i.bx
  br i1 %i.by, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i.i.i.i.i, !llvm.loop !1140

_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.q, %bb.p, %bb.o
  %.sink.i.i.i.i.i = phi ptr [ %i.ah, %bb.p ], [ %i.ah, %bb.o ], [ %.021.i.ptr.i.i.i.i, %bb.q ], [ %.015.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  store i32 %.0.val.i.i.i.i.i, ptr %.sink.i.i.i.i.i, align 4, !tbaa !3
  %.021.i.add.i.i.i.i = add nuw nsw i64 %.021.i.idx.i.i.i.i, 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.021.i.add.i.i.i.i, 64
  br i1 %.not.i.i.i.i.i, label %"_ZSt16__insertion_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_SA_T0_.exit.i.i.i.i", label %.preheader.i.i, !llvm.loop !1141

"_ZSt16__insertion_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_SA_T0_.exit.i.i.i.i": ; preds = %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i.i.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %"_ZSt25__unguarded_linear_insertIPjN9__gnu_cxx5__ops14_Val_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_T0_.exit.i.i.i.i.i", %"_ZSt16__insertion_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_SA_T0_.exit.i.i.i.i"
  %.08.i.i.i.i.i = phi ptr [ %i.cm, %"_ZSt25__unguarded_linear_insertIPjN9__gnu_cxx5__ops14_Val_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_T0_.exit.i.i.i.i.i" ], [ %i.bz, %"_ZSt16__insertion_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_SA_T0_.exit.i.i.i.i" ] ; 5 uses
  %i.ca = load i32, ptr %.08.i.i.i.i.i, align 4, !tbaa !3 ; 2 uses
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !24 ; 2 uses
  %.012.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.08.i.i.i.i.i, i64 -4 ; 2 uses
  %.0.val13.i.i11.i.i.i.i = load i32, ptr %.012.i.i.i.i.i.i, align 4, !tbaa !3 ; 2 uses
  %i.ce = zext i32 %.0.val13.i.i11.i.i.i.i to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !24
  %i.ch = icmp slt i64 %i.cd, %i.cg
  br i1 %i.ch, label %.lr.ph.i.i13.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIPjN9__gnu_cxx5__ops14_Val_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_T0_.exit.i.i.i.i.i"

.lr.ph.i.i13.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i13.i.i.i.i
  %.0.val16.i.i14.i.i.i.i = phi i32 [ %.0.val.i.i18.i.i.i.i, %.lr.ph.i.i13.i.i.i.i ], [ %.0.val13.i.i11.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %.015.i.i15.i.i.i.i = phi ptr [ %.0.i.i17.i.i.i.i, %.lr.ph.i.i13.i.i.i.i ], [ %.012.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.0914.i.i16.i.i.i.i = phi ptr [ %.015.i.i15.i.i.i.i, %.lr.ph.i.i13.i.i.i.i ], [ %.08.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  store i32 %.0.val16.i.i14.i.i.i.i, ptr %.0914.i.i16.i.i.i.i, align 4, !tbaa !3
  %.0.i.i17.i.i.i.i = getelementptr inbounds i8, ptr %.015.i.i15.i.i.i.i, i64 -4 ; 2 uses
  %.0.val.i.i18.i.i.i.i = load i32, ptr %.0.i.i17.i.i.i.i, align 4, !tbaa !3 ; 2 uses
  %i.ci = zext i32 %.0.val.i.i18.i.i.i.i to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ci
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !24
  %i.cl = icmp slt i64 %i.cd, %i.ck
  br i1 %i.cl, label %.lr.ph.i.i13.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIPjN9__gnu_cxx5__ops14_Val_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_T0_.exit.i.i.i.i.i", !llvm.loop !1140

"_ZSt25__unguarded_linear_insertIPjN9__gnu_cxx5__ops14_Val_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_T0_.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i13.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.09.lcssa.i.i.i.i.i.i = phi ptr [ %.08.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.015.i.i15.i.i.i.i, %.lr.ph.i.i13.i.i.i.i ]
  store i32 %i.ca, ptr %.09.lcssa.i.i.i.i.i.i, align 4, !tbaa !3
  %i.cm = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i12.i.i.i.i = icmp eq ptr %i.cm, %i.bc
  br i1 %.not.i12.i.i.i.i, label %.lr.ph68.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1142
end_hunk_3
begin_hunk_4_@_ZN6duckdb8RowGroup11WriteToDiskERNS_17RowGroupWriteInfoERKNS_6vectorISt17reference_wrapperIKS0_ELb1ESaIS6_EEE:bb.a
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ep, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #37
  %i.la = load ptr, ptr %23, align 8, !tbaa !320  ; 2 uses
  %.not.i164 = icmp eq ptr %i.la, null
  br i1 %.not.i164, label %.noexc.i274, label %_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEptEv.exit, !prof !99

.noexc.i274:                                      ; preds = %_ZNSt6vectorIN6duckdb10shared_ptrINS0_10ColumnDataELb1EEESaIS3_EE9push_backEOS3_.exit
  %i.lb = call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.lc = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.lc, ptr %6, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  store i64 49, ptr %i.d, align 8, !tbaa !24
  %i.ld = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc275 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i165 ; 3 uses

.noexc275:                                        ; preds = %.noexc.i274
  store ptr %i.ld, ptr %6, align 8, !tbaa !35
  %i.le = load i64, ptr %i.d, align 8, !tbaa !24  ; 3 uses
  store i64 %i.le, ptr %i.lc, align 8, !tbaa !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.ld, ptr noundef nonnull align 1 dereferenceable(49) @.str.157, i64 49, i1 false)
  %i.lf = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.le, ptr %i.lf, align 8, !tbaa !117
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.le
  store i8 0, ptr %i.lg, align 1, !tbaa !98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.lb, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.bv unwind label %bb.bw

bb.bv:                                            ; preds = %.noexc275
  invoke void @__cxa_throw(ptr nonnull %i.lb, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.by unwind label %bb.bw

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i165: ; preds = %.noexc.i274
  %i.lh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bv, %.noexc275
  %.0.i.i168 = phi i1 [ false, %bb.bv ], [ true, %.noexc275 ] ; 2 uses
  %i.li = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.lj = load ptr, ptr %6, align 8, !tbaa !35    ; 2 uses
  %i.lk = icmp eq ptr %i.lj, %i.lc
  br i1 %i.lk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i169

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i169: ; preds = %bb.bw
  call void @_ZdlPv(ptr noundef %i.lj) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br i1 %.0.i.i168, label %bb.bx, label %.body171

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i170: ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br i1 %.0.i.i168, label %bb.bx, label %.body171

bb.bx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i170, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i169, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i165
  %.pn9.i.i166 = phi { ptr, i32 } [ %i.lh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i165 ], [ %i.li, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i170 ], [ %i.li, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i169 ]
  call void @__cxa_free_exception(ptr %i.lb) #37
  br label %.body171

bb.by:                                            ; preds = %bb.bv
  unreachable

_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEptEv.exit: ; preds = %_ZNSt6vectorIN6duckdb10shared_ptrINS0_10ColumnDataELb1EEESaIS3_EE9push_backEOS3_.exit
  invoke void @_ZNK6duckdb14BaseStatistics4CopyEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::BaseStatistics") align 8 %24, ptr noundef nonnull align 8 dereferenceable(128) %i.la)
          to label %bb.bz unwind label %bb.cs

bb.bz:                                            ; preds = %_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEptEv.exit
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ep, i64 48 ; 4 uses
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !2707 ; 5 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ep, i64 56 ; 2 uses
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !2708
  %.not.i.i173 = icmp eq ptr %i.lm, %i.lo
  br i1 %.not.i.i173, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @_ZN6duckdb14BaseStatisticsC1EOS0_(ptr noundef nonnull align 8 dereferenceable(128) %i.lm, ptr noundef nonnull align 8 dereferenceable(128) %24) #37
  %i.lp = load ptr, ptr %i.ll, align 8, !tbaa !2707
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 128
  store ptr %i.lq, ptr %i.ll, align 8, !tbaa !2707
  br label %_ZNSt6vectorIN6duckdb14BaseStatisticsESaIS1_EE9push_backEOS1_.exit

bb.cb:                                            ; preds = %bb.bz
  %i.lr = load ptr, ptr %i.kz, align 8, !tbaa !2706 ; 5 uses
  %i.ls = ptrtoint ptr %i.lm to i64
  %i.lt = ptrtoint ptr %i.lr to i64
  %i.lu = sub i64 %i.ls, %i.lt                    ; 3 uses
  %i.lv = icmp eq i64 %i.lu, 9223372036854775680
  br i1 %i.lv, label %bb.cc, label %_ZNKSt6vectorIN6duckdb14BaseStatisticsESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.cc:                                            ; preds = %bb.cb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.164) #40
          to label %.noexc294 unwind label %.loopexit.split-lp329

.noexc294:                                        ; preds = %bb.cc
  unreachable

_ZNKSt6vectorIN6duckdb14BaseStatisticsESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.cb
  %i.lw = ashr exact i64 %i.lu, 7                 ; 3 uses
  %.sroa.speculated.i.i277 = call i64 @llvm.umax.i64(i64 %i.lw, i64 1)
  %i.lx = add nsw i64 %.sroa.speculated.i.i277, %i.lw ; 2 uses
  %i.ly = icmp ult i64 %i.lx, %i.lw
  %i.lz = call i64 @llvm.umin.i64(i64 %i.lx, i64 72057594037927935)
  %i.ma = select i1 %i.ly, i64 72057594037927935, i64 %i.lz ; 3 uses
  %.not.i.i278 = icmp ne i64 %i.ma, 0
  call void @llvm.assume(i1 %.not.i.i278)
  %i.mb = shl nuw nsw i64 %i.ma, 7
  %i.mc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mb) #38
          to label %.noexc295 unwind label %.loopexit328 ; 5 uses

.noexc295:                                        ; preds = %_ZNKSt6vectorIN6duckdb14BaseStatisticsESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 %i.lu
  call void @_ZN6duckdb14BaseStatisticsC1EOS0_(ptr noundef nonnull align 8 dereferenceable(128) %i.md, ptr noundef nonnull align 8 dereferenceable(128) %24) #37
  %.not10.i.i.i.i.i279 = icmp eq ptr %i.lr, %i.lm
  br i1 %.not10.i.i.i.i.i279, label %_ZNSt6vectorIN6duckdb14BaseStatisticsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i.i.i280

.lr.ph.i.i.i.i.i280:                              ; preds = %.noexc295, %.lr.ph.i.i.i.i.i280
  %.012.i.i.i.i.i281 = phi ptr [ %i.mf, %.lr.ph.i.i.i.i.i280 ], [ %i.mc, %.noexc295 ] ; 2 uses
  %.0911.i.i.i.i.i282 = phi ptr [ %i.me, %.lr.ph.i.i.i.i.i280 ], [ %i.lr, %.noexc295 ] ; 3 uses
  call void @_ZN6duckdb14BaseStatisticsC1EOS0_(ptr noundef nonnull align 8 dereferenceable(128) %.012.i.i.i.i.i281, ptr noundef nonnull align 8 dereferenceable(128) %.0911.i.i.i.i.i282) #37
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %.0911.i.i.i.i.i282) #37
  %i.me = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i282, i64 128 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i281, i64 128 ; 2 uses
  %.not.i.i.i.i.i283 = icmp eq ptr %i.me, %i.lm
  br i1 %.not.i.i.i.i.i283, label %_ZNSt6vectorIN6duckdb14BaseStatisticsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i.i.i280, !llvm.loop !2731

_ZNSt6vectorIN6duckdb14BaseStatisticsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i: ; preds = %.lr.ph.i.i.i.i.i280, %.noexc295
  %.0.lcssa.i.i.i.i.i285 = phi ptr [ %i.mc, %.noexc295 ], [ %i.mf, %.lr.ph.i.i.i.i.i280 ]
  %i.mg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i285, i64 128
  %.not.i23.i292 = icmp eq ptr %i.lr, null
  br i1 %.not.i23.i292, label %.noexc174, label %bb.cd

bb.cd:                                            ; preds = %_ZNSt6vectorIN6duckdb14BaseStatisticsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i
  call void @_ZdlPv(ptr noundef nonnull %i.lr) #39
  br label %.noexc174

.noexc174:                                        ; preds = %bb.cd, %_ZNSt6vectorIN6duckdb14BaseStatisticsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i
  store ptr %i.mc, ptr %i.kz, align 8, !tbaa !2706
  store ptr %i.mg, ptr %i.ll, align 8, !tbaa !2707
  %i.mh = getelementptr inbounds nuw [128 x i8], ptr %i.mc, i64 %i.ma
  store ptr %i.mh, ptr %i.ln, align 8, !tbaa !2708
  br label %_ZNSt6vectorIN6duckdb14BaseStatisticsESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN6duckdb14BaseStatisticsESaIS1_EE9push_backEOS1_.exit: ; preds = %.noexc174, %bb.ca
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %24) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #37
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ep, i64 16 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.ep, i64 24 ; 3 uses
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !2704 ; 6 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.ep, i64 32 ; 2 uses
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !2705
  %.not.i.i175 = icmp eq ptr %i.mk, %i.mm
  br i1 %.not.i.i175, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %_ZNSt6vectorIN6duckdb14BaseStatisticsESaIS1_EE9push_backEOS1_.exit
  %i.mn = load i64, ptr %21, align 8, !tbaa !963
  store i64 %i.mn, ptr %i.mk, align 8, !tbaa !963
  store ptr null, ptr %21, align 8, !tbaa !963
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  store ptr %i.mo, ptr %i.mj, align 8, !tbaa !2704
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.cf:                                            ; preds = %_ZNSt6vectorIN6duckdb14BaseStatisticsESaIS1_EE9push_backEOS1_.exit
  %i.mp = load ptr, ptr %i.mi, align 8, !tbaa !2703 ; 10 uses
  %i.mq = ptrtoint ptr %i.mk to i64               ; 3 uses
  %i.mr = ptrtoint ptr %i.mp to i64               ; 3 uses
  %i.ms = sub i64 %i.mq, %i.mr                    ; 3 uses
  %i.mt = icmp eq i64 %i.ms, 9223372036854775800
  br i1 %i.mt, label %.invoke, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

.invoke:                                          ; preds = %bb.cf, %bb.bt
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.164) #40
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.cf
  %i.mu = ashr exact i64 %i.ms, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.mu, i64 1)
  %i.mv = add nsw i64 %.sroa.speculated.i.i.i.i, %i.mu ; 2 uses
  %i.mw = icmp ult i64 %i.mv, %i.mu
  %i.mx = call i64 @llvm.umin.i64(i64 %i.mv, i64 1152921504606846975)
  %i.my = select i1 %i.mw, i64 1152921504606846975, i64 %i.mx ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.my, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.mz = shl nuw nsw i64 %i.my, 3
  %i.na = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mz) #38
          to label %.noexc177 unwind label %.loopexit ; 10 uses

.noexc177:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 %i.ms
  %i.nc = load i64, ptr %21, align 8, !tbaa !963
  store i64 %i.nc, ptr %i.nb, align 8, !tbaa !963
  store ptr null, ptr %21, align 8, !tbaa !963
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.mp, %i.mk
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc177
  %26 = sub i64 %i.mq, %i.mr
  %27 = add i64 %26, -8                           ; 2 uses
  %i.nd = lshr i64 %27, 3
  %i.ne = add nuw nsw i64 %i.nd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %27, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader543, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.na, i64 8
  %i.nf = add i64 %i.mq, -8
  %i.ng = sub i64 %i.nf, %i.mr
  %i.nh = and i64 %i.ng, -8                       ; 2 uses
  %scevgep536 = getelementptr i8, ptr %scevgep, i64 %i.nh
  %scevgep537 = getelementptr i8, ptr %i.mp, i64 8
  %scevgep538 = getelementptr i8, ptr %scevgep537, i64 %i.nh
  %bound0 = icmp ult ptr %i.na, %scevgep538
  %bound1 = icmp ult ptr %i.mp, %scevgep536
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader543, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ne, 4611686018427387900     ; 3 uses
  %i.ni = shl i64 %n.vec, 3                       ; 2 uses
  %i.nj = getelementptr i8, ptr %i.na, i64 %i.ni  ; 2 uses
  %i.nk = getelementptr i8, ptr %i.mp, i64 %i.ni
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.nl = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.na, i64 %i.nl ; 2 uses
  %next.gep539 = getelementptr i8, ptr %i.mp, i64 %i.nl ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2732)
  call void @llvm.experimental.noalias.scope.decl(metadata !2735)
  %i.nm = getelementptr i8, ptr %next.gep539, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep539, align 8, !tbaa !963, !alias.scope !2737, !noalias !2732
  %wide.load540 = load <2 x i64>, ptr %i.nm, align 8, !tbaa !963, !alias.scope !2737, !noalias !2732
  %i.nn = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !963, !alias.scope !2740, !noalias !2737
  store <2 x i64> %wide.load540, ptr %i.nn, align 8, !tbaa !963, !alias.scope !2740, !noalias !2737
  %i.no = getelementptr i8, ptr %next.gep539, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep539, align 8, !tbaa !963, !alias.scope !2737, !noalias !2732
  store <2 x ptr> splat (ptr null), ptr %i.no, align 8, !tbaa !963, !alias.scope !2737, !noalias !2732
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.np = icmp eq i64 %index.next, %n.vec
  br i1 %i.np, label %middle.block, label %vector.body, !llvm.loop !2742

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ne, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader543

.lr.ph.i.i.i.i.i.i.i.preheader543:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.na, %vector.memcheck ], [ %i.na, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.nj, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.mp, %vector.memcheck ], [ %i.mp, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.nk, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader543, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ns, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader543 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.nr, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader543 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2732)
  call void @llvm.experimental.noalias.scope.decl(metadata !2735)
  %i.nq = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !963, !alias.scope !2735, !noalias !2732
  store i64 %i.nq, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !963, !alias.scope !2732, !noalias !2735
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !963, !alias.scope !2735, !noalias !2732
  %i.nr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.nr, %i.mk
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2743

_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc177
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.na, %.noexc177 ], [ %i.nj, %middle.block ], [ %i.ns, %.lr.ph.i.i.i.i.i.i.i ]
  %i.nt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.mp, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.cg

bb.cg:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.mp) #39
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.cg, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.na, ptr %i.mi, align 8, !tbaa !2703
  store ptr %i.nt, ptr %i.mj, align 8, !tbaa !2704
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %i.my
  store ptr %i.nu, ptr %i.ml, align 8, !tbaa !2705
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.ce
  %i.nv = load ptr, ptr %23, align 8, !tbaa !320  ; 3 uses
  %.not.i178 = icmp eq ptr %i.nv, null
  br i1 %.not.i178, label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.nv) #37
  call void @_ZdlPv(ptr noundef nonnull %i.nv) #39
  br label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #37
  %i.nw = load ptr, ptr %i.bk, align 8, !tbaa !93 ; 8 uses
  %.not.i.i.i179 = icmp eq ptr %i.nw, null
  br i1 %.not.i.i.i179, label %_ZN6duckdb10shared_ptrINS_10ColumnDataELb1EED2Ev.exit, label %bb.ch

bb.ch:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 8 ; 4 uses
  %i.ny = load atomic i64, ptr %i.nx acquire, align 8 ; 2 uses
  %i.nz = icmp eq i64 %i.ny, 4294967297
  %i.oa = trunc i64 %i.ny to i32                  ; 2 uses
  br i1 %i.nz, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  store i32 0, ptr %i.nx, align 8, !tbaa !94
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nw, i64 12
  store i32 0, ptr %i.ob, align 4, !tbaa !96
  %i.oc = load ptr, ptr %i.nw, align 8, !tbaa !12
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 16
  %i.oe = load ptr, ptr %i.od, align 8
  call void %i.oe(ptr noundef nonnull align 8 dereferenceable(16) %i.nw) #37, !inline_history !326
  %i.of = load ptr, ptr %i.nw, align 8, !tbaa !12
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 24
  %i.oh = load ptr, ptr %i.og, align 8
  call void %i.oh(ptr noundef nonnull align 8 dereferenceable(16) %i.nw) #37, !inline_history !326
  br label %_ZN6duckdb10shared_ptrINS_10ColumnDataELb1EED2Ev.exit

bb.cj:                                            ; preds = %bb.ch
  %i.oi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98
  %.not.i.i.i.i180 = icmp eq i8 %i.oi, 0
  br i1 %.not.i.i.i.i180, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.oj = add nsw i32 %i.oa, -1
  store i32 %i.oj, ptr %i.nx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.cl:                                            ; preds = %bb.cj
  %i.ok = atomicrmw volatile add ptr %i.nx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.cl, %bb.ck
  %.0.i.i.i.i.i = phi i32 [ %i.oa, %bb.ck ], [ %i.ok, %bb.cl ]
  %i.ol = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ol, label %bb.cm, label %_ZN6duckdb10shared_ptrINS_10ColumnDataELb1EED2Ev.exit, !prof !99

bb.cm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nw) #37
  br label %_ZN6duckdb10shared_ptrINS_10ColumnDataELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_10ColumnDataELb1EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit, %bb.ci, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #37
  %i.om = load ptr, ptr %21, align 8, !tbaa !963  ; 3 uses
  %.not.i181 = icmp eq ptr %i.om, null
  br i1 %.not.i181, label %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb21ColumnCheckpointStateEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb21ColumnCheckpointStateEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10shared_ptrINS_10ColumnDataELb1EED2Ev.exit
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !12
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 8
  %i.op = load ptr, ptr %i.oo, align 8
  call void %i.op(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.om) #37, !inline_history !1295
  br label %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN6duckdb10shared_ptrINS_10ColumnDataELb1EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb21ColumnCheckpointStateEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #37
  %.pre410 = load ptr, ptr %i.r, align 8, !tbaa !2700
  %.pre411 = load ptr, ptr %2, align 8, !tbaa !2702
  br label %bb.cn

bb.cn:                                            ; preds = %bb.o, %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit
  %i.oq = phi ptr [ %i.du, %bb.o ], [ %.pre411, %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit ] ; 5 uses
  %i.or = phi ptr [ %i.dv, %bb.o ], [ %.pre410, %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit ] ; 4 uses
  %i.os = add nuw i64 %.063369, 1                 ; 2 uses
  %i.ot = ptrtoint ptr %i.or to i64
  %i.ou = ptrtoint ptr %i.oq to i64
  %i.ov = sub i64 %i.ot, %i.ou
  %i.ow = ashr exact i64 %i.ov, 3
  %i.ox = icmp ult i64 %i.os, %i.ow
  br i1 %i.ox, label %bb.j, label %._crit_edge371, !llvm.loop !2744

bb.co:                                            ; preds = %.noexc105, %bb.p
  %i.oy = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cp:                                            ; preds = %_ZNK6duckdb8RowGroup9GetColumnEm.exit
  %i.oz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

.body233:                                         ; preds = %.noexc109
  %i.pa = landingpad { ptr, i32 }
          cleanup
  br label %.body111

bb.cq:                                            ; preds = %_ZNK6duckdb10unique_ptrINS_21ColumnCheckpointStateESt14default_deleteIS1_ELb1EEptEv.exit
  %i.pb = landingpad { ptr, i32 }
          cleanup
  br label %.body114

bb.cr:                                            ; preds = %_ZNK6duckdb10unique_ptrINS_21ColumnCheckpointStateESt14default_deleteIS1_ELb1EEptEv.exit125
  %i.pc = landingpad { ptr, i32 }
          cleanup
  br label %.body123

end_hunk_4
begin_hunk_5_@_ZN6duckdb18RowGroupCollection21InitializeVacuumStateERNS_25CollectionCheckpointStateERNS_11VacuumStateE:bb.a
  %i.bt = load i64, ptr @_ZN6duckdb24COLUMN_IDENTIFIER_ROW_IDE, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 112
  br label %bb.l

bb.i:                                             ; preds = %_ZNSt12_Vector_baseIN6duckdb12optional_idxESaIS1_EE11_M_allocateEm.exit.i, %bb.d
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.j:                                             ; preds = %bb.g
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.k:                                             ; preds = %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE12emplace_backIJEEEvDpOT_.exit.thread
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.l:                                             ; preds = %.lr.ph, %_ZN6duckdb11SegmentTreeINS_8RowGroupELb1EE19BaseSegmentIteratorppEv.exit
  invoke void @_ZNK6duckdb12optional_ptrINS_11SegmentNodeINS_8RowGroupEEELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bm)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bz = load ptr, ptr %i.bm, align 8, !tbaa !2318 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = invoke noundef nonnull align 8 dereferenceable(218) ptr @_ZNK6duckdb10shared_ptrINS_8RowGroupELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ca)
          to label %_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit unwind label %bb.q ; 14 uses

_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit: ; preds = %bb.m
  %i.cc = load i64, ptr %i.bo, align 8, !tbaa !2681 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, %i.bp
  br i1 %i.cd, label %_ZNK6duckdb8RowGroup24ShouldCheckpointRowGroupEm.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 136
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !2367
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 144
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !2367
  %i.ci = icmp eq ptr %i.cf, %i.ch
  br i1 %i.ci, label %_ZNK6duckdb8RowGroup22GetVersionInfoIfLoadedEv.exit.i, label %_ZNK6duckdb8RowGroup18HasUnloadedDeletesEv.exit.i.i

_ZNK6duckdb8RowGroup18HasUnloadedDeletesEv.exit.i.i: ; preds = %bb.n
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 192
  %i.ck = load atomic i8, ptr %i.cj seq_cst, align 8, !range !263, !noundef !70
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %_ZNK6duckdb8RowGroup22GetVersionInfoIfLoadedEv.exit.i, label %_ZNK6duckdb8RowGroup24ShouldCheckpointRowGroupEm.exit.thread134

_ZNK6duckdb8RowGroup22GetVersionInfoIfLoadedEv.exit.i: ; preds = %_ZNK6duckdb8RowGroup18HasUnloadedDeletesEv.exit.i.i, %bb.n
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cn = load atomic i64, ptr %i.cm seq_cst, align 8 ; 2 uses
  %i.co = inttoptr i64 %i.cn to ptr
  store ptr %i.co, ptr %6, align 8
  %.not.i89 = icmp eq i64 %i.cn, 0
  br i1 %.not.i89, label %_ZNK6duckdb8RowGroup24ShouldCheckpointRowGroupEm.exit.thread134, label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb8RowGroup22GetVersionInfoIfLoadedEv.exit.i
  invoke void @_ZNK6duckdb12optional_ptrINS_17RowVersionManagerELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc90 unwind label %bb.r

.noexc90:                                         ; preds = %bb.o
  %i.cp = load ptr, ptr %6, align 8, !tbaa !2580
  %i.cq = load atomic i64, ptr %i.cb seq_cst, align 8
  %i.cr = invoke noundef zeroext i1 @_ZN6duckdb17RowVersionManager24ShouldCheckpointRowGroupEmm(ptr noundef nonnull align 8 dereferenceable(336) %i.cp, i64 noundef %i.cc, i64 noundef %i.cq)
          to label %_ZNK6duckdb8RowGroup24ShouldCheckpointRowGroupEm.exit unwind label %bb.r

_ZNK6duckdb8RowGroup24ShouldCheckpointRowGroupEm.exit.thread134: ; preds = %_ZNK6duckdb8RowGroup18HasUnloadedDeletesEv.exit.i.i, %_ZNK6duckdb8RowGroup22GetVersionInfoIfLoadedEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %_ZNK6duckdb8RowGroup24ShouldCheckpointRowGroupEm.exit.thread

_ZNK6duckdb8RowGroup24ShouldCheckpointRowGroupEm.exit: ; preds = %.noexc90
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br i1 %i.cr, label %_ZNK6duckdb8RowGroup24ShouldCheckpointRowGroupEm.exit.thread, label %bb.ao

bb.p:                                             ; preds = %bb.l
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.q:                                             ; preds = %bb.m
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.r:                                             ; preds = %.noexc90, %bb.o
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

_ZNK6duckdb8RowGroup24ShouldCheckpointRowGroupEm.exit.thread: ; preds = %_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit, %_ZNK6duckdb8RowGroup24ShouldCheckpointRowGroupEm.exit.thread134, %_ZNK6duckdb8RowGroup24ShouldCheckpointRowGroupEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.cv = invoke ptr @_ZN6duckdb8RowGroup14GetVersionInfoEv(ptr noundef nonnull align 8 dereferenceable(218) %i.cb)
          to label %.noexc94 unwind label %.loopexit.split-lp141 ; 2 uses

.noexc94:                                         ; preds = %_ZNK6duckdb8RowGroup24ShouldCheckpointRowGroupEm.exit.thread
  store ptr %i.cv, ptr %5, align 8
  %.not.i92 = icmp eq ptr %i.cv, null
  %i.cw = load atomic i64, ptr %i.cb seq_cst, align 8 ; 2 uses
  br i1 %.not.i92, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.noexc94
  invoke void @_ZNK6duckdb12optional_ptrINS_17RowVersionManagerELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc95 unwind label %.loopexit.split-lp141

.noexc95:                                         ; preds = %bb.s
  %i.cx = load ptr, ptr %5, align 8, !tbaa !2580
  %i.cy = load atomic i64, ptr %i.cb seq_cst, align 8
  %i.cz = invoke noundef i64 @_ZN6duckdb17RowVersionManager24GetCommittedDeletedCountEm(ptr noundef nonnull align 8 dereferenceable(336) %i.cx, i64 noundef %i.cy)
          to label %.noexc96 unwind label %.loopexit.split-lp141

.noexc96:                                         ; preds = %.noexc95
  %i.da = sub i64 %i.cw, %i.cz
  br label %bb.t

bb.t:                                             ; preds = %.noexc96, %.noexc94
  %.0.i93 = phi i64 [ %i.da, %.noexc96 ], [ %i.cw, %.noexc94 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  store i64 %.0.i93, ptr %i.a, align 8, !tbaa !24
  %i.db = load i8, ptr %i.u, align 1, !tbaa !3392, !range !263, !noundef !70
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE12emplace_backIJEEEvDpOT_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dd = load atomic i64, ptr %i.cb seq_cst, align 8 ; 2 uses
  %i.de = load ptr, ptr %i.bq, align 8, !tbaa !3397 ; 3 uses
  %i.df = load ptr, ptr %i.br, align 8, !tbaa !3395
  %.not.i97 = icmp eq ptr %i.de, %i.df
  br i1 %.not.i97, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dg = load i64, ptr %i.a, align 8, !tbaa !24
  invoke void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %i.de, i64 noundef %i.dg)
          to label %.noexc98 unwind label %.loopexit145

.noexc98:                                         ; preds = %bb.v
  %i.dh = load ptr, ptr %i.bq, align 8, !tbaa !3397
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store ptr %i.di, ptr %i.bq, align 8, !tbaa !3397
  br label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE12emplace_backIJRmEEEvDpOT_.exit

bb.w:                                             ; preds = %bb.u
  invoke void @_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr %i.de, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE12emplace_backIJRmEEEvDpOT_.exit unwind label %.loopexit145

_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE12emplace_backIJRmEEEvDpOT_.exit: ; preds = %.noexc98, %bb.w
  %i.dj = load i64, ptr %i.a, align 8, !tbaa !24
  %.not64 = icmp eq i64 %i.dd, %i.dj
  br i1 %.not64, label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE12emplace_backIJEEEvDpOT_.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE12emplace_backIJRmEEEvDpOT_.exit
  %i.dk = load ptr, ptr %i.bs, align 8, !tbaa !3397 ; 6 uses
  %i.dl = load ptr, ptr %i.af, align 8, !tbaa !3395
  %.not.i100 = icmp eq ptr %i.dk, %i.dl
  br i1 %.not.i100, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i64 -1, ptr %i.dk, align 8, !tbaa !980
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store ptr %i.dm, ptr %i.bs, align 8, !tbaa !3397
  br label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE12emplace_backIJEEEvDpOT_.exit.thread

bb.z:                                             ; preds = %bb.x
  %i.dn = load ptr, ptr %i.w, align 8, !tbaa !3396 ; 7 uses
  %i.do = ptrtoint ptr %i.dk to i64               ; 2 uses
  %i.dp = ptrtoint ptr %i.dn to i64               ; 3 uses
  %i.dq = sub i64 %i.do, %i.dp                    ; 3 uses
  %i.dr = icmp eq i64 %i.dq, 9223372036854775800
  br i1 %i.dr, label %bb.aa, label %_ZNKSt6vectorIN6duckdb12optional_idxESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.164) #40
          to label %.noexc101 unwind label %.loopexit.split-lp146

.noexc101:                                        ; preds = %bb.aa
  unreachable

_ZNKSt6vectorIN6duckdb12optional_idxESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.z
  %i.ds = ashr exact i64 %i.dq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ds, i64 1)
  %i.dt = add nsw i64 %.sroa.speculated.i.i.i, %i.ds ; 2 uses
  %i.du = icmp ult i64 %i.dt, %i.ds
  %i.dv = call i64 @llvm.umin.i64(i64 %i.dt, i64 1152921504606846975)
  %i.dw = select i1 %i.du, i64 1152921504606846975, i64 %i.dv ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dw, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.dx = shl nuw nsw i64 %i.dw, 3
  %i.dy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dx) #38
          to label %.noexc102 unwind label %.loopexit145 ; 8 uses

.noexc102:                                        ; preds = %_ZNKSt6vectorIN6duckdb12optional_idxESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dq
  store i64 -1, ptr %i.dz, align 8, !tbaa !980
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.dn, %i.dk
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit31.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc102
  %i.ea = ptrtoaddr ptr %i.dy to i64
  %12 = sub i64 %i.do, %i.dp
  %13 = add i64 %12, -8                           ; 2 uses
  %i.eb = lshr i64 %13, 3
  %i.ec = add nuw nsw i64 %i.eb, 1                ; 2 uses
  %min.iters.check214 = icmp ult i64 %13, 24
  %i.ed = sub i64 %i.dp, %i.ea
  %diff.check212 = icmp ugt i64 %i.ed, -32
  %or.cond229 = or i1 %min.iters.check214, %diff.check212
  br i1 %or.cond229, label %.lr.ph.i.i.i.i.i.i.preheader232, label %vector.ph215

vector.ph215:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec217 = and i64 %i.ec, 4611686018427387900  ; 3 uses
  %i.ee = shl i64 %n.vec217, 3                    ; 2 uses
  %i.ef = getelementptr i8, ptr %i.dy, i64 %i.ee  ; 2 uses
  %i.eg = getelementptr i8, ptr %i.dn, i64 %i.ee
  br label %vector.body218

vector.body218:                                   ; preds = %vector.body218, %vector.ph215
  %index219 = phi i64 [ 0, %vector.ph215 ], [ %index.next224, %vector.body218 ] ; 2 uses
  %i.eh = shl i64 %index219, 3                    ; 2 uses
  %next.gep220 = getelementptr i8, ptr %i.dy, i64 %i.eh ; 2 uses
  %next.gep221 = getelementptr i8, ptr %i.dn, i64 %i.eh ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3409)
  call void @llvm.experimental.noalias.scope.decl(metadata !3412)
  %i.ei = getelementptr i8, ptr %next.gep221, i64 16
  %wide.load222 = load <2 x i64>, ptr %next.gep221, align 8, !tbaa !24, !alias.scope !3412, !noalias !3409
  %wide.load223 = load <2 x i64>, ptr %i.ei, align 8, !tbaa !24, !alias.scope !3412, !noalias !3409
  %i.ej = getelementptr i8, ptr %next.gep220, i64 16
  store <2 x i64> %wide.load222, ptr %next.gep220, align 8, !tbaa !24, !alias.scope !3409, !noalias !3412
  store <2 x i64> %wide.load223, ptr %i.ej, align 8, !tbaa !24, !alias.scope !3409, !noalias !3412
  %index.next224 = add nuw i64 %index219, 4       ; 2 uses
  %i.ek = icmp eq i64 %index.next224, %n.vec217
  br i1 %i.ek, label %middle.block225, label %vector.body218, !llvm.loop !3414

middle.block225:                                  ; preds = %vector.body218
  %cmp.n226 = icmp eq i64 %i.ec, %n.vec217
  br i1 %cmp.n226, label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit31.i.i, label %.lr.ph.i.i.i.i.i.i.preheader232

.lr.ph.i.i.i.i.i.i.preheader232:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block225
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.dy, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ef, %middle.block225 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.eg, %middle.block225 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader232, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.en, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader232 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.em, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader232 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3409)
  call void @llvm.experimental.noalias.scope.decl(metadata !3412)
  %i.el = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !24, !alias.scope !3412, !noalias !3409
  store i64 %i.el, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !24, !alias.scope !3409, !noalias !3412
  %i.em = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.em, %i.dk
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit31.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3415

_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit31.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block225, %.noexc102
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.dy, %.noexc102 ], [ %i.ef, %middle.block225 ], [ %i.en, %.lr.ph.i.i.i.i.i.i ]
  %i.eo = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i32.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i32.i.i, label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit31.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.dn) #39
  br label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ab, %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit31.i.i
  store ptr %i.dy, ptr %i.w, align 8, !tbaa !3396
  store ptr %i.eo, ptr %i.bs, align 8, !tbaa !3397
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.dw
  store ptr %i.ep, ptr %i.af, align 8, !tbaa !3395
  br label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE12emplace_backIJEEEvDpOT_.exit.thread

.loopexit140:                                     ; preds = %bb.ad, %bb.ae, %bb.af, %.noexc106, %_ZN6duckdb8RowGroup16CommitDropColumnEm.exit.i
  %lpad.loopexit142 = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.loopexit.split-lp141:                            ; preds = %_ZNK6duckdb8RowGroup24ShouldCheckpointRowGroupEm.exit.thread, %bb.s, %.noexc95, %_ZN6duckdb8RowGroup10CommitDropEv.exit
  %lpad.loopexit.split-lp143 = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.loopexit145:                                     ; preds = %bb.v, %bb.w, %_ZNKSt6vectorIN6duckdb12optional_idxESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit147 = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.loopexit.split-lp146:                            ; preds = %bb.aa
  %lpad.loopexit.split-lp148 = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE12emplace_backIJEEEvDpOT_.exit: ; preds = %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE12emplace_backIJRmEEEvDpOT_.exit, %bb.t
  %i.eq = phi i64 [ %i.dd, %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE12emplace_backIJRmEEEvDpOT_.exit ], [ %.0.i93, %bb.t ] ; 2 uses
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE12emplace_backIJEEEvDpOT_.exit
  %i.es = getelementptr inbounds nuw i8, ptr %i.cb, i64 40 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.cb, i64 48 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !2359
  %i.ev = load ptr, ptr %i.es, align 8, !tbaa !2362
  %.not.i103 = icmp eq ptr %i.eu, %i.ev
  br i1 %.not.i103, label %_ZN6duckdb8RowGroup10CommitDropEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ac
  %i.ew = getelementptr inbounds nuw i8, ptr %i.cb, i64 208
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  br label %bb.ad

bb.ad:                                            ; preds = %.noexc108, %.lr.ph.i
  %.03.i = phi i64 [ 0, %.lr.ph.i ], [ %i.fi, %.noexc108 ] ; 4 uses
  invoke void @_ZNK6duckdb8RowGroup10LoadColumnEm(ptr noundef nonnull align 8 dereferenceable(218) %i.cb, i64 noundef %.03.i)
          to label %.noexc104 unwind label %.loopexit140

.noexc104:                                        ; preds = %bb.ad
  %i.ey = icmp eq i64 %.03.i, %i.bt
  br i1 %i.ey, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.noexc104
  %i.ez = invoke noundef nonnull align 8 dereferenceable(296) ptr @_ZNK6duckdb10unique_ptrINS_10ColumnDataESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ew)
          to label %_ZN6duckdb8RowGroup16CommitDropColumnEm.exit.i unwind label %.loopexit140

bb.af:                                            ; preds = %.noexc104
  %i.fa = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_10shared_ptrINS_10ColumnDataELb1EEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.es, i64 noundef %.03.i)
          to label %.noexc106 unwind label %.loopexit140

.noexc106:                                        ; preds = %bb.af
  %i.fb = invoke noundef nonnull align 8 dereferenceable(296) ptr @_ZNK6duckdb10shared_ptrINS_10ColumnDataELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fa)
          to label %_ZN6duckdb8RowGroup16CommitDropColumnEm.exit.i unwind label %.loopexit140

_ZN6duckdb8RowGroup16CommitDropColumnEm.exit.i:   ; preds = %.noexc106, %bb.ae
  %i.fc = phi ptr [ %i.ez, %bb.ae ], [ %i.fb, %.noexc106 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.fd = load ptr, ptr %i.ex, align 8, !tbaa !2049
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !2403, !nonnull !70, !align !145
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb14BlockIdDropperE, i64 16), ptr %4, align 8, !tbaa !12
  store ptr %i.fe, ptr %i.bu, align 8, !tbaa !940
  %i.ff = load ptr, ptr %i.fc, align 8, !tbaa !12
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 208
  %i.fh = load ptr, ptr %i.fg, align 8
  invoke void %i.fh(ptr noundef nonnull align 8 dereferenceable(296) %i.fc, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc108 unwind label %.loopexit140, !inline_history !3416

.noexc108:                                        ; preds = %_ZN6duckdb8RowGroup16CommitDropColumnEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.fi = add nuw i64 %.03.i, 1                   ; 2 uses
  %i.fj = load ptr, ptr %i.et, align 8, !tbaa !2359
  %i.fk = load ptr, ptr %i.es, align 8, !tbaa !2362
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = sub i64 %i.fl, %i.fm
  %i.fo = ashr exact i64 %i.fn, 4
  %i.fp = icmp ult i64 %i.fi, %i.fo
  br i1 %i.fp, label %bb.ad, label %_ZN6duckdb8RowGroup10CommitDropEv.exit, !llvm.loop !2564

_ZN6duckdb8RowGroup10CommitDropEv.exit:           ; preds = %.noexc108, %bb.ac
  %i.fq = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !3107
  %i.fs = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZNK6duckdb10unique_ptrIA_bSt14default_deleteIS1_ELb1EEixEm(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, i64 noundef %i.fr)
          to label %_ZN6duckdb25CollectionCheckpointState11DropSegmentEm.exit unwind label %.loopexit.split-lp141

_ZN6duckdb25CollectionCheckpointState11DropSegmentEm.exit: ; preds = %_ZN6duckdb8RowGroup10CommitDropEv.exit
  store i8 1, ptr %i.fs, align 1, !tbaa !1916
  %.pre = load i64, ptr %i.a, align 8, !tbaa !24
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN6duckdb25CollectionCheckpointState11DropSegmentEm.exit, %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE12emplace_backIJEEEvDpOT_.exit
  %i.ft = phi i64 [ %.pre, %_ZN6duckdb25CollectionCheckpointState11DropSegmentEm.exit ], [ %i.eq, %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE12emplace_backIJEEEvDpOT_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  invoke void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef %i.ft)
          to label %bb.ah unwind label %.loopexit150

bb.ah:                                            ; preds = %bb.ag
  %i.fu = load ptr, ptr %i.bs, align 8, !tbaa !3397 ; 6 uses
  %i.fv = load ptr, ptr %i.af, align 8, !tbaa !3395
  %.not.i.i = icmp eq ptr %i.fu, %i.fv
  br i1 %.not.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fw = load i64, ptr %10, align 8, !tbaa !24
  store i64 %i.fw, ptr %i.fu, align 8, !tbaa !24
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  store ptr %i.fx, ptr %i.bs, align 8, !tbaa !3397
  br label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE9push_backEOS1_.exit

bb.aj:                                            ; preds = %bb.ah
  %i.fy = load ptr, ptr %i.w, align 8, !tbaa !3396 ; 7 uses
  %i.fz = ptrtoint ptr %i.fu to i64               ; 2 uses
  %i.ga = ptrtoint ptr %i.fy to i64               ; 3 uses
  %i.gb = sub i64 %i.fz, %i.ga                    ; 3 uses
  %i.gc = icmp eq i64 %i.gb, 9223372036854775800
  br i1 %i.gc, label %bb.ak, label %_ZNKSt6vectorIN6duckdb12optional_idxESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.164) #40
          to label %.noexc111 unwind label %.loopexit.split-lp151

.noexc111:                                        ; preds = %bb.ak
  unreachable

_ZNKSt6vectorIN6duckdb12optional_idxESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.aj
  %i.gd = ashr exact i64 %i.gb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.gd, i64 1)
  %i.ge = add nsw i64 %.sroa.speculated.i.i.i.i, %i.gd ; 2 uses
  %i.gf = icmp ult i64 %i.ge, %i.gd
  %i.gg = call i64 @llvm.umin.i64(i64 %i.ge, i64 1152921504606846975)
  %i.gh = select i1 %i.gf, i64 1152921504606846975, i64 %i.gg ; 3 uses
  %.not.i.i.i.i110 = icmp ne i64 %i.gh, 0
  call void @llvm.assume(i1 %.not.i.i.i.i110)
  %i.gi = shl nuw nsw i64 %i.gh, 3
  %i.gj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gi) #38
          to label %.noexc112 unwind label %.loopexit150 ; 8 uses

.noexc112:                                        ; preds = %_ZNKSt6vectorIN6duckdb12optional_idxESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.gb
  %i.gl = load i64, ptr %10, align 8, !tbaa !24
  store i64 %i.gl, ptr %i.gk, align 8, !tbaa !24
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.fy, %i.fu
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc112
  %i.gm = ptrtoaddr ptr %i.gj to i64
  %14 = sub i64 %i.fz, %i.ga
  %15 = add i64 %14, -8                           ; 2 uses
  %i.gn = lshr i64 %15, 3
  %i.go = add nuw nsw i64 %i.gn, 1                ; 2 uses
  %min.iters.check196 = icmp ult i64 %15, 24
  %i.gp = sub i64 %i.ga, %i.gm
  %diff.check194 = icmp ugt i64 %i.gp, -32
  %or.cond230 = or i1 %min.iters.check196, %diff.check194
  br i1 %or.cond230, label %.lr.ph.i.i.i.i.i.i.i.preheader231, label %vector.ph197

vector.ph197:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec199 = and i64 %i.go, 4611686018427387900  ; 3 uses
  %i.gq = shl i64 %n.vec199, 3                    ; 2 uses
  %i.gr = getelementptr i8, ptr %i.gj, i64 %i.gq  ; 2 uses
  %i.gs = getelementptr i8, ptr %i.fy, i64 %i.gq
  br label %vector.body200

vector.body200:                                   ; preds = %vector.body200, %vector.ph197
  %index201 = phi i64 [ 0, %vector.ph197 ], [ %index.next206, %vector.body200 ] ; 2 uses
  %i.gt = shl i64 %index201, 3                    ; 2 uses
  %next.gep202 = getelementptr i8, ptr %i.gj, i64 %i.gt ; 2 uses
  %next.gep203 = getelementptr i8, ptr %i.fy, i64 %i.gt ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3417)
  call void @llvm.experimental.noalias.scope.decl(metadata !3420)
  %i.gu = getelementptr i8, ptr %next.gep203, i64 16
  %wide.load204 = load <2 x i64>, ptr %next.gep203, align 8, !tbaa !24, !alias.scope !3420, !noalias !3417
  %wide.load205 = load <2 x i64>, ptr %i.gu, align 8, !tbaa !24, !alias.scope !3420, !noalias !3417
  %i.gv = getelementptr i8, ptr %next.gep202, i64 16
  store <2 x i64> %wide.load204, ptr %next.gep202, align 8, !tbaa !24, !alias.scope !3417, !noalias !3420
  store <2 x i64> %wide.load205, ptr %i.gv, align 8, !tbaa !24, !alias.scope !3417, !noalias !3420
  %index.next206 = add nuw i64 %index201, 4       ; 2 uses
  %i.gw = icmp eq i64 %index.next206, %n.vec199
  br i1 %i.gw, label %middle.block207, label %vector.body200, !llvm.loop !3422

middle.block207:                                  ; preds = %vector.body200
  %cmp.n208 = icmp eq i64 %i.go, %n.vec199
  br i1 %cmp.n208, label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader231

.lr.ph.i.i.i.i.i.i.i.preheader231:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block207
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.gj, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.gr, %middle.block207 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.fy, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.gs, %middle.block207 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader231, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.gz, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader231 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.gy, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader231 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3417)
  call void @llvm.experimental.noalias.scope.decl(metadata !3420)
  %i.gx = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !24, !alias.scope !3420, !noalias !3417
  store i64 %i.gx, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !24, !alias.scope !3417, !noalias !3420
  %i.gy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.gy, %i.fu
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3423

_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block207, %.noexc112
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.gj, %.noexc112 ], [ %i.gr, %middle.block207 ], [ %i.gz, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ha = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.fy, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.fy) #39
  br label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.al, %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.gj, ptr %i.w, align 8, !tbaa !3396
  store ptr %i.ha, ptr %i.bs, align 8, !tbaa !3397
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %i.gh
  store ptr %i.hb, ptr %i.af, align 8, !tbaa !3395
  br label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  br label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE12emplace_backIJEEEvDpOT_.exit.thread

_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE12emplace_backIJEEEvDpOT_.exit.thread: ; preds = %bb.y, %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE9push_backEOS1_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  invoke void @_ZN6duckdb11SegmentTreeINS_8RowGroupELb1EE19BaseSegmentIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %_ZN6duckdb11SegmentTreeINS_8RowGroupELb1EE19BaseSegmentIteratorppEv.exit unwind label %bb.k

_ZN6duckdb11SegmentTreeINS_8RowGroupELb1EE19BaseSegmentIteratorppEv.exit: ; preds = %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE12emplace_backIJEEEvDpOT_.exit.thread
  %.pr = load ptr, ptr %i.bm, align 8, !tbaa !2318
  %.not138 = icmp eq ptr %.pr, null
  br i1 %.not138, label %._crit_edge, label %bb.l

.loopexit150:                                     ; preds = %bb.ag, %_ZNKSt6vectorIN6duckdb12optional_idxESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit152 = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.loopexit.split-lp151:                            ; preds = %bb.ak
  %lpad.loopexit.split-lp153 = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.am:                                            ; preds = %.loopexit.split-lp151, %.loopexit150
  %lpad.phi154 = phi { ptr, i32 } [ %lpad.loopexit152, %.loopexit150 ], [ %lpad.loopexit.split-lp153, %.loopexit.split-lp151 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  br label %bb.an

bb.an:                                            ; preds = %.loopexit145, %.loopexit.split-lp146, %.loopexit140, %.loopexit.split-lp141, %bb.am
  %.pn = phi { ptr, i32 } [ %lpad.phi154, %bb.am ], [ %lpad.loopexit.split-lp143, %.loopexit.split-lp141 ], [ %lpad.loopexit142, %.loopexit140 ], [ %lpad.loopexit147, %.loopexit145 ], [ %lpad.loopexit.split-lp148, %.loopexit.split-lp146 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %bb.ap

bb.ao:                                            ; preds = %_ZNK6duckdb8RowGroup24ShouldCheckpointRowGroupEm.exit
  store i8 0, ptr %2, align 8, !tbaa !3382
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br label %.critedge80

bb.ap:                                            ; preds = %bb.k, %bb.q, %bb.an, %bb.r, %bb.p, %bb.j
  %.pn69.pn = phi { ptr, i32 } [ %i.bx, %bb.j ], [ %i.by, %bb.k ], [ %i.cs, %bb.p ], [ %i.ct, %bb.q ], [ %.pn, %bb.an ], [ %i.cu, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br label %bb.bh

._crit_edge:                                      ; preds = %_ZN6duckdb11SegmentTreeINS_8RowGroupELb1EE19BaseSegmentIteratorppEv.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  %i.hc = load i8, ptr %i.u, align 1, !tbaa !3392, !range !263, !noundef !70
  %i.hd = trunc nuw i8 %i.hc to i1
  %i.he = load i32, ptr %i.g, align 8
  %i.hf = icmp eq i32 %i.he, 1
  %or.cond.not = select i1 %i.hd, i1 true, i1 %i.hf
  br i1 %or.cond.not, label %.critedge80, label %bb.aq

bb.aq:                                            ; preds = %._crit_edge
  %i.hg = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !3397 ; 2 uses
  %i.hi = load ptr, ptr %i.w, align 8, !tbaa !3396 ; 2 uses
  %.not157 = icmp eq ptr %i.hh, %i.hi
  br i1 %.not157, label %.critedge80, label %.lr.ph160

.lr.ph160:                                        ; preds = %bb.aq
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = ptrtoint ptr %i.hh to i64
  %i.hl = sub i64 %i.hk, %i.hj
  %i.hm = ashr exact i64 %i.hl, 3
  %i.hn = load i64, ptr @_ZN6duckdb24COLUMN_IDENTIFIER_ROW_IDE, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 112
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph160, %bb.bd
  %.063158 = phi i64 [ %i.hm, %.lr.ph160 ], [ %i.hq, %bb.bd ]
  %i.hq = add i64 %.063158, -1                    ; 6 uses
  %i.hr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_12optional_idxELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.hq)
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !980
  %.not139 = icmp eq i64 %i.hs, -1
  br i1 %.not139, label %.critedge80, label %bb.au

bb.at:                                            ; preds = %bb.av, %bb.au, %bb.ar
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.au:                                            ; preds = %bb.as
  %i.hu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_12optional_idxELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.hq)
          to label %bb.av unwind label %bb.at

bb.av:                                            ; preds = %bb.au
  %i.hv = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hu)
          to label %bb.aw unwind label %bb.at

bb.aw:                                            ; preds = %bb.av
  %.not74 = icmp eq i64 %i.hv, 0
  br i1 %.not74, label %bb.ax, label %.critedge80

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  %i.hw = load ptr, ptr %i.bj, align 8, !tbaa !3405, !nonnull !70, !align !145
  %i.hx = invoke noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %i.hq)
          to label %_ZN6duckdb11NumericCastIlmvEET_T0_.exit unwind label %bb.be

_ZN6duckdb11NumericCastIlmvEET_T0_.exit:          ; preds = %bb.ax
  %i.hy = invoke ptr @_ZNK6duckdb11SegmentTreeINS_8RowGroupELb1EE17GetSegmentByIndexEl(ptr noundef nonnull align 8 dereferenceable(88) %i.hw, i64 noundef %i.hx)
          to label %bb.ay unwind label %bb.be

bb.ay:                                            ; preds = %_ZN6duckdb11NumericCastIlmvEET_T0_.exit
  store ptr %i.hy, ptr %11, align 8
  invoke void @_ZNK6duckdb12optional_ptrINS_11SegmentNodeINS_8RowGroupEEELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.az unwind label %bb.be

bb.az:                                            ; preds = %bb.ay
  %i.hz = load ptr, ptr %11, align 8, !tbaa !2318
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ib = invoke noundef nonnull align 8 dereferenceable(218) ptr @_ZNK6duckdb10shared_ptrINS_8RowGroupELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ia)
          to label %_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit117 unwind label %.loopexit.split-lp ; 5 uses

_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit117: ; preds = %bb.az
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 40 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 48 ; 2 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !2359
  %i.if = load ptr, ptr %i.ic, align 8, !tbaa !2362
  %.not.i118 = icmp eq ptr %i.ie, %i.if
  br i1 %.not.i118, label %_ZN6duckdb8RowGroup10CommitDropEv.exit127, label %.lr.ph.i119

.lr.ph.i119:                                      ; preds = %_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit117
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ib, i64 208
end_hunk_5
begin_hunk_6_@_ZNK6duckdb10shared_ptrINS_17PartitionRowGroupELb1EEptEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #37
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10shared_ptrINS_17PartitionRowGroupELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN6duckdb12_GLOBAL__N_119RowGroupOffsetEntryD2Ev(ptr %.8.val) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq ptr %.8.val, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i: ; preds = %bb.a
  tail call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %.8.val) #37
  tail call void @_ZdlPv(ptr noundef nonnull %.8.val) #39
  br label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define ptr @_ZN6duckdb17RowGroupReorderer14GetRootSegmentERNS_19RowGroupSegmentTreeE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(136) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::vector.2088", align 8 ; 12 uses
  %3 = alloca %"class.duckdb::vector.2088", align 8 ; 12 uses
  %4 = alloca %"class.std::multimap.2111", align 8 ; 10 uses
  %5 = alloca %"class.duckdb::SegmentTree<duckdb::RowGroup, true>::SegmentNodeIterationHelper::SegmentIterator", align 8 ; 7 uses
  %6 = alloca %"class.duckdb::unique_ptr.48", align 8 ; 11 uses
  %7 = alloca %"class.duckdb::Value", align 8     ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !3745, !range !263, !noundef !70
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !3767
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3767
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.bn, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_11SegmentNodeINS_8RowGroupEEEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0)
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !3026
  br label %bb.bn

bb.d:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !3745
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i32 0, ptr %i.k, align 8, !tbaa !3524
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr null, ptr %i.l, align 8, !tbaa !3525
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.k, ptr %i.m, align 8, !tbaa !3526
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.k, ptr %i.n, align 8, !tbaa !3527
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  store i64 0, ptr %i.o, align 8, !tbaa !3528
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.p = invoke ptr @_ZNK6duckdb11SegmentTreeINS_8RowGroupELb1EE14GetRootSegmentEv(ptr noundef nonnull align 8 dereferenceable(88) %1)
          to label %bb.e unwind label %bb.f       ; 2 uses

bb.e:                                             ; preds = %bb.d
  store ptr %1, ptr %5, align 8, !tbaa !3221, !alias.scope !3768
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !1282, !alias.scope !3768
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr null, ptr %i.r, align 8, !tbaa !842, !alias.scope !3768
  %.not97 = icmp eq ptr %i.p, null
  br i1 %.not97, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 107
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 106
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZN6duckdb11SegmentTreeINS_8RowGroupELb1EE19BaseSegmentIteratorppEv.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 106
  %i.ab = load i8, ptr %i.aa, align 2, !tbaa !3771
  %i.ac = icmp eq i8 %i.ab, 2
  br i1 %i.ac, label %bb.ax, label %bb.bb

bb.f:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.h:                                             ; preds = %.lr.ph, %_ZN6duckdb11SegmentTreeINS_8RowGroupELb1EE19BaseSegmentIteratorppEv.exit
  invoke void @_ZNK6duckdb12optional_ptrINS_11SegmentNodeINS_8RowGroupEEELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.af = load ptr, ptr %i.q, align 8, !tbaa !2318 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = invoke noundef nonnull align 8 dereferenceable(218) ptr @_ZNK6duckdb10shared_ptrINS_8RowGroupELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ag)
          to label %_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit unwind label %bb.s

_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit: ; preds = %bb.i
  invoke void @_ZNK6duckdb8RowGroup13GetStatisticsERKNS_12StorageIndexE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.48") align 8 %6, ptr noundef nonnull align 8 dereferenceable(218) %i.ah, ptr noundef nonnull align 8 dereferenceable(104) %0)
          to label %bb.j unwind label %bb.s

bb.j:                                             ; preds = %_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit
  %i.ai = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.k unwind label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.aj = invoke noundef zeroext i1 @_ZNK6duckdb14BaseStatistics13CanHaveNoNullEv(ptr noundef nonnull align 8 dereferenceable(128) %i.ai)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %bb.k
  br i1 %i.aj, label %bb.u, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = load ptr, ptr %i.s, align 8, !tbaa !3024 ; 6 uses
  %i.al = load ptr, ptr %i.t, align 8, !tbaa !3772
  %.not.i.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = ptrtoint ptr %i.af to i64
  store i64 %i.am, ptr %i.ak, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.an, ptr %i.s, align 8, !tbaa !3024
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backEOS5_.exit

bb.o:                                             ; preds = %bb.m
  %i.ao = load ptr, ptr %2, align 8, !tbaa !3025  ; 7 uses
  %i.ap = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64               ; 3 uses
  %i.ar = sub i64 %i.ap, %i.aq                    ; 3 uses
  %i.as = icmp eq i64 %i.ar, 9223372036854775800
  br i1 %i.as, label %bb.p, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.164) #40
          to label %.noexc44 unwind label %.loopexit.split-lp

.noexc44:                                         ; preds = %bb.p
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.at = ashr exact i64 %i.ar, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.at, i64 1)
  %i.au = add nsw i64 %.sroa.speculated.i.i.i.i, %i.at ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.at
  %i.aw = call i64 @llvm.umin.i64(i64 %i.au, i64 1152921504606846975)
  %i.ax = select i1 %i.av, i64 1152921504606846975, i64 %i.aw ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ax, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ay = shl nuw nsw i64 %i.ax, 3
  %i.az = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #38
          to label %.noexc45 unwind label %.loopexit ; 8 uses

.noexc45:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ar
  %i.bb = ptrtoint ptr %i.af to i64
  store i64 %i.bb, ptr %i.ba, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ao, %i.ak
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc45
  %i.bc = ptrtoaddr ptr %i.az to i64
  %8 = sub i64 %i.ap, %i.aq
  %9 = add i64 %8, -8                             ; 2 uses
  %i.bd = lshr i64 %9, 3
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check149 = icmp ult i64 %9, 24
  %i.bf = sub i64 %i.aq, %i.bc
  %diff.check147 = icmp ugt i64 %i.bf, -32
  %or.cond = or i1 %min.iters.check149, %diff.check147
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader166, label %vector.ph150

vector.ph150:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec152 = and i64 %i.be, 4611686018427387900  ; 3 uses
  %i.bg = shl i64 %n.vec152, 3                    ; 2 uses
  %i.bh = getelementptr i8, ptr %i.az, i64 %i.bg  ; 2 uses
  %i.bi = getelementptr i8, ptr %i.ao, i64 %i.bg
  br label %vector.body153

vector.body153:                                   ; preds = %vector.body153, %vector.ph150
  %index154 = phi i64 [ 0, %vector.ph150 ], [ %index.next159, %vector.body153 ] ; 2 uses
  %i.bj = shl i64 %index154, 3                    ; 2 uses
  %next.gep155 = getelementptr i8, ptr %i.az, i64 %i.bj ; 2 uses
  %next.gep156 = getelementptr i8, ptr %i.ao, i64 %i.bj ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3773)
  call void @llvm.experimental.noalias.scope.decl(metadata !3776)
  %i.bk = getelementptr i8, ptr %next.gep156, i64 16
  %wide.load157 = load <2 x i64>, ptr %next.gep156, align 8, !alias.scope !3776, !noalias !3773
  %wide.load158 = load <2 x i64>, ptr %i.bk, align 8, !alias.scope !3776, !noalias !3773
  %i.bl = getelementptr i8, ptr %next.gep155, i64 16
  store <2 x i64> %wide.load157, ptr %next.gep155, align 8, !alias.scope !3773, !noalias !3776
  store <2 x i64> %wide.load158, ptr %i.bl, align 8, !alias.scope !3773, !noalias !3776
  %index.next159 = add nuw i64 %index154, 4       ; 2 uses
  %i.bm = icmp eq i64 %index.next159, %n.vec152
  br i1 %i.bm, label %middle.block160, label %vector.body153, !llvm.loop !3778

middle.block160:                                  ; preds = %vector.body153
  %cmp.n161 = icmp eq i64 %i.be, %n.vec152
  br i1 %cmp.n161, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader166

.lr.ph.i.i.i.i.i.i.i.preheader166:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block160
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bh, %middle.block160 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bi, %middle.block160 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader166, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader166 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader166 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3773)
  call void @llvm.experimental.noalias.scope.decl(metadata !3776)
  %i.bn = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !3776, !noalias !3773
  store i64 %i.bn, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !3773, !noalias !3776
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bo, %i.ak
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3779

_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block160, %.noexc45
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.az, %.noexc45 ], [ %i.bh, %middle.block160 ], [ %i.bp, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ao) #39
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.az, ptr %2, align 8, !tbaa !3025
  store ptr %i.bq, ptr %i.s, align 8, !tbaa !3024
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ax
  store ptr %i.br, ptr %i.t, align 8, !tbaa !3772
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backEOS5_.exit

bb.r:                                             ; preds = %bb.h
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.s:                                             ; preds = %bb.i, %_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.t:                                             ; preds = %bb.k, %bb.j
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit:                                        ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit.split-lp:                               ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.u:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.bv = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.v unwind label %bb.ag

bb.v:                                             ; preds = %bb.u
  %i.bw = load i8, ptr %i.u, align 8, !tbaa !3780
  %i.bx = load i8, ptr %i.v, align 1, !tbaa !3781
  invoke void @_ZN6duckdb17RowGroupReorderer12RetrieveStatERKNS_14BaseStatisticsENS_17OrderByStatisticsENS_17OrderByColumnTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %7, ptr noundef nonnull align 8 dereferenceable(128) %i.bv, i8 noundef zeroext %i.bw, i8 noundef zeroext %i.bx)
          to label %bb.w unwind label %bb.ag

bb.w:                                             ; preds = %bb.v
  %i.by = load i8, ptr %i.w, align 8, !tbaa !3751, !range !263, !noundef !70
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ca = load i8, ptr %i.x, align 2, !tbaa !3771
  %i.cb = icmp eq i8 %i.ca, 2
  br i1 %i.cb, label %bb.y, label %bb.ai

bb.y:                                             ; preds = %bb.x
  %i.cc = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.z unwind label %bb.ah

bb.z:                                             ; preds = %bb.y
  %i.cd = invoke noundef zeroext i1 @_ZNK6duckdb14BaseStatistics11CanHaveNullEv(ptr noundef nonnull align 8 dereferenceable(128) %i.cc)
          to label %bb.aa unwind label %bb.ah

bb.aa:                                            ; preds = %bb.z
  br i1 %i.cd, label %bb.ab, label %bb.ai

bb.ab:                                            ; preds = %bb.aa, %bb.w
  %i.ce = load ptr, ptr %i.y, align 8, !tbaa !3024 ; 6 uses
  %i.cf = load ptr, ptr %i.z, align 8, !tbaa !3772
  %.not.i.i46 = icmp eq ptr %i.ce, %i.cf
  br i1 %.not.i.i46, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cg = ptrtoint ptr %i.af to i64
  store i64 %i.cg, ptr %i.ce, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr %i.ch, ptr %i.y, align 8, !tbaa !3024
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backEOS5_.exit61

bb.ad:                                            ; preds = %bb.ab
  %i.ci = load ptr, ptr %3, align 8, !tbaa !3025  ; 7 uses
  %i.cj = ptrtoint ptr %i.ce to i64               ; 2 uses
  %i.ck = ptrtoint ptr %i.ci to i64               ; 3 uses
  %i.cl = sub i64 %i.cj, %i.ck                    ; 3 uses
  %i.cm = icmp eq i64 %i.cl, 9223372036854775800
  br i1 %i.cm, label %bb.ae, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i47

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.164) #40
          to label %.noexc59 unwind label %.loopexit.split-lp80

.noexc59:                                         ; preds = %bb.ae
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i47: ; preds = %bb.ad
  %i.cn = ashr exact i64 %i.cl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i48 = call i64 @llvm.umax.i64(i64 %i.cn, i64 1)
  %i.co = add nsw i64 %.sroa.speculated.i.i.i.i48, %i.cn ; 2 uses
  %i.cp = icmp ult i64 %i.co, %i.cn
  %i.cq = call i64 @llvm.umin.i64(i64 %i.co, i64 1152921504606846975)
  %i.cr = select i1 %i.cp, i64 1152921504606846975, i64 %i.cq ; 3 uses
  %.not.i.i.i.i49 = icmp ne i64 %i.cr, 0
  call void @llvm.assume(i1 %.not.i.i.i.i49)
  %i.cs = shl nuw nsw i64 %i.cr, 3
  %i.ct = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cs) #38
          to label %.noexc60 unwind label %.loopexit79 ; 8 uses

.noexc60:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i47
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cl
  %i.cv = ptrtoint ptr %i.af to i64
  store i64 %i.cv, ptr %i.cu, align 8
  %.not10.i.i.i.i.i.i.i50 = icmp eq ptr %i.ci, %i.ce
  br i1 %.not10.i.i.i.i.i.i.i50, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i55, label %.lr.ph.i.i.i.i.i.i.i51.preheader

.lr.ph.i.i.i.i.i.i.i51.preheader:                 ; preds = %.noexc60
  %i.cw = ptrtoaddr ptr %i.ct to i64
  %10 = sub i64 %i.cj, %i.ck
  %11 = add i64 %10, -8                           ; 2 uses
  %i.cx = lshr i64 %11, 3
  %i.cy = add nuw nsw i64 %i.cx, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %11, 24
  %i.cz = sub i64 %i.ck, %i.cw
  %diff.check = icmp ugt i64 %i.cz, -32
  %or.cond164 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond164, label %.lr.ph.i.i.i.i.i.i.i51.preheader165, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i51.preheader
  %n.vec = and i64 %i.cy, 4611686018427387900     ; 3 uses
  %i.da = shl i64 %n.vec, 3                       ; 2 uses
  %i.db = getelementptr i8, ptr %i.ct, i64 %i.da  ; 2 uses
  %i.dc = getelementptr i8, ptr %i.ci, i64 %i.da
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dd = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ct, i64 %i.dd ; 2 uses
  %next.gep143 = getelementptr i8, ptr %i.ci, i64 %i.dd ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3782)
  call void @llvm.experimental.noalias.scope.decl(metadata !3785)
  %i.de = getelementptr i8, ptr %next.gep143, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep143, align 8, !alias.scope !3785, !noalias !3782
  %wide.load144 = load <2 x i64>, ptr %i.de, align 8, !alias.scope !3785, !noalias !3782
  %i.df = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !3782, !noalias !3785
  store <2 x i64> %wide.load144, ptr %i.df, align 8, !alias.scope !3782, !noalias !3785
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !3787

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cy, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i55, label %.lr.ph.i.i.i.i.i.i.i51.preheader165

.lr.ph.i.i.i.i.i.i.i51.preheader165:              ; preds = %.lr.ph.i.i.i.i.i.i.i51.preheader, %middle.block
  %.012.i.i.i.i.i.i.i52.ph = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i.i.i51.preheader ], [ %i.db, %middle.block ]
  %.0911.i.i.i.i.i.i.i53.ph = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i.i51.preheader ], [ %i.dc, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i51

.lr.ph.i.i.i.i.i.i.i51:                           ; preds = %.lr.ph.i.i.i.i.i.i.i51.preheader165, %.lr.ph.i.i.i.i.i.i.i51
  %.012.i.i.i.i.i.i.i52 = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i.i.i51 ], [ %.012.i.i.i.i.i.i.i52.ph, %.lr.ph.i.i.i.i.i.i.i51.preheader165 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i53 = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i.i.i51 ], [ %.0911.i.i.i.i.i.i.i53.ph, %.lr.ph.i.i.i.i.i.i.i51.preheader165 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3782)
  call void @llvm.experimental.noalias.scope.decl(metadata !3785)
  %i.dh = load i64, ptr %.0911.i.i.i.i.i.i.i53, align 8, !alias.scope !3785, !noalias !3782
  store i64 %i.dh, ptr %.012.i.i.i.i.i.i.i52, align 8, !alias.scope !3782, !noalias !3785
  %i.di = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i53, i64 8 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i52, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i54 = icmp eq ptr %i.di, %i.ce
  br i1 %.not.i.i.i.i.i.i.i54, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i55, label %.lr.ph.i.i.i.i.i.i.i51, !llvm.loop !3788

_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i55: ; preds = %.lr.ph.i.i.i.i.i.i.i51, %middle.block, %.noexc60
  %.0.lcssa.i.i.i.i.i.i.i56 = phi ptr [ %i.ct, %.noexc60 ], [ %i.db, %middle.block ], [ %i.dj, %.lr.ph.i.i.i.i.i.i.i51 ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i56, i64 8
  %.not.i23.i.i.i57 = icmp eq ptr %i.ci, null
  br i1 %.not.i23.i.i.i57, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i58, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i55
  call void @_ZdlPv(ptr noundef nonnull %i.ci) #39
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i58

_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i58: ; preds = %bb.af, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i55
  store ptr %i.ct, ptr %3, align 8, !tbaa !3025
  store ptr %i.dk, ptr %i.y, align 8, !tbaa !3024
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cr
  store ptr %i.dl, ptr %i.z, align 8, !tbaa !3772
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backEOS5_.exit61

bb.ag:                                            ; preds = %bb.v, %bb.u
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ah:                                            ; preds = %bb.z, %bb.y
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.loopexit79:                                      ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i47
  %lpad.loopexit81 = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.loopexit.split-lp80:                             ; preds = %bb.ae
  %lpad.loopexit.split-lp82 = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ai:                                            ; preds = %bb.aa, %bb.x
  %i.do = load i64, ptr %6, align 8, !tbaa !320   ; 3 uses
  store ptr null, ptr %6, align 8, !tbaa !320
  %i.dp = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #38
          to label %.noexc62 unwind label %bb.ar  ; 6 uses

.noexc62:                                         ; preds = %bb.ai
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 32 ; 3 uses
  invoke void @_ZN6duckdb5ValueC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(80) %i.dq, ptr noundef nonnull align 8 dereferenceable(64) %7)
          to label %bb.an unwind label %bb.aj

bb.aj:                                            ; preds = %.noexc62
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  %i.dt = call ptr @__cxa_begin_catch(ptr %i.ds) #37 ; 0 uses
  call void @_ZdlPv(ptr noundef nonnull %i.dp) #39
  invoke void @__cxa_rethrow() #40
          to label %bb.am unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.du = landingpad { ptr, i32 }
          cleanup
  %i.dv = inttoptr i64 %i.do to ptr
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  call void @__clang_call_terminate(ptr %i.dx) #41
  unreachable

bb.am:                                            ; preds = %bb.aj
  unreachable

bb.an:                                            ; preds = %.noexc62
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dp, i64 96
  %i.dz = ptrtoint ptr %i.af to i64
  store i64 %i.dz, ptr %i.dy, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dp, i64 104
  store i64 %i.do, ptr %i.ea, align 8, !tbaa !320
  %.0910.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !3530 ; 2 uses
  %.not11.i.i.i = icmp eq ptr %.0910.i.i.i, null
  br i1 %.not11.i.i.i, label %_ZN6duckdb12_GLOBAL__N_124RowGroupSegmentNodeEntryD2Ev.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.an, %.noexc.i.i
  %.0912.i.i.i = phi ptr [ %.09.i.i.i, %.noexc.i.i ], [ %.0910.i.i.i, %bb.an ] ; 5 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.0912.i.i.i, i64 32 ; 2 uses
  %i.ec = invoke noundef zeroext i1 @_ZNK6duckdb5ValueltERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.dq, ptr noundef nonnull align 8 dereferenceable(64) %i.eb)
          to label %.noexc.i.i unwind label %.loopexit.i.i

.noexc.i.i:                                       ; preds = %.lr.ph.i.i.i
  %.in.v.i.i.i = select i1 %i.ec, i64 16, i64 24
  %.in.i.i.i = getelementptr i8, ptr %.0912.i.i.i, i64 %.in.v.i.i.i
  %.09.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !3530 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.09.i.i.i, null
  br i1 %.not.i.i.i, label %bb.ao, label %.lr.ph.i.i.i, !llvm.loop !3789

bb.ao:                                            ; preds = %.noexc.i.i
  %i.ed = icmp eq ptr %.0912.i.i.i, %i.k
  br i1 %i.ed, label %_ZN6duckdb12_GLOBAL__N_124RowGroupSegmentNodeEntryD2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ee = invoke noundef zeroext i1 @_ZNK6duckdb5ValueltERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.dq, ptr noundef nonnull align 8 dereferenceable(64) %i.eb)
          to label %_ZN6duckdb12_GLOBAL__N_124RowGroupSegmentNodeEntryD2Ev.exit unwind label %.loopexit.split-lp.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.loopexit.split-lp.i.i:                           ; preds = %bb.ap
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.aq:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  call fastcc void @_ZNSt8_Rb_treeIN6duckdb5ValueESt4pairIKS1_NS0_12_GLOBAL__N_124RowGroupSegmentNodeEntryEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev(ptr nonnull %i.dp) #37
  br label %.body

_ZN6duckdb12_GLOBAL__N_124RowGroupSegmentNodeEntryD2Ev.exit: ; preds = %bb.an, %bb.ao, %bb.ap
  %.0.lcssa.i14.i.i = phi ptr [ %.0912.i.i.i, %bb.ap ], [ %.0912.i.i.i, %bb.ao ], [ %i.k, %bb.an ]
  %i.ef = phi i1 [ %i.ee, %bb.ap ], [ true, %bb.ao ], [ true, %bb.an ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ef, ptr noundef nonnull %i.dp, ptr noundef nonnull %.0.lcssa.i14.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.k) #37
  %i.eg = load i64, ptr %i.o, align 8, !tbaa !3528
  %i.eh = add i64 %i.eg, 1
  store i64 %i.eh, ptr %i.o, align 8, !tbaa !3528
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backEOS5_.exit61

_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backEOS5_.exit61: ; preds = %bb.ac, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i58, %_ZN6duckdb12_GLOBAL__N_124RowGroupSegmentNodeEntryD2Ev.exit
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.n, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backEOS5_.exit61
  %i.ei = load ptr, ptr %6, align 8, !tbaa !320   ; 3 uses
  %.not.i64 = icmp eq ptr %i.ei, null
  br i1 %.not.i64, label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backEOS5_.exit
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.ei) #37
  call void @_ZdlPv(ptr noundef nonnull %i.ei) #39
  br label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  invoke void @_ZN6duckdb11SegmentTreeINS_8RowGroupELb1EE19BaseSegmentIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
end_hunk_6
begin_hunk_7_@_ZN6duckdb17RowGroupReorderer14GetRootSegmentERNS_19RowGroupSegmentTreeE:bb.a
bb.ay:                                            ; preds = %bb.ax
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_115AppendRowGroupsERKNS_6vectorISt17reference_wrapperINS_11SegmentNodeINS_8RowGroupEEEELb1ESaIS6_EEEmRS8_(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(24) %i.en)
          to label %bb.az unwind label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.01.0.copyload = load i64, ptr %i.eo, align 8, !tbaa !24
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !3791
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 105
  %i.es = load i8, ptr %i.er, align 1, !tbaa !3792
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 107
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !3781
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_117SetRowGroupVectorERSt8multimapINS_5ValueENS0_24RowGroupSegmentNodeEntryESt4lessIS2_ESaISt4pairIKS2_S3_EEENS_12optional_idxEmNS_9OrderTypeENS_17OrderByColumnTypeERNS_6vectorISt17reference_wrapperINS_11SegmentNodeINS_8RowGroupEEEELb1ESaISK_EEE(ptr noundef nonnull align 8 dereferenceable(48) %4, i64 %.sroa.01.0.copyload, i64 noundef %i.eq, i8 noundef zeroext %i.es, i8 noundef zeroext %i.eu, ptr noundef nonnull align 8 dereferenceable(24) %i.en)
          to label %bb.be unwind label %bb.ba

bb.ba:                                            ; preds = %bb.bf, %bb.bd, %bb.bc, %bb.bb, %bb.az, %bb.ay, %bb.ax
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bb:                                            ; preds = %._crit_edge
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.0.0.copyload = load i64, ptr %i.ew, align 8, !tbaa !24
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !3791
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 105
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !3792
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 107
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !3781
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_117SetRowGroupVectorERSt8multimapINS_5ValueENS0_24RowGroupSegmentNodeEntryESt4lessIS2_ESaISt4pairIKS2_S3_EEENS_12optional_idxEmNS_9OrderTypeENS_17OrderByColumnTypeERNS_6vectorISt17reference_wrapperINS_11SegmentNodeINS_8RowGroupEEEELb1ESaISK_EEE(ptr noundef nonnull align 8 dereferenceable(48) %4, i64 %.sroa.0.0.copyload, i64 noundef %i.ey, i8 noundef zeroext %i.fa, i8 noundef zeroext %i.fc, ptr noundef nonnull align 8 dereferenceable(24) %i.fd)
          to label %bb.bc unwind label %bb.ba

bb.bc:                                            ; preds = %bb.bb
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_115AppendRowGroupsERKNS_6vectorISt17reference_wrapperINS_11SegmentNodeINS_8RowGroupEEEELb1ESaIS6_EEEmRS8_(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(24) %i.fd)
          to label %bb.bd unwind label %bb.ba

bb.bd:                                            ; preds = %bb.bc
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_115AppendRowGroupsERKNS_6vectorISt17reference_wrapperINS_11SegmentNodeINS_8RowGroupEEEELb1ESaIS6_EEEmRS8_(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(24) %i.fd)
          to label %bb.be unwind label %bb.ba

bb.be:                                            ; preds = %bb.bd, %bb.az
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !3767
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !3767
  %i.fi = icmp eq ptr %i.ff, %i.fh
  br i1 %i.fi, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_11SegmentNodeINS_8RowGroupEEEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fe, i64 noundef 0)
          to label %bb.bg unwind label %bb.ba

bb.bg:                                            ; preds = %bb.bf
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !3026
  br label %bb.bh

bb.bh:                                            ; preds = %bb.be, %bb.bg
  %.sroa.078.0 = phi ptr [ %i.fk, %bb.bg ], [ null, %bb.be ]
  %.val36 = load ptr, ptr %i.l, align 8, !tbaa !3525
  call fastcc void @_ZNSt8_Rb_treeIN6duckdb5ValueESt4pairIKS1_NS0_12_GLOBAL__N_124RowGroupSegmentNodeEntryEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef %.val36)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.fl = load ptr, ptr %3, align 8, !tbaa !3025  ; 2 uses
  %.not.i.i.i66 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i66, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EED2Ev.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @_ZdlPv(ptr noundef nonnull %i.fl) #39
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EED2Ev.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EED2Ev.exit: ; preds = %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.fm = load ptr, ptr %2, align 8, !tbaa !3025  ; 2 uses
  %.not.i.i.i67 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i67, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EED2Ev.exit68, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.fm) #39
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EED2Ev.exit68

_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EED2Ev.exit68: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EED2Ev.exit, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %bb.bn

bb.bk:                                            ; preds = %bb.aw, %bb.ba
  %.pn29.pn.pn.pn = phi { ptr, i32 } [ %i.ev, %bb.ba ], [ %.pn29.pn, %bb.aw ]
  %.val35 = load ptr, ptr %i.l, align 8, !tbaa !3525
  call fastcc void @_ZNSt8_Rb_treeIN6duckdb5ValueESt4pairIKS1_NS0_12_GLOBAL__N_124RowGroupSegmentNodeEntryEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef %.val35)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.fn = load ptr, ptr %3, align 8, !tbaa !3025  ; 2 uses
  %.not.i.i.i69 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i.i69, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EED2Ev.exit70, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @_ZdlPv(ptr noundef nonnull %i.fn) #39
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EED2Ev.exit70

_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EED2Ev.exit70: ; preds = %bb.bk, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.fo = load ptr, ptr %2, align 8, !tbaa !3025  ; 2 uses
  %.not.i.i.i71 = icmp eq ptr %i.fo, null
  br i1 %.not.i.i.i71, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EED2Ev.exit72, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EED2Ev.exit70
  call void @_ZdlPv(ptr noundef nonnull %i.fo) #39
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EED2Ev.exit72

_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EED2Ev.exit72: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EED2Ev.exit70, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  resume { ptr, i32 } %.pn29.pn.pn.pn

bb.bn:                                            ; preds = %bb.b, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EED2Ev.exit68, %bb.c
  %.sroa.078.1 = phi ptr [ %.sroa.078.0, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EED2Ev.exit68 ], [ %i.j, %bb.c ], [ null, %bb.b ]
  ret ptr %.sroa.078.1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN6duckdb12_GLOBAL__N_124RowGroupSegmentNodeEntryD2Ev(ptr %.8.val) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq ptr %.8.val, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i: ; preds = %bb.a
  tail call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %.8.val) #37
  tail call void @_ZdlPv(ptr noundef nonnull %.8.val) #39
  br label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdb12_GLOBAL__N_115AppendRowGroupsERKNS_6vectorISt17reference_wrapperINS_11SegmentNodeINS_8RowGroupEEEELb1ESaIS6_EEEmRS8_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3024
  %i.c = load ptr, ptr %0, align 8, !tbaa !3025
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 3
  %i.h = icmp ult i64 %1, %i.g
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backERKS5_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backERKS5_.exit
  %.06 = phi i64 [ %1, %.lr.ph ], [ %i.au, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backERKS5_.exit ] ; 2 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorISt17reference_wrapperINS_11SegmentNodeINS_8RowGroupEEEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.06) ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !3024 ; 5 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !3772
  %.not.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i64, ptr %i.k, align 8
  store i64 %i.n, ptr %i.l, align 8
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !3024
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.p, ptr %i.i, align 8, !tbaa !3024
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backERKS5_.exit

bb.d:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %2, align 8, !tbaa !3025   ; 7 uses
  %i.r = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.s = ptrtoint ptr %i.q to i64                 ; 3 uses
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %i.u = icmp eq i64 %i.t, 9223372036854775800
  br i1 %i.u, label %bb.e, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.164) #40
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.v = ashr exact i64 %i.t, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 1)
  %i.w = add nsw i64 %.sroa.speculated.i.i.i, %i.v ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.v
  %i.y = tail call i64 @llvm.umin.i64(i64 %i.w, i64 1152921504606846975)
  %i.z = select i1 %i.x, i64 1152921504606846975, i64 %i.y ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.z, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #38 ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.t
  %i.ad = load i64, ptr %i.k, align 8
  store i64 %i.ad, ptr %i.ac, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.q, %i.l
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.ae = ptrtoaddr ptr %i.ab to i64
  %3 = sub i64 %i.r, %i.s
  %4 = add i64 %3, -8                             ; 2 uses
  %i.af = lshr i64 %4, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 24
  %i.ah = sub i64 %i.s, %i.ae
  %diff.check = icmp ugt i64 %i.ah, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader14, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ag, 4611686018427387900     ; 3 uses
  %i.ai = shl i64 %n.vec, 3                       ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ab, i64 %i.ai  ; 2 uses
  %i.ak = getelementptr i8, ptr %i.q, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ab, i64 %i.al ; 2 uses
  %next.gep11 = getelementptr i8, ptr %i.q, i64 %i.al ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3793)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3796)
  %i.am = getelementptr i8, ptr %next.gep11, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep11, align 8, !alias.scope !3796, !noalias !3793
  %wide.load12 = load <2 x i64>, ptr %i.am, align 8, !alias.scope !3796, !noalias !3793
  %i.an = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !3793, !noalias !3796
  store <2 x i64> %wide.load12, ptr %i.an, align 8, !alias.scope !3793, !noalias !3796
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !3798

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader14

.lr.ph.i.i.i.i.i.i.preheader14:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ak, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader14, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader14 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader14 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3793)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3796)
  %i.ap = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !3796, !noalias !3793
  store i64 %i.ap, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !3793, !noalias !3796
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aq, %i.l
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3799

_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ab, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.aj, %middle.block ], [ %i.ar, %.lr.ph.i.i.i.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.q) #39
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.ab, ptr %2, align 8, !tbaa !3025
  store ptr %i.as, ptr %i.i, align 8, !tbaa !3024
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.z
  store ptr %i.at, ptr %i.j, align 8, !tbaa !3772
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backERKS5_.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backERKS5_.exit: ; preds = %bb.c, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i
  %i.au = add nuw i64 %.06, 1                     ; 2 uses
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !3024
  %i.aw = load ptr, ptr %0, align 8, !tbaa !3025
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = ashr exact i64 %i.az, 3
  %i.bb = icmp ult i64 %i.au, %i.ba
  br i1 %i.bb, label %bb.b, label %._crit_edge, !llvm.loop !3800
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdb12_GLOBAL__N_117SetRowGroupVectorERSt8multimapINS_5ValueENS0_24RowGroupSegmentNodeEntryESt4lessIS2_ESaISt4pairIKS2_S3_EEENS_12optional_idxEmNS_9OrderTypeENS_17OrderByColumnTypeERNS_6vectorISt17reference_wrapperINS_11SegmentNodeINS_8RowGroupEEEELb1ESaISK_EEE(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 %1, i64 noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %5) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.duckdb::Value", align 8     ; 8 uses
  %9 = alloca %"class.duckdb::Value", align 8     ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.duckdb::Value", align 8    ; 8 uses
  %13 = alloca %"class.duckdb::Value", align 8    ; 6 uses
  %14 = alloca %"class.duckdb::optional_idx", align 8 ; 3 uses
  store i64 %1, ptr %14, align 8
  %i.e = icmp ne i8 %3, 2                         ; 2 uses
  %i.f = zext i1 %i.e to i8                       ; 2 uses
  br i1 %i.e, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.h, align 8, !tbaa !3526 ; 3 uses
  %.not4.i = icmp ne i64 %2, 0
  %i.i = icmp ne ptr %.val, %i.g
  %or.cond5.i = select i1 %.not4.i, i1 %i.i, i1 false
  br i1 %or.cond5.i, label %.lr.ph.i, label %_ZN6duckdb12_GLOBAL__N_125SkipOffsetPrunedRowGroupsISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEES8_EET_S9_T0_m.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.07.i = phi i64 [ %i.k, %.lr.ph.i ], [ %2, %bb.b ]
  %.sroa.03.06.i = phi ptr [ %i.j, %.lr.ph.i ], [ %.val, %bb.b ]
  %i.j = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.03.06.i) #42 ; 3 uses
  %i.k = add i64 %.07.i, -1                       ; 2 uses
  %.not.i = icmp ne i64 %i.k, 0
  %i.l = icmp ne ptr %i.j, %i.g
  %or.cond.i = select i1 %.not.i, i1 %i.l, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %_ZN6duckdb12_GLOBAL__N_125SkipOffsetPrunedRowGroupsISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEES8_EET_S9_T0_m.exit, !llvm.loop !3801

_ZN6duckdb12_GLOBAL__N_125SkipOffsetPrunedRowGroupsISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEES8_EET_S9_T0_m.exit: ; preds = %.lr.ph.i, %bb.b
  %.sroa.03.0.lcssa.i = phi ptr [ %.val, %bb.b ], [ %i.j, %.lr.ph.i ] ; 6 uses
  %i.m = icmp eq ptr %.sroa.03.0.lcssa.i, %i.g
  br i1 %i.m, label %_ZN6duckdb12_GLOBAL__N_118InsertAllRowGroupsISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEES8_EEvT_T0_RNS_6vectorISt17reference_wrapperINS_11SegmentNodeINS_8RowGroupEEEELb1ESaISG_EEE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb12_GLOBAL__N_125SkipOffsetPrunedRowGroupsISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEES8_EET_S9_T0_m.exit
  %.not = icmp eq i64 %1, -1
  br i1 %.not, label %.lr.ph.i43, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %14)
  %i.o = xor i8 %i.f, 1                           ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa.i, i64 104 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  %i.q = call noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  call void @_ZN6duckdb17RowGroupReorderer12RetrieveStatERKNS_14BaseStatisticsENS_17OrderByStatisticsENS_17OrderByColumnTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %12, ptr noundef nonnull align 8 dereferenceable(128) %i.q, i8 noundef zeroext %i.o, i8 noundef zeroext %4)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa.i, i64 96
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !3026
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = invoke noundef nonnull align 8 dereferenceable(218) ptr @_ZNK6duckdb10shared_ptrINS_8RowGroupELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t)
          to label %_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit.i unwind label %bb.l

_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit.i: ; preds = %bb.d
  %i.v = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.e unwind label %bb.l       ; 3 uses

bb.e:                                             ; preds = %_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit.i
  %i.w = invoke noundef zeroext i1 @_ZNK6duckdb14BaseStatistics11CanHaveNullEv(ptr noundef nonnull align 8 dereferenceable(128) %i.v)
          to label %.noexc.i unwind label %bb.l

.noexc.i:                                         ; preds = %bb.e
  br i1 %i.w, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.noexc.i
  %i.x = load atomic i64, ptr %i.u seq_cst, align 8
  br label %.lr.ph47.i

bb.g:                                             ; preds = %.noexc.i
  %i.y = icmp eq i8 %4, 0
  br i1 %i.y, label %bb.h, label %.lr.ph47.i

bb.h:                                             ; preds = %bb.g
  %i.z = invoke noundef zeroext i1 @_ZN6duckdb12NumericStats9HasMinMaxERKNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %i.v)
          to label %.noexc53.i unwind label %bb.l

.noexc53.i:                                       ; preds = %bb.h
  br i1 %i.z, label %bb.i, label %.lr.ph47.i

bb.i:                                             ; preds = %.noexc53.i
  %i.aa = invoke noundef zeroext i1 @_ZN6duckdb12NumericStats10IsConstantERKNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %i.v)
          to label %.noexc54.i unwind label %bb.l

.noexc54.i:                                       ; preds = %bb.i
  %..i.i = select i1 %i.aa, i64 1, i64 2
  br label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %bb.f, %bb.g, %.noexc53.i, %.noexc54.i
  %.0.i.i = phi i64 [ %..i.i, %.noexc54.i ], [ 0, %.noexc53.i ], [ %i.x, %bb.f ], [ 0, %bb.g ]
  %i.ab = icmp eq i8 %4, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12emplace_backIJRS5_EEEvDpOT_.exit.i, %.lr.ph47.i
  %.02746.i = phi i64 [ 0, %.lr.ph47.i ], [ %.2.i, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12emplace_backIJRS5_EEEvDpOT_.exit.i ] ; 2 uses
  %.02845.i = phi i64 [ 0, %.lr.ph47.i ], [ %.129.i, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12emplace_backIJRS5_EEEvDpOT_.exit.i ] ; 3 uses
  %.03044.i = phi i64 [ %.0.i.i, %.lr.ph47.i ], [ %.13127.i, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12emplace_backIJRS5_EEEvDpOT_.exit.i ] ; 2 uses
  %.sroa.01.043.i = phi ptr [ %.sroa.03.0.lcssa.i, %.lr.ph47.i ], [ %.sroa.01.134.i, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12emplace_backIJRS5_EEEvDpOT_.exit.i ] ; 3 uses
  %.sroa.03.042.i = phi ptr [ %.sroa.03.0.lcssa.i, %.lr.ph47.i ], [ %i.dg, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12emplace_backIJRS5_EEEvDpOT_.exit.i ] ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.03.042.i, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.03.042.i, i64 96 ; 2 uses
  %.not935.i = icmp eq ptr %.sroa.01.043.i, %.sroa.03.042.i
  br i1 %.not935.i, label %.loopexit.i, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %bb.j, %bb.aa
  %.138.i = phi i64 [ %.13137.i, %bb.aa ], [ %.02746.i, %bb.j ]
  %.13137.i = phi i64 [ %i.bt, %bb.aa ], [ %.03044.i, %bb.j ] ; 4 uses
  %.sroa.01.136.i = phi ptr [ %i.ao, %bb.aa ], [ %.sroa.01.043.i, %bb.j ] ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN6duckdb12_GLOBAL__N_117SetRowGroupVectorERSt8multimapINS_5ValueENS0_24RowGroupSegmentNodeEntryESt4lessIS2_ESaISt4pairIKS2_S3_EEENS_12optional_idxEmNS_9OrderTypeENS_17OrderByColumnTypeERNS_6vectorISt17reference_wrapperINS_11SegmentNodeINS_8RowGroupEEEELb1ESaISK_EEE:bb.a
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bb = load ptr, ptr %10, align 8, !tbaa !35   ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.au
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i74.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i73.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i73.i: ; preds = %bb.p
  call void @_ZdlPv(ptr noundef %i.bb) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  br i1 %.0.i.i72.i, label %bb.q, label %.body75.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i74.i: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  br i1 %.0.i.i72.i, label %bb.q, label %.body75.i

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i74.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i73.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i69.i
  %.pn9.i.i70.i = phi { ptr, i32 } [ %i.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i69.i ], [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i74.i ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i73.i ]
  call void @__cxa_free_exception(ptr %i.at) #37
  br label %.body75.i

bb.r:                                             ; preds = %bb.o
  unreachable

_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit58.i: ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !320 ; 5 uses
  %.not.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i, label %.noexc.i.i, label %_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEdeEv.exit.i, !prof !99

.noexc.i.i:                                       ; preds = %_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit58.i
  %i.bf = call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr %i.bg, ptr %11, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  store i64 49, ptr %i.d, align 8, !tbaa !24
  %i.bh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc77.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc77.i:                                       ; preds = %.noexc.i.i
  store ptr %i.bh, ptr %11, align 8, !tbaa !35
  %i.bi = load i64, ptr %i.d, align 8, !tbaa !24  ; 3 uses
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.bh, ptr noundef nonnull align 1 dereferenceable(49) @.str.157, i64 49, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !117
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bi
  store i8 0, ptr %i.bk, align 1, !tbaa !98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %.noexc77.i
  invoke void @__cxa_throw(ptr nonnull %i.bf, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.v unwind label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  br label %bb.u

bb.t:                                             ; preds = %bb.s, %.noexc77.i
  %.0.i.i.i = phi i1 [ false, %bb.s ], [ true, %.noexc77.i ] ; 2 uses
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bn = load ptr, ptr %11, align 8, !tbaa !35   ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.bg
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.t
  call void @_ZdlPv(ptr noundef %i.bn) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  br i1 %.0.i.i.i, label %bb.u, label %.body75.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  br i1 %.0.i.i.i, label %bb.u, label %.body75.i

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn9.i.i.i = phi { ptr, i32 } [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.bf) #37
  br label %.body75.i

bb.v:                                             ; preds = %bb.s
  unreachable

_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEdeEv.exit.i: ; preds = %_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit58.i
  %i.bp = invoke noundef zeroext i1 @_ZNK6duckdb14BaseStatistics11CanHaveNullEv(ptr noundef nonnull align 8 dereferenceable(128) %i.be)
          to label %.noexc61.i unwind label %bb.ab

.noexc61.i:                                       ; preds = %_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEdeEv.exit.i
  br i1 %i.bp, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.noexc61.i
  %i.bq = load atomic i64, ptr %i.as seq_cst, align 8
  br label %_ZN6duckdb12_GLOBAL__N_123GetQualifyingTupleCountERNS_8RowGroupERNS_14BaseStatisticsENS_17OrderByColumnTypeE.exit64.i

bb.x:                                             ; preds = %.noexc61.i
  br i1 %i.ab, label %bb.y, label %_ZN6duckdb12_GLOBAL__N_123GetQualifyingTupleCountERNS_8RowGroupERNS_14BaseStatisticsENS_17OrderByColumnTypeE.exit64.i

bb.y:                                             ; preds = %bb.x
  %i.br = invoke noundef zeroext i1 @_ZN6duckdb12NumericStats9HasMinMaxERKNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %i.be)
          to label %.noexc62.i unwind label %bb.ab

.noexc62.i:                                       ; preds = %bb.y
  br i1 %i.br, label %bb.z, label %_ZN6duckdb12_GLOBAL__N_123GetQualifyingTupleCountERNS_8RowGroupERNS_14BaseStatisticsENS_17OrderByColumnTypeE.exit64.i

bb.z:                                             ; preds = %.noexc62.i
  %i.bs = invoke noundef zeroext i1 @_ZN6duckdb12NumericStats10IsConstantERKNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %i.be)
          to label %.noexc63.i unwind label %bb.ab

.noexc63.i:                                       ; preds = %bb.z
  %..i60.i = select i1 %i.bs, i64 1, i64 2
  br label %_ZN6duckdb12_GLOBAL__N_123GetQualifyingTupleCountERNS_8RowGroupERNS_14BaseStatisticsENS_17OrderByColumnTypeE.exit64.i

_ZN6duckdb12_GLOBAL__N_123GetQualifyingTupleCountERNS_8RowGroupERNS_14BaseStatisticsENS_17OrderByColumnTypeE.exit64.i: ; preds = %.noexc63.i, %.noexc62.i, %bb.x, %bb.w
  %.0.i59.i = phi i64 [ %..i60.i, %.noexc63.i ], [ 0, %.noexc62.i ], [ %i.bq, %bb.w ], [ 0, %bb.x ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37
  invoke void @_ZN6duckdb17RowGroupReorderer12RetrieveStatERKNS_14BaseStatisticsENS_17OrderByStatisticsENS_17OrderByColumnTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %13, ptr noundef nonnull align 8 dereferenceable(128) %i.be, i8 noundef zeroext %i.o, i8 noundef zeroext %4)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_123GetQualifyingTupleCountERNS_8RowGroupERNS_14BaseStatisticsENS_17OrderByColumnTypeE.exit64.i
  %i.bt = add i64 %.0.i59.i, %.13137.i            ; 2 uses
  %i.bu = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %12, ptr noundef nonnull align 8 dereferenceable(64) %13) #37 ; 0 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %13) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  %.not9.i = icmp eq ptr %i.ao, %.sroa.03.042.i
  br i1 %.not9.i, label %.loopexit.i, label %.lr.ph.i40, !llvm.loop !3802

bb.ab:                                            ; preds = %bb.z, %bb.y, %_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEdeEv.exit.i
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body75.i

bb.ac:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_123GetQualifyingTupleCountERNS_8RowGroupERNS_14BaseStatisticsENS_17OrderByColumnTypeE.exit64.i
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  br label %.body75.i

.loopexit.i:                                      ; preds = %bb.aa, %bb.k, %bb.j
  %.sroa.01.134.i = phi ptr [ %.sroa.01.043.i, %bb.j ], [ %.sroa.01.136.i, %bb.k ], [ %i.ao, %bb.aa ]
  %.13127.i = phi i64 [ %.03044.i, %bb.j ], [ %.13137.i, %bb.k ], [ %i.bt, %bb.aa ]
  %.129.i = phi i64 [ %.02845.i, %bb.j ], [ %spec.select.i, %bb.k ], [ %.02845.i, %bb.aa ]
  %.2.i = phi i64 [ %.02746.i, %bb.j ], [ %spec.select107.i, %bb.k ], [ %.13137.i, %bb.aa ] ; 2 uses
  %.not.i41 = icmp ult i64 %.2.i, %i.n
  br i1 %.not.i41, label %bb.ad, label %_ZN6duckdb12_GLOBAL__N_112AddRowGroupsISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEES8_EEvRSt8multimapIS4_S6_St4lessIS4_ESaIS7_EET_T0_RNS_6vectorISt17reference_wrapperINS_11SegmentNodeINS_8RowGroupEEEELb1ESaISM_EEEmNS_17OrderByColumnTypeENS_17OrderByStatisticsE.exit

bb.ad:                                            ; preds = %.loopexit.i
  %i.bx = load ptr, ptr %i.ac, align 8, !tbaa !3024 ; 5 uses
  %i.by = load ptr, ptr %i.ad, align 8, !tbaa !3772
  %.not.i65.i = icmp eq ptr %i.bx, %i.by
  br i1 %.not.i65.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bz = load i64, ptr %i.af, align 8
  store i64 %i.bz, ptr %i.bx, align 8
  %i.ca = load ptr, ptr %i.ac, align 8, !tbaa !3024
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr %i.cb, ptr %i.ac, align 8, !tbaa !3024
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12emplace_backIJRS5_EEEvDpOT_.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.cc = load ptr, ptr %5, align 8, !tbaa !3025  ; 7 uses
  %i.cd = ptrtoint ptr %i.bx to i64               ; 2 uses
  %i.ce = ptrtoint ptr %i.cc to i64               ; 3 uses
  %i.cf = sub i64 %i.cd, %i.ce                    ; 3 uses
  %i.cg = icmp eq i64 %i.cf, 9223372036854775800
  br i1 %i.cg, label %bb.ag, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.164) #40
          to label %.noexc66.i unwind label %.loopexit.split-lp.loopexit.split-lp.i

.noexc66.i:                                       ; preds = %bb.ag
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.af
  %i.ch = ashr exact i64 %i.cf, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ch, i64 1)
  %i.ci = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ch ; 2 uses
  %i.cj = icmp ult i64 %i.ci, %i.ch
  %i.ck = call i64 @llvm.umin.i64(i64 %i.ci, i64 1152921504606846975)
  %i.cl = select i1 %i.cj, i64 1152921504606846975, i64 %i.ck ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cl, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cm = shl nuw nsw i64 %i.cl, 3
  %i.cn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cm) #38
          to label %.noexc67.i unwind label %.loopexit.split-lp.loopexit.i ; 8 uses

.noexc67.i:                                       ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cf
  %i.cp = load i64, ptr %i.af, align 8
  store i64 %i.cp, ptr %i.co, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.cc, %i.bx
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc67.i
  %i.cq = ptrtoaddr ptr %i.cn to i64
  %15 = sub i64 %i.cd, %i.ce
  %16 = add i64 %15, -8                           ; 2 uses
  %i.cr = lshr i64 %16, 3
  %i.cs = add nuw nsw i64 %i.cr, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %16, 24
  %i.ct = sub i64 %i.ce, %i.cq
  %diff.check = icmp ugt i64 %i.ct, -32
  %or.cond463 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond463, label %.lr.ph.i.i.i.i.i.i.i.preheader500, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.cs, 4611686018427387900     ; 3 uses
  %i.cu = shl i64 %n.vec, 3                       ; 2 uses
  %i.cv = getelementptr i8, ptr %i.cn, i64 %i.cu  ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cc, i64 %i.cu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cx = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cn, i64 %i.cx ; 2 uses
  %next.gep406 = getelementptr i8, ptr %i.cc, i64 %i.cx ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3803)
  call void @llvm.experimental.noalias.scope.decl(metadata !3806)
  %i.cy = getelementptr i8, ptr %next.gep406, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep406, align 8, !alias.scope !3806, !noalias !3803
  %wide.load407 = load <2 x i64>, ptr %i.cy, align 8, !alias.scope !3806, !noalias !3803
  %i.cz = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !3803, !noalias !3806
  store <2 x i64> %wide.load407, ptr %i.cz, align 8, !alias.scope !3803, !noalias !3806
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !3808

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cs, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader500

.lr.ph.i.i.i.i.i.i.i.preheader500:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cv, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader500, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader500 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader500 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3803)
  call void @llvm.experimental.noalias.scope.decl(metadata !3806)
  %i.db = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !3806, !noalias !3803
  store i64 %i.db, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !3803, !noalias !3806
  %i.dc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dc, %i.bx
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3809

_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc67.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.cn, %.noexc67.i ], [ %i.cv, %middle.block ], [ %i.dd, %.lr.ph.i.i.i.i.i.i.i ]
  %i.de = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJRS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.cc) #39
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJRS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJRS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.ah, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.cn, ptr %5, align 8, !tbaa !3025
  store ptr %i.de, ptr %i.ac, align 8, !tbaa !3024
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.cl
  store ptr %i.df, ptr %i.ad, align 8, !tbaa !3772
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12emplace_backIJRS5_EEEvDpOT_.exit.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12emplace_backIJRS5_EEEvDpOT_.exit.i: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJRS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.ae
  %i.dg = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.03.042.i) #42 ; 2 uses
  %.not8.i = icmp eq ptr %i.dg, %i.g
  br i1 %.not8.i, label %_ZN6duckdb12_GLOBAL__N_112AddRowGroupsISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEES8_EEvRSt8multimapIS4_S6_St4lessIS4_ESaIS7_EET_T0_RNS_6vectorISt17reference_wrapperINS_11SegmentNodeINS_8RowGroupEEEELb1ESaISM_EEEmNS_17OrderByColumnTypeENS_17OrderByStatisticsE.exit, label %bb.j, !llvm.loop !3810

common.resume:                                    ; preds = %.body80.i, %.body75.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.pn.i, %.body75.i ], [ %.pn.pn.pn.pn.pn.i, %.body80.i ]
  resume { ptr, i32 } %common.resume.op

.body75.i:                                        ; preds = %bb.ac, %bb.ab, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i74.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i73.i, %bb.m, %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit11.i, %bb.l
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.am, %bb.l ], [ %i.an, %bb.m ], [ %.pn9.i.i.i, %bb.u ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i73.i ], [ %i.bw, %bb.ac ], [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i74.i ], [ %.pn9.i.i70.i, %bb.q ], [ %i.bv, %bb.ab ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %lpad.loopexit.i, %.loopexit11.i ], [ %lpad.loopexit12.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp13.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %12) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  br label %common.resume

_ZN6duckdb12_GLOBAL__N_112AddRowGroupsISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEES8_EEvRSt8multimapIS4_S6_St4lessIS4_ESaIS7_EET_T0_RNS_6vectorISt17reference_wrapperINS_11SegmentNodeINS_8RowGroupEEEELb1ESaISM_EEEmNS_17OrderByColumnTypeENS_17OrderByStatisticsE.exit: ; preds = %.loopexit.i, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12emplace_backIJRS5_EEEvDpOT_.exit.i
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %12) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  br label %_ZN6duckdb12_GLOBAL__N_118InsertAllRowGroupsISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEES8_EEvT_T0_RNS_6vectorISt17reference_wrapperINS_11SegmentNodeINS_8RowGroupEEEELb1ESaISG_EEE.exit

.lr.ph.i43:                                       ; preds = %bb.c
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %.pre.i = load ptr, ptr %i.dh, align 8, !tbaa !3024
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backERKS5_.exit.i, %.lr.ph.i43
  %i.dj = phi ptr [ %.pre.i, %.lr.ph.i43 ], [ %i.et, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backERKS5_.exit.i ] ; 5 uses
  %.sroa.03.05.i = phi ptr [ %.sroa.03.0.lcssa.i, %.lr.ph.i43 ], [ %i.eu, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backERKS5_.exit.i ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i, i64 96 ; 2 uses
  %i.dl = load ptr, ptr %i.di, align 8, !tbaa !3772
  %.not.i.i44 = icmp eq ptr %i.dj, %i.dl
  br i1 %.not.i.i44, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dm = load i64, ptr %i.dk, align 8
  store i64 %i.dm, ptr %i.dj, align 8
  %i.dn = load ptr, ptr %i.dh, align 8, !tbaa !3024
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 2 uses
  store ptr %i.do, ptr %i.dh, align 8, !tbaa !3024
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backERKS5_.exit.i

bb.ak:                                            ; preds = %bb.ai
  %i.dp = load ptr, ptr %5, align 8, !tbaa !3025  ; 7 uses
  %i.dq = ptrtoint ptr %i.dj to i64               ; 2 uses
  %i.dr = ptrtoint ptr %i.dp to i64               ; 3 uses
  %i.ds = sub i64 %i.dq, %i.dr                    ; 3 uses
  %i.dt = icmp eq i64 %i.ds, 9223372036854775800
  br i1 %i.dt, label %bb.al, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i46

bb.al:                                            ; preds = %bb.ak
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.164) #40
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i46: ; preds = %bb.ak
  %i.du = ashr exact i64 %i.ds, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i47 = tail call i64 @llvm.umax.i64(i64 %i.du, i64 1)
  %i.dv = add nsw i64 %.sroa.speculated.i.i.i.i47, %i.du ; 2 uses
  %i.dw = icmp ult i64 %i.dv, %i.du
  %i.dx = tail call i64 @llvm.umin.i64(i64 %i.dv, i64 1152921504606846975)
  %i.dy = select i1 %i.dw, i64 1152921504606846975, i64 %i.dx ; 3 uses
  %.not.i.i.i.i48 = icmp ne i64 %i.dy, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i48)
  %i.dz = shl nuw nsw i64 %i.dy, 3
  %i.ea = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dz) #38 ; 8 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ds
  %i.ec = load i64, ptr %i.dk, align 8
  store i64 %i.ec, ptr %i.eb, align 8
  %.not10.i.i.i.i.i.i.i49 = icmp eq ptr %i.dp, %i.dj
  br i1 %.not10.i.i.i.i.i.i.i49, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i54, label %.lr.ph.i.i.i.i.i.i.i50.preheader

.lr.ph.i.i.i.i.i.i.i50.preheader:                 ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i46
  %i.ed = ptrtoaddr ptr %i.ea to i64
  %17 = sub i64 %i.dq, %i.dr
  %18 = add i64 %17, -8                           ; 2 uses
  %i.ee = lshr i64 %18, 3
  %i.ef = add nuw nsw i64 %i.ee, 1                ; 2 uses
  %min.iters.check412 = icmp ult i64 %18, 24
  %i.eg = sub i64 %i.dr, %i.ed
  %diff.check410 = icmp ugt i64 %i.eg, -32
  %or.cond464 = or i1 %min.iters.check412, %diff.check410
  br i1 %or.cond464, label %.lr.ph.i.i.i.i.i.i.i50.preheader497, label %vector.ph413

vector.ph413:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i50.preheader
  %n.vec415 = and i64 %i.ef, 4611686018427387900  ; 3 uses
  %i.eh = shl i64 %n.vec415, 3                    ; 2 uses
  %i.ei = getelementptr i8, ptr %i.ea, i64 %i.eh  ; 2 uses
  %i.ej = getelementptr i8, ptr %i.dp, i64 %i.eh
  br label %vector.body416

vector.body416:                                   ; preds = %vector.body416, %vector.ph413
  %index417 = phi i64 [ 0, %vector.ph413 ], [ %index.next422, %vector.body416 ] ; 2 uses
  %i.ek = shl i64 %index417, 3                    ; 2 uses
  %next.gep418 = getelementptr i8, ptr %i.ea, i64 %i.ek ; 2 uses
  %next.gep419 = getelementptr i8, ptr %i.dp, i64 %i.ek ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3811)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3814)
  %i.el = getelementptr i8, ptr %next.gep419, i64 16
  %wide.load420 = load <2 x i64>, ptr %next.gep419, align 8, !alias.scope !3814, !noalias !3811
  %wide.load421 = load <2 x i64>, ptr %i.el, align 8, !alias.scope !3814, !noalias !3811
  %i.em = getelementptr i8, ptr %next.gep418, i64 16
  store <2 x i64> %wide.load420, ptr %next.gep418, align 8, !alias.scope !3811, !noalias !3814
  store <2 x i64> %wide.load421, ptr %i.em, align 8, !alias.scope !3811, !noalias !3814
  %index.next422 = add nuw i64 %index417, 4       ; 2 uses
  %i.en = icmp eq i64 %index.next422, %n.vec415
  br i1 %i.en, label %middle.block423, label %vector.body416, !llvm.loop !3816

middle.block423:                                  ; preds = %vector.body416
  %cmp.n424 = icmp eq i64 %i.ef, %n.vec415
  br i1 %cmp.n424, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i54, label %.lr.ph.i.i.i.i.i.i.i50.preheader497

.lr.ph.i.i.i.i.i.i.i50.preheader497:              ; preds = %.lr.ph.i.i.i.i.i.i.i50.preheader, %middle.block423
  %.012.i.i.i.i.i.i.i51.ph = phi ptr [ %i.ea, %.lr.ph.i.i.i.i.i.i.i50.preheader ], [ %i.ei, %middle.block423 ]
  %.0911.i.i.i.i.i.i.i52.ph = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i.i.i50.preheader ], [ %i.ej, %middle.block423 ]
  br label %.lr.ph.i.i.i.i.i.i.i50

.lr.ph.i.i.i.i.i.i.i50:                           ; preds = %.lr.ph.i.i.i.i.i.i.i50.preheader497, %.lr.ph.i.i.i.i.i.i.i50
  %.012.i.i.i.i.i.i.i51 = phi ptr [ %i.eq, %.lr.ph.i.i.i.i.i.i.i50 ], [ %.012.i.i.i.i.i.i.i51.ph, %.lr.ph.i.i.i.i.i.i.i50.preheader497 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i52 = phi ptr [ %i.ep, %.lr.ph.i.i.i.i.i.i.i50 ], [ %.0911.i.i.i.i.i.i.i52.ph, %.lr.ph.i.i.i.i.i.i.i50.preheader497 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3811)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3814)
  %i.eo = load i64, ptr %.0911.i.i.i.i.i.i.i52, align 8, !alias.scope !3814, !noalias !3811
  store i64 %i.eo, ptr %.012.i.i.i.i.i.i.i51, align 8, !alias.scope !3811, !noalias !3814
  %i.ep = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i52, i64 8 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i51, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i53 = icmp eq ptr %i.ep, %i.dj
  br i1 %.not.i.i.i.i.i.i.i53, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i54, label %.lr.ph.i.i.i.i.i.i.i50, !llvm.loop !3817

_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i54: ; preds = %.lr.ph.i.i.i.i.i.i.i50, %middle.block423, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i46
  %.0.lcssa.i.i.i.i.i.i.i55 = phi ptr [ %i.ea, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i46 ], [ %i.ei, %middle.block423 ], [ %i.eq, %.lr.ph.i.i.i.i.i.i.i50 ]
  %i.er = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i55, i64 8 ; 2 uses
  %.not.i23.i.i.i56 = icmp eq ptr %i.dp, null
  br i1 %.not.i23.i.i.i56, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i54
  tail call void @_ZdlPv(ptr noundef nonnull %i.dp) #39
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.am, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i54
  store ptr %i.ea, ptr %5, align 8, !tbaa !3025
  store ptr %i.er, ptr %i.dh, align 8, !tbaa !3024
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.dy
  store ptr %i.es, ptr %i.di, align 8, !tbaa !3772
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backERKS5_.exit.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backERKS5_.exit.i: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.aj
  %i.et = phi ptr [ %i.do, %bb.aj ], [ %i.er, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ]
  %i.eu = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.03.05.i) #42 ; 2 uses
  %.not.i45 = icmp eq ptr %i.eu, %i.g
  br i1 %.not.i45, label %_ZN6duckdb12_GLOBAL__N_118InsertAllRowGroupsISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEES8_EEvT_T0_RNS_6vectorISt17reference_wrapperINS_11SegmentNodeINS_8RowGroupEEEELb1ESaISG_EEE.exit, label %bb.ai, !llvm.loop !3818

bb.an:                                            ; preds = %bb.a
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val29 = load ptr, ptr %i.ev, align 8, !tbaa !3526 ; 5 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not2.i = icmp eq i64 %2, 0
  %.not1.i192 = icmp eq ptr %i.ew, %.val29
  %or.cond = select i1 %.not2.i, i1 true, i1 %.not1.i192
  br i1 %or.cond, label %_ZN6duckdb12_GLOBAL__N_125SkipOffsetPrunedRowGroupsISt16reverse_iteratorISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEEESA_EET_SB_T0_m.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.an
  %i.ex = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %i.ew) #42, !noalias !3819 ; 2 uses
  %i.ey = add i64 %2, -1                          ; 2 uses
  %.not.i58404 = icmp eq i64 %i.ey, 0
  br i1 %.not.i58404, label %._ZN6duckdb12_GLOBAL__N_125SkipOffsetPrunedRowGroupsISt16reverse_iteratorISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEEESA_EET_SB_T0_m.exit.loopexit_crit_edge, label %.lr.ph405, !llvm.loop !3822

.lr.ph405:                                        ; preds = %.lr.ph.preheader
  br label %bb.ao, !llvm.loop !3822

bb.ao:                                            ; preds = %.lr.ph405, %.lr.ph
  %i.ez = phi i64 [ %i.ey, %.lr.ph405 ], [ %i.fc, %.lr.ph ]
  %i.fa = phi ptr [ %i.ex, %.lr.ph405 ], [ %i.fb, %.lr.ph ] ; 3 uses
  %.not1.i = icmp eq ptr %i.fa, %.val29
  br i1 %.not1.i, label %_ZN6duckdb12_GLOBAL__N_125SkipOffsetPrunedRowGroupsISt16reverse_iteratorISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEEESA_EET_SB_T0_m.exit, label %.lr.ph, !llvm.loop !3822

.lr.ph:                                           ; preds = %bb.ao
  %i.fb = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %i.fa) #42, !noalias !3819 ; 2 uses
  %i.fc = add i64 %i.ez, -1                       ; 2 uses
  %.not.i58 = icmp eq i64 %i.fc, 0
  br i1 %.not.i58, label %.lr.ph.._ZN6duckdb12_GLOBAL__N_125SkipOffsetPrunedRowGroupsISt16reverse_iteratorISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEEESA_EET_SB_T0_m.exit.loopexit_crit_edge_crit_edge, label %bb.ao, !llvm.loop !3822

.lr.ph.._ZN6duckdb12_GLOBAL__N_125SkipOffsetPrunedRowGroupsISt16reverse_iteratorISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEEESA_EET_SB_T0_m.exit.loopexit_crit_edge_crit_edge: ; preds = %.lr.ph
  br label %._ZN6duckdb12_GLOBAL__N_125SkipOffsetPrunedRowGroupsISt16reverse_iteratorISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEEESA_EET_SB_T0_m.exit.loopexit_crit_edge, !llvm.loop !3822

._ZN6duckdb12_GLOBAL__N_125SkipOffsetPrunedRowGroupsISt16reverse_iteratorISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEEESA_EET_SB_T0_m.exit.loopexit_crit_edge: ; preds = %.lr.ph.._ZN6duckdb12_GLOBAL__N_125SkipOffsetPrunedRowGroupsISt16reverse_iteratorISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEEESA_EET_SB_T0_m.exit.loopexit_crit_edge_crit_edge, %.lr.ph.preheader
  %.lcssa375 = phi ptr [ %i.fb, %.lr.ph.._ZN6duckdb12_GLOBAL__N_125SkipOffsetPrunedRowGroupsISt16reverse_iteratorISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEEESA_EET_SB_T0_m.exit.loopexit_crit_edge_crit_edge ], [ %i.ex, %.lr.ph.preheader ]
  br label %_ZN6duckdb12_GLOBAL__N_125SkipOffsetPrunedRowGroupsISt16reverse_iteratorISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEEESA_EET_SB_T0_m.exit, !llvm.loop !3822

_ZN6duckdb12_GLOBAL__N_125SkipOffsetPrunedRowGroupsISt16reverse_iteratorISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEEESA_EET_SB_T0_m.exit: ; preds = %bb.ao, %bb.an, %._ZN6duckdb12_GLOBAL__N_125SkipOffsetPrunedRowGroupsISt16reverse_iteratorISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEEESA_EET_SB_T0_m.exit.loopexit_crit_edge
  %.val.i.in = phi ptr [ %i.ew, %bb.an ], [ %.lcssa375, %._ZN6duckdb12_GLOBAL__N_125SkipOffsetPrunedRowGroupsISt16reverse_iteratorISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEEESA_EET_SB_T0_m.exit.loopexit_crit_edge ], [ %i.fa, %bb.ao ] ; 6 uses
  %i.fd = icmp eq ptr %.val29, %.val.i.in
  br i1 %i.fd, label %_ZN6duckdb12_GLOBAL__N_118InsertAllRowGroupsISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEES8_EEvT_T0_RNS_6vectorISt17reference_wrapperINS_11SegmentNodeINS_8RowGroupEEEELb1ESaISG_EEE.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_125SkipOffsetPrunedRowGroupsISt16reverse_iteratorISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEEESA_EET_SB_T0_m.exit
  %.not138 = icmp eq i64 %1, -1
  br i1 %.not138, label %.lr.ph.i107, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fe = call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %14)
  %i.ff = xor i8 %i.f, 1                          ; 2 uses
  %i.fg = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %.val.i.in) #42
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 104 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  %i.fi = call noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fh)
  call void @_ZN6duckdb17RowGroupReorderer12RetrieveStatERKNS_14BaseStatisticsENS_17OrderByStatisticsENS_17OrderByColumnTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %8, ptr noundef nonnull align 8 dereferenceable(128) %i.fi, i8 noundef zeroext %i.ff, i8 noundef zeroext %4)
  %i.fj = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %.val.i.in) #42
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 96
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !3026
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fn = invoke noundef nonnull align 8 dereferenceable(218) ptr @_ZNK6duckdb10shared_ptrINS_8RowGroupELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fm)
          to label %_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit.i59 unwind label %bb.ay

_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit.i59: ; preds = %bb.aq
  %i.fo = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fh)
          to label %bb.ar unwind label %bb.ay     ; 3 uses

bb.ar:                                            ; preds = %_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit.i59
  %i.fp = invoke noundef zeroext i1 @_ZNK6duckdb14BaseStatistics11CanHaveNullEv(ptr noundef nonnull align 8 dereferenceable(128) %i.fo)
          to label %.noexc.i60 unwind label %bb.ay

.noexc.i60:                                       ; preds = %bb.ar
  br i1 %i.fp, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.noexc.i60
  %i.fq = load atomic i64, ptr %i.fn seq_cst, align 8
  br label %.lr.ph47.i63

bb.at:                                            ; preds = %.noexc.i60
  %i.fr = icmp eq i8 %4, 0
  br i1 %i.fr, label %bb.au, label %.lr.ph47.i63

bb.au:                                            ; preds = %bb.at
  %i.fs = invoke noundef zeroext i1 @_ZN6duckdb12NumericStats9HasMinMaxERKNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %i.fo)
          to label %.noexc58.i unwind label %bb.ay

.noexc58.i:                                       ; preds = %bb.au
  br i1 %i.fs, label %bb.av, label %.lr.ph47.i63

bb.av:                                            ; preds = %.noexc58.i
  %i.ft = invoke noundef zeroext i1 @_ZN6duckdb12NumericStats10IsConstantERKNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %i.fo)
          to label %.noexc59.i unwind label %bb.ay

.noexc59.i:                                       ; preds = %bb.av
  %..i.i105 = select i1 %i.ft, i64 1, i64 2
  br label %.lr.ph47.i63

.lr.ph47.i63:                                     ; preds = %bb.as, %bb.at, %.noexc58.i, %.noexc59.i
  %.0.i.i62 = phi i64 [ %..i.i105, %.noexc59.i ], [ 0, %.noexc58.i ], [ %i.fq, %bb.as ], [ 0, %bb.at ]
  %i.fu = icmp eq i8 %4, 0
  %i.fv = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12emplace_backIJRS5_EEEvDpOT_.exit.i79, %.lr.ph47.i63
  %.sroa.0126.0 = phi ptr [ %.val.i.in, %.lr.ph47.i63 ], [ %i.jc, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12emplace_backIJRS5_EEEvDpOT_.exit.i79 ] ; 5 uses
  %.02746.i65 = phi i64 [ 0, %.lr.ph47.i63 ], [ %.2.i77, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12emplace_backIJRS5_EEEvDpOT_.exit.i79 ] ; 2 uses
  %.02845.i66 = phi i64 [ 0, %.lr.ph47.i63 ], [ %.129.i76, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12emplace_backIJRS5_EEEvDpOT_.exit.i79 ] ; 3 uses
  %.03044.i67 = phi i64 [ %.0.i.i62, %.lr.ph47.i63 ], [ %.13126.i, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12emplace_backIJRS5_EEEvDpOT_.exit.i79 ] ; 2 uses
  %.sroa.02.043.i = phi ptr [ %.val.i.in, %.lr.ph47.i63 ], [ %.sroa.02.133.i, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12emplace_backIJRS5_EEEvDpOT_.exit.i79 ] ; 3 uses
  %i.fx = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0126.0) #42 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 32 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 96 ; 2 uses
  %.not835.i = icmp eq ptr %.sroa.02.043.i, %.sroa.0126.0
  br i1 %.not835.i, label %.loopexit.i75, label %.lr.ph.i68.preheader

.lr.ph.i68.preheader:                             ; preds = %bb.aw, %bb.bn
  %.138.i69 = phi i64 [ %.13137.i70, %bb.bn ], [ %.02746.i65, %bb.aw ]
  %.13137.i70 = phi i64 [ %i.hp, %bb.bn ], [ %.03044.i67, %bb.aw ] ; 4 uses
  %.sroa.02.136.i = phi ptr [ %i.gj, %bb.bn ], [ %.sroa.02.043.i, %bb.aw ] ; 2 uses
  %i.ga = invoke noundef zeroext i1 @_ZNK6duckdb5ValueltERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.fy, ptr noundef nonnull align 8 dereferenceable(64) %8)
          to label %_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.i72 unwind label %.loopexit10.i

_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.i72: ; preds = %.lr.ph.i68.preheader
  br i1 %i.ga, label %bb.ba, label %_ZN6duckdb12_GLOBAL__N_113CompareValuesERKNS_5ValueES3_NS_17OrderByStatisticsE.exit.thread.i73

end_hunk_8
begin_hunk_9_@_ZN6duckdb12_GLOBAL__N_117SetRowGroupVectorERSt8multimapINS_5ValueENS0_24RowGroupSegmentNodeEntryESt4lessIS2_ESaISt4pairIKS2_S3_EEENS_12optional_idxEmNS_9OrderTypeENS_17OrderByColumnTypeERNS_6vectorISt17reference_wrapperINS_11SegmentNodeINS_8RowGroupEEEELb1ESaISK_EEE:bb.a
  %i.gw = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.gx = load ptr, ptr %6, align 8, !tbaa !35    ; 2 uses
  %i.gy = icmp eq ptr %i.gx, %i.gq
  br i1 %i.gy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i79.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i78.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i78.i: ; preds = %bb.bc
  call void @_ZdlPv(ptr noundef %i.gx) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br i1 %.0.i.i77.i, label %bb.bd, label %.body80.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i79.i: ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br i1 %.0.i.i77.i, label %bb.bd, label %.body80.i

bb.bd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i79.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i78.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i74.i
  %.pn9.i.i75.i = phi { ptr, i32 } [ %i.gv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i74.i ], [ %i.gw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i79.i ], [ %i.gw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i78.i ]
  call void @__cxa_free_exception(ptr %i.gp) #37
  br label %.body80.i

bb.be:                                            ; preds = %bb.bb
  unreachable

_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit63.i: ; preds = %bb.ba
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gk, i64 104
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !320 ; 5 uses
  %.not.i.i94 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i94, label %.noexc.i.i99, label %_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEdeEv.exit.i95, !prof !99

.noexc.i.i99:                                     ; preds = %_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit63.i
  %i.hb = call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.hc = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.hc, ptr %7, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  store i64 49, ptr %i.b, align 8, !tbaa !24
  %i.hd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc82.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i100 ; 3 uses

.noexc82.i:                                       ; preds = %.noexc.i.i99
  store ptr %i.hd, ptr %7, align 8, !tbaa !35
  %i.he = load i64, ptr %i.b, align 8, !tbaa !24  ; 3 uses
  store i64 %i.he, ptr %i.hc, align 8, !tbaa !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.hd, ptr noundef nonnull align 1 dereferenceable(49) @.str.157, i64 49, i1 false)
  %i.hf = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.he, ptr %i.hf, align 8, !tbaa !117
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.he
  store i8 0, ptr %i.hg, align 1, !tbaa !98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.hb, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.bf unwind label %bb.bg

bb.bf:                                            ; preds = %.noexc82.i
  invoke void @__cxa_throw(ptr nonnull %i.hb, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.bi unwind label %bb.bg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i100: ; preds = %.noexc.i.i99
  %i.hh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bf, %.noexc82.i
  %.0.i.i.i102 = phi i1 [ false, %bb.bf ], [ true, %.noexc82.i ] ; 2 uses
  %i.hi = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.hj = load ptr, ptr %7, align 8, !tbaa !35    ; 2 uses
  %i.hk = icmp eq ptr %i.hj, %i.hc
  br i1 %i.hk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i103: ; preds = %bb.bg
  call void @_ZdlPv(ptr noundef %i.hj) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br i1 %.0.i.i.i102, label %bb.bh, label %.body80.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i104: ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br i1 %.0.i.i.i102, label %bb.bh, label %.body80.i

bb.bh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i103, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i100
  %.pn9.i.i.i101 = phi { ptr, i32 } [ %i.hh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i100 ], [ %i.hi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i104 ], [ %i.hi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i103 ]
  call void @__cxa_free_exception(ptr %i.hb) #37
  br label %.body80.i

bb.bi:                                            ; preds = %bb.bf
  unreachable

_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEdeEv.exit.i95: ; preds = %_ZNK6duckdb11SegmentNodeINS_8RowGroupEE7GetNodeEv.exit63.i
  %i.hl = invoke noundef zeroext i1 @_ZNK6duckdb14BaseStatistics11CanHaveNullEv(ptr noundef nonnull align 8 dereferenceable(128) %i.ha)
          to label %.noexc66.i96 unwind label %bb.bo

.noexc66.i96:                                     ; preds = %_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEdeEv.exit.i95
  br i1 %i.hl, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %.noexc66.i96
  %i.hm = load atomic i64, ptr %i.go seq_cst, align 8
  br label %_ZN6duckdb12_GLOBAL__N_123GetQualifyingTupleCountERNS_8RowGroupERNS_14BaseStatisticsENS_17OrderByColumnTypeE.exit69.i

bb.bk:                                            ; preds = %.noexc66.i96
  br i1 %i.fu, label %bb.bl, label %_ZN6duckdb12_GLOBAL__N_123GetQualifyingTupleCountERNS_8RowGroupERNS_14BaseStatisticsENS_17OrderByColumnTypeE.exit69.i

bb.bl:                                            ; preds = %bb.bk
  %i.hn = invoke noundef zeroext i1 @_ZN6duckdb12NumericStats9HasMinMaxERKNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %i.ha)
          to label %.noexc67.i98 unwind label %bb.bo

.noexc67.i98:                                     ; preds = %bb.bl
  br i1 %i.hn, label %bb.bm, label %_ZN6duckdb12_GLOBAL__N_123GetQualifyingTupleCountERNS_8RowGroupERNS_14BaseStatisticsENS_17OrderByColumnTypeE.exit69.i

bb.bm:                                            ; preds = %.noexc67.i98
  %i.ho = invoke noundef zeroext i1 @_ZN6duckdb12NumericStats10IsConstantERKNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %i.ha)
          to label %.noexc68.i unwind label %bb.bo

.noexc68.i:                                       ; preds = %bb.bm
  %..i65.i = select i1 %i.ho, i64 1, i64 2
  br label %_ZN6duckdb12_GLOBAL__N_123GetQualifyingTupleCountERNS_8RowGroupERNS_14BaseStatisticsENS_17OrderByColumnTypeE.exit69.i

_ZN6duckdb12_GLOBAL__N_123GetQualifyingTupleCountERNS_8RowGroupERNS_14BaseStatisticsENS_17OrderByColumnTypeE.exit69.i: ; preds = %.noexc68.i, %.noexc67.i98, %bb.bk, %bb.bj
  %.0.i64.i = phi i64 [ %..i65.i, %.noexc68.i ], [ 0, %.noexc67.i98 ], [ %i.hm, %bb.bj ], [ 0, %bb.bk ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  invoke void @_ZN6duckdb17RowGroupReorderer12RetrieveStatERKNS_14BaseStatisticsENS_17OrderByStatisticsENS_17OrderByColumnTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %9, ptr noundef nonnull align 8 dereferenceable(128) %i.ha, i8 noundef zeroext %i.ff, i8 noundef zeroext %4)
          to label %bb.bn unwind label %bb.bp

bb.bn:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_123GetQualifyingTupleCountERNS_8RowGroupERNS_14BaseStatisticsENS_17OrderByColumnTypeE.exit69.i
  %i.hp = add i64 %.0.i64.i, %.13137.i70          ; 2 uses
  %i.hq = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull align 8 dereferenceable(64) %9) #37 ; 0 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  %.not8.i97 = icmp eq ptr %i.gj, %.sroa.0126.0
  br i1 %.not8.i97, label %.loopexit.i75, label %.lr.ph.i68.preheader, !llvm.loop !3823

bb.bo:                                            ; preds = %bb.bm, %bb.bl, %_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEdeEv.exit.i95
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %.body80.i

bb.bp:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_123GetQualifyingTupleCountERNS_8RowGroupERNS_14BaseStatisticsENS_17OrderByColumnTypeE.exit69.i
  %i.hs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br label %.body80.i

.loopexit.i75:                                    ; preds = %bb.bn, %bb.ax, %bb.aw
  %.sroa.02.133.i = phi ptr [ %.sroa.02.043.i, %bb.aw ], [ %.sroa.02.136.i, %bb.ax ], [ %i.gj, %bb.bn ]
  %.13126.i = phi i64 [ %.03044.i67, %bb.aw ], [ %.13137.i70, %bb.ax ], [ %i.hp, %bb.bn ]
  %.129.i76 = phi i64 [ %.02845.i66, %bb.aw ], [ %spec.select.i74, %bb.ax ], [ %.02845.i66, %bb.bn ]
  %.2.i77 = phi i64 [ %.02746.i65, %bb.aw ], [ %spec.select105.i, %bb.ax ], [ %.13137.i70, %bb.bn ] ; 2 uses
  %.not.i78 = icmp ult i64 %.2.i77, %i.fe
  br i1 %.not.i78, label %bb.bq, label %_ZN6duckdb12_GLOBAL__N_112AddRowGroupsISt16reverse_iteratorISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEEESA_EEvRSt8multimapIS5_S7_St4lessIS5_ESaIS8_EET_T0_RNS_6vectorISt17reference_wrapperINS_11SegmentNodeINS_8RowGroupEEEELb1ESaISO_EEEmNS_17OrderByColumnTypeENS_17OrderByStatisticsE.exit

bb.bq:                                            ; preds = %.loopexit.i75
  %i.ht = load ptr, ptr %i.fv, align 8, !tbaa !3024 ; 5 uses
  %i.hu = load ptr, ptr %i.fw, align 8, !tbaa !3772
  %.not.i70.i = icmp eq ptr %i.ht, %i.hu
  br i1 %.not.i70.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.hv = load i64, ptr %i.fz, align 8
  store i64 %i.hv, ptr %i.ht, align 8
  %i.hw = load ptr, ptr %i.fv, align 8, !tbaa !3024
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  store ptr %i.hx, ptr %i.fv, align 8, !tbaa !3024
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12emplace_backIJRS5_EEEvDpOT_.exit.i79

bb.bs:                                            ; preds = %bb.bq
  %i.hy = load ptr, ptr %5, align 8, !tbaa !3025  ; 7 uses
  %i.hz = ptrtoint ptr %i.ht to i64               ; 2 uses
  %i.ia = ptrtoint ptr %i.hy to i64               ; 3 uses
  %i.ib = sub i64 %i.hz, %i.ia                    ; 3 uses
  %i.ic = icmp eq i64 %i.ib, 9223372036854775800
  br i1 %i.ic, label %bb.bt, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i80

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.164) #40
          to label %.noexc71.i unwind label %.loopexit.split-lp.loopexit.split-lp.i93

.noexc71.i:                                       ; preds = %bb.bt
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i80: ; preds = %bb.bs
  %i.id = ashr exact i64 %i.ib, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i81 = call i64 @llvm.umax.i64(i64 %i.id, i64 1)
  %i.ie = add nsw i64 %.sroa.speculated.i.i.i.i81, %i.id ; 2 uses
  %i.if = icmp ult i64 %i.ie, %i.id
  %i.ig = call i64 @llvm.umin.i64(i64 %i.ie, i64 1152921504606846975)
  %i.ih = select i1 %i.if, i64 1152921504606846975, i64 %i.ig ; 3 uses
  %.not.i.i.i.i82 = icmp ne i64 %i.ih, 0
  call void @llvm.assume(i1 %.not.i.i.i.i82)
  %i.ii = shl nuw nsw i64 %i.ih, 3
  %i.ij = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ii) #38
          to label %.noexc72.i unwind label %.loopexit.split-lp.loopexit.i83 ; 8 uses

.noexc72.i:                                       ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i80
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.ib
  %i.il = load i64, ptr %i.fz, align 8
  store i64 %i.il, ptr %i.ik, align 8
  %.not10.i.i.i.i.i.i.i84 = icmp eq ptr %i.hy, %i.ht
  br i1 %.not10.i.i.i.i.i.i.i84, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i89, label %.lr.ph.i.i.i.i.i.i.i85.preheader

.lr.ph.i.i.i.i.i.i.i85.preheader:                 ; preds = %.noexc72.i
  %i.im = ptrtoaddr ptr %i.ij to i64
  %19 = sub i64 %i.hz, %i.ia
  %20 = add i64 %19, -8                           ; 2 uses
  %i.in = lshr i64 %20, 3
  %i.io = add nuw nsw i64 %i.in, 1                ; 2 uses
  %min.iters.check430 = icmp ult i64 %20, 24
  %i.ip = sub i64 %i.ia, %i.im
  %diff.check428 = icmp ugt i64 %i.ip, -32
  %or.cond465 = or i1 %min.iters.check430, %diff.check428
  br i1 %or.cond465, label %.lr.ph.i.i.i.i.i.i.i85.preheader468, label %vector.ph431

vector.ph431:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i85.preheader
  %n.vec433 = and i64 %i.io, 4611686018427387900  ; 3 uses
  %i.iq = shl i64 %n.vec433, 3                    ; 2 uses
  %i.ir = getelementptr i8, ptr %i.ij, i64 %i.iq  ; 2 uses
  %i.is = getelementptr i8, ptr %i.hy, i64 %i.iq
  br label %vector.body434

vector.body434:                                   ; preds = %vector.body434, %vector.ph431
  %index435 = phi i64 [ 0, %vector.ph431 ], [ %index.next440, %vector.body434 ] ; 2 uses
  %i.it = shl i64 %index435, 3                    ; 2 uses
  %next.gep436 = getelementptr i8, ptr %i.ij, i64 %i.it ; 2 uses
  %next.gep437 = getelementptr i8, ptr %i.hy, i64 %i.it ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3824)
  call void @llvm.experimental.noalias.scope.decl(metadata !3827)
  %i.iu = getelementptr i8, ptr %next.gep437, i64 16
  %wide.load438 = load <2 x i64>, ptr %next.gep437, align 8, !alias.scope !3827, !noalias !3824
  %wide.load439 = load <2 x i64>, ptr %i.iu, align 8, !alias.scope !3827, !noalias !3824
  %i.iv = getelementptr i8, ptr %next.gep436, i64 16
  store <2 x i64> %wide.load438, ptr %next.gep436, align 8, !alias.scope !3824, !noalias !3827
  store <2 x i64> %wide.load439, ptr %i.iv, align 8, !alias.scope !3824, !noalias !3827
  %index.next440 = add nuw i64 %index435, 4       ; 2 uses
  %i.iw = icmp eq i64 %index.next440, %n.vec433
  br i1 %i.iw, label %middle.block441, label %vector.body434, !llvm.loop !3829

middle.block441:                                  ; preds = %vector.body434
  %cmp.n442 = icmp eq i64 %i.io, %n.vec433
  br i1 %cmp.n442, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i89, label %.lr.ph.i.i.i.i.i.i.i85.preheader468

.lr.ph.i.i.i.i.i.i.i85.preheader468:              ; preds = %.lr.ph.i.i.i.i.i.i.i85.preheader, %middle.block441
  %.012.i.i.i.i.i.i.i86.ph = phi ptr [ %i.ij, %.lr.ph.i.i.i.i.i.i.i85.preheader ], [ %i.ir, %middle.block441 ]
  %.0911.i.i.i.i.i.i.i87.ph = phi ptr [ %i.hy, %.lr.ph.i.i.i.i.i.i.i85.preheader ], [ %i.is, %middle.block441 ]
  br label %.lr.ph.i.i.i.i.i.i.i85

.lr.ph.i.i.i.i.i.i.i85:                           ; preds = %.lr.ph.i.i.i.i.i.i.i85.preheader468, %.lr.ph.i.i.i.i.i.i.i85
  %.012.i.i.i.i.i.i.i86 = phi ptr [ %i.iz, %.lr.ph.i.i.i.i.i.i.i85 ], [ %.012.i.i.i.i.i.i.i86.ph, %.lr.ph.i.i.i.i.i.i.i85.preheader468 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i87 = phi ptr [ %i.iy, %.lr.ph.i.i.i.i.i.i.i85 ], [ %.0911.i.i.i.i.i.i.i87.ph, %.lr.ph.i.i.i.i.i.i.i85.preheader468 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3824)
  call void @llvm.experimental.noalias.scope.decl(metadata !3827)
  %i.ix = load i64, ptr %.0911.i.i.i.i.i.i.i87, align 8, !alias.scope !3827, !noalias !3824
  store i64 %i.ix, ptr %.012.i.i.i.i.i.i.i86, align 8, !alias.scope !3824, !noalias !3827
  %i.iy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i87, i64 8 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i86, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i88 = icmp eq ptr %i.iy, %i.ht
  br i1 %.not.i.i.i.i.i.i.i88, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i89, label %.lr.ph.i.i.i.i.i.i.i85, !llvm.loop !3830

_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i89: ; preds = %.lr.ph.i.i.i.i.i.i.i85, %middle.block441, %.noexc72.i
  %.0.lcssa.i.i.i.i.i.i.i90 = phi ptr [ %i.ij, %.noexc72.i ], [ %i.ir, %middle.block441 ], [ %i.iz, %.lr.ph.i.i.i.i.i.i.i85 ]
  %i.ja = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i90, i64 8
  %.not.i23.i.i.i91 = icmp eq ptr %i.hy, null
  br i1 %.not.i23.i.i.i91, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJRS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i92, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i89
  call void @_ZdlPv(ptr noundef nonnull %i.hy) #39
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJRS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i92

_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJRS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i92: ; preds = %bb.bu, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i89
  store ptr %i.ij, ptr %5, align 8, !tbaa !3025
  store ptr %i.ja, ptr %i.fv, align 8, !tbaa !3024
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.ih
  store ptr %i.jb, ptr %i.fw, align 8, !tbaa !3772
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12emplace_backIJRS5_EEEvDpOT_.exit.i79

_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12emplace_backIJRS5_EEEvDpOT_.exit.i79: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJRS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i92, %bb.br
  %i.jc = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0126.0) #42 ; 2 uses
  %.not7.i = icmp eq ptr %i.jc, %.val29
  br i1 %.not7.i, label %_ZN6duckdb12_GLOBAL__N_112AddRowGroupsISt16reverse_iteratorISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEEESA_EEvRSt8multimapIS5_S7_St4lessIS5_ESaIS8_EET_T0_RNS_6vectorISt17reference_wrapperINS_11SegmentNodeINS_8RowGroupEEEELb1ESaISO_EEEmNS_17OrderByColumnTypeENS_17OrderByStatisticsE.exit, label %bb.aw, !llvm.loop !3831

.body80.i:                                        ; preds = %bb.bp, %bb.bo, %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i103, %bb.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i79.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i78.i, %bb.az, %.loopexit.split-lp.loopexit.split-lp.i93, %.loopexit.split-lp.loopexit.i83, %.loopexit10.i, %bb.ay
  %.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.gh, %bb.ay ], [ %i.hi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i103 ], [ %i.gi, %bb.az ], [ %i.hi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i104 ], [ %i.gw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i78.i ], [ %i.hs, %bb.bp ], [ %.pn9.i.i.i101, %bb.bh ], [ %i.gw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i79.i ], [ %.pn9.i.i75.i, %bb.bd ], [ %i.hr, %bb.bo ], [ %lpad.loopexit.i71, %.loopexit10.i ], [ %lpad.loopexit11.i, %.loopexit.split-lp.loopexit.i83 ], [ %lpad.loopexit.split-lp12.i, %.loopexit.split-lp.loopexit.split-lp.i93 ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %common.resume

_ZN6duckdb12_GLOBAL__N_112AddRowGroupsISt16reverse_iteratorISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEEESA_EEvRSt8multimapIS5_S7_St4lessIS5_ESaIS8_EET_T0_RNS_6vectorISt17reference_wrapperINS_11SegmentNodeINS_8RowGroupEEEELb1ESaISO_EEEmNS_17OrderByColumnTypeENS_17OrderByStatisticsE.exit: ; preds = %.loopexit.i75, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12emplace_backIJRS5_EEEvDpOT_.exit.i79
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %_ZN6duckdb12_GLOBAL__N_118InsertAllRowGroupsISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEES8_EEvT_T0_RNS_6vectorISt17reference_wrapperINS_11SegmentNodeINS_8RowGroupEEEELb1ESaISG_EEE.exit

.lr.ph.i107:                                      ; preds = %bb.ap
  %i.jd = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.je = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %.pre.i108 = load ptr, ptr %i.jd, align 8, !tbaa !3024
  br label %bb.bv

bb.bv:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backERKS5_.exit.i110, %.lr.ph.i107
  %.sroa.0124.0 = phi ptr [ %.val.i.in, %.lr.ph.i107 ], [ %i.kr, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backERKS5_.exit.i110 ] ; 2 uses
  %i.jf = phi ptr [ %.pre.i108, %.lr.ph.i107 ], [ %i.kq, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backERKS5_.exit.i110 ] ; 5 uses
  %i.jg = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0124.0) #42
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 96 ; 2 uses
  %i.ji = load ptr, ptr %i.je, align 8, !tbaa !3772
  %.not.i.i109 = icmp eq ptr %i.jf, %i.ji
  br i1 %.not.i.i109, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.jj = load i64, ptr %i.jh, align 8
  store i64 %i.jj, ptr %i.jf, align 8
  %i.jk = load ptr, ptr %i.jd, align 8, !tbaa !3024
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 8 ; 2 uses
  store ptr %i.jl, ptr %i.jd, align 8, !tbaa !3024
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backERKS5_.exit.i110

bb.bx:                                            ; preds = %bb.bv
  %i.jm = load ptr, ptr %5, align 8, !tbaa !3025  ; 7 uses
  %i.jn = ptrtoint ptr %i.jf to i64               ; 2 uses
  %i.jo = ptrtoint ptr %i.jm to i64               ; 3 uses
  %i.jp = sub i64 %i.jn, %i.jo                    ; 3 uses
  %i.jq = icmp eq i64 %i.jp, 9223372036854775800
  br i1 %i.jq, label %bb.by, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i112

bb.by:                                            ; preds = %bb.bx
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.164) #40
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i112: ; preds = %bb.bx
  %i.jr = ashr exact i64 %i.jp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i113 = tail call i64 @llvm.umax.i64(i64 %i.jr, i64 1)
  %i.js = add nsw i64 %.sroa.speculated.i.i.i.i113, %i.jr ; 2 uses
  %i.jt = icmp ult i64 %i.js, %i.jr
  %i.ju = tail call i64 @llvm.umin.i64(i64 %i.js, i64 1152921504606846975)
  %i.jv = select i1 %i.jt, i64 1152921504606846975, i64 %i.ju ; 3 uses
  %.not.i.i.i.i114 = icmp ne i64 %i.jv, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i114)
  %i.jw = shl nuw nsw i64 %i.jv, 3
  %i.jx = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jw) #38 ; 8 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 %i.jp
  %i.jz = load i64, ptr %i.jh, align 8
  store i64 %i.jz, ptr %i.jy, align 8
  %.not10.i.i.i.i.i.i.i115 = icmp eq ptr %i.jm, %i.jf
  br i1 %.not10.i.i.i.i.i.i.i115, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i120, label %.lr.ph.i.i.i.i.i.i.i116.preheader

.lr.ph.i.i.i.i.i.i.i116.preheader:                ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i112
  %i.ka = ptrtoaddr ptr %i.jx to i64
  %21 = sub i64 %i.jn, %i.jo
  %22 = add i64 %21, -8                           ; 2 uses
  %i.kb = lshr i64 %22, 3
  %i.kc = add nuw nsw i64 %i.kb, 1                ; 2 uses
  %min.iters.check448 = icmp ult i64 %22, 24
  %i.kd = sub i64 %i.jo, %i.ka
  %diff.check446 = icmp ugt i64 %i.kd, -32
  %or.cond466 = or i1 %min.iters.check448, %diff.check446
  br i1 %or.cond466, label %.lr.ph.i.i.i.i.i.i.i116.preheader467, label %vector.ph449

vector.ph449:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i116.preheader
  %n.vec451 = and i64 %i.kc, 4611686018427387900  ; 3 uses
  %i.ke = shl i64 %n.vec451, 3                    ; 2 uses
  %i.kf = getelementptr i8, ptr %i.jx, i64 %i.ke  ; 2 uses
  %i.kg = getelementptr i8, ptr %i.jm, i64 %i.ke
  br label %vector.body452

vector.body452:                                   ; preds = %vector.body452, %vector.ph449
  %index453 = phi i64 [ 0, %vector.ph449 ], [ %index.next458, %vector.body452 ] ; 2 uses
  %i.kh = shl i64 %index453, 3                    ; 2 uses
  %next.gep454 = getelementptr i8, ptr %i.jx, i64 %i.kh ; 2 uses
  %next.gep455 = getelementptr i8, ptr %i.jm, i64 %i.kh ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3832)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3835)
  %i.ki = getelementptr i8, ptr %next.gep455, i64 16
  %wide.load456 = load <2 x i64>, ptr %next.gep455, align 8, !alias.scope !3835, !noalias !3832
  %wide.load457 = load <2 x i64>, ptr %i.ki, align 8, !alias.scope !3835, !noalias !3832
  %i.kj = getelementptr i8, ptr %next.gep454, i64 16
  store <2 x i64> %wide.load456, ptr %next.gep454, align 8, !alias.scope !3832, !noalias !3835
  store <2 x i64> %wide.load457, ptr %i.kj, align 8, !alias.scope !3832, !noalias !3835
  %index.next458 = add nuw i64 %index453, 4       ; 2 uses
  %i.kk = icmp eq i64 %index.next458, %n.vec451
  br i1 %i.kk, label %middle.block459, label %vector.body452, !llvm.loop !3837

middle.block459:                                  ; preds = %vector.body452
  %cmp.n460 = icmp eq i64 %i.kc, %n.vec451
  br i1 %cmp.n460, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i120, label %.lr.ph.i.i.i.i.i.i.i116.preheader467

.lr.ph.i.i.i.i.i.i.i116.preheader467:             ; preds = %.lr.ph.i.i.i.i.i.i.i116.preheader, %middle.block459
  %.012.i.i.i.i.i.i.i117.ph = phi ptr [ %i.jx, %.lr.ph.i.i.i.i.i.i.i116.preheader ], [ %i.kf, %middle.block459 ]
  %.0911.i.i.i.i.i.i.i118.ph = phi ptr [ %i.jm, %.lr.ph.i.i.i.i.i.i.i116.preheader ], [ %i.kg, %middle.block459 ]
  br label %.lr.ph.i.i.i.i.i.i.i116

.lr.ph.i.i.i.i.i.i.i116:                          ; preds = %.lr.ph.i.i.i.i.i.i.i116.preheader467, %.lr.ph.i.i.i.i.i.i.i116
  %.012.i.i.i.i.i.i.i117 = phi ptr [ %i.kn, %.lr.ph.i.i.i.i.i.i.i116 ], [ %.012.i.i.i.i.i.i.i117.ph, %.lr.ph.i.i.i.i.i.i.i116.preheader467 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i118 = phi ptr [ %i.km, %.lr.ph.i.i.i.i.i.i.i116 ], [ %.0911.i.i.i.i.i.i.i118.ph, %.lr.ph.i.i.i.i.i.i.i116.preheader467 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3832)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3835)
  %i.kl = load i64, ptr %.0911.i.i.i.i.i.i.i118, align 8, !alias.scope !3835, !noalias !3832
  store i64 %i.kl, ptr %.012.i.i.i.i.i.i.i117, align 8, !alias.scope !3832, !noalias !3835
  %i.km = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i118, i64 8 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i117, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i119 = icmp eq ptr %i.km, %i.jf
  br i1 %.not.i.i.i.i.i.i.i119, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i120, label %.lr.ph.i.i.i.i.i.i.i116, !llvm.loop !3838

_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i120: ; preds = %.lr.ph.i.i.i.i.i.i.i116, %middle.block459, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i112
  %.0.lcssa.i.i.i.i.i.i.i121 = phi ptr [ %i.jx, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i112 ], [ %i.kf, %middle.block459 ], [ %i.kn, %.lr.ph.i.i.i.i.i.i.i116 ]
  %i.ko = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i121, i64 8 ; 2 uses
  %.not.i23.i.i.i122 = icmp eq ptr %i.jm, null
  br i1 %.not.i23.i.i.i122, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i123, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i120
  tail call void @_ZdlPv(ptr noundef nonnull %i.jm) #39
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i123

_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i123: ; preds = %bb.bz, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i120
  store ptr %i.jx, ptr %5, align 8, !tbaa !3025
  store ptr %i.ko, ptr %i.jd, align 8, !tbaa !3024
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %i.jv
  store ptr %i.kp, ptr %i.je, align 8, !tbaa !3772
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backERKS5_.exit.i110

_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backERKS5_.exit.i110: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i123, %bb.bw
  %i.kq = phi ptr [ %i.jl, %bb.bw ], [ %i.ko, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i123 ]
  %i.kr = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0124.0) #42 ; 2 uses
  %.not.i111 = icmp eq ptr %i.kr, %.val29
  br i1 %.not.i111, label %_ZN6duckdb12_GLOBAL__N_118InsertAllRowGroupsISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEES8_EEvT_T0_RNS_6vectorISt17reference_wrapperINS_11SegmentNodeINS_8RowGroupEEEELb1ESaISG_EEE.exit, label %bb.bv, !llvm.loop !3839

_ZN6duckdb12_GLOBAL__N_118InsertAllRowGroupsISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEES8_EEvT_T0_RNS_6vectorISt17reference_wrapperINS_11SegmentNodeINS_8RowGroupEEEELb1ESaISG_EEE.exit: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backERKS5_.exit.i, %_ZNSt6vectorISt17reference_wrapperIN6duckdb11SegmentNodeINS1_8RowGroupEEEESaIS5_EE9push_backERKS5_.exit.i110, %_ZN6duckdb12_GLOBAL__N_125SkipOffsetPrunedRowGroupsISt16reverse_iteratorISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEEESA_EET_SB_T0_m.exit, %_ZN6duckdb12_GLOBAL__N_125SkipOffsetPrunedRowGroupsISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEES8_EET_S9_T0_m.exit, %_ZN6duckdb12_GLOBAL__N_112AddRowGroupsISt16reverse_iteratorISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEEESA_EEvRSt8multimapIS5_S7_St4lessIS5_ESaIS8_EET_T0_RNS_6vectorISt17reference_wrapperINS_11SegmentNodeINS_8RowGroupEEEELb1ESaISO_EEEmNS_17OrderByColumnTypeENS_17OrderByStatisticsE.exit, %_ZN6duckdb12_GLOBAL__N_112AddRowGroupsISt17_Rb_tree_iteratorISt4pairIKNS_5ValueENS0_24RowGroupSegmentNodeEntryEEES8_EEvRSt8multimapIS4_S6_St4lessIS4_ESaIS7_EET_T0_RNS_6vectorISt17reference_wrapperINS_11SegmentNodeINS_8RowGroupEEEELb1ESaISM_EEEmNS_17OrderByColumnTypeENS_17OrderByStatisticsE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6duckdb17RowVersionManagerC2ERNS_13BufferManagerE(ptr noundef nonnull align 8 dereferenceable(336) initializes((0, 40)) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = invoke noundef nonnull align 8 dereferenceable(144) ptr %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_ZN6duckdb18FixedSizeAllocatorC1EmRNS_12BlockManagerENS_9MemoryTagE(ptr noundef nonnull align 8 dereferenceable(240) %i.e, i64 noundef 16384, ptr noundef nonnull align 8 dereferenceable(144) %i.d, i8 noundef zeroext 0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i64 -1, ptr %i.g, align 8, !tbaa !980
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  ret void

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #41
  unreachable
}

declare void @_ZN6duckdb18FixedSizeAllocatorC1EmRNS_12BlockManagerENS_9MemoryTagE(ptr noundef nonnull align 8 dereferenceable(240), i64 noundef, ptr noundef nonnull align 8 dereferenceable(144), i8 noundef zeroext) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_9ChunkInfoESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.17", align 1 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2581
  %i.e = load ptr, ptr %0, align 8, !tbaa !2584   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !24
  store i64 %i.i, ptr %i.b, align 8, !tbaa !24
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS_10unique_ptrINS_9ChunkInfoESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit, label %bb.b, !prof !432

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.183, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !35     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #37
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorINS_10unique_ptrINS_9ChunkInfoESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_9ChunkInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
end_hunk_9
begin_hunk_10_@_ZN6duckdb17InternalExceptionC2IJRmS2_S2_S2_S2_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS8_DpOT_:bb.a

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !927

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %8, align 8, !tbaa !923, !noalias !3840
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb9Exception16ConstructMessageIJmmmmmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #39
  br label %_ZN6duckdb9Exception16ConstructMessageIJmmmmmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37, !noalias !3840
  br label %common.resume

_ZN6duckdb9Exception16ConstructMessageIJmmmmmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37, !noalias !3840
  invoke void @_ZN6duckdb17InternalExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJmmmmmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit
  %i.k = load ptr, ptr %9, align 8, !tbaa !35     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.k) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  ret void

bb.f:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJmmmmmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %9, align 8, !tbaa !35     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.2458", align 8  ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37, !noalias !3843
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !noalias !3843
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveImJRKmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %4, align 8, !tbaa !923, !noalias !3843 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !926, !noalias !3843 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.e) #39
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !927

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %4, align 8, !tbaa !923, !noalias !3843
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb9Exception16ConstructMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #39
  br label %_ZN6duckdb9Exception16ConstructMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37, !noalias !3843
  br label %common.resume

_ZN6duckdb9Exception16ConstructMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37, !noalias !3843
  invoke void @_ZN6duckdb17InternalExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit
  %i.k = load ptr, ptr %5, align 8, !tbaa !35     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.k) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  ret void

bb.f:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %5, align 8, !tbaa !35     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb17RowVersionManager14FillVectorInfoEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(336) %0, i64 noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2581 ; 4 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !2584 ; 11 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = ashr exact i64 %i.g, 3                   ; 2 uses
  %i.i = icmp ult i64 %1, %i.h
  br i1 %i.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = add i64 %1, 1                            ; 4 uses
  %i.k = icmp ugt i64 %i.j, 1152921504606846975
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.205) #40
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !3846 ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.f
  %i.p = ashr exact i64 %i.o, 3
  %i.q = icmp ult i64 %i.p, %i.j
  br i1 %i.q, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.d
  %i.r = shl nuw nsw i64 %i.j, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #38 ; 10 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i
  %2 = sub i64 %i.e, %i.f
  %3 = add i64 %2, -8                             ; 2 uses
  %i.t = lshr i64 %3, 3
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %3, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader53, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.v = add i64 %i.e, -8
  %i.w = sub i64 %i.v, %i.f
  %i.x = and i64 %i.w, -8
  %i.y = add i64 %i.x, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.s, i64 %i.y
  %scevgep24 = getelementptr i8, ptr %i.d, i64 %i.y
  %bound0 = icmp ult ptr %i.s, %scevgep24
  %bound1 = icmp ult ptr %i.d, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader53, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.u, 4611686018427387900      ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %i.aa = getelementptr i8, ptr %i.s, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.d, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ac ; 2 uses
  %next.gep25 = getelementptr i8, ptr %i.d, i64 %i.ac ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3847)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3850)
  %i.ad = getelementptr i8, ptr %next.gep25, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep25, align 8, !tbaa !2585, !alias.scope !3852, !noalias !3847
  %wide.load26 = load <2 x i64>, ptr %i.ad, align 8, !tbaa !2585, !alias.scope !3852, !noalias !3847
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !2585, !alias.scope !3855, !noalias !3852
  store <2 x i64> %wide.load26, ptr %i.ae, align 8, !tbaa !2585, !alias.scope !3855, !noalias !3852
  %i.af = getelementptr i8, ptr %next.gep25, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep25, align 8, !tbaa !2585, !alias.scope !3852, !noalias !3847
  store <2 x ptr> splat (ptr null), ptr %i.af, align 8, !tbaa !2585, !alias.scope !3852, !noalias !3847
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !3857

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader53

.lr.ph.i.i.i.i.i.preheader53:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader53, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader53 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader53 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3847)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3850)
  %i.ah = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !2585, !alias.scope !3850, !noalias !3847
  store i64 %i.ah, ptr %.012.i.i.i.i.i, align 8, !tbaa !2585, !alias.scope !3847, !noalias !3850
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !2585, !alias.scope !3850, !noalias !3847
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ai, %i.c
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3858

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.d, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #39
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %bb.e, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.s, ptr %i.a, align 8, !tbaa !2584
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.g ; 2 uses
  store ptr %i.ak, ptr %i.b, align 8, !tbaa !2581
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.j ; 2 uses
  store ptr %i.al, ptr %i.l, align 8, !tbaa !3846
  %.pre12 = ashr exact i64 %i.g, 3
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit: ; preds = %bb.d, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i
  %.pre-phi13 = phi i64 [ %i.h, %bb.d ], [ %.pre12, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i ] ; 2 uses
  %i.am = phi ptr [ %i.m, %bb.d ], [ %i.al, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i ]
  %i.an = phi ptr [ %i.d, %bb.d ], [ %i.s, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i ]
  %i.ao = phi ptr [ %i.c, %bb.d ], [ %i.ak, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i ]
  %.not6 = icmp ugt i64 %.pre-phi13, %1
  br i1 %.not6, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJEEEvDpOT_.exit
  %i.ap = phi ptr [ %i.bx, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJEEEvDpOT_.exit ], [ %i.an, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit ] ; 11 uses
  %i.aq = phi ptr [ %i.by, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJEEEvDpOT_.exit ], [ %i.am, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit ] ; 5 uses
  %i.ar = phi ptr [ %i.bz, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJEEEvDpOT_.exit ], [ %i.ao, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit ] ; 3 uses
  %.07 = phi i64 [ %i.ca, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJEEEvDpOT_.exit ], [ %.pre-phi13, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit ]
  %.not.i = icmp eq ptr %i.ar, %i.aq
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  store ptr null, ptr %i.ar, align 8, !tbaa !16
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  store ptr %i.as, ptr %i.b, align 8, !tbaa !2581
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJEEEvDpOT_.exit

bb.g:                                             ; preds = %.lr.ph
  %i.at = ptrtoint ptr %i.aq to i64               ; 3 uses
  %i.au = ptrtoint ptr %i.ap to i64               ; 3 uses
  %i.av = sub i64 %i.at, %i.au                    ; 3 uses
  %i.aw = icmp eq i64 %i.av, 9223372036854775800
  br i1 %i.aw, label %bb.h, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.164) #40
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ax = ashr exact i64 %i.av, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 1)
  %i.ay = add nsw i64 %.sroa.speculated.i.i.i, %i.ax ; 2 uses
  %i.az = icmp ult i64 %i.ay, %i.ax
  %i.ba = tail call i64 @llvm.umin.i64(i64 %i.ay, i64 1152921504606846975)
  %i.bb = select i1 %i.az, i64 1152921504606846975, i64 %i.ba ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bc = shl nuw nsw i64 %i.bb, 3
  %i.bd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #38 ; 11 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.av
  store ptr null, ptr %i.be, align 8, !tbaa !16
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ap, %i.aq
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %4 = sub i64 %i.at, %i.au
  %5 = add i64 %4, -8                             ; 2 uses
  %i.bf = lshr i64 %5, 3
  %i.bg = add nuw nsw i64 %i.bf, 1                ; 2 uses
  %min.iters.check37 = icmp ult i64 %5, 56
  br i1 %min.iters.check37, label %.lr.ph.i.i.i.i.i.i.preheader52, label %vector.memcheck28

vector.memcheck28:                                ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %scevgep29 = getelementptr i8, ptr %i.bd, i64 8
  %i.bh = add i64 %i.at, -8
  %i.bi = sub i64 %i.bh, %i.au
  %i.bj = and i64 %i.bi, -8                       ; 2 uses
  %scevgep30 = getelementptr i8, ptr %scevgep29, i64 %i.bj
  %scevgep31 = getelementptr i8, ptr %i.ap, i64 8
  %scevgep32 = getelementptr i8, ptr %scevgep31, i64 %i.bj
  %bound033 = icmp ult ptr %i.bd, %scevgep32
  %bound134 = icmp ult ptr %i.ap, %scevgep30
  %found.conflict35 = and i1 %bound033, %bound134
  br i1 %found.conflict35, label %.lr.ph.i.i.i.i.i.i.preheader52, label %vector.ph38

vector.ph38:                                      ; preds = %vector.memcheck28
  %n.vec40 = and i64 %i.bg, 4611686018427387900   ; 3 uses
  %i.bk = shl i64 %n.vec40, 3                     ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bd, i64 %i.bk  ; 2 uses
  %i.bm = getelementptr i8, ptr %i.ap, i64 %i.bk
  br label %vector.body41

vector.body41:                                    ; preds = %vector.body41, %vector.ph38
  %index42 = phi i64 [ 0, %vector.ph38 ], [ %index.next47, %vector.body41 ] ; 2 uses
  %i.bn = shl i64 %index42, 3                     ; 2 uses
  %next.gep43 = getelementptr i8, ptr %i.bd, i64 %i.bn ; 2 uses
  %next.gep44 = getelementptr i8, ptr %i.ap, i64 %i.bn ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3859)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3862)
  %i.bo = getelementptr i8, ptr %next.gep44, i64 16
  %wide.load45 = load <2 x i64>, ptr %next.gep44, align 8, !tbaa !2585, !alias.scope !3864, !noalias !3859
  %wide.load46 = load <2 x i64>, ptr %i.bo, align 8, !tbaa !2585, !alias.scope !3864, !noalias !3859
  %i.bp = getelementptr i8, ptr %next.gep43, i64 16
  store <2 x i64> %wide.load45, ptr %next.gep43, align 8, !tbaa !2585, !alias.scope !3867, !noalias !3864
  store <2 x i64> %wide.load46, ptr %i.bp, align 8, !tbaa !2585, !alias.scope !3867, !noalias !3864
  %i.bq = getelementptr i8, ptr %next.gep44, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep44, align 8, !tbaa !2585, !alias.scope !3864, !noalias !3859
  store <2 x ptr> splat (ptr null), ptr %i.bq, align 8, !tbaa !2585, !alias.scope !3864, !noalias !3859
  %index.next47 = add nuw i64 %index42, 4         ; 2 uses
  %i.br = icmp eq i64 %index.next47, %n.vec40
  br i1 %i.br, label %middle.block48, label %vector.body41, !llvm.loop !3869

middle.block48:                                   ; preds = %vector.body41
  %cmp.n49 = icmp eq i64 %i.bg, %n.vec40
  br i1 %cmp.n49, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i, label %.lr.ph.i.i.i.i.i.i.preheader52

.lr.ph.i.i.i.i.i.i.preheader52:                   ; preds = %vector.memcheck28, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block48
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bd, %vector.memcheck28 ], [ %i.bd, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bl, %middle.block48 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.ap, %vector.memcheck28 ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bm, %middle.block48 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader52, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader52 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader52 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3859)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3862)
  %i.bs = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !2585, !alias.scope !3862, !noalias !3859
  store i64 %i.bs, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !2585, !alias.scope !3859, !noalias !3862
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !2585, !alias.scope !3862, !noalias !3859
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bt, %i.aq
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3870

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block48, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bd, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bl, %middle.block48 ], [ %i.bu, %.lr.ph.i.i.i.i.i.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i22.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i22.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ap) #39
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i
  store ptr %i.bd, ptr %i.a, align 8, !tbaa !2584
  store ptr %i.bv, ptr %i.b, align 8, !tbaa !2581
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bb ; 2 uses
  store ptr %i.bw, ptr %i.l, align 8, !tbaa !3846
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJEEEvDpOT_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJEEEvDpOT_.exit: ; preds = %bb.f, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i
  %i.bx = phi ptr [ %i.ap, %bb.f ], [ %i.bd, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ]
  %i.by = phi ptr [ %i.aq, %bb.f ], [ %i.bw, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ]
  %i.bz = phi ptr [ %i.as, %bb.f ], [ %i.bv, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ]
  %i.ca = add i64 %.07, 1                         ; 2 uses
  %.not = icmp ugt i64 %i.ca, %1
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !3871

.loopexit:                                        ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJEEEvDpOT_.exit, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9ChunkInfoESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb9ChunkInfo4CastINS_15ChunkVectorInfoEEERT_v(ptr noundef nonnull align 8 dereferenceable(17) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.17", align 1 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !7
  %.not = icmp eq i8 %i.b, 1
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.219, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !35     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.f) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #37
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret ptr %0

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(17) ptr @_ZNK6duckdb10unique_ptrINS_9ChunkInfoESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.17", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !2585   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_9ChunkInfoESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !99

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.157, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !35     ; 2 uses
end_hunk_10
begin_hunk_11_@_ZN6duckdb16StructColumnData10CheckpointERKNS_8RowGroupERNS_20ColumnCheckpointInfoERKNS_14BaseStatisticsE:bb.a
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1287
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !1289 ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 3                   ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %i.c, %i.r
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19PartialBlockManagerESt14default_deleteIS2_ELb1EEESaIS5_EE2atEm.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.207, i64 noundef %i.c, i64 noundef %i.r) #40
  unreachable

_ZNSt6vectorIN6duckdb10unique_ptrINS0_19PartialBlockManagerESt14default_deleteIS2_ELb1EEESaIS5_EE2atEm.exit.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.c
  %i.t = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb10unique_ptrINS_19PartialBlockManagerESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
  br label %_ZN6duckdb20ColumnCheckpointInfo22GetPartialBlockManagerEv.exit

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !1290, !nonnull !70, !align !145
  br label %_ZN6duckdb20ColumnCheckpointInfo22GetPartialBlockManagerEv.exit

_ZN6duckdb20ColumnCheckpointInfo22GetPartialBlockManagerEv.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19PartialBlockManagerESt14default_deleteIS2_ELb1EEESaIS5_EE2atEm.exit.i.i, %bb.e
  %.0.i.i = phi ptr [ %i.u, %bb.e ], [ %i.t, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19PartialBlockManagerESt14default_deleteIS2_ELb1EEESaIS5_EE2atEm.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3975)
  %i.v = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #38, !noalias !3975, !inline_history !3974 ; 3 uses
  invoke void @_ZN6duckdb27StructColumnCheckpointStateC2ERKNS_8RowGroupERNS_10ColumnDataERNS_19PartialBlockManagerE(ptr noundef nonnull align 8 dereferenceable(120) %i.v, ptr noundef nonnull align 8 dereferenceable(218) %2, ptr noundef nonnull align 8 dereferenceable(336) %1, ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
          to label %_ZN6duckdb9make_uniqINS_27StructColumnCheckpointStateEJRKNS_8RowGroupERNS_16StructColumnDataERNS_19PartialBlockManagerEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.f, !noalias !3975, !inline_history !3974

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN6duckdb27StructColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit44, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %.pn24.pn.pn.pn, %_ZNSt10unique_ptrIN6duckdb27StructColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit44 ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %_ZN6duckdb20ColumnCheckpointInfo22GetPartialBlockManagerEv.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.v) #39, !noalias !3975, !inline_history !3974
  br label %common.resume

_ZN6duckdb9make_uniqINS_27StructColumnCheckpointStateEJRKNS_8RowGroupERNS_16StructColumnDataERNS_19PartialBlockManagerEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %_ZN6duckdb20ColumnCheckpointInfo22GetPartialBlockManagerEv.exit
  store ptr %i.v, ptr %5, align 8, !tbaa !3978, !alias.scope !3975
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.y = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_18ValidityColumnDataELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x)
          to label %bb.g unwind label %bb.j       ; 2 uses

bb.g:                                             ; preds = %_ZN6duckdb9make_uniqINS_27StructColumnCheckpointStateEJRKNS_8RowGroupERNS_16StructColumnDataERNS_19PartialBlockManagerEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 224
  %i.ab = load ptr, ptr %i.aa, align 8
  invoke void %i.ab(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.941") align 8 %6, ptr noundef nonnull align 8 dereferenceable(296) %i.y, ptr noundef nonnull align 8 dereferenceable(218) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ac = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_27StructColumnCheckpointStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 88 ; 2 uses
  %i.ae = load ptr, ptr %6, align 8, !tbaa !963
  store ptr null, ptr %6, align 8, !tbaa !963
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !963 ; 3 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !963
  %.not.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_21ColumnCheckpointStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_21ColumnCheckpointStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.i
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !12
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.af) #37, !inline_history !2031
  %.pr = load ptr, ptr %6, align 8, !tbaa !963    ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb21ColumnCheckpointStateEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb21ColumnCheckpointStateEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_21ColumnCheckpointStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.aj = load ptr, ptr %.pr, align 8, !tbaa !12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %.pr) #37, !inline_history !1295
  br label %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.i, %_ZN6duckdb10unique_ptrINS_21ColumnCheckpointStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb21ColumnCheckpointStateEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !2359
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !2362
  %.not = icmp eq ptr %i.ao, %i.ap
  br i1 %.not, label %_ZNSt10unique_ptrIN6duckdb27StructColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit, label %.lr.ph

_ZNSt10unique_ptrIN6duckdb27StructColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit38, %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit
  %i.aq = load ptr, ptr %5, align 8, !tbaa !3978
  store ptr %i.aq, ptr %0, align 8, !tbaa !2019
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  ret void

bb.j:                                             ; preds = %bb.g, %_ZN6duckdb9make_uniqINS_27StructColumnCheckpointStateEJRKNS_8RowGroupERNS_16StructColumnDataERNS_19PartialBlockManagerEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit32

bb.k:                                             ; preds = %bb.h
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %6, align 8, !tbaa !963   ; 3 uses
  %.not.i30 = icmp eq ptr %i.at, null
  br i1 %.not.i30, label %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit32, label %_ZNKSt14default_deleteIN6duckdb21ColumnCheckpointStateEEclEPS1_.exit.i31

_ZNKSt14default_deleteIN6duckdb21ColumnCheckpointStateEEclEPS1_.exit.i31: ; preds = %bb.k
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !12
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.at) #37, !inline_history !1295
  br label %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit32

_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit32: ; preds = %_ZNKSt14default_deleteIN6duckdb21ColumnCheckpointStateEEclEPS1_.exit.i31, %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.j ], [ %i.as, %bb.k ], [ %i.as, %_ZNKSt14default_deleteIN6duckdb21ColumnCheckpointStateEEclEPS1_.exit.i31 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.x

.lr.ph:                                           ; preds = %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit, %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit38
  %.02248 = phi i64 [ %i.cu, %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit38 ], [ 0, %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %i.ax = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_10shared_ptrINS_10ColumnDataELb1EEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 noundef %.02248)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %.lr.ph
  %i.ay = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb11StructStats13GetChildStatsERKNS_14BaseStatisticsEm(ptr noundef nonnull align 8 dereferenceable(128) %4, i64 noundef %.02248)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.az = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_27StructColumnCheckpointStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.n unwind label %bb.u       ; 3 uses

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.bb = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_10ColumnDataELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ax)
          to label %bb.o unwind label %bb.v       ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !12
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 224
  %i.be = load ptr, ptr %i.bd, align 8
  invoke void %i.be(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.941") align 8 %7, ptr noundef nonnull align 8 dereferenceable(296) %i.bb, ptr noundef nonnull align 8 dereferenceable(218) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(128) %i.ay)
          to label %bb.p unwind label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 104 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !2704 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 112 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !2705
  %.not.i.i33 = icmp eq ptr %i.bg, %i.bi
  br i1 %.not.i.i33, label %bb.q, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.p
  %i.bj = load i64, ptr %7, align 8, !tbaa !963
  store i64 %i.bj, ptr %i.bg, align 8, !tbaa !963
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bk, ptr %i.bf, align 8, !tbaa !2704
  br label %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit38

bb.q:                                             ; preds = %bb.p
  %i.bl = load ptr, ptr %i.ba, align 8, !tbaa !2703 ; 10 uses
  %i.bm = ptrtoint ptr %i.bg to i64               ; 3 uses
  %i.bn = ptrtoint ptr %i.bl to i64               ; 3 uses
  %i.bo = sub i64 %i.bm, %i.bn                    ; 3 uses
  %i.bp = icmp eq i64 %i.bo, 9223372036854775800
  br i1 %i.bp, label %bb.r, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.164) #40
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.r
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.q
  %i.bq = ashr exact i64 %i.bo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bq, i64 1)
  %i.br = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bq ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bq
  %i.bt = call i64 @llvm.umin.i64(i64 %i.br, i64 1152921504606846975)
  %i.bu = select i1 %i.bs, i64 1152921504606846975, i64 %i.bt ; 3 uses
  %.not.i.i.i.i34 = icmp ne i64 %i.bu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i34)
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #38
          to label %.noexc35 unwind label %.loopexit ; 10 uses

.noexc35:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bo
  %i.by = load i64, ptr %7, align 8, !tbaa !963
  store i64 %i.by, ptr %i.bx, align 8, !tbaa !963
  store ptr null, ptr %7, align 8, !tbaa !963
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.bl, %i.bg
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc35
  %8 = sub i64 %i.bm, %i.bn
  %9 = add i64 %8, -8                             ; 2 uses
  %i.bz = lshr i64 %9, 3
  %i.ca = add nuw nsw i64 %i.bz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %9, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader65, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.bw, i64 8
  %i.cb = add i64 %i.bm, -8
  %i.cc = sub i64 %i.cb, %i.bn
  %i.cd = and i64 %i.cc, -8                       ; 2 uses
  %scevgep59 = getelementptr i8, ptr %scevgep, i64 %i.cd
  %scevgep60 = getelementptr i8, ptr %i.bl, i64 8
  %scevgep61 = getelementptr i8, ptr %scevgep60, i64 %i.cd
  %bound0 = icmp ult ptr %i.bw, %scevgep61
  %bound1 = icmp ult ptr %i.bl, %scevgep59
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader65, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ca, 4611686018427387900     ; 3 uses
  %i.ce = shl i64 %n.vec, 3                       ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bw, i64 %i.ce  ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bl, i64 %i.ce
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ch = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bw, i64 %i.ch ; 2 uses
  %next.gep62 = getelementptr i8, ptr %i.bl, i64 %i.ch ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3980)
  call void @llvm.experimental.noalias.scope.decl(metadata !3983)
  %i.ci = getelementptr i8, ptr %next.gep62, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep62, align 8, !tbaa !963, !alias.scope !3985, !noalias !3980
  %wide.load63 = load <2 x i64>, ptr %i.ci, align 8, !tbaa !963, !alias.scope !3985, !noalias !3980
  %i.cj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !963, !alias.scope !3988, !noalias !3985
  store <2 x i64> %wide.load63, ptr %i.cj, align 8, !tbaa !963, !alias.scope !3988, !noalias !3985
  %i.ck = getelementptr i8, ptr %next.gep62, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep62, align 8, !tbaa !963, !alias.scope !3985, !noalias !3980
  store <2 x ptr> splat (ptr null), ptr %i.ck, align 8, !tbaa !963, !alias.scope !3985, !noalias !3980
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !3990

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ca, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader65

.lr.ph.i.i.i.i.i.i.i.preheader65:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bw, %vector.memcheck ], [ %i.bw, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cf, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.bl, %vector.memcheck ], [ %i.bl, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cg, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader65, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader65 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader65 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3980)
  call void @llvm.experimental.noalias.scope.decl(metadata !3983)
  %i.cm = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !963, !alias.scope !3983, !noalias !3980
  store i64 %i.cm, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !963, !alias.scope !3980, !noalias !3983
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !963, !alias.scope !3983, !noalias !3980
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cn, %i.bg
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3991

_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc35
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bw, %.noexc35 ], [ %i.cf, %middle.block ], [ %i.co, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bl) #39
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.s
  store ptr %i.bw, ptr %i.ba, align 8, !tbaa !2703
  store ptr %i.cp, ptr %i.bf, align 8, !tbaa !2704
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu
  store ptr %i.cq, ptr %i.bh, align 8, !tbaa !2705
  %.pr46 = load ptr, ptr %7, align 8, !tbaa !963  ; 3 uses
  %.not.i36 = icmp eq ptr %.pr46, null
  br i1 %.not.i36, label %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit38, label %_ZNKSt14default_deleteIN6duckdb21ColumnCheckpointStateEEclEPS1_.exit.i37

_ZNKSt14default_deleteIN6duckdb21ColumnCheckpointStateEEclEPS1_.exit.i37: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.cr = load ptr, ptr %.pr46, align 8, !tbaa !12
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %.pr46) #37, !inline_history !1295
  br label %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit38

_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit38: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb21ColumnCheckpointStateEEclEPS1_.exit.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  %i.cu = add nuw i64 %.02248, 1                  ; 2 uses
  %i.cv = load ptr, ptr %i.an, align 8, !tbaa !2359
  %i.cw = load ptr, ptr %i.am, align 8, !tbaa !2362
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = ashr exact i64 %i.cz, 4
  %i.db = icmp ult i64 %i.cu, %i.da
  br i1 %i.db, label %.lr.ph, label %_ZNSt10unique_ptrIN6duckdb27StructColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit, !llvm.loop !3992

bb.t:                                             ; preds = %.lr.ph
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.u:                                             ; preds = %bb.m, %bb.l
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.v:                                             ; preds = %bb.o, %bb.n
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit41

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.loopexit.split-lp:                               ; preds = %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.w:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.df = load ptr, ptr %7, align 8, !tbaa !963   ; 3 uses
  %.not.i39 = icmp eq ptr %i.df, null
  br i1 %.not.i39, label %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit41, label %_ZNKSt14default_deleteIN6duckdb21ColumnCheckpointStateEEclEPS1_.exit.i40

_ZNKSt14default_deleteIN6duckdb21ColumnCheckpointStateEEclEPS1_.exit.i40: ; preds = %bb.w
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !12
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.df) #37, !inline_history !1295
  br label %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit41

_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit41: ; preds = %_ZNKSt14default_deleteIN6duckdb21ColumnCheckpointStateEEclEPS1_.exit.i40, %bb.w, %bb.v
  %.pn24 = phi { ptr, i32 } [ %i.de, %bb.v ], [ %lpad.phi, %bb.w ], [ %lpad.phi, %_ZNKSt14default_deleteIN6duckdb21ColumnCheckpointStateEEclEPS1_.exit.i40 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.x

bb.x:                                             ; preds = %bb.t, %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit41, %bb.u, %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit32
  %.pn24.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit32 ], [ %i.dc, %bb.t ], [ %.pn24, %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit41 ], [ %i.dd, %bb.u ]
  %i.dj = load ptr, ptr %5, align 8, !tbaa !3978  ; 3 uses
  %.not.i42 = icmp eq ptr %i.dj, null
  br i1 %.not.i42, label %_ZNSt10unique_ptrIN6duckdb27StructColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit44, label %_ZNKSt14default_deleteIN6duckdb27StructColumnCheckpointStateEEclEPS1_.exit.i43

_ZNKSt14default_deleteIN6duckdb27StructColumnCheckpointStateEEclEPS1_.exit.i43: ; preds = %bb.x
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !12
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(120) %i.dj) #37, !inline_history !3993
  br label %_ZNSt10unique_ptrIN6duckdb27StructColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit44

_ZNSt10unique_ptrIN6duckdb27StructColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit44: ; preds = %bb.x, %_ZNKSt14default_deleteIN6duckdb27StructColumnCheckpointStateEEclEPS1_.exit.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_27StructColumnCheckpointStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.17", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !3978   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_27StructColumnCheckpointStateESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !99

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.157, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
end_hunk_11
begin_hunk_12_@_ZN6duckdb17VariantColumnData10CheckpointERKNS_8RowGroupERNS_20ColumnCheckpointInfoERKNS_14BaseStatisticsE:bb.a
  %i.bw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.bw, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bx = load i32, ptr %i.bv, align 4, !tbaa !3
  %i.by = add nsw i32 %i.bx, 1
  store i32 %i.by, ptr %i.bv, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i

bb.x:                                             ; preds = %bb.v
  %i.bz = atomicrmw volatile add ptr %i.bv, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i: ; preds = %bb.x, %bb.w, %bb.u
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !93 ; 8 uses
  store <2 x ptr> %i.bu, ptr %i.bq, align 8, !tbaa !309
  %.not.i.i.i.i.i77 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i.i77, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, label %bb.y

bb.y:                                             ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 4 uses
  %i.cd = load atomic i64, ptr %i.cc acquire, align 8 ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 4294967297
  %i.cf = trunc i64 %i.cd to i32                  ; 2 uses
  br i1 %i.ce, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.cc, align 8, !tbaa !94
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  store i32 0, ptr %i.cg, align 4, !tbaa !96
  %i.ch = load ptr, ptr %i.cb, align 8, !tbaa !12
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #37, !inline_history !3680
  %i.ck = load ptr, ptr %i.cb, align 8, !tbaa !12
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #37, !inline_history !3680
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

bb.aa:                                            ; preds = %bb.y
  %i.cn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.cn, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.co = add nsw i32 %i.cf, -1
  store i32 %i.co, ptr %i.cc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.cp = atomicrmw volatile add ptr %i.cc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.cf, %bb.ab ], [ %i.cp, %bb.ac ]
  %i.cq = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.cq, label %bb.ad, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, !prof !99

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #37
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

bb.ae:                                            ; preds = %bb.q
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.af:                                            ; preds = %bb.as, %.thread
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.ag:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  invoke void @_ZN6duckdb17VariantColumnData15GetShreddedTypeEv(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %8, ptr noundef nonnull align 8 dereferenceable(336) %1)
          to label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i unwind label %bb.ah

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i: ; preds = %bb.ag
  %i.ct = load i8, ptr %8, align 8, !tbaa !689
  store i8 %i.ct, ptr %7, align 8, !tbaa !689
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 1
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !438
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 1
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !438
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.cz = load <2 x ptr>, ptr %i.cy, align 8, !tbaa !309
  %i.da = load <2 x ptr>, ptr %i.cx, align 8, !tbaa !309
  store <2 x ptr> %i.cz, ptr %i.cx, align 8, !tbaa !309
  store <2 x ptr> %i.da, ptr %i.cy, align 8, !tbaa !309
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

bb.ah:                                            ; preds = %bb.ag
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.df

_ZN6duckdb11LogicalTypeaSERKS0_.exit:             ; preds = %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.z, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i, %bb.t, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i
  %i.dc = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb10StructType13GetChildTypesB5cxx11ERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.aj unwind label %bb.ai     ; 2 uses

bb.ai:                                            ; preds = %_ZN6duckdb11LogicalTypeaSERKS0_.exit
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.aj:                                            ; preds = %_ZN6duckdb11LogicalTypeaSERKS0_.exit
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !1458
  %i.dg = load ptr, ptr %i.dc, align 8, !tbaa !1461
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di
  %.not51 = icmp eq i64 %i.dj, 112
  br i1 %.not51, label %bb.bg, label %.thread

.thread:                                          ; preds = %bb.r, %bb.aj
  %i.dk = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_28VariantColumnCheckpointStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.ak unwind label %bb.af     ; 3 uses

bb.ak:                                            ; preds = %.thread
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 120 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 3 uses
  %i.dn = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_10shared_ptrINS_10ColumnDataELb1EEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dm, i64 noundef 0)
          to label %bb.al unwind label %bb.bb

bb.al:                                            ; preds = %bb.ak
  %i.do = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_10ColumnDataELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dn)
          to label %bb.am unwind label %bb.bb     ; 2 uses

bb.am:                                            ; preds = %bb.al
  %i.dp = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb12VariantStats18GetUnshreddedStatsERKNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.an unwind label %bb.bb

bb.an:                                            ; preds = %bb.am
  %i.dq = load ptr, ptr %i.do, align 8, !tbaa !12
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 224
  %i.ds = load ptr, ptr %i.dr, align 8
  invoke void %i.ds(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.941") align 8 %9, ptr noundef nonnull align 8 dereferenceable(296) %i.do, ptr noundef nonnull align 8 dereferenceable(218) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(128) %i.dp)
          to label %bb.ao unwind label %bb.bb

bb.ao:                                            ; preds = %bb.an
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dk, i64 128 ; 3 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !2704 ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dk, i64 136 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !2705
  %.not.i.i80 = icmp eq ptr %i.du, %i.dw
  br i1 %.not.i.i80, label %bb.ap, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.ao
  %i.dx = load i64, ptr %9, align 8, !tbaa !963
  store i64 %i.dx, ptr %i.du, align 8, !tbaa !963
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store ptr %i.dy, ptr %i.dt, align 8, !tbaa !2704
  br label %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit86

bb.ap:                                            ; preds = %bb.ao
  %i.dz = load ptr, ptr %i.dl, align 8, !tbaa !2703 ; 10 uses
  %i.ea = ptrtoint ptr %i.du to i64               ; 3 uses
  %i.eb = ptrtoint ptr %i.dz to i64               ; 3 uses
  %i.ec = sub i64 %i.ea, %i.eb                    ; 3 uses
  %i.ed = icmp eq i64 %i.ec, 9223372036854775800
  br i1 %i.ed, label %bb.aq, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.164) #40
          to label %.noexc unwind label %bb.bc

.noexc:                                           ; preds = %bb.aq
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ap
  %i.ee = ashr exact i64 %i.ec, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ee, i64 1)
  %i.ef = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ee ; 2 uses
  %i.eg = icmp ult i64 %i.ef, %i.ee
  %i.eh = call i64 @llvm.umin.i64(i64 %i.ef, i64 1152921504606846975)
  %i.ei = select i1 %i.eg, i64 1152921504606846975, i64 %i.eh ; 3 uses
  %.not.i.i.i.i81 = icmp ne i64 %i.ei, 0
  call void @llvm.assume(i1 %.not.i.i.i.i81)
  %i.ej = shl nuw nsw i64 %i.ei, 3
  %i.ek = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ej) #38
          to label %.noexc83 unwind label %bb.bc  ; 10 uses

.noexc83:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ec
  %i.em = load i64, ptr %9, align 8, !tbaa !963
  store i64 %i.em, ptr %i.el, align 8, !tbaa !963
  store ptr null, ptr %9, align 8, !tbaa !963
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.dz, %i.du
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc83
  %16 = sub i64 %i.ea, %i.eb
  %17 = add i64 %16, -8                           ; 2 uses
  %i.en = lshr i64 %17, 3
  %i.eo = add nuw nsw i64 %i.en, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %17, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader304, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ep = add i64 %i.ea, -8
  %i.eq = sub i64 %i.ep, %i.eb
  %i.er = and i64 %i.eq, -8
  %i.es = add i64 %i.er, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ek, i64 %i.es
  %scevgep229 = getelementptr i8, ptr %i.dz, i64 %i.es
  %bound0 = icmp ult ptr %i.ek, %scevgep229
  %bound1 = icmp ult ptr %i.dz, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader304, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.eo, 4611686018427387900     ; 3 uses
  %i.et = shl i64 %n.vec, 3                       ; 2 uses
  %i.eu = getelementptr i8, ptr %i.ek, i64 %i.et  ; 2 uses
  %i.ev = getelementptr i8, ptr %i.dz, i64 %i.et
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ew = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ek, i64 %i.ew ; 2 uses
  %next.gep230 = getelementptr i8, ptr %i.dz, i64 %i.ew ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4129)
  call void @llvm.experimental.noalias.scope.decl(metadata !4132)
  %i.ex = getelementptr i8, ptr %next.gep230, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep230, align 8, !tbaa !963, !alias.scope !4134, !noalias !4129
  %wide.load231 = load <2 x i64>, ptr %i.ex, align 8, !tbaa !963, !alias.scope !4134, !noalias !4129
  %i.ey = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !963, !alias.scope !4137, !noalias !4134
  store <2 x i64> %wide.load231, ptr %i.ey, align 8, !tbaa !963, !alias.scope !4137, !noalias !4134
  %i.ez = getelementptr i8, ptr %next.gep230, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep230, align 8, !tbaa !963, !alias.scope !4134, !noalias !4129
  store <2 x ptr> splat (ptr null), ptr %i.ez, align 8, !tbaa !963, !alias.scope !4134, !noalias !4129
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fa = icmp eq i64 %index.next, %n.vec
  br i1 %i.fa, label %middle.block, label %vector.body, !llvm.loop !4139

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eo, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader304

.lr.ph.i.i.i.i.i.i.i.preheader304:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ek, %vector.memcheck ], [ %i.ek, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.eu, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.dz, %vector.memcheck ], [ %i.dz, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ev, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader304, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.fd, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader304 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.fc, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader304 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4129)
  call void @llvm.experimental.noalias.scope.decl(metadata !4132)
  %i.fb = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !963, !alias.scope !4132, !noalias !4129
  store i64 %i.fb, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !963, !alias.scope !4129, !noalias !4132
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !963, !alias.scope !4132, !noalias !4129
  %i.fc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i82 = icmp eq ptr %i.fc, %i.du
  br i1 %.not.i.i.i.i.i.i.i82, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !4140

_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc83
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ek, %.noexc83 ], [ %i.eu, %middle.block ], [ %i.fd, %.lr.ph.i.i.i.i.i.i.i ]
  %i.fe = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.dz, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.dz) #39
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.ar
  store ptr %i.ek, ptr %i.dl, align 8, !tbaa !2703
  store ptr %i.fe, ptr %i.dt, align 8, !tbaa !2704
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.ei
  store ptr %i.ff, ptr %i.dv, align 8, !tbaa !2705
  %.pr165 = load ptr, ptr %9, align 8, !tbaa !963 ; 3 uses
  %.not.i84 = icmp eq ptr %.pr165, null
  br i1 %.not.i84, label %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit86, label %_ZNKSt14default_deleteIN6duckdb21ColumnCheckpointStateEEclEPS1_.exit.i85

_ZNKSt14default_deleteIN6duckdb21ColumnCheckpointStateEEclEPS1_.exit.i85: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.fg = load ptr, ptr %.pr165, align 8, !tbaa !12
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %.pr165) #37, !inline_history !1295
  br label %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit86

_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit86: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb21ColumnCheckpointStateEEclEPS1_.exit.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !2359
  %i.fl = load ptr, ptr %i.dm, align 8, !tbaa !2362
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = sub i64 %i.fm, %i.fn
  %i.fp = icmp ugt i64 %i.fo, 16
  br i1 %i.fp, label %bb.as, label %bb.bf

bb.as:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit86
  %i.fq = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_28VariantColumnCheckpointStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.at unwind label %bb.af     ; 3 uses

bb.at:                                            ; preds = %bb.as
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 120 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  %i.fs = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_10shared_ptrINS_10ColumnDataELb1EEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dm, i64 noundef 1)
          to label %bb.au unwind label %bb.bd

bb.au:                                            ; preds = %bb.at
  %i.ft = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_10ColumnDataELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fs)
          to label %bb.av unwind label %bb.bd     ; 2 uses

bb.av:                                            ; preds = %bb.au
  %i.fu = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb12VariantStats16GetShreddedStatsERKNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.aw unwind label %bb.bd

bb.aw:                                            ; preds = %bb.av
  %i.fv = load ptr, ptr %i.ft, align 8, !tbaa !12
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 224
  %i.fx = load ptr, ptr %i.fw, align 8
  invoke void %i.fx(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.941") align 8 %10, ptr noundef nonnull align 8 dereferenceable(296) %i.ft, ptr noundef nonnull align 8 dereferenceable(218) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(128) %i.fu)
          to label %bb.ax unwind label %bb.bd

bb.ax:                                            ; preds = %bb.aw
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fq, i64 128 ; 3 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !2704 ; 6 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fq, i64 136 ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !2705
  %.not.i.i87 = icmp eq ptr %i.fz, %i.gb
  br i1 %.not.i.i87, label %bb.ay, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit102.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit102.thread: ; preds = %bb.ax
  %i.gc = load i64, ptr %10, align 8, !tbaa !963
  store i64 %i.gc, ptr %i.fz, align 8, !tbaa !963
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store ptr %i.gd, ptr %i.fy, align 8, !tbaa !2704
  br label %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit105

bb.ay:                                            ; preds = %bb.ax
  %i.ge = load ptr, ptr %i.fr, align 8, !tbaa !2703 ; 10 uses
  %i.gf = ptrtoint ptr %i.fz to i64               ; 3 uses
  %i.gg = ptrtoint ptr %i.ge to i64               ; 3 uses
  %i.gh = sub i64 %i.gf, %i.gg                    ; 3 uses
  %i.gi = icmp eq i64 %i.gh, 9223372036854775800
  br i1 %i.gi, label %bb.az, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i88

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.164) #40
          to label %.noexc100 unwind label %bb.be

.noexc100:                                        ; preds = %bb.az
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i88: ; preds = %bb.ay
  %i.gj = ashr exact i64 %i.gh, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i89 = call i64 @llvm.umax.i64(i64 %i.gj, i64 1)
  %i.gk = add nsw i64 %.sroa.speculated.i.i.i.i89, %i.gj ; 2 uses
  %i.gl = icmp ult i64 %i.gk, %i.gj
  %i.gm = call i64 @llvm.umin.i64(i64 %i.gk, i64 1152921504606846975)
  %i.gn = select i1 %i.gl, i64 1152921504606846975, i64 %i.gm ; 3 uses
  %.not.i.i.i.i90 = icmp ne i64 %i.gn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i90)
  %i.go = shl nuw nsw i64 %i.gn, 3
  %i.gp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.go) #38
          to label %.noexc101 unwind label %bb.be ; 10 uses

.noexc101:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i88
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gh
  %i.gr = load i64, ptr %10, align 8, !tbaa !963
  store i64 %i.gr, ptr %i.gq, align 8, !tbaa !963
  store ptr null, ptr %10, align 8, !tbaa !963
  %.not10.i.i.i.i.i.i.i91 = icmp eq ptr %i.ge, %i.fz
  br i1 %.not10.i.i.i.i.i.i.i91, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i96, label %.lr.ph.i.i.i.i.i.i.i92.preheader

.lr.ph.i.i.i.i.i.i.i92.preheader:                 ; preds = %.noexc101
  %18 = sub i64 %i.gf, %i.gg
  %19 = add i64 %18, -8                           ; 2 uses
  %i.gs = lshr i64 %19, 3
  %i.gt = add nuw nsw i64 %i.gs, 1                ; 2 uses
  %min.iters.check240 = icmp ult i64 %19, 152
  br i1 %min.iters.check240, label %.lr.ph.i.i.i.i.i.i.i92.preheader302, label %vector.memcheck233

vector.memcheck233:                               ; preds = %.lr.ph.i.i.i.i.i.i.i92.preheader
  %i.gu = add i64 %i.gf, -8
  %i.gv = sub i64 %i.gu, %i.gg
  %i.gw = and i64 %i.gv, -8
  %i.gx = add i64 %i.gw, 8                        ; 2 uses
  %scevgep234 = getelementptr i8, ptr %i.gp, i64 %i.gx
  %scevgep235 = getelementptr i8, ptr %i.ge, i64 %i.gx
  %bound0236 = icmp ult ptr %i.gp, %scevgep235
  %bound1237 = icmp ult ptr %i.ge, %scevgep234
  %found.conflict238 = and i1 %bound0236, %bound1237
  br i1 %found.conflict238, label %.lr.ph.i.i.i.i.i.i.i92.preheader302, label %vector.ph241

vector.ph241:                                     ; preds = %vector.memcheck233
  %n.vec243 = and i64 %i.gt, 4611686018427387900  ; 3 uses
  %i.gy = shl i64 %n.vec243, 3                    ; 2 uses
  %i.gz = getelementptr i8, ptr %i.gp, i64 %i.gy  ; 2 uses
  %i.ha = getelementptr i8, ptr %i.ge, i64 %i.gy
  br label %vector.body244

vector.body244:                                   ; preds = %vector.body244, %vector.ph241
  %index245 = phi i64 [ 0, %vector.ph241 ], [ %index.next250, %vector.body244 ] ; 2 uses
  %i.hb = shl i64 %index245, 3                    ; 2 uses
  %next.gep246 = getelementptr i8, ptr %i.gp, i64 %i.hb ; 2 uses
  %next.gep247 = getelementptr i8, ptr %i.ge, i64 %i.hb ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4141)
  call void @llvm.experimental.noalias.scope.decl(metadata !4144)
  %i.hc = getelementptr i8, ptr %next.gep247, i64 16
  %wide.load248 = load <2 x i64>, ptr %next.gep247, align 8, !tbaa !963, !alias.scope !4146, !noalias !4141
  %wide.load249 = load <2 x i64>, ptr %i.hc, align 8, !tbaa !963, !alias.scope !4146, !noalias !4141
  %i.hd = getelementptr i8, ptr %next.gep246, i64 16
  store <2 x i64> %wide.load248, ptr %next.gep246, align 8, !tbaa !963, !alias.scope !4149, !noalias !4146
  store <2 x i64> %wide.load249, ptr %i.hd, align 8, !tbaa !963, !alias.scope !4149, !noalias !4146
  %i.he = getelementptr i8, ptr %next.gep247, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep247, align 8, !tbaa !963, !alias.scope !4146, !noalias !4141
  store <2 x ptr> splat (ptr null), ptr %i.he, align 8, !tbaa !963, !alias.scope !4146, !noalias !4141
  %index.next250 = add nuw i64 %index245, 4       ; 2 uses
  %i.hf = icmp eq i64 %index.next250, %n.vec243
  br i1 %i.hf, label %middle.block251, label %vector.body244, !llvm.loop !4151

middle.block251:                                  ; preds = %vector.body244
  %cmp.n252 = icmp eq i64 %i.gt, %n.vec243
  br i1 %cmp.n252, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i96, label %.lr.ph.i.i.i.i.i.i.i92.preheader302

.lr.ph.i.i.i.i.i.i.i92.preheader302:              ; preds = %vector.memcheck233, %.lr.ph.i.i.i.i.i.i.i92.preheader, %middle.block251
  %.012.i.i.i.i.i.i.i93.ph = phi ptr [ %i.gp, %vector.memcheck233 ], [ %i.gp, %.lr.ph.i.i.i.i.i.i.i92.preheader ], [ %i.gz, %middle.block251 ]
  %.0911.i.i.i.i.i.i.i94.ph = phi ptr [ %i.ge, %vector.memcheck233 ], [ %i.ge, %.lr.ph.i.i.i.i.i.i.i92.preheader ], [ %i.ha, %middle.block251 ]
  br label %.lr.ph.i.i.i.i.i.i.i92

.lr.ph.i.i.i.i.i.i.i92:                           ; preds = %.lr.ph.i.i.i.i.i.i.i92.preheader302, %.lr.ph.i.i.i.i.i.i.i92
  %.012.i.i.i.i.i.i.i93 = phi ptr [ %i.hi, %.lr.ph.i.i.i.i.i.i.i92 ], [ %.012.i.i.i.i.i.i.i93.ph, %.lr.ph.i.i.i.i.i.i.i92.preheader302 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i94 = phi ptr [ %i.hh, %.lr.ph.i.i.i.i.i.i.i92 ], [ %.0911.i.i.i.i.i.i.i94.ph, %.lr.ph.i.i.i.i.i.i.i92.preheader302 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4141)
  call void @llvm.experimental.noalias.scope.decl(metadata !4144)
  %i.hg = load i64, ptr %.0911.i.i.i.i.i.i.i94, align 8, !tbaa !963, !alias.scope !4144, !noalias !4141
  store i64 %i.hg, ptr %.012.i.i.i.i.i.i.i93, align 8, !tbaa !963, !alias.scope !4141, !noalias !4144
  store ptr null, ptr %.0911.i.i.i.i.i.i.i94, align 8, !tbaa !963, !alias.scope !4144, !noalias !4141
  %i.hh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i94, i64 8 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i93, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i95 = icmp eq ptr %i.hh, %i.fz
  br i1 %.not.i.i.i.i.i.i.i95, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i96, label %.lr.ph.i.i.i.i.i.i.i92, !llvm.loop !4152

_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i96: ; preds = %.lr.ph.i.i.i.i.i.i.i92, %middle.block251, %.noexc101
  %.0.lcssa.i.i.i.i.i.i.i97 = phi ptr [ %i.gp, %.noexc101 ], [ %i.gz, %middle.block251 ], [ %i.hi, %.lr.ph.i.i.i.i.i.i.i92 ]
  %i.hj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i97, i64 8
  %.not.i23.i.i.i98 = icmp eq ptr %i.ge, null
  br i1 %.not.i23.i.i.i98, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit102, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i96
  call void @_ZdlPv(ptr noundef nonnull %i.ge) #39
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit102

_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit102: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i96, %bb.ba
  store ptr %i.gp, ptr %i.fr, align 8, !tbaa !2703
  store ptr %i.hj, ptr %i.fy, align 8, !tbaa !2704
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.gn
  store ptr %i.hk, ptr %i.ga, align 8, !tbaa !2705
  %.pr167 = load ptr, ptr %10, align 8, !tbaa !963 ; 3 uses
  %.not.i103 = icmp eq ptr %.pr167, null
  br i1 %.not.i103, label %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit105, label %_ZNKSt14default_deleteIN6duckdb21ColumnCheckpointStateEEclEPS1_.exit.i104

_ZNKSt14default_deleteIN6duckdb21ColumnCheckpointStateEEclEPS1_.exit.i104: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit102
  %i.hl = load ptr, ptr %.pr167, align 8, !tbaa !12
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8
  call void %i.hn(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %.pr167) #37, !inline_history !1295
  br label %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit105

_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit105: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit102.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit102, %_ZNKSt14default_deleteIN6duckdb21ColumnCheckpointStateEEclEPS1_.exit.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  br label %bb.bf

bb.bb:                                            ; preds = %bb.an, %bb.am, %bb.al, %bb.ak
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit108

bb.bc:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.aq
  %i.hp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hq = load ptr, ptr %9, align 8, !tbaa !963   ; 3 uses
  %.not.i106 = icmp eq ptr %i.hq, null
  br i1 %.not.i106, label %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit108, label %_ZNKSt14default_deleteIN6duckdb21ColumnCheckpointStateEEclEPS1_.exit.i107

_ZNKSt14default_deleteIN6duckdb21ColumnCheckpointStateEEclEPS1_.exit.i107: ; preds = %bb.bc
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !12
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8
  call void %i.ht(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.hq) #37, !inline_history !1295
  br label %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit108

_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit108: ; preds = %_ZNKSt14default_deleteIN6duckdb21ColumnCheckpointStateEEclEPS1_.exit.i107, %bb.bc, %bb.bb
  %.pn52 = phi { ptr, i32 } [ %i.ho, %bb.bb ], [ %i.hp, %bb.bc ], [ %i.hp, %_ZNKSt14default_deleteIN6duckdb21ColumnCheckpointStateEEclEPS1_.exit.i107 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br label %bb.df

bb.bd:                                            ; preds = %bb.aw, %bb.av, %bb.au, %bb.at
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit111

bb.be:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i88, %bb.az
  %i.hv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hw = load ptr, ptr %10, align 8, !tbaa !963  ; 3 uses
  %.not.i109 = icmp eq ptr %i.hw, null
  br i1 %.not.i109, label %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit111, label %_ZNKSt14default_deleteIN6duckdb21ColumnCheckpointStateEEclEPS1_.exit.i110

_ZNKSt14default_deleteIN6duckdb21ColumnCheckpointStateEEclEPS1_.exit.i110: ; preds = %bb.be
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !12
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8
  call void %i.hz(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.hw) #37, !inline_history !1295
  br label %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit111

_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit111: ; preds = %_ZNKSt14default_deleteIN6duckdb21ColumnCheckpointStateEEclEPS1_.exit.i110, %bb.be, %bb.bd
  %.pn54 = phi { ptr, i32 } [ %i.hu, %bb.bd ], [ %i.hv, %bb.be ], [ %i.hv, %_ZNKSt14default_deleteIN6duckdb21ColumnCheckpointStateEEclEPS1_.exit.i110 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  br label %bb.df

bb.bf:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit105, %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit86
  %i.ia = load ptr, ptr %5, align 8, !tbaa !4127
  store ptr null, ptr %5, align 8, !tbaa !4127
  store ptr %i.ia, ptr %0, align 8, !tbaa !2019
  br label %bb.de

bb.bg:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.bh unwind label %bb.cr

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN6duckdb14BaseStatistics11CreateEmptyENS_11LogicalTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::BaseStatistics") align 8 %11, ptr noundef nonnull %12)
          to label %bb.bi unwind label %bb.cs

bb.bi:                                            ; preds = %bb.bh
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37
  invoke void @_ZN6duckdb17VariantColumnData17WriteShreddedDataERKNS_8RowGroupERKNS_11LogicalTypeERNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.67") align 8 %13, ptr noundef nonnull align 8 dereferenceable(336) %1, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(128) %11)
          to label %bb.bj unwind label %bb.ct

bb.bj:                                            ; preds = %bb.bi
  %i.ib = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_28VariantColumnCheckpointStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.bk unwind label %bb.cu     ; 3 uses

bb.bk:                                            ; preds = %bb.bj
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 88 ; 2 uses
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !2362 ; 4 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 96
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !2359 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ib, i64 104
  %i.ih = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ii = load <2 x ptr>, ptr %13, align 16, !tbaa !2752
  store <2 x ptr> %i.ii, ptr %i.ic, align 8, !tbaa !2752
  %i.ij = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ik = load ptr, ptr %i.ij, align 16, !tbaa !2424
  store ptr %i.ik, ptr %i.ig, align 8, !tbaa !2424
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.id, %i.if
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_10ColumnDataELb1EEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.bk, %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_10ColumnDataELb1EEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.jc, %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_10ColumnDataELb1EEEEvPT_.exit.i.i.i.i.i.i ], [ %i.id, %bb.bk ] ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !93 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.im, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_10ColumnDataELb1EEEEvPT_.exit.i.i.i.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8 ; 4 uses
  %i.io = load atomic i64, ptr %i.in acquire, align 8 ; 2 uses
  %i.ip = icmp eq i64 %i.io, 4294967297
  %i.iq = trunc i64 %i.io to i32                  ; 2 uses
  br i1 %i.ip, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
end_hunk_12
begin_hunk_13_@_ZN6duckdb17VariantColumnData10CheckpointERKNS_8RowGroupERNS_20ColumnCheckpointInfoERKNS_14BaseStatisticsE:bb.a
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.iz = add nsw i32 %i.iq, -1
  store i32 %i.iz, ptr %i.in, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

bb.bp:                                            ; preds = %bb.bn
  %i.ja = atomicrmw volatile add ptr %i.in, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bp, %bb.bo
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.iq, %bb.bo ], [ %i.ja, %bb.bp ]
  %i.jb = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.jb, label %bb.bq, label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_10ColumnDataELb1EEEEvPT_.exit.i.i.i.i.i.i, !prof !99

bb.bq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.im) #37
  br label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_10ColumnDataELb1EEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN6duckdb10shared_ptrINS0_10ColumnDataELb1EEEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.bq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.bm, %.lr.ph.i.i.i.i.i.i
  %i.jc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i112 = icmp eq ptr %i.jc, %i.if
  br i1 %.not.i.i.i.i.i.i112, label %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_10ColumnDataELb1EEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2364

_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_10ColumnDataELb1EEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_10ColumnDataELb1EEEEvPT_.exit.i.i.i.i.i.i, %bb.bk
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.id, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN6duckdb6vectorINS_10shared_ptrINS_10ColumnDataELb1EEELb1ESaIS3_EEaSEOS5_.exit, label %bb.br

bb.br:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_10ColumnDataELb1EEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.id) #39
  br label %_ZN6duckdb6vectorINS_10shared_ptrINS_10ColumnDataELb1EEELb1ESaIS3_EEaSEOS5_.exit

_ZN6duckdb6vectorINS_10shared_ptrINS_10ColumnDataELb1EEELb1ESaIS3_EEaSEOS5_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_10ColumnDataELb1EEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i, %bb.br
  %i.jd = load ptr, ptr %13, align 16, !tbaa !2362 ; 3 uses
  %i.je = load ptr, ptr %i.ih, align 8, !tbaa !2359 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.jd, %i.je
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_10ColumnDataELb1EEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6duckdb6vectorINS_10shared_ptrINS_10ColumnDataELb1EEELb1ESaIS3_EEaSEOS5_.exit, %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_10ColumnDataELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.jw, %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_10ColumnDataELb1EEEEvPT_.exit.i.i.i ], [ %i.jd, %_ZN6duckdb6vectorINS_10shared_ptrINS_10ColumnDataELb1EEELb1ESaIS3_EEaSEOS5_.exit ] ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !93 ; 8 uses
  %.not.i.i.i.i.i.i.i113 = icmp eq ptr %i.jg, null
  br i1 %.not.i.i.i.i.i.i.i113, label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_10ColumnDataELb1EEEEvPT_.exit.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %.lr.ph.i.i.i
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8 ; 4 uses
  %i.ji = load atomic i64, ptr %i.jh acquire, align 8 ; 2 uses
  %i.jj = icmp eq i64 %i.ji, 4294967297
  %i.jk = trunc i64 %i.ji to i32                  ; 2 uses
  br i1 %i.jj, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  store i32 0, ptr %i.jh, align 8, !tbaa !94
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jg, i64 12
  store i32 0, ptr %i.jl, align 4, !tbaa !96
  %i.jm = load ptr, ptr %i.jg, align 8, !tbaa !12
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  %i.jo = load ptr, ptr %i.jn, align 8
  call void %i.jo(ptr noundef nonnull align 8 dereferenceable(16) %i.jg) #37, !inline_history !2434
  %i.jp = load ptr, ptr %i.jg, align 8, !tbaa !12
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 24
  %i.jr = load ptr, ptr %i.jq, align 8
  call void %i.jr(ptr noundef nonnull align 8 dereferenceable(16) %i.jg) #37, !inline_history !2434
  br label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_10ColumnDataELb1EEEEvPT_.exit.i.i.i

bb.bu:                                            ; preds = %bb.bs
  %i.js = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.js, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jt = add nsw i32 %i.jk, -1
  store i32 %i.jt, ptr %i.jh, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.bw:                                            ; preds = %bb.bu
  %i.ju = atomicrmw volatile add ptr %i.jh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bw, %bb.bv
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.jk, %bb.bv ], [ %i.ju, %bb.bw ]
  %i.jv = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.jv, label %bb.bx, label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_10ColumnDataELb1EEEEvPT_.exit.i.i.i, !prof !99

bb.bx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jg) #37
  br label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_10ColumnDataELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10shared_ptrINS0_10ColumnDataELb1EEEEvPT_.exit.i.i.i: ; preds = %bb.bx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.bt, %.lr.ph.i.i.i
  %i.jw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.jw, %i.je
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_10ColumnDataELb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2364

_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_10ColumnDataELb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_10ColumnDataELb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %13, align 16, !tbaa !2362
  br label %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_10ColumnDataELb1EEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_10ColumnDataELb1EEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_10ColumnDataELb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZN6duckdb6vectorINS_10shared_ptrINS_10ColumnDataELb1EEELb1ESaIS3_EEaSEOS5_.exit
  %i.jx = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_10ColumnDataELb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.jd, %_ZN6duckdb6vectorINS_10shared_ptrINS_10ColumnDataELb1EEELb1ESaIS3_EEaSEOS5_.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.jx, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb10shared_ptrINS0_10ColumnDataELb1EEESaIS3_EED2Ev.exit, label %bb.by

bb.by:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_10ColumnDataELb1EEES3_EvT_S5_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.jx) #39
  br label %_ZNSt6vectorIN6duckdb10shared_ptrINS0_10ColumnDataELb1EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN6duckdb10shared_ptrINS0_10ColumnDataELb1EEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_10ColumnDataELb1EEES3_EvT_S5_RSaIT0_E.exit.i, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  %i.jy = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_28VariantColumnCheckpointStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.bz unwind label %bb.cw

bb.bz:                                            ; preds = %_ZNSt6vectorIN6duckdb10shared_ptrINS0_10ColumnDataELb1EEESaIS3_EED2Ev.exit
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 88
  %i.ka = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_10shared_ptrINS_10ColumnDataELb1EEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.jz, i64 noundef 0)
          to label %bb.ca unwind label %bb.cw

bb.ca:                                            ; preds = %bb.bz
  %i.kb = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_28VariantColumnCheckpointStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.cb unwind label %bb.cx

bb.cb:                                            ; preds = %bb.ca
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 88
  %i.kd = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_10shared_ptrINS_10ColumnDataELb1EEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.kc, i64 noundef 1)
          to label %bb.cc unwind label %bb.cx

bb.cc:                                            ; preds = %bb.cb
  %i.ke = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_28VariantColumnCheckpointStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.cd unwind label %bb.cx     ; 3 uses

bb.cd:                                            ; preds = %bb.cc
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 120 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #37
  %i.kg = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_10ColumnDataELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ka)
          to label %bb.ce unwind label %bb.cy     ; 2 uses

bb.ce:                                            ; preds = %bb.cd
  %i.kh = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb12VariantStats18GetUnshreddedStatsERNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %11)
          to label %bb.cf unwind label %bb.cy

bb.cf:                                            ; preds = %bb.ce
  %i.ki = load ptr, ptr %i.kg, align 8, !tbaa !12
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 224
  %i.kk = load ptr, ptr %i.kj, align 8
  invoke void %i.kk(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.941") align 8 %14, ptr noundef nonnull align 8 dereferenceable(296) %i.kg, ptr noundef nonnull align 8 dereferenceable(218) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(128) %i.kh)
          to label %bb.cg unwind label %bb.cy

bb.cg:                                            ; preds = %bb.cf
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ke, i64 128 ; 3 uses
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !2704 ; 6 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ke, i64 136 ; 2 uses
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !2705
  %.not.i.i114 = icmp eq ptr %i.km, %i.ko
  br i1 %.not.i.i114, label %bb.ch, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit129.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit129.thread: ; preds = %bb.cg
  %i.kp = load i64, ptr %14, align 8, !tbaa !963
  store i64 %i.kp, ptr %i.km, align 8, !tbaa !963
  %i.kq = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  store ptr %i.kq, ptr %i.kl, align 8, !tbaa !2704
  br label %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit132

bb.ch:                                            ; preds = %bb.cg
  %i.kr = load ptr, ptr %i.kf, align 8, !tbaa !2703 ; 10 uses
  %i.ks = ptrtoint ptr %i.km to i64               ; 3 uses
  %i.kt = ptrtoint ptr %i.kr to i64               ; 3 uses
  %i.ku = sub i64 %i.ks, %i.kt                    ; 3 uses
  %i.kv = icmp eq i64 %i.ku, 9223372036854775800
  br i1 %i.kv, label %bb.ci, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i115

bb.ci:                                            ; preds = %bb.ch
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.164) #40
          to label %.noexc127 unwind label %bb.cz

.noexc127:                                        ; preds = %bb.ci
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i115: ; preds = %bb.ch
  %i.kw = ashr exact i64 %i.ku, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i116 = call i64 @llvm.umax.i64(i64 %i.kw, i64 1)
  %i.kx = add nsw i64 %.sroa.speculated.i.i.i.i116, %i.kw ; 2 uses
  %i.ky = icmp ult i64 %i.kx, %i.kw
  %i.kz = call i64 @llvm.umin.i64(i64 %i.kx, i64 1152921504606846975)
  %i.la = select i1 %i.ky, i64 1152921504606846975, i64 %i.kz ; 3 uses
  %.not.i.i.i.i117 = icmp ne i64 %i.la, 0
  call void @llvm.assume(i1 %.not.i.i.i.i117)
  %i.lb = shl nuw nsw i64 %i.la, 3
  %i.lc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #38
          to label %.noexc128 unwind label %bb.cz ; 10 uses

.noexc128:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i115
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.ku
  %i.le = load i64, ptr %14, align 8, !tbaa !963
  store i64 %i.le, ptr %i.ld, align 8, !tbaa !963
  store ptr null, ptr %14, align 8, !tbaa !963
  %.not10.i.i.i.i.i.i.i118 = icmp eq ptr %i.kr, %i.km
  br i1 %.not10.i.i.i.i.i.i.i118, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i123, label %.lr.ph.i.i.i.i.i.i.i119.preheader

.lr.ph.i.i.i.i.i.i.i119.preheader:                ; preds = %.noexc128
  %20 = sub i64 %i.ks, %i.kt
  %21 = add i64 %20, -8                           ; 2 uses
  %i.lf = lshr i64 %21, 3
  %i.lg = add nuw nsw i64 %i.lf, 1                ; 2 uses
  %min.iters.check262 = icmp ult i64 %21, 152
  br i1 %min.iters.check262, label %.lr.ph.i.i.i.i.i.i.i119.preheader300, label %vector.memcheck255

vector.memcheck255:                               ; preds = %.lr.ph.i.i.i.i.i.i.i119.preheader
  %i.lh = add i64 %i.ks, -8
  %i.li = sub i64 %i.lh, %i.kt
  %i.lj = and i64 %i.li, -8
  %i.lk = add i64 %i.lj, 8                        ; 2 uses
  %scevgep256 = getelementptr i8, ptr %i.lc, i64 %i.lk
  %scevgep257 = getelementptr i8, ptr %i.kr, i64 %i.lk
  %bound0258 = icmp ult ptr %i.lc, %scevgep257
  %bound1259 = icmp ult ptr %i.kr, %scevgep256
  %found.conflict260 = and i1 %bound0258, %bound1259
  br i1 %found.conflict260, label %.lr.ph.i.i.i.i.i.i.i119.preheader300, label %vector.ph263

vector.ph263:                                     ; preds = %vector.memcheck255
  %n.vec265 = and i64 %i.lg, 4611686018427387900  ; 3 uses
  %i.ll = shl i64 %n.vec265, 3                    ; 2 uses
  %i.lm = getelementptr i8, ptr %i.lc, i64 %i.ll  ; 2 uses
  %i.ln = getelementptr i8, ptr %i.kr, i64 %i.ll
  br label %vector.body266

vector.body266:                                   ; preds = %vector.body266, %vector.ph263
  %index267 = phi i64 [ 0, %vector.ph263 ], [ %index.next272, %vector.body266 ] ; 2 uses
  %i.lo = shl i64 %index267, 3                    ; 2 uses
  %next.gep268 = getelementptr i8, ptr %i.lc, i64 %i.lo ; 2 uses
  %next.gep269 = getelementptr i8, ptr %i.kr, i64 %i.lo ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4153)
  call void @llvm.experimental.noalias.scope.decl(metadata !4156)
  %i.lp = getelementptr i8, ptr %next.gep269, i64 16
  %wide.load270 = load <2 x i64>, ptr %next.gep269, align 8, !tbaa !963, !alias.scope !4158, !noalias !4153
  %wide.load271 = load <2 x i64>, ptr %i.lp, align 8, !tbaa !963, !alias.scope !4158, !noalias !4153
  %i.lq = getelementptr i8, ptr %next.gep268, i64 16
  store <2 x i64> %wide.load270, ptr %next.gep268, align 8, !tbaa !963, !alias.scope !4161, !noalias !4158
  store <2 x i64> %wide.load271, ptr %i.lq, align 8, !tbaa !963, !alias.scope !4161, !noalias !4158
  %i.lr = getelementptr i8, ptr %next.gep269, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep269, align 8, !tbaa !963, !alias.scope !4158, !noalias !4153
  store <2 x ptr> splat (ptr null), ptr %i.lr, align 8, !tbaa !963, !alias.scope !4158, !noalias !4153
  %index.next272 = add nuw i64 %index267, 4       ; 2 uses
  %i.ls = icmp eq i64 %index.next272, %n.vec265
  br i1 %i.ls, label %middle.block273, label %vector.body266, !llvm.loop !4163

middle.block273:                                  ; preds = %vector.body266
  %cmp.n274 = icmp eq i64 %i.lg, %n.vec265
  br i1 %cmp.n274, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i123, label %.lr.ph.i.i.i.i.i.i.i119.preheader300

.lr.ph.i.i.i.i.i.i.i119.preheader300:             ; preds = %vector.memcheck255, %.lr.ph.i.i.i.i.i.i.i119.preheader, %middle.block273
  %.012.i.i.i.i.i.i.i120.ph = phi ptr [ %i.lc, %vector.memcheck255 ], [ %i.lc, %.lr.ph.i.i.i.i.i.i.i119.preheader ], [ %i.lm, %middle.block273 ]
  %.0911.i.i.i.i.i.i.i121.ph = phi ptr [ %i.kr, %vector.memcheck255 ], [ %i.kr, %.lr.ph.i.i.i.i.i.i.i119.preheader ], [ %i.ln, %middle.block273 ]
  br label %.lr.ph.i.i.i.i.i.i.i119

.lr.ph.i.i.i.i.i.i.i119:                          ; preds = %.lr.ph.i.i.i.i.i.i.i119.preheader300, %.lr.ph.i.i.i.i.i.i.i119
  %.012.i.i.i.i.i.i.i120 = phi ptr [ %i.lv, %.lr.ph.i.i.i.i.i.i.i119 ], [ %.012.i.i.i.i.i.i.i120.ph, %.lr.ph.i.i.i.i.i.i.i119.preheader300 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i121 = phi ptr [ %i.lu, %.lr.ph.i.i.i.i.i.i.i119 ], [ %.0911.i.i.i.i.i.i.i121.ph, %.lr.ph.i.i.i.i.i.i.i119.preheader300 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4153)
  call void @llvm.experimental.noalias.scope.decl(metadata !4156)
  %i.lt = load i64, ptr %.0911.i.i.i.i.i.i.i121, align 8, !tbaa !963, !alias.scope !4156, !noalias !4153
  store i64 %i.lt, ptr %.012.i.i.i.i.i.i.i120, align 8, !tbaa !963, !alias.scope !4153, !noalias !4156
  store ptr null, ptr %.0911.i.i.i.i.i.i.i121, align 8, !tbaa !963, !alias.scope !4156, !noalias !4153
  %i.lu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i121, i64 8 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i120, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i122 = icmp eq ptr %i.lu, %i.km
  br i1 %.not.i.i.i.i.i.i.i122, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i123, label %.lr.ph.i.i.i.i.i.i.i119, !llvm.loop !4164

_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i123: ; preds = %.lr.ph.i.i.i.i.i.i.i119, %middle.block273, %.noexc128
  %.0.lcssa.i.i.i.i.i.i.i124 = phi ptr [ %i.lc, %.noexc128 ], [ %i.lm, %middle.block273 ], [ %i.lv, %.lr.ph.i.i.i.i.i.i.i119 ]
  %i.lw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i124, i64 8
  %.not.i23.i.i.i125 = icmp eq ptr %i.kr, null
  br i1 %.not.i23.i.i.i125, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit129, label %bb.cj

bb.cj:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i123
  call void @_ZdlPv(ptr noundef nonnull %i.kr) #39
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit129

_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit129: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i123, %bb.cj
  store ptr %i.lc, ptr %i.kf, align 8, !tbaa !2703
  store ptr %i.lw, ptr %i.kl, align 8, !tbaa !2704
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %i.la
  store ptr %i.lx, ptr %i.kn, align 8, !tbaa !2705
  %.pr169 = load ptr, ptr %14, align 8, !tbaa !963 ; 3 uses
  %.not.i130 = icmp eq ptr %.pr169, null
  br i1 %.not.i130, label %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit132, label %_ZNKSt14default_deleteIN6duckdb21ColumnCheckpointStateEEclEPS1_.exit.i131

_ZNKSt14default_deleteIN6duckdb21ColumnCheckpointStateEEclEPS1_.exit.i131: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit129
  %i.ly = load ptr, ptr %.pr169, align 8, !tbaa !12
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  %i.ma = load ptr, ptr %i.lz, align 8
  call void %i.ma(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %.pr169) #37, !inline_history !1295
  br label %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit132

_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit132: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit129.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit129, %_ZNKSt14default_deleteIN6duckdb21ColumnCheckpointStateEEclEPS1_.exit.i131
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  %i.mb = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_28VariantColumnCheckpointStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.ck unwind label %bb.cx     ; 3 uses

bb.ck:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit132
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 120 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #37
  %i.md = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_10ColumnDataELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kd)
          to label %bb.cl unwind label %bb.da     ; 2 uses

bb.cl:                                            ; preds = %bb.ck
  %i.me = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb12VariantStats16GetShreddedStatsERNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %11)
          to label %bb.cm unwind label %bb.da

bb.cm:                                            ; preds = %bb.cl
  %i.mf = load ptr, ptr %i.md, align 8, !tbaa !12
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 224
  %i.mh = load ptr, ptr %i.mg, align 8
  invoke void %i.mh(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.941") align 8 %15, ptr noundef nonnull align 8 dereferenceable(296) %i.md, ptr noundef nonnull align 8 dereferenceable(218) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(128) %i.me)
          to label %bb.cn unwind label %bb.da

bb.cn:                                            ; preds = %bb.cm
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mb, i64 128 ; 3 uses
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !2704 ; 6 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mb, i64 136 ; 2 uses
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !2705
  %.not.i.i133 = icmp eq ptr %i.mj, %i.ml
  br i1 %.not.i.i133, label %bb.co, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit148.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit148.thread: ; preds = %bb.cn
  %i.mm = load i64, ptr %15, align 8, !tbaa !963
  store i64 %i.mm, ptr %i.mj, align 8, !tbaa !963
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  store ptr %i.mn, ptr %i.mi, align 8, !tbaa !2704
  br label %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit151

bb.co:                                            ; preds = %bb.cn
  %i.mo = load ptr, ptr %i.mc, align 8, !tbaa !2703 ; 10 uses
  %i.mp = ptrtoint ptr %i.mj to i64               ; 3 uses
  %i.mq = ptrtoint ptr %i.mo to i64               ; 3 uses
  %i.mr = sub i64 %i.mp, %i.mq                    ; 3 uses
  %i.ms = icmp eq i64 %i.mr, 9223372036854775800
  br i1 %i.ms, label %bb.cp, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i134

bb.cp:                                            ; preds = %bb.co
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.164) #40
          to label %.noexc146 unwind label %bb.db

.noexc146:                                        ; preds = %bb.cp
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i134: ; preds = %bb.co
  %i.mt = ashr exact i64 %i.mr, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i135 = call i64 @llvm.umax.i64(i64 %i.mt, i64 1)
  %i.mu = add nsw i64 %.sroa.speculated.i.i.i.i135, %i.mt ; 2 uses
  %i.mv = icmp ult i64 %i.mu, %i.mt
  %i.mw = call i64 @llvm.umin.i64(i64 %i.mu, i64 1152921504606846975)
  %i.mx = select i1 %i.mv, i64 1152921504606846975, i64 %i.mw ; 3 uses
  %.not.i.i.i.i136 = icmp ne i64 %i.mx, 0
  call void @llvm.assume(i1 %.not.i.i.i.i136)
  %i.my = shl nuw nsw i64 %i.mx, 3
  %i.mz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.my) #38
          to label %.noexc147 unwind label %bb.db ; 10 uses

.noexc147:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i134
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.mr
  %i.nb = load i64, ptr %15, align 8, !tbaa !963
  store i64 %i.nb, ptr %i.na, align 8, !tbaa !963
  store ptr null, ptr %15, align 8, !tbaa !963
  %.not10.i.i.i.i.i.i.i137 = icmp eq ptr %i.mo, %i.mj
  br i1 %.not10.i.i.i.i.i.i.i137, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i142, label %.lr.ph.i.i.i.i.i.i.i138.preheader

.lr.ph.i.i.i.i.i.i.i138.preheader:                ; preds = %.noexc147
  %22 = sub i64 %i.mp, %i.mq
  %23 = add i64 %22, -8                           ; 2 uses
  %i.nc = lshr i64 %23, 3
  %i.nd = add nuw nsw i64 %i.nc, 1                ; 2 uses
  %min.iters.check284 = icmp ult i64 %23, 152
  br i1 %min.iters.check284, label %.lr.ph.i.i.i.i.i.i.i138.preheader299, label %vector.memcheck277

vector.memcheck277:                               ; preds = %.lr.ph.i.i.i.i.i.i.i138.preheader
  %i.ne = add i64 %i.mp, -8
  %i.nf = sub i64 %i.ne, %i.mq
  %i.ng = and i64 %i.nf, -8
  %i.nh = add i64 %i.ng, 8                        ; 2 uses
  %scevgep278 = getelementptr i8, ptr %i.mz, i64 %i.nh
  %scevgep279 = getelementptr i8, ptr %i.mo, i64 %i.nh
  %bound0280 = icmp ult ptr %i.mz, %scevgep279
  %bound1281 = icmp ult ptr %i.mo, %scevgep278
  %found.conflict282 = and i1 %bound0280, %bound1281
  br i1 %found.conflict282, label %.lr.ph.i.i.i.i.i.i.i138.preheader299, label %vector.ph285

vector.ph285:                                     ; preds = %vector.memcheck277
  %n.vec287 = and i64 %i.nd, 4611686018427387900  ; 3 uses
  %i.ni = shl i64 %n.vec287, 3                    ; 2 uses
  %i.nj = getelementptr i8, ptr %i.mz, i64 %i.ni  ; 2 uses
  %i.nk = getelementptr i8, ptr %i.mo, i64 %i.ni
  br label %vector.body288

vector.body288:                                   ; preds = %vector.body288, %vector.ph285
  %index289 = phi i64 [ 0, %vector.ph285 ], [ %index.next294, %vector.body288 ] ; 2 uses
  %i.nl = shl i64 %index289, 3                    ; 2 uses
  %next.gep290 = getelementptr i8, ptr %i.mz, i64 %i.nl ; 2 uses
  %next.gep291 = getelementptr i8, ptr %i.mo, i64 %i.nl ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4165)
  call void @llvm.experimental.noalias.scope.decl(metadata !4168)
  %i.nm = getelementptr i8, ptr %next.gep291, i64 16
  %wide.load292 = load <2 x i64>, ptr %next.gep291, align 8, !tbaa !963, !alias.scope !4170, !noalias !4165
  %wide.load293 = load <2 x i64>, ptr %i.nm, align 8, !tbaa !963, !alias.scope !4170, !noalias !4165
  %i.nn = getelementptr i8, ptr %next.gep290, i64 16
  store <2 x i64> %wide.load292, ptr %next.gep290, align 8, !tbaa !963, !alias.scope !4173, !noalias !4170
  store <2 x i64> %wide.load293, ptr %i.nn, align 8, !tbaa !963, !alias.scope !4173, !noalias !4170
  %i.no = getelementptr i8, ptr %next.gep291, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep291, align 8, !tbaa !963, !alias.scope !4170, !noalias !4165
  store <2 x ptr> splat (ptr null), ptr %i.no, align 8, !tbaa !963, !alias.scope !4170, !noalias !4165
  %index.next294 = add nuw i64 %index289, 4       ; 2 uses
  %i.np = icmp eq i64 %index.next294, %n.vec287
  br i1 %i.np, label %middle.block295, label %vector.body288, !llvm.loop !4175

middle.block295:                                  ; preds = %vector.body288
  %cmp.n296 = icmp eq i64 %i.nd, %n.vec287
  br i1 %cmp.n296, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i142, label %.lr.ph.i.i.i.i.i.i.i138.preheader299

.lr.ph.i.i.i.i.i.i.i138.preheader299:             ; preds = %vector.memcheck277, %.lr.ph.i.i.i.i.i.i.i138.preheader, %middle.block295
  %.012.i.i.i.i.i.i.i139.ph = phi ptr [ %i.mz, %vector.memcheck277 ], [ %i.mz, %.lr.ph.i.i.i.i.i.i.i138.preheader ], [ %i.nj, %middle.block295 ]
  %.0911.i.i.i.i.i.i.i140.ph = phi ptr [ %i.mo, %vector.memcheck277 ], [ %i.mo, %.lr.ph.i.i.i.i.i.i.i138.preheader ], [ %i.nk, %middle.block295 ]
  br label %.lr.ph.i.i.i.i.i.i.i138

.lr.ph.i.i.i.i.i.i.i138:                          ; preds = %.lr.ph.i.i.i.i.i.i.i138.preheader299, %.lr.ph.i.i.i.i.i.i.i138
  %.012.i.i.i.i.i.i.i139 = phi ptr [ %i.ns, %.lr.ph.i.i.i.i.i.i.i138 ], [ %.012.i.i.i.i.i.i.i139.ph, %.lr.ph.i.i.i.i.i.i.i138.preheader299 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i140 = phi ptr [ %i.nr, %.lr.ph.i.i.i.i.i.i.i138 ], [ %.0911.i.i.i.i.i.i.i140.ph, %.lr.ph.i.i.i.i.i.i.i138.preheader299 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4165)
  call void @llvm.experimental.noalias.scope.decl(metadata !4168)
  %i.nq = load i64, ptr %.0911.i.i.i.i.i.i.i140, align 8, !tbaa !963, !alias.scope !4168, !noalias !4165
  store i64 %i.nq, ptr %.012.i.i.i.i.i.i.i139, align 8, !tbaa !963, !alias.scope !4165, !noalias !4168
  store ptr null, ptr %.0911.i.i.i.i.i.i.i140, align 8, !tbaa !963, !alias.scope !4168, !noalias !4165
  %i.nr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i140, i64 8 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i139, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i141 = icmp eq ptr %i.nr, %i.mj
  br i1 %.not.i.i.i.i.i.i.i141, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i142, label %.lr.ph.i.i.i.i.i.i.i138, !llvm.loop !4176

_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i142: ; preds = %.lr.ph.i.i.i.i.i.i.i138, %middle.block295, %.noexc147
  %.0.lcssa.i.i.i.i.i.i.i143 = phi ptr [ %i.mz, %.noexc147 ], [ %i.nj, %middle.block295 ], [ %i.ns, %.lr.ph.i.i.i.i.i.i.i138 ]
  %i.nt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i143, i64 8
  %.not.i23.i.i.i144 = icmp eq ptr %i.mo, null
  br i1 %.not.i23.i.i.i144, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit148, label %bb.cq

bb.cq:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i142
  call void @_ZdlPv(ptr noundef nonnull %i.mo) #39
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit148

_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit148: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i142, %bb.cq
  store ptr %i.mz, ptr %i.mc, align 8, !tbaa !2703
  store ptr %i.nt, ptr %i.mi, align 8, !tbaa !2704
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.mz, i64 %i.mx
  store ptr %i.nu, ptr %i.mk, align 8, !tbaa !2705
  %.pr171 = load ptr, ptr %15, align 8, !tbaa !963 ; 3 uses
  %.not.i149 = icmp eq ptr %.pr171, null
  br i1 %.not.i149, label %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit151, label %_ZNKSt14default_deleteIN6duckdb21ColumnCheckpointStateEEclEPS1_.exit.i150

_ZNKSt14default_deleteIN6duckdb21ColumnCheckpointStateEEclEPS1_.exit.i150: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit148
  %i.nv = load ptr, ptr %.pr171, align 8, !tbaa !12
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 8
  %i.nx = load ptr, ptr %i.nw, align 8
  call void %i.nx(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %.pr171) #37, !inline_history !1295
  br label %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit151

_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit151: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit148.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit148, %_ZNKSt14default_deleteIN6duckdb21ColumnCheckpointStateEEclEPS1_.exit.i150
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  %i.ny = load ptr, ptr %5, align 8, !tbaa !4127
  store ptr null, ptr %5, align 8, !tbaa !4127
  store ptr %i.ny, ptr %0, align 8, !tbaa !2019
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %11) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  br label %bb.de

bb.cr:                                            ; preds = %bb.bg
  %i.nz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.cs:                                            ; preds = %bb.bh
  %i.oa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #37
  br label %bb.dd

bb.ct:                                            ; preds = %bb.bi
  %i.ob = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.cu:                                            ; preds = %bb.bj
  %i.oc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb10shared_ptrINS0_10ColumnDataELb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %13) #37
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.pn56 = phi { ptr, i32 } [ %i.oc, %bb.cu ], [ %i.ob, %bb.ct ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  br label %bb.dc

bb.cw:                                            ; preds = %bb.bz, %_ZNSt6vectorIN6duckdb10shared_ptrINS0_10ColumnDataELb1EEESaIS3_EED2Ev.exit
  %i.od = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.cx:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit132, %bb.cc, %bb.cb, %bb.ca
  %i.oe = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.cy:                                            ; preds = %bb.cf, %bb.ce, %bb.cd
  %i.of = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit154

bb.cz:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i115, %bb.ci
  %i.og = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oh = load ptr, ptr %14, align 8, !tbaa !963  ; 3 uses
  %.not.i152 = icmp eq ptr %i.oh, null
  br i1 %.not.i152, label %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit154, label %_ZNKSt14default_deleteIN6duckdb21ColumnCheckpointStateEEclEPS1_.exit.i153

_ZNKSt14default_deleteIN6duckdb21ColumnCheckpointStateEEclEPS1_.exit.i153: ; preds = %bb.cz
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !12
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 8
  %i.ok = load ptr, ptr %i.oj, align 8
  call void %i.ok(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.oh) #37, !inline_history !1295
  br label %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit154

_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit154: ; preds = %_ZNKSt14default_deleteIN6duckdb21ColumnCheckpointStateEEclEPS1_.exit.i153, %bb.cz, %bb.cy
  %.pn58 = phi { ptr, i32 } [ %i.of, %bb.cy ], [ %i.og, %bb.cz ], [ %i.og, %_ZNKSt14default_deleteIN6duckdb21ColumnCheckpointStateEEclEPS1_.exit.i153 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  br label %bb.dc

bb.da:                                            ; preds = %bb.cm, %bb.cl, %bb.ck
  %i.ol = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit157

bb.db:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i134, %bb.cp
  %i.om = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.on = load ptr, ptr %15, align 8, !tbaa !963  ; 3 uses
  %.not.i155 = icmp eq ptr %i.on, null
  br i1 %.not.i155, label %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit157, label %_ZNKSt14default_deleteIN6duckdb21ColumnCheckpointStateEEclEPS1_.exit.i156

_ZNKSt14default_deleteIN6duckdb21ColumnCheckpointStateEEclEPS1_.exit.i156: ; preds = %bb.db
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !12
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  %i.oq = load ptr, ptr %i.op, align 8
  call void %i.oq(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.on) #37, !inline_history !1295
  br label %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit157

_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit157: ; preds = %_ZNKSt14default_deleteIN6duckdb21ColumnCheckpointStateEEclEPS1_.exit.i156, %bb.db, %bb.da
  %.pn60 = phi { ptr, i32 } [ %i.ol, %bb.da ], [ %i.om, %bb.db ], [ %i.om, %_ZNKSt14default_deleteIN6duckdb21ColumnCheckpointStateEEclEPS1_.exit.i156 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  br label %bb.dc

bb.dc:                                            ; preds = %bb.cw, %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit157, %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit154, %bb.cx, %bb.cv
  %.pn60.pn.pn.pn = phi { ptr, i32 } [ %.pn56, %bb.cv ], [ %i.od, %bb.cw ], [ %.pn60, %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit157 ], [ %i.oe, %bb.cx ], [ %.pn58, %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit154 ]
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %11) #37
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.cs, %bb.cr
  %.pn60.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn60.pn.pn.pn, %bb.dc ], [ %i.oa, %bb.cs ], [ %i.nz, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  br label %bb.df

bb.de:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EED2Ev.exit151, %bb.bf
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  %i.or = load ptr, ptr %5, align 8, !tbaa !4127  ; 3 uses
end_hunk_13
begin_hunk_14_@_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_:bb.a
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #41
  unreachable

bb.n:                                             ; preds = %_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE13_M_deallocateEPS1_m.exit
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN6duckdb11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1282   ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !93   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb11SegmentNodeINS0_8RowGroupEEEEclEPS3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.d, align 8, !tbaa !94
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !96
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #37, !inline_history !4820
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #37, !inline_history !4820
  br label %_ZNKSt14default_deleteIN6duckdb11SegmentNodeINS0_8RowGroupEEEEclEPS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98
  %.not.i.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.g, %bb.f ], [ %i.q, %bb.g ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.r, label %bb.h, label %_ZNKSt14default_deleteIN6duckdb11SegmentNodeINS0_8RowGroupEEEEclEPS3_.exit, !prof !99

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #37
  br label %_ZNKSt14default_deleteIN6duckdb11SegmentNodeINS0_8RowGroupEEEEclEPS3_.exit

_ZNKSt14default_deleteIN6duckdb11SegmentNodeINS0_8RowGroupEEEEclEPS3_.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.h
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #39
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt14default_deleteIN6duckdb11SegmentNodeINS0_8RowGroupEEEEclEPS3_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 1 dereferenceable(1) ptr @_ZNK6duckdb10unique_ptrIA_bSt14default_deleteIS1_ELb1EEixEm(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.17", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !3554   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrIA_bSt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !99

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.157, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !35     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #37
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrIA_bSt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %1
  ret ptr %i.h
}

declare void @_ZN6duckdb15TableDataWriter18CreateTaskExecutorEv(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.1969") align 8, ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3393 ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !3394   ; 11 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !4821
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.d
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not28.i = icmp ult i64 %i.n, %i.i
  br i1 %.not28.i, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i: ; preds = %bb.b
  %i.r = shl nuw nsw i64 %i.i, 3                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.r, i1 false), !tbaa !2215
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !3393
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.p, %i.i
  br i1 %i.s, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.182) #40
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #38 ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  %i.y = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.x, i8 0, i64 %i.y, i1 false), !tbaa !2215
  %.not10.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %2 = sub i64 %i.d, %i.e
  %3 = add i64 %2, -8                             ; 2 uses
  %i.z = lshr i64 %3, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %3, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader20, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ab = add i64 %i.d, -8
  %i.ac = sub i64 %i.ab, %i.e
  %i.ad = and i64 %i.ac, -8
  %i.ae = add i64 %i.ad, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.ae
  %scevgep16 = getelementptr i8, ptr %i.c, i64 %i.ae
  %bound0 = icmp ult ptr %i.w, %scevgep16
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader20, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.w, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.c, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ai ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.c, i64 %i.ai ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4822)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4825)
  %i.aj = getelementptr i8, ptr %next.gep17, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep17, align 8, !tbaa !3478, !alias.scope !4827, !noalias !4822
  %wide.load18 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !3478, !alias.scope !4827, !noalias !4822
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !3478, !alias.scope !4830, !noalias !4827
  store <2 x i64> %wide.load18, ptr %i.ak, align 8, !tbaa !3478, !alias.scope !4830, !noalias !4827
  %i.al = getelementptr i8, ptr %next.gep17, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep17, align 8, !tbaa !3478, !alias.scope !4827, !noalias !4822
  store <2 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !3478, !alias.scope !4827, !noalias !4822
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !4832

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader20

.lr.ph.i.i.i.i.i.preheader20:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader20, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4822)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4825)
  %i.an = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !3478, !alias.scope !4825, !noalias !4822
  store i64 %i.an, ptr %.012.i.i.i.i.i, align 8, !tbaa !3478, !alias.scope !4822, !noalias !4825
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !3478, !alias.scope !4825, !noalias !4822
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !4833

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %.not.i35.i = icmp eq ptr %i.c, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #39
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i: ; preds = %bb.e, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !3394
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.i
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !3393
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !4821
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.f:                                             ; preds = %bb.a
  %i.as = icmp ult i64 %1, %i.g
  br i1 %i.as, label %bb.g, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1 ; 3 uses
  %.not.i4 = icmp eq ptr %i.b, %i.at
  br i1 %.not.i4, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ay, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.at, %bb.g ] ; 2 uses
  %i.au = load ptr, ptr %.05.i.i.i, align 8, !tbaa !3478 ; 3 uses
  %.not.i.i.i.i.i5 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i5, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb14RowGroupWriterEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb14RowGroupWriterEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !12
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.au) #37, !inline_history !4834
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb14RowGroupWriterEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ay, %i.b
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !3574

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  store ptr %i.at, ptr %i.a, align 8, !tbaa !3393
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.g, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i, %_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEESaIS7_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2946 ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !2947   ; 11 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !3263
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.d
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not28.i = icmp ult i64 %i.n, %i.i
  br i1 %.not28.i, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEEmS7_ET_S9_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEEmS7_ET_S9_T0_RSaIT1_E.exit.i: ; preds = %bb.b
  %i.r = shl nuw nsw i64 %i.i, 3                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.r, i1 false), !tbaa !4835
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !2946
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEESaIS7_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.p, %i.i
  br i1 %i.s, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEESaIS7_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.182) #40
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEESaIS7_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #38 ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  %i.y = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.x, i8 0, i64 %i.y, i1 false), !tbaa !4835
  %.not10.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEESaIS7_EE12_M_check_lenEmPKc.exit.i
  %2 = sub i64 %i.d, %i.e
  %3 = add i64 %2, -8                             ; 2 uses
  %i.z = lshr i64 %3, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %3, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader21, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ab = add i64 %i.d, -8
  %i.ac = sub i64 %i.ab, %i.e
  %i.ad = and i64 %i.ac, -8
  %i.ae = add i64 %i.ad, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.ae
  %scevgep17 = getelementptr i8, ptr %i.c, i64 %i.ae
  %bound0 = icmp ult ptr %i.w, %scevgep17
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader21, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.w, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.c, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ai ; 2 uses
  %next.gep18 = getelementptr i8, ptr %i.c, i64 %i.ai ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4837)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4840)
  %i.aj = getelementptr i8, ptr %next.gep18, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep18, align 8, !tbaa !1282, !alias.scope !4842, !noalias !4837
  %wide.load19 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !1282, !alias.scope !4842, !noalias !4837
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1282, !alias.scope !4845, !noalias !4842
  store <2 x i64> %wide.load19, ptr %i.ak, align 8, !tbaa !1282, !alias.scope !4845, !noalias !4842
  %i.al = getelementptr i8, ptr %next.gep18, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep18, align 8, !tbaa !1282, !alias.scope !4842, !noalias !4837
  store <2 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !1282, !alias.scope !4842, !noalias !4837
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !4847

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit.i, label %.lr.ph.i.i.i.i.i.preheader21

.lr.ph.i.i.i.i.i.preheader21:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader21, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader21 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader21 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4837)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4840)
  %i.an = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !1282, !alias.scope !4840, !noalias !4837
  store i64 %i.an, ptr %.012.i.i.i.i.i, align 8, !tbaa !1282, !alias.scope !4837, !noalias !4840
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !1282, !alias.scope !4840, !noalias !4837
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !4848

_ZNSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEESaIS7_EE12_M_check_lenEmPKc.exit.i
  %.not.i35.i = icmp eq ptr %i.c, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEESaIS7_EE13_M_deallocateEPS7_m.exit36.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #39
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEESaIS7_EE13_M_deallocateEPS7_m.exit36.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEESaIS7_EE13_M_deallocateEPS7_m.exit36.i: ; preds = %bb.e, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !2947
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.i
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !2946
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !3263
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEESaIS7_EE17_M_default_appendEm.exit

bb.f:                                             ; preds = %bb.a
  %i.as = icmp ult i64 %1, %i.g
  br i1 %i.as, label %bb.g, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEESaIS7_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1 ; 3 uses
  %.not.i4 = icmp eq ptr %i.b, %i.at
  br i1 %.not.i4, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEESaIS7_EE17_M_default_appendEm.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bm, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEEEvPT_.exit.i.i.i ], [ %i.at, %bb.g ] ; 2 uses
  %i.au = load ptr, ptr %.05.i.i.i, align 8, !tbaa !1282 ; 3 uses
  %.not.i.i.i.i.i5 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i5, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEEEvPT_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !93 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb11SegmentNodeINS0_8RowGroupEEEEclEPS3_.exit.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 4 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 4294967297
  %i.ba = trunc i64 %i.ay to i32                  ; 2 uses
  br i1 %i.az, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ax, align 8, !tbaa !94
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i32 0, ptr %i.bb, align 4, !tbaa !96
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !12
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  tail call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #37, !inline_history !4849
  %i.bf = load ptr, ptr %i.aw, align 8, !tbaa !12
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #37, !inline_history !4849
  br label %_ZNKSt14default_deleteIN6duckdb11SegmentNodeINS0_8RowGroupEEEEclEPS3_.exit.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.bi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = add nsw i32 %i.ba, -1
  store i32 %i.bj, ptr %i.ax, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bk = atomicrmw volatile add ptr %i.ax, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ba, %bb.l ], [ %i.bk, %bb.m ]
  %i.bl = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bl, label %bb.n, label %_ZNKSt14default_deleteIN6duckdb11SegmentNodeINS0_8RowGroupEEEEclEPS3_.exit.i.i.i.i.i, !prof !99

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #37
  br label %_ZNKSt14default_deleteIN6duckdb11SegmentNodeINS0_8RowGroupEEEEclEPS3_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb11SegmentNodeINS0_8RowGroupEEEEclEPS3_.exit.i.i.i.i.i: ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.j, %bb.h
  tail call void @_ZdlPv(ptr noundef nonnull %i.au) #39
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb11SegmentNodeINS0_8RowGroupEEEEclEPS3_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bm, %i.b
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !3256

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEEEvPT_.exit.i.i.i
  store ptr %i.at, ptr %i.a, align 8, !tbaa !2946
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEESaIS7_EE17_M_default_appendEm.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEESaIS7_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEES7_EvT_S9_RSaIT0_E.exit.i, %bb.g, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEESaIS7_EE13_M_deallocateEPS7_m.exit36.i, %_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEEmS7_ET_S9_T0_RSaIT1_E.exit.i, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !3394   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3393 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !3478 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb14RowGroupWriterEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN6duckdb14RowGroupWriterEEclEPS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.d) #37, !inline_history !4850
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb14RowGroupWriterEEclEPS1_.exit.i.i.i.i, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !3574

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !3394
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.i = phi ptr [ %.pr, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.b

end_hunk_14
begin_hunk_15_@_ZNK6duckdb11SegmentTreeINS_13ColumnSegmentELb0EE21AppendSegmentInternalERNS_11SegmentLockENS_10shared_ptrIS1_Lb1EEE:bb.a
bb.a:
  %3 = alloca %"class.duckdb::shared_ptr.244", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !838
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !838
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load i64, ptr %i.f, align 8, !tbaa !5012
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_11SegmentNodeINS_13ColumnSegmentEEESt14default_deleteIS4_ELb1EEELb1ESaIS7_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.i = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_11SegmentNodeINS_13ColumnSegmentEEESt14default_deleteIS3_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h) ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !778
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = tail call noundef nonnull align 8 dereferenceable(240) ptr @_ZNK6duckdb10shared_ptrINS_13ColumnSegmentELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k)
  %i.m = load atomic i64, ptr %i.l seq_cst, align 8
  %i.n = add i64 %i.m, %i.j
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.g, %bb.b ], [ %i.n, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load <2 x ptr>, ptr %2, align 8, !tbaa !309
  store ptr null, ptr %i.o, align 8, !tbaa !93
  store <2 x ptr> %i.p, ptr %3, align 16, !tbaa !309
  store ptr null, ptr %2, align 8, !tbaa !666
  invoke void @_ZNK6duckdb11SegmentTreeINS_13ColumnSegmentELb0EE21AppendSegmentInternalERNS_11SegmentLockENS_10shared_ptrIS1_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %3, i64 noundef %.0)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !93   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_13ColumnSegmentELb1EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.s, align 8, !tbaa !94
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !96
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #37, !inline_history !656
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #37, !inline_history !656
  br label %_ZN6duckdb10shared_ptrINS_13ColumnSegmentELb1EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98
  %.not.i.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.af = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.v, %bb.i ], [ %i.af, %bb.j ]
  %i.ag = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ag, label %bb.k, label %_ZN6duckdb10shared_ptrINS_13ColumnSegmentELb1EED2Ev.exit, !prof !99

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #37
  br label %_ZN6duckdb10shared_ptrINS_13ColumnSegmentELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_13ColumnSegmentELb1EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  ret void

bb.l:                                             ; preds = %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13ColumnSegmentELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #37
  resume { ptr, i32 } %i.ah
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb11SegmentTreeINS_13ColumnSegmentELb0EE21AppendSegmentInternalERNS_11SegmentLockENS_10shared_ptrIS1_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::unique_ptr.2311", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !776
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !777
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5013)
  %i.i = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #38, !noalias !5013 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load <2 x ptr>, ptr %2, align 8, !tbaa !309, !noalias !5013
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !noalias !5013
  store i64 %3, ptr %i.i, align 8, !tbaa !778, !noalias !5013
  store <2 x ptr> %i.k, ptr %i.j, align 8, !tbaa !309, !noalias !5013
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr null, ptr %i.l, align 8, !tbaa !5016, !noalias !5013
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 %i.h, ptr %i.m, align 8, !tbaa !770, !noalias !5013
  store ptr %i.i, ptr %4, align 8, !tbaa !757, !alias.scope !5013
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !838
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !838  ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_11SegmentNodeINS_13ColumnSegmentEEESt14default_deleteIS4_ELb1EEELb1ESaIS7_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.r = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_11SegmentNodeINS_13ColumnSegmentEEESt14default_deleteIS3_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.s = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNK6duckdb10unique_ptrINS_11SegmentNodeINS_13ColumnSegmentEEESt14default_deleteIS3_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store atomic ptr %i.s, ptr %i.t seq_cst, align 8
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !776
  br label %bb.g

bb.f:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_13ColumnSegmentEEESt14default_deleteIS4_ELb1EEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.i, %bb.d, %bb.c, %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb11SegmentNodeINS0_13ColumnSegmentEEESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  resume { ptr, i32 } %i.u

bb.g:                                             ; preds = %bb.e, %bb.a
  %i.v = phi ptr [ %.pre, %bb.e ], [ %i.o, %bb.a ] ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !5017
  %.not.i.i = icmp eq ptr %i.v, %i.x
  br i1 %.not.i.i, label %bb.h, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_13ColumnSegmentEEESt14default_deleteIS4_ELb1EEESaIS7_EE9push_backEOS7_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_13ColumnSegmentEEESt14default_deleteIS4_ELb1EEESaIS7_EE9push_backEOS7_.exit.thread: ; preds = %bb.g
  %i.y = load i64, ptr %4, align 8, !tbaa !757
  store i64 %i.y, ptr %i.v, align 8, !tbaa !757
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.z, ptr %i.b, align 8, !tbaa !776
  br label %_ZNSt10unique_ptrIN6duckdb11SegmentNodeINS0_13ColumnSegmentEEESt14default_deleteIS3_EED2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !777 ; 10 uses
  %i.ab = ptrtoint ptr %i.v to i64                ; 3 uses
  %i.ac = ptrtoint ptr %i.aa to i64               ; 3 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 3 uses
  %i.ae = icmp eq i64 %i.ad, 9223372036854775800
  br i1 %i.ae, label %bb.i, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_13ColumnSegmentEEESt14default_deleteIS4_ELb1EEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.164) #40
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_13ColumnSegmentEEESt14default_deleteIS4_ELb1EEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.af = ashr exact i64 %i.ad, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ag = add nsw i64 %.sroa.speculated.i.i.i.i, %i.af ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  %i.ai = call i64 @llvm.umin.i64(i64 %i.ag, i64 1152921504606846975)
  %i.aj = select i1 %i.ah, i64 1152921504606846975, i64 %i.ai ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #38
          to label %.noexc2 unwind label %bb.f    ; 10 uses

.noexc2:                                          ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_13ColumnSegmentEEESt14default_deleteIS4_ELb1EEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ad
  %i.an = load i64, ptr %4, align 8, !tbaa !757
  store i64 %i.an, ptr %i.am, align 8, !tbaa !757
  store ptr null, ptr %4, align 8, !tbaa !757
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.aa, %i.v
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_13ColumnSegmentEEESt14default_deleteIS4_ELb1EEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc2
  %5 = sub i64 %i.ab, %i.ac
  %6 = add i64 %5, -8                             ; 2 uses
  %i.ao = lshr i64 %6, 3
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader14, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.aq = add i64 %i.ab, -8
  %i.ar = sub i64 %i.aq, %i.ac
  %i.as = and i64 %i.ar, -8
  %i.at = add i64 %i.as, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.al, i64 %i.at
  %scevgep10 = getelementptr i8, ptr %i.aa, i64 %i.at
  %bound0 = icmp ult ptr %i.al, %scevgep10
  %bound1 = icmp ult ptr %i.aa, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader14, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ap, 4611686018427387900     ; 3 uses
  %i.au = shl i64 %n.vec, 3                       ; 2 uses
  %i.av = getelementptr i8, ptr %i.al, i64 %i.au  ; 2 uses
  %i.aw = getelementptr i8, ptr %i.aa, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.ax ; 2 uses
  %next.gep11 = getelementptr i8, ptr %i.aa, i64 %i.ax ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5018)
  call void @llvm.experimental.noalias.scope.decl(metadata !5021)
  %i.ay = getelementptr i8, ptr %next.gep11, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep11, align 8, !tbaa !757, !alias.scope !5023, !noalias !5018
  %wide.load12 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !757, !alias.scope !5023, !noalias !5018
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !757, !alias.scope !5026, !noalias !5023
  store <2 x i64> %wide.load12, ptr %i.az, align 8, !tbaa !757, !alias.scope !5026, !noalias !5023
  %i.ba = getelementptr i8, ptr %next.gep11, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep11, align 8, !tbaa !757, !alias.scope !5023, !noalias !5018
  store <2 x ptr> splat (ptr null), ptr %i.ba, align 8, !tbaa !757, !alias.scope !5023, !noalias !5018
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !5028

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_13ColumnSegmentEEESt14default_deleteIS4_ELb1EEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader14

.lr.ph.i.i.i.i.i.i.i.preheader14:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.al, %vector.memcheck ], [ %i.al, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.aa, %vector.memcheck ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader14, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader14 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader14 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5018)
  call void @llvm.experimental.noalias.scope.decl(metadata !5021)
  %i.bc = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !757, !alias.scope !5021, !noalias !5018
  store i64 %i.bc, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !757, !alias.scope !5018, !noalias !5021
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !757, !alias.scope !5021, !noalias !5018
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bd, %i.v
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_13ColumnSegmentEEESt14default_deleteIS4_ELb1EEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !5029

_ZNSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_13ColumnSegmentEEESt14default_deleteIS4_ELb1EEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc2
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.al, %.noexc2 ], [ %i.av, %middle.block ], [ %i.be, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_13ColumnSegmentEEESt14default_deleteIS4_ELb1EEESaIS7_EE9push_backEOS7_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_13ColumnSegmentEEESt14default_deleteIS4_ELb1EEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.aa) #39
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_13ColumnSegmentEEESt14default_deleteIS4_ELb1EEESaIS7_EE9push_backEOS7_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_13ColumnSegmentEEESt14default_deleteIS4_ELb1EEESaIS7_EE9push_backEOS7_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_13ColumnSegmentEEESt14default_deleteIS4_ELb1EEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i, %bb.j
  store ptr %i.al, ptr %i.a, align 8, !tbaa !777
  store ptr %i.bf, ptr %i.b, align 8, !tbaa !776
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.bg, ptr %i.w, align 8, !tbaa !5017
  %.pr = load ptr, ptr %4, align 8, !tbaa !757    ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb11SegmentNodeINS0_13ColumnSegmentEEESt14default_deleteIS3_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_13ColumnSegmentEEESt14default_deleteIS4_ELb1EEESaIS7_EE9push_backEOS7_.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %.pr, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !93 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb11SegmentNodeINS0_13ColumnSegmentEEEEclEPS3_.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 4 uses
  %i.bk = load atomic i64, ptr %i.bj acquire, align 8 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 4294967297
  %i.bm = trunc i64 %i.bk to i32                  ; 2 uses
  br i1 %i.bl, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.bj, align 8, !tbaa !94
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  store i32 0, ptr %i.bn, align 4, !tbaa !96
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !12
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #37, !inline_history !5030
  %i.br = load ptr, ptr %i.bi, align 8, !tbaa !12
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #37, !inline_history !5030
  br label %_ZNKSt14default_deleteIN6duckdb11SegmentNodeINS0_13ColumnSegmentEEEEclEPS3_.exit.i

bb.n:                                             ; preds = %bb.l
  %i.bu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98
  %.not.i.i.i.i.i.i.i3 = icmp eq i8 %i.bu, 0
  br i1 %.not.i.i.i.i.i.i.i3, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = add nsw i32 %i.bm, -1
  store i32 %i.bv, ptr %i.bj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.bw = atomicrmw volatile add ptr %i.bj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.bm, %bb.o ], [ %i.bw, %bb.p ]
  %i.bx = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.bx, label %bb.q, label %_ZNKSt14default_deleteIN6duckdb11SegmentNodeINS0_13ColumnSegmentEEEEclEPS3_.exit.i, !prof !99

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #37
  br label %_ZNKSt14default_deleteIN6duckdb11SegmentNodeINS0_13ColumnSegmentEEEEclEPS3_.exit.i

_ZNKSt14default_deleteIN6duckdb11SegmentNodeINS0_13ColumnSegmentEEEEclEPS3_.exit.i: ; preds = %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.m, %bb.k
  call void @_ZdlPv(ptr noundef nonnull %.pr) #39
  br label %_ZNSt10unique_ptrIN6duckdb11SegmentNodeINS0_13ColumnSegmentEEESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb11SegmentNodeINS0_13ColumnSegmentEEESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_13ColumnSegmentEEESt14default_deleteIS4_ELb1EEESaIS7_EE9push_backEOS7_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_13ColumnSegmentEEESt14default_deleteIS4_ELb1EEESaIS7_EE9push_backEOS7_.exit, %_ZNKSt14default_deleteIN6duckdb11SegmentNodeINS0_13ColumnSegmentEEEEclEPS3_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb12optional_ptrINS_19CollectionScanStateELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.17", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1281
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.158, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !35     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #37
  br label %bb.h

end_hunk_15
begin_hunk_16_@_ZN6duckdb25ListColumnCheckpointState16ToPersistentDataEv:bb.a

bb.n:                                             ; preds = %bb.f, %_ZN6duckdb21ColumnCheckpointState16ToPersistentDataEv.exit
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb20PersistentColumnDataD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %2) #37
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.cc, %bb.o ], [ %i.cb, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %bb.t

bb.q:                                             ; preds = %bb.j, %_ZNSt6vectorIN6duckdb20PersistentColumnDataESaIS1_EE9push_backEOS1_.exit
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.m
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb20PersistentColumnDataD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %3) #37
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn7 = phi { ptr, i32 } [ %i.ce, %bb.r ], [ %i.cd, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p
  %.pn7.pn = phi { ptr, i32 } [ %.pn7, %bb.s ], [ %.pn, %bb.p ]
  call void @_ZN6duckdb20PersistentColumnDataD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) #37
  resume { ptr, i32 } %.pn7.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb15make_shared_ptrINS_14ListColumnDataEJRNS_12BlockManagerERNS_13DataTableInfoERKmRKNS_11LogicalTypeENS_14ColumnDataTypeEDnEEENS_10shared_ptrIT_Lb1EEEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.duckdb::shared_ptr.1097") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(256) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.duckdb::LogicalType", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(344) ptr @_Znwm(i64 noundef 344) #38, !noalias !5127, !inline_history !5130 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 8 uses
  store i32 1, ptr %i.b, align 8, !tbaa !94, !noalias !5127
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !96, !noalias !5127
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6duckdb14ListColumnDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !12, !noalias !5127
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !5127
  %i.e = load i64, ptr %3, align 8, !tbaa !24, !noalias !5127
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %.noexc.i.i.i.i unwind label %bb.b, !noalias !5127, !inline_history !5131

.noexc.i.i.i.i:                                   ; preds = %bb.a
  %i.f = load i32, ptr %5, align 4, !tbaa !1598, !noalias !5127
  invoke void @_ZN6duckdb14ListColumnDataC1ERNS_12BlockManagerERNS_13DataTableInfoEmNS_11LogicalTypeENS_14ColumnDataTypeENS_12optional_ptrINS_10ColumnDataELb1EEE(ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(256) %2, i64 noundef %i.e, ptr noundef nonnull %7, i32 noundef %i.f, i64 0)
          to label %bb.c unwind label %.body.i.i.i.i.i, !noalias !5127, !inline_history !5132

.body.i.i.i.i.i:                                  ; preds = %.noexc.i.i.i.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #37, !noalias !5127, !inline_history !5132
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb14ListColumnDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit15.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb14ListColumnDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit15.i.i.i.i

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb14ListColumnDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit15.i.i.i.i: ; preds = %bb.b, %.body.i.i.i.i.i
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.g, %.body.i.i.i.i.i ]
  call void @_ZdlPv(ptr noundef nonnull %i.a) #39, !noalias !5127, !inline_history !5130
  resume { ptr, i32 } %eh.lpad-body.i.i.i.i

bb.c:                                             ; preds = %.noexc.i.i.i.i
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #37, !noalias !5127, !inline_history !5132
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !5127
  store ptr %i.d, ptr %0, align 8, !tbaa !1719
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.i, align 8, !tbaa !93
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98
  %.not.i.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %i.b, align 8, !tbaa !3
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.b, align 8, !tbaa !3
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = atomicrmw volatile add ptr %i.b, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !1719
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = phi ptr [ %.pre.i, %bb.e ], [ %i.d, %bb.d ] ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %spec.select.i = select i1 %i.o, ptr null, ptr %i.p
  call void @_ZN6duckdb10shared_ptrINS_14ListColumnDataELb1EE18__enable_weak_thisINS_10ColumnDataES1_TnNSt9enable_ifIXsr3std14is_convertibleIPT0_PKNS_23enable_shared_from_thisIT_EEEE5valueEiE4typeELi0EEEvSC_S7_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %spec.select.i, ptr noundef %i.n) #37
  %i.q = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.b, align 8, !tbaa !94
  store i32 0, ptr %i.c, align 4, !tbaa !96
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #37, !inline_history !1722
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #37, !inline_history !1722
  br label %_ZNSt12__shared_ptrIN6duckdb14ListColumnDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98
  %.not.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = add nsw i32 %i.s, -1
  store i32 %i.aa, ptr %i.b, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ab = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.s, %bb.i ], [ %i.ab, %bb.j ]
  %i.ac = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ac, label %bb.k, label %_ZNSt12__shared_ptrIN6duckdb14ListColumnDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !99

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #37
  br label %_ZNSt12__shared_ptrIN6duckdb14ListColumnDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6duckdb14ListColumnDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  ret void
}

declare void @_ZN6duckdb9ListStats13SetChildStatsERNS_14BaseStatisticsENS_10unique_ptrIS1_St14default_deleteIS1_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN6duckdb18SchemaCatalogEntryEEZNS0_20InMemoryCheckpointer16CreateCheckpointEvE3$_0E9_M_invokeERKSt9_Any_dataS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(248) %1) #1 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !5133  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !5135 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !5136
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %1 to i64
  store i64 %i.e, ptr %i.b, align 8
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !5135
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.a, align 8, !tbaa !5135
  br label %"_ZSt10__invoke_rIvRZN6duckdb20InMemoryCheckpointer16CreateCheckpointEvE3$_0JRNS0_18SchemaCatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueES7_E4typeEOT0_DpOT1_.exit"

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %.val, align 8, !tbaa !2182 ; 7 uses
  %i.i = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.164) #40
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.m = ashr exact i64 %i.k, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #38 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.k
  %i.u = ptrtoint ptr %1 to i64
  store i64 %i.u, ptr %i.t, align 8
  %.not10.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, %i.b
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.v = ptrtoaddr ptr %i.s to i64
  %2 = sub i64 %i.i, %i.j
  %3 = add i64 %2, -8                             ; 2 uses
  %i.w = lshr i64 %3, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %3, 72
  %i.y = sub i64 %i.j, %i.v
  %diff.check = icmp ugt i64 %i.y, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.x, 4611686018427387900      ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %i.aa = getelementptr i8, ptr %i.s, i64 %i.z    ; 2 uses
  %i.ab = getelementptr i8, ptr %i.h, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ac ; 2 uses
  %next.gep4 = getelementptr i8, ptr %i.h, i64 %i.ac ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5140)
  %i.ad = getelementptr i8, ptr %next.gep4, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep4, align 8, !alias.scope !5140, !noalias !5137
  %wide.load5 = load <2 x i64>, ptr %i.ad, align 8, !alias.scope !5140, !noalias !5137
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !5137, !noalias !5140
  store <2 x i64> %wide.load5, ptr %i.ae, align 8, !alias.scope !5137, !noalias !5140
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !5142

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  %.0911.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5140)
  %i.ag = load i64, ptr %.0911.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !5140, !noalias !5137
  store i64 %i.ag, ptr %.012.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !5137, !noalias !5140
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ah, %i.b
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !5143

_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.s, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ], [ %i.aa, %middle.block ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i23.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #39
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.e, %_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  store ptr %i.s, ptr %.val, align 8, !tbaa !2182
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !5135
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.ak, ptr %i.c, align 8, !tbaa !5136
  br label %"_ZSt10__invoke_rIvRZN6duckdb20InMemoryCheckpointer16CreateCheckpointEvE3$_0JRNS0_18SchemaCatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueES7_E4typeEOT0_DpOT1_.exit"

"_ZSt10__invoke_rIvRZN6duckdb20InMemoryCheckpointer16CreateCheckpointEvE3$_0JRNS0_18SchemaCatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueES7_E4typeEOT0_DpOT1_.exit": ; preds = %bb.b, %_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN6duckdb18SchemaCatalogEntryEEZNS0_20InMemoryCheckpointer16CreateCheckpointEvE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb20InMemoryCheckpointer16CreateCheckpointEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN6duckdb20InMemoryCheckpointer16CreateCheckpointEvE3$_0", ptr %0, align 8, !tbaa !4972
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb20InMemoryCheckpointer16CreateCheckpointEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !309
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb20InMemoryCheckpointer16CreateCheckpointEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !2146
  store i64 %.val.i, ptr %0, align 8, !tbaa !2146
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb20InMemoryCheckpointer16CreateCheckpointEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6duckdb20InMemoryCheckpointer16CreateCheckpointEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_20InMemoryCheckpointer16CreateCheckpointEvE3$_1E9_M_invokeERKSt9_Any_dataS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(240) %1) #1 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !5144
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.b, label %"_ZSt10__invoke_rIvRZN6duckdb20InMemoryCheckpointer16CreateCheckpointEvE3$_1JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueES7_E4typeEOT0_DpOT1_.exit"

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !5145 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !5146
  %.not.i.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = ptrtoint ptr %1 to i64
  store i64 %i.h, ptr %i.e, align 8
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !5145
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.j, ptr %i.d, align 8, !tbaa !5145
  br label %"_ZSt10__invoke_rIvRZN6duckdb20InMemoryCheckpointer16CreateCheckpointEvE3$_1JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueES7_E4typeEOT0_DpOT1_.exit"

bb.d:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %.val, align 8, !tbaa !2180 ; 7 uses
  %i.l = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.e, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb17TableCatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.164) #40
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb17TableCatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #38 ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  %i.x = ptrtoint ptr %1 to i64
  store i64 %i.x, ptr %i.w, align 8
  %.not10.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, %i.e
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb17TableCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb17TableCatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.y = ptrtoaddr ptr %i.v to i64
  %2 = sub i64 %i.l, %i.m
  %3 = add i64 %2, -8                             ; 2 uses
  %i.z = lshr i64 %3, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %3, 72
  %i.ab = sub i64 %i.m, %i.y
  %diff.check = icmp ugt i64 %i.ab, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.ac = shl i64 %n.vec, 3                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.v, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.k, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.af ; 2 uses
  %next.gep4 = getelementptr i8, ptr %i.k, i64 %i.af ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5150)
  %i.ag = getelementptr i8, ptr %next.gep4, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep4, align 8, !alias.scope !5150, !noalias !5147
  %wide.load5 = load <2 x i64>, ptr %i.ag, align 8, !alias.scope !5150, !noalias !5147
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !5147, !noalias !5150
  store <2 x i64> %wide.load5, ptr %i.ah, align 8, !alias.scope !5147, !noalias !5150
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !5152

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb17TableCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.0911.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5150)
  %i.aj = load i64, ptr %.0911.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !5150, !noalias !5147
  store i64 %i.aj, ptr %.012.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !5147, !noalias !5150
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ak, %i.e
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb17TableCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !5153

_ZNSt6vectorISt17reference_wrapperIN6duckdb17TableCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb17TableCatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.v, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb17TableCatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ], [ %i.ad, %middle.block ], [ %i.al, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb17TableCatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb17TableCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #39
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb17TableCatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb17TableCatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorISt17reference_wrapperIN6duckdb17TableCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  store ptr %i.v, ptr %.val, align 8, !tbaa !2180
  store ptr %i.am, ptr %i.d, align 8, !tbaa !5145
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.an, ptr %i.f, align 8, !tbaa !5146
  br label %"_ZSt10__invoke_rIvRZN6duckdb20InMemoryCheckpointer16CreateCheckpointEvE3$_1JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueES7_E4typeEOT0_DpOT1_.exit"

"_ZSt10__invoke_rIvRZN6duckdb20InMemoryCheckpointer16CreateCheckpointEvE3$_1JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueES7_E4typeEOT0_DpOT1_.exit": ; preds = %bb.a, %bb.c, %_ZNSt6vectorISt17reference_wrapperIN6duckdb17TableCatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_20InMemoryCheckpointer16CreateCheckpointEvE3$_1E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb20InMemoryCheckpointer16CreateCheckpointEvE3$_1E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN6duckdb20InMemoryCheckpointer16CreateCheckpointEvE3$_1", ptr %0, align 8, !tbaa !4972
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb20InMemoryCheckpointer16CreateCheckpointEvE3$_1E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !309
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb20InMemoryCheckpointer16CreateCheckpointEvE3$_1E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !2157
  store i64 %.val.i, ptr %0, align 8, !tbaa !2157
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb20InMemoryCheckpointer16CreateCheckpointEvE3$_1E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6duckdb20InMemoryCheckpointer16CreateCheckpointEvE3$_1E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb12optional_ptrINS_15DuckTransactionELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.17", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1156
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.158, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !35     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #37
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
define linkonce_odr void @_ZNK6duckdb12optional_ptrINS_10UpdateInfoELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.17", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1153
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.158, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
end_hunk_16
begin_hunk_17_@_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb8RowGroupESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRNS0_18RowGroupCollectionENS0_15RowGroupPointerEEEES2_DpOT_:bb.a
bb.b:                                             ; preds = %bb.a
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !1276 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZdlPv(ptr noundef nonnull %i.y) #39
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i:                ; preds = %bb.c, %bb.b
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !2315 ; 2 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i1.i.i, label %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EED2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.z) #39
  br label %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EED2Ev.exit.i.i

_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EED2Ev.exit.i.i: ; preds = %bb.d, %_ZNSt6vectorImSaImEED2Ev.exit.i.i
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !2315 ; 2 uses
  %.not.i.i.i2.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i2.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EED2Ev.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.aa) #39
  br label %bb.f

.body:                                            ; preds = %bb.a
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb15RowGroupPointerD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %3) #37
  resume { ptr, i32 } %i.ab

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EED2Ev.exit.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb19RowGroupSegmentTreeESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #39
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb19RowGroupSegmentTreeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(136) %i.a) #37, !inline_history !5215
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb19RowGroupSegmentTreeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb19RowGroupSegmentTreeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #39
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb19RowGroupSegmentTreeESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !4647 ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !98
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #37
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb11SegmentTreeINS_8RowGroupELb1EE21AppendSegmentInternalERNS_11SegmentLockENS_10shared_ptrIS1_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::unique_ptr.1880", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2946
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !2947
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5216)
  %i.i = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #38, !noalias !5216 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load <2 x ptr>, ptr %2, align 8, !tbaa !309, !noalias !5216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !noalias !5216
  store i64 %3, ptr %i.i, align 8, !tbaa !2319, !noalias !5216
  store <2 x ptr> %i.k, ptr %i.j, align 8, !tbaa !309, !noalias !5216
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr null, ptr %i.l, align 8, !tbaa !5219, !noalias !5216
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 %i.h, ptr %i.m, align 8, !tbaa !3107, !noalias !5216
  store ptr %i.i, ptr %4, align 8, !tbaa !1282, !alias.scope !5216
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !3109
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !3109 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_11SegmentNodeINS_8RowGroupEEESt14default_deleteIS4_ELb1EEELb1ESaIS7_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.r = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_11SegmentNodeINS_8RowGroupEEESt14default_deleteIS3_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.s = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNK6duckdb10unique_ptrINS_11SegmentNodeINS_8RowGroupEEESt14default_deleteIS3_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store atomic ptr %i.s, ptr %i.t seq_cst, align 8
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !2946
  br label %bb.g

bb.f:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.i, %bb.d, %bb.c, %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  resume { ptr, i32 } %i.u

bb.g:                                             ; preds = %bb.e, %bb.a
  %i.v = phi ptr [ %.pre, %bb.e ], [ %i.o, %bb.a ] ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !3263
  %.not.i.i = icmp eq ptr %i.v, %i.x
  br i1 %.not.i.i, label %bb.h, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEESaIS7_EE9push_backEOS7_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEESaIS7_EE9push_backEOS7_.exit.thread: ; preds = %bb.g
  %i.y = load i64, ptr %4, align 8, !tbaa !1282
  store i64 %i.y, ptr %i.v, align 8, !tbaa !1282
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.z, ptr %i.b, align 8, !tbaa !2946
  br label %_ZNSt10unique_ptrIN6duckdb11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS3_EED2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !2947 ; 10 uses
  %i.ab = ptrtoint ptr %i.v to i64                ; 3 uses
  %i.ac = ptrtoint ptr %i.aa to i64               ; 3 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 3 uses
  %i.ae = icmp eq i64 %i.ad, 9223372036854775800
  br i1 %i.ae, label %bb.i, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.164) #40
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.af = ashr exact i64 %i.ad, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ag = add nsw i64 %.sroa.speculated.i.i.i.i, %i.af ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  %i.ai = call i64 @llvm.umin.i64(i64 %i.ag, i64 1152921504606846975)
  %i.aj = select i1 %i.ah, i64 1152921504606846975, i64 %i.ai ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #38
          to label %.noexc2 unwind label %bb.f    ; 10 uses

.noexc2:                                          ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ad
  %i.an = load i64, ptr %4, align 8, !tbaa !1282
  store i64 %i.an, ptr %i.am, align 8, !tbaa !1282
  store ptr null, ptr %4, align 8, !tbaa !1282
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.aa, %i.v
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc2
  %5 = sub i64 %i.ab, %i.ac
  %6 = add i64 %5, -8                             ; 2 uses
  %i.ao = lshr i64 %6, 3
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader14, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.aq = add i64 %i.ab, -8
  %i.ar = sub i64 %i.aq, %i.ac
  %i.as = and i64 %i.ar, -8
  %i.at = add i64 %i.as, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.al, i64 %i.at
  %scevgep10 = getelementptr i8, ptr %i.aa, i64 %i.at
  %bound0 = icmp ult ptr %i.al, %scevgep10
  %bound1 = icmp ult ptr %i.aa, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader14, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ap, 4611686018427387900     ; 3 uses
  %i.au = shl i64 %n.vec, 3                       ; 2 uses
  %i.av = getelementptr i8, ptr %i.al, i64 %i.au  ; 2 uses
  %i.aw = getelementptr i8, ptr %i.aa, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.ax ; 2 uses
  %next.gep11 = getelementptr i8, ptr %i.aa, i64 %i.ax ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5220)
  call void @llvm.experimental.noalias.scope.decl(metadata !5223)
  %i.ay = getelementptr i8, ptr %next.gep11, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep11, align 8, !tbaa !1282, !alias.scope !5225, !noalias !5220
  %wide.load12 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !1282, !alias.scope !5225, !noalias !5220
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1282, !alias.scope !5228, !noalias !5225
  store <2 x i64> %wide.load12, ptr %i.az, align 8, !tbaa !1282, !alias.scope !5228, !noalias !5225
  %i.ba = getelementptr i8, ptr %next.gep11, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep11, align 8, !tbaa !1282, !alias.scope !5225, !noalias !5220
  store <2 x ptr> splat (ptr null), ptr %i.ba, align 8, !tbaa !1282, !alias.scope !5225, !noalias !5220
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !5230

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader14

.lr.ph.i.i.i.i.i.i.i.preheader14:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.al, %vector.memcheck ], [ %i.al, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.aa, %vector.memcheck ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader14, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader14 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader14 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5220)
  call void @llvm.experimental.noalias.scope.decl(metadata !5223)
  %i.bc = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1282, !alias.scope !5223, !noalias !5220
  store i64 %i.bc, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !1282, !alias.scope !5220, !noalias !5223
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1282, !alias.scope !5223, !noalias !5220
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bd, %i.v
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !5231

_ZNSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc2
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.al, %.noexc2 ], [ %i.av, %middle.block ], [ %i.be, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEESaIS7_EE9push_backEOS7_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.aa) #39
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEESaIS7_EE9push_backEOS7_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEESaIS7_EE9push_backEOS7_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i, %bb.j
  store ptr %i.al, ptr %i.a, align 8, !tbaa !2947
  store ptr %i.bf, ptr %i.b, align 8, !tbaa !2946
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.bg, ptr %i.w, align 8, !tbaa !3263
  %.pr = load ptr, ptr %4, align 8, !tbaa !1282   ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS3_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEESaIS7_EE9push_backEOS7_.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %.pr, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !93 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb11SegmentNodeINS0_8RowGroupEEEEclEPS3_.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 4 uses
  %i.bk = load atomic i64, ptr %i.bj acquire, align 8 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 4294967297
  %i.bm = trunc i64 %i.bk to i32                  ; 2 uses
  br i1 %i.bl, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.bj, align 8, !tbaa !94
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  store i32 0, ptr %i.bn, align 4, !tbaa !96
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !12
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #37, !inline_history !5232
  %i.br = load ptr, ptr %i.bi, align 8, !tbaa !12
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #37, !inline_history !5232
  br label %_ZNKSt14default_deleteIN6duckdb11SegmentNodeINS0_8RowGroupEEEEclEPS3_.exit.i

bb.n:                                             ; preds = %bb.l
  %i.bu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98
  %.not.i.i.i.i.i.i.i3 = icmp eq i8 %i.bu, 0
  br i1 %.not.i.i.i.i.i.i.i3, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = add nsw i32 %i.bm, -1
  store i32 %i.bv, ptr %i.bj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.bw = atomicrmw volatile add ptr %i.bj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.bm, %bb.o ], [ %i.bw, %bb.p ]
  %i.bx = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.bx, label %bb.q, label %_ZNKSt14default_deleteIN6duckdb11SegmentNodeINS0_8RowGroupEEEEclEPS3_.exit.i, !prof !99

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #37
  br label %_ZNKSt14default_deleteIN6duckdb11SegmentNodeINS0_8RowGroupEEEEclEPS3_.exit.i

_ZNKSt14default_deleteIN6duckdb11SegmentNodeINS0_8RowGroupEEEEclEPS3_.exit.i: ; preds = %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.m, %bb.k
  call void @_ZdlPv(ptr noundef nonnull %.pr) #39
  br label %_ZNSt10unique_ptrIN6duckdb11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEESaIS7_EE9push_backEOS7_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEESaIS7_EE9push_backEOS7_.exit, %_ZNKSt14default_deleteIN6duckdb11SegmentNodeINS0_8RowGroupEEEEclEPS3_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK6duckdb11SegmentTreeINS_8RowGroupELb1EE15LoadNextSegmentERNS_11SegmentLockE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::shared_ptr.1532", align 8 ; 9 uses
  %3 = alloca %"class.duckdb::shared_ptr.1532", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load atomic i8, ptr %i.a seq_cst, align 8, !range !263, !noundef !70
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  %i.d = load ptr, ptr %0, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  call void %i.f(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::shared_ptr.1532") align 8 %2, ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.g = load ptr, ptr %2, align 8, !tbaa !2714   ; 2 uses
  %i.h = icmp ne ptr %i.g, null                   ; 2 uses
  br i1 %i.h, label %bb.c, label %_ZN6duckdb10shared_ptrINS_8RowGroupELb1EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  store ptr %i.g, ptr %3, align 8, !tbaa !2714
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !93
  store ptr null, ptr %i.j, align 8, !tbaa !93
  store ptr %i.k, ptr %i.i, align 8, !tbaa !93
  store ptr null, ptr %2, align 8, !tbaa !2714
  invoke void @_ZNK6duckdb11SegmentTreeINS_8RowGroupELb1EE21AppendSegmentInternalERNS_11SegmentLockENS_10shared_ptrIS1_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %3)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !93   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_8RowGroupELb1EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.m, align 8, !tbaa !94
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !96
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #37, !inline_history !2756
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #37, !inline_history !2756
  br label %_ZN6duckdb10shared_ptrINS_8RowGroupELb1EED2Ev.exit
end_hunk_17
begin_hunk_18_@_ZN6duckdb9Exception25ConstructMessageRecursiveImJRKlS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_:bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.y) #39
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit9

_ZN6duckdb20ExceptionFormatValueD2Ev.exit9:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9Exception25ConstructMessageRecursiveIlJRKlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::ExceptionFormatValue", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.a = load i64, ptr %3, align 8, !tbaa !24, !noalias !5301
  call void @_ZN6duckdb20ExceptionFormatValueC1El(ptr noundef nonnull align 8 dereferenceable(64) %5, i64 noundef %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !926  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1639
  %.not.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %5, i64 32, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !116
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !35   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 4 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !117  ; 3 uses
  %i.n = icmp ult i64 %i.m, 16
  call void @llvm.assume(i1 %i.n)
  %i.o = add nuw nsw i64 %i.m, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.o, i1 false)
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.i, ptr %i.f, align 8, !tbaa !35
  %i.p = load i64, ptr %i.j, align 8, !tbaa !98
  store i64 %i.p, ptr %i.h, align 8, !tbaa !98
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !117
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.q = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.m, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %i.q, ptr %i.s, align 8, !tbaa !117
  store ptr %i.j, ptr %i.g, align 8, !tbaa !35
  store i64 0, ptr %i.r, align 8, !tbaa !117
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !926
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  store ptr %i.u, ptr %i.b, align 8, !tbaa !926
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert9 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.pre10 = load ptr, ptr %.phi.trans.insert9, align 8, !tbaa !35 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.w = icmp eq ptr %.pre10, %i.v
  br i1 %i.w, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre10) #39
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveIlJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %4)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !35   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.z) #39
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit8

_ZN6duckdb20ExceptionFormatValueD2Ev.exit8:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  resume { ptr, i32 } %i.x
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9Exception25ConstructMessageRecursiveIlJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::ExceptionFormatValue", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.a = load i64, ptr %3, align 8, !tbaa !24, !noalias !5304
  call void @_ZN6duckdb20ExceptionFormatValueC1El(ptr noundef nonnull align 8 dereferenceable(64) %4, i64 noundef %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !926  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1639
  %.not.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 32, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !116
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !35   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 4 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !117  ; 3 uses
  %i.n = icmp ult i64 %i.m, 16
  call void @llvm.assume(i1 %i.n)
  %i.o = add nuw nsw i64 %i.m, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.o, i1 false)
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.i, ptr %i.f, align 8, !tbaa !35
  %i.p = load i64, ptr %i.j, align 8, !tbaa !98
  store i64 %i.p, ptr %i.h, align 8, !tbaa !98
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !117
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.q = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.m, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %i.q, ptr %i.s, align 8, !tbaa !117
  store ptr %i.j, ptr %i.g, align 8, !tbaa !35
  store i64 0, ptr %i.r, align 8, !tbaa !117
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !926
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  store ptr %i.u, ptr %i.b, align 8, !tbaa !926
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert8 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.pre9 = load ptr, ptr %.phi.trans.insert8, align 8, !tbaa !35 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.w = icmp eq ptr %.pre9, %i.v
  br i1 %i.w, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre9) #39
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorINS_20ExceptionFormatValueESaISA_EE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !35   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.z) #39
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7

_ZN6duckdb20ExceptionFormatValueD2Ev.exit7:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  resume { ptr, i32 } %i.x
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = ptrtoint ptr %1 to i64                     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3397 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !3396   ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6duckdb12optional_idxESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.164) #40
  unreachable

_ZNKSt6vectorIN6duckdb12optional_idxESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #38 ; 9 uses
  %i.q = ptrtoaddr ptr %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.s = load i64, ptr %2, align 8, !tbaa !24
  invoke void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i64 noundef %i.s)
          to label %_ZNSt16allocator_traitsISaIN6duckdb12optional_idxEEE9constructIS1_JRmEEEvRS2_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaIN6duckdb12optional_idxEEE9constructIS1_JRmEEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN6duckdb12optional_idxESaIS1_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt16allocator_traitsISaIN6duckdb12optional_idxEEE9constructIS1_JRmEEEvRS2_PT_DpOT0_.exit
  %i.t = add i64 %3, -8
  %i.u = sub i64 %i.t, %i.e                       ; 2 uses
  %i.v = lshr i64 %i.u, 3
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.u, 72
  %i.x = sub i64 %i.e, %i.q
  %diff.check = icmp ugt i64 %i.x, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader70, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.w, 4611686018427387900      ; 3 uses
  %i.y = shl i64 %n.vec, 3                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.p, i64 %i.y     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.ab ; 2 uses
  %next.gep47 = getelementptr i8, ptr %i.c, i64 %i.ab ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5310)
  %i.ac = getelementptr i8, ptr %next.gep47, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep47, align 8, !tbaa !24, !alias.scope !5310, !noalias !5307
  %wide.load48 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !24, !alias.scope !5310, !noalias !5307
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !24, !alias.scope !5307, !noalias !5310
  store <2 x i64> %wide.load48, ptr %i.ad, align 8, !tbaa !24, !alias.scope !5307, !noalias !5310
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !5312

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i.preheader70

.lr.ph.i.i.i.i.preheader70:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader70, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader70 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader70 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5310)
  %i.af = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !24, !alias.scope !5310, !noalias !5307
  store i64 %i.af, ptr %.012.i.i.i.i, align 8, !tbaa !24, !alias.scope !5307, !noalias !5310
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ag, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !5313

_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt16allocator_traitsISaIN6duckdb12optional_idxEEE9constructIS1_JRmEEEvRS2_PT_DpOT0_.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN6duckdb12optional_idxEEE9constructIS1_JRmEEEvRS2_PT_DpOT0_.exit ], [ %i.z, %middle.block ], [ %i.ah, %.lr.ph.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i51 = ptrtoaddr ptr %.0.lcssa.i.i.i.i to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8 ; 5 uses
  %.not10.i.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i26, label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, label %.lr.ph.i.i.i.i27.preheader

.lr.ph.i.i.i.i27.preheader:                       ; preds = %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.aj = add i64 %i.d, -8
  %i.ak = sub i64 %i.aj, %3                       ; 2 uses
  %i.al = lshr i64 %i.ak, 3
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check54 = icmp ult i64 %i.ak, 104
  br i1 %min.iters.check54, label %.lr.ph.i.i.i.i27.preheader69, label %vector.memcheck50

vector.memcheck50:                                ; preds = %.lr.ph.i.i.i.i27.preheader
  %i.an = sub i64 %.0.lcssa.i.i.i.i51, %3
  %i.ao = add i64 %i.an, 7
  %diff.check52 = icmp ult i64 %i.ao, 31
  br i1 %diff.check52, label %.lr.ph.i.i.i.i27.preheader69, label %vector.ph55

vector.ph55:                                      ; preds = %vector.memcheck50
  %n.vec57 = and i64 %i.am, 4611686018427387900   ; 3 uses
  %i.ap = shl i64 %n.vec57, 3                     ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ai, i64 %i.ap  ; 2 uses
  %i.ar = getelementptr i8, ptr %1, i64 %i.ap
  br label %vector.body58

vector.body58:                                    ; preds = %vector.body58, %vector.ph55
  %index59 = phi i64 [ 0, %vector.ph55 ], [ %index.next64, %vector.body58 ] ; 2 uses
  %i.as = shl i64 %index59, 3                     ; 2 uses
  %next.gep60 = getelementptr i8, ptr %i.ai, i64 %i.as ; 2 uses
  %next.gep61 = getelementptr i8, ptr %1, i64 %i.as ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5317)
  %i.at = getelementptr i8, ptr %next.gep61, i64 16
  %wide.load62 = load <2 x i64>, ptr %next.gep61, align 8, !tbaa !24, !alias.scope !5317, !noalias !5314
  %wide.load63 = load <2 x i64>, ptr %i.at, align 8, !tbaa !24, !alias.scope !5317, !noalias !5314
  %i.au = getelementptr i8, ptr %next.gep60, i64 16
  store <2 x i64> %wide.load62, ptr %next.gep60, align 8, !tbaa !24, !alias.scope !5314, !noalias !5317
  store <2 x i64> %wide.load63, ptr %i.au, align 8, !tbaa !24, !alias.scope !5314, !noalias !5317
  %index.next64 = add nuw i64 %index59, 4         ; 2 uses
  %i.av = icmp eq i64 %index.next64, %n.vec57
  br i1 %i.av, label %middle.block65, label %vector.body58, !llvm.loop !5319

middle.block65:                                   ; preds = %vector.body58
  %cmp.n66 = icmp eq i64 %i.am, %n.vec57
  br i1 %cmp.n66, label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, label %.lr.ph.i.i.i.i27.preheader69

.lr.ph.i.i.i.i27.preheader69:                     ; preds = %vector.memcheck50, %.lr.ph.i.i.i.i27.preheader, %middle.block65
  %.012.i.i.i.i28.ph = phi ptr [ %i.ai, %vector.memcheck50 ], [ %i.ai, %.lr.ph.i.i.i.i27.preheader ], [ %i.aq, %middle.block65 ]
  %.0911.i.i.i.i29.ph = phi ptr [ %1, %vector.memcheck50 ], [ %1, %.lr.ph.i.i.i.i27.preheader ], [ %i.ar, %middle.block65 ]
  br label %.lr.ph.i.i.i.i27

.lr.ph.i.i.i.i27:                                 ; preds = %.lr.ph.i.i.i.i27.preheader69, %.lr.ph.i.i.i.i27
  %.012.i.i.i.i28 = phi ptr [ %i.ay, %.lr.ph.i.i.i.i27 ], [ %.012.i.i.i.i28.ph, %.lr.ph.i.i.i.i27.preheader69 ] ; 2 uses
  %.0911.i.i.i.i29 = phi ptr [ %i.ax, %.lr.ph.i.i.i.i27 ], [ %.0911.i.i.i.i29.ph, %.lr.ph.i.i.i.i27.preheader69 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5317)
  %i.aw = load i64, ptr %.0911.i.i.i.i29, align 8, !tbaa !24, !alias.scope !5317, !noalias !5314
  store i64 %i.aw, ptr %.012.i.i.i.i28, align 8, !tbaa !24, !alias.scope !5314, !noalias !5317
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i28, i64 8 ; 2 uses
  %.not.i.i.i.i30 = icmp eq ptr %i.ax, %i.b
  br i1 %.not.i.i.i.i30, label %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, label %.lr.ph.i.i.i.i27, !llvm.loop !5320

_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32: ; preds = %.lr.ph.i.i.i.i27, %middle.block65, %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i.i31 = phi ptr [ %i.ai, %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.aq, %middle.block65 ], [ %i.ay, %.lr.ph.i.i.i.i27 ]
  %.not.i33 = icmp eq ptr %i.c, null
  br i1 %.not.i33, label %_ZNSt12_Vector_baseIN6duckdb12optional_idxESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #39
  br label %_ZNSt12_Vector_baseIN6duckdb12optional_idxESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb12optional_idxESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6duckdb12optional_idxESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, %bb.c
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !3396
  store ptr %.0.lcssa.i.i.i.i31, ptr %i.a, align 8, !tbaa !3397
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !3395
  ret void

bb.d:                                             ; preds = %bb.e
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorIN6duckdb12optional_idxESaIS1_EE12_M_check_lenEmPKc.exit
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  %i.be = tail call ptr @__cxa_begin_catch(ptr %i.bd) #37 ; 0 uses
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #39
  invoke void @__cxa_rethrow() #40
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.bb

bb.g:                                             ; preds = %bb.d
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  tail call void @__clang_call_terminate(ptr %i.bg) #41
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb10VacuumTaskD0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !348  ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb4TaskD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  %i.d = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98
  %.not.i.i.i.i.i.i = icmp eq i8 %i.d, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.c, align 4, !tbaa !3    ; 2 uses
  %i.f = add nsw i32 %i.e, -1
  store i32 %i.f, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.g = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.e, %bb.c ], [ %i.g, %bb.d ]
  %i.h = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.h, label %bb.e, label %_ZN6duckdb4TaskD2Ev.exit

bb.e:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #37, !inline_history !5321
  br label %_ZN6duckdb4TaskD2Ev.exit

_ZN6duckdb4TaskD2Ev.exit:                         ; preds = %bb.a, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.e
  tail call void @_ZdlPv(ptr noundef nonnull %0) #39
  ret void
}

declare noundef zeroext i8 @_ZN6duckdb16BaseExecutorTask7ExecuteENS_17TaskExecutionModeE(ptr noundef nonnull align 8 dereferenceable(40), i8 noundef zeroext) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb4Task10DescheduleEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.c, ptr %1, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i64 41, ptr %i.a, align 8, !tbaa !24
  %i.d = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.d, ptr %1, align 8, !tbaa !35
  %i.e = load i64, ptr %i.a, align 8, !tbaa !24   ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) %i.d, ptr noundef nonnull align 1 dereferenceable(41) @.str.210, i64 41, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !117
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  store i8 0, ptr %i.g, align 1, !tbaa !98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.e unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br label %bb.c

bb.b:                                             ; preds = %bb.a, %.noexc
  %.0 = phi i1 [ false, %bb.a ], [ true, %.noexc ] ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !35     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.c
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.j) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br i1 %.0, label %bb.c, label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br i1 %.0, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn8 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #37
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  %.pn7 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn8, %bb.c ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn7
end_hunk_18
begin_hunk_19_@_ZN6duckdb4Task10RescheduleEv:.noexc.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK6duckdb4Task19TaskBlockedOnResultEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb10VacuumTask8TaskTypeB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !116
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.a, ptr noundef nonnull align 1 dereferenceable(10) @.str.212, i64 10, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 10, ptr %i.b, align 8, !tbaa !117
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 0, ptr %i.c, align 2, !tbaa !98
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb10VacuumTask11ExecuteTaskEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.duckdb::ExceptionFormatValue", align 8 ; 14 uses
  %2 = alloca %"struct.duckdb::ExceptionFormatValue", align 8 ; 14 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::vector.2458", align 8  ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.k = alloca i64, align 8                      ; 4 uses
  %i.l = alloca i64, align 8                      ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.m = alloca i64, align 8                      ; 5 uses
  %i.n = alloca i64, align 8                      ; 5 uses
  %i.o = alloca i64, align 8                      ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.p = alloca i64, align 8                      ; 4 uses
  %i.q = alloca i64, align 8                      ; 4 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.r = alloca i64, align 8                      ; 4 uses
  %i.s = alloca i64, align 8                      ; 4 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.t = alloca i64, align 8                      ; 5 uses
  %i.u = alloca i64, align 8                      ; 5 uses
  %i.v = alloca i64, align 8                      ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %13 = alloca %"struct.duckdb::BlockIdDropper", align 8 ; 5 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.w = alloca i64, align 8                      ; 4 uses
  %i.x = alloca i64, align 8                      ; 4 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.y = alloca i64, align 8                      ; 4 uses
  %i.z = alloca i64, align 8                      ; 4 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.aa = alloca i64, align 8                     ; 4 uses
  %i.ab = alloca i64, align 8                     ; 4 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.ac = alloca i64, align 8                     ; 4 uses
  %i.ad = alloca i64, align 8                     ; 4 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %20 = alloca %"struct.duckdb::TransactionData", align 8 ; 4 uses
  %21 = alloca %"struct.duckdb::ScanOptions", align 8 ; 7 uses
  %22 = alloca %"class.duckdb::vector.2878", align 8 ; 19 uses
  %23 = alloca %"class.duckdb::vector.88", align 8 ; 14 uses
  %24 = alloca %"class.duckdb::unique_ptr.1654", align 8 ; 11 uses
  %25 = alloca %"class.duckdb::DataChunk", align 8 ; 14 uses
  %26 = alloca %"class.duckdb::vector.645", align 8 ; 14 uses
  %i.ae = alloca i64, align 8                     ; 7 uses
  %27 = alloca %"struct.duckdb::TableAppendState", align 8 ; 10 uses
  %28 = alloca %"class.duckdb::TableScanState", align 8 ; 13 uses
  %29 = alloca %"class.duckdb::QueryContext", align 8 ; 5 uses
  %30 = alloca %"class.duckdb::optional_idx", align 8 ; 7 uses
  %31 = alloca %"class.duckdb::optional_ptr.897", align 8 ; 10 uses
  %32 = alloca %"class.duckdb::optional_idx", align 8 ; 5 uses
  %i.af = alloca i64, align 8                     ; 7 uses
  %33 = alloca %"class.duckdb::shared_ptr.1532", align 8 ; 4 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %35 = alloca %"class.std::allocator.17", align 1 ; 5 uses
  %36 = alloca %"class.duckdb::unique_ptr.2032", align 8 ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !5322, !nonnull !70, !align !145
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !5323, !nonnull !70, !align !145 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !2437 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 40 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, i8 0, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !3448
  %.not575 = icmp eq i64 %i.ao, 0
  br i1 %.not575, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.ap = load i64, ptr %i.am, align 8, !tbaa !3449
  %i.aq = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb8RowGroupESt14default_deleteIS1_EED2Ev.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #37
  invoke void @_ZN6duckdb9DataChunkC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %25)
          to label %bb.r unwind label %bb.u

bb.b:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6duckdb8RowGroupESt14default_deleteIS1_EED2Ev.exit
  %.060552 = phi i64 [ %i.ap, %.lr.ph ], [ %i.db, %_ZNSt10unique_ptrIN6duckdb8RowGroupESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %.062551 = phi i64 [ 0, %.lr.ph ], [ %i.dd, %_ZNSt10unique_ptrIN6duckdb8RowGroupESt14default_deleteIS1_EED2Ev.exit ]
  %i.au = call noundef i64 @llvm.umin.i64(i64 %.060552, i64 %i.ak) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !5324)
  %i.av = invoke noalias noundef nonnull dereferenceable(224) ptr @_Znwm(i64 noundef 224) #38
          to label %.noexc unwind label %bb.p     ; 3 uses

.noexc:                                           ; preds = %bb.b
  invoke void @_ZN6duckdb8RowGroupC1ERNS_18RowGroupCollectionEm(ptr noundef nonnull align 8 dereferenceable(218) %i.av, ptr noundef nonnull align 8 dereferenceable(217) %i.ai, i64 noundef %i.au)
          to label %bb.d unwind label %bb.c, !noalias !5324

bb.c:                                             ; preds = %.noexc
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.av) #39, !noalias !5324
  br label %.body

bb.d:                                             ; preds = %.noexc
  store ptr %i.av, ptr %24, align 8, !tbaa !314, !alias.scope !5324
  %i.ax = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_8RowGroupESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.e unwind label %.loopexit478

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb8RowGroup15InitializeEmptyERKNS_6vectorINS_11LogicalTypeELb1ESaIS2_EEENS_14ColumnDataTypeE(ptr noundef nonnull align 8 dereferenceable(218) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i32 noundef 0)
          to label %bb.f unwind label %.loopexit478

bb.f:                                             ; preds = %bb.e
  %i.ay = load ptr, ptr %i.aq, align 8, !tbaa !5327 ; 6 uses
  %i.az = load ptr, ptr %i.ar, align 8, !tbaa !5330
  %.not.i.i = icmp eq ptr %i.ay, %i.az
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = load i64, ptr %24, align 8, !tbaa !314
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !314
  store ptr null, ptr %24, align 8, !tbaa !314
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.bb, ptr %i.aq, align 8, !tbaa !5327
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_8RowGroupESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.h:                                             ; preds = %bb.f
  %i.bc = load ptr, ptr %22, align 8, !tbaa !5331 ; 10 uses
  %i.bd = ptrtoint ptr %i.ay to i64               ; 3 uses
  %i.be = ptrtoint ptr %i.bc to i64               ; 3 uses
  %i.bf = sub i64 %i.bd, %i.be                    ; 3 uses
  %i.bg = icmp eq i64 %i.bf, 9223372036854775800
  br i1 %i.bg, label %bb.i, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_8RowGroupESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.164) #40
          to label %.noexc123 unwind label %.loopexit.split-lp479

.noexc123:                                        ; preds = %bb.i
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_8RowGroupESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.bh = ashr exact i64 %i.bf, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bh, i64 1)
  %i.bi = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bh ; 2 uses
  %i.bj = icmp ult i64 %i.bi, %i.bh
  %i.bk = call i64 @llvm.umin.i64(i64 %i.bi, i64 1152921504606846975)
  %i.bl = select i1 %i.bj, i64 1152921504606846975, i64 %i.bk ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bl, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bm = shl nuw nsw i64 %i.bl, 3
  %i.bn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bm) #38
          to label %.noexc124 unwind label %.loopexit478 ; 10 uses

.noexc124:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_8RowGroupESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bf
  %i.bp = load i64, ptr %24, align 8, !tbaa !314
  store i64 %i.bp, ptr %i.bo, align 8, !tbaa !314
  store ptr null, ptr %24, align 8, !tbaa !314
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.bc, %i.ay
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_8RowGroupESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc124
  %37 = sub i64 %i.bd, %i.be
  %38 = add i64 %37, -8                           ; 2 uses
  %i.bq = lshr i64 %38, 3
  %i.br = add nuw nsw i64 %i.bq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %38, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader801, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.bn, i64 8
  %i.bs = add i64 %i.bd, -8
  %i.bt = sub i64 %i.bs, %i.be
  %i.bu = and i64 %i.bt, -8                       ; 2 uses
  %scevgep774 = getelementptr i8, ptr %scevgep, i64 %i.bu
  %scevgep775 = getelementptr i8, ptr %i.bc, i64 8
  %scevgep776 = getelementptr i8, ptr %scevgep775, i64 %i.bu
  %bound0 = icmp ult ptr %i.bn, %scevgep776
  %bound1 = icmp ult ptr %i.bc, %scevgep774
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader801, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.br, 4611686018427387900     ; 3 uses
  %i.bv = shl i64 %n.vec, 3                       ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bn, i64 %i.bv  ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bc, i64 %i.bv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.by = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bn, i64 %i.by ; 2 uses
  %next.gep777 = getelementptr i8, ptr %i.bc, i64 %i.by ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5332)
  call void @llvm.experimental.noalias.scope.decl(metadata !5335)
  %i.bz = getelementptr i8, ptr %next.gep777, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep777, align 8, !tbaa !314, !alias.scope !5337, !noalias !5332
  %wide.load778 = load <2 x i64>, ptr %i.bz, align 8, !tbaa !314, !alias.scope !5337, !noalias !5332
  %i.ca = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !314, !alias.scope !5340, !noalias !5337
  store <2 x i64> %wide.load778, ptr %i.ca, align 8, !tbaa !314, !alias.scope !5340, !noalias !5337
  %i.cb = getelementptr i8, ptr %next.gep777, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep777, align 8, !tbaa !314, !alias.scope !5337, !noalias !5332
  store <2 x ptr> splat (ptr null), ptr %i.cb, align 8, !tbaa !314, !alias.scope !5337, !noalias !5332
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !5342

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.br, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_8RowGroupESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader801

.lr.ph.i.i.i.i.i.i.i.preheader801:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bn, %vector.memcheck ], [ %i.bn, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bw, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.bc, %vector.memcheck ], [ %i.bc, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bx, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader801, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader801 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader801 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5332)
  call void @llvm.experimental.noalias.scope.decl(metadata !5335)
  %i.cd = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !314, !alias.scope !5335, !noalias !5332
  store i64 %i.cd, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !314, !alias.scope !5332, !noalias !5335
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !314, !alias.scope !5335, !noalias !5332
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ce, %i.ay
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_8RowGroupESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !5343

_ZNSt6vectorIN6duckdb10unique_ptrINS0_8RowGroupESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc124
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bn, %.noexc124 ], [ %i.bw, %middle.block ], [ %i.cf, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_8RowGroupESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_8RowGroupESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bc) #39
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_8RowGroupESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_8RowGroupESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_8RowGroupESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.bn, ptr %22, align 8, !tbaa !5331
  store ptr %i.cg, ptr %i.aq, align 8, !tbaa !5327
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bl
  store ptr %i.ch, ptr %i.ar, align 8, !tbaa !5330
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_8RowGroupESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_8RowGroupESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_8RowGroupESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.g
  %i.ci = load ptr, ptr %i.as, align 8, !tbaa !1274 ; 4 uses
  %i.cj = load ptr, ptr %i.at, align 8, !tbaa !2076
  %.not.i.i125 = icmp eq ptr %i.ci, %i.cj
  br i1 %.not.i.i125, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_8RowGroupESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  store i64 0, ptr %i.ci, align 8, !tbaa !24
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %i.ck, ptr %i.as, align 8, !tbaa !1274
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.l:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_8RowGroupESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.cl = load ptr, ptr %23, align 8, !tbaa !1276 ; 4 uses
  %i.cm = ptrtoint ptr %i.ci to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn                    ; 5 uses
  %i.cp = icmp eq i64 %i.co, 9223372036854775800
  br i1 %i.cp, label %bb.m, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.164) #40
          to label %.noexc128 unwind label %.loopexit.split-lp484

.noexc128:                                        ; preds = %bb.m
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.l
  %i.cq = ashr exact i64 %i.co, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i126 = call i64 @llvm.umax.i64(i64 %i.cq, i64 1)
  %i.cr = add nsw i64 %.sroa.speculated.i.i.i.i126, %i.cq ; 2 uses
  %i.cs = icmp ult i64 %i.cr, %i.cq
  %i.ct = call i64 @llvm.umin.i64(i64 %i.cr, i64 1152921504606846975)
  %i.cu = select i1 %i.cs, i64 1152921504606846975, i64 %i.ct ; 3 uses
  %.not.i.i.i.i127 = icmp ne i64 %i.cu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i127)
  %i.cv = shl nuw nsw i64 %i.cu, 3
  %i.cw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cv) #38
          to label %.noexc129 unwind label %.loopexit483 ; 4 uses

.noexc129:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 %i.co ; 2 uses
  store i64 0, ptr %i.cx, align 8, !tbaa !24
  %i.cy = icmp sgt i64 %i.co, 0
  br i1 %i.cy, label %bb.n, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.n:                                             ; preds = %.noexc129
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cw, ptr align 8 %i.cl, i64 %i.co, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.n, %.noexc129
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.cl) #39
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.o, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  store ptr %i.cw, ptr %23, align 8, !tbaa !1276
  store ptr %i.cz, ptr %i.as, align 8, !tbaa !1274
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cu
  store ptr %i.da, ptr %i.at, align 8, !tbaa !2076
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, %bb.k
  %i.db = sub i64 %.060552, %i.au
  %i.dc = load ptr, ptr %24, align 8, !tbaa !314  ; 3 uses
  %.not.i = icmp eq ptr %i.dc, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb8RowGroupESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb8RowGroupEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb8RowGroupEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit
  call void @_ZN6duckdb8RowGroupD1Ev(ptr noundef nonnull align 8 dereferenceable(218) %i.dc) #37
  call void @_ZdlPv(ptr noundef nonnull %i.dc) #39
  br label %_ZNSt10unique_ptrIN6duckdb8RowGroupESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb8RowGroupESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit, %_ZNKSt14default_deleteIN6duckdb8RowGroupEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #37
  %i.dd = add nuw i64 %.062551, 1                 ; 2 uses
  %i.de = load i64, ptr %i.an, align 8, !tbaa !3448
  %i.df = icmp ult i64 %i.dd, %i.de
  br i1 %i.df, label %bb.b, label %._crit_edge, !llvm.loop !5344

bb.p:                                             ; preds = %bb.b
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit478:                                     ; preds = %bb.d, %bb.e, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_8RowGroupESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit480 = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp479:                            ; preds = %bb.i
  %lpad.loopexit.split-lp481 = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit483:                                     ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit485 = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp484:                            ; preds = %bb.m
  %lpad.loopexit.split-lp486 = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit483, %.loopexit.split-lp484, %.loopexit478, %.loopexit.split-lp479
  %.pn119 = phi { ptr, i32 } [ %lpad.loopexit.split-lp481, %.loopexit.split-lp479 ], [ %lpad.loopexit480, %.loopexit478 ], [ %lpad.loopexit485, %.loopexit483 ], [ %lpad.loopexit.split-lp486, %.loopexit.split-lp484 ] ; 2 uses
  %i.dh = load ptr, ptr %24, align 8, !tbaa !314  ; 3 uses
  %.not.i130 = icmp eq ptr %i.dh, null
  br i1 %.not.i130, label %.body, label %_ZNKSt14default_deleteIN6duckdb8RowGroupEEclEPS1_.exit.i131

_ZNKSt14default_deleteIN6duckdb8RowGroupEEclEPS1_.exit.i131: ; preds = %bb.q
end_hunk_19
