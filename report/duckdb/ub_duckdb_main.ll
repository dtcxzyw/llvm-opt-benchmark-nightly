inline.NumInlined: 40819
inline.NumDeleted: 11673
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN6duckdb8AppenderC2ERNS_10ConnectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_SA_m:bb.a
  %.pn.pn.pn.pn.pn118 = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78 ], [ %.pn.pn.pn.pn.pn118.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.ai) #28
  br label %bb.bz

bb.w:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb16TableDescriptionESt14default_deleteIS1_EED2Ev.exit
  %i.bj = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16TableDescriptionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 96
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !254, !range !262, !noundef !51
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.y, label %bb.ae

bb.y:                                             ; preds = %bb.x
  %i.bn = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.z unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.thread

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  invoke void @__cxa_throw(ptr nonnull %i.bn, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #43
          to label %bb.cc unwind label %bb.ac

bb.ab:                                            ; preds = %bb.w
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.thread: ; preds = %bb.y
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa, %bb.z
  %.044 = phi i1 [ false, %bb.aa ], [ true, %bb.z ] ; 2 uses
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.br = load ptr, ptr %15, align 8, !tbaa !62   ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %bb.ac
  call void @_ZdlPv(ptr noundef %i.br) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br i1 %.044, label %bb.ad, label %bb.bz

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br i1 %.044, label %bb.ad, label %bb.bz

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  %.pn62130 = phi { ptr, i32 } [ %i.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.thread ], [ %i.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81 ], [ %i.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79 ]
  call void @__cxa_free_exception(ptr %i.bn) #28
  br label %bb.bz

bb.ae:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %i.bu = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16TableDescriptionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %bb.af unwind label %bb.ag     ; 2 uses

bb.af:                                            ; preds = %bb.ae
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 104
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !263 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 112
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !263 ; 2 uses
  %.not133134 = icmp eq ptr %i.bw, %i.by
  br i1 %.not133134, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.af
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cb = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  br label %bb.ah

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6duckdb12optional_ptrIKNS0_16ParsedExpressionELb1EEESaIS4_EE9push_backEOS4_.exit, %bb.af
  %i.cd = invoke noundef nonnull align 8 dereferenceable(512) ptr @_ZNK6duckdb10shared_ptrINS_13ClientContextELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.av unwind label %bb.bo     ; 3 uses

bb.ag:                                            ; preds = %bb.ae
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.ah:                                            ; preds = %.lr.ph, %_ZNSt6vectorIN6duckdb12optional_ptrIKNS0_16ParsedExpressionELb1EEESaIS4_EE9push_backEOS4_.exit
  %.sroa.0111.0135 = phi ptr [ %i.bw, %.lr.ph ], [ %i.dz, %_ZNSt6vectorIN6duckdb12optional_ptrIKNS0_16ParsedExpressionELb1EEESaIS4_EE9push_backEOS4_.exit ] ; 5 uses
  %i.cf = invoke noundef zeroext i1 @_ZNK6duckdb16ColumnDefinition9GeneratedEv(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.0111.0135)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.cf, label %_ZNSt6vectorIN6duckdb12optional_ptrIKNS0_16ParsedExpressionELb1EEESaIS4_EE9push_backEOS4_.exit, label %bb.ak

bb.aj:                                            ; preds = %bb.an, %bb.am, %bb.ak, %bb.ah
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.ak:                                            ; preds = %bb.ai
  %i.ch = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb16ColumnDefinition4TypeEv(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.0111.0135)
          to label %bb.al unwind label %bb.aj     ; 2 uses

bb.al:                                            ; preds = %bb.ak
  %i.ci = load ptr, ptr %i.bz, align 8, !tbaa !57 ; 3 uses
  %i.cj = load ptr, ptr %i.ca, align 8, !tbaa !49
  %.not.i82 = icmp eq ptr %i.ci, %i.cj
  br i1 %.not.i82, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, ptr noundef nonnull align 8 dereferenceable(24) %i.ch)
          to label %.noexc83 unwind label %bb.aj

.noexc83:                                         ; preds = %bb.am
  %i.ck = load ptr, ptr %i.bz, align 8, !tbaa !57
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  store ptr %i.cl, ptr %i.bz, align 8, !tbaa !57
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit

bb.an:                                            ; preds = %bb.al
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr %i.ci, ptr noundef nonnull align 8 dereferenceable(24) %i.ch)
          to label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit unwind label %bb.aj

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit: ; preds = %.noexc83, %bb.an
  %i.cm = invoke noundef zeroext i1 @_ZNK6duckdb16ColumnDefinition15HasDefaultValueEv(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.0111.0135)
          to label %bb.ao unwind label %.loopexit

bb.ao:                                            ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit
  br i1 %i.cm, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.cn = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb16ColumnDefinition12DefaultValueEv(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.0111.0135)
          to label %bb.aq unwind label %.loopexit

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %i.co = phi ptr [ %i.cn, %bb.ap ], [ null, %bb.ao ] ; 2 uses
  %i.cp = load ptr, ptr %i.cb, align 8, !tbaa !264 ; 6 uses
  %i.cq = load ptr, ptr %i.cc, align 8, !tbaa !267
  %.not.i.i = icmp eq ptr %i.cp, %i.cq
  br i1 %.not.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cr = ptrtoint ptr %i.co to i64
  store i64 %i.cr, ptr %i.cp, align 8, !tbaa !169
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %i.cs, ptr %i.cb, align 8, !tbaa !264
  br label %_ZNSt6vectorIN6duckdb12optional_ptrIKNS0_16ParsedExpressionELb1EEESaIS4_EE9push_backEOS4_.exit

bb.as:                                            ; preds = %bb.aq
  %i.ct = load ptr, ptr %17, align 8, !tbaa !268  ; 7 uses
  %i.cu = ptrtoint ptr %i.cp to i64               ; 2 uses
  %i.cv = ptrtoint ptr %i.ct to i64               ; 3 uses
  %i.cw = sub i64 %i.cu, %i.cv                    ; 3 uses
  %i.cx = icmp eq i64 %i.cw, 9223372036854775800
  br i1 %i.cx, label %bb.at, label %_ZNKSt6vectorIN6duckdb12optional_ptrIKNS0_16ParsedExpressionELb1EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.at:                                            ; preds = %bb.as
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.592) #43
          to label %.noexc86 unwind label %.loopexit.split-lp

.noexc86:                                         ; preds = %bb.at
  unreachable

_ZNKSt6vectorIN6duckdb12optional_ptrIKNS0_16ParsedExpressionELb1EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.as
  %i.cy = ashr exact i64 %i.cw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cy, i64 1)
  %i.cz = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cy ; 2 uses
  %i.da = icmp ult i64 %i.cz, %i.cy
  %i.db = call i64 @llvm.umin.i64(i64 %i.cz, i64 1152921504606846975)
  %i.dc = select i1 %i.da, i64 1152921504606846975, i64 %i.db ; 3 uses
  %.not.i.i.i.i85 = icmp ne i64 %i.dc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i85)
  %i.dd = shl nuw nsw i64 %i.dc, 3
  %i.de = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dd) #41
          to label %.noexc87 unwind label %.loopexit ; 8 uses

.noexc87:                                         ; preds = %_ZNKSt6vectorIN6duckdb12optional_ptrIKNS0_16ParsedExpressionELb1EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.cw
  %i.dg = ptrtoint ptr %i.co to i64
  store i64 %i.dg, ptr %i.df, align 8, !tbaa !169
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ct, %i.cp
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb12optional_ptrIKNS0_16ParsedExpressionELb1EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc87
  %i.dh = ptrtoaddr ptr %i.de to i64
  %i.di = sub i64 %i.cu, %i.cv
  %i.dj = add i64 %i.di, -8                       ; 2 uses
  %i.dk = lshr i64 %i.dj, 3
  %i.dl = add nuw nsw i64 %i.dk, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dj, 24
  %i.dm = sub i64 %i.cv, %i.dh
  %diff.check = icmp ugt i64 %i.dm, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader169, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.dl, 4611686018427387900     ; 3 uses
  %i.dn = shl i64 %n.vec, 3                       ; 2 uses
  %i.do = getelementptr i8, ptr %i.de, i64 %i.dn  ; 2 uses
  %i.dp = getelementptr i8, ptr %i.ct, i64 %i.dn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.de, i64 %i.dq ; 2 uses
  %next.gep166 = getelementptr i8, ptr %i.ct, i64 %i.dq ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !269)
  call void @llvm.experimental.noalias.scope.decl(metadata !272)
  %i.dr = getelementptr i8, ptr %next.gep166, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep166, align 8, !tbaa !169, !alias.scope !272, !noalias !269
  %wide.load167 = load <2 x i64>, ptr %i.dr, align 8, !tbaa !169, !alias.scope !272, !noalias !269
  %i.ds = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !169, !alias.scope !269, !noalias !272
  store <2 x i64> %wide.load167, ptr %i.ds, align 8, !tbaa !169, !alias.scope !269, !noalias !272
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !274

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dl, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb12optional_ptrIKNS0_16ParsedExpressionELb1EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader169

.lr.ph.i.i.i.i.i.i.i.preheader169:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.do, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.dp, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader169, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader169 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.dv, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader169 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !269)
  call void @llvm.experimental.noalias.scope.decl(metadata !272)
  %i.du = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !169, !alias.scope !272, !noalias !269
  store i64 %i.du, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !169, !alias.scope !269, !noalias !272
  %i.dv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dv, %i.cp
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb12optional_ptrIKNS0_16ParsedExpressionELb1EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !275

_ZNSt6vectorIN6duckdb12optional_ptrIKNS0_16ParsedExpressionELb1EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc87
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.de, %.noexc87 ], [ %i.do, %middle.block ], [ %i.dw, %.lr.ph.i.i.i.i.i.i.i ]
  %i.dx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb12optional_ptrIKNS0_16ParsedExpressionELb1EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIN6duckdb12optional_ptrIKNS0_16ParsedExpressionELb1EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ct) #40
  br label %_ZNSt6vectorIN6duckdb12optional_ptrIKNS0_16ParsedExpressionELb1EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb12optional_ptrIKNS0_16ParsedExpressionELb1EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.au, %_ZNSt6vectorIN6duckdb12optional_ptrIKNS0_16ParsedExpressionELb1EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  store ptr %i.de, ptr %17, align 8, !tbaa !268
  store ptr %i.dx, ptr %i.cb, align 8, !tbaa !264
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dc
  store ptr %i.dy, ptr %i.cc, align 8, !tbaa !267
  br label %_ZNSt6vectorIN6duckdb12optional_ptrIKNS0_16ParsedExpressionELb1EEESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIN6duckdb12optional_ptrIKNS0_16ParsedExpressionELb1EEESaIS4_EE9push_backEOS4_.exit: ; preds = %bb.ar, %_ZNSt6vectorIN6duckdb12optional_ptrIKNS0_16ParsedExpressionELb1EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.ai
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0111.0135, i64 216 ; 2 uses
  %.not133 = icmp eq ptr %i.dz, %i.by
  br i1 %.not133, label %._crit_edge, label %bb.ah

.loopexit:                                        ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit, %bb.ap, %_ZNKSt6vectorIN6duckdb12optional_ptrIKNS0_16ParsedExpressionELb1EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

.loopexit.split-lp:                               ; preds = %bb.at
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.av:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  invoke void @_ZN6duckdb6Binder12CreateBinderERNS_13ClientContextENS_12optional_ptrIS0_Lb1EEENS_10BinderTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::shared_ptr.379") align 8 %18, ptr noundef nonnull align 8 dereferenceable(512) %i.cd, ptr null, i8 noundef zeroext 0)
          to label %bb.aw unwind label %bb.bp

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  %i.ea = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 0, ptr %i.eb, align 8
  %i.ec = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #41
          to label %bb.ax unwind label %bb.bq     ; 5 uses

bb.ax:                                            ; preds = %bb.aw
  %i.ed = getelementptr inbounds nuw i8, ptr %19, i64 24
  store ptr %0, ptr %i.ec, align 16, !tbaa !276
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store ptr %17, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !278
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store ptr %18, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !280
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  store ptr %i.cd, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !282
  store ptr %i.ec, ptr %19, align 8, !tbaa !246
  store ptr @"_ZNSt17_Function_handlerIFvvEZN6duckdb8AppenderC1ERNS1_10ConnectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_SC_mE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.ed, align 8, !tbaa !284
  store ptr @"_ZNSt17_Function_handlerIFvvEZN6duckdb8AppenderC1ERNS1_10ConnectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_SC_mE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation", ptr %i.ea, align 8, !tbaa !287
  invoke void @_ZN6duckdb13ClientContext24RunFunctionInTransactionERKSt8functionIFvvEEb(ptr noundef nonnull align 8 dereferenceable(512) %i.cd, ptr noundef nonnull align 8 dereferenceable(32) %19, i1 noundef zeroext true)
          to label %bb.ay unwind label %bb.br

bb.ay:                                            ; preds = %bb.ax
  %i.ee = load ptr, ptr %i.ea, align 8, !tbaa !287 ; 2 uses
  %.not.i89 = icmp eq ptr %i.ee, null
  br i1 %.not.i89, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ef = invoke noundef zeroext i1 %i.ee(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %19, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.ba ; 0 uses

bb.ba:                                            ; preds = %bb.az
  %i.eg = landingpad { ptr, i32 }
          catch ptr null
  %i.eh = extractvalue { ptr, i32 } %i.eg, 0
  call void @__clang_call_terminate(ptr %i.eh) #42
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  invoke void @_ZN6duckdb9DataChunk7DestroyEv(ptr noundef nonnull align 8 dereferenceable(72) %i.d)
          to label %.noexc90 unwind label %bb.bu

.noexc90:                                         ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.ei = load ptr, ptr %i.b, align 8, !tbaa !50, !nonnull !51, !align !52
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !48
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !48
  %i.en = icmp eq ptr %i.ek, %i.em
  %.0.i.i = select i1 %i.en, ptr %i.c, ptr %i.ej
  invoke void @_ZN6duckdb9DataChunk10InitializeERNS_9AllocatorERKNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEEm(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.ei, ptr noundef nonnull align 8 dereferenceable(24) %.0.i.i, i64 noundef 2048)
          to label %_ZN6duckdb12BaseAppender15InitializeChunkEv.exit unwind label %bb.bu

_ZN6duckdb12BaseAppender15InitializeChunkEv.exit: ; preds = %.noexc90
  %i.eo = load ptr, ptr %i.b, align 8, !tbaa !50, !nonnull !51, !align !52
  %i.ep = load ptr, ptr %i.ej, align 8, !tbaa !48
  %i.eq = load ptr, ptr %i.el, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.er = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #41
          to label %.noexc93 unwind label %bb.bv  ; 3 uses

.noexc93:                                         ; preds = %_ZN6duckdb12BaseAppender15InitializeChunkEv.exit
  %i.es = icmp eq ptr %i.ep, %i.eq
  %.0.i = select i1 %i.es, ptr %i.c, ptr %i.ej
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %.0.i)
          to label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit.i unwind label %bb.bd, !noalias !288

_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit.i: ; preds = %.noexc93
  invoke void @_ZN6duckdb20ColumnDataCollectionC1ERNS_9AllocatorENS_6vectorINS_11LogicalTypeELb1ESaIS4_EEE(ptr noundef nonnull align 8 dereferenceable(112) %i.er, ptr noundef nonnull align 8 dereferenceable(32) %i.eo, ptr noundef nonnull %6)
          to label %bb.bb unwind label %bb.be, !noalias !288

bb.bb:                                            ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit.i
  %i.et = load ptr, ptr %6, align 8, !tbaa !56, !noalias !288 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !57, !noalias !288 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.et, %i.ev
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bb, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ew, %.lr.ph.i.i.i.i ], [ %i.et, %bb.bb ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i.i) #28, !noalias !288
  %i.ew = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i92 = icmp eq ptr %i.ew, %i.ev
  br i1 %.not.i.i.i.i92, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !58

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %6, align 8, !tbaa !56, !noalias !288
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.bb
  %i.ex = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.et, %bb.bb ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ex, null
  br i1 %.not.i.i1.i.i, label %bb.bg, label %bb.bc

bb.bc:                                            ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ex) #40, !noalias !288
  br label %bb.bg

bb.bd:                                            ; preds = %.noexc93
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.be:                                            ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit.i
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #28, !noalias !288
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.pn.i = phi { ptr, i32 } [ %i.ez, %bb.be ], [ %i.ey, %bb.bd ]
  call void @_ZdlPv(ptr noundef nonnull %i.er) #40, !noalias !288
  br label %.body
end_hunk_0
begin_hunk_1_@_ZN6duckdb23NotImplementedExceptionC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES9_DpOT_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void

bb.f:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %4, align 8, !tbaa !62     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb8Appender9AddColumnERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::vector", align 8    ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator.23", align 1 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator.23", align 1 ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator.23", align 1 ; 5 uses
  tail call void @_ZN6duckdb12BaseAppender5FlushEv(ptr noundef nonnull align 8 dereferenceable(176) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.b = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_16TableDescriptionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !325
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !326
  %.not80 = icmp eq ptr %i.e, %i.f
  br i1 %.not80, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit.thread
  %.02374 = phi i64 [ 0, %.lr.ph ], [ %i.cf, %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit.thread ] ; 2 uses
  %i.h = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_16TableDescriptionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.j = tail call noundef nonnull align 8 dereferenceable(216) ptr @_ZN6duckdb6vectorINS_16ColumnDefinitionELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %.02374) ; 5 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6duckdb16ColumnDefinition4NameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(216) %i.j) ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !96   ; 3 uses
  %i.n = load i64, ptr %i.g, align 8, !tbaa !96
  %i.o = icmp eq i64 %i.m, %i.n
  br i1 %i.o, label %bb.c, label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.p = icmp eq i64 %i.m, 0
  br i1 %i.p, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread58, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.c
  %i.q = load ptr, ptr %1, align 8, !tbaa !62
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !62
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.r, ptr %i.q, i64 %i.m)
  %.not = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread58, label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread58: ; preds = %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.s = tail call noundef zeroext i1 @_ZNK6duckdb16ColumnDefinition9GeneratedEv(ptr noundef nonnull align 8 dereferenceable(216) %i.j)
  br i1 %i.s, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread58
  %i.t = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.28, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #43
          to label %bb.ae unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %.024 = phi i1 [ false, %bb.f ], [ true, %bb.e ] ; 2 uses
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.w = load ptr, ptr %3, align 8, !tbaa !62     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.w) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br i1 %.024, label %bb.h, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br i1 %.024, label %bb.h, label %common.resume

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn3661 = phi { ptr, i32 } [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.t) #28
  br label %common.resume

bb.i:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread58
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !376 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !376 ; 2 uses
  %.not7275 = icmp eq ptr %i.aa, %i.ac
  br i1 %.not7275, label %._crit_edge79, label %.lr.ph78

bb.j:                                             ; preds = %.lr.ph78
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.055.076, i64 8 ; 2 uses
  %.not72 = icmp eq ptr %i.ad, %i.ac
  br i1 %.not72, label %._crit_edge79, label %.lr.ph78

._crit_edge79:                                    ; preds = %bb.j, %bb.i
  %i.ae = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb16ColumnDefinition4TypeEv(ptr noundef nonnull align 8 dereferenceable(216) %i.j) ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !57 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !49
  %.not.i = icmp eq ptr %i.ag, %i.ai
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge79
  tail call void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.ae)
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !57
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store ptr %i.ak, ptr %i.af, align 8, !tbaa !57
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit

bb.l:                                             ; preds = %._crit_edge79
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.ae)
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.k, %bb.l
  %i.am = tail call i64 @_ZNK6duckdb16ColumnDefinition7LogicalEv(ptr noundef nonnull align 8 dereferenceable(216) %i.j) ; 2 uses
  %i.an = load ptr, ptr %i.ab, align 8, !tbaa !320 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !383
  %.not.i.i = icmp eq ptr %i.an, %i.ap
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit
  store i64 %i.am, ptr %i.an, align 8, !tbaa !67
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.aq, ptr %i.ab, align 8, !tbaa !320
  br label %.thread

bb.n:                                             ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit
  %i.ar = load ptr, ptr %i.z, align 8, !tbaa !292 ; 7 uses
  %i.as = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.at = ptrtoint ptr %i.ar to i64               ; 3 uses
  %i.au = sub i64 %i.as, %i.at                    ; 3 uses
  %i.av = icmp eq i64 %i.au, 9223372036854775800
  br i1 %i.av, label %bb.o, label %_ZNKSt6vectorIN6duckdb12LogicalIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.592) #43
  unreachable

_ZNKSt6vectorIN6duckdb12LogicalIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.n
  %i.aw = ashr exact i64 %i.au, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aw, i64 1)
  %i.ax = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aw ; 2 uses
  %i.ay = icmp ult i64 %i.ax, %i.aw
  %i.az = tail call i64 @llvm.umin.i64(i64 %i.ax, i64 1152921504606846975)
  %i.ba = select i1 %i.ay, i64 1152921504606846975, i64 %i.az ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ba, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bb = shl nuw nsw i64 %i.ba, 3
  %i.bc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #41 ; 8 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.au
  store i64 %i.am, ptr %i.bd, align 8, !tbaa !67
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ar, %i.an
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN6duckdb12LogicalIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.be = ptrtoaddr ptr %i.bc to i64
  %i.bf = sub i64 %i.as, %i.at
  %i.bg = add i64 %i.bf, -8                       ; 2 uses
  %i.bh = lshr i64 %i.bg, 3
  %i.bi = add nuw nsw i64 %i.bh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bg, 72
  %i.bj = sub i64 %i.at, %i.be
  %diff.check = icmp ugt i64 %i.bj, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader108, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bi, 4611686018427387900     ; 3 uses
  %i.bk = shl i64 %n.vec, 3                       ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bc, i64 %i.bk  ; 2 uses
  %i.bm = getelementptr i8, ptr %i.ar, i64 %i.bk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bn = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bc, i64 %i.bn ; 2 uses
  %next.gep105 = getelementptr i8, ptr %i.ar, i64 %i.bn ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !387)
  %i.bo = getelementptr i8, ptr %next.gep105, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep105, align 8, !tbaa !67, !alias.scope !387, !noalias !384
  %wide.load106 = load <2 x i64>, ptr %i.bo, align 8, !tbaa !67, !alias.scope !387, !noalias !384
  %i.bp = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !67, !alias.scope !384, !noalias !387
  store <2 x i64> %wide.load106, ptr %i.bp, align 8, !tbaa !67, !alias.scope !384, !noalias !387
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !389

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader108

.lr.ph.i.i.i.i.i.i.i.preheader108:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bl, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bm, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader108, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader108 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader108 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !387)
  %i.br = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !67, !alias.scope !387, !noalias !384
  store i64 %i.br, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !67, !alias.scope !384, !noalias !387
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bs, %i.an
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !390

_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb12LogicalIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bc, %_ZNKSt6vectorIN6duckdb12LogicalIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.bl, %middle.block ], [ %i.bt, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ar) #40
  br label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit

.lr.ph78:                                         ; preds = %bb.i, %bb.j
  %.sroa.055.076 = phi ptr [ %i.ad, %bb.j ], [ %i.aa, %bb.i ] ; 2 uses
  %i.bv = tail call i64 @_ZNK6duckdb16ColumnDefinition7LogicalEv(ptr noundef nonnull align 8 dereferenceable(216) %i.j)
  %i.bw = load i64, ptr %.sroa.055.076, align 8, !tbaa !321
  %i.bx = icmp eq i64 %i.bw, %i.bv
  br i1 %i.bx, label %bb.q, label %bb.j

bb.q:                                             ; preds = %.lr.ph78
  %i.by = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.r unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.thread

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.by, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @__cxa_throw(ptr nonnull %i.by, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #43
          to label %bb.ae unwind label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.thread: ; preds = %bb.q
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r
  %.019 = phi i1 [ false, %bb.s ], [ true, %bb.r ] ; 2 uses
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cb = load ptr, ptr %5, align 8, !tbaa !62    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.t
  call void @_ZdlPv(ptr noundef %i.cb) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %.019, label %bb.u, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %.019, label %bb.u, label %common.resume

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %.pn65 = phi { ptr, i32 } [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.thread ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42 ]
  call void @__cxa_free_exception(ptr %i.by) #28
  br label %common.resume

_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, %bb.p
  store ptr %i.bc, ptr %i.z, align 8, !tbaa !292
  store ptr %i.bu, ptr %i.ab, align 8, !tbaa !320
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.ba
  store ptr %i.ce, ptr %i.ao, align 8, !tbaa !383
  br label %.thread

_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.b, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.cf = add nuw i64 %.02374, 1                  ; 2 uses
  %i.cg = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_16TableDescriptionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 104
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 112
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !325
  %i.ck = load ptr, ptr %i.ch, align 8, !tbaa !326
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = sdiv exact i64 %i.cn, 216
  %i.cp = icmp ult i64 %i.cf, %i.co
  br i1 %i.cp, label %bb.b, label %._crit_edge, !llvm.loop !391

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit.thread, %bb.a
  %i.cq = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.30, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.v unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.thread

bb.v:                                             ; preds = %._crit_edge
  invoke void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  invoke void @__cxa_throw(ptr nonnull %i.cq, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #43
          to label %bb.ae unwind label %bb.x

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.thread: ; preds = %._crit_edge
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  %.0 = phi i1 [ false, %bb.w ], [ true, %bb.v ]  ; 2 uses
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ct = load ptr, ptr %7, align 8, !tbaa !62    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.x
  call void @_ZdlPv(ptr noundef %i.ct) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br i1 %.0, label %bb.y, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br i1 %.0, label %bb.y, label %common.resume

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %.pn3971 = phi { ptr, i32 } [ %i.cr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.thread ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ], [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ]
  call void @__cxa_free_exception(ptr %i.cq) #28
  br label %common.resume

.thread:                                          ; preds = %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EE9push_backEOS1_.exit, %bb.m
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @_ZN6duckdb9DataChunk7DestroyEv(ptr noundef nonnull align 8 dereferenceable(72) %i.cw)
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !50, !nonnull !51, !align !52
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !48
  %i.db = load ptr, ptr %i.af, align 8, !tbaa !48
  %i.dc = icmp eq ptr %i.da, %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.0.i.i = select i1 %i.dc, ptr %i.dd, ptr %i.cz
  tail call void @_ZN6duckdb9DataChunk10InitializeERNS_9AllocatorERKNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEEm(ptr noundef nonnull align 8 dereferenceable(72) %i.cw, ptr noundef nonnull align 8 dereferenceable(32) %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %.0.i.i, i64 noundef 2048)
  %i.de = load ptr, ptr %i.cx, align 8, !tbaa !50, !nonnull !51, !align !52
  %i.df = load ptr, ptr %i.cz, align 8, !tbaa !48
  %i.dg = load ptr, ptr %i.af, align 8, !tbaa !48
  %i.dh = icmp eq ptr %i.df, %i.dg
  %.0.i = select i1 %i.dh, ptr %i.dd, ptr %i.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.di = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #41, !noalias !392 ; 3 uses
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.0.i)
end_hunk_1
begin_hunk_2_@_ZNK6duckdb10shared_ptrINS_21PreparedStatementDataELb1EEptEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10shared_ptrINS_21PreparedStatementDataELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb17PreparedStatement12CanCachePlanERKNS_15LogicalOperatorE(ptr noundef nonnull align 8 dereferenceable(97) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt6vectorISt17reference_wrapperIKN6duckdb15LogicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.duckdb::vector.2434", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.d = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #41
          to label %.lr.ph63.preheader unwind label %bb.a ; 3 uses

.lr.ph63.preheader:                               ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb15LogicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.e = ptrtoint ptr %0 to i64
  store i64 %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !1174
  store ptr %i.f, ptr %i.b, align 8, !tbaa !1177
  store ptr %i.f, ptr %i.c, align 8, !tbaa !1178
  br label %.lr.ph63

bb.a:                                             ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb15LogicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph63:                                         ; preds = %.lr.ph63.preheader, %._crit_edge
  %.02161 = phi i64 [ %i.bp, %._crit_edge ], [ 0, %.lr.ph63.preheader ] ; 2 uses
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperIKNS_15LogicalOperatorEELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.02161)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.lr.ph63
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1179 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i8, ptr %i.j, align 8, !tbaa !1181
  %cond1.not.not.not.not = icmp ne i8 %i.k, 25    ; 2 uses
  br i1 %cond1.not.not.not.not, label %bb.d, label %..critedge.loopexit_crit_edge

..critedge.loopexit_crit_edge:                    ; preds = %bb.b
  %.pre66.pre = load ptr, ptr %2, align 8, !tbaa !1174
  br label %.critedge

bb.c:                                             ; preds = %.lr.ph63
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.bodythread-pre-split

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1196 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1196 ; 2 uses
  %.not5358 = icmp eq ptr %i.n, %i.p
  br i1 %.not5358, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.d
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !1177
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.d, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb15LogicalOperatorEESaIS4_EE9push_backEOS4_.exit41
  %.sroa.047.059 = phi ptr [ %i.bn, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb15LogicalOperatorEESaIS4_EE9push_backEOS4_.exit41 ], [ %i.n, %bb.d ] ; 2 uses
  %i.q = load ptr, ptr %.sroa.047.059, align 8, !tbaa !1118 ; 3 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %.noexc.i, label %_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEdeEv.exit, !prof !108

.noexc.i:                                         ; preds = %.lr.ph
  %i.r = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.s, ptr %1, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 49, ptr %i.a, align 8, !tbaa !67
  %i.t = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc44 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ; 3 uses

.noexc44:                                         ; preds = %.noexc.i
  store ptr %i.t, ptr %1, align 8, !tbaa !62
  %i.u = load i64, ptr %i.a, align 8, !tbaa !67   ; 3 uses
  store i64 %i.u, ptr %i.s, align 8, !tbaa !93
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.t, ptr noundef nonnull align 1 dereferenceable(49) @.str.594, i64 49, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !96
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  store i8 0, ptr %i.w, align 1, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc44
  invoke void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #43
          to label %bb.h unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %.noexc.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %.noexc44
  %.0.i.i = phi i1 [ false, %bb.e ], [ true, %.noexc44 ] ; 2 uses
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !62     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.s
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.z) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0.i.i, label %bb.g, label %.bodythread-pre-split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0.i.i, label %bb.g, label %.bodythread-pre-split

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn9.i.i = phi { ptr, i32 } [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.r) #28
  br label %.bodythread-pre-split

bb.h:                                             ; preds = %bb.e
  unreachable

_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEdeEv.exit: ; preds = %.lr.ph
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !1177 ; 5 uses
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !1178
  %.not.i.i26 = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i.i26, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEdeEv.exit
  %i.ad = ptrtoint ptr %i.q to i64
  store i64 %i.ad, ptr %i.ab, align 8
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !1177
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  store ptr %i.af, ptr %i.b, align 8, !tbaa !1177
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb15LogicalOperatorEESaIS4_EE9push_backEOS4_.exit41

bb.j:                                             ; preds = %_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEdeEv.exit
  %i.ag = load ptr, ptr %2, align 8, !tbaa !1174  ; 7 uses
  %i.ah = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64               ; 3 uses
  %i.aj = sub i64 %i.ah, %i.ai                    ; 3 uses
  %i.ak = icmp eq i64 %i.aj, 9223372036854775800
  br i1 %i.ak, label %bb.k, label %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb15LogicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i27

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.592) #43
          to label %.noexc39 unwind label %.loopexit.split-lp

.noexc39:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorISt17reference_wrapperIKN6duckdb15LogicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i27: ; preds = %bb.j
  %i.al = ashr exact i64 %i.aj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i28 = call i64 @llvm.umax.i64(i64 %i.al, i64 1)
  %i.am = add nsw i64 %.sroa.speculated.i.i.i.i28, %i.al ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.al
  %i.ao = call i64 @llvm.umin.i64(i64 %i.am, i64 1152921504606846975)
  %i.ap = select i1 %i.an, i64 1152921504606846975, i64 %i.ao ; 3 uses
  %.not.i.i.i.i29 = icmp ne i64 %i.ap, 0
  call void @llvm.assume(i1 %.not.i.i.i.i29)
  %i.aq = shl nuw nsw i64 %i.ap, 3
  %i.ar = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #41
          to label %.noexc40 unwind label %.loopexit ; 8 uses

.noexc40:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb15LogicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i27
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aj
  %i.at = ptrtoint ptr %i.q to i64
  store i64 %i.at, ptr %i.as, align 8
  %.not10.i.i.i.i.i.i.i30 = icmp eq ptr %i.ag, %i.ab
  br i1 %.not10.i.i.i.i.i.i.i30, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb15LogicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i35, label %.lr.ph.i.i.i.i.i.i.i31.preheader

.lr.ph.i.i.i.i.i.i.i31.preheader:                 ; preds = %.noexc40
  %i.au = ptrtoaddr ptr %i.ar to i64
  %i.av = sub i64 %i.ah, %i.ai
  %i.aw = add i64 %i.av, -8                       ; 2 uses
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aw, 24
  %i.az = sub i64 %i.ai, %i.au
  %diff.check = icmp ugt i64 %i.az, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i31.preheader95, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i31.preheader
  %n.vec = and i64 %i.ay, 4611686018427387900     ; 3 uses
  %i.ba = shl i64 %n.vec, 3                       ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ar, i64 %i.ba  ; 2 uses
  %i.bc = getelementptr i8, ptr %i.ag, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bd = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ar, i64 %i.bd ; 2 uses
  %next.gep92 = getelementptr i8, ptr %i.ag, i64 %i.bd ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1197)
  call void @llvm.experimental.noalias.scope.decl(metadata !1200)
  %i.be = getelementptr i8, ptr %next.gep92, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep92, align 8, !alias.scope !1200, !noalias !1197
  %wide.load93 = load <2 x i64>, ptr %i.be, align 8, !alias.scope !1200, !noalias !1197
  %i.bf = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !1197, !noalias !1200
  store <2 x i64> %wide.load93, ptr %i.bf, align 8, !alias.scope !1197, !noalias !1200
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !1202

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ay, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb15LogicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i35, label %.lr.ph.i.i.i.i.i.i.i31.preheader95

.lr.ph.i.i.i.i.i.i.i31.preheader95:               ; preds = %.lr.ph.i.i.i.i.i.i.i31.preheader, %middle.block
  %.012.i.i.i.i.i.i.i32.ph = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i.i31.preheader ], [ %i.bb, %middle.block ]
  %.0911.i.i.i.i.i.i.i33.ph = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i.i31.preheader ], [ %i.bc, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i31

.lr.ph.i.i.i.i.i.i.i31:                           ; preds = %.lr.ph.i.i.i.i.i.i.i31.preheader95, %.lr.ph.i.i.i.i.i.i.i31
  %.012.i.i.i.i.i.i.i32 = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.i.i31 ], [ %.012.i.i.i.i.i.i.i32.ph, %.lr.ph.i.i.i.i.i.i.i31.preheader95 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i33 = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.i.i31 ], [ %.0911.i.i.i.i.i.i.i33.ph, %.lr.ph.i.i.i.i.i.i.i31.preheader95 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1197)
  call void @llvm.experimental.noalias.scope.decl(metadata !1200)
  %i.bh = load i64, ptr %.0911.i.i.i.i.i.i.i33, align 8, !alias.scope !1200, !noalias !1197
  store i64 %i.bh, ptr %.012.i.i.i.i.i.i.i32, align 8, !alias.scope !1197, !noalias !1200
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i33, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i32, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i34 = icmp eq ptr %i.bi, %i.ab
  br i1 %.not.i.i.i.i.i.i.i34, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb15LogicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i35, label %.lr.ph.i.i.i.i.i.i.i31, !llvm.loop !1203

_ZNSt6vectorISt17reference_wrapperIKN6duckdb15LogicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i35: ; preds = %.lr.ph.i.i.i.i.i.i.i31, %middle.block, %.noexc40
  %.0.lcssa.i.i.i.i.i.i.i36 = phi ptr [ %i.ar, %.noexc40 ], [ %i.bb, %middle.block ], [ %i.bj, %.lr.ph.i.i.i.i.i.i.i31 ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i36, i64 8 ; 2 uses
  %.not.i23.i.i.i37 = icmp eq ptr %i.ag, null
  br i1 %.not.i23.i.i.i37, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb15LogicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i38, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIKN6duckdb15LogicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i35
  call void @_ZdlPv(ptr noundef nonnull %i.ag) #40
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb15LogicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i38

_ZNSt6vectorISt17reference_wrapperIKN6duckdb15LogicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i38: ; preds = %bb.l, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb15LogicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i35
  store ptr %i.ar, ptr %2, align 8, !tbaa !1174
  store ptr %i.bk, ptr %i.b, align 8, !tbaa !1177
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.ap
  store ptr %i.bl, ptr %i.c, align 8, !tbaa !1178
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb15LogicalOperatorEESaIS4_EE9push_backEOS4_.exit41

_ZNSt6vectorISt17reference_wrapperIKN6duckdb15LogicalOperatorEESaIS4_EE9push_backEOS4_.exit41: ; preds = %_ZNSt6vectorISt17reference_wrapperIKN6duckdb15LogicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i38, %bb.i
  %i.bm = phi ptr [ %i.bk, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb15LogicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i38 ], [ %i.af, %bb.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.047.059, i64 8 ; 2 uses
  %.not53 = icmp eq ptr %i.bn, %i.p
  br i1 %.not53, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb15LogicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i27
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.bodythread-pre-split

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.bodythread-pre-split

._crit_edge:                                      ; preds = %_ZNSt6vectorISt17reference_wrapperIKN6duckdb15LogicalOperatorEESaIS4_EE9push_backEOS4_.exit41, %.._crit_edge_crit_edge
  %i.bo = phi ptr [ %.pre, %.._crit_edge_crit_edge ], [ %i.bm, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb15LogicalOperatorEESaIS4_EE9push_backEOS4_.exit41 ]
  %i.bp = add nuw i64 %.02161, 1                  ; 2 uses
  %i.bq = load ptr, ptr %2, align 8, !tbaa !1174  ; 2 uses
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = ashr exact i64 %i.bt, 3
  %.not.not = icmp ult i64 %i.bp, %i.bu
  br i1 %.not.not, label %.lr.ph63, label %.critedge, !llvm.loop !1204

.critedge:                                        ; preds = %._crit_edge, %..critedge.loopexit_crit_edge
  %.pre66 = phi ptr [ %.pre66.pre, %..critedge.loopexit_crit_edge ], [ %i.bq, %._crit_edge ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre66, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb15LogicalOperatorEESaIS4_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %.critedge
  call void @_ZdlPv(ptr noundef nonnull %.pre66) #40
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb15LogicalOperatorEESaIS4_EED2Ev.exit

_ZNSt6vectorISt17reference_wrapperIKN6duckdb15LogicalOperatorEESaIS4_EED2Ev.exit: ; preds = %.critedge, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret i1 %cond1.not.not.not.not

.bodythread-pre-split:                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.g, %.loopexit.split-lp, %.loopexit
  %.pn.pn.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %.pn9.i.i, %bb.g ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.l, %bb.c ]
  %.pr = load ptr, ptr %2, align 8, !tbaa !1174
  br label %.body

.body:                                            ; preds = %.bodythread-pre-split, %bb.a
  %i.bv = phi ptr [ %.pr, %.bodythread-pre-split ], [ null, %bb.a ] ; 2 uses
  %.pn.pn = phi { ptr, i32 } [ %.pn.pn.ph, %.bodythread-pre-split ], [ %i.g, %bb.a ]
  %.not.i.i.i42 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i42, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb15LogicalOperatorEESaIS4_EED2Ev.exit43, label %bb.n

bb.n:                                             ; preds = %.body
  call void @_ZdlPv(ptr noundef nonnull %i.bv) #40
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb15LogicalOperatorEESaIS4_EED2Ev.exit43

_ZNSt6vectorISt17reference_wrapperIKN6duckdb15LogicalOperatorEESaIS4_EED2Ev.exit43: ; preds = %.body, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(97) ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.23", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1118   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !108

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.594, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #43
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !62     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.23", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1118   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !108
end_hunk_2
