inline.NumInlined: 12053
inline.NumDeleted: 5555
begin_hunk_0_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_6filter6FilterINtNtB8_10filter_map9FilterMapIB1k_INtNtNtBc_5slice4iter4IterINtNtBc_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2G_5ErrorEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00ENCB3A_s_0ENCB3A_s0_0ENCB3A_s1_0ENtNtNtBa_6traits8iterator8Iterator4foldxNCINvNvB5x_6min_by4foldxNvYxNtNtBc_3cmp3Ord3cmpE0EB3I_:bb.a
  %i.fg = icmp eq i64 %i.ez, %i.am
  br i1 %i.fg, label %bb.aq, label %bb.be

bb.ap:                                            ; preds = %bb.an
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ez
  %i.fi = load i8, ptr %i.fh, align 1, !alias.scope !5504, !noalias !5507, !noundef !4
  %i.fj = icmp sgt i8 %i.fi, -65
  br i1 %i.fj, label %bb.aq, label %bb.be

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.ak
  %i.fk = sub i64 %i.ex, %i.eu                    ; 5 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ey ; 3 uses
  switch i64 %i.fk, label %thread-pre-split.i.i.i.i.i.i.i.i.i [
    i64 0, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2q_TxxExNCB2y_s_0NCINvNtB6_6filter11filter_foldB48_xNCB2y_s0_0NCINvNtB6_3map8map_foldB48_xxNCB2y_s1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0E0B2G_.exit.i.i.i.i
    i64 1, label %bb.ar
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.fm = load i8, ptr %i.fl, align 1, !alias.scope !5510, !noalias !5513, !noundef !4 ; 2 uses
  switch i8 %i.fm, label %bb.as [
    i8 43, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2q_TxxExNCB2y_s_0NCINvNtB6_6filter11filter_foldB48_xNCB2y_s0_0NCINvNtB6_3map8map_foldB48_xxNCB2y_s1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0E0B2G_.exit.i.i.i.i
    i8 45, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2q_TxxExNCB2y_s_0NCINvNtB6_6filter11filter_foldB48_xNCB2y_s0_0NCINvNtB6_3map8map_foldB48_xxNCB2y_s1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0E0B2G_.exit.i.i.i.i
  ]

thread-pre-split.i.i.i.i.i.i.i.i.i:               ; preds = %bb.aq
  %.pr.i.i.i.i.i.i.i.i.i = load i8, ptr %i.fl, align 1, !alias.scope !5510, !noalias !5513
  br label %bb.as

bb.as:                                            ; preds = %thread-pre-split.i.i.i.i.i.i.i.i.i, %bb.ar
  %i.fn = phi i8 [ %.pr.i.i.i.i.i.i.i.i.i, %thread-pre-split.i.i.i.i.i.i.i.i.i ], [ %i.fm, %bb.ar ]
  switch i8 %i.fn, label %bb.az [
    i8 43, label %bb.at
    i8 45, label %bb.au
  ]

bb.at:                                            ; preds = %bb.as
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.eu
  %i.fp = add nsw i64 %i.fk, -1
  br label %bb.az

bb.au:                                            ; preds = %bb.as
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.eu ; 2 uses
  %i.fr = add nsw i64 %i.fk, -1                   ; 3 uses
  %i.fs = icmp samesign ult i64 %i.fk, 17
  br i1 %i.fs, label %.preheader114.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.preheader114.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.au
  %.not103137.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fr, 0
  br i1 %.not103137.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i, label %.lr.ph141.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.au, %bb.ax
  %.sroa.0.1136.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ft, %bb.ax ], [ %i.fq, %bb.au ] ; 2 uses
  %.sroa.26.1135.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fu, %bb.ax ], [ %i.fr, %bb.au ]
  %.sroa.084.0134.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gf, %bb.ax ], [ 0, %bb.au ]
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i.i.i.i.i.i.i.i.i, i64 1
  %i.fu = add nsw i64 %.sroa.26.1135.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.fv = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i.i.i.i.i.i.i.i.i, i64 10) ; 2 uses
  %i.fw = extractvalue { i64, i1 } %i.fv, 0
  %i.fx = extractvalue { i64, i1 } %i.fv, 1
  br i1 %i.fx, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2q_TxxExNCB2y_s_0NCINvNtB6_6filter11filter_foldB48_xNCB2y_s0_0NCINvNtB6_3map8map_foldB48_xxNCB2y_s1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0E0B2G_.exit.i.i.i.i, label %bb.av, !prof !1174

bb.av:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.fy = load i8, ptr %.sroa.0.1136.i.i.i.i.i.i.i.i.i, align 1, !alias.scope !5510, !noalias !5513, !noundef !4
  %i.fz = zext i8 %i.fy to i32
  %i.ga = add nsw i32 %i.fz, -48                  ; 2 uses
  %i.gb = icmp ult i32 %i.ga, 10
  br i1 %i.gb, label %bb.aw, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2q_TxxExNCB2y_s_0NCINvNtB6_6filter11filter_foldB48_xNCB2y_s0_0NCINvNtB6_3map8map_foldB48_xxNCB2y_s1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0E0B2G_.exit.i.i.i.i

bb.aw:                                            ; preds = %bb.av
  %i.gc = zext nneg i32 %i.ga to i64
  %i.gd = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.fw, i64 %i.gc) ; 2 uses
  %i.ge = extractvalue { i64, i1 } %i.gd, 1
  br i1 %i.ge, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2q_TxxExNCB2y_s_0NCINvNtB6_6filter11filter_foldB48_xNCB2y_s0_0NCINvNtB6_3map8map_foldB48_xxNCB2y_s1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0E0B2G_.exit.i.i.i.i, label %bb.ax, !prof !1174

bb.ax:                                            ; preds = %bb.aw
  %i.gf = extractvalue { i64, i1 } %i.gd, 0       ; 2 uses
  %.not102.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fu, 0
  br i1 %.not102.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph141.i.i.i.i.i.i.i.i.i:                      ; preds = %.preheader114.i.i.i.i.i.i.i.i.i, %bb.ay
  %.sroa.0.2140.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gm, %bb.ay ], [ %i.fq, %.preheader114.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.26.2139.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gl, %bb.ay ], [ %i.fr, %.preheader114.i.i.i.i.i.i.i.i.i ]
  %.sroa.084.2138.i.i.i.i.i.i.i.i.i = phi i64 [ %i.go, %bb.ay ], [ 0, %.preheader114.i.i.i.i.i.i.i.i.i ]
  %i.gg = load i8, ptr %.sroa.0.2140.i.i.i.i.i.i.i.i.i, align 1, !alias.scope !5510, !noalias !5513, !noundef !4
  %i.gh = zext i8 %i.gg to i32
  %i.gi = add nsw i32 %i.gh, -48                  ; 2 uses
  %i.gj = icmp ugt i32 %i.gi, 9
  br i1 %i.gj, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2q_TxxExNCB2y_s_0NCINvNtB6_6filter11filter_foldB48_xNCB2y_s0_0NCINvNtB6_3map8map_foldB48_xxNCB2y_s1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0E0B2G_.exit.i.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph141.i.i.i.i.i.i.i.i.i
  %i.gk = mul i64 %.sroa.084.2138.i.i.i.i.i.i.i.i.i, 10
  %i.gl = add nsw i64 %.sroa.26.2139.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i.i.i.i.i.i.i.i.i, i64 1
  %i.gn = zext nneg i32 %i.gi to i64
  %i.go = sub i64 %i.gk, %i.gn                    ; 2 uses
  %.not103.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.gl, 0
  br i1 %.not103.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i, label %.lr.ph141.i.i.i.i.i.i.i.i.i

bb.az:                                            ; preds = %bb.at, %bb.as
  %.sroa.26.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fp, %bb.at ], [ %i.fk, %bb.as ] ; 4 uses
  %.sroa.0.0.i4.i.i.i.i.i.i.i.i = phi ptr [ %i.fo, %bb.at ], [ %i.fl, %bb.as ] ; 2 uses
  %i.gp = icmp samesign ult i64 %.sroa.26.0.i.i.i.i.i.i.i.i.i, 16
  br i1 %i.gp, label %.preheader.i.i.i.i.i.i.i.i.i, label %.preheader111.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.az
  %.not105146.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.26.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not105146.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i, label %.lr.ph150.i.i.i.i.i.i.i.i.i

.preheader111.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.az, %bb.bc
  %.sroa.0.3145.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gq, %bb.bc ], [ %.sroa.0.0.i4.i.i.i.i.i.i.i.i, %bb.az ] ; 2 uses
  %.sroa.26.3144.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gr, %bb.bc ], [ %.sroa.26.0.i.i.i.i.i.i.i.i.i, %bb.az ]
  %.sroa.084.3143.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hc, %bb.bc ], [ 0, %bb.az ]
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i.i.i.i.i.i.i.i.i, i64 1
  %i.gr = add nsw i64 %.sroa.26.3144.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.gs = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i.i.i.i.i.i.i.i.i, i64 10) ; 2 uses
  %i.gt = extractvalue { i64, i1 } %i.gs, 0
  %i.gu = extractvalue { i64, i1 } %i.gs, 1
  br i1 %i.gu, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2q_TxxExNCB2y_s_0NCINvNtB6_6filter11filter_foldB48_xNCB2y_s0_0NCINvNtB6_3map8map_foldB48_xxNCB2y_s1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0E0B2G_.exit.i.i.i.i, label %bb.ba, !prof !1174

bb.ba:                                            ; preds = %.preheader111.i.i.i.i.i.i.i.i.i
  %i.gv = load i8, ptr %.sroa.0.3145.i.i.i.i.i.i.i.i.i, align 1, !alias.scope !5510, !noalias !5513, !noundef !4
  %i.gw = zext i8 %i.gv to i32
  %i.gx = add nsw i32 %i.gw, -48                  ; 2 uses
  %i.gy = icmp ult i32 %i.gx, 10
  br i1 %i.gy, label %bb.bb, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2q_TxxExNCB2y_s_0NCINvNtB6_6filter11filter_foldB48_xNCB2y_s0_0NCINvNtB6_3map8map_foldB48_xxNCB2y_s1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0E0B2G_.exit.i.i.i.i

bb.bb:                                            ; preds = %bb.ba
  %i.gz = zext nneg i32 %i.gx to i64
  %i.ha = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.gt, i64 %i.gz) ; 2 uses
  %i.hb = extractvalue { i64, i1 } %i.ha, 1
  br i1 %i.hb, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2q_TxxExNCB2y_s_0NCINvNtB6_6filter11filter_foldB48_xNCB2y_s0_0NCINvNtB6_3map8map_foldB48_xxNCB2y_s1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0E0B2G_.exit.i.i.i.i, label %bb.bc, !prof !1174

bb.bc:                                            ; preds = %bb.bb
  %i.hc = extractvalue { i64, i1 } %i.ha, 0       ; 2 uses
  %.not104.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.gr, 0
  br i1 %.not104.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i, label %.preheader111.i.i.i.i.i.i.i.i.i

.lr.ph150.i.i.i.i.i.i.i.i.i:                      ; preds = %.preheader.i.i.i.i.i.i.i.i.i, %bb.bd
  %.sroa.0.4149.i.i.i.i.i.i.i.i.i = phi ptr [ %i.hj, %bb.bd ], [ %.sroa.0.0.i4.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.26.4148.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hi, %bb.bd ], [ %.sroa.26.0.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i ]
  %.sroa.084.4147.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hl, %bb.bd ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i ]
  %i.hd = load i8, ptr %.sroa.0.4149.i.i.i.i.i.i.i.i.i, align 1, !alias.scope !5510, !noalias !5513, !noundef !4
  %i.he = zext i8 %i.hd to i32
  %i.hf = add nsw i32 %i.he, -48                  ; 2 uses
  %i.hg = icmp ugt i32 %i.hf, 9
  br i1 %i.hg, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2q_TxxExNCB2y_s_0NCINvNtB6_6filter11filter_foldB48_xNCB2y_s0_0NCINvNtB6_3map8map_foldB48_xxNCB2y_s1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0E0B2G_.exit.i.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph150.i.i.i.i.i.i.i.i.i
  %i.hh = mul i64 %.sroa.084.4147.i.i.i.i.i.i.i.i.i, 10
  %i.hi = add nsw i64 %.sroa.26.4148.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i.i.i.i.i.i.i.i.i, i64 1
  %i.hk = zext nneg i32 %i.hf to i64
  %i.hl = add i64 %i.hh, %i.hk                    ; 2 uses
  %.not105.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.hi, 0
  br i1 %.not105.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i, label %.lr.ph150.i.i.i.i.i.i.i.i.i

bb.be:                                            ; preds = %bb.ap, %bb.ao, %bb.am, %bb.al, %bb.ah
  call void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ak, i64 noundef %i.am, i64 noundef %i.ey, i64 noundef %i.ez, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @226) #39, !noalias !5507
  unreachable

.loopexit.i.i.i.i.i.i.i:                          ; preds = %bb.ax, %bb.ay, %bb.bc, %bb.bd, %.preheader.i.i.i.i.i.i.i.i.i, %.preheader114.i.i.i.i.i.i.i.i.i
  %i.hm = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i ], [ %i.hl, %bb.bd ], [ %i.hc, %bb.bc ], [ %i.go, %bb.ay ], [ 0, %.preheader114.i.i.i.i.i.i.i.i.i ], [ %i.gf, %bb.ax ] ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  %i.ho = load i32, ptr %i.hn, align 8, !range !5515, !alias.scope !5466, !noalias !5467, !noundef !4 ; 2 uses
  %i.hp = ashr i32 %i.ho, 13                      ; 3 uses
  %i.hq = add nsw i32 %i.hp, -1                   ; 2 uses
  %i.hr = icmp slt i32 %i.hp, 1
  br i1 %i.hr, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.loopexit.i.i.i.i.i.i.i
  %i.hs = sub nsw i32 1, %i.hp
  %i.ht = udiv i32 %i.hs, 400
  %i.hu = add nuw nsw i32 %i.ht, 1                ; 2 uses
  %i.hv = mul nuw nsw i32 %i.hu, 400
  %i.hw = add nsw i32 %i.hv, %i.hq
  %.neg.i.i.i.i.i.i.i.i = mul nsw i32 %i.hu, -146097
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %.loopexit.i.i.i.i.i.i.i
  %.sroa.05.0.i.i.i.i.i.i.i.i = phi i32 [ %.neg.i.i.i.i.i.i.i.i, %bb.bf ], [ 0, %.loopexit.i.i.i.i.i.i.i ]
  %.sroa.0.0.i7.i.i.i.i.i.i.i = phi i32 [ %i.hw, %bb.bf ], [ %i.hq, %.loopexit.i.i.i.i.i.i.i ] ; 2 uses
  %i.hx = sdiv i32 %.sroa.0.0.i7.i.i.i.i.i.i.i, 100 ; 2 uses
  %i.hy = mul nsw i32 %.sroa.0.0.i7.i.i.i.i.i.i.i, 1461
  %i.hz = ashr i32 %i.hy, 2
  %i.ia = ashr i32 %i.hx, 2
  %i.ib = lshr i32 %i.ho, 4
  %i.ic = and i32 %i.ib, 511
  %i.id = getelementptr inbounds nuw i8, ptr %i.ag, i64 84
  %i.ie = load i32, ptr %i.id, align 4, !alias.scope !5466, !noalias !5467, !noundef !4
  %i.if = zext i32 %i.ie to i64
  %i.ig = add nuw nsw i32 %i.ic, -719163
  %i.ih = add nsw i32 %i.ig, %.sroa.05.0.i.i.i.i.i.i.i.i
  %i.ii = sub nsw i32 %i.ih, %i.hx
  %i.ij = add nsw i32 %i.ii, %i.hz
  %narrow.i.i.i.i.i.i.i = add nsw i32 %i.ij, %i.ia
  %i.ik = sext i32 %narrow.i.i.i.i.i.i.i to i64
  %i.il = mul nsw i64 %i.ik, 86400
  %i.im = add nsw i64 %i.il, %i.if
  %i.in = mul nsw i64 %i.im, 1000
  %i.io = getelementptr inbounds nuw i8, ptr %i.ag, i64 88
  %i.ip = load i32, ptr %i.io, align 8, !alias.scope !5466, !noalias !5467, !noundef !4
  %i.iq = udiv i32 %i.ip, 1000000
  %i.ir = zext nneg i32 %i.iq to i64
  %i.is = add nsw i64 %i.in, %i.ir
  call void @llvm.experimental.noalias.scope.decl(metadata !5516)
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !5519, !noalias !5520, !nonnull !4, !align !8, !noundef !4
  %i.it = load i64, ptr %.val.i.i.i.i.i.i.i, align 8, !noalias !5521, !noundef !4
  %.not.i.i.i.i.i.i.i = icmp slt i64 %i.is, %i.it
  br i1 %.not.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2q_TxxExNCB2y_s_0NCINvNtB6_6filter11filter_foldB48_xNCB2y_s0_0NCINvNtB6_3map8map_foldB48_xxNCB2y_s1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0E0B2G_.exit.i.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5522
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5522
  store i64 %.sroa.02.0.i.i.i.i, ptr %i.b, align 8, !noalias !5527
  store i64 %i.hm, ptr %i.a, align 8, !noalias !5527
  %i.iu = call noundef i8 @_RNvXs2_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNvYxNtNtBb_3cmp3Ord3cmpINtB7_6FnOnceTRxB1p_EE9call_onceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a), !noalias !5530
  %i.iv = icmp slt i8 %i.iu, 1
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = select i1 %i.iv, i64 %.sroa.02.0.i.i.i.i, i64 %i.hm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5522
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2q_TxxExNCB2y_s_0NCINvNtB6_6filter11filter_foldB48_xNCB2y_s0_0NCINvNtB6_3map8map_foldB48_xxNCB2y_s1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0E0B2G_.exit.i.i.i.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2q_TxxExNCB2y_s_0NCINvNtB6_6filter11filter_foldB48_xNCB2y_s0_0NCINvNtB6_3map8map_foldB48_xxNCB2y_s1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0E0B2G_.exit.i.i.i.i: ; preds = %bb.aw, %bb.av, %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph141.i.i.i.i.i.i.i.i.i, %bb.bb, %bb.ba, %.preheader111.i.i.i.i.i.i.i.i.i, %.lr.ph150.i.i.i.i.i.i.i.i.i, %bb.bh, %bb.bg, %bb.ar, %bb.ar, %bb.aq, %bb.ag, %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s_00Bb_.exit.thread.i.i.i.i.i.i.i, %bb.c
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %.sroa.02.0.i.i.i.i, %bb.c ], [ %.sroa.02.0.i.i.i.i, %bb.bg ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, %bb.bh ], [ %.sroa.02.0.i.i.i.i, %bb.ag ], [ %.sroa.02.0.i.i.i.i, %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s_00Bb_.exit.thread.i.i.i.i.i.i.i ], [ %.sroa.02.0.i.i.i.i, %bb.ar ], [ %.sroa.02.0.i.i.i.i, %bb.ar ], [ %.sroa.02.0.i.i.i.i, %bb.aq ], [ %.sroa.02.0.i.i.i.i, %bb.bb ], [ %.sroa.02.0.i.i.i.i, %.lr.ph150.i.i.i.i.i.i.i.i.i ], [ %.sroa.02.0.i.i.i.i, %.lr.ph141.i.i.i.i.i.i.i.i.i ], [ %.sroa.02.0.i.i.i.i, %.preheader111.i.i.i.i.i.i.i.i.i ], [ %.sroa.02.0.i.i.i.i, %bb.ba ], [ %.sroa.02.0.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.02.0.i.i.i.i, %bb.av ], [ %.sroa.02.0.i.i.i.i, %bb.aw ] ; 2 uses
  %i.iw = add nuw i64 %.sroa.04.0.i.i.i.i, 1      ; 2 uses
  %i.ix = icmp eq i64 %i.iw, %i.t
  br i1 %i.ix, label %_RINvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filterINtB6_6FilterINtNtB8_10filter_map9FilterMapIB14_INtNtNtBc_5slice4iter4IterINtNtBc_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2q_5ErrorEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00ENCB3k_s_0ENCB3k_s0_0ENtNtNtBa_6traits8iterator8Iterator4foldxNCINvNtB8_3map8map_foldTxxExxNCB3k_s1_0NCINvNvB56_6min_by4foldxNvYxNtNtBc_3cmp3Ord3cmpE0E0EB3s_.exit, label %bb.c

_RINvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filterINtB6_6FilterINtNtB8_10filter_map9FilterMapIB14_INtNtNtBc_5slice4iter4IterINtNtBc_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2q_5ErrorEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00ENCB3k_s_0ENCB3k_s0_0ENtNtNtBa_6traits8iterator8Iterator4foldxNCINvNtB8_3map8map_foldTxxExxNCB3k_s1_0NCINvNvB56_6min_by4foldxNvYxNtNtBc_3cmp3Ord3cmpE0E0EB3s_.exit: ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2q_TxxExNCB2y_s_0NCINvNtB6_6filter11filter_foldB48_xNCB2y_s0_0NCINvNtB6_3map8map_foldB48_xxNCB2y_s1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0E0B2G_.exit.i.i.i.i, %bb.a
  %.sroa.0.0.i.i.i.i = phi i64 [ %1, %bb.a ], [ %.sroa.0.0.i.i.i.i.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2q_TxxExNCB2y_s_0NCINvNtB6_6filter11filter_foldB48_xNCB2y_s0_0NCINvNtB6_3map8map_foldB48_xxNCB2y_s1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0E0B2G_.exit.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5441
  ret i64 %.sroa.0.0.i.i.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_6filter6FilterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB2U_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20sql_function_to_exprs1_0ENCB2L_s2_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEB5Y_8try_folduNCINvNvB5Y_12try_for_each4callNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtNtBc_3ops12control_flow11ControlFlowB9H_ENcNtBaq_5Break0E0Baq_E0IBar_Baq_EEB48_(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 16 captures(address) dereferenceable(112) %0, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noalias noundef nonnull %2, ptr noalias noundef align 8 dereferenceable(40) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5531
  store ptr %i.b, ptr %i.a, align 8, !noalias !5531
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.c, align 8, !noalias !5536
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %3, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !5536
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !5536
  call void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1F_8adapters6filter15filter_try_foldBX_uINtNtNtB1H_3ops12control_flow11ControlFlowIB3t_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB59_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20sql_function_to_exprs1_0NCINvNtB2L_3map12map_try_foldBX_INtNtB1H_6result6ResultB4d_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuB3s_NCB50_s2_0NCINvXB2L_INtB2L_12GenericShuntINtB86_3MapINtB2J_6FilterBI_B4Y_EBa2_EIB8y_NtNtB1H_7convert10InfallibleB8Y_EEB1z_8try_folduNCINvNvB1z_12try_for_each4callB4d_B48_NcNtB48_5Break0E0B48_E0E0E0B3s_EB6n_(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !5537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5531
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_6filter6FilterNtNtCseqDwI8vvjGQ_10serde_json3map4IterNCNvMs8_NtCs14kWLkQVSKO_14deltalake_core8protocolNtB24_14DeltaOperation20operation_parameterss_0ENCB1Y_s0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3G_8for_each4callTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtB1n_5value5ValueENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5R_7HashMapB4K_B5m_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB3K_7collect6ExtendB4J_E6extendBN_E0E0EB26_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [72 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !5538
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(72) %0, i64 72, i1 false), !noalias !5542
  %i.j = call { ptr, ptr } @_RNvXsk_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB5_4IterNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.i), !noalias !5543 ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %.not12.i.i = icmp eq ptr %i.k, null
  br i1 %.not12.i.i, label %_RINvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filterINtB6_6FilterNtNtCseqDwI8vvjGQ_10serde_json3map4IterNCNvMs8_NtCs14kWLkQVSKO_14deltalake_core8protocolNtB1O_14DeltaOperation20operation_parameterss_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_3map8map_foldTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtB17_5value5ValueETB4i_B4V_EuNCB1I_s0_0NCINvNvB3f_8for_each4callB5g_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6e_7HashMapB4i_B4V_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB3j_7collect6ExtendB5g_E6extendINtB3Y_3MapBQ_B5r_EE0E0E0EB1Q_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 22
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.sroa.75.24..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.8.24..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.9.24..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter11filter_foldTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEuNCNvMs8_NtCs14kWLkQVSKO_14deltalake_core8protocolNtB2w_14DeltaOperation20operation_parameterss_0NCINvNtB6_3map8map_foldB11_TB13_B1G_EuNCB2q_s0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB4n_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5P_7HashMapB13_B1G_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB4T_7collect6ExtendB4n_E6extendINtB41_3MapINtB4_6FilterNtNtB1K_3map4IterB2o_EB4y_EE0E0E0E0B2y_.exit.i.i, %.lr.ph.i.i
  %i.p = phi ptr [ %i.k, %.lr.ph.i.i ], [ %i.ak, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter11filter_foldTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEuNCNvMs8_NtCs14kWLkQVSKO_14deltalake_core8protocolNtB2w_14DeltaOperation20operation_parameterss_0NCINvNtB6_3map8map_foldB11_TB13_B1G_EuNCB2q_s0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB4n_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5P_7HashMapB13_B1G_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB4T_7collect6ExtendB4n_E6extendINtB41_3MapINtB4_6FilterNtNtB1K_3map4IterB2o_EB4y_EE0E0E0E0B2y_.exit.i.i ]
  %i.q = phi { ptr, ptr } [ %i.j, %.lr.ph.i.i ], [ %i.aj, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter11filter_foldTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEuNCNvMs8_NtCs14kWLkQVSKO_14deltalake_core8protocolNtB2w_14DeltaOperation20operation_parameterss_0NCINvNtB6_3map8map_foldB11_TB13_B1G_EuNCB2q_s0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB4n_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5P_7HashMapB13_B1G_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB4T_7collect6ExtendB4n_E6extendINtB41_3MapINtB4_6FilterNtNtB1K_3map4IterB2o_EB4y_EE0E0E0E0B2y_.exit.i.i ]
  %i.r = extractvalue { ptr, ptr } %i.q, 1        ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !5546)
  %i.s = load i8, ptr %i.r, align 8, !range !2324, !alias.scope !5546, !noalias !5549, !noundef !4 ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter11filter_foldTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEuNCNvMs8_NtCs14kWLkQVSKO_14deltalake_core8protocolNtB2w_14DeltaOperation20operation_parameterss_0NCINvNtB6_3map8map_foldB11_TB13_B1G_EuNCB2q_s0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB4n_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5P_7HashMapB13_B1G_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB4T_7collect6ExtendB4n_E6extendINtB41_3MapINtB4_6FilterNtNtB1K_3map4IterB2o_EB4y_EE0E0E0E0B2y_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !5551)
  call void @llvm.experimental.noalias.scope.decl(metadata !5554)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5557
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p), !noalias !5562
  %i.t = icmp eq i8 %i.s, 3
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !5563, !noalias !5564, !nonnull !4, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !5563, !noalias !5564, !noundef !4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5557
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %i.x, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.j unwind label %.loopexit6.i.i, !noalias !5562

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5565
  store i64 0, ptr %i.f, align 8, !noalias !5565
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5565
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5565
  store i32 1610612768, ptr %i.l, align 8, !noalias !5565
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !5565
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 2, !noalias !5565
  store ptr %i.f, ptr %i.e, align 8, !noalias !5565
  store ptr @307, ptr %i.m, align 8, !noalias !5565
  %i.y = invoke noundef zeroext i1 @_RNvXs_NtCseqDwI8vvjGQ_10serde_json5valueNtB4_5ValueNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.g unwind label %.loopexit.i.i, !noalias !5569

.loopexit.i.i:                                    ; preds = %bb.e
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp.i.i:                           ; preds = %bb.h
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #43
          to label %.body.i.i.i.i.i unwind label %bb.i, !noalias !5569

bb.g:                                             ; preds = %bb.e
  br i1 %i.y, label %bb.h, label %_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB5_12SpecToString14spec_to_stringCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i, !prof !1174

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @455, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @323, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @457) #47
          to label %.noexc.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i, !noalias !5569

.noexc.i.i.i.i.i.i:                               ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !5569
  unreachable

_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB5_12SpecToString14spec_to_stringCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i: ; preds = %bb.g
  %.sroa.0.0.copyload1.i.i.i.i.i = load i64, ptr %i.f, align 8, !noalias !5570
  %.sroa.5.0.copyload2.i.i.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5570
  %.sroa.6.0.copyload4.i.i.i.i.i = load i64, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5565
  br label %_RNCNvMs8_NtCs14kWLkQVSKO_14deltalake_core8protocolNtB7_14DeltaOperation20operation_parameterss0_0B9_.exit.i.i.i.i

.loopexit6.i.i:                                   ; preds = %bb.d
  %lpad.loopexit8.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.loopexit.split-lp7.i.i:                          ; preds = %bb.k
  %lpad.loopexit.split-lp9.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %.loopexit.split-lp7.i.i, %.loopexit6.i.i, %bb.f
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %lpad.phi.i.i, %bb.f ], [ %lpad.loopexit8.i.i, %.loopexit6.i.i ], [ %lpad.loopexit.split-lp9.i.i, %.loopexit.split-lp7.i.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h) #43
          to label %bb.p unwind label %bb.o, !noalias !5571

bb.j:                                             ; preds = %bb.d
  %i.aa = load i64, ptr %i.g, align 8, !range !18, !noalias !5557, !noundef !4
  %i.ab = trunc nuw i64 %i.aa to i1
  %i.ac = load i64, ptr %i.n, align 8, !range !62, !noalias !5557, !noundef !4 ; 4 uses
  br i1 %i.ab, label %bb.k, label %bb.l, !prof !1174

bb.k:                                             ; preds = %bb.j
  %i.ad = load i64, ptr %i.o, align 8, !noalias !5557
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ac, i64 %i.ad) #47
          to label %bb.n unwind label %.loopexit.split-lp7.i.i, !noalias !5562

bb.l:                                             ; preds = %bb.j
  %i.ae = load ptr, ptr %i.o, align 8, !noalias !5557, !nonnull !4, !noundef !4 ; 3 uses
  %i.af = icmp ule i64 %i.x, %i.ac
  call void @llvm.assume(i1 %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5557
  %.not.i.i.i.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i.i.i, label %_RNCNvMs8_NtCs14kWLkQVSKO_14deltalake_core8protocolNtB7_14DeltaOperation20operation_parameterss0_0B9_.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr nonnull align 1 %i.v, i64 %i.x, i1 false), !noalias !5562
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation34make_fields_non_nullable_recursives_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4u_8for_each4callB1V_NCINvMsj_NtB1s_3vecINtB5K_3VecB1V_E14extend_trustedBN_E0E0EB2N_:bb.a
  br label %.body.thread.i.i.i

.body.thread7.i.i.loopexit.split-lp.i:            ; preds = %bb.f
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i.i

bb.e:                                             ; preds = %.noexc.i
  %i.ab = load i64, ptr %i.a, align 8, !range !18, !noalias !12861, !noundef !4
  %i.ac = trunc nuw i64 %i.ab to i1
  %i.ad = load i64, ptr %i.r, align 8, !range !62, !noalias !12861, !noundef !4 ; 3 uses
  br i1 %i.ac, label %bb.f, label %bb.g, !prof !1174

bb.f:                                             ; preds = %bb.e
  %i.ae = load i64, ptr %i.s, align 8, !noalias !12861
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ad, i64 %i.ae) #47
          to label %bb.m unwind label %.body.thread7.i.i.loopexit.split-lp.i, !noalias !12861

bb.g:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %i.s, align 8, !noalias !12861, !nonnull !4, !noundef !4 ; 2 uses
  %i.ag = icmp ule i64 %i.aa, %i.ad
  call void @llvm.assume(i1 %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12861
  %.not.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.l, %bb.g
  store i64 %i.ad, ptr %i.c, align 8, !noalias !12861
  store ptr %i.af, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !12861
  store i64 %i.aa, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !12861
  %i.ah = load i64, ptr %i.t, align 8, !alias.scope !12864, !noalias !12867, !noundef !4 ; 3 uses
  %i.ai = load i64, ptr %i.d, align 8, !range !63, !alias.scope !12864, !noalias !12867, !noundef !4
  %i.aj = icmp eq i64 %i.ah, %i.ai
  br i1 %i.aj, label %bb.i, label %_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation34make_fields_non_nullable_recursives_0B7_.exit.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCs2pqxYH9ZEk8_3std(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation34make_fields_non_nullable_recursives_0B7_.exit.i.i unwind label %bb.j, !noalias !12867

bb.j:                                             ; preds = %bb.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #43
          to label %.body.thread.i.i.i unwind label %bb.k, !noalias !12861

bb.k:                                             ; preds = %bb.j
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !12861
  unreachable

bb.l:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull align 1 %i.y, i64 %i.aa, i1 false), !noalias !12861
  br label %bb.h

bb.m:                                             ; preds = %bb.f
  unreachable

.body.thread.i.i.i:                               ; preds = %bb.j, %.body.thread7.i.i.loopexit.split-lp.i, %.body.thread7.i.i.loopexit.i
  %eh.lpad-body6.i.i.i = phi { ptr, i32 } [ %i.ak, %bb.j ], [ %lpad.loopexit.i, %.body.thread7.i.i.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.body.thread7.i.i.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.d) #43
          to label %bb.p unwind label %bb.n, !noalias !12861

bb.n:                                             ; preds = %.body.thread.i.i.i
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !12861
  unreachable

_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation34make_fields_non_nullable_recursives_0B7_.exit.i.i: ; preds = %bb.i, %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %.val16.i, i64 16
  %i.ao = load ptr, ptr %i.u, align 8, !alias.scope !12864, !noalias !12867, !nonnull !4, !noundef !4
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !12861
  %i.aq = add i64 %i.ah, 1
  store i64 %i.aq, ptr %i.t, align 8, !alias.scope !12864, !noalias !12867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12861
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12861
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !12861
  invoke void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation34make_fields_non_nullable_recursive(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.an, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.l)
          to label %bb.o unwind label %bb.c, !noalias !12855

bb.o:                                             ; preds = %_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation34make_fields_non_nullable_recursives_0B7_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12861
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12861
  %i.ar = getelementptr inbounds nuw [112 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ar, ptr noundef nonnull readonly align 8 dereferenceable(112) %i.e, i64 112, i1 false), !noalias !12869
  %i.as = add i64 %.val15.i, 1                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12858
  %i.at = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.au = icmp eq i64 %i.at, %i.q
  br i1 %i.au, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2e_8adapters3map8map_foldRBQ_B1o_uNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation34make_fields_non_nullable_recursives_0NCINvNvB28_8for_each4callB1o_NCINvMsj_NtBV_3vecINtB61_3VecB1o_E14extend_trustedINtB2Y_3MapBF_B3B_EE0E0E0EB3J_.exit, label %bb.d

bb.p:                                             ; preds = %.body.thread.i.i.i, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.v, %bb.c ], [ %eh.lpad-body6.i.i.i, %.body.thread.i.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !12855
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2e_8adapters3map8map_foldRBQ_B1o_uNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation34make_fields_non_nullable_recursives_0NCINvNvB28_8for_each4callB1o_NCINvMsj_NtBV_3vecINtB61_3VecB1o_E14extend_trustedINtB2Y_3MapBF_B3B_EE0E0E0EB3J_.exit: ; preds = %bb.o, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.as, %bb.o ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !12855
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write16schema_evolution15try_cast_schema0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB1Z_5error10ArrowErrorEEB4c_8try_folduNCINvNvB4c_12try_for_each4calluINtNtNtBc_3ops12control_flow11ControlFlowuENcNtB7o_5Break0E0B7o_E0IB7p_B7o_EEB2P_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readnone captures(none) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 9 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 9 uses
  %.sroa.4.i.i = alloca [24 x i8], align 8        ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12874)
  %i.l = load ptr, ptr %0, align 8, !alias.scope !12877, !nonnull !4, !noundef !4 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !12877, !nonnull !4, !noundef !4
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB27_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultuNtNtB1l_5error10ArrowErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4o_uEENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write16schema_evolution15try_cast_schema0NCINvXB2X_INtB2X_12GenericShuntINtB2V_3MapB3_B5a_EIB3z_NtNtBa_7convert10InfallibleB3V_EEB21_8try_folduNCINvNvB21_12try_for_each4calluB52_NcNtB52_5Break0E0B52_E0E0B4n_EB5k_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.q, ptr %0, align 8, !alias.scope !12877
  %.val8.i = load ptr, ptr %i.l, align 8, !noalias !12874, !nonnull !4, !noundef !4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !12874
  %.val.i.i = load ptr, ptr %i.p, align 8, !noalias !12874, !nonnull !4, !align !8, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %.val8.i, i64 16 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val8.i, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !noalias !12880, !nonnull !4, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %.val8.i, i64 32
  %i.v = load i64, ptr %i.u, align 8, !noalias !12880, !noundef !4
  %i.w = tail call { i64, ptr } @_RNvMs_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB4_6Fields4find(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef %i.v), !noalias !12880
  %i.x = extractvalue { i64, ptr } %i.w, 1        ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %.split52.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %.val8.i, i64 40 ; 4 uses
  %i.z = load ptr, ptr %i.x, align 8, !noalias !12880, !nonnull !4, !noundef !4 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40 ; 4 uses
  %i.ab = load i8, ptr %i.y, align 8, !range !2332, !noalias !12880, !noundef !4 ; 2 uses
  %i.ac = icmp eq i8 %i.ab, 32
  %i.ad = load i8, ptr %i.aa, align 8, !noalias !12880 ; 2 uses
  %i.ae = icmp eq i8 %i.ad, 32
  %or.cond.i.i.i = select i1 %i.ac, i1 %i.ae, i1 false
  br i1 %or.cond.i.i.i, label %_RNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write16schema_evolution15try_cast_schema0B9_.exit.i.i, label %thread-pre-split.i.i.i

.split52.i.i.i:                                   ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12880
  store ptr %i.r, ptr %i.b, align 8, !noalias !12880
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12880
  store ptr %i.b, ptr %i.a, align 8, !noalias !12880
  %.sroa.442.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.442.0..sroa_idx.i.i.i, align 8, !noalias !12880
  %.sroa.410.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.410.0..sroa_idx.i.i.i, ptr noundef nonnull @280, ptr noundef nonnull %i.a), !noalias !12874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12880
  br label %_RNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write16schema_evolution15try_cast_schema0B9_.exit.thread.i.i

thread-pre-split.i.i.i:                           ; preds = %bb.c
  switch i8 %i.ad, label %bb.d [
    i8 37, label %bb.e
    i8 38, label %bb.f
  ], !prof !12883

bb.d:                                             ; preds = %bb.e, %thread-pre-split.i.i.i
  %i.af = tail call noundef zeroext i1 @_RNvNtCsb7CrJTM47Nd_10arrow_cast4cast14can_cast_types(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa), !noalias !12880
  br i1 %i.af, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtNtBa_6result6ResultuNtNtB1C_5error10ArrowErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB37_uEENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write16schema_evolution15try_cast_schema0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3T_EIB2i_NtNtBa_7convert10InfallibleB2E_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7e_12try_for_each4calluB3L_NcNtB3L_5Break0E0B3L_E0E0B43_.exit.i, label %.split48.i.i.i

bb.e:                                             ; preds = %thread-pre-split.i.i.i
  %.off.i.i.i = add nsw i8 %i.ab, -37
  %switch.i.i.i = icmp ult i8 %.off.i.i.i, 2
  br i1 %switch.i.i.i, label %bb.g, label %bb.d

bb.f:                                             ; preds = %thread-pre-split.i.i.i
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @277, ptr noundef nonnull inttoptr (i64 301 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @279) #39, !noalias !12880
  unreachable

bb.g:                                             ; preds = %bb.e
  %.sroa.02.0.i.i.i = getelementptr inbounds nuw i8, ptr %.val8.i, i64 41
  %.sroa.04.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 41
  %i.ag = load i8, ptr %.sroa.02.0.i.i.i, align 1, !noalias !12880, !noundef !4
  %i.ah = load i8, ptr %.sroa.04.0.i.i.i, align 1, !noalias !12880, !noundef !4
  %.not55.i.i.i = icmp ugt i8 %i.ag, %i.ah
  br i1 %.not55.i.i.i, label %.split.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.03.0.i.i.i = getelementptr inbounds nuw i8, ptr %.val8.i, i64 42
  %.sroa.05.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 42
  %i.ai = load i8, ptr %.sroa.03.0.i.i.i, align 2, !noalias !12880, !noundef !4
  %i.aj = load i8, ptr %.sroa.05.0.i.i.i, align 2, !noalias !12880, !noundef !4
  %.not56.i.i.i = icmp sgt i8 %i.ai, %i.aj
  br i1 %.not56.i.i.i, label %.split.i.i.i, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtNtBa_6result6ResultuNtNtB1C_5error10ArrowErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB37_uEENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write16schema_evolution15try_cast_schema0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3T_EIB2i_NtNtBa_7convert10InfallibleB2E_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7e_12try_for_each4calluB3L_NcNtB3L_5Break0E0B3L_E0E0B43_.exit.i

.split.i.i.i:                                     ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !12880
  store ptr %i.r, ptr %i.j, align 8, !noalias !12880
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !12880
  store ptr %i.y, ptr %i.i, align 8, !noalias !12880
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !12880
  store ptr %i.aa, ptr %i.h, align 8, !noalias !12880
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !12880
  store ptr %i.j, ptr %i.g, align 8, !noalias !12880
  %.sroa.414.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.414.0..sroa_idx.i.i.i, align 8, !noalias !12880
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.i, ptr %i.ak, align 8, !noalias !12880
  %.sroa.418.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.418.0..sroa_idx.i.i.i, align 8, !noalias !12880
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.h, ptr %i.al, align 8, !noalias !12880
  %.sroa.422.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.422.0..sroa_idx.i.i.i, align 8, !noalias !12880
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.4.0..sroa_idx.i.i.i, ptr noundef nonnull @276, ptr noundef nonnull %i.g), !noalias !12874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !12880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !12880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !12880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !12880
  br label %_RNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write16schema_evolution15try_cast_schema0B9_.exit.thread.i.i

.split48.i.i.i:                                   ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12880
  store ptr %i.r, ptr %i.f, align 8, !noalias !12880
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12880
  store ptr %i.y, ptr %i.e, align 8, !noalias !12880
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12880
  store ptr %i.aa, ptr %i.d, align 8, !noalias !12880
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12880
  store ptr %i.f, ptr %i.c, align 8, !noalias !12880
  %.sroa.428.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.428.0..sroa_idx.i.i.i, align 8, !noalias !12880
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.e, ptr %i.am, align 8, !noalias !12880
  %.sroa.432.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.432.0..sroa_idx.i.i.i, align 8, !noalias !12880
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.d, ptr %i.an, align 8, !noalias !12880
  %.sroa.436.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.436.0..sroa_idx.i.i.i, align 8, !noalias !12880
  %.sroa.48.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.48.0..sroa_idx.i.i.i, ptr noundef nonnull @276, ptr noundef nonnull %i.c), !noalias !12874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !12880
  br label %_RNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write16schema_evolution15try_cast_schema0B9_.exit.thread.i.i

_RNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write16schema_evolution15try_cast_schema0B9_.exit.thread.i.i: ; preds = %.split48.i.i.i, %.split.i.i.i, %.split52.i.i.i
  %.sroa.4.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx2.i.i, i64 24, i1 false), !noalias !12874
  br label %bb.i

_RNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write16schema_evolution15try_cast_schema0B9_.exit.i.i: ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %.val8.i, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  call void @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write16schema_evolution15try_cast_schema(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ap), !noalias !12874
  %.sroa.0.0.copyload.pr.i.i = load i64, ptr %i.k, align 8, !noalias !12874 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i, i64 24, i1 false), !noalias !12874
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.pr.i.i, -9223372036854775788
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtNtBa_6result6ResultuNtNtB1C_5error10ArrowErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB37_uEENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write16schema_evolution15try_cast_schema0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3T_EIB2i_NtNtBa_7convert10InfallibleB2E_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7e_12try_for_each4calluB3L_NcNtB3L_5Break0E0B3L_E0E0B43_.exit.i, label %bb.i

bb.i:                                             ; preds = %_RNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write16schema_evolution15try_cast_schema0B9_.exit.i.i, %_RNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write16schema_evolution15try_cast_schema0B9_.exit.thread.i.i
  %.sroa.0.0.copyload4.i.i = phi i64 [ -9223372036854775803, %_RNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write16schema_evolution15try_cast_schema0B9_.exit.thread.i.i ], [ %.sroa.0.0.copyload.pr.i.i, %_RNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write16schema_evolution15try_cast_schema0B9_.exit.i.i ] ; 2 uses
  %i.aq = load i64, ptr %2, align 8, !range !3181, !alias.scope !12884, !noalias !12887, !noundef !4
  %i.ar = icmp eq i64 %i.aq, -9223372036854775788
  br i1 %i.ar, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.k, !noalias !12887

bb.k:                                             ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload4.i.i, ptr %2, align 8, !noalias !12887
  %.sroa.5.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i.i, i64 24, i1 false), !noalias !12874
  resume { ptr, i32 } %i.as

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.j, %bb.i
  store i64 %.sroa.0.0.copyload4.i.i, ptr %2, align 8, !noalias !12887
  %.sroa.5.0..8.val.sroa_idx6.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..8.val.sroa_idx6.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i.i, i64 24, i1 false), !noalias !12874
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtNtBa_6result6ResultuNtNtB1C_5error10ArrowErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB37_uEENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write16schema_evolution15try_cast_schema0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3T_EIB2i_NtNtBa_7convert10InfallibleB2E_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7e_12try_for_each4calluB3L_NcNtB3L_5Break0E0B3L_E0E0B43_.exit.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtNtBa_6result6ResultuNtNtB1C_5error10ArrowErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB37_uEENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write16schema_evolution15try_cast_schema0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3T_EIB2i_NtNtBa_7convert10InfallibleB2E_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7e_12try_for_each4calluB3L_NcNtB3L_5Break0E0B3L_E0E0B43_.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write16schema_evolution15try_cast_schema0B9_.exit.i.i, %bb.h, %bb.d
  %.sroa.0.1.i.i.i = phi i8 [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ 1, %_RNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write16schema_evolution15try_cast_schema0B9_.exit.i.i ], [ 1, %bb.h ], [ 1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !12874
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  br label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB27_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultuNtNtB1l_5error10ArrowErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4o_uEENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write16schema_evolution15try_cast_schema0NCINvXB2X_INtB2X_12GenericShuntINtB2V_3MapB3_B5a_EIB3z_NtNtBa_7convert10InfallibleB3V_EEB21_8try_folduNCINvNvB21_12try_for_each4calluB52_NcNtB52_5Break0E0B52_E0E0B4n_EB5k_.exit

_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB27_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultuNtNtB1l_5error10ArrowErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4o_uEENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write16schema_evolution15try_cast_schema0NCINvXB2X_INtB2X_12GenericShuntINtB2V_3MapB3_B5a_EIB3z_NtNtBa_7convert10InfallibleB3V_EEB21_8try_folduNCINvNvB21_12try_for_each4calluB52_NcNtB52_5Break0E0B52_E0E0B4n_EB5k_.exit: ; preds = %bb.a, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtNtBa_6result6ResultuNtNtB1C_5error10ArrowErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB37_uEENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write16schema_evolution15try_cast_schema0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3T_EIB2i_NtNtBa_7convert10InfallibleB2E_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7e_12try_for_each4calluB3L_NcNtB3L_5Break0E0B3L_E0E0B43_.exit.i
  %.sroa.0.0.i = phi i8 [ %.sroa.0.1.i.i.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtNtBa_6result6ResultuNtNtB1C_5error10ArrowErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB37_uEENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write16schema_evolution15try_cast_schema0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3T_EIB2i_NtNtBa_7convert10InfallibleB2E_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7e_12try_for_each4calluB3L_NcNtB3L_5Break0E0B3L_E0E0B43_.exit.i ], [ 2, %bb.a ]
  ret i8 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write17generated_columns22with_generated_columns0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4k_8for_each4callNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCINvMsj_NtB1s_3vecINtB6f_3VecB5n_E14extend_trustedBN_E0E0EB2P_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2e_8adapters3map8map_foldRBQ_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write17generated_columns22with_generated_columns0NCINvNvB28_8for_each4callB3w_NCINvMsj_NtBV_3vecINtB6w_3VecB3w_E14extend_trustedINtB2Y_3MapBF_B4g_EE0E0E0EB4q_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 3
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.k, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.l, %bb.d ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val16.i = load ptr, ptr %i.h, align 8, !noalias !12890, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12890
  %i.i = getelementptr inbounds nuw i8, ptr %.val16.i, i64 16
  invoke void @_RNvXs1_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6ColumnINtNtCsbvkFyIu7lgC_4core7convert4FromRNtNtCs6Po7BT7Nknu_5alloc6string6StringE4from(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
          to label %bb.d unwind label %bb.e, !noalias !12890

bb.d:                                             ; preds = %bb.c
  store i64 5, ptr %i.a, align 16, !noalias !12893
  %i.j = getelementptr inbounds nuw [112 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.j, ptr noundef nonnull readonly align 16 dereferenceable(112) %i.a, i64 112, i1 false), !noalias !12893
  %i.k = add i64 %.val15.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12890
  %i.l = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.m = icmp eq i64 %i.l, %i.f
  br i1 %i.m, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2e_8adapters3map8map_foldRBQ_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write17generated_columns22with_generated_columns0NCINvNvB28_8for_each4callB3w_NCINvMsj_NtBV_3vecINtB6w_3VecB3w_E14extend_trustedINtB2Y_3MapBF_B4g_EE0E0E0EB4q_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !12890
  resume { ptr, i32 } %i.n

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2e_8adapters3map8map_foldRBQ_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write17generated_columns22with_generated_columns0NCINvNvB28_8for_each4callB3w_NCINvMsj_NtBV_3vecINtB6w_3VecB3w_E14extend_trustedINtB2Y_3MapBF_B4g_EE0E0E0EB4q_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.k, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !12890
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema4cast11cast_struct0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB1Z_5error10ArrowErrorEEB3R_8try_folduNCINvNvB3R_12try_for_each4callIB1o_DNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EINtNtNtBc_3ops12control_flow11ControlFlowB72_ENcNtB7T_5Break0E0B7T_E0IB7U_B7T_EEB2P_(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(none) dereferenceable(40) %1, ptr noalias noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 10 uses
  %.sroa.4.i = alloca i64, align 8                ; 5 uses
  %.sroa.73.i = alloca i64, align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12896)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12899)
  %i.d = load ptr, ptr %1, align 8, !alias.scope !12901, !noalias !12896, !nonnull !4, !noundef !4 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !12901, !noalias !12896, !nonnull !4, !noundef !4
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB27_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultIBK_DNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtB1l_5error10ArrowErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5d_B3U_EENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema4cast11cast_struct0NCINvXB2X_INtB2X_12GenericShuntINtB2V_3MapB3_B62_EIB3z_NtNtBa_7convert10InfallibleB4K_EEB21_8try_folduNCINvNvB21_12try_for_each4callB3U_B5R_NcNtB5R_5Break0E0B5R_E0E0B5c_EB6c_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.i, ptr %1, align 8, !alias.scope !12901, !noalias !12896
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.73.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12904)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12907)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12909
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12910)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12913)
  %i.j = load ptr, ptr %i.h, align 8, !alias.scope !12910, !noalias !12915, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.k = load ptr, ptr %i.d, align 8, !alias.scope !12917, !noalias !12918, !nonnull !4, !noundef !4 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !noalias !12919, !nonnull !4, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.p = load i64, ptr %i.o, align 8, !noalias !12919, !noundef !4
  %i.q = tail call noundef align 8 ptr @_RNvMNtNtCs1N9T06jgEdt_11arrow_array5array12struct_arrayNtB2_11StructArray14column_by_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.p), !noalias !12919 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.c, label %_RNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema4cast11cast_struct0B9_.exit.i.i

end_hunk_1
begin_hunk_2_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB3m_6errors15DeltaTableErrorEEB4M_8try_folduNCINvNvB4M_12try_for_each4callINtNtB1L_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EINtNtNtBc_3ops12control_flow11ControlFlowB83_ENcNtB97_5Break0E0B97_E0IB98_B97_EEB3m_:bb.a
bb.am:                                            ; preds = %bb.al
  %i.fh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !16068
  unreachable

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs1N9T06jgEdt_11arrow_array5array13boolean_array12BooleanArrayEE3newCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.fe, ptr noundef nonnull align 8 dereferenceable(104) %i.g, i64 104, i1 false), !noalias !16068
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !16066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !16066
  br label %_RNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0Bb_.exit.thread.i.i

bb.an:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !16066
  %i.fi = getelementptr inbounds i8, ptr %i.bj, i64 -16
  %i.fj = load ptr, ptr %i.fi, align 8, !noalias !16068, !nonnull !4, !noundef !4 ; 2 uses
  %i.fk = getelementptr inbounds i8, ptr %i.bj, i64 -8
  %i.fl = load i64, ptr %i.fk, align 8, !noalias !16068, !noundef !4
  %i.fm = getelementptr inbounds nuw [96 x i8], ptr %i.fj, i64 %i.fl
  call void @_RINvXs7_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB6_16GenericByteArrayINtNtBa_5types17GenericBinaryTypelEEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorINtNtB20_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE9from_iterINtNtNtB1Y_8adapters3map3MapINtNtNtB20_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0s6_0EEB67_(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %i.t, ptr noundef nonnull %i.fj, ptr noundef nonnull %i.fm), !noalias !16068
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !16066
  store i64 1, ptr %i.f, align 8, !noalias !16066
  %i.fn = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.fn, align 8, !noalias !16066
  %i.fo = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.fo, ptr noundef nonnull align 8 dereferenceable(120) %i.t, i64 120, i1 false), !noalias !16066
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !16115
  %i.fp = call noundef align 8 dereferenceable_or_null(136) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 24, 137) 136, i64 noundef 8) #42, !noalias !16115 ; 3 uses
  %i.fq = icmp eq ptr %i.fp, null
  br i1 %i.fq, label %bb.ao, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB17_5types17GenericBinaryTypelEEEE3newCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, !prof !1174

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 136) #47
          to label %.noexc59.i.i.i unwind label %bb.ap, !noalias !16068

.noexc59.i.i.i:                                   ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.ao
  %i.fr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtBN_5types17GenericBinaryTypelEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.fo)
          to label %common.resume.i.i unwind label %bb.aq, !noalias !16068

bb.aq:                                            ; preds = %bb.ap
  %i.fs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !16068
  unreachable

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB17_5types17GenericBinaryTypelEEEE3newCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.fp, ptr noundef nonnull align 8 dereferenceable(136) %i.f, i64 136, i1 false), !noalias !16068
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !16066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !16066
  br label %_RNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0Bb_.exit.thread.i.i

bb.ar:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !16066
  %i.ft = getelementptr inbounds i8, ptr %i.bj, i64 -16
  %i.fu = load ptr, ptr %i.ft, align 8, !noalias !16068, !nonnull !4, !noundef !4 ; 2 uses
  %i.fv = getelementptr inbounds i8, ptr %i.bj, i64 -8
  %i.fw = load i64, ptr %i.fv, align 8, !noalias !16068, !noundef !4
  %i.fx = getelementptr inbounds nuw [96 x i8], ptr %i.fu, i64 %i.fw
  call void @_RINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB6_14PrimitiveArrayNtNtBa_5types10Date32TypeEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorINtNtB1T_6option6OptionlEE9from_iterINtNtNtB1R_8adapters3map3MapINtNtNtB1T_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0s7_0EEB5s_(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.s, ptr noundef nonnull %i.fu, ptr noundef nonnull %i.fx), !noalias !16068
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !16066
  store i64 1, ptr %i.e, align 8, !noalias !16066
  %i.fy = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.fy, align 8, !noalias !16066
  %i.fz = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.fz, ptr noundef nonnull align 8 dereferenceable(96) %i.s, i64 96, i1 false), !noalias !16066
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !16118
  %i.ga = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 24, 137) 112, i64 noundef 8) #42, !noalias !16118 ; 3 uses
  %i.gb = icmp eq ptr %i.ga, null
  br i1 %i.gb, label %bb.as, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types10Date32TypeEEE3newCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, !prof !1174

bb.as:                                            ; preds = %bb.ar
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #47
          to label %.noexc62.i.i.i unwind label %bb.at, !noalias !16068

.noexc62.i.i.i:                                   ; preds = %bb.as
  unreachable

bb.at:                                            ; preds = %bb.as
  %i.gc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBN_5types10Date32TypeEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.fz)
          to label %common.resume.i.i unwind label %bb.au, !noalias !16068

bb.au:                                            ; preds = %bb.at
  %i.gd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !16068
  unreachable

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types10Date32TypeEEE3newCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ga, ptr noundef nonnull align 8 dereferenceable(112) %i.e, i64 112, i1 false), !noalias !16068
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !16066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !16066
  br label %_RNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0Bb_.exit.thread.i.i

bb.av:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !16066
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !16066
  %i.ge = getelementptr inbounds i8, ptr %i.bj, i64 -16
  %i.gf = load ptr, ptr %i.ge, align 8, !noalias !16068, !nonnull !4, !noundef !4 ; 2 uses
  %i.gg = getelementptr inbounds i8, ptr %i.bj, i64 -8
  %i.gh = load i64, ptr %i.gg, align 8, !noalias !16068, !noundef !4
  %i.gi = getelementptr inbounds nuw [96 x i8], ptr %i.gf, i64 %i.gh
  call void @_RINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB6_14PrimitiveArrayNtNtBa_5types24TimestampMicrosecondTypeEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorINtNtB27_6option6OptionxEE9from_iterINtNtNtB25_8adapters3map3MapINtNtNtB27_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0s8_0EEB5G_(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.q, ptr noundef nonnull %i.gf, ptr noundef nonnull %i.gi), !noalias !16068
  call void @_RINvMsb_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB6_14PrimitiveArrayNtNtBa_5types24TimestampMicrosecondTypeE13with_timezoneReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.r, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(96) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) @295, i64 noundef 3), !noalias !16068
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !16066
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !16066
  store i64 1, ptr %i.d, align 8, !noalias !16066
  %i.gj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.gj, align 8, !noalias !16066
  %i.gk = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.gk, ptr noundef nonnull align 8 dereferenceable(96) %i.r, i64 96, i1 false), !noalias !16066
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !16121
  %i.gl = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 24, 137) 112, i64 noundef 8) #42, !noalias !16121 ; 3 uses
  %i.gm = icmp eq ptr %i.gl, null
  br i1 %i.gm, label %bb.aw, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types24TimestampMicrosecondTypeEEE3newCs14kWLkQVSKO_14deltalake_core.exit37.i.i.i, !prof !1174

bb.aw:                                            ; preds = %bb.av
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #47
          to label %.noexc65.i.i.i unwind label %bb.ax, !noalias !16068

.noexc65.i.i.i:                                   ; preds = %bb.aw
  unreachable

bb.ax:                                            ; preds = %bb.aw
  %i.gn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBN_5types24TimestampMicrosecondTypeEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.gk)
          to label %common.resume.i.i unwind label %bb.ay, !noalias !16068

bb.ay:                                            ; preds = %bb.ax
  %i.go = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !16068
  unreachable

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types24TimestampMicrosecondTypeEEE3newCs14kWLkQVSKO_14deltalake_core.exit37.i.i.i: ; preds = %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.gl, ptr noundef nonnull align 8 dereferenceable(112) %i.d, i64 112, i1 false), !noalias !16068
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !16066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !16066
  br label %_RNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0Bb_.exit.thread.i.i

bb.az:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !16066
  %i.gp = getelementptr inbounds i8, ptr %i.bj, i64 -16
  %i.gq = load ptr, ptr %i.gp, align 8, !noalias !16068, !nonnull !4, !noundef !4 ; 2 uses
  %i.gr = getelementptr inbounds i8, ptr %i.bj, i64 -8
  %i.gs = load i64, ptr %i.gr, align 8, !noalias !16068, !noundef !4
  %i.gt = getelementptr inbounds nuw [96 x i8], ptr %i.gq, i64 %i.gs
  call void @_RINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB6_14PrimitiveArrayNtNtBa_5types24TimestampMicrosecondTypeEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorINtNtB27_6option6OptionxEE9from_iterINtNtNtB25_8adapters3map3MapINtNtNtB27_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0s9_0EEB5G_(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.p, ptr noundef nonnull %i.gq, ptr noundef nonnull %i.gt), !noalias !16068
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16066
  store i64 1, ptr %i.c, align 8, !noalias !16066
  %i.gu = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.gu, align 8, !noalias !16066
  %i.gv = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.gv, ptr noundef nonnull align 8 dereferenceable(96) %i.p, i64 96, i1 false), !noalias !16066
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !16124
  %i.gw = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 24, 137) 112, i64 noundef 8) #42, !noalias !16124 ; 3 uses
  %i.gx = icmp eq ptr %i.gw, null
  br i1 %i.gx, label %bb.ba, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types24TimestampMicrosecondTypeEEE3newCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, !prof !1174

bb.ba:                                            ; preds = %bb.az
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #47
          to label %.noexc68.i.i.i unwind label %bb.bb, !noalias !16068

.noexc68.i.i.i:                                   ; preds = %bb.ba
  unreachable

bb.bb:                                            ; preds = %bb.ba
  %i.gy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBN_5types24TimestampMicrosecondTypeEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.gv)
          to label %common.resume.i.i unwind label %bb.bc, !noalias !16068

bb.bc:                                            ; preds = %bb.bb
  %i.gz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !16068
  unreachable

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types24TimestampMicrosecondTypeEEE3newCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.gw, ptr noundef nonnull align 8 dereferenceable(112) %i.c, i64 112, i1 false), !noalias !16068
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !16066
  br label %_RNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0Bb_.exit.thread.i.i

bb.bd:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !16066
  %i.ha = getelementptr inbounds i8, ptr %i.bj, i64 -16
  %i.hb = load ptr, ptr %i.ha, align 8, !noalias !16068, !nonnull !4, !noundef !4 ; 2 uses
  %i.hc = getelementptr inbounds i8, ptr %i.bj, i64 -8
  %i.hd = load i64, ptr %i.hc, align 8, !noalias !16068, !noundef !4
  %i.he = getelementptr inbounds nuw [96 x i8], ptr %i.hb, i64 %i.hd
  call void @_RINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB6_14PrimitiveArrayNtNtBa_5types14Decimal128TypeEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorINtNtB1X_6option6OptionnEE9from_iterINtNtNtB1V_8adapters3map3MapINtNtNtB1X_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0sa_0EEB5w_(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.o, ptr noundef nonnull %i.hb, ptr noundef nonnull %i.he), !noalias !16068
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ad, i64 50
  %i.hg = load i8, ptr %i.hf, align 2, !alias.scope !16090, !noalias !16068, !noundef !4
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ad, i64 51
  %i.hi = load i8, ptr %i.hh, align 1, !alias.scope !16090, !noalias !16068, !noundef !4
  call void @_RNvMsd_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types14Decimal128TypeE24with_precision_and_scaleCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.o, i8 noundef %i.hg, i8 noundef %i.hi), !noalias !16068
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !16066
  %i.hj = load i8, ptr %i.b, align 8, !range !11345, !noalias !16066, !noundef !4 ; 2 uses
  %i.hk = icmp eq i8 %i.hj, 41
  br i1 %i.hk, label %_RNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0Bb_.exit.thread10.i.i, label %bb.be

_RNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0Bb_.exit.thread.i.i: ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types14Decimal128TypeEEE3newCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types24TimestampMicrosecondTypeEEE3newCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types24TimestampMicrosecondTypeEEE3newCs14kWLkQVSKO_14deltalake_core.exit37.i.i.i, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types10Date32TypeEEE3newCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB17_5types17GenericBinaryTypelEEEE3newCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs1N9T06jgEdt_11arrow_array5array13boolean_array12BooleanArrayEE3newCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types11Float64TypeEEE3newCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types11Float32TypeEEE3newCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types8Int8TypeEEE3newCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types9Int16TypeEEE3newCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types9Int32TypeEEE3newCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types9Int64TypeEEE3newCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB17_5types17GenericStringTypelEEEE3newCs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %.sroa.14.0.i.i.i = phi ptr [ @285, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB17_5types17GenericStringTypelEEEE3newCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ @286, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types9Int64TypeEEE3newCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ @287, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types9Int32TypeEEE3newCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ @288, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types9Int16TypeEEE3newCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ @289, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types8Int8TypeEEE3newCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ @290, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types11Float32TypeEEE3newCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ @291, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types11Float64TypeEEE3newCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ @292, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs1N9T06jgEdt_11arrow_array5array13boolean_array12BooleanArrayEE3newCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ @293, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB17_5types17GenericBinaryTypelEEEE3newCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ @294, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types10Date32TypeEEE3newCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ @296, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types24TimestampMicrosecondTypeEEE3newCs14kWLkQVSKO_14deltalake_core.exit37.i.i.i ], [ @296, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types24TimestampMicrosecondTypeEEE3newCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ @297, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types14Decimal128TypeEEE3newCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.sroa.02.0.i.i.i = phi ptr [ %i.cf, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB17_5types17GenericStringTypelEEEE3newCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.cq, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types9Int64TypeEEE3newCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.db, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types9Int32TypeEEE3newCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.dm, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types9Int16TypeEEE3newCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.dx, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types8Int8TypeEEE3newCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.ei, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types11Float32TypeEEE3newCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.et, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types11Float64TypeEEE3newCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.fe, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs1N9T06jgEdt_11arrow_array5array13boolean_array12BooleanArrayEE3newCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.fp, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB17_5types17GenericBinaryTypelEEEE3newCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.ga, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types10Date32TypeEEE3newCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.gl, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types24TimestampMicrosecondTypeEEE3newCs14kWLkQVSKO_14deltalake_core.exit37.i.i.i ], [ %i.gw, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types24TimestampMicrosecondTypeEEE3newCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.ho, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types14Decimal128TypeEEE3newCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16062
  br label %bb.bk

_RNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0Bb_.exit.thread10.i.i: ; preds = %bb.bd
  %i.hl = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.hl, i64 32, i1 false), !noalias !16127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16062
  %.sroa.4.0.copyload13.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !16062
  %.sroa.5.0..sroa_idx14.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.5.0.copyload15.i.i = load ptr, ptr %.sroa.5.0..sroa_idx14.i.i, align 16, !noalias !16062
  %.sroa.7.0..sroa_idx16.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7.0..sroa_idx16.i.i, i64 72, i1 false), !noalias !16062
  br label %bb.bi

bb.be:                                            ; preds = %bb.bd
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.634.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16066
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.634.0..sroa_idx.i.i.i, i64 56, i1 false), !noalias !16066
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.2.0..sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5.0..sroa_idx.i.i.i, i64 39, i1 false), !noalias !16066
  store i64 1, ptr %i.a, align 8, !noalias !16066
  %i.hm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.hm, align 8, !noalias !16066
  %i.hn = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i8 %i.hj, ptr %i.hn, align 8, !noalias !16066
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !16128
  %i.ho = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 24, 137) 112, i64 noundef 8) #42, !noalias !16128 ; 3 uses
  %i.hp = icmp eq ptr %i.ho, null
  br i1 %i.hp, label %bb.bf, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types14Decimal128TypeEEE3newCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, !prof !1174

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #47
          to label %.noexc.i unwind label %bb.bg, !noalias !16131

.noexc.i:                                         ; preds = %bb.bf
  unreachable

bb.bg:                                            ; preds = %bb.bf
  %i.hq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBN_5types14Decimal128TypeEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.hn)
          to label %common.resume.i.i unwind label %bb.bh, !noalias !16068

bb.bh:                                            ; preds = %bb.bg
  %i.hr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !16068
  unreachable

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB17_5types14Decimal128TypeEEE3newCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ho, ptr noundef nonnull align 8 dereferenceable(112) %i.a, i64 112, i1 false), !noalias !16068
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16066
  br label %_RNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0Bb_.exit.thread.i.i

_RNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0Bb_.exit.i.i: ; preds = %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBS_3vec3VecNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  call void @_RINvMs0_NtCs14kWLkQVSKO_14deltalake_core6errorsNtB6_15DeltaTableError7genericReEB8_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.ac, ptr noalias noundef nonnull readonly captures(address, read_provenance) @298, i64 noundef 45), !noalias !16132
  %.sroa.0.0.copyload.pr.i.i = load i64, ptr %i.ac, align 16, !noalias !16062 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16062
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !16062 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 16, !noalias !16062 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7.0..sroa_idx.i.i, i64 72, i1 false), !noalias !16062
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16133)
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.pr.i.i, -9223372036854775711
  br i1 %.not.i.i.i.i, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %_RNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0Bb_.exit.i.i, %_RNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0Bb_.exit.thread10.i.i
  %.sroa.5.0.copyload20.i.i = phi ptr [ %.sroa.5.0.copyload15.i.i, %_RNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0Bb_.exit.thread10.i.i ], [ %.sroa.5.0.copyload.i.i, %_RNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0Bb_.exit.i.i ] ; 2 uses
  %.sroa.4.0.copyload19.i.i = phi ptr [ %.sroa.4.0.copyload13.i.i, %_RNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0Bb_.exit.thread10.i.i ], [ %.sroa.4.0.copyload.i.i, %_RNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0Bb_.exit.i.i ] ; 2 uses
  %.sroa.0.0.copyload18.i.i = phi i64 [ -9223372036854775741, %_RNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0Bb_.exit.thread10.i.i ], [ %.sroa.0.0.copyload.pr.i.i, %_RNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0Bb_.exit.i.i ] ; 2 uses
  %i.hs = load i64, ptr %3, align 16, !range !5021, !alias.scope !16136, !noalias !16139, !noundef !4
  %i.ht = icmp eq i64 %i.hs, -9223372036854775711
  br i1 %i.ht, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB1T_.exit.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBK_(ptr noalias noundef nonnull align 16 dereferenceable(96) %3)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB1T_.exit.i.i.i unwind label %bb.bl, !noalias !16141

bb.bk:                                            ; preds = %_RNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0Bb_.exit.i.i, %_RNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0Bb_.exit.thread.i.i
  %.sroa.5.0.copyload9.i.i = phi ptr [ %.sroa.14.0.i.i.i, %_RNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0Bb_.exit.thread.i.i ], [ %.sroa.5.0.copyload.i.i, %_RNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0Bb_.exit.i.i ] ; 2 uses
  %.sroa.4.0.copyload8.i.i = phi ptr [ %.sroa.02.0.i.i.i, %_RNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0Bb_.exit.thread.i.i ], [ %.sroa.4.0.copyload.i.i, %_RNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss1_0Bb_.exit.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload9.i.i) ]
  %i.hu = ptrtoint ptr %.sroa.4.0.copyload8.i.i to i64
  store i64 %i.hu, ptr %.sroa.4.i, align 8, !alias.scope !16142, !noalias !16143
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.hv = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload18.i.i, ptr %3, align 16, !noalias !16139
  %.sroa.5.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.4.0.copyload19.i.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i, align 8, !noalias !16139
  %.sroa.612.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %.sroa.5.0.copyload20.i.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i.i, align 16, !noalias !16139
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7.i.i, i64 72, i1 false), !noalias !16144
  br label %common.resume.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB1T_.exit.i.i.i: ; preds = %bb.bj, %bb.bi
  store i64 %.sroa.0.0.copyload18.i.i, ptr %3, align 16, !noalias !16139
  %.sroa.5.0..8.val.sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.4.0.copyload19.i.i, ptr %.sroa.5.0..8.val.sroa_idx10.i.i.i, align 8, !noalias !16139
  %.sroa.612.0..8.val.sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %.sroa.5.0.copyload20.i.i, ptr %.sroa.612.0..8.val.sroa_idx13.i.i.i, align 16, !noalias !16139
  %.sroa.7.0..8.val.sroa_idx15.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7.0..8.val.sroa_idx15.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7.i.i, i64 72, i1 false), !noalias !16144
  br label %bb.bm

bb.bm:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB1T_.exit.i.i.i, %bb.bk
  %.sink23.i.i.sroa.phi.i = phi ptr [ %.sroa.73.i, %bb.bk ], [ %.sroa.4.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB1T_.exit.i.i.i ]
  %.sink.i.i.i = phi ptr [ %.sroa.5.0.copyload9.i.i, %bb.bk ], [ null, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB1T_.exit.i.i.i ]
  store ptr %.sink.i.i.i, ptr %.sink23.i.i.sroa.phi.i, align 8, !alias.scope !16142, !noalias !16143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !16062
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i = load i64, ptr %.sroa.4.i, align 8, !alias.scope !16145, !noalias !16148, !noundef !4
  %i.hw = inttoptr i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i to ptr
  %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i = load i64, ptr %.sroa.73.i, align 8, !alias.scope !16145, !noalias !16148
  %i.hx = inttoptr i64 %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.73.i)
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.hw, ptr %i.hy, align 8, !alias.scope !16150, !noalias !16052
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.hx, ptr %i.hz, align 8, !alias.scope !16150, !noalias !16052
  br label %_RINvYINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2m_8adapters3map12map_try_foldRB1p_INtNtB2o_6result6ResultINtNtBR_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEuINtNtNtB2o_3ops12control_flow11ControlFlowIB6t_B4r_EENCNvNtNtNtNtB5y_6kernel8snapshot9iterators8scan_row16parse_partitionss1_0NCINvXB3s_INtB3s_12GenericShuntINtB3q_3MapB3_B7j_EIB45_NtNtB2o_7convert10InfallibleB5u_EEB2g_8try_folduNCINvNvB2g_12try_for_each4callB4r_B78_NcNtB78_5Break0E0B78_E0E0B6s_EB5y_.exit

_RINvYINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2m_8adapters3map12map_try_foldRB1p_INtNtB2o_6result6ResultINtNtBR_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEuINtNtNtB2o_3ops12control_flow11ControlFlowIB6t_B4r_EENCNvNtNtNtNtB5y_6kernel8snapshot9iterators8scan_row16parse_partitionss1_0NCINvXB3s_INtB3s_12GenericShuntINtB3q_3MapB3_B7j_EIB45_NtNtB2o_7convert10InfallibleB5u_EEB2g_8try_folduNCINvNvB2g_12try_for_each4callB4r_B78_NcNtB78_5Break0E0B78_E0E0B6s_EB5y_.exit: ; preds = %bb.a, %bb.bm
  %storemerge.i = phi i64 [ 1, %bb.bm ], [ 0, %bb.a ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !16049, !noalias !16052
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss2_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEB4M_8try_folduNCINvNvB4M_12try_for_each4callNtNtB6R_5field5FieldINtNtNtBc_3ops12control_flow11ControlFlowB8l_ENcNtB8F_5Break0E0B8F_E0IB8G_B8F_EEB3m_(ptr dead_on_unwind noalias noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef align 8 captures(none) dereferenceable(16) %1, ptr noalias noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.i.i = alloca [104 x i8], align 8     ; 5 uses
  %i.a = alloca [112 x i8], align 8               ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16156)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !16158, !noalias !16153, !nonnull !4, !noundef !4 ; 2 uses
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !16158, !noalias !16153 ; 2 uses
  %i.d = icmp eq ptr %.promoted.i, %i.c
  br i1 %i.d, label %_RINvYINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2m_8adapters3map12map_try_foldRB1p_INtNtB2o_6result6ResultNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldNtNtB4v_5error10ArrowErrorEuINtNtNtB2o_3ops12control_flow11ControlFlowIB5C_B4r_EENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss2_0NCINvXB3s_INtB3s_12GenericShuntINtB3q_3MapB3_B6s_EIB45_NtNtB2o_7convert10InfallibleB59_EEB2g_8try_folduNCINvNvB2g_12try_for_each4callB4r_B6h_NcNtB6h_5Break0E0B6h_E0E0B5B_EB6E_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.4.40..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %i.g = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.h, %bb.f ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 128 ; 3 uses
  store ptr %i.h, ptr %1, align 8, !alias.scope !16158, !noalias !16153
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16161
  call void @_RNvXs1_NtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_conversionNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldINtB5_13TryFromKernelRNtNtB9_6schema11StructFieldE15try_from_kernel(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.i), !noalias !16162
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !noalias !16165 ; 3 uses
  %i.j = icmp eq i64 %.sroa.0.0.copyload.i.i, -9223372036854775808
  br i1 %i.j, label %bb.c, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldINtNtBa_6result6ResultNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldNtNtB2g_5error10ArrowErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3n_B2c_EENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss2_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtCs6Po7BT7Nknu_5alloc6string6StringB10_EB4c_EIB1R_NtNtBa_7convert10InfallibleB2U_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8y_12try_for_each4callB2c_B41_NcNtB41_5Break0E0B41_E0E0B4o_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %3, align 8, !range !3181, !alias.scope !16167, !noalias !16170, !noundef !4
  %i.l = icmp eq i64 %i.k, -9223372036854775788
  br i1 %i.l, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldINtNtBa_6result6ResultNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldNtNtB2g_5error10ArrowErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3n_B2c_EENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss2_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtCs6Po7BT7Nknu_5alloc6string6StringB10_EB4c_EIB1R_NtNtBa_7convert10InfallibleB2U_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8y_12try_for_each4callB2c_B41_NcNtB41_5Break0E0B41_E0E0B4o_.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %3)
          to label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldINtNtBa_6result6ResultNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldNtNtB2g_5error10ArrowErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3n_B2c_EENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss2_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtCs6Po7BT7Nknu_5alloc6string6StringB10_EB4c_EIB1R_NtNtBa_7convert10InfallibleB2U_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8y_12try_for_each4callB2c_B41_NcNtB41_5Break0E0B41_E0E0B4o_.exit.thread.i unwind label %bb.e, !noalias !16174

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !16165
  resume { ptr, i32 } %i.m

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldINtNtBa_6result6ResultNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldNtNtB2g_5error10ArrowErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3n_B2c_EENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss2_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtCs6Po7BT7Nknu_5alloc6string6StringB10_EB4c_EIB1R_NtNtBa_7convert10InfallibleB2U_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8y_12try_for_each4callB2c_B41_NcNtB41_5Break0E0B41_E0E0B4o_.exit.thread.i: ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !16165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16161
  br label %.loopexit.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldINtNtBa_6result6ResultNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldNtNtB2g_5error10ArrowErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3n_B2c_EENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss2_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtCs6Po7BT7Nknu_5alloc6string6StringB10_EB4c_EIB1R_NtNtBa_7convert10InfallibleB2U_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8y_12try_for_each4callB2c_B41_NcNtB41_5Break0E0B41_E0E0B4o_.exit.i: ; preds = %bb.b
end_hunk_2
begin_hunk_3_@_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
    i64 26, label %bb.bv
    i64 27, label %bb.ca
    i64 28, label %bb.cd
    i64 29, label %bb.cg
    i64 30, label %bb.cs
    i64 31, label %bb.da
    i64 32, label %tailrecurse.backedge.sink.split
  ]

bb.d:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  unreachable

bb.e:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  %i.ah = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @_RINvXs8_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_5AliasNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.ah, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  br label %common.ret513

bb.f:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  %i.ai = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call fastcc void @_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB6_6ColumnNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ai, ptr noalias noundef align 16 dereferenceable(48) %1) #46
  br label %common.ret513

bb.g:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  %i.aj = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.ak = load ptr, ptr %i.aj, align 16, !nonnull !4, !noundef !4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  tail call void @_RINvXs3_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB6_5FieldNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.al, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %i.am = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.an = load ptr, ptr %i.am, align 16, !nonnull !4, !noundef !4
  %i.ao = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16570)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16573)
  %i.aq = load i8, ptr %i.a, align 16, !alias.scope !16576, !noundef !4 ; 3 uses
  %i.ar = icmp ugt i8 %i.aq, 64
  br i1 %i.ar, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = zext i64 %i.ap to i128
  %i.at = zext nneg i8 %i.aq to i128
  %i.au = shl nuw i128 %i.as, %i.at
  %i.av = load i128, ptr %1, align 16, !alias.scope !16576, !noundef !4
  %i.aw = or i128 %i.av, %i.au
  %i.ax = add nuw i8 %i.aq, 64
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit

bb.i:                                             ; preds = %bb.g
  %i.ay = load i128, ptr %1, align 16, !alias.scope !16576, !noundef !4 ; 2 uses
  %i.az = trunc i128 %i.ay to i64
  %i.ba = lshr i128 %i.ay, 64
  %i.bb = trunc nuw i128 %i.ba to i64
  %i.bc = load i64, ptr %i.b, align 8, !alias.scope !16576, !noundef !4
  %i.bd = xor i64 %i.bc, %i.az
  %i.be = load ptr, ptr %i.c, align 16, !alias.scope !16576, !nonnull !4, !align !8, !noundef !4
  %i.bf = load i64, ptr %i.be, align 8, !noalias !16576, !noundef !4
  %i.bg = xor i64 %i.bf, %i.bb
  %i.bh = zext i64 %i.bd to i128
  %i.bi = zext i64 %i.bg to i128
  %i.bj = mul nuw i128 %i.bi, %i.bh               ; 2 uses
  %i.bk = lshr i128 %i.bj, 64
  %i.bl = xor i128 %i.bk, %i.bj
  %i.bm = trunc i128 %i.bl to i64
  store i64 %i.bm, ptr %i.b, align 8, !alias.scope !16576
  %i.bn = zext i64 %i.ap to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.h, %bb.i
  %.sink.i = phi i128 [ %i.bn, %bb.i ], [ %i.aw, %bb.h ]
  %storemerge.i.i.i = phi i8 [ 64, %bb.i ], [ %i.ax, %bb.h ]
  store i128 %.sink.i, ptr %1, align 16, !alias.scope !16576
  store i8 %storemerge.i.i.i, ptr %i.a, align 16, !alias.scope !16576
  tail call void @_RINvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.an, i64 noundef %i.ap, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  br label %common.ret513

bb.j:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  %i.bo = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  tail call void @_RINvXs2_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB6_11ScalarValueNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.bo, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %i.bp = getelementptr inbounds nuw i8, ptr %.tr, i64 80
  %i.bq = load ptr, ptr %i.bp, align 16, !noundef !4 ; 2 uses
  %i.br = icmp ne ptr %i.bq, null                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16577)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16580)
  %i.bs = load i8, ptr %i.a, align 16, !alias.scope !16583, !noundef !4 ; 3 uses
  %i.bt = icmp ugt i8 %i.bs, 64
  br i1 %i.bt, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bu = zext i1 %i.br to i128
  %i.bv = zext nneg i8 %i.bs to i128
  %i.bw = shl nuw nsw i128 %i.bu, %i.bv
  %i.bx = load i128, ptr %1, align 16, !alias.scope !16583, !noundef !4
  %i.by = or i128 %i.bx, %i.bw
  %i.bz = add nuw i8 %i.bs, 64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2

bb.l:                                             ; preds = %bb.j
  %i.ca = load i128, ptr %1, align 16, !alias.scope !16583, !noundef !4 ; 2 uses
  %i.cb = trunc i128 %i.ca to i64
  %i.cc = lshr i128 %i.ca, 64
  %i.cd = trunc nuw i128 %i.cc to i64
  %i.ce = load i64, ptr %i.b, align 8, !alias.scope !16583, !noundef !4
  %i.cf = xor i64 %i.ce, %i.cb
  %i.cg = load ptr, ptr %i.c, align 16, !alias.scope !16583, !nonnull !4, !align !8, !noundef !4
  %i.ch = load i64, ptr %i.cg, align 8, !noalias !16583, !noundef !4
  %i.ci = xor i64 %i.ch, %i.cd
  %i.cj = zext i64 %i.cf to i128
  %i.ck = zext i64 %i.ci to i128
  %i.cl = mul nuw i128 %i.ck, %i.cj               ; 2 uses
  %i.cm = lshr i128 %i.cl, 64
  %i.cn = xor i128 %i.cm, %i.cl
  %i.co = trunc i128 %i.cn to i64
  store i64 %i.co, ptr %i.b, align 8, !alias.scope !16583
  %i.cp = zext i1 %i.br to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2: ; preds = %bb.k, %bb.l
  %.sink208 = phi i128 [ %i.cp, %bb.l ], [ %i.by, %bb.k ]
  %storemerge.i.i1 = phi i8 [ 64, %bb.l ], [ %i.bz, %bb.k ]
  store i128 %.sink208, ptr %1, align 16, !alias.scope !16583
  store i8 %storemerge.i.i1, ptr %i.a, align 16, !alias.scope !16583
  br i1 %i.br, label %bb.db, label %common.ret513

bb.m:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  %i.cq = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16584)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16587)
  %i.cr = load ptr, ptr %i.cq, align 8, !alias.scope !16584, !noalias !16587, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.cr, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #46, !noalias !16584, !inline_history !16589
  %i.cs = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ct = load i8, ptr %i.cs, align 8, !range !11345, !alias.scope !16584, !noalias !16587, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16590)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16593)
  %i.cu = load i8, ptr %i.a, align 16, !alias.scope !16596, !noalias !16584, !noundef !4 ; 3 uses
  %i.cv = icmp ugt i8 %i.cu, 64
  br i1 %i.cv, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cw = zext nneg i8 %i.ct to i128
  %i.cx = zext nneg i8 %i.cu to i128
  %i.cy = shl nuw nsw i128 %i.cw, %i.cx
  %i.cz = load i128, ptr %1, align 16, !alias.scope !16596, !noalias !16584, !noundef !4
  %i.da = or i128 %i.cz, %i.cy
  %i.db = add nuw i8 %i.cu, 64
  br label %_RINvXs1j_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_10BinaryExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.o:                                             ; preds = %bb.m
  %i.dc = load i128, ptr %1, align 16, !alias.scope !16596, !noalias !16584, !noundef !4 ; 2 uses
  %i.dd = trunc i128 %i.dc to i64
  %i.de = lshr i128 %i.dc, 64
  %i.df = trunc nuw i128 %i.de to i64
  %i.dg = load i64, ptr %i.b, align 8, !alias.scope !16596, !noalias !16584, !noundef !4
  %i.dh = xor i64 %i.dg, %i.dd
  %i.di = load ptr, ptr %i.c, align 16, !alias.scope !16596, !noalias !16584, !nonnull !4, !align !8, !noundef !4
  %i.dj = load i64, ptr %i.di, align 8, !noalias !16597, !noundef !4
  %i.dk = xor i64 %i.dj, %i.df
  %i.dl = zext i64 %i.dh to i128
  %i.dm = zext i64 %i.dk to i128
  %i.dn = mul nuw i128 %i.dm, %i.dl               ; 2 uses
  %i.do = lshr i128 %i.dn, 64
  %i.dp = xor i128 %i.do, %i.dn
  %i.dq = trunc i128 %i.dp to i64
  store i64 %i.dq, ptr %i.b, align 8, !alias.scope !16596, !noalias !16584
  %i.dr = zext nneg i8 %i.ct to i128
  br label %_RINvXs1j_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_10BinaryExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs1j_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_10BinaryExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.n, %bb.o
  %.sink209 = phi i128 [ %i.dr, %bb.o ], [ %i.da, %bb.n ]
  %storemerge.i.i.i5 = phi i8 [ 64, %bb.o ], [ %i.db, %bb.n ]
  store i128 %.sink209, ptr %1, align 16, !alias.scope !16596, !noalias !16584
  store i8 %storemerge.i.i.i5, ptr %i.a, align 16, !alias.scope !16596, !noalias !16584
  br label %tailrecurse.backedge.sink.split

tailrecurse.backedge.sink.split:                  ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4, %_RINvXs1E_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_7BetweenNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, %_RINvXs1j_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_10BinaryExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %.sink332 = phi i64 [ 16, %_RINvXs1j_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_10BinaryExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ], [ 8, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4 ], [ 8, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4 ], [ 8, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4 ], [ 8, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4 ], [ 8, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4 ], [ 8, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4 ], [ 8, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4 ], [ 8, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4 ], [ 8, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4 ], [ 8, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4 ], [ 24, %_RINvXs1E_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_7BetweenNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ], [ 8, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4 ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.tr, i64 %.sink332
  %i.dt = load ptr, ptr %i.ds, align 8, !nonnull !4, !noundef !4
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %tailrecurse.backedge.sink.split, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i
  %.tr.be = phi ptr [ %i.gy, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i ], [ %i.dt, %tailrecurse.backedge.sink.split ]
  br label %tailrecurse

bb.p:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  %i.du = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call fastcc void @_RINvXs1x_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4LikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.du, ptr noalias noundef align 16 dereferenceable(48) %1) #46
  br label %common.ret513

bb.q:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  %i.dv = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call fastcc void @_RINvXs1x_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4LikeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dv, ptr noalias noundef align 16 dereferenceable(48) %1) #46
  br label %common.ret513

bb.r:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  %i.dw = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16601)
  %i.dx = load ptr, ptr %i.dw, align 8, !alias.scope !16598, !noalias !16601, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.dx, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #46, !noalias !16598, !inline_history !16603
  %i.dy = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.dz = load i8, ptr %i.dy, align 16, !range !3, !alias.scope !16598, !noalias !16601, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16604)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16607)
  %i.ea = load i8, ptr %i.a, align 16, !alias.scope !16610, !noalias !16598, !noundef !4 ; 3 uses
  %i.eb = icmp ugt i8 %i.ea, 120
  br i1 %i.eb, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ec = zext nneg i8 %i.dz to i128
  %i.ed = zext nneg i8 %i.ea to i128
  %i.ee = shl nuw nsw i128 %i.ec, %i.ed
  %i.ef = load i128, ptr %1, align 16, !alias.scope !16610, !noalias !16598, !noundef !4
  %i.eg = or i128 %i.ef, %i.ee
  %i.eh = add nuw i8 %i.ea, 8
  br label %_RINvXs1E_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_7BetweenNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.t:                                             ; preds = %bb.r
  %i.ei = load i128, ptr %1, align 16, !alias.scope !16610, !noalias !16598, !noundef !4 ; 2 uses
  %i.ej = trunc i128 %i.ei to i64
  %i.ek = lshr i128 %i.ei, 64
  %i.el = trunc nuw i128 %i.ek to i64
  %i.em = load i64, ptr %i.b, align 8, !alias.scope !16610, !noalias !16598, !noundef !4
  %i.en = xor i64 %i.em, %i.ej
  %i.eo = load ptr, ptr %i.c, align 16, !alias.scope !16610, !noalias !16598, !nonnull !4, !align !8, !noundef !4
  %i.ep = load i64, ptr %i.eo, align 8, !noalias !16611, !noundef !4
  %i.eq = xor i64 %i.ep, %i.el
  %i.er = zext i64 %i.en to i128
  %i.es = zext i64 %i.eq to i128
  %i.et = mul nuw i128 %i.es, %i.er               ; 2 uses
  %i.eu = lshr i128 %i.et, 64
  %i.ev = xor i128 %i.eu, %i.et
  %i.ew = trunc i128 %i.ev to i64
  store i64 %i.ew, ptr %i.b, align 8, !alias.scope !16610, !noalias !16598
  %i.ex = zext nneg i8 %i.dz to i128
  br label %_RINvXs1E_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_7BetweenNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs1E_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_7BetweenNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.s, %bb.t
  %.sink210 = phi i128 [ %i.ex, %bb.t ], [ %i.eg, %bb.s ]
  %storemerge.i.i.i6 = phi i8 [ 8, %bb.t ], [ %i.eh, %bb.s ]
  store i128 %.sink210, ptr %1, align 16, !alias.scope !16610, !noalias !16598
  store i8 %storemerge.i.i.i6, ptr %i.a, align 16, !alias.scope !16610, !noalias !16598
  %i.ey = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.ez = load ptr, ptr %i.ey, align 16, !alias.scope !16598, !noalias !16601, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ez, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #46, !noalias !16598, !inline_history !16603
  br label %tailrecurse.backedge.sink.split

bb.u:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16612)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16615)
  %i.fa = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.fb = load ptr, ptr %i.fa, align 16, !alias.scope !16612, !noalias !16615, !align !69, !noundef !4 ; 2 uses
  %i.fc = icmp ne ptr %i.fb, null                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16617)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16620)
  %i.fd = icmp ugt i8 %storemerge.i.i3, 64
  br i1 %i.fd, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fe = select i1 %i.fc, i128 18446744073709551616, i128 0
  %i.ff = or i128 %i.ag, %i.fe
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i

bb.w:                                             ; preds = %bb.u
  %i.fg = trunc i128 %i.ag to i64
  %i.fh = lshr i128 %i.ag, 64
  %i.fi = trunc nuw i128 %i.fh to i64
  %i.fj = load i64, ptr %i.b, align 8, !alias.scope !16623, !noalias !16612, !noundef !4
  %i.fk = xor i64 %i.fj, %i.fg
  %i.fl = load ptr, ptr %i.c, align 16, !alias.scope !16623, !noalias !16612, !nonnull !4, !align !8, !noundef !4
  %i.fm = load i64, ptr %i.fl, align 8, !noalias !16624, !noundef !4
  %i.fn = xor i64 %i.fm, %i.fi
  %i.fo = zext i64 %i.fk to i128
  %i.fp = zext i64 %i.fn to i128
  %i.fq = mul nuw i128 %i.fp, %i.fo               ; 2 uses
  %i.fr = lshr i128 %i.fq, 64
  %i.fs = xor i128 %i.fr, %i.fq
  %i.ft = trunc i128 %i.fs to i64
  store i64 %i.ft, ptr %i.b, align 8, !alias.scope !16623, !noalias !16612
  %i.fu = zext i1 %i.fc to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i: ; preds = %bb.w, %bb.v
  %storemerge104 = phi i128 [ %i.ff, %bb.v ], [ %i.fu, %bb.w ]
  %storemerge.i.i1.i = phi i8 [ -128, %bb.v ], [ 64, %bb.w ] ; 2 uses
  store i128 %storemerge104, ptr %1, align 16, !alias.scope !16623, !noalias !16612
  store i8 %storemerge.i.i1.i, ptr %i.a, align 16, !alias.scope !16623, !noalias !16612
  br i1 %i.fc, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.fb, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #46, !noalias !16612, !inline_history !16625
  %.pre220 = load i8, ptr %i.a, align 16, !alias.scope !16626, !noalias !16612
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i
  %i.fv = phi i8 [ %.pre220, %bb.x ], [ %storemerge.i.i1.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i ] ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.fx = load ptr, ptr %i.fw, align 16, !alias.scope !16612, !noalias !16615, !nonnull !4, !noundef !4
  %i.fy = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.fz = load i64, ptr %i.fy, align 8, !alias.scope !16612, !noalias !16615, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16633)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16634), !noalias !16612
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16635), !noalias !16612
  %i.ga = icmp ugt i8 %i.fv, 64
  br i1 %i.ga, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gb = zext i64 %i.fz to i128
  %i.gc = zext nneg i8 %i.fv to i128
  %i.gd = shl nuw i128 %i.gb, %i.gc
  %i.ge = load i128, ptr %1, align 16, !alias.scope !16626, !noalias !16612, !noundef !4
  %i.gf = or i128 %i.ge, %i.gd
  %i.gg = add nuw i8 %i.fv, 64
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit37

bb.aa:                                            ; preds = %bb.y
  %i.gh = load i128, ptr %1, align 16, !alias.scope !16626, !noalias !16612, !noundef !4 ; 2 uses
  %i.gi = trunc i128 %i.gh to i64
  %i.gj = lshr i128 %i.gh, 64
  %i.gk = trunc nuw i128 %i.gj to i64
  %i.gl = load i64, ptr %i.b, align 8, !alias.scope !16626, !noalias !16612, !noundef !4
  %i.gm = xor i64 %i.gl, %i.gi
  %i.gn = load ptr, ptr %i.c, align 16, !alias.scope !16626, !noalias !16612, !nonnull !4, !align !8, !noundef !4
  %i.go = load i64, ptr %i.gn, align 8, !noalias !16636, !noundef !4
  %i.gp = xor i64 %i.go, %i.gk
  %i.gq = zext i64 %i.gm to i128
  %i.gr = zext i64 %i.gp to i128
  %i.gs = mul nuw i128 %i.gr, %i.gq               ; 2 uses
  %i.gt = lshr i128 %i.gs, 64
  %i.gu = xor i128 %i.gt, %i.gs
  %i.gv = trunc i128 %i.gu to i64
  store i64 %i.gv, ptr %i.b, align 8, !alias.scope !16626, !noalias !16612
  %i.gw = zext i64 %i.fz to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit37

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit37: ; preds = %bb.z, %bb.aa
  %.sink.i35 = phi i128 [ %i.gw, %bb.aa ], [ %i.gf, %bb.z ]
  %storemerge.i.i.i36 = phi i8 [ 64, %bb.aa ], [ %i.gg, %bb.z ]
  store i128 %.sink.i35, ptr %1, align 16, !alias.scope !16626, !noalias !16612
  store i8 %storemerge.i.i.i36, ptr %i.a, align 16, !alias.scope !16626, !noalias !16612
  tail call void @_RINvYTINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB4_ENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.fx, i64 noundef %i.fz, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !noalias !16612, !inline_history !16625
  %i.gx = getelementptr inbounds nuw i8, ptr %.tr, i64 40
  %i.gy = load ptr, ptr %i.gx, align 8, !alias.scope !16612, !noalias !16615, !align !69, !noundef !4 ; 2 uses
  %i.gz = icmp ne ptr %i.gy, null                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16637)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16640)
  %i.ha = load i8, ptr %i.a, align 16, !alias.scope !16643, !noalias !16612, !noundef !4 ; 3 uses
  %i.hb = icmp ugt i8 %i.ha, 64
  br i1 %i.hb, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit37
  %i.hc = zext i1 %i.gz to i128
  %i.hd = zext nneg i8 %i.ha to i128
  %i.he = shl nuw nsw i128 %i.hc, %i.hd
  %i.hf = load i128, ptr %1, align 16, !alias.scope !16643, !noalias !16612, !noundef !4
  %i.hg = or i128 %i.hf, %i.he
  %i.hh = add nuw i8 %i.ha, 64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i

bb.ac:                                            ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit37
  %i.hi = load i128, ptr %1, align 16, !alias.scope !16643, !noalias !16612, !noundef !4 ; 2 uses
  %i.hj = trunc i128 %i.hi to i64
  %i.hk = lshr i128 %i.hi, 64
  %i.hl = trunc nuw i128 %i.hk to i64
  %i.hm = load i64, ptr %i.b, align 8, !alias.scope !16643, !noalias !16612, !noundef !4
  %i.hn = xor i64 %i.hm, %i.hj
  %i.ho = load ptr, ptr %i.c, align 16, !alias.scope !16643, !noalias !16612, !nonnull !4, !align !8, !noundef !4
  %i.hp = load i64, ptr %i.ho, align 8, !noalias !16644, !noundef !4
  %i.hq = xor i64 %i.hp, %i.hl
  %i.hr = zext i64 %i.hn to i128
  %i.hs = zext i64 %i.hq to i128
  %i.ht = mul nuw i128 %i.hs, %i.hr               ; 2 uses
  %i.hu = lshr i128 %i.ht, 64
  %i.hv = xor i128 %i.hu, %i.ht
  %i.hw = trunc i128 %i.hv to i64
  store i64 %i.hw, ptr %i.b, align 8, !alias.scope !16643, !noalias !16612
  %i.hx = zext i1 %i.gz to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i: ; preds = %bb.ac, %bb.ab
  %.sink211 = phi i128 [ %i.hx, %bb.ac ], [ %i.hg, %bb.ab ]
  %storemerge.i.i.i7 = phi i8 [ 64, %bb.ac ], [ %i.hh, %bb.ab ]
  store i128 %.sink211, ptr %1, align 16, !alias.scope !16643, !noalias !16612
  store i8 %storemerge.i.i.i7, ptr %i.a, align 16, !alias.scope !16643, !noalias !16612
  br i1 %i.gz, label %tailrecurse.backedge, label %common.ret513

common.ret513:                                    ; preds = %bb.eh, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i18.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i19, %bb.ed, %bb.cz, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i17, %bb.cy, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit6.i, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit3.i, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i, %_RINvXsS_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_13NullTreatmentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i46, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i46.thread, %bb.db, %bb.da, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit84, %_RINvXs36_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_10InSubqueryNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, %_RINvXs2S_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_6ExistsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, %_RINvXs2Z_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_6InListNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, %_RINvXs2L_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, %_RINvXs1L_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_14ScalarFunctionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, %bb.q, %bb.p, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit, %bb.f, %bb.e, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i, %bb.ae, %bb.ad
  ret void

bb.ad:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  %i.hy = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16645)
  %i.hz = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.ia = load ptr, ptr %i.hz, align 8, !alias.scope !16645, !noalias !16648, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ia, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #46, !noalias !16645, !inline_history !16650
  tail call fastcc void @_RINvXs7_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.hy, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #46, !inline_history !16650
  br label %common.ret513

bb.ae:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  %i.ib = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16651)
  %i.ic = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.id = load ptr, ptr %i.ic, align 8, !alias.scope !16651, !noalias !16654, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.id, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #46, !noalias !16651, !inline_history !16656
  tail call fastcc void @_RINvXs7_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ib, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #46, !inline_history !16656
  br label %common.ret513

bb.af:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16657)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16660)
  %i.ie = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.if = load ptr, ptr %i.ie, align 8, !alias.scope !16657, !noalias !16660, !nonnull !4, !noundef !4
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  tail call void @_RINvXs1_NtCs8VI8w5SIoU4_15datafusion_expr3udfNtB6_9ScalarUDFNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ig, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !noalias !16657
  %i.ih = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.ii = load ptr, ptr %i.ih, align 8, !alias.scope !16657, !noalias !16660, !nonnull !4, !noundef !4
  %i.ij = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ik = load i64, ptr %i.ij, align 8, !alias.scope !16657, !noalias !16660, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16662)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16665)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16668)
  %i.il = load i8, ptr %i.a, align 16, !alias.scope !16671, !noalias !16657, !noundef !4 ; 3 uses
  %i.im = icmp ugt i8 %i.il, 64
  br i1 %i.im, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.in = zext i64 %i.ik to i128
  %i.io = zext nneg i8 %i.il to i128
  %i.ip = shl nuw i128 %i.in, %i.io
  %i.iq = load i128, ptr %1, align 16, !alias.scope !16671, !noalias !16657, !noundef !4
  %i.ir = or i128 %i.iq, %i.ip
  %i.is = add nuw i8 %i.il, 64
  br label %_RINvXs1L_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_14ScalarFunctionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.ah:                                            ; preds = %bb.af
  %i.it = load i128, ptr %1, align 16, !alias.scope !16671, !noalias !16657, !noundef !4 ; 2 uses
  %i.iu = trunc i128 %i.it to i64
  %i.iv = lshr i128 %i.it, 64
  %i.iw = trunc nuw i128 %i.iv to i64
  %i.ix = load i64, ptr %i.b, align 8, !alias.scope !16671, !noalias !16657, !noundef !4
  %i.iy = xor i64 %i.ix, %i.iu
  %i.iz = load ptr, ptr %i.c, align 16, !alias.scope !16671, !noalias !16657, !nonnull !4, !align !8, !noundef !4
  %i.ja = load i64, ptr %i.iz, align 8, !noalias !16672, !noundef !4
  %i.jb = xor i64 %i.ja, %i.iw
  %i.jc = zext i64 %i.iy to i128
  %i.jd = zext i64 %i.jb to i128
  %i.je = mul nuw i128 %i.jd, %i.jc               ; 2 uses
  %i.jf = lshr i128 %i.je, 64
  %i.jg = xor i128 %i.jf, %i.je
  %i.jh = trunc i128 %i.jg to i64
  store i64 %i.jh, ptr %i.b, align 8, !alias.scope !16671, !noalias !16657
  %i.ji = zext i64 %i.ik to i128
  br label %_RINvXs1L_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_14ScalarFunctionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs1L_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_14ScalarFunctionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ag, %bb.ah
  %.sink.i.i = phi i128 [ %i.ji, %bb.ah ], [ %i.ir, %bb.ag ]
  %storemerge.i.i.i.i = phi i8 [ 64, %bb.ah ], [ %i.is, %bb.ag ]
  store i128 %.sink.i.i, ptr %1, align 16, !alias.scope !16671, !noalias !16657
  store i8 %storemerge.i.i.i.i, ptr %i.a, align 16, !alias.scope !16671, !noalias !16657
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.ii, i64 noundef %i.ik, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !noalias !16657
  br label %common.ret513

bb.ai:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16673)
  %i.jj = getelementptr inbounds nuw i8, ptr %.tr, i64 72
  %i.jk = load ptr, ptr %i.jj, align 8, !alias.scope !16673, !noalias !16676, !nonnull !4, !noundef !4
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  tail call void @_RINvXs0_NtCs8VI8w5SIoU4_15datafusion_expr4udafNtB6_12AggregateUDFNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.jl, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !noalias !16673, !inline_history !16678
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16679)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16682)
  %i.jm = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.jn = load ptr, ptr %i.jm, align 8, !alias.scope !16679, !noalias !16682, !nonnull !4, !noundef !4
  %i.jo = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.jp = load i64, ptr %i.jo, align 8, !alias.scope !16679, !noalias !16682, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16684)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16687)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16690)
  %i.jq = load i8, ptr %i.a, align 16, !alias.scope !16693, !noalias !16679, !noundef !4 ; 3 uses
  %i.jr = icmp ugt i8 %i.jq, 64
  br i1 %i.jr, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.js = zext i64 %i.jp to i128
  %i.jt = zext nneg i8 %i.jq to i128
  %i.ju = shl nuw i128 %i.js, %i.jt
  %i.jv = load i128, ptr %1, align 16, !alias.scope !16693, !noalias !16679, !noundef !4
  %i.jw = or i128 %i.jv, %i.ju
  %i.jx = add nuw i8 %i.jq, 64
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i38

bb.ak:                                            ; preds = %bb.ai
  %i.jy = load i128, ptr %1, align 16, !alias.scope !16693, !noalias !16679, !noundef !4 ; 2 uses
  %i.jz = trunc i128 %i.jy to i64
  %i.ka = lshr i128 %i.jy, 64
  %i.kb = trunc nuw i128 %i.ka to i64
  %i.kc = load i64, ptr %i.b, align 8, !alias.scope !16693, !noalias !16679, !noundef !4
  %i.kd = xor i64 %i.kc, %i.jz
  %i.ke = load ptr, ptr %i.c, align 16, !alias.scope !16693, !noalias !16679, !nonnull !4, !align !8, !noundef !4
end_hunk_3
begin_hunk_4_@_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.og = zext i64 %i.np to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit6.i43

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit6.i43: ; preds = %bb.ao, %bb.an
  %i.oh = phi i64 [ %i.np, %bb.ao ], [ %i.ng, %bb.an ]
  %i.oi = phi ptr [ %i.nq, %bb.ao ], [ %i.nh, %bb.an ]
  %.sink.i4.i44 = phi i128 [ %i.og, %bb.ao ], [ %i.nn, %bb.an ]
  %storemerge.i.i.i5.i45 = phi i8 [ 64, %bb.ao ], [ %i.no, %bb.an ]
  store i128 %.sink.i4.i44, ptr %1, align 16, !alias.scope !16712, !noalias !16679
  store i8 %storemerge.i.i.i5.i45, ptr %i.a, align 16, !alias.scope !16712, !noalias !16679
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.oi, i64 noundef %i.oh, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !noalias !16679, !inline_history !16695
  %i.oj = getelementptr inbounds nuw i8, ptr %.tr, i64 65
  %i.ok = load i8, ptr %i.oj, align 1, !range !5003, !alias.scope !16679, !noalias !16682, !noundef !4 ; 3 uses
  %i.ol = icmp ne i8 %i.ok, 2                     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16723)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16726)
  %i.om = load i8, ptr %i.a, align 16, !alias.scope !16729, !noalias !16679, !noundef !4 ; 4 uses
  %i.on = icmp ugt i8 %i.om, 64
  br i1 %i.on, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i46.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i46

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i46: ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit6.i43
  %i.oo = zext i1 %i.ol to i128
  %i.op = zext nneg i8 %i.om to i128
  %i.oq = shl nuw nsw i128 %i.oo, %i.op
  %i.or = load i128, ptr %1, align 16, !alias.scope !16729, !noalias !16679, !noundef !4
  %i.os = or i128 %i.or, %i.oq                    ; 4 uses
  store i128 %i.os, ptr %1, align 16, !alias.scope !16729, !noalias !16679
  %i.ot = add nuw i8 %i.om, 64
  store i8 %i.ot, ptr %i.a, align 16, !alias.scope !16729, !noalias !16679
  br i1 %i.ol, label %bb.ap, label %common.ret513

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i46.thread: ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit6.i43
  %i.ou = load i128, ptr %1, align 16, !alias.scope !16729, !noalias !16679, !noundef !4 ; 2 uses
  %i.ov = trunc i128 %i.ou to i64
  %i.ow = lshr i128 %i.ou, 64
  %i.ox = trunc nuw i128 %i.ow to i64
  %i.oy = load i64, ptr %i.b, align 8, !alias.scope !16729, !noalias !16679, !noundef !4
  %i.oz = xor i64 %i.oy, %i.ov
  %i.pa = load ptr, ptr %i.c, align 16, !alias.scope !16729, !noalias !16679, !nonnull !4, !align !8, !noundef !4
  %i.pb = load i64, ptr %i.pa, align 8, !noalias !16730, !noundef !4
  %i.pc = xor i64 %i.pb, %i.ox
  %i.pd = zext i64 %i.oz to i128
  %i.pe = zext i64 %i.pc to i128
  %i.pf = mul nuw i128 %i.pe, %i.pd               ; 2 uses
  %i.pg = lshr i128 %i.pf, 64
  %i.ph = xor i128 %i.pg, %i.pf
  %i.pi = trunc i128 %i.ph to i64
  store i64 %i.pi, ptr %i.b, align 8, !alias.scope !16729, !noalias !16679
  %i.pj = zext i1 %i.ol to i128
  store i128 %i.pj, ptr %1, align 16, !alias.scope !16729, !noalias !16679
  store i8 64, ptr %i.a, align 16, !alias.scope !16729, !noalias !16679
  br i1 %i.ol, label %.thread, label %common.ret513

bb.ap:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i46
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16731)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16734)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16737)
  %.not103 = icmp eq i8 %i.om, 0
  br i1 %.not103, label %.thread, label %bb.aq

.thread:                                          ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i46.thread, %bb.ap
  %i.pk = phi i128 [ 1, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i46.thread ], [ %i.os, %bb.ap ]
  %i.pl = zext nneg i8 %i.ok to i128
  %i.pm = shl nuw nsw i128 %i.pl, 64
  %i.pn = or i128 %i.pk, %i.pm
  br label %_RINvXsS_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_13NullTreatmentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i

bb.aq:                                            ; preds = %bb.ap
  %i.po = trunc i128 %i.os to i64
  %i.pp = lshr i128 %i.os, 64
  %i.pq = trunc nuw i128 %i.pp to i64
  %i.pr = load i64, ptr %i.b, align 8, !alias.scope !16740, !noalias !16679, !noundef !4
  %i.ps = xor i64 %i.pr, %i.po
  %i.pt = load ptr, ptr %i.c, align 16, !alias.scope !16740, !noalias !16679, !nonnull !4, !align !8, !noundef !4
  %i.pu = load i64, ptr %i.pt, align 8, !noalias !16741, !noundef !4
  %i.pv = xor i64 %i.pu, %i.pq
  %i.pw = zext i64 %i.ps to i128
  %i.px = zext i64 %i.pv to i128
  %i.py = mul nuw i128 %i.px, %i.pw               ; 2 uses
  %i.pz = lshr i128 %i.py, 64
  %i.qa = xor i128 %i.pz, %i.py
  %i.qb = trunc i128 %i.qa to i64
  store i64 %i.qb, ptr %i.b, align 8, !alias.scope !16740, !noalias !16679
  %i.qc = zext nneg i8 %i.ok to i128
  br label %_RINvXsS_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_13NullTreatmentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvXsS_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_13NullTreatmentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.aq, %.thread
  %.sink.i7.i = phi i128 [ %i.qc, %bb.aq ], [ %i.pn, %.thread ]
  %storemerge.i.i.i8.i = phi i8 [ 64, %bb.aq ], [ -128, %.thread ]
  store i128 %.sink.i7.i, ptr %1, align 16, !alias.scope !16740, !noalias !16679
  store i8 %storemerge.i.i.i8.i, ptr %i.a, align 16, !alias.scope !16740, !noalias !16679
  br label %common.ret513

bb.ar:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit4
  %i.qd = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.qe = load ptr, ptr %i.qd, align 8, !nonnull !4, !noundef !4 ; 22 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16742)
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 272
  %.val.i = load i64, ptr %i.qf, align 8, !range !18, !alias.scope !16742, !noalias !16745, !noundef !4 ; 2 uses
  %i.qg = getelementptr i8, ptr %i.qe, i64 280
  %.val1.i = load ptr, ptr %i.qg, align 8, !alias.scope !16742, !noalias !16745 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16747)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16750), !noalias !16742
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16753), !noalias !16742
  %i.qh = icmp ugt i8 %storemerge.i.i3, 64
  br i1 %i.qh, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.qi = zext nneg i64 %.val.i to i128
  %i.qj = shl nuw nsw i128 %i.qi, 64
  %i.qk = or i128 %i.ag, %i.qj
  br label %_RINvXs2y_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.at:                                            ; preds = %bb.ar
  %i.ql = trunc i128 %i.ag to i64
  %i.qm = lshr i128 %i.ag, 64
  %i.qn = trunc nuw i128 %i.qm to i64
  %i.qo = load i64, ptr %i.b, align 8, !alias.scope !16756, !noalias !16742, !noundef !4
  %i.qp = xor i64 %i.qo, %i.ql
  %i.qq = load ptr, ptr %i.c, align 16, !alias.scope !16756, !noalias !16742, !nonnull !4, !align !8, !noundef !4
  %i.qr = load i64, ptr %i.qq, align 8, !noalias !16757, !noundef !4
  %i.qs = xor i64 %i.qr, %i.qn
  %i.qt = zext i64 %i.qp to i128
  %i.qu = zext i64 %i.qs to i128
  %i.qv = mul nuw i128 %i.qu, %i.qt               ; 2 uses
  %i.qw = lshr i128 %i.qv, 64
  %i.qx = xor i128 %i.qw, %i.qv
  %i.qy = trunc i128 %i.qx to i64
  store i64 %i.qy, ptr %i.b, align 8, !alias.scope !16756, !noalias !16742
  %i.qz = zext nneg i64 %.val.i to i128
  br label %_RINvXs2y_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs2y_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.as, %bb.at
  %.sink.i70 = phi i128 [ %i.qz, %bb.at ], [ %i.qk, %bb.as ]
  %storemerge.i.i.i71 = phi i8 [ 64, %bb.at ], [ -128, %bb.as ]
  store i128 %.sink.i70, ptr %1, align 16, !alias.scope !16756, !noalias !16742
  store i8 %storemerge.i.i.i71, ptr %i.a, align 16, !alias.scope !16756, !noalias !16742
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ], !noalias !16742
  %i.ra = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.rb = load ptr, ptr %i.ra, align 8, !noalias !16758, !nonnull !4, !noundef !4
  %i.rc = getelementptr inbounds nuw i8, ptr %.val1.i, i64 24
  %i.rd = load ptr, ptr %i.rc, align 8, !noalias !16758, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 16
  %i.rf = load i64, ptr %i.re, align 8, !range !64, !invariant.load !4, !noalias !16758
  %i.rg = add nsw i64 %i.rf, -1
  %i.rh = and i64 %i.rg, -16
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rb, i64 %i.rh
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 16
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rd, i64 48
  %i.rl = load ptr, ptr %i.rk, align 8, !invariant.load !4, !noalias !16758, !nonnull !4
  tail call void %i.rl(ptr noundef nonnull %i.rj, ptr noundef nonnull align 16 dereferenceable(48) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) @192) #46, !noalias !16742, !inline_history !16759
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16760)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16763)
  %i.rm = getelementptr inbounds nuw i8, ptr %i.qe, i64 184
  %i.rn = load ptr, ptr %i.rm, align 8, !alias.scope !16760, !noalias !16763, !nonnull !4, !noundef !4
  %i.ro = getelementptr inbounds nuw i8, ptr %i.qe, i64 192
  %i.rp = load i64, ptr %i.ro, align 16, !alias.scope !16760, !noalias !16763, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16765)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16768)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16771)
  %i.rq = load i8, ptr %i.a, align 16, !alias.scope !16774, !noalias !16760, !noundef !4 ; 3 uses
  %i.rr = icmp ugt i8 %i.rq, 64
  br i1 %i.rr, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_RINvXs2y_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.rs = zext i64 %i.rp to i128
  %i.rt = zext nneg i8 %i.rq to i128
  %i.ru = shl nuw i128 %i.rs, %i.rt
  %i.rv = load i128, ptr %1, align 16, !alias.scope !16774, !noalias !16760, !noundef !4
  %i.rw = or i128 %i.rv, %i.ru
  %i.rx = add nuw i8 %i.rq, 64
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i49

bb.av:                                            ; preds = %_RINvXs2y_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.ry = load i128, ptr %1, align 16, !alias.scope !16774, !noalias !16760, !noundef !4 ; 2 uses
  %i.rz = trunc i128 %i.ry to i64
  %i.sa = lshr i128 %i.ry, 64
  %i.sb = trunc nuw i128 %i.sa to i64
  %i.sc = load i64, ptr %i.b, align 8, !alias.scope !16774, !noalias !16760, !noundef !4
  %i.sd = xor i64 %i.sc, %i.rz
  %i.se = load ptr, ptr %i.c, align 16, !alias.scope !16774, !noalias !16760, !nonnull !4, !align !8, !noundef !4
  %i.sf = load i64, ptr %i.se, align 8, !noalias !16775, !noundef !4
  %i.sg = xor i64 %i.sf, %i.sb
  %i.sh = zext i64 %i.sd to i128
  %i.si = zext i64 %i.sg to i128
  %i.sj = mul nuw i128 %i.si, %i.sh               ; 2 uses
  %i.sk = lshr i128 %i.sj, 64
  %i.sl = xor i128 %i.sk, %i.sj
  %i.sm = trunc i128 %i.sl to i64
  store i64 %i.sm, ptr %i.b, align 8, !alias.scope !16774, !noalias !16760
  %i.sn = zext i64 %i.rp to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i49

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i49: ; preds = %bb.av, %bb.au
  %.sink.i.i50 = phi i128 [ %i.sn, %bb.av ], [ %i.rw, %bb.au ]
  %storemerge.i.i.i.i51 = phi i8 [ 64, %bb.av ], [ %i.rx, %bb.au ]
  store i128 %.sink.i.i50, ptr %1, align 16, !alias.scope !16774, !noalias !16760
  store i8 %storemerge.i.i.i.i51, ptr %i.a, align 16, !alias.scope !16774, !noalias !16760
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.rn, i64 noundef %i.rp, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !noalias !16760, !inline_history !16776
  %i.so = getelementptr inbounds nuw i8, ptr %i.qe, i64 208
  %i.sp = load ptr, ptr %i.so, align 16, !alias.scope !16760, !noalias !16763, !nonnull !4, !noundef !4
  %i.sq = getelementptr inbounds nuw i8, ptr %i.qe, i64 216
  %i.sr = load i64, ptr %i.sq, align 8, !alias.scope !16760, !noalias !16763, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16777)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16780)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16783)
  %i.ss = load i8, ptr %i.a, align 16, !alias.scope !16786, !noalias !16760, !noundef !4 ; 3 uses
  %i.st = icmp ugt i8 %i.ss, 64
  br i1 %i.st, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i49
  %i.su = zext i64 %i.sr to i128
  %i.sv = zext nneg i8 %i.ss to i128
  %i.sw = shl nuw i128 %i.su, %i.sv
  %i.sx = load i128, ptr %1, align 16, !alias.scope !16786, !noalias !16760, !noundef !4
  %i.sy = or i128 %i.sx, %i.sw
  %i.sz = add nuw i8 %i.ss, 64
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit6.i52

bb.ax:                                            ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i49
  %i.ta = load i128, ptr %1, align 16, !alias.scope !16786, !noalias !16760, !noundef !4 ; 2 uses
  %i.tb = trunc i128 %i.ta to i64
  %i.tc = lshr i128 %i.ta, 64
  %i.td = trunc nuw i128 %i.tc to i64
  %i.te = load i64, ptr %i.b, align 8, !alias.scope !16786, !noalias !16760, !noundef !4
  %i.tf = xor i64 %i.te, %i.tb
  %i.tg = load ptr, ptr %i.c, align 16, !alias.scope !16786, !noalias !16760, !nonnull !4, !align !8, !noundef !4
  %i.th = load i64, ptr %i.tg, align 8, !noalias !16787, !noundef !4
  %i.ti = xor i64 %i.th, %i.td
  %i.tj = zext i64 %i.tf to i128
  %i.tk = zext i64 %i.ti to i128
  %i.tl = mul nuw i128 %i.tk, %i.tj               ; 2 uses
  %i.tm = lshr i128 %i.tl, 64
  %i.tn = xor i128 %i.tm, %i.tl
  %i.to = trunc i128 %i.tn to i64
  store i64 %i.to, ptr %i.b, align 8, !alias.scope !16786, !noalias !16760
  %i.tp = zext i64 %i.sr to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit6.i52

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit6.i52: ; preds = %bb.ax, %bb.aw
  %.sink.i4.i53 = phi i128 [ %i.tp, %bb.ax ], [ %i.sy, %bb.aw ]
  %storemerge.i.i.i5.i54 = phi i8 [ 64, %bb.ax ], [ %i.sz, %bb.aw ]
  store i128 %.sink.i4.i53, ptr %1, align 16, !alias.scope !16786, !noalias !16760
  store i8 %storemerge.i.i.i5.i54, ptr %i.a, align 16, !alias.scope !16786, !noalias !16760
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.sp, i64 noundef %i.sr, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !noalias !16760, !inline_history !16776
  %i.tq = getelementptr inbounds nuw i8, ptr %i.qe, i64 232
  %i.tr = load ptr, ptr %i.tq, align 8, !alias.scope !16760, !noalias !16763, !nonnull !4, !noundef !4
  %i.ts = getelementptr inbounds nuw i8, ptr %i.qe, i64 240
  %i.tt = load i64, ptr %i.ts, align 16, !alias.scope !16760, !noalias !16763, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16788)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16791)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16794)
  %i.tu = load i8, ptr %i.a, align 16, !alias.scope !16797, !noalias !16760, !noundef !4 ; 3 uses
  %i.tv = icmp ugt i8 %i.tu, 64
  br i1 %i.tv, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit6.i52
  %i.tw = zext i64 %i.tt to i128
  %i.tx = zext nneg i8 %i.tu to i128
  %i.ty = shl nuw i128 %i.tw, %i.tx
  %i.tz = load i128, ptr %1, align 16, !alias.scope !16797, !noalias !16760, !noundef !4
  %i.ua = or i128 %i.tz, %i.ty
  %i.ub = add nuw i8 %i.tu, 64
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit9.i

bb.az:                                            ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit6.i52
  %i.uc = load i128, ptr %1, align 16, !alias.scope !16797, !noalias !16760, !noundef !4 ; 2 uses
  %i.ud = trunc i128 %i.uc to i64
  %i.ue = lshr i128 %i.uc, 64
  %i.uf = trunc nuw i128 %i.ue to i64
  %i.ug = load i64, ptr %i.b, align 8, !alias.scope !16797, !noalias !16760, !noundef !4
  %i.uh = xor i64 %i.ug, %i.ud
  %i.ui = load ptr, ptr %i.c, align 16, !alias.scope !16797, !noalias !16760, !nonnull !4, !align !8, !noundef !4
  %i.uj = load i64, ptr %i.ui, align 8, !noalias !16798, !noundef !4
  %i.uk = xor i64 %i.uj, %i.uf
  %i.ul = zext i64 %i.uh to i128
  %i.um = zext i64 %i.uk to i128
  %i.un = mul nuw i128 %i.um, %i.ul               ; 2 uses
  %i.uo = lshr i128 %i.un, 64
  %i.up = xor i128 %i.uo, %i.un
  %i.uq = trunc i128 %i.up to i64
  store i64 %i.uq, ptr %i.b, align 8, !alias.scope !16797, !noalias !16760
  %i.ur = zext i64 %i.tt to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit9.i

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit9.i: ; preds = %bb.az, %bb.ay
  %.sink.i7.i55 = phi i128 [ %i.ur, %bb.az ], [ %i.ua, %bb.ay ]
  %storemerge.i.i.i8.i56 = phi i8 [ 64, %bb.az ], [ %i.ub, %bb.ay ]
  store i128 %.sink.i7.i55, ptr %1, align 16, !alias.scope !16797, !noalias !16760
  store i8 %storemerge.i.i.i8.i56, ptr %i.a, align 16, !alias.scope !16797, !noalias !16760
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.tr, i64 noundef %i.tt, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !noalias !16760, !inline_history !16776
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16799)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16802)
  %i.us = getelementptr inbounds nuw i8, ptr %i.qe, i64 161
  %i.ut = load i8, ptr %i.us, align 1, !range !5003, !alias.scope !16804, !noalias !16805, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16806)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16809)
  %i.uu = load i8, ptr %i.a, align 16, !alias.scope !16812, !noalias !16804, !noundef !4 ; 3 uses
  %i.uv = icmp ugt i8 %i.uu, 64
  br i1 %i.uv, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i.i68, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i.i57

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i.i68: ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit9.i
  %i.uw = load i128, ptr %1, align 16, !alias.scope !16812, !noalias !16804, !noundef !4 ; 2 uses
  %i.ux = trunc i128 %i.uw to i64
  %i.uy = lshr i128 %i.uw, 64
  %i.uz = trunc nuw i128 %i.uy to i64
  %i.va = load i64, ptr %i.b, align 8, !alias.scope !16812, !noalias !16804, !noundef !4
  %i.vb = xor i64 %i.va, %i.ux
  %i.vc = load ptr, ptr %i.c, align 16, !alias.scope !16812, !noalias !16804, !nonnull !4, !align !8, !noundef !4
  %i.vd = load i64, ptr %i.vc, align 8, !noalias !16813, !noundef !4
  %i.ve = xor i64 %i.vd, %i.uz
  %i.vf = zext i64 %i.vb to i128
  %i.vg = zext i64 %i.ve to i128
  %i.vh = mul nuw i128 %i.vg, %i.vf               ; 2 uses
  %i.vi = lshr i128 %i.vh, 64
  %i.vj = xor i128 %i.vi, %i.vh
  %i.vk = trunc i128 %i.vj to i64
  store i64 %i.vk, ptr %i.b, align 8, !alias.scope !16812, !noalias !16804
  %i.vl = zext nneg i8 %i.ut to i128
  %i.vm = load i128, ptr %i.qe, align 16, !range !1865, !alias.scope !16814, !noalias !16817, !noundef !4
  br label %bb.ba

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i.i57: ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit9.i
  %i.vn = zext nneg i8 %i.ut to i128
  %i.vo = zext nneg i8 %i.uu to i128
  %i.vp = shl nuw nsw i128 %i.vn, %i.vo
  %i.vq = load i128, ptr %1, align 16, !alias.scope !16812, !noalias !16804, !noundef !4
  %i.vr = or i128 %i.vq, %i.vp                    ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16819)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16821)
  %i.vs = load i128, ptr %i.qe, align 16, !range !1865, !alias.scope !16823, !noalias !16824, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16825)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16828)
  %.not.i.i = icmp eq i8 %i.uu, 0
  br i1 %.not.i.i, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i.i57, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i.i68
  %i.vt = phi i128 [ %i.vl, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i.i68 ], [ %i.vr, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i.i57 ]
  %i.vu = phi i128 [ %i.vm, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i.i68 ], [ %i.vs, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i.i57 ] ; 2 uses
  %i.vv = shl nuw nsw i128 %i.vu, 64
  %i.vw = or i128 %i.vv, %i.vt
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i.i.i

bb.bb:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i.i57
  %i.vx = trunc i128 %i.vr to i64
  %i.vy = lshr i128 %i.vr, 64
  %i.vz = trunc nuw i128 %i.vy to i64
  %i.wa = load i64, ptr %i.b, align 8, !alias.scope !16831, !noalias !16823, !noundef !4
  %i.wb = xor i64 %i.wa, %i.vx
  %i.wc = load ptr, ptr %i.c, align 16, !alias.scope !16831, !noalias !16823, !nonnull !4, !align !8, !noundef !4
  %i.wd = load i64, ptr %i.wc, align 8, !noalias !16832, !noundef !4
  %i.we = xor i64 %i.wd, %i.vz
  %i.wf = zext i64 %i.wb to i128
  %i.wg = zext i64 %i.we to i128
  %i.wh = mul nuw i128 %i.wg, %i.wf               ; 2 uses
  %i.wi = lshr i128 %i.wh, 64
  %i.wj = xor i128 %i.wi, %i.wh
  %i.wk = trunc i128 %i.wj to i64
  store i64 %i.wk, ptr %i.b, align 8, !alias.scope !16831, !noalias !16823
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i.i.i

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i.i.i: ; preds = %bb.bb, %bb.ba
  %i.wl = phi i128 [ %i.vs, %bb.bb ], [ %i.vu, %bb.ba ]
  %.sink.i.i.i58 = phi i128 [ %i.vs, %bb.bb ], [ %i.vw, %bb.ba ]
  %storemerge.i.i.i.i.i59 = phi i8 [ 64, %bb.bb ], [ -128, %bb.ba ] ; 2 uses
  store i128 %.sink.i.i.i58, ptr %1, align 16, !alias.scope !16831, !noalias !16823
  store i8 %storemerge.i.i.i.i.i59, ptr %i.a, align 16, !alias.scope !16831, !noalias !16823
  %i.wm = icmp eq i128 %i.wl, 1
  br i1 %i.wm, label %_RINvXsj_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i.i.i
  %i.wn = getelementptr inbounds nuw i8, ptr %i.qe, i64 16
  tail call void @_RINvXs2_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB6_11ScalarValueNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.wn, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !inline_history !16776
  %.pr.i.i = load i8, ptr %i.a, align 16, !alias.scope !16833, !noalias !16840
  br label %_RINvXsj_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i.i

_RINvXsj_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %.sink.split.i.i.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i.i.i
  %i.wo = phi i8 [ %storemerge.i.i.i.i.i59, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i.i.i ], [ %.pr.i.i, %.sink.split.i.i.i ] ; 3 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.qe, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16842)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16843)
  %i.wq = load i128, ptr %i.wp, align 16, !range !1865, !alias.scope !16840, !noalias !16844, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16845)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16846)
  %i.wr = icmp ugt i8 %i.wo, 64
  br i1 %i.wr, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_RINvXsj_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.ws = zext nneg i8 %i.wo to i128
  %i.wt = shl nuw nsw i128 %i.wq, %i.ws
  %i.wu = load i128, ptr %1, align 16, !alias.scope !16833, !noalias !16840, !noundef !4
  %i.wv = or i128 %i.wu, %i.wt
  %i.ww = add nuw i8 %i.wo, 64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i2.i.i

bb.bd:                                            ; preds = %_RINvXsj_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB6_16WindowFrameBoundNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.wx = load i128, ptr %1, align 16, !alias.scope !16833, !noalias !16840, !noundef !4 ; 2 uses
  %i.wy = trunc i128 %i.wx to i64
  %i.wz = lshr i128 %i.wx, 64
  %i.xa = trunc nuw i128 %i.wz to i64
  %i.xb = load i64, ptr %i.b, align 8, !alias.scope !16833, !noalias !16840, !noundef !4
end_hunk_4
begin_hunk_5_@_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.rz = load i64, ptr %i.b, align 8, !alias.scope !18315, !noalias !18266, !noundef !4
  %i.sa = xor i64 %i.rz, %i.rw
  %i.sb = load ptr, ptr %i.c, align 16, !alias.scope !18315, !noalias !18266, !nonnull !4, !align !8, !noundef !4
  %i.sc = load i64, ptr %i.sb, align 8, !noalias !18316, !noundef !4
  %i.sd = xor i64 %i.sc, %i.ry
  %i.se = zext i64 %i.sa to i128
  %i.sf = zext i64 %i.sd to i128
  %i.sg = mul nuw i128 %i.sf, %i.se               ; 2 uses
  %i.sh = lshr i128 %i.sg, 64
  %i.si = xor i128 %i.sh, %i.sg
  %i.sj = trunc i128 %i.si to i64
  store i64 %i.sj, ptr %i.b, align 8, !alias.scope !18315, !noalias !18266
  %i.sk = zext i64 %i.rr to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit6.i

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit6.i: ; preds = %bb.av, %bb.au
  %.sink.i4.i = phi i128 [ %i.sk, %bb.av ], [ %i.rv, %bb.au ]
  %storemerge.i.i.i5.i = phi i8 [ 64, %bb.av ], [ -128, %bb.au ]
  store i128 %.sink.i4.i, ptr %1, align 16, !alias.scope !18315, !noalias !18266
  store i8 %storemerge.i.i.i5.i, ptr %i.a, align 16, !alias.scope !18315, !noalias !18266
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.rp, i64 noundef %i.rr, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !noalias !18266
  br label %common.ret

bb.aw:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18320)
  %i.sl = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.sm = load ptr, ptr %i.sl, align 8, !alias.scope !18317, !noalias !18320, !nonnull !4, !noundef !4
  %i.sn = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.so = load i64, ptr %i.sn, align 8, !alias.scope !18317, !noalias !18320, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18325)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18328)
  %i.sp = icmp ugt i8 %storemerge.i.i, 64
  br i1 %i.sp, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.sq = zext i64 %i.so to i128
  %i.sr = shl nuw i128 %i.sq, 64
  %i.ss = or i128 %i.sr, %i.ag
  br label %_RINvXs1J_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB7_5UnionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.ay:                                            ; preds = %bb.aw
  %i.st = trunc i128 %i.ag to i64
  %i.su = lshr i128 %i.ag, 64
  %i.sv = trunc nuw i128 %i.su to i64
  %i.sw = load i64, ptr %i.b, align 8, !alias.scope !18331, !noalias !18317, !noundef !4
  %i.sx = xor i64 %i.sw, %i.st
  %i.sy = load ptr, ptr %i.c, align 16, !alias.scope !18331, !noalias !18317, !nonnull !4, !align !8, !noundef !4
  %i.sz = load i64, ptr %i.sy, align 8, !noalias !18332, !noundef !4
  %i.ta = xor i64 %i.sz, %i.sv
  %i.tb = zext i64 %i.sx to i128
  %i.tc = zext i64 %i.ta to i128
  %i.td = mul nuw i128 %i.tc, %i.tb               ; 2 uses
  %i.te = lshr i128 %i.td, 64
  %i.tf = xor i128 %i.te, %i.td
  %i.tg = trunc i128 %i.tf to i64
  store i64 %i.tg, ptr %i.b, align 8, !alias.scope !18331, !noalias !18317
  %i.th = zext i64 %i.so to i128
  br label %_RINvXs1J_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB7_5UnionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs1J_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB7_5UnionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ax, %bb.ay
  %.sink.i.i = phi i128 [ %i.th, %bb.ay ], [ %i.ss, %bb.ax ]
  %storemerge.i.i.i.i = phi i8 [ 64, %bb.ay ], [ -128, %bb.ax ]
  store i128 %.sink.i.i, ptr %1, align 16, !alias.scope !18331, !noalias !18317
  store i8 %storemerge.i.i.i.i, ptr %i.a, align 16, !alias.scope !18331, !noalias !18317
  tail call void @_RINvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.sm, i64 noundef %i.so, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !noalias !18317
  %i.ti = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.tj = load ptr, ptr %i.ti, align 8, !alias.scope !18317, !noalias !18320, !nonnull !4, !noundef !4
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 16
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB6_8DFSchemaNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.tk, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !noalias !18317
  br label %common.ret

bb.az:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  %i.tl = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @_RINvXsh_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9TableScanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.tl, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  br label %common.ret

bb.ba:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  %i.tm = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %.val = load ptr, ptr %i.tm, align 8            ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %.val1 = load i8, ptr %i.tn, align 8, !range !3, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18339)
  %i.to = icmp ugt i8 %storemerge.i.i, 120
  br i1 %i.to, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.tp = zext nneg i8 %.val1 to i128
  %i.tq = zext nneg i8 %storemerge.i.i to i128
  %i.tr = shl nuw nsw i128 %i.tp, %i.tq
  %i.ts = or i128 %i.tr, %i.ag
  %i.tt = add nuw i8 %storemerge.i.i, 8
  br label %_RINvXsT_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13EmptyRelationNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.bc:                                            ; preds = %bb.ba
  %i.tu = trunc i128 %i.ag to i64
  %i.tv = lshr i128 %i.ag, 64
  %i.tw = trunc nuw i128 %i.tv to i64
  %i.tx = load i64, ptr %i.b, align 8, !alias.scope !18342, !noundef !4
  %i.ty = xor i64 %i.tx, %i.tu
  %i.tz = load ptr, ptr %i.c, align 16, !alias.scope !18342, !nonnull !4, !align !8, !noundef !4
  %i.ua = load i64, ptr %i.tz, align 8, !noalias !18342, !noundef !4
  %i.ub = xor i64 %i.ua, %i.tw
  %i.uc = zext i64 %i.ty to i128
  %i.ud = zext i64 %i.ub to i128
  %i.ue = mul nuw i128 %i.ud, %i.uc               ; 2 uses
  %i.uf = lshr i128 %i.ue, 64
  %i.ug = xor i128 %i.uf, %i.ue
  %i.uh = trunc i128 %i.ug to i64
  store i64 %i.uh, ptr %i.b, align 8, !alias.scope !18342
  %i.ui = zext nneg i8 %.val1 to i128
  br label %_RINvXsT_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13EmptyRelationNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXsT_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13EmptyRelationNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.bb, %bb.bc
  %.sink.i = phi i128 [ %i.ui, %bb.bc ], [ %i.ts, %bb.bb ]
  %storemerge.i.i.i9 = phi i8 [ 8, %bb.bc ], [ %i.tt, %bb.bb ]
  store i128 %.sink.i, ptr %1, align 16, !alias.scope !18342
  store i8 %storemerge.i.i.i9, ptr %i.a, align 16, !alias.scope !18342
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.uj = getelementptr inbounds nuw i8, ptr %.val, i64 16
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB6_8DFSchemaNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.uj, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  br label %common.ret

bb.bd:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18346)
  %i.uk = getelementptr inbounds nuw i8, ptr %.tr, i64 56
  %i.ul = load ptr, ptr %i.uk, align 8, !alias.scope !18343, !noalias !18346, !nonnull !4, !noundef !4
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 16
  tail call fastcc void @_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.um, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #46, !noalias !18343, !inline_history !16982
  %i.un = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.uo = load ptr, ptr %i.un, align 8, !alias.scope !18343, !noalias !18346, !nonnull !4, !noundef !4
  %i.up = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.uq = load i64, ptr %i.up, align 8, !alias.scope !18343, !noalias !18346, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18354)
  %i.ur = load i8, ptr %i.a, align 16, !alias.scope !18357, !noalias !18343, !noundef !4 ; 3 uses
  %i.us = icmp ugt i8 %i.ur, 64
  br i1 %i.us, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ut = zext i64 %i.uq to i128
  %i.uu = zext nneg i8 %i.ur to i128
  %i.uv = shl nuw i128 %i.ut, %i.uu
  %i.uw = load i128, ptr %1, align 16, !alias.scope !18357, !noalias !18343, !noundef !4
  %i.ux = or i128 %i.uw, %i.uv
  %i.uy = add nuw i8 %i.ur, 64
  br label %_RINvXs2U_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB7_8SubqueryNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.bf:                                            ; preds = %bb.bd
  %i.uz = load i128, ptr %1, align 16, !alias.scope !18357, !noalias !18343, !noundef !4 ; 2 uses
  %i.va = trunc i128 %i.uz to i64
  %i.vb = lshr i128 %i.uz, 64
  %i.vc = trunc nuw i128 %i.vb to i64
  %i.vd = load i64, ptr %i.b, align 8, !alias.scope !18357, !noalias !18343, !noundef !4
  %i.ve = xor i64 %i.vd, %i.va
  %i.vf = load ptr, ptr %i.c, align 16, !alias.scope !18357, !noalias !18343, !nonnull !4, !align !8, !noundef !4
  %i.vg = load i64, ptr %i.vf, align 8, !noalias !18358, !noundef !4
  %i.vh = xor i64 %i.vg, %i.vc
  %i.vi = zext i64 %i.ve to i128
  %i.vj = zext i64 %i.vh to i128
  %i.vk = mul nuw i128 %i.vj, %i.vi               ; 2 uses
  %i.vl = lshr i128 %i.vk, 64
  %i.vm = xor i128 %i.vl, %i.vk
  %i.vn = trunc i128 %i.vm to i64
  store i64 %i.vn, ptr %i.b, align 8, !alias.scope !18357, !noalias !18343
  %i.vo = zext i64 %i.uq to i128
  br label %_RINvXs2U_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB7_8SubqueryNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs2U_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB7_8SubqueryNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.be, %bb.bf
  %.sink.i.i10 = phi i128 [ %i.vo, %bb.bf ], [ %i.ux, %bb.be ]
  %storemerge.i.i.i.i11 = phi i8 [ 64, %bb.bf ], [ %i.uy, %bb.be ]
  store i128 %.sink.i.i10, ptr %1, align 16, !alias.scope !18357, !noalias !18343
  store i8 %storemerge.i.i.i.i11, ptr %i.a, align 16, !alias.scope !18357, !noalias !18343
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.uo, i64 noundef %i.uq, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !noalias !18343, !inline_history !16982
  br label %common.ret

bb.bg:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  %i.vp = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18359)
  %i.vq = getelementptr inbounds nuw i8, ptr %.tr, i64 64
  %i.vr = load ptr, ptr %i.vq, align 8, !alias.scope !18359, !noalias !18362, !nonnull !4, !noundef !4
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 16
  tail call fastcc void @_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.vs, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #46, !noalias !18359, !inline_history !18364
  tail call fastcc void @_RINvXsi_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB6_14TableReferenceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.vp, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #46, !inline_history !18364
  %i.vt = getelementptr inbounds nuw i8, ptr %.tr, i64 72
  %i.vu = load ptr, ptr %i.vt, align 8, !alias.scope !18359, !noalias !18362, !nonnull !4, !noundef !4
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 16
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB6_8DFSchemaNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.vv, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !noalias !18359, !inline_history !18364
  br label %common.ret

bb.bh:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  %i.vw = getelementptr inbounds nuw i8, ptr %.tr, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18368)
  %i.vx = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.vy = load ptr, ptr %i.vx, align 16, !alias.scope !18365, !noalias !18368, !align !69, !noundef !4 ; 2 uses
  %i.vz = icmp ne ptr %i.vy, null                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18370)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18373)
  %i.wa = icmp ugt i8 %storemerge.i.i, 64
  br i1 %i.wa, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.wb = select i1 %i.vz, i128 18446744073709551616, i128 0
  %i.wc = or i128 %i.wb, %i.ag
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i12

bb.bj:                                            ; preds = %bb.bh
  %i.wd = trunc i128 %i.ag to i64
  %i.we = lshr i128 %i.ag, 64
  %i.wf = trunc nuw i128 %i.we to i64
  %i.wg = load i64, ptr %i.b, align 8, !alias.scope !18376, !noalias !18365, !noundef !4
  %i.wh = xor i64 %i.wg, %i.wd
  %i.wi = load ptr, ptr %i.c, align 16, !alias.scope !18376, !noalias !18365, !nonnull !4, !align !8, !noundef !4
  %i.wj = load i64, ptr %i.wi, align 8, !noalias !18377, !noundef !4
  %i.wk = xor i64 %i.wj, %i.wf
  %i.wl = zext i64 %i.wh to i128
  %i.wm = zext i64 %i.wk to i128
  %i.wn = mul nuw i128 %i.wm, %i.wl               ; 2 uses
  %i.wo = lshr i128 %i.wn, 64
  %i.wp = xor i128 %i.wo, %i.wn
  %i.wq = trunc i128 %i.wp to i64
  store i64 %i.wq, ptr %i.b, align 8, !alias.scope !18376, !noalias !18365
  %i.wr = zext i1 %i.vz to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i12

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i12: ; preds = %bb.bj, %bb.bi
  %storemerge119 = phi i128 [ %i.wc, %bb.bi ], [ %i.wr, %bb.bj ]
  %storemerge.i.i1.i13 = phi i8 [ -128, %bb.bi ], [ 64, %bb.bj ] ; 2 uses
  store i128 %storemerge119, ptr %1, align 16, !alias.scope !18376, !noalias !18365
  store i8 %storemerge.i.i1.i13, ptr %i.a, align 16, !alias.scope !18376, !noalias !18365
  br i1 %i.vz, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i12
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.vy, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #46, !noalias !18365, !inline_history !18378
  %.pr111 = load i8, ptr %i.a, align 16, !alias.scope !18379, !noalias !18365
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i12
  %i.ws = phi i8 [ %.pr111, %bb.bk ], [ %storemerge.i.i1.i13, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2.i12 ] ; 3 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.wu = load ptr, ptr %i.wt, align 8, !alias.scope !18365, !noalias !18368, !align !69, !noundef !4 ; 2 uses
  %i.wv = icmp ne ptr %i.wu, null                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18385)
  %i.ww = icmp ugt i8 %i.ws, 64
  br i1 %i.ww, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.wx = zext i1 %i.wv to i128
  %i.wy = zext nneg i8 %i.ws to i128
  %i.wz = shl nuw nsw i128 %i.wx, %i.wy
  %i.xa = load i128, ptr %1, align 16, !alias.scope !18379, !noalias !18365, !noundef !4
  %i.xb = or i128 %i.xa, %i.wz
  %i.xc = add nuw i8 %i.ws, 64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i14

bb.bn:                                            ; preds = %bb.bl
  %i.xd = load i128, ptr %1, align 16, !alias.scope !18379, !noalias !18365, !noundef !4 ; 2 uses
  %i.xe = trunc i128 %i.xd to i64
  %i.xf = lshr i128 %i.xd, 64
  %i.xg = trunc nuw i128 %i.xf to i64
  %i.xh = load i64, ptr %i.b, align 8, !alias.scope !18379, !noalias !18365, !noundef !4
  %i.xi = xor i64 %i.xh, %i.xe
  %i.xj = load ptr, ptr %i.c, align 16, !alias.scope !18379, !noalias !18365, !nonnull !4, !align !8, !noundef !4
  %i.xk = load i64, ptr %i.xj, align 8, !noalias !18386, !noundef !4
  %i.xl = xor i64 %i.xk, %i.xg
  %i.xm = zext i64 %i.xi to i128
  %i.xn = zext i64 %i.xl to i128
  %i.xo = mul nuw i128 %i.xn, %i.xm               ; 2 uses
  %i.xp = lshr i128 %i.xo, 64
  %i.xq = xor i128 %i.xp, %i.xo
  %i.xr = trunc i128 %i.xq to i64
  store i64 %i.xr, ptr %i.b, align 8, !alias.scope !18379, !noalias !18365
  %i.xs = zext i1 %i.wv to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i14

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i14: ; preds = %bb.bn, %bb.bm
  %.sink291 = phi i128 [ %i.xs, %bb.bn ], [ %i.xb, %bb.bm ]
  %storemerge.i.i.i15 = phi i8 [ 64, %bb.bn ], [ %i.xc, %bb.bm ]
  store i128 %.sink291, ptr %1, align 16, !alias.scope !18379, !noalias !18365
  store i8 %storemerge.i.i.i15, ptr %i.a, align 16, !alias.scope !18379, !noalias !18365
  br i1 %i.wv, label %bb.bo, label %tailrecurse.backedge

bb.bo:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i14
  tail call fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.wu, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #46, !noalias !18365, !inline_history !18378
  br label %tailrecurse.backedge

bb.bp:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  %i.xt = getelementptr inbounds nuw i8, ptr %.tr, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18390)
  %i.xu = load i64, ptr %i.xt, align 8, !range !18392, !alias.scope !18387, !noalias !18390, !noundef !4 ; 3 uses
  %i.xv = icmp ne i64 %i.xu, -9223372036854775804
  tail call void @llvm.assume(i1 %i.xv)
  %i.xw = xor i64 %i.xu, -9223372036854775808
  %i.xx = icmp slt i64 %i.xu, 0
  %i.xy = select i1 %i.xx, i64 %i.xw, i64 4       ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18393)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18396)
  %i.xz = icmp ugt i8 %storemerge.i.i, 64
  br i1 %i.xz, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ya = zext i64 %i.xy to i128
  %i.yb = shl nuw i128 %i.ya, 64
  %i.yc = or i128 %i.yb, %i.ag
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16

bb.br:                                            ; preds = %bb.bp
  %i.yd = trunc i128 %i.ag to i64
  %i.ye = lshr i128 %i.ag, 64
  %i.yf = trunc nuw i128 %i.ye to i64
  %i.yg = load i64, ptr %i.b, align 8, !alias.scope !18399, !noalias !18387, !noundef !4
  %i.yh = xor i64 %i.yg, %i.yd
  %i.yi = load ptr, ptr %i.c, align 16, !alias.scope !18399, !noalias !18387, !nonnull !4, !align !8, !noundef !4
  %i.yj = load i64, ptr %i.yi, align 8, !noalias !18400, !noundef !4
  %i.yk = xor i64 %i.yj, %i.yf
  %i.yl = zext i64 %i.yh to i128
  %i.ym = zext i64 %i.yk to i128
  %i.yn = mul nuw i128 %i.ym, %i.yl               ; 2 uses
  %i.yo = lshr i128 %i.yn, 64
  %i.yp = xor i128 %i.yo, %i.yn
  %i.yq = trunc i128 %i.yp to i64
  store i64 %i.yq, ptr %i.b, align 8, !alias.scope !18399, !noalias !18387
  %i.yr = zext i64 %i.xy to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16: ; preds = %bb.br, %bb.bq
  %storemerge118 = phi i128 [ %i.yc, %bb.bq ], [ %i.yr, %bb.br ]
  %storemerge.i.i.i17 = phi i8 [ -128, %bb.bq ], [ 64, %bb.br ]
  store i128 %storemerge118, ptr %1, align 16, !alias.scope !18399, !noalias !18387
  store i8 %storemerge.i.i.i17, ptr %i.a, align 16, !alias.scope !18399, !noalias !18387
  switch i64 %i.xy, label %bb.bs [
    i64 0, label %bb.bt
    i64 1, label %bb.bu
    i64 2, label %bb.bv
    i64 3, label %bb.bw
    i64 4, label %bb.bx
    i64 5, label %bb.by
    i64 6, label %bb.bz
  ]

bb.bs:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16
  unreachable

bb.bt:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16
  %i.ys = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %.val.i = load i8, ptr %i.ys, align 8, !range !3, !alias.scope !18387, !noalias !18390, !noundef !4
  %i.yt = getelementptr inbounds nuw i8, ptr %.tr, i64 17
  %.val1.i = load i8, ptr %i.yt, align 1, !alias.scope !18387, !noalias !18390
  tail call fastcc void @_RINvXsx_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB6_16TransactionStartNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(i8 %.val.i, i8 %.val1.i, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #46, !noalias !18387, !inline_history !18401
  br label %common.ret

bb.bu:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16
  %i.yu = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %.val2.i = load i8, ptr %i.yu, align 8, !range !3, !alias.scope !18387, !noalias !18390, !noundef !4
  %i.yv = getelementptr inbounds nuw i8, ptr %.tr, i64 17
  %.val3.i = load i8, ptr %i.yv, align 1, !alias.scope !18387, !noalias !18390
  tail call fastcc void @_RINvXsE_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB6_14TransactionEndNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(i8 %.val2.i, i8 %.val3.i, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #46, !noalias !18387, !inline_history !18401
  br label %common.ret

bb.bv:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16
  %i.yw = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  tail call fastcc void @_RINvXsL_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB6_11SetVariableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.yw, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #46, !inline_history !18401
  br label %common.ret

bb.bw:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16
  %i.yx = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %.val4.i = load ptr, ptr %i.yx, align 8, !alias.scope !18387, !noalias !18390, !nonnull !4, !noundef !4
  %i.yy = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %.val5.i = load i64, ptr %i.yy, align 8, !alias.scope !18387, !noalias !18390, !noundef !4
  tail call fastcc void @_RINvXsS_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB6_13ResetVariableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr nonnull %.val4.i, i64 %.val5.i, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #46, !noalias !18387, !inline_history !18401
  br label %common.ret

bb.bx:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16
  tail call fastcc void @_RINvXsZ_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB6_7PrepareNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.xt, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #46, !inline_history !18401
  br label %common.ret

bb.by:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16
  %i.yz = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  tail call fastcc void @_RINvXs16_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB7_7ExecuteNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.yz, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #46, !inline_history !18401
  br label %common.ret

bb.bz:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i16
  %i.za = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %.val6.i = load ptr, ptr %i.za, align 8, !alias.scope !18387, !noalias !18390, !nonnull !4, !noundef !4
  %i.zb = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %.val7.i = load i64, ptr %i.zb, align 8, !alias.scope !18387, !noalias !18390, !noundef !4
  tail call fastcc void @_RINvXs1d_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB7_10DeallocateNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr nonnull %.val6.i, i64 %.val7.i, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #46, !noalias !18387, !inline_history !18401
  br label %common.ret

bb.ca:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18405)
  %i.zc = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.zd = load ptr, ptr %i.zc, align 8, !alias.scope !18402, !noalias !18405, !nonnull !4, !noundef !4
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 16
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB6_8DFSchemaNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ze, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !noalias !18402
  %i.zf = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.zg = load ptr, ptr %i.zf, align 8, !alias.scope !18402, !noalias !18405, !nonnull !4, !noundef !4
  %i.zh = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.zi = load i64, ptr %i.zh, align 8, !alias.scope !18402, !noalias !18405, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18410)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18413)
  %i.zj = load i8, ptr %i.a, align 16, !alias.scope !18416, !noalias !18402, !noundef !4 ; 3 uses
  %i.zk = icmp ugt i8 %i.zj, 64
  br i1 %i.zk, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.zl = zext i64 %i.zi to i128
  %i.zm = zext nneg i8 %i.zj to i128
  %i.zn = shl nuw i128 %i.zl, %i.zm
  %i.zo = load i128, ptr %1, align 16, !alias.scope !18416, !noalias !18402, !noundef !4
  %i.zp = or i128 %i.zo, %i.zn
  %i.zq = add nuw i8 %i.zj, 64
  br label %_RINvXs16_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB7_6ValuesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.cc:                                            ; preds = %bb.ca
  %i.zr = load i128, ptr %1, align 16, !alias.scope !18416, !noalias !18402, !noundef !4 ; 2 uses
  %i.zs = trunc i128 %i.zr to i64
  %i.zt = lshr i128 %i.zr, 64
  %i.zu = trunc nuw i128 %i.zt to i64
  %i.zv = load i64, ptr %i.b, align 8, !alias.scope !18416, !noalias !18402, !noundef !4
  %i.zw = xor i64 %i.zv, %i.zs
  %i.zx = load ptr, ptr %i.c, align 16, !alias.scope !18416, !noalias !18402, !nonnull !4, !align !8, !noundef !4
  %i.zy = load i64, ptr %i.zx, align 8, !noalias !18417, !noundef !4
  %i.zz = xor i64 %i.zy, %i.zu
  %i.aaa = zext i64 %i.zw to i128
  %i.aab = zext i64 %i.zz to i128
  %i.aac = mul nuw i128 %i.aab, %i.aaa            ; 2 uses
  %i.aad = lshr i128 %i.aac, 64
  %i.aae = xor i128 %i.aad, %i.aac
  %i.aaf = trunc i128 %i.aae to i64
  store i64 %i.aaf, ptr %i.b, align 8, !alias.scope !18416, !noalias !18402
  %i.aag = zext i64 %i.zi to i128
  br label %_RINvXs16_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB7_6ValuesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs16_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB7_6ValuesNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.cb, %bb.cc
  %.sink.i.i18 = phi i128 [ %i.aag, %bb.cc ], [ %i.zp, %bb.cb ]
  %storemerge.i.i.i.i19 = phi i8 [ 64, %bb.cc ], [ %i.zq, %bb.cb ]
  store i128 %.sink.i.i18, ptr %1, align 16, !alias.scope !18416, !noalias !18402
  store i8 %storemerge.i.i.i.i19, ptr %i.a, align 16, !alias.scope !18416, !noalias !18402
  tail call void @_RINvYINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.zg, i64 noundef %i.zi, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !noalias !18402
  br label %common.ret

bb.cd:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18421)
  %i.aah = getelementptr inbounds nuw i8, ptr %.tr, i64 48
  %i.aai = load i8, ptr %i.aah, align 8, !range !3, !alias.scope !18418, !noalias !18421, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18426)
  %i.aaj = icmp ugt i8 %storemerge.i.i, 120
  br i1 %i.aaj, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.aak = trunc i128 %i.ag to i64
  %i.aal = lshr i128 %i.ag, 64
  %i.aam = trunc nuw i128 %i.aal to i64
  %i.aan = load i64, ptr %i.b, align 8, !alias.scope !18429, !noalias !18418, !noundef !4
  %i.aao = xor i64 %i.aan, %i.aak
  %i.aap = load ptr, ptr %i.c, align 16, !alias.scope !18429, !noalias !18418, !nonnull !4, !align !8, !noundef !4
  %i.aaq = load i64, ptr %i.aap, align 8, !noalias !18430, !noundef !4
  %i.aar = xor i64 %i.aaq, %i.aam
  %i.aas = zext i64 %i.aao to i128
  %i.aat = zext i64 %i.aar to i128
  %i.aau = mul nuw i128 %i.aat, %i.aas            ; 2 uses
  %i.aav = lshr i128 %i.aau, 64
  %i.aaw = xor i128 %i.aav, %i.aau
  %i.aax = trunc i128 %i.aaw to i64
  %i.aay = zext nneg i8 %i.aai to i128
  %i.aaz = getelementptr inbounds nuw i8, ptr %.tr, i64 50
  %i.aba = load i8, ptr %i.aaz, align 2, !range !1092, !alias.scope !18418, !noalias !18421, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18431)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18434)
  %i.abb = zext nneg i8 %i.aba to i128
  %i.abc = shl nuw nsw i128 %i.abb, 8
  %i.abd = or disjoint i128 %i.abc, %i.aay
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i20

bb.cf:                                            ; preds = %bb.cd
  %i.abe = zext nneg i8 %i.aai to i128
  %i.abf = zext nneg i8 %storemerge.i.i to i128
  %i.abg = shl nuw nsw i128 %i.abe, %i.abf
  %i.abh = or i128 %i.abg, %i.ag                  ; 2 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %.tr, i64 50
  %i.abj = load i8, ptr %i.abi, align 2, !range !1092, !alias.scope !18418, !noalias !18421, !noundef !4
  %i.abk = trunc i128 %i.abh to i64
  %i.abl = lshr i128 %i.abh, 64
  %i.abm = trunc nuw i128 %i.abl to i64
  %i.abn = load i64, ptr %i.b, align 8, !alias.scope !18437, !noalias !18418, !noundef !4
  %i.abo = xor i64 %i.abn, %i.abk
  %i.abp = load ptr, ptr %i.c, align 16, !alias.scope !18437, !noalias !18418, !nonnull !4, !align !8, !noundef !4
  %i.abq = load i64, ptr %i.abp, align 8, !noalias !18438, !noundef !4
  %i.abr = xor i64 %i.abq, %i.abm
  %i.abs = zext i64 %i.abo to i128
  %i.abt = zext i64 %i.abr to i128
  %i.abu = mul nuw i128 %i.abt, %i.abs            ; 2 uses
  %i.abv = lshr i128 %i.abu, 64
  %i.abw = xor i128 %i.abv, %i.abu
  %i.abx = trunc i128 %i.abw to i64
  %i.aby = zext nneg i8 %i.abj to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i20

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i20: ; preds = %bb.cf, %bb.ce
  %.sink634 = phi i64 [ %i.aax, %bb.ce ], [ %i.abx, %bb.cf ]
  %storemerge117 = phi i128 [ %i.abd, %bb.ce ], [ %i.aby, %bb.cf ]
  %storemerge.i.i.i21 = phi i8 [ 72, %bb.ce ], [ 64, %bb.cf ]
  store i64 %.sink634, ptr %i.b, align 8, !alias.scope !18421, !noalias !18418
  store i128 %storemerge117, ptr %1, align 16, !alias.scope !18437, !noalias !18418
  store i8 %storemerge.i.i.i21, ptr %i.a, align 16, !alias.scope !18437, !noalias !18418
  %i.abz = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.aca = load ptr, ptr %i.abz, align 8, !alias.scope !18418, !noalias !18421, !nonnull !4, !noundef !4
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 16
  tail call fastcc void @_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.acb, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) #46, !noalias !18418, !inline_history !18439
  %i.acc = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.acd = load ptr, ptr %i.acc, align 8, !alias.scope !18418, !noalias !18421, !nonnull !4, !noundef !4
  %i.ace = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.acf = load i64, ptr %i.ace, align 8, !alias.scope !18418, !noalias !18421, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18440)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18443), !noalias !18418
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18446), !noalias !18418
  %i.acg = load i8, ptr %i.a, align 16, !alias.scope !18449, !noalias !18418, !noundef !4 ; 3 uses
  %i.ach = icmp ugt i8 %i.acg, 64
  br i1 %i.ach, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i20
  %i.aci = zext i64 %i.acf to i128
  %i.acj = zext nneg i8 %i.acg to i128
  %i.ack = shl nuw i128 %i.aci, %i.acj
  %i.acl = load i128, ptr %1, align 16, !alias.scope !18449, !noalias !18418, !noundef !4
  %i.acm = or i128 %i.acl, %i.ack
  %i.acn = add nuw i8 %i.acg, 64
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit63

bb.ch:                                            ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i20
  %i.aco = load i128, ptr %1, align 16, !alias.scope !18449, !noalias !18418, !noundef !4 ; 2 uses
  %i.acp = trunc i128 %i.aco to i64
  %i.acq = lshr i128 %i.aco, 64
  %i.acr = trunc nuw i128 %i.acq to i64
  %i.acs = load i64, ptr %i.b, align 8, !alias.scope !18449, !noalias !18418, !noundef !4
  %i.act = xor i64 %i.acs, %i.acp
  %i.acu = load ptr, ptr %i.c, align 16, !alias.scope !18449, !noalias !18418, !nonnull !4, !align !8, !noundef !4
  %i.acv = load i64, ptr %i.acu, align 8, !noalias !18450, !noundef !4
  %i.acw = xor i64 %i.acv, %i.acr
  %i.acx = zext i64 %i.act to i128
  %i.acy = zext i64 %i.acw to i128
  %i.acz = mul nuw i128 %i.acy, %i.acx            ; 2 uses
  %i.ada = lshr i128 %i.acz, 64
  %i.adb = xor i128 %i.ada, %i.acz
  %i.adc = trunc i128 %i.adb to i64
  store i64 %i.adc, ptr %i.b, align 8, !alias.scope !18449, !noalias !18418
  %i.add = zext i64 %i.acf to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit63

end_hunk_5
begin_hunk_6_@_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a
    i64 29, label %bb.w
    i64 30, label %bb.x
    i64 31, label %bb.y
    i64 32, label %tailrecurse.backedge
  ]

_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %tailrecurse.backedge, %bb.ac, %bb.a, %bb.ah, %bb.s, %bb.r, %bb.aj, %bb.ai, %bb.af, %bb.ag, %bb.ad, %bb.f, %bb.aa, %bb.z, %bb.ak, %bb.ae, %bb.ab, %bb.x, %bb.w, %bb.u, %bb.t, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.d, %bb.c
  %.sroa.0.0 = phi i1 [ %i.o, %bb.c ], [ %i.r, %bb.d ], [ %i.dk, %bb.ab ], [ false, %bb.z ], [ %i.ch, %bb.u ], [ %.mux, %bb.ac ], [ %i.dt, %bb.ae ], [ false, %bb.f ], [ false, %bb.a ], [ false, %bb.aa ], [ %i.ac, %bb.g ], [ %i.af, %bb.h ], [ %i.ai, %bb.i ], [ false, %bb.ah ], [ false, %bb.r ], [ %i.cb, %bb.s ], [ false, %bb.af ], [ %i.dz, %bb.ai ], [ true, %bb.ad ], [ false, %bb.ag ], [ %i.ed, %bb.ak ], [ %i.cs, %bb.x ], [ %i.cp, %bb.w ], [ %i.aw, %bb.j ], [ %i.az, %bb.k ], [ %i.bc, %bb.l ], [ %i.bf, %bb.m ], [ %i.bi, %bb.n ], [ %i.bl, %bb.o ], [ %i.bq, %bb.p ], [ %i.bt, %bb.q ], [ false, %bb.aj ], [ %i.ce, %bb.t ], [ false, %tailrecurse.backedge ]
  ret i1 %.sroa.0.0

bb.b:                                             ; preds = %.lr.ph
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.o = tail call fastcc noundef zeroext i1 @_RNvXs1b_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_5AliasNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.n) #46
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.r = tail call fastcc noundef zeroext i1 @_RNvXs9_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6ColumnNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.q) #46
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.tr83, i64 32
  %i.t = load ptr, ptr %i.s, align 16, !nonnull !4, !noundef !4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.tr1384, i64 32
  %i.v = load ptr, ptr %i.u, align 16, !nonnull !4, !noundef !4 ; 2 uses
  %i.w = icmp eq ptr %i.t, %i.v
  br i1 %i.w, label %bb.aa, label %bb.z

bb.f:                                             ; preds = %.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %.tr83, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %.tr1384, i64 16
  %i.z = tail call noundef zeroext i1 @_RNvXs_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4_11ScalarValueNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.x, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.y)
  br i1 %i.z, label %bb.ac, label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.ac = tail call fastcc noundef zeroext i1 @_RNvXs1g_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_10BinaryExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab) #46
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.af = tail call fastcc noundef zeroext i1 @_RNvXs1u_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4LikeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ae) #46
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.ai = tail call fastcc noundef zeroext i1 @_RNvXs1u_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4LikeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ah) #46
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

tailrecurse.backedge:                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %.tr13.be.in = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %.tr13.be = load ptr, ptr %.tr13.be.in, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.tr.be.in = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %.tr.be = load ptr, ptr %.tr.be.in, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.aj = load i64, ptr %.tr.be, align 16, !range !1933, !noundef !4 ; 3 uses
  %i.ak = icmp ne i64 %i.aj, 35
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = add nsw i64 %i.aj, -4
  %i.am = icmp samesign ugt i64 %i.aj, 3
  %i.an = select i1 %i.am, i64 %i.al, i64 31      ; 2 uses
  %i.ao = load i64, ptr %.tr13.be, align 16, !range !1933, !noundef !4 ; 3 uses
  %i.ap = icmp ne i64 %i.ao, 35
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = add nsw i64 %i.ao, -4
  %i.ar = icmp samesign ugt i64 %i.ao, 3
  %i.as = select i1 %i.ar, i64 %i.aq, i64 31
  %i.at = icmp eq i64 %i.an, %i.as
  br i1 %i.at, label %.lr.ph, label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %.lr.ph
  %i.au = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.aw = tail call fastcc noundef zeroext i1 @_RNvXs1B_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_7BetweenNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.au, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.av) #46
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %.lr.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.az = tail call fastcc noundef zeroext i1 @_RNvXs1o_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4CaseNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ax, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ay) #46
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %.lr.ph
  %i.ba = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.bc = tail call fastcc noundef zeroext i1 @_RNvXs1V_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4CastNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bb) #46
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %.lr.ph
  %i.bd = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.bf = tail call fastcc noundef zeroext i1 @_RNvXs22_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_7TryCastNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.be) #46
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %.lr.ph
  %i.bg = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.bi = tail call fastcc noundef zeroext i1 @_RNvXs1I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_14ScalarFunctionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bh) #46
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %.lr.ph
  %i.bj = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.bl = tail call fastcc noundef zeroext i1 @_RNvXs2g_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_17AggregateFunctionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bk) #46
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %.lr.ph
  %i.bm = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !nonnull !4, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !4, !noundef !4
  %i.bq = tail call fastcc noundef zeroext i1 @_RNvXs2B_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_14WindowFunctionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(288) %i.bn, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(288) %i.bp) #46
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %.lr.ph
  %i.br = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.bt = tail call fastcc noundef zeroext i1 @_RNvXs2W_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6InListNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.br, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bs) #46
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23330)
  %i.bu = getelementptr inbounds nuw i8, ptr %.tr83, i64 64
  %i.bv = load i8, ptr %i.bu, align 8, !range !3, !alias.scope !23327, !noalias !23330, !noundef !4
  %i.bw = getelementptr inbounds nuw i8, ptr %.tr1384, i64 64
  %i.bx = load i8, ptr %i.bw, align 8, !range !3, !alias.scope !23330, !noalias !23327, !noundef !4
  %i.by = icmp eq i8 %i.bv, %i.bx
  br i1 %i.by, label %bb.s, label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %bb.r
  %i.bz = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.cb = tail call fastcc noundef zeroext i1 @_RNvXs2R_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ca, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bz) #46, !inline_history !23332
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %.lr.ph
  %i.cc = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.ce = tail call fastcc noundef zeroext i1 @_RNvXs33_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_10InSubqueryNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.cc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.cd) #46
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.u:                                             ; preds = %.lr.ph
  %i.cf = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.ch = tail call fastcc noundef zeroext i1 @_RNvXs2R_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.cf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.cg) #46
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.v:                                             ; preds = %.lr.ph
  %i.ci = getelementptr inbounds nuw i8, ptr %.tr83, i64 8 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !range !80, !noundef !4
  %.not = icmp eq i64 %i.cj, 3
  %i.ck = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !range !80, !noundef !4
  %i.cm = icmp eq i64 %i.cl, 3                    ; 2 uses
  br i1 %.not, label %bb.ag, label %bb.af

bb.w:                                             ; preds = %.lr.ph
  %i.cn = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.cp = tail call fastcc noundef zeroext i1 @_RNvXs3h_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_11GroupingSetNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.co) #46
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.x:                                             ; preds = %.lr.ph
  %i.cq = getelementptr inbounds nuw i8, ptr %.tr83, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %.tr1384, i64 8
  %i.cs = tail call fastcc noundef zeroext i1 @_RNvXs3a_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_11PlaceholderNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cr) #46
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.y:                                             ; preds = %.lr.ph
  %i.ct = getelementptr inbounds nuw i8, ptr %.tr83, i64 104
  %i.cu = load ptr, ptr %i.ct, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.tr1384, i64 104
  %i.cw = load ptr, ptr %i.cv, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.cx = icmp eq ptr %i.cu, %i.cw
  br i1 %i.cx, label %bb.ak, label %bb.aj

bb.z:                                             ; preds = %bb.e
  %i.cy = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.da = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.cy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.cz)
  br i1 %i.da, label %bb.aa, label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.aa:                                            ; preds = %bb.e, %bb.z
  %i.db = getelementptr inbounds nuw i8, ptr %.tr83, i64 24
  %i.dc = load i64, ptr %i.db, align 8, !noundef !4 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.tr1384, i64 24
  %i.de = load i64, ptr %i.dd, align 8, !noundef !4
  %i.df = icmp eq i64 %i.dc, %i.de
  br i1 %i.df, label %bb.ab, label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ab:                                            ; preds = %bb.aa
  %i.dg = getelementptr inbounds nuw i8, ptr %.tr1384, i64 16
  %i.dh = load ptr, ptr %i.dg, align 16, !nonnull !4, !noundef !4
  %i.di = getelementptr inbounds nuw i8, ptr %.tr83, i64 16
  %i.dj = load ptr, ptr %i.di, align 16, !nonnull !4, !noundef !4
  %i.dk = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.dj, ptr noundef nonnull %i.dh, i64 noundef %i.dc)
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ac:                                            ; preds = %bb.f
  %i.dl = getelementptr inbounds nuw i8, ptr %.tr83, i64 80
  %i.dm = load ptr, ptr %i.dl, align 16, !noundef !4 ; 3 uses
  %.not11 = icmp eq ptr %i.dm, null               ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.tr1384, i64 80
  %i.do = load ptr, ptr %i.dn, align 16, !noundef !4 ; 3 uses
  %i.dp = icmp eq ptr %i.do, null                 ; 2 uses
  %brmerge = or i1 %.not11, %i.dp
  %.mux = and i1 %.not11, %i.dp
  br i1 %brmerge, label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dq = icmp eq ptr %i.dm, %i.do
  br i1 %i.dq, label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dt = tail call noundef zeroext i1 @_RNvXs1t_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringB18_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ds)
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.af:                                            ; preds = %bb.v
  br i1 %i.cm, label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ah

bb.ag:                                            ; preds = %bb.v
  br i1 %i.cm, label %bb.ai, label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ah:                                            ; preds = %bb.af
  %i.du = tail call fastcc noundef zeroext i1 @_RNvXsg_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ci, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ck) #46
  br i1 %i.du, label %bb.ai, label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.dv = getelementptr inbounds nuw i8, ptr %.tr83, i64 64
  %i.dw = load ptr, ptr %i.dv, align 16, !nonnull !4, !noundef !4
  %i.dx = getelementptr inbounds nuw i8, ptr %.tr1384, i64 64
  %i.dy = load ptr, ptr %i.dx, align 16, !nonnull !4, !noundef !4
  %i.dz = tail call fastcc noundef zeroext i1 @_RNvXs3o_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_15WildcardOptionsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(352) %i.dw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(352) %i.dy) #46
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.aj:                                            ; preds = %bb.y
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.ec = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ea, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.eb)
  br i1 %i.ec, label %bb.ak, label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ak:                                            ; preds = %bb.y, %bb.aj
  %i.ed = tail call fastcc noundef zeroext i1 @_RNvXs9_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6ColumnNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %.tr83, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %.tr1384) #46
  br label %_RNvXs2P_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6ExistsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char(ptr noalias noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !23333, !noundef !4 ; 2 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128            ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i32 %1, 65536
  %..i = select i1 %i.f, i64 3, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ 2, %bb.b ], [ %..i, %bb.c ], [ 1, %bb.a ] ; 2 uses
  tail call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !23333, !nonnull !4, !noundef !4
  %i.i = load i64, ptr %i.a, align 8, !alias.scope !23333, !noundef !4 ; 2 uses
  %i.j = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i ; 10 uses
  br i1 %i.d, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = icmp samesign ult i32 %1, 2048
  %i.m = trunc i32 %1 to i8
  %i.n = and i8 %i.m, 63
  %i.o = or disjoint i8 %i.n, -128                ; 3 uses
  %i.p = lshr i32 %1, 6
  %i.q = trunc i32 %i.p to i8                     ; 2 uses
  %i.r = and i8 %i.q, 63
  %i.s = or disjoint i8 %i.r, -128                ; 2 uses
  %i.t = lshr i32 %1, 12
  %i.u = trunc i32 %i.t to i8                     ; 2 uses
  %i.v = and i8 %i.u, 63
  %i.w = or disjoint i8 %i.v, -128
  %i.x = lshr i32 %1, 18
  %i.y = trunc nuw nsw i32 %i.x to i8
  %i.z = or disjoint i8 %i.y, -16
  br i1 %i.l, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.k, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  %i.ab = or disjoint i8 %i.q, -64
  store i8 %i.ab, ptr %i.k, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.o, ptr %i.ac, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit

bb.h:                                             ; preds = %bb.e
  %i.ad = icmp samesign ult i32 %1, 65536
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = or disjoint i8 %i.u, -32
  store i8 %i.ae, ptr %i.k, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.s, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i8 %i.o, ptr %i.ag, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit

bb.j:                                             ; preds = %bb.h
  store i8 %i.z, ptr %i.k, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.w, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i8 %i.s, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  store i8 %i.o, ptr %i.aj, align 1
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.f, %bb.g, %bb.i, %bb.j
  %i.ak = add nuw i64 %.sroa.0.0.i, %i.b
  store i64 %i.ak, ptr %i.a, align 8, !alias.scope !23333
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_str(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !23336
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !23339, !noalias !23336, !noundef !4 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !23339, !noalias !23336, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !23339, !noalias !23336
  br label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !23339, !noalias !23336
  ret i1 false
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal void @_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher10write_i128(ptr noalias noundef align 16 captures(none) dereferenceable(48) %0, i128 noundef %1) unnamed_addr #17 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23343)
  %i.a = trunc i128 %1 to i64
  %i.b = lshr i128 %1, 64
  %i.c = trunc nuw i128 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !23343, !noundef !4
  %i.f = xor i64 %i.e, %i.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 16, !alias.scope !23343, !nonnull !4, !align !8, !noundef !4
  %i.i = load i64, ptr %i.h, align 8, !noalias !23343, !noundef !4
  %i.j = xor i64 %i.i, %i.c
  %i.k = zext i64 %i.f to i128
  %i.l = zext i64 %i.j to i128
  %i.m = mul nuw i128 %i.l, %i.k                  ; 2 uses
  %i.n = lshr i128 %i.m, 64
  %i.o = xor i128 %i.n, %i.m
  %i.p = trunc i128 %i.o to i64
  store i64 %i.p, ptr %i.d, align 8, !alias.scope !23343
  ret void
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal void @_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher10write_u128(ptr noalias noundef align 16 captures(none) dereferenceable(48) %0, i128 noundef %1) unnamed_addr #17 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23346)
  %i.a = trunc i128 %1 to i64
  %i.b = lshr i128 %1, 64
  %i.c = trunc nuw i128 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
end_hunk_6
