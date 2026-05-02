inline.NumInlined: 6435
inline.NumDeleted: 2988
begin_hunk_0_@_ZN6duckdb14FileLogStorage20UpdateConfigInternalERNS_16DatabaseInstanceERSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5ValueENS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaISt4pairIKS9_SA_EEE:bb.a
  br i1 %.not156183, label %_ZN6duckdb19BufferingLogStorage16FlushAllInternalEv.exit, label %.lr.ph186

._crit_edge:                                      ; preds = %.lr.ph186
  br i1 %14, label %bb.ac, label %_ZN6duckdb19BufferingLogStorage16FlushAllInternalEv.exit

.lr.ph186:                                        ; preds = %bb.ab, %.lr.ph186
  %.054185 = phi i1 [ %14, %.lr.ph186 ], [ false, %bb.ab ]
  %.sroa.0137.0184 = phi ptr [ %i.dk, %.lr.ph186 ], [ %i.dg, %bb.ab ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0137.0184, i64 80
  %i.dj = load i8, ptr %i.di, align 8, !tbaa !479, !range !46, !noundef !47
  %13 = trunc nuw i8 %i.dj to i1
  %14 = or i1 %.054185, %13                       ; 2 uses
  %i.dk = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0137.0184) #35 ; 2 uses
  %.not156 = icmp eq ptr %i.dk, %i.dh
  br i1 %.not156, label %._crit_edge, label %.lr.ph186
end_hunk_0
