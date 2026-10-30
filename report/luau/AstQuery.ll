Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/AstQuery?download=true
inline.NumInlined: 928
inline.NumDeleted: 489
begin_hunk_0_@_ZN4Luau32getDocumentationSymbolAtPositionB5cxx11ERKNS_12SourceModuleERKNS_6ModuleENS_8PositionE:bb.a
  %i.bm = icmp ugt i64 %i.bl, 15
  br i1 %i.bm, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.q
  %i.bn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc240 unwind label %bb.ad ; 2 uses

.noexc240:                                        ; preds = %.noexc.i
  store ptr %i.bn, ptr %6, align 8, !tbaa !130
  %i.bo = load i64, ptr %i.f, align 8, !tbaa !129
  store i64 %i.bo, ptr %i.bj, align 8, !tbaa !100
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc240, %bb.q
  %i.bp = phi ptr [ %i.bn, %.noexc240 ], [ %i.bj, %bb.q ] ; 2 uses
  switch i64 %i.bl, label %bb.s [
    i64 1, label %bb.r
    i64 0, label %bb.t
  ]

bb.r:                                             ; preds = %._crit_edge.i.i
  %i.bq = load i8, ptr %i.bi, align 1, !tbaa !100
  store i8 %i.bq, ptr %i.bp, align 1, !tbaa !100
  br label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bp, ptr nonnull align 1 %i.bi, i64 %i.bl, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %._crit_edge.i.i
  %i.br = load i64, ptr %i.f, align 8, !tbaa !129 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !131
  %i.bt = load ptr, ptr %6, align 8, !tbaa !130
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.br
  store i8 0, ptr %i.bu, align 1, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !136 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 6 uses
  %.not10.i.i.i = icmp eq ptr %i.bw, null
  %.pre616 = load ptr, ptr %6, align 8            ; 4 uses
  br i1 %.not10.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t
  %i.by = load i64, ptr %i.bs, align 8, !tbaa !131 ; 4 uses
  br label %bb.u

bb.u:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !131 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.by, i64 %i.ca) ; 2 uses
  %i.cb = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.cb, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.u
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !130
  %i.ce = call i32 @memcmp(ptr noundef %i.cd, ptr noundef %.pre616, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #23 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ce, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.u
  %i.cf = sub i64 %i.ca, %i.by
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.cf, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.ce, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.cg = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.cg, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.cg, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !137 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.u, !llvm.loop !3

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.ch = icmp eq ptr %.19.i.i.i, %i.bx
  br i1 %i.ch, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, label %bb.v

bb.v:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !131 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.cj, i64 %i.by) ; 2 uses
  %i.ck = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.ck, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.v
  %i.cl = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !130
  %i.cn = call i32 @memcmp(ptr noundef %.pre616, ptr noundef %i.cm, i64 noundef %.sroa.speculated.i.i.i.i.i) #23 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.cn, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.v
  %i.co = sub i64 %i.by, %i.cj
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.co, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.cn, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.cp = icmp slt i32 %.0.i.i.i.i.i, 0
  %spec.select.i.i = select i1 %i.cp, ptr %i.bx, ptr %.19.i.i.i
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.t
  %.sroa.0.0.i.i = phi ptr [ %i.bx, %bb.t ], [ %i.bx, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %spec.select.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ] ; 6 uses
  %i.cq = icmp eq ptr %.pre616, %i.bj
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  %i.cr = load i64, ptr %i.bj, align 8, !tbaa !100
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %.pre616, i64 noundef %i.cs) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %.not476 = icmp eq ptr %.sroa.0.0.i.i, %i.bx
  br i1 %.not476, label %.critedge220, label %bb.w

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 208
  %.sroa.0441.0.copyload = load ptr, ptr %i.ct, align 8
  %.sroa.6442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 216
  %.sroa.6442.0.copyload = load i8, ptr %.sroa.6442.0..sroa_idx, align 8
  %i.cu = trunc nuw i8 %.sroa.6442.0.copyload to i1
  br i1 %i.cu, label %bb.x, label %.critedge220

bb.x:                                             ; preds = %bb.w
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 200
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 6 uses
  store i8 0, ptr %i.cw, align 8, !tbaa !138
  %i.cx = load i8, ptr %i.cv, align 8, !tbaa !138, !range !29, !noundef !30
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.y, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit

bb.y:                                             ; preds = %bb.x
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 168
  %i.da = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.da, ptr %7, align 8, !tbaa !128
  %i.db = load ptr, ptr %i.cz, align 8, !tbaa !130 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 176
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !131 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store i64 %i.dd, ptr %i.e, align 8, !tbaa !129
  %i.de = icmp ugt i64 %i.dd, 15
  br i1 %i.de, label %.noexc.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.y
  %i.df = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc241 unwind label %bb.au ; 2 uses

.noexc241:                                        ; preds = %.noexc.i.i.i.i.i.i.i.i
  store ptr %i.df, ptr %7, align 8, !tbaa !130
  %i.dg = load i64, ptr %i.e, align 8, !tbaa !129
  store i64 %i.dg, ptr %i.da, align 8, !tbaa !100
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.noexc241, %bb.y
  %i.dh = phi ptr [ %i.df, %.noexc241 ], [ %i.da, %bb.y ] ; 2 uses
  switch i64 %i.dd, label %bb.aa [
    i64 1, label %bb.z
    i64 0, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i
  ]

bb.z:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.di = load i8, ptr %i.db, align 1, !tbaa !100
  store i8 %i.di, ptr %i.dh, align 1, !tbaa !100
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dh, ptr align 1 %i.db, i64 %i.dd, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i: ; preds = %bb.aa, %bb.z, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.dj = load i64, ptr %i.e, align 8, !tbaa !129 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !131
  %i.dl = load ptr, ptr %7, align 8, !tbaa !130
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dj
  store i8 0, ptr %i.dm, align 1, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  store i8 1, ptr %i.cw, align 8, !tbaa !138
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit: ; preds = %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i, %bb.x
  invoke fastcc void @_ZN4LuauL34checkOverloadedDocumentationSymbolERKNS_6ModuleEPKNS_4TypeEPKNS_7AstExprESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(1097) %2, ptr noundef %.sroa.0441.0.copyload, ptr noundef %i.ac, ptr noundef align 8 %7)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit
  %i.dn = load i8, ptr %i.cw, align 8, !tbaa !138, !range !29, !noundef !30
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %bb.ac, label %.critedge234

bb.ac:                                            ; preds = %bb.ab
  store i8 0, ptr %i.cw, align 8, !tbaa !138
  %i.dp = load ptr, ptr %7, align 8, !tbaa !130   ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %.critedge234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.ac
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !100
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.dt) #22
  br label %.critedge234

bb.ad:                                            ; preds = %.noexc.i, %bb.p
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit247

bb.ae:                                            ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit
  %i.dv = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.dw = load i8, ptr %i.cw, align 8, !tbaa !138, !range !29, !noundef !30
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %bb.af, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit247

bb.af:                                            ; preds = %bb.ae
  store i8 0, ptr %i.cw, align 8, !tbaa !138
  %i.dy = load ptr, ptr %7, align 8, !tbaa !130   ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ea = icmp eq ptr %i.dy, %i.dz
  br i1 %i.ea, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit247, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i245: ; preds = %bb.af
  %i.eb = load i64, ptr %i.dz, align 8, !tbaa !100
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.ec) #22
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit247

_ZN4Luau3getINS_10ExternTypeEEEPKT_PKNS_4TypeE.exit.preheader: ; preds = %bb.o
  %i.ed = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.ee = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  br label %_ZN4Luau3getINS_10ExternTypeEEEPKT_PKNS_4TypeE.exit303

_ZN4Luau3getINS_10ExternTypeEEEPKT_PKNS_4TypeE.exit303: ; preds = %bb.ay, %_ZN4Luau3getINS_10ExternTypeEEEPKT_PKNS_4TypeE.exit.preheader
  %.pn741 = phi ptr [ %i.bf, %_ZN4Luau3getINS_10ExternTypeEEEPKT_PKNS_4TypeE.exit.preheader ], [ %i.hd, %bb.ay ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.eg = load ptr, ptr %i.ed, align 8, !tbaa !230 ; 4 uses
  store ptr %i.ee, ptr %8, align 8, !tbaa !128
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZN4Luau3getINS_10ExternTypeEEEPKT_PKNS_4TypeE.exit303
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.64) #20
          to label %.noexc251 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc251:                                        ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %_ZN4Luau3getINS_10ExternTypeEEEPKT_PKNS_4TypeE.exit303
  %i.ei = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.eg) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i64 %i.ei, ptr %i.d, align 8, !tbaa !129
  %i.ej = icmp ugt i64 %i.ei, 15
  br i1 %i.ej, label %.noexc.i250, label %._crit_edge.i.i249

.noexc.i250:                                      ; preds = %bb.ah
  %i.ek = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc252 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc252:                                        ; preds = %.noexc.i250
  store ptr %i.ek, ptr %8, align 8, !tbaa !130
  %i.el = load i64, ptr %i.d, align 8, !tbaa !129
  store i64 %i.el, ptr %i.ee, align 8, !tbaa !100
  br label %._crit_edge.i.i249

._crit_edge.i.i249:                               ; preds = %.noexc252, %bb.ah
  %i.em = phi ptr [ %i.ek, %.noexc252 ], [ %i.ee, %bb.ah ] ; 2 uses
  switch i64 %i.ei, label %bb.aj [
    i64 1, label %bb.ai
    i64 0, label %bb.ak
  ]

bb.ai:                                            ; preds = %._crit_edge.i.i249
  %i.en = load i8, ptr %i.eg, align 1, !tbaa !100
  store i8 %i.en, ptr %i.em, align 1, !tbaa !100
  br label %bb.ak

bb.aj:                                            ; preds = %._crit_edge.i.i249
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.em, ptr nonnull align 1 %i.eg, i64 %i.ei, i1 false)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %._crit_edge.i.i249
  %i.eo = load i64, ptr %i.d, align 8, !tbaa !129 ; 2 uses
  store i64 %i.eo, ptr %i.ef, align 8, !tbaa !131
  %i.ep = load ptr, ptr %8, align 8, !tbaa !130
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.eo
  store i8 0, ptr %i.eq, align 1, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  %i.er = getelementptr inbounds nuw i8, ptr %.pn741, i64 56
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !136 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.pn741, i64 48 ; 6 uses
  %.not10.i.i.i254 = icmp eq ptr %i.es, null
  %.pre615 = load ptr, ptr %8, align 8            ; 4 uses
  br i1 %.not10.i.i.i254, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit284, label %.lr.ph.i.i.i255

.lr.ph.i.i.i255:                                  ; preds = %bb.ak
  %i.eu = load i64, ptr %i.ef, align 8, !tbaa !131 ; 4 uses
  br label %bb.al

bb.al:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i261, %.lr.ph.i.i.i255
  %.012.i.i.i256 = phi ptr [ %i.es, %.lr.ph.i.i.i255 ], [ %.1.i.i.i266, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i261 ] ; 4 uses
  %.0811.i.i.i257 = phi ptr [ %i.et, %.lr.ph.i.i.i255 ], [ %.19.i.i.i263, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i261 ]
  %i.ev = getelementptr inbounds nuw i8, ptr %.012.i.i.i256, i64 40
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !131 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i258 = call i64 @llvm.umin.i64(i64 %i.eu, i64 %i.ew) ; 2 uses
  %i.ex = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i258, 0
  br i1 %i.ex, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i280, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i259

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i259: ; preds = %bb.al
  %i.ey = getelementptr inbounds nuw i8, ptr %.012.i.i.i256, i64 32
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !130
  %i.fa = call i32 @memcmp(ptr noundef %i.ez, ptr noundef %.pre615, i64 noundef %.sroa.speculated.i.i.i.i.i.i258) #23 ; 2 uses
  %.not.i.i.i.i.i.i260 = icmp eq i32 %i.fa, 0
  br i1 %.not.i.i.i.i.i.i260, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i280, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i261

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i280: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i259, %bb.al
  %i.fb = sub i64 %i.ew, %i.eu
  %spec.select7.i.i.i.i.i.i.i281 = call i64 @llvm.smax.i64(i64 %i.fb, i64 -2147483648)
  %.08.i.i.i.i.i.i.i282 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i281, i64 2147483647)
  %.0.i6.i.i.i.i.i.i283 = trunc nsw i64 %.08.i.i.i.i.i.i.i282 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i261

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i261: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i280, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i259
  %.0.i.i.i.i.i.i262 = phi i32 [ %i.fa, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i259 ], [ %.0.i6.i.i.i.i.i.i283, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i280 ]
  %i.fc = icmp slt i32 %.0.i.i.i.i.i.i262, 0      ; 2 uses
  %.19.i.i.i263 = select i1 %i.fc, ptr %.0811.i.i.i257, ptr %.012.i.i.i256 ; 5 uses
  %.1.in.v.i.i.i264 = select i1 %i.fc, i64 24, i64 16
  %.1.in.i.i.i265 = getelementptr inbounds nuw i8, ptr %.012.i.i.i256, i64 %.1.in.v.i.i.i264
  %.1.i.i.i266 = load ptr, ptr %.1.in.i.i.i265, align 8, !tbaa !137 ; 2 uses
  %.not.i.i.i267 = icmp eq ptr %.1.i.i.i266, null
  br i1 %.not.i.i.i267, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i268, label %bb.al, !llvm.loop !3

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i268: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i261
  %i.fd = icmp eq ptr %.19.i.i.i263, %i.et
  br i1 %i.fd, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit284, label %bb.am

bb.am:                                            ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i268
  %i.fe = getelementptr inbounds nuw i8, ptr %.19.i.i.i263, i64 40
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !131 ; 2 uses
  %.sroa.speculated.i.i.i.i.i269 = call i64 @llvm.umin.i64(i64 %i.ff, i64 %i.eu) ; 2 uses
  %i.fg = icmp eq i64 %.sroa.speculated.i.i.i.i.i269, 0
  br i1 %i.fg, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i276, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i270

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i270: ; preds = %bb.am
  %i.fh = getelementptr inbounds nuw i8, ptr %.19.i.i.i263, i64 32
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !130
  %i.fj = call i32 @memcmp(ptr noundef %.pre615, ptr noundef %i.fi, i64 noundef %.sroa.speculated.i.i.i.i.i269) #23 ; 2 uses
  %.not.i.i.i.i.i271 = icmp eq i32 %i.fj, 0
  br i1 %.not.i.i.i.i.i271, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i276, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i272

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i276: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i270, %bb.am
  %i.fk = sub i64 %i.eu, %i.ff
  %spec.select7.i.i.i.i.i.i277 = call i64 @llvm.smax.i64(i64 %i.fk, i64 -2147483648)
  %.08.i.i.i.i.i.i278 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i277, i64 2147483647)
  %.0.i6.i.i.i.i.i279 = trunc nsw i64 %.08.i.i.i.i.i.i278 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i272

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i272: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i276, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i270
  %.0.i.i.i.i.i273 = phi i32 [ %i.fj, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i270 ], [ %.0.i6.i.i.i.i.i279, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i276 ]
  %i.fl = icmp slt i32 %.0.i.i.i.i.i273, 0
  %spec.select.i.i274 = select i1 %i.fl, ptr %i.et, ptr %.19.i.i.i263
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit284

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit284: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i272, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i268, %bb.ak
  %.sroa.0.0.i.i275 = phi ptr [ %i.et, %bb.ak ], [ %i.et, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i268 ], [ %spec.select.i.i274, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i272 ] ; 6 uses
  %i.fm = icmp eq ptr %.pre615, %i.ee
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit284
  %i.fn = load i64, ptr %i.ee, align 8, !tbaa !100
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %.pre615, i64 noundef %i.fo) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit284, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %.not475 = icmp eq ptr %.sroa.0.0.i.i275, %i.et
  br i1 %.not475, label %.critedge218, label %bb.an

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i275, i64 208
  %.sroa.0434.0.copyload = load ptr, ptr %i.fp, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i275, i64 216
  %.sroa.6.0.copyload = load i8, ptr %.sroa.6.0..sroa_idx, align 8
  %i.fq = trunc nuw i8 %.sroa.6.0.copyload to i1
  br i1 %i.fq, label %bb.ao, label %.critedge218

bb.ao:                                            ; preds = %bb.an
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i275, i64 200
  %i.fs = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 6 uses
  store i8 0, ptr %i.fs, align 8, !tbaa !138
  %i.ft = load i8, ptr %i.fr, align 8, !tbaa !138, !range !29, !noundef !30
  %i.fu = trunc nuw i8 %i.ft to i1
  br i1 %i.fu, label %bb.ap, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit292

bb.ap:                                            ; preds = %bb.ao
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i275, i64 168
  %i.fw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr %i.fw, ptr %9, align 8, !tbaa !128
  %i.fx = load ptr, ptr %i.fv, align 8, !tbaa !130 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i275, i64 176
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !131 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i64 %i.fz, ptr %i.c, align 8, !tbaa !129
  %i.ga = icmp ugt i64 %i.fz, 15
  br i1 %i.ga, label %.noexc.i.i.i.i.i.i.i.i290, label %._crit_edge.i.i.i.i.i.i.i.i.i288

.noexc.i.i.i.i.i.i.i.i290:                        ; preds = %bb.ap
  %i.gb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc291 unwind label %bb.au ; 2 uses

.noexc291:                                        ; preds = %.noexc.i.i.i.i.i.i.i.i290
  store ptr %i.gb, ptr %9, align 8, !tbaa !130
  %i.gc = load i64, ptr %i.c, align 8, !tbaa !129
  store i64 %i.gc, ptr %i.fw, align 8, !tbaa !100
  br label %._crit_edge.i.i.i.i.i.i.i.i.i288

._crit_edge.i.i.i.i.i.i.i.i.i288:                 ; preds = %.noexc291, %bb.ap
  %i.gd = phi ptr [ %i.gb, %.noexc291 ], [ %i.fw, %bb.ap ] ; 2 uses
  switch i64 %i.fz, label %bb.ar [
    i64 1, label %bb.aq
    i64 0, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i289
  ]

bb.aq:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i288
  %i.ge = load i8, ptr %i.fx, align 1, !tbaa !100
  store i8 %i.ge, ptr %i.gd, align 1, !tbaa !100
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i289

bb.ar:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i288
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gd, ptr align 1 %i.fx, i64 %i.fz, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i289

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i289: ; preds = %bb.ar, %bb.aq, %._crit_edge.i.i.i.i.i.i.i.i.i288
  %i.gf = load i64, ptr %i.c, align 8, !tbaa !129 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.gf, ptr %i.gg, align 8, !tbaa !131
  %i.gh = load ptr, ptr %9, align 8, !tbaa !130
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gf
  store i8 0, ptr %i.gi, align 1, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  store i8 1, ptr %i.fs, align 8, !tbaa !138
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit292

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit292: ; preds = %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i289, %bb.ao
  invoke fastcc void @_ZN4LuauL34checkOverloadedDocumentationSymbolERKNS_6ModuleEPKNS_4TypeEPKNS_7AstExprESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(1097) %2, ptr noundef %.sroa.0434.0.copyload, ptr noundef %i.ac, ptr noundef align 8 %9)
          to label %bb.as unwind label %bb.av

bb.as:                                            ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit292
  %i.gj = load i8, ptr %i.fs, align 8, !tbaa !138, !range !29, !noundef !30
  %i.gk = trunc nuw i8 %i.gj to i1
  br i1 %i.gk, label %bb.at, label %.critedge234

bb.at:                                            ; preds = %bb.as
  store i8 0, ptr %i.fs, align 8, !tbaa !138
  %i.gl = load ptr, ptr %9, align 8, !tbaa !130   ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.gn = icmp eq ptr %i.gl, %i.gm
  br i1 %i.gn, label %.critedge234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i293

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i293: ; preds = %bb.at
  %i.go = load i64, ptr %i.gm, align 8, !tbaa !100
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.gp) #22
  br label %.critedge234

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i250, %bb.ag
  %lpad.loopexit.split-lp777 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit247

bb.au:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i, %bb.dl, %_ZN4Luau18findExprAtPositionERKNS_12SourceModuleENS_8PositionE.exit.i, %.noexc.i.i.i.i.i.i.i.i427, %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit306, %bb.m, %bb.d, %bb.b, %.noexc.i.i.i.i.i.i.i.i290
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit247

bb.av:                                            ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit292
  %i.gr = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.gs = load i8, ptr %i.fs, align 8, !tbaa !138, !range !29, !noundef !30
  %i.gt = trunc nuw i8 %i.gs to i1
  br i1 %i.gt, label %bb.aw, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit247

bb.aw:                                            ; preds = %bb.av
  store i8 0, ptr %i.fs, align 8, !tbaa !138
  %i.gu = load ptr, ptr %9, align 8, !tbaa !130   ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.gw = icmp eq ptr %i.gu, %i.gv
  br i1 %i.gw, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit247, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i299

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i299: ; preds = %bb.aw
  %i.gx = load i64, ptr %i.gv, align 8, !tbaa !100
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gy) #22
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit247

.critedge218:                                     ; preds = %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287
  %i.gz = getelementptr inbounds nuw i8, ptr %.pn741, i64 96
  %i.ha = load i8, ptr %i.gz, align 8, !tbaa !140, !range !29, !noundef !30
  %i.hb = trunc nuw i8 %i.ha to i1
  br i1 %i.hb, label %bb.ax, label %.critedge220

bb.ax:                                            ; preds = %.critedge218
  %i.hc = getelementptr inbounds nuw i8, ptr %.pn741, i64 88
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !118 ; 3 uses
  %.not.i.i302 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i302, label %.critedge220, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !126
  %i.hf = icmp eq i32 %i.he, 11
  br i1 %i.hf, label %_ZN4Luau3getINS_10ExternTypeEEEPKT_PKNS_4TypeE.exit303, label %.critedge220, !llvm.loop !207

_ZN4Luau3getINS_13PrimitiveTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %bb.o
  %i.hg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.hh = load i8, ptr %i.hg, align 8, !tbaa !140, !range !29, !noundef !30
  %i.hi = trunc nuw i8 %i.hh to i1
  br i1 %i.hi, label %bb.az, label %.critedge220

bb.az:                                            ; preds = %_ZN4Luau3getINS_13PrimitiveTypeEEEPKT_PKNS_4TypeE.exit
  %i.hj = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !118 ; 3 uses
  %.not.i.i305 = icmp eq ptr %i.hk, null
  br i1 %.not.i.i305, label %.critedge220, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !126
  %i.hm = icmp eq i32 %i.hl, 9
  br i1 %i.hm, label %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit306, label %.critedge220

_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit306: ; preds = %bb.ba
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  invoke fastcc void @_ZN4LuauL25getMetatableDocumentationB5cxx11ERKNS_6ModuleEPNS_7AstExprEPKNS_9TableTypeERKNS_7AstNameE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(1097) %2, ptr noundef %i.ac, ptr noundef %i.hn, ptr noundef nonnull align 8 dereferenceable(8) %i.ho)
          to label %bb.bb unwind label %bb.au

bb.bb:                                            ; preds = %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit306
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hq = load i8, ptr %i.hp, align 8, !tbaa !138, !range !29, !noundef !30
  %i.hr = trunc nuw i8 %i.hq to i1
  br i1 %i.hr, label %.critedge234, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  tail call void @_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #23
  br label %.critedge220

bb.bd:                                            ; preds = %bb.f
  %i.hs = load i32, ptr @_ZN4Luau7AstRttiINS_15AstExprFunctionEE5valueE, align 4, !tbaa !14
  %i.ht = icmp eq i32 %i.ae, %i.hs
  %i.hu = icmp ne ptr %i.ac, null
  %or.cond = and i1 %i.hu, %i.ht
  br i1 %or.cond, label %bb.be, label %.critedge220

bb.be:                                            ; preds = %bb.bd
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !121
  %i.hx = load i32, ptr @_ZN4Luau7AstRttiINS_11AstExprCallEE5valueE, align 4, !tbaa !14
  %i.hy = icmp eq i32 %i.hw, %i.hx
  br i1 %i.hy, label %bb.bf, label %.critedge220

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !234
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 12
  %.sroa.034.0.copyload = load i64, ptr %i.ib, align 4, !tbaa !14
  invoke void @_ZN4Luau32getDocumentationSymbolAtPositionB5cxx11ERKNS_12SourceModuleERKNS_6ModuleENS_8PositionE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.6") align 8 %10, ptr noundef nonnull align 8 dereferenceable(240) %1, ptr noundef nonnull align 8 dereferenceable(1097) %2, i64 %.sroa.034.0.copyload)
          to label %bb.bg unwind label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ic = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 7 uses
  %i.id = load i8, ptr %i.ic, align 8, !tbaa !138, !range !29, !noundef !30
  %i.ie = trunc nuw i8 %i.id to i1
  br i1 %i.ie, label %.preheader, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit397

.preheader:                                       ; preds = %bb.bg
  %i.if = getelementptr inbounds nuw i8, ptr %i.ac, i64 64 ; 2 uses
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !235 ; 2 uses
  %.not206590.not = icmp eq i64 %i.ig, 0
  br i1 %.not206590.not, label %bb.cw, label %.lr.ph593

.lr.ph593:                                        ; preds = %.preheader
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.ii = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ij = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 9 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.il = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  %i.im = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 10 uses
  %i.io = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.u, i64 96 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.ir = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 9 uses
  %i.is = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  %i.it = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 11 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 5 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit394

bb.bi:                                            ; preds = %.lr.ph593, %.thread463
  %i.jb = phi i64 [ %i.ig, %.lr.ph593 ], [ %i.st, %.thread463 ]
  %.0115591 = phi i64 [ 0, %.lr.ph593 ], [ %i.su, %.thread463 ] ; 7 uses
  %i.jc = load ptr, ptr %i.ih, align 8, !tbaa !236
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %.0115591
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !113
  %i.jf = icmp eq ptr %i.je, %i.u
  br i1 %i.jf, label %bb.bj, label %.thread463

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !237)
  %i.jg = load ptr, ptr %10, align 8, !tbaa !130, !noalias !237
  %i.jh = load i64, ptr %i.ii, align 8, !tbaa !131, !noalias !237 ; 3 uses
  store ptr %i.ij, ptr %12, align 8, !tbaa !128, !alias.scope !238
  store i64 0, ptr %i.ik, align 8, !tbaa !131, !alias.scope !238
  store i8 0, ptr %i.ij, align 8, !tbaa !100, !alias.scope !238
  %i.ji = add i64 %i.jh, 7
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %i.ji)
          to label %bb.bk unwind label %.loopexit.split-lp480.loopexit.split-lp.loopexit.split-lp

bb.bk:                                            ; preds = %bb.bj
  %i.jj = load i64, ptr %i.ik, align 8, !tbaa !131, !alias.scope !238
  %i.jk = sub i64 4611686018427387903, %i.jj
  %i.jl = icmp ult i64 %i.jk, %i.jh
  br i1 %i.jl, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.bk
  %i.jm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %i.jg, i64 noundef %i.jh)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %.loopexit.split-lp480.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.jn = load i64, ptr %i.ik, align 8, !tbaa !131, !alias.scope !238
  %i.jo = add i64 %i.jn, -4611686018427387897
  %i.jp = icmp ult i64 %i.jo, 7
  br i1 %i.jp, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.bk
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.62) #20
          to label %.cont.i.i unwind label %.loopexit.split-lp480.loopexit.split-lp.loopexit.split-lp

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.jq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str, i64 noundef 7)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %.loopexit.split-lp480.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp480.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.bj, %.invoke.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jr = load ptr, ptr %12, align 8, !tbaa !130, !alias.scope !238 ; 2 uses
  %i.js = icmp eq ptr %i.jr, %i.ij
  br i1 %i.js, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !239)
  %i.jt = icmp ult i64 %.0115591, 10
  br i1 %i.jt, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit, %bb.bq
  %.029.i.i = phi i32 [ %i.kb, %bb.bq ], [ 1, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit ] ; 4 uses
  %.02328.i.i = phi i64 [ %i.ka, %bb.bq ], [ %.0115591, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit ] ; 5 uses
  %i.ju = icmp ult i64 %.02328.i.i, 100
  br i1 %i.ju, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %.lr.ph.i.i
  %i.jv = add i32 %.029.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.bm:                                            ; preds = %.lr.ph.i.i
  %i.jw = icmp ult i64 %.02328.i.i, 1000
  br i1 %i.jw, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.jx = add i32 %.029.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.bo:                                            ; preds = %bb.bm
  %i.jy = icmp ult i64 %.02328.i.i, 10000
  br i1 %i.jy, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.jz = add i32 %.029.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.bq:                                            ; preds = %bb.bo
  %i.ka = udiv i64 %.02328.i.i, 10000
  %i.kb = add i32 %.029.i.i, 4                    ; 2 uses
  %i.kc = icmp ult i64 %.02328.i.i, 100000
  br i1 %i.kc, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !214

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.bq, %bb.bp, %bb.bn, %bb.bl, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %.022.i.i = phi i32 [ %i.jz, %bb.bp ], [ %i.jv, %bb.bl ], [ %i.jx, %bb.bn ], [ 1, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit ], [ %i.kb, %bb.bq ]
  %i.kd = zext i32 %.022.i.i to i64
  store ptr %i.il, ptr %13, align 8, !tbaa !128, !alias.scope !239
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef %i.kd, i8 noundef signext 0)
          to label %.noexc310 unwind label %bb.bz

.noexc310:                                        ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.ke = load ptr, ptr %13, align 8, !tbaa !130, !alias.scope !239 ; 4 uses
  %i.kf = icmp ugt i64 %.0115591, 99
  br i1 %i.kf, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i309

.lr.ph.preheader.i.i:                             ; preds = %.noexc310
  %i.kg = load i64, ptr %i.im, align 8, !tbaa !131, !alias.scope !239
  %i.kh = trunc i64 %i.kg to i32
  %i.ki = add i32 %i.kh, -1
  br label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %.lr.ph.i4.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.kl, %.lr.ph.i4.i ], [ %.0115591, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.kv, %.lr.ph.i4.i ], [ %i.ki, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.kj = urem i64 %.020.i.i, 100
  %i.kk = shl nuw nsw i64 %i.kj, 1
  %i.kl = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.kk ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 1
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !100, !noalias !239
  %i.kp = zext i32 %.01819.i.i to i64
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ke, i64 %i.kp
  store i8 %i.ko, ptr %i.kq, align 1, !tbaa !100
  %i.kr = load i8, ptr %i.km, align 2, !tbaa !100, !noalias !239
  %i.ks = add i32 %.01819.i.i, -1
  %i.kt = zext i32 %i.ks to i64
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ke, i64 %i.kt
  store i8 %i.kr, ptr %i.ku, align 1, !tbaa !100
  %i.kv = add i32 %.01819.i.i, -2
  %i.kw = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.kw, label %.lr.ph.i4.i, label %._crit_edge.i.i309, !llvm.loop !215

._crit_edge.i.i309:                               ; preds = %.lr.ph.i4.i, %.noexc310
  %.0.lcssa.i.i = phi i64 [ %.0115591, %.noexc310 ], [ %i.kl, %.lr.ph.i4.i ] ; 3 uses
  %i.kx = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.kx, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %._crit_edge.i.i309
  %i.ky = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.kz = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ky ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 1
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !100, !noalias !239
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ke, i64 1
  store i8 %i.lb, ptr %i.lc, align 1, !tbaa !100
  %i.ld = load i8, ptr %i.kz, align 2, !tbaa !100, !noalias !239
  br label %bb.bt

bb.bs:                                            ; preds = %._crit_edge.i.i309
  %i.le = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.lf = or disjoint i8 %i.le, 48
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %storemerge.i.i = phi i8 [ %i.lf, %bb.bs ], [ %i.ld, %bb.br ]
  store i8 %storemerge.i.i, ptr %i.ke, align 1, !tbaa !100
  call void @llvm.experimental.noalias.scope.decl(metadata !240)
  %i.lg = load i64, ptr %i.ik, align 8, !tbaa !131, !noalias !240 ; 4 uses
  %i.lh = load i64, ptr %i.im, align 8, !tbaa !131, !noalias !240 ; 4 uses
  %i.li = add i64 %i.lh, %i.lg                    ; 2 uses
  %i.lj = load ptr, ptr %12, align 8, !tbaa !130, !noalias !240 ; 2 uses
  %i.lk = icmp eq ptr %i.lj, %i.ij
  br i1 %i.lk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i313, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i311

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i313: ; preds = %bb.bt
  %i.ll = icmp ult i64 %i.lg, 16
  call void @llvm.assume(i1 %i.ll)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i311: ; preds = %bb.bt
  %i.lm = load i64, ptr %i.ij, align 8, !tbaa !100, !noalias !240
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
end_hunk_0
begin_hunk_1_@_ZN4Luau32getDocumentationSymbolAtPositionB5cxx11ERKNS_12SourceModuleERKNS_6ModuleENS_8PositionE:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i364: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i363, %bb.cn
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qe, i64 8 ; 2 uses
  %i.qo = load i64, ptr %i.qn, align 8, !tbaa !131
  store i64 %i.qo, ptr %i.iw, align 8, !tbaa !131, !alias.scope !244
  store ptr %i.qg, ptr %i.qe, align 8, !tbaa !130
  store i64 0, ptr %i.qn, align 8, !tbaa !131
  store i8 0, ptr %i.qg, align 8, !tbaa !100
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit370

bb.co:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i360, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i355
  %i.qp = sub i64 4611686018427387903, %i.pq
  %i.qq = icmp ult i64 %i.qp, %i.pr
  br i1 %i.qq, label %bb.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i356

bb.cp:                                            ; preds = %bb.co
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.62) #20
          to label %.noexc368 unwind label %.loopexit.split-lp495.loopexit.split-lp.loopexit.split-lp

.noexc368:                                        ; preds = %bb.cp
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i356: ; preds = %bb.co
  %i.qr = load ptr, ptr %16, align 8, !tbaa !130, !noalias !244
  %i.qs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef %i.qr, i64 noundef %i.pr)
          to label %.noexc369 unwind label %.loopexit.split-lp495.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc369:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i356
  store ptr %i.iv, ptr %14, align 8, !tbaa !128, !alias.scope !244
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !130 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qs, i64 16 ; 5 uses
  %i.qv = icmp eq ptr %i.qt, %i.qu
  br i1 %i.qv, label %bb.cq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i357

bb.cq:                                            ; preds = %.noexc369
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qs, i64 8
  %i.qx = load i64, ptr %i.qw, align 8, !tbaa !131 ; 2 uses
  %i.qy = icmp ult i64 %i.qx, 16
  call void @llvm.assume(i1 %i.qy)
  %i.qz = add nuw nsw i64 %i.qx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.iv, ptr noundef nonnull align 8 dereferenceable(1) %i.qu, i64 %i.qz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i358

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i357: ; preds = %.noexc369
  store ptr %i.qt, ptr %14, align 8, !tbaa !130, !alias.scope !244
  %i.ra = load i64, ptr %i.qu, align 8, !tbaa !100
  store i64 %i.ra, ptr %i.iv, align 8, !tbaa !100, !alias.scope !244
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i358

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i358: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i357, %bb.cq
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qs, i64 8 ; 2 uses
  %i.rc = load i64, ptr %i.rb, align 8, !tbaa !131
  store i64 %i.rc, ptr %i.iw, align 8, !tbaa !131, !alias.scope !244
  store ptr %i.qu, ptr %i.qs, align 8, !tbaa !130
  store i64 0, ptr %i.rb, align 8, !tbaa !131
  store i8 0, ptr %i.qu, align 8, !tbaa !100
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit370

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit370: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i358, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i364
  store ptr %i.ix, ptr %0, align 8, !tbaa !128
  %i.rd = load ptr, ptr %14, align 8, !tbaa !130  ; 2 uses
  %i.re = icmp eq ptr %i.rd, %i.iv
  br i1 %i.re, label %bb.cr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.cr:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit370
  %i.rf = load i64, ptr %i.iw, align 8, !tbaa !131 ; 3 uses
  %i.rg = icmp ult i64 %i.rf, 16
  call void @llvm.assume(i1 %i.rg)
  %i.rh = add nuw nsw i64 %i.rf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ix, ptr noundef nonnull align 8 dereferenceable(1) %i.iv, i64 %i.rh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit370
  store ptr %i.rd, ptr %0, align 8, !tbaa !130
  %i.ri = load i64, ptr %i.iv, align 8, !tbaa !100
  store i64 %i.ri, ptr %i.ix, align 8, !tbaa !100
  %.pre = load i64, ptr %i.iw, align 8, !tbaa !131
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373: ; preds = %bb.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.rj = phi i64 [ %i.rf, %bb.cr ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  store i64 %i.rj, ptr %i.iy, align 8, !tbaa !131
  store ptr %i.iv, ptr %14, align 8, !tbaa !130
  store i64 0, ptr %i.iw, align 8, !tbaa !131
  store i8 0, ptr %i.iv, align 8, !tbaa !100
  store i8 1, ptr %i.iz, align 8, !tbaa !138
  %i.rk = load ptr, ptr %16, align 8, !tbaa !130  ; 2 uses
  %i.rl = icmp eq ptr %i.rk, %i.it
  br i1 %i.rl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i374

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i374: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373
  %i.rm = load i64, ptr %i.it, align 8, !tbaa !100
  %i.rn = add i64 %i.rm, 1
  call void @_ZdlPvm(ptr noundef %i.rk, i64 noundef %i.rn) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i374
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %i.ro = load ptr, ptr %15, align 8, !tbaa !130  ; 2 uses
  %i.rp = icmp eq ptr %i.ro, %i.ir
  br i1 %i.rp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit379, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i377

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i377: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376
  %i.rq = load i64, ptr %i.ir, align 8, !tbaa !100
  %i.rr = add i64 %i.rq, 1
  call void @_ZdlPvm(ptr noundef %i.ro, i64 noundef %i.rr) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit379

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit379: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i377
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %.loopexit478

bb.cs:                                            ; preds = %.lr.ph
  %i.rs = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.ct:                                            ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i343
  %i.rt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382

.loopexit.split-lp495.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i356, %.critedge.i362, %bb.cp
  %lpad.loopexit.split-lp791 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ru = load ptr, ptr %16, align 8, !tbaa !130  ; 2 uses
  %i.rv = icmp eq ptr %i.ru, %i.it
  br i1 %i.rv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i380

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i380: ; preds = %.loopexit.split-lp495.loopexit.split-lp.loopexit.split-lp
  %i.rw = load i64, ptr %i.it, align 8, !tbaa !100
  %i.rx = add i64 %i.rw, 1
  call void @_ZdlPvm(ptr noundef %i.ru, i64 noundef %i.rx) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382: ; preds = %.loopexit.split-lp495.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i380, %bb.ct
  %.pn174 = phi { ptr, i32 } [ %i.rt, %bb.ct ], [ %lpad.loopexit.split-lp791, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i380 ], [ %lpad.loopexit.split-lp791, %.loopexit.split-lp495.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %i.ry = load ptr, ptr %15, align 8, !tbaa !130  ; 2 uses
  %i.rz = icmp eq ptr %i.ry, %i.ir
  br i1 %i.rz, label %.body337, label %.body337.sink.split

.body337.sink.split:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382, %.loopexit.split-lp490.loopexit.split-lp.loopexit.split-lp
  %.sink773 = phi ptr [ %i.ob, %.loopexit.split-lp490.loopexit.split-lp.loopexit.split-lp ], [ %i.ry, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382 ]
  %.pn174.pn.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp788, %.loopexit.split-lp490.loopexit.split-lp.loopexit.split-lp ], [ %.pn174, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382 ]
  %i.sa = load i64, ptr %i.ir, align 8, !tbaa !100
  %i.sb = add i64 %i.sa, 1
  call void @_ZdlPvm(ptr noundef %.sink773, i64 noundef %i.sb) #22
  br label %.body337

.body337:                                         ; preds = %.body337.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382, %.loopexit.split-lp490.loopexit.split-lp.loopexit.split-lp
  %.pn174.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp788, %.loopexit.split-lp490.loopexit.split-lp.loopexit.split-lp ], [ %.pn174, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382 ], [ %.pn174.pn.ph, %.body337.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.cu

.critedge227:                                     ; preds = %bb.ca
  %i.sc = add nuw i64 %.0114588, 1                ; 2 uses
  %i.sd = load i64, ptr %i.ip, align 8, !tbaa !157
  %.not181.not = icmp ult i64 %i.sc, %i.sd
  br i1 %.not181.not, label %.lr.ph, label %.loopexit478, !llvm.loop !226

bb.cu:                                            ; preds = %.body337, %bb.cs
  %.pn174.pn.pn = phi { ptr, i32 } [ %.pn174.pn, %.body337 ], [ %i.rs, %bb.cs ] ; 2 uses
  %i.se = load ptr, ptr %11, align 8, !tbaa !130  ; 2 uses
  %i.sf = icmp eq ptr %i.se, %i.in
  br i1 %i.sf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i386

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i386: ; preds = %bb.cu
  %i.sg = load i64, ptr %i.in, align 8, !tbaa !100
  %i.sh = add i64 %i.sg, 1
  call void @_ZdlPvm(ptr noundef %i.se, i64 noundef %i.sh) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388

.loopexit478:                                     ; preds = %.critedge227, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit379
  %.not181.not509 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit379 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322 ], [ false, %.critedge227 ]
  %i.si = load ptr, ptr %11, align 8, !tbaa !130  ; 2 uses
  %i.sj = icmp eq ptr %i.si, %i.in
  br i1 %i.sj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389: ; preds = %.loopexit478
  %i.sk = load i64, ptr %i.in, align 8, !tbaa !100
  %i.sl = add i64 %i.sk, 1
  call void @_ZdlPvm(ptr noundef %i.si, i64 noundef %i.sl) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391: ; preds = %.loopexit478, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br i1 %.not181.not509, label %.critedge233, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391..thread463_crit_edge

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391..thread463_crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391
  %.pre613 = load i64, ptr %i.if, align 8, !tbaa !235
  br label %.thread463

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i386, %.body
  %.pn174.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %.pn174.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i386 ], [ %.pn174.pn.pn, %bb.cu ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.sm = load i8, ptr %i.ic, align 8, !tbaa !138, !range !29, !noundef !30
  %i.sn = trunc nuw i8 %i.sm to i1
  br i1 %i.sn, label %bb.cv, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit394

bb.cv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388
  store i8 0, ptr %i.ic, align 8, !tbaa !138
  %i.so = load ptr, ptr %10, align 8, !tbaa !130  ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.sq = icmp eq ptr %i.so, %i.sp
  br i1 %i.sq, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit394, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i392

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i392: ; preds = %bb.cv
  %i.sr = load i64, ptr %i.sp, align 8, !tbaa !100
  %i.ss = add i64 %i.sr, 1
  call void @_ZdlPvm(ptr noundef %i.so, i64 noundef %i.ss) #22
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit394

.thread463:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391..thread463_crit_edge, %bb.bi
  %i.st = phi i64 [ %.pre613, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391..thread463_crit_edge ], [ %i.jb, %bb.bi ] ; 2 uses
  %i.su = add nuw i64 %.0115591, 1                ; 2 uses
  %.not206 = icmp ult i64 %i.su, %i.st
  br i1 %.not206, label %bb.bi, label %.critedge231, !llvm.loop !227

.critedge231:                                     ; preds = %.thread463
  %.pre614 = load i8, ptr %i.ic, align 8, !tbaa !138, !range !29
  %i.sv = trunc nuw i8 %.pre614 to i1
  br i1 %i.sv, label %bb.cw, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit397

bb.cw:                                            ; preds = %.preheader, %.critedge231
  store i8 0, ptr %i.ic, align 8, !tbaa !138
  %i.sw = load ptr, ptr %10, align 8, !tbaa !130  ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.sy = icmp eq ptr %i.sw, %i.sx
  br i1 %i.sy, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit397, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i395

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i395: ; preds = %bb.cw
  %i.sz = load i64, ptr %i.sx, align 8, !tbaa !100
  %i.ta = add i64 %i.sz, 1
  call void @_ZdlPvm(ptr noundef %i.sw, i64 noundef %i.ta) #22
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit397

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit397: ; preds = %bb.cw, %bb.bg, %.critedge231, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i395
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %.critedge220

.critedge233:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391
  %i.tb = load i8, ptr %i.ic, align 8, !tbaa !138, !range !29, !noundef !30
  %i.tc = trunc nuw i8 %i.tb to i1
  br i1 %i.tc, label %bb.cx, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit400

bb.cx:                                            ; preds = %.critedge233
  store i8 0, ptr %i.ic, align 8, !tbaa !138
  %i.td = load ptr, ptr %10, align 8, !tbaa !130  ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.tf = icmp eq ptr %i.td, %i.te
  br i1 %i.tf, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit400, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i398

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i398: ; preds = %bb.cx
  %i.tg = load i64, ptr %i.te, align 8, !tbaa !100
  %i.th = add i64 %i.tg, 1
  call void @_ZdlPvm(ptr noundef %i.td, i64 noundef %i.th) #22
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit400

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit400: ; preds = %bb.cx, %.critedge233, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i398
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %.critedge234

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit394: ; preds = %bb.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i392, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388, %bb.bh
  %.pn174.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ja, %bb.bh ], [ %.pn174.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388 ], [ %.pn174.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i392 ], [ %.pn174.pn.pn.pn, %bb.cv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit247

.critedge220:                                     ; preds = %bb.k, %bb.l, %bb.ax, %bb.ay, %.critedge218, %bb.o, %bb.w, %bb.az, %bb.ba, %bb.n, %bb.g, %bb.h, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.bc, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit397, %bb.be, %bb.bd, %_ZN4Luau3getINS_13PrimitiveTypeEEEPKT_PKNS_4TypeE.exit, %bb.e
  %i.ti = phi ptr [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ac, %bb.n ], [ %i.ac, %bb.bc ], [ %i.ac, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit397 ], [ %i.ac, %bb.be ], [ %i.ac, %bb.bd ], [ %i.ac, %bb.e ], [ %i.ac, %_ZN4Luau3getINS_13PrimitiveTypeEEEPKT_PKNS_4TypeE.exit ], [ %i.ac, %bb.ba ], [ %i.ac, %bb.w ], [ null, %bb.a ], [ %i.ac, %bb.az ], [ %i.ac, %bb.h ], [ %i.ac, %bb.g ], [ %i.ac, %bb.ax ], [ %i.ac, %bb.o ], [ %i.ac, %.critedge218 ], [ %i.ac, %bb.ay ], [ %i.ac, %bb.l ], [ %i.ac, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %.sroa.025.0.copyload = load i64, ptr %4, align 8, !tbaa !14
  invoke void @_ZN4Luau21findBindingAtPositionERKNS_6ModuleERKNS_12SourceModuleENS_8PositionE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.142") align 8 %17, ptr noundef nonnull align 8 dereferenceable(1097) %2, ptr noundef nonnull align 8 dereferenceable(240) %1, i64 %.sroa.025.0.copyload)
          to label %bb.cy unwind label %bb.dh

bb.cy:                                            ; preds = %.critedge220
  %i.tj = getelementptr inbounds nuw i8, ptr %17, i64 104 ; 3 uses
  %i.tk = load i8, ptr %i.tj, align 8, !tbaa !123, !range !29, !noundef !30
  %i.tl = trunc nuw i8 %i.tk to i1
  br i1 %i.tl, label %bb.cz, label %bb.dl

bb.cz:                                            ; preds = %bb.cy
  %i.tm = load ptr, ptr %17, align 8, !tbaa !246
  %i.tn = getelementptr inbounds nuw i8, ptr %17, i64 64 ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %17, i64 96 ; 3 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 6 uses
  store i8 0, ptr %i.tp, align 8, !tbaa !138
  %i.tq = load i8, ptr %i.to, align 8, !tbaa !138, !range !29, !noundef !30
  %i.tr = trunc nuw i8 %i.tq to i1
  br i1 %i.tr, label %bb.da, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit405

bb.da:                                            ; preds = %bb.cz
  %i.ts = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr %i.ts, ptr %18, align 8, !tbaa !128
  %i.tt = load ptr, ptr %i.tn, align 8, !tbaa !130 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %17, i64 72
  %i.tv = load i64, ptr %i.tu, align 8, !tbaa !131 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %i.tv, ptr %i.b, align 8, !tbaa !129
  %i.tw = icmp ugt i64 %i.tv, 15
  br i1 %i.tw, label %.noexc.i.i.i.i.i.i.i.i403, label %._crit_edge.i.i.i.i.i.i.i.i.i401

.noexc.i.i.i.i.i.i.i.i403:                        ; preds = %bb.da
  %i.tx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc404 unwind label %bb.di ; 2 uses

.noexc404:                                        ; preds = %.noexc.i.i.i.i.i.i.i.i403
  store ptr %i.tx, ptr %18, align 8, !tbaa !130
  %i.ty = load i64, ptr %i.b, align 8, !tbaa !129
  store i64 %i.ty, ptr %i.ts, align 8, !tbaa !100
  br label %._crit_edge.i.i.i.i.i.i.i.i.i401

._crit_edge.i.i.i.i.i.i.i.i.i401:                 ; preds = %.noexc404, %bb.da
  %i.tz = phi ptr [ %i.tx, %.noexc404 ], [ %i.ts, %bb.da ] ; 2 uses
  switch i64 %i.tv, label %bb.dc [
    i64 1, label %bb.db
    i64 0, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i402
  ]

bb.db:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i401
  %i.ua = load i8, ptr %i.tt, align 1, !tbaa !100
  store i8 %i.ua, ptr %i.tz, align 1, !tbaa !100
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i402

bb.dc:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i401
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.tz, ptr align 1 %i.tt, i64 %i.tv, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i402

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i402: ; preds = %bb.dc, %bb.db, %._crit_edge.i.i.i.i.i.i.i.i.i401
  %i.ub = load i64, ptr %i.b, align 8, !tbaa !129 ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %i.ub, ptr %i.uc, align 8, !tbaa !131
  %i.ud = load ptr, ptr %18, align 8, !tbaa !130
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 %i.ub
  store i8 0, ptr %i.ue, align 1, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  store i8 1, ptr %i.tp, align 8, !tbaa !138
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit405

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit405: ; preds = %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i402, %bb.cz
  invoke fastcc void @_ZN4LuauL34checkOverloadedDocumentationSymbolERKNS_6ModuleEPKNS_4TypeEPKNS_7AstExprESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(1097) %2, ptr noundef %i.tm, ptr noundef %i.ti, ptr noundef align 8 %18)
          to label %bb.dd unwind label %bb.dj

bb.dd:                                            ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit405
  %i.uf = load i8, ptr %i.tp, align 8, !tbaa !138, !range !29, !noundef !30
  %i.ug = trunc nuw i8 %i.uf to i1
  br i1 %i.ug, label %bb.de, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit408

bb.de:                                            ; preds = %bb.dd
  store i8 0, ptr %i.tp, align 8, !tbaa !138
  %i.uh = load ptr, ptr %18, align 8, !tbaa !130  ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.uj = icmp eq ptr %i.uh, %i.ui
  br i1 %i.uj, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit408, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i406

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i406: ; preds = %bb.de
  %i.uk = load i64, ptr %i.ui, align 8, !tbaa !100
  %i.ul = add i64 %i.uk, 1
  call void @_ZdlPvm(ptr noundef %i.uh, i64 noundef %i.ul) #22
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit408

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit408: ; preds = %bb.de, %bb.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i406
  %i.um = load i8, ptr %i.tj, align 8, !tbaa !123, !range !29, !noundef !30
  %i.un = trunc nuw i8 %i.um to i1
  br i1 %i.un, label %bb.df, label %_ZNSt14_Optional_baseIN4Luau7BindingELb0ELb0EED2Ev.exit

bb.df:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit408
  store i8 0, ptr %i.tj, align 8, !tbaa !123
  %i.uo = load i8, ptr %i.to, align 8, !tbaa !138, !range !29, !noundef !30
  %i.up = trunc nuw i8 %i.uo to i1
  br i1 %i.up, label %bb.dg, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i

bb.dg:                                            ; preds = %bb.df
  store i8 0, ptr %i.to, align 8, !tbaa !138
  %i.uq = load ptr, ptr %i.tn, align 8, !tbaa !130 ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %17, i64 80 ; 2 uses
  %i.us = icmp eq ptr %i.uq, %i.ur
  br i1 %i.us, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dg
  %i.ut = load i64, ptr %i.ur, align 8, !tbaa !100
  %i.uu = add i64 %i.ut, 1
  call void @_ZdlPvm(ptr noundef %i.uq, i64 noundef %i.uu) #22
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i: ; preds = %bb.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.df
  %i.uv = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !130 ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %17, i64 48 ; 2 uses
  %i.uy = icmp eq ptr %i.uw, %i.ux
  br i1 %i.uy, label %_ZNSt14_Optional_baseIN4Luau7BindingELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i409

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i409: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i
  %i.uz = load i64, ptr %i.ux, align 8, !tbaa !100
  %i.va = add i64 %i.uz, 1
  call void @_ZdlPvm(ptr noundef %i.uw, i64 noundef %i.va) #22
  br label %_ZNSt14_Optional_baseIN4Luau7BindingELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4Luau7BindingELb0ELb0EED2Ev.exit: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit408, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i409
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %.critedge234

bb.dh:                                            ; preds = %.critedge220
  %i.vb = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.di:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i403
  %i.vc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit412

bb.dj:                                            ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit405
  %i.vd = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ve = load i8, ptr %i.tp, align 8, !tbaa !138, !range !29, !noundef !30
  %i.vf = trunc nuw i8 %i.ve to i1
  br i1 %i.vf, label %bb.dk, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit412

bb.dk:                                            ; preds = %bb.dj
  store i8 0, ptr %i.tp, align 8, !tbaa !138
  %i.vg = load ptr, ptr %18, align 8, !tbaa !130  ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.vi = icmp eq ptr %i.vg, %i.vh
  br i1 %i.vi, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit412, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i410

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i410: ; preds = %bb.dk
  %i.vj = load i64, ptr %i.vh, align 8, !tbaa !100
  %i.vk = add i64 %i.vj, 1
  call void @_ZdlPvm(ptr noundef %i.vg, i64 noundef %i.vk) #22
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit412

bb.dl:                                            ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  %.sroa.0.0.copyload = load i64, ptr %4, align 8, !tbaa !14
  %i.vl = load ptr, ptr %i.g, align 8, !tbaa !85
  %i.vm = invoke noundef ptr @_ZN4Luau18findNodeAtPositionEPNS_12AstStatBlockENS_8PositionE(ptr noundef %i.vl, i64 %.sroa.0.0.copyload)
          to label %.noexc423 unwind label %bb.au ; 3 uses

.noexc423:                                        ; preds = %bb.dl
  %.not.i.i419 = icmp eq ptr %i.vm, null
  br i1 %.not.i.i419, label %.thread467, label %_ZN4Luau18findExprAtPositionERKNS_12SourceModuleENS_8PositionE.exit.i

_ZN4Luau18findExprAtPositionERKNS_12SourceModuleENS_8PositionE.exit.i: ; preds = %.noexc423
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !16
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 8
  %i.vp = load ptr, ptr %i.vo, align 8
  %i.vq = invoke noundef ptr %i.vp(ptr noundef nonnull align 8 dereferenceable(28) %i.vm)
          to label %.noexc424 unwind label %bb.au, !inline_history !247 ; 4 uses

.noexc424:                                        ; preds = %_ZN4Luau18findExprAtPositionERKNS_12SourceModuleENS_8PositionE.exit.i
  %.not.i420 = icmp eq ptr %i.vq, null
  br i1 %.not.i420, label %.thread467, label %bb.dm

bb.dm:                                            ; preds = %.noexc424
  %i.vr = getelementptr inbounds nuw i8, ptr %2, i64 336
  %i.vs = getelementptr inbounds nuw i8, ptr %2, i64 352
  %i.vt = load i64, ptr %i.vs, align 8, !tbaa !112
  %i.vu = icmp eq i64 %i.vt, 0
  br i1 %i.vu, label %.thread467, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.vv = getelementptr inbounds nuw i8, ptr %2, i64 360
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !113 ; 2 uses
  %i.vx = icmp eq ptr %i.vq, %i.vw
  br i1 %i.vx, label %.thread467, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.vy = getelementptr inbounds nuw i8, ptr %2, i64 344
  %i.vz = load i64, ptr %i.vy, align 8, !tbaa !114
  %i.wa = add i64 %i.vz, -1                       ; 2 uses
  %i.wb = ptrtoint ptr %i.vq to i64
  %i.wc = mul i64 %i.wb, -4658895280553007687     ; 2 uses
  %i.wd = lshr i64 %i.wc, 31
  %i.we = xor i64 %i.wd, %i.wc
  %i.wf = load ptr, ptr %i.vr, align 8, !tbaa !115
  br label %bb.dp

bb.dp:                                            ; preds = %bb.dr, %bb.do
  %.pn.i.i.i = phi i64 [ %i.we, %bb.do ], [ %i.wl, %bb.dr ]
  %.01828.i.i.i = phi i64 [ 0, %bb.do ], [ %i.wk, %bb.dr ]
  %.01929.i.i.i = and i64 %.pn.i.i.i, %i.wa       ; 2 uses
  %i.wg = getelementptr inbounds nuw [16 x i8], ptr %i.wf, i64 %.01929.i.i.i ; 2 uses
  %i.wh = load ptr, ptr %i.wg, align 8, !tbaa !113 ; 2 uses
  %i.wi = icmp eq ptr %i.wh, %i.vq
  br i1 %i.wi, label %bb.ds, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.wj = icmp eq ptr %i.wh, %i.vw
  br i1 %i.wj, label %.thread467, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.wk = add i64 %.01828.i.i.i, 1                ; 3 uses
  %i.wl = add i64 %i.wk, %.01929.i.i.i
  %.not.i.i.i421 = icmp ugt i64 %i.wk, %i.wa
  br i1 %.not.i.i.i421, label %.thread467, label %bb.dp, !llvm.loop !1

bb.ds:                                            ; preds = %bb.dp
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wg, i64 8
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !118 ; 3 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 344
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wn, i64 376 ; 2 uses
  %i.wq = load i8, ptr %i.wp, align 8, !tbaa !138, !range !29, !noundef !30
  %i.wr = trunc nuw i8 %i.wq to i1
  br i1 %i.wr, label %bb.dt, label %.thread467

bb.dt:                                            ; preds = %bb.ds
  %i.ws = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i8 0, ptr %i.ws, align 8, !tbaa !138
  %i.wt = load i8, ptr %i.wp, align 8, !tbaa !138, !range !29, !noundef !30
  %i.wu = trunc nuw i8 %i.wt to i1
  br i1 %i.wu, label %bb.du, label %.critedge234

bb.du:                                            ; preds = %bb.dt
  %i.wv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.wv, ptr %0, align 8, !tbaa !128
  %i.ww = load ptr, ptr %i.wo, align 8, !tbaa !130 ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wn, i64 352
  %i.wy = load i64, ptr %i.wx, align 8, !tbaa !131 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.wy, ptr %i.a, align 8, !tbaa !129
  %i.wz = icmp ugt i64 %i.wy, 15
  br i1 %i.wz, label %.noexc.i.i.i.i.i.i.i.i427, label %._crit_edge.i.i.i.i.i.i.i.i.i425

.noexc.i.i.i.i.i.i.i.i427:                        ; preds = %bb.du
  %i.xa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc428 unwind label %bb.au ; 2 uses

.noexc428:                                        ; preds = %.noexc.i.i.i.i.i.i.i.i427
  store ptr %i.xa, ptr %0, align 8, !tbaa !130
  %i.xb = load i64, ptr %i.a, align 8, !tbaa !129
  store i64 %i.xb, ptr %i.wv, align 8, !tbaa !100
  br label %._crit_edge.i.i.i.i.i.i.i.i.i425

._crit_edge.i.i.i.i.i.i.i.i.i425:                 ; preds = %.noexc428, %bb.du
  %i.xc = phi ptr [ %i.xa, %.noexc428 ], [ %i.wv, %bb.du ] ; 2 uses
  switch i64 %i.wy, label %bb.dw [
    i64 1, label %bb.dv
    i64 0, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i426
  ]

bb.dv:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i425
  %i.xd = load i8, ptr %i.ww, align 1, !tbaa !100
  store i8 %i.xd, ptr %i.xc, align 1, !tbaa !100
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i426

bb.dw:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i425
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xc, ptr align 1 %i.ww, i64 %i.wy, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i426

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i426: ; preds = %bb.dw, %bb.dv, %._crit_edge.i.i.i.i.i.i.i.i.i425
  %i.xe = load i64, ptr %i.a, align 8, !tbaa !129 ; 2 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.xe, ptr %i.xf, align 8, !tbaa !131
  %i.xg = load ptr, ptr %0, align 8, !tbaa !130
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 %i.xe
  store i8 0, ptr %i.xh, align 1, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  store i8 1, ptr %i.ws, align 8, !tbaa !138
  br label %.critedge234

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit412: ; preds = %bb.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i410, %bb.dj, %bb.di
  %.pn207 = phi { ptr, i32 } [ %i.vc, %bb.di ], [ %i.vd, %bb.dj ], [ %i.vd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i410 ], [ %i.vd, %bb.dk ]
  call void @_ZNSt14_Optional_baseIN4Luau7BindingELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %17) #23
  br label %bb.dx

bb.dx:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit412, %bb.dh
  %.pn207.pn = phi { ptr, i32 } [ %.pn207, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit412 ], [ %i.vb, %bb.dh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit247

.thread467:                                       ; preds = %bb.dq, %bb.dr, %bb.dm, %bb.dn, %.noexc424, %.noexc423, %bb.ds
  %i.xi = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.xi, align 8, !tbaa !138
  br label %.critedge234

.critedge234:                                     ; preds = %bb.at, %bb.ac, %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i293, %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.dt, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i426, %_ZNSt14_Optional_baseIN4Luau7BindingELb0ELb0EED2Ev.exit, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit400, %bb.bb, %.thread467
  %i.xj = load ptr, ptr %5, align 8, !tbaa !35    ; 3 uses
  %.not.i.i.i430 = icmp eq ptr %i.xj, null
  br i1 %.not.i.i.i430, label %_ZNSt6vectorIPN4Luau7AstNodeESaIS2_EED2Ev.exit, label %bb.dy

bb.dy:                                            ; preds = %.critedge234
  %i.xk = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !32
  %i.xm = ptrtoint ptr %i.xl to i64
  %i.xn = ptrtoint ptr %i.xj to i64
  %i.xo = sub i64 %i.xm, %i.xn
  call void @_ZdlPvm(ptr noundef nonnull %i.xj, i64 noundef %i.xo) #22
  br label %_ZNSt6vectorIPN4Luau7AstNodeESaIS2_EED2Ev.exit

_ZNSt6vectorIPN4Luau7AstNodeESaIS2_EED2Ev.exit:   ; preds = %.critedge234, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit247: ; preds = %bb.aw, %bb.af, %bb.au, %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i299, %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i245, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ad, %bb.dx, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit394
  %.pn210.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp777, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.gr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i299 ], [ %.pn207.pn, %bb.dx ], [ %.pn174.pn.pn.pn.pn, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit394 ], [ %i.du, %bb.ad ], [ %i.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i245 ], [ %i.dv, %bb.af ], [ %i.dv, %bb.ae ], [ %i.gr, %bb.av ], [ %i.gq, %bb.au ], [ %i.gr, %bb.aw ]
  %i.xp = load ptr, ptr %5, align 8, !tbaa !35    ; 3 uses
  %.not.i.i.i431 = icmp eq ptr %i.xp, null
  br i1 %.not.i.i.i431, label %_ZNSt6vectorIPN4Luau7AstNodeESaIS2_EED2Ev.exit432, label %bb.dz

bb.dz:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit247
  %i.xq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.xr = load ptr, ptr %i.xq, align 8, !tbaa !32
  %i.xs = ptrtoint ptr %i.xr to i64
  %i.xt = ptrtoint ptr %i.xp to i64
  %i.xu = sub i64 %i.xs, %i.xt
  call void @_ZdlPvm(ptr noundef nonnull %i.xp, i64 noundef %i.xu) #22
  br label %_ZNSt6vectorIPN4Luau7AstNodeESaIS2_EED2Ev.exit432

_ZNSt6vectorIPN4Luau7AstNodeESaIS2_EED2Ev.exit432: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit247, %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %.pn210.pn
}

declare noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4LuauL34checkOverloadedDocumentationSymbolERKNS_6ModuleEPKNS_4TypeEPKNS_7AstExprESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr dead_on_unwind noalias writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1097) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 %4) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
end_hunk_1
begin_hunk_2_@_ZN4LuauL34checkOverloadedDocumentationSymbolERKNS_6ModuleEPKNS_4TypeEPKNS_7AstExprESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE:bb.a
  %i.ap = sub i64 4611686018427387903, %i.ao
  %i.aq = icmp ult i64 %i.ap, %i.ak
  br i1 %i.aq, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.n
  %i.ar = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.ai, i64 noundef %i.ak)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.o ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.as = load i64, ptr %i.am, align 8, !tbaa !131, !alias.scope !260
  %i.at = add i64 %i.as, -4611686018427387894
  %i.au = icmp ult i64 %i.at, 10
  br i1 %i.au, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.62) #20
          to label %.cont.i.i unwind label %bb.o

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.av = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.61, i64 noundef 10)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.m
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %5, align 8, !tbaa !130, !alias.scope !260 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.al
  br i1 %i.ay, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.o
  %i.az = load i64, ptr %i.al, align 8, !tbaa !100, !alias.scope !260
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #22
  br label %common.resume

common.resume:                                    ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30 ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.aw, %bb.o ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZN4Luau8toStringB5cxx11EPKNS_4TypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull %i.ah)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !131 ; 2 uses
  %i.bd = load i64, ptr %i.am, align 8, !tbaa !131
  %i.be = sub i64 4611686018427387903, %i.bd
  %i.bf = icmp ult i64 %i.be, %i.bc
  br i1 %i.bf, label %bb.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.62) #20
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.q
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.p
  %i.bg = load ptr, ptr %6, align 8, !tbaa !130
  %i.bh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.bg, i64 noundef %i.bc)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.t ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.bi = load ptr, ptr %6, align 8, !tbaa !130   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !100
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bn, ptr %0, align 8, !tbaa !128
  %i.bo = load ptr, ptr %5, align 8, !tbaa !130   ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.al
  br i1 %i.bp, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bq = load i64, ptr %i.am, align 8, !tbaa !131 ; 3 uses
  %i.br = icmp ult i64 %i.bq, 16
  call void @llvm.assume(i1 %i.br)
  %i.bs = add nuw nsw i64 %i.bq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bn, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.bs, i1 false)
  br label %bb.u

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr %i.bo, ptr %0, align 8, !tbaa !130
  %i.bt = load i64, ptr %i.al, align 8, !tbaa !100
  store i64 %i.bt, ptr %i.bn, align 8, !tbaa !100
  %.pre = load i64, ptr %i.am, align 8, !tbaa !131
  br label %bb.u

bb.s:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.q
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %6, align 8, !tbaa !130   ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.t
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !100
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25, %bb.s
  %.pn = phi { ptr, i32 } [ %i.bu, %bb.s ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ], [ %i.bv, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.cb = load ptr, ptr %5, align 8, !tbaa !130   ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.al
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %i.cd = load i64, ptr %i.al, align 8, !tbaa !100
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %common.resume

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.r
  %i.cf = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.bq, %bb.r ]
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !131
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.ch, align 8, !tbaa !138
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit

_ZN4Luau3getINS_16IntersectionTypeEEEPKT_PKNS_4TypeE.exit.thread: ; preds = %bb.j, %bb.k, %bb.f, %bb.g, %bb.e, %bb.l, %bb.c, %bb.d
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i8 0, ptr %i.ci, align 8, !tbaa !138
  %i.cj = load i8, ptr %i.a, align 8, !tbaa !138, !range !29, !noundef !30
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.v, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit

bb.v:                                             ; preds = %_ZN4Luau3getINS_16IntersectionTypeEEEPKT_PKNS_4TypeE.exit.thread
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cl, ptr %0, align 8, !tbaa !128
  %i.cm = load ptr, ptr %4, align 8, !tbaa !130   ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !131 ; 3 uses
  %i.cr = icmp ult i64 %i.cq, 16
  tail call void @llvm.assume(i1 %i.cr)
  %i.cs = add nuw nsw i64 %i.cq, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cl, ptr noundef nonnull align 8 dereferenceable(1) %i.cn, i64 %i.cs, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.v
  store ptr %i.cm, ptr %0, align 8, !tbaa !130
  %i.ct = load i64, ptr %i.cn, align 8, !tbaa !100
  store i64 %i.ct, ptr %i.cl, align 8, !tbaa !100
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre42 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !131
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.w
  %i.cu = phi i64 [ %.pre42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ], [ %i.cq, %bb.w ]
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cu, ptr %i.cw, align 8, !tbaa !131
  store ptr %i.cn, ptr %4, align 8, !tbaa !130
  store i64 0, ptr %i.cv, align 8, !tbaa !131
  store i8 0, ptr %i.cn, align 8, !tbaa !100
  store i8 1, ptr %i.ci, align 8, !tbaa !138
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit: ; preds = %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i, %_ZN4Luau3getINS_16IntersectionTypeEEEPKT_PKNS_4TypeE.exit.thread, %bb.u, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !138, !range !29, !noundef !30
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !138
  %i.d = load ptr, ptr %0, align 8, !tbaa !130    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !100
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #22
  br label %_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit

_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4LuauL25getMetatableDocumentationB5cxx11ERKNS_6ModuleEPNS_7AstExprEPKNS_9TableTypeERKNS_7AstNameE(ptr dead_on_unwind noalias writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1097) %1, ptr noundef %2, ptr nofree noundef nonnull readonly captures(address) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::optional.6", align 8   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.c, ptr %5, align 8, !tbaa !128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.c, ptr noundef nonnull align 1 dereferenceable(7) @.str.63, i64 7, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 7, ptr %i.d, align 8, !tbaa !131
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 23
  store i8 0, ptr %i.e, align 1, !tbaa !100
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !136  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not10.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ], [ %i.g, %._crit_edge.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ], [ %i.h, %._crit_edge.i.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !131  ; 3 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.j, i64 7)
  %i.l = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !130
  %i.n = call i32 @memcmp(ptr noundef %i.m, ptr noundef nonnull %i.c, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #23 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.o = add i64 %i.j, -7
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.o, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.n, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.p = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.p, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.p, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !137 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.q = icmp eq ptr %.19.i.i.i, %i.h
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %bb.a

bb.a:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !131  ; 3 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.a
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.s, i64 7)
  %i.u = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !130
  %i.w = call i32 @memcmp(ptr noundef nonnull %i.c, ptr noundef %i.v, i64 noundef %.sroa.speculated.i.i.i.i.i) #23 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.a
  %i.x = sub i64 7, %i.s
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.x, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %._crit_edge.i.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.w, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.y = icmp slt i32 %.0.i.i.i.i.i, 0            ; 2 uses
  %spec.select.i.i = select i1 %i.y, ptr %i.h, ptr %.19.i.i.i ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.z, align 8, !tbaa !138
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 216
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !140, !range !29, !noundef !30
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 232
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !140, !range !29, !noundef !30
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.ag, align 8, !tbaa !138
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  %.sink = phi i64 [ 208, %bb.c ], [ 224, %bb.d ]
  %i.ah = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 %.sink
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !118
  %i.aj = call noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %i.ai) ; 4 uses
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !126
  %i.al = icmp eq i32 %i.ak, 9
  br i1 %i.al, label %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.am, align 8, !tbaa !138
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.an = load ptr, ptr %4, align 8, !tbaa !261   ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.ao, ptr %6, align 8, !tbaa !128
  %i.ap = icmp eq ptr %i.an, null
  br i1 %i.ap, label %.noexc29, label %bb.i

.noexc29:                                         ; preds = %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.64) #20
  unreachable

bb.i:                                             ; preds = %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit
  %i.aq = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.an) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %i.aq, ptr %i.b, align 8, !tbaa !129
  %i.ar = icmp ugt i64 %i.aq, 15
  br i1 %i.ar, label %.noexc.i28, label %._crit_edge.i.i27

.noexc.i28:                                       ; preds = %bb.i
  %i.as = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.as, ptr %6, align 8, !tbaa !130
  %i.at = load i64, ptr %i.b, align 8, !tbaa !129
  store i64 %i.at, ptr %i.ao, align 8, !tbaa !100
  br label %._crit_edge.i.i27

._crit_edge.i.i27:                                ; preds = %.noexc.i28, %bb.i
  %i.au = phi ptr [ %i.as, %.noexc.i28 ], [ %i.ao, %bb.i ] ; 2 uses
  switch i64 %i.aq, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i27
  %i.av = load i8, ptr %i.an, align 1, !tbaa !100
  store i8 %i.av, ptr %i.au, align 1, !tbaa !100
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i27
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr nonnull align 1 %i.an, i64 %i.aq, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i27
  %i.aw = load i64, ptr %i.b, align 8, !tbaa !129 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !131
  %i.ay = load ptr, ptr %6, align 8, !tbaa !130
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aw
  store i8 0, ptr %i.az, align 1, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !136 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 6 uses
  %.not10.i.i.i32 = icmp eq ptr %i.bb, null
  %.pre = load ptr, ptr %6, align 8               ; 4 uses
  br i1 %.not10.i.i.i32, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit62, label %.lr.ph.i.i.i33

.lr.ph.i.i.i33:                                   ; preds = %bb.l
  %i.bd = load i64, ptr %i.ax, align 8, !tbaa !131 ; 4 uses
  br label %bb.m

bb.m:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i39, %.lr.ph.i.i.i33
  %.012.i.i.i34 = phi ptr [ %i.bb, %.lr.ph.i.i.i33 ], [ %.1.i.i.i44, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i39 ] ; 4 uses
  %.0811.i.i.i35 = phi ptr [ %i.bc, %.lr.ph.i.i.i33 ], [ %.19.i.i.i41, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i39 ]
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i34, i64 40
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !131 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i36 = call i64 @llvm.umin.i64(i64 %i.bd, i64 %i.bf) ; 2 uses
  %i.bg = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i36, 0
  br i1 %i.bg, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i58, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i37

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i37: ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i34, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !130
  %i.bj = call i32 @memcmp(ptr noundef %i.bi, ptr noundef %.pre, i64 noundef %.sroa.speculated.i.i.i.i.i.i36) #23 ; 2 uses
  %.not.i.i.i.i.i.i38 = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i.i.i.i.i38, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i58, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i39

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i58: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i37, %bb.m
  %i.bk = sub i64 %i.bf, %i.bd
  %spec.select7.i.i.i.i.i.i.i59 = call i64 @llvm.smax.i64(i64 %i.bk, i64 -2147483648)
  %.08.i.i.i.i.i.i.i60 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i59, i64 2147483647)
  %.0.i6.i.i.i.i.i.i61 = trunc nsw i64 %.08.i.i.i.i.i.i.i60 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i39

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i39: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i58, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i37
  %.0.i.i.i.i.i.i40 = phi i32 [ %i.bj, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i37 ], [ %.0.i6.i.i.i.i.i.i61, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i58 ]
  %i.bl = icmp slt i32 %.0.i.i.i.i.i.i40, 0       ; 2 uses
  %.19.i.i.i41 = select i1 %i.bl, ptr %.0811.i.i.i35, ptr %.012.i.i.i34 ; 5 uses
  %.1.in.v.i.i.i42 = select i1 %i.bl, i64 24, i64 16
  %.1.in.i.i.i43 = getelementptr inbounds nuw i8, ptr %.012.i.i.i34, i64 %.1.in.v.i.i.i42
  %.1.i.i.i44 = load ptr, ptr %.1.in.i.i.i43, align 8, !tbaa !137 ; 2 uses
  %.not.i.i.i45 = icmp eq ptr %.1.i.i.i44, null
  br i1 %.not.i.i.i45, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i46, label %bb.m, !llvm.loop !3

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i46: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i39
  %i.bm = icmp eq ptr %.19.i.i.i41, %i.bc
  br i1 %i.bm, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit62, label %bb.n

bb.n:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i46
  %i.bn = getelementptr inbounds nuw i8, ptr %.19.i.i.i41, i64 40
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !131 ; 2 uses
  %.sroa.speculated.i.i.i.i.i47 = call i64 @llvm.umin.i64(i64 %i.bo, i64 %i.bd) ; 2 uses
  %i.bp = icmp eq i64 %.sroa.speculated.i.i.i.i.i47, 0
  br i1 %i.bp, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i54, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i48

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i48: ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %.19.i.i.i41, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !130
  %i.bs = call i32 @memcmp(ptr noundef %.pre, ptr noundef %i.br, i64 noundef %.sroa.speculated.i.i.i.i.i47) #23 ; 2 uses
  %.not.i.i.i.i.i49 = icmp eq i32 %i.bs, 0
  br i1 %.not.i.i.i.i.i49, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i54, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i50

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i54: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i48, %bb.n
  %i.bt = sub i64 %i.bd, %i.bo
  %spec.select7.i.i.i.i.i.i55 = call i64 @llvm.smax.i64(i64 %i.bt, i64 -2147483648)
  %.08.i.i.i.i.i.i56 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i55, i64 2147483647)
  %.0.i6.i.i.i.i.i57 = trunc nsw i64 %.08.i.i.i.i.i.i56 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i50

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i50: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i54, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i48
  %.0.i.i.i.i.i51 = phi i32 [ %i.bs, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i48 ], [ %.0.i6.i.i.i.i.i57, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i54 ]
  %i.bu = icmp slt i32 %.0.i.i.i.i.i51, 0
  %spec.select.i.i52 = select i1 %i.bu, ptr %i.bc, ptr %.19.i.i.i41
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit62

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit62: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i50, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i46, %bb.l
  %.sroa.0.0.i.i53 = phi ptr [ %i.bc, %bb.l ], [ %i.bc, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i46 ], [ %spec.select.i.i52, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i50 ] ; 6 uses
  %i.bv = icmp eq ptr %.pre, %i.ao
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit62
  %i.bw = load i64, ptr %i.ao, align 8, !tbaa !100
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.bx) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit62, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.by = icmp eq ptr %.sroa.0.0.i.i53, %i.bc
  br i1 %i.by, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.bz, align 8, !tbaa !138
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i53, i64 208
  %.sroa.0.0.copyload = load ptr, ptr %i.ca, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i53, i64 216
  %.sroa.6.0.copyload = load i8, ptr %.sroa.6.0..sroa_idx, align 8
  %i.cb = trunc nuw i8 %.sroa.6.0.copyload to i1
  br i1 %i.cb, label %bb.q, label %bb.y

bb.q:                                             ; preds = %bb.p
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i53, i64 200
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 6 uses
  store i8 0, ptr %i.cd, align 8, !tbaa !138
  %i.ce = load i8, ptr %i.cc, align 8, !tbaa !138, !range !29, !noundef !30
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.r, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit

bb.r:                                             ; preds = %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i53, i64 168
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.ch, ptr %7, align 8, !tbaa !128
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !130 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i53, i64 176
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !131 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.ck, ptr %i.a, align 8, !tbaa !129
  %i.cl = icmp ugt i64 %i.ck, 15
  br i1 %i.cl, label %.noexc.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.r
  %i.cm = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.cm, ptr %7, align 8, !tbaa !130
  %i.cn = load i64, ptr %i.a, align 8, !tbaa !129
  store i64 %i.cn, ptr %i.ch, align 8, !tbaa !100
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.noexc.i.i.i.i.i.i.i.i, %bb.r
  %i.co = phi ptr [ %i.cm, %.noexc.i.i.i.i.i.i.i.i ], [ %i.ch, %bb.r ] ; 2 uses
  switch i64 %i.ck, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i
  ]

bb.s:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.cp = load i8, ptr %i.ci, align 1, !tbaa !100
  store i8 %i.cp, ptr %i.co, align 1, !tbaa !100
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i

bb.t:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.co, ptr align 1 %i.ci, i64 %i.ck, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.cq = load i64, ptr %i.a, align 8, !tbaa !129 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !131
  %i.cs = load ptr, ptr %7, align 8, !tbaa !130
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cq
  store i8 0, ptr %i.ct, align 1, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  store i8 1, ptr %i.cd, align 8, !tbaa !138
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit: ; preds = %bb.q, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i
  invoke fastcc void @_ZN4LuauL34checkOverloadedDocumentationSymbolERKNS_6ModuleEPKNS_4TypeEPKNS_7AstExprESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(1097) %1, ptr noundef %.sroa.0.0.copyload, ptr noundef %2, ptr noundef align 8 %7)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit
  %i.cu = load i8, ptr %i.cd, align 8, !tbaa !138, !range !29, !noundef !30
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %bb.v, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.v:                                             ; preds = %bb.u
  store i8 0, ptr %i.cd, align 8, !tbaa !138
  %i.cw = load ptr, ptr %7, align 8, !tbaa !130   ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.v
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !100
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #22
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.w:                                             ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit
  %i.db = landingpad { ptr, i32 }
          cleanup
  %i.dc = load i8, ptr %i.cd, align 8, !tbaa !138, !range !29, !noundef !30
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %bb.x, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit71

bb.x:                                             ; preds = %bb.w
  store i8 0, ptr %i.cd, align 8, !tbaa !138
  %i.de = load ptr, ptr %7, align 8, !tbaa !130   ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i69: ; preds = %bb.x
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !100
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.di) #22
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit71

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit71: ; preds = %bb.x, %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i69
  resume { ptr, i32 } %i.db

bb.y:                                             ; preds = %bb.p
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.dj, align 8, !tbaa !138
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.u, %bb.o, %bb.y, %bb.e, %bb.h, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_Optional_baseIN4Luau7BindingELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !123, !range !29, !noundef !30
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadIN4Luau7BindingELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !123
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !138, !range !29, !noundef !30
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.d, align 8, !tbaa !138
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !130  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.k = load i64, ptr %i.i, align 8, !tbaa !100
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #22
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !130  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt17_Optional_payloadIN4Luau7BindingELb0ELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !100
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #22
  br label %_ZNSt17_Optional_payloadIN4Luau7BindingELb0ELb0ELb0EED2Ev.exit

_ZNSt17_Optional_payloadIN4Luau7BindingELb0ELb0ELb0EED2Ev.exit: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau16FindFullAncestryD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN4Luau16FindFullAncestryD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #22
  br label %_ZN4Luau16FindFullAncestryD2Ev.exit

_ZN4Luau16FindFullAncestryD2Ev.exit:              ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau10AstVisitor5visitEPNS_7AstAttrE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau10AstVisitor5visitEPNS_14AstGenericTypeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau10AstVisitor5visitEPNS_18AstGenericTypePackE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau10AstVisitor5visitEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau10AstVisitor5visitEPNS_12AstExprGroupE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau10AstVisitor5visitEPNS_18AstExprConstantNilE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau10AstVisitor5visitEPNS_19AstExprConstantBoolE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau10AstVisitor5visitEPNS_21AstExprConstantNumberE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau10AstVisitor5visitEPNS_22AstExprConstantIntegerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau10AstVisitor5visitEPNS_21AstExprConstantStringE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau10AstVisitor5visitEPNS_12AstExprLocalE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau10AstVisitor5visitEPNS_13AstExprGlobalE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau10AstVisitor5visitEPNS_14AstExprVarargsE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau10AstVisitor5visitEPNS_11AstExprCallE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau10AstVisitor5visitEPNS_16AstExprIndexNameE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  ret i1 %i.d
}

end_hunk_2
