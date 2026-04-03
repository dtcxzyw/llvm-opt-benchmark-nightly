begin_hunk_0
  %i.dc = sub nsw i64 %i.an, %i.db
  br label %bb.y

bb.y:                                             ; preds = %.outer._crit_edge, %.thread, %.split313.us
  %i.dd = phi i64 [ %i.u, %.thread ], [ %i.am, %.outer._crit_edge ], [ %i.am, %.split313.us ]
  %.1211.i = phi i64 [ 0, %.thread ], [ %i.db, %.outer._crit_edge ], [ 0, %.split313.us ] ; 3 uses
  %.1201.i = phi i64 [ %i.v, %.thread ], [ %i.dc, %.outer._crit_edge ], [ %i.an, %.split313.us ] ; 3 uses
  %.4182.i = phi i64 [ %.us-phi315, %.thread ], [ %.2180.i.lcssa, %.outer._crit_edge ], [ %.us-phi, %.split313.us ] ; 3 uses
  %.8.i = phi ptr [ %.us-phi316, %.thread ], [ %.4.i.lcssa, %.outer._crit_edge ], [ %.us-phi314, %.split313.us ] ; 7 uses
  %i.de = icmp eq i64 %.1201.i, 0
  br i1 %i.de, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.z

end_hunk_0
begin_hunk_1
  %i.gl = add nsw i64 %i.gk, %.0.i.lcssa
  br label %.thread453

_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread: ; preds = %bb.j, %bb.k, %bb.g, %bb.w, %bb.x, %bb.t, %bb.ak, %bb.aj, %bb.ai, %bb.as, %bb.ar, %bb.aq, %bb.ax, %bb.ay, %bb.am, %bb.al, %bb.y, %bb.d, %bb.c
  %i.gm = tail call { ptr, i32 } @_ZN17duckdb_fast_float6detail12parse_infnanIdEENS_17from_chars_resultEPKcS4_RT_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #26 ; 2 uses
  %i.gn = extractvalue { ptr, i32 } %i.gm, 0
  %i.go = extractvalue { ptr, i32 } %i.gm, 1
end_hunk_1
begin_hunk_2
  %i.hf = trunc nuw nsw i64 %i.he to i32
  %i.hg = shl i64 %.sroa.7.0.ph461481, %i.he
  %i.hh = trunc nsw i64 %.sroa.093.0.ph462478 to i32 ; 2 uses
  %i.hi = shl nsw i32 %i.hh, 1
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr [8 x i8], ptr @_ZN17duckdb_fast_float15powers_templateIvE17power_of_five_128E, i64 %i.hj ; 2 uses
  %i.hl = getelementptr i8, ptr %i.hk, i64 5472
  %i.hm = load i64, ptr %i.hl, align 16, !tbaa !267
  %i.hn = zext i64 %i.hg to i128                  ; 2 uses
end_hunk_2
begin_hunk_3
  br i1 %i.hu, label %.noexc73, label %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit

.noexc73:                                         ; preds = %.noexc
  %i.hv = getelementptr i8, ptr %i.hk, i64 5480
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !267
  %i.hx = zext i64 %i.hw to i128
  %i.hy = mul nuw i128 %i.hx, %i.hn
end_hunk_3
