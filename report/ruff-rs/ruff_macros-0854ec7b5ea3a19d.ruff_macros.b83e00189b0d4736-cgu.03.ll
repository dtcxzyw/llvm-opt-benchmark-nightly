Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_macros-0854ec7b5ea3a19d.ruff_macros.b83e00189b0d4736-cgu.03?download=true
inline.NumInlined: 688
inline.NumDeleted: 239
begin_hunk_0_@_RNvNtCsfOIrz68VyyU_11ruff_macros9map_codes9map_codes:bb.a
bb.eq:                                            ; preds = %bb.ep
  %i.pc = extractvalue { ptr, ptr } %i.pb, 0      ; 8 uses
  %i.pd = extractvalue { ptr, ptr } %i.pb, 1      ; 3 uses
  %.not365 = icmp eq ptr %i.pc, null
  br i1 %.not365, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.pd) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iu)
  %i.pe = load ptr, ptr %i.pd, align 8, !noundef !4 ; 3 uses
  %.not422 = icmp eq ptr %i.pe, null
  br i1 %.not422, label %bb.ani, label %bb.anh

bb.es:                                            ; preds = %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hq)
  store i64 0, ptr %i.hq, align 8
  %i.pf = getelementptr inbounds nuw i8, ptr %i.hq, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.pf, align 8
  %i.pg = getelementptr inbounds nuw i8, ptr %i.hq, i64 16 ; 3 uses
  store i64 0, ptr %i.pg, align 8
  %i.ph = load ptr, ptr %i.km, align 8, !noundef !4 ; 3 uses
  %.not366 = icmp ne ptr %i.ph, null              ; 3 uses
  %i.pi = load i64, ptr %i.lt, align 8
  %i.pj = load i64, ptr %i.lu, align 8
  %.sroa.021.sroa.6.0 = zext i1 %.not366 to i64   ; 2 uses
  %.sroa.021.sroa.5.sroa.6.0 = select i1 %.not366, i64 %i.pi, i64 undef ; 2 uses
  %.sroa.522.0 = select i1 %.not366, i64 %i.pj, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hp)
  store i64 %.sroa.021.sroa.6.0, ptr %i.hp, align 8
  %.sroa.021.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  store ptr null, ptr %.sroa.021.sroa.5.0..sroa_idx, align 8
  %.sroa.021.sroa.5.sroa.5.0..sroa.021.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  store ptr %i.ph, ptr %.sroa.021.sroa.5.sroa.5.0..sroa.021.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.021.sroa.5.sroa.6.0..sroa.021.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  store i64 %.sroa.021.sroa.5.sroa.6.0, ptr %.sroa.021.sroa.5.sroa.6.0..sroa.021.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.021.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hp, i64 32
  store i64 %.sroa.021.sroa.6.0, ptr %.sroa.021.sroa.6.0..sroa_idx, align 8
  %.sroa.021.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hp, i64 40
  store ptr null, ptr %.sroa.021.sroa.7.0..sroa_idx, align 8
  %.sroa.021.sroa.7.sroa.5.0..sroa.021.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.hp, i64 48
  store ptr %i.ph, ptr %.sroa.021.sroa.7.sroa.5.0..sroa.021.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.021.sroa.7.sroa.6.0..sroa.021.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.hp, i64 56
  store i64 %.sroa.021.sroa.5.sroa.6.0, ptr %.sroa.021.sroa.7.sroa.6.0..sroa.021.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hp, i64 64
  store i64 %.sroa.522.0, ptr %.sroa.522.0..sroa_idx, align 8
  %i.pk = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %.sroa.09.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %.sroa.09.sroa.2.sroa.2.0..sroa.09.sroa.2.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %.sroa.09.sroa.2.sroa.3.0..sroa.09.sroa.2.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %.sroa.09.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.er, i64 32
  %.sroa.09.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.er, i64 40
  %.sroa.09.sroa.4.sroa.2.0..sroa.09.sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.er, i64 48
  %.sroa.09.sroa.4.sroa.3.0..sroa.09.sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.er, i64 56
  %i.pl = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.pm = getelementptr inbounds nuw i8, ptr %i.el, i64 16 ; 2 uses
  %.sroa.446.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %.sroa.647.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %.sroa.04.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %.sroa.04.sroa.5.sroa.5.0..sroa.04.sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %.sroa.04.sroa.5.sroa.6.0..sroa.04.sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %.sroa.04.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  %.sroa.04.sroa.7.sroa.5.0..sroa.04.sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 48
  %.sroa.04.sroa.7.sroa.6.0..sroa.04.sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 56
  %i.pn = getelementptr inbounds nuw i8, ptr %i.eo, i64 72
  %i.po = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.pp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %.sroa.027.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %.sroa.027.sroa.5.sroa.5.0..sroa.027.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %.sroa.027.sroa.5.sroa.6.0..sroa.027.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  %.sroa.027.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hn, i64 32
  %.sroa.027.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hn, i64 40
  %.sroa.027.sroa.7.sroa.5.0..sroa.027.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.hn, i64 48
  %.sroa.027.sroa.7.sroa.6.0..sroa.027.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.hn, i64 56
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hn, i64 64
  %i.pq = getelementptr inbounds nuw i8, ptr %i.hl, i64 16 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.ps = getelementptr inbounds nuw i8, ptr %i.hm, i64 16 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.hm, i64 8 ; 2 uses
  %.sroa.034.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %.sroa.034.sroa.5.sroa.5.0..sroa.034.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %.sroa.034.sroa.5.sroa.6.0..sroa.034.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.hd, i64 24
  %.sroa.034.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hd, i64 32
  %.sroa.034.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hd, i64 40
  %.sroa.034.sroa.7.sroa.5.0..sroa.034.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.hd, i64 48
  %.sroa.034.sroa.7.sroa.6.0..sroa.034.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.hd, i64 56
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hd, i64 64
  %i.pu = getelementptr inbounds nuw i8, ptr %i.hc, i64 24
  %i.pv = getelementptr inbounds nuw i8, ptr %i.ha, i64 8 ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.ha, i64 16 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.py = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %i.pz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.qb = getelementptr inbounds nuw i8, ptr %i.gr, i64 24 ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.gr, i64 8 ; 5 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.gz, i64 16 ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.gz, i64 8 ; 2 uses
  br label %bb.et

bb.et:                                            ; preds = %bb.ajh, %bb.es
  %i.qf = invoke { ptr, ptr } @_RNvXsk_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterNtCsghEUimwObfx_11proc_macro25IdentINtB5_8BTreeMapNtNtBb_6string6StringNtNtCsfOIrz68VyyU_11ruff_macros9map_codes4RuleEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB2f_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.hp)
          to label %bb.eu unwind label %.loopexit619 ; 2 uses

.body:                                            ; preds = %.loopexit619, %.loopexit.split-lp620, %.thread575, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8IntoIterNtNtBK_6string6StringINtNtBK_3vec3VecTNtNtCsfq6Q4Do6HaX_3syn4path4PathIB1V_NtNtB2f_4attr9AttributeEEEEECsfOIrz68VyyU_11ruff_macros.exit, %bb.ahg, %bb.wv, %bb.lc, %bb.ws, %.body.thread.i, %bb.fo
  %.pn419.pn = phi { ptr, i32 } [ %.pn408.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8IntoIterNtNtBK_6string6StringINtNtBK_3vec3VecTNtNtCsfq6Q4Do6HaX_3syn4path4PathIB1V_NtNtB2f_4attr9AttributeEEEEECsfOIrz68VyyU_11ruff_macros.exit ], [ %lpad.thr_comm.split-lp585, %bb.ahg ], [ %.pn382, %bb.fo ], [ %.pn134.i, %bb.lc ], [ %.pn.i, %.body.thread.i ], [ %.pn419578, %.thread575 ], [ %.pn134.pn157.i, %bb.ws ], [ %.pn142.pn.pn.pn.i, %bb.wv ], [ %lpad.loopexit621, %.loopexit619 ], [ %lpad.loopexit.split-lp622, %.loopexit.split-lp620 ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsghEUimwObfx_11proc_macro211TokenStreamEECsfOIrz68VyyU_11ruff_macros(ptr noalias noundef align 8 dereferenceable(24) %i.hq) #17
          to label %.thread561 unwind label %bb.ae

.loopexit619:                                     ; preds = %bb.et
  %lpad.loopexit621 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp620:                            ; preds = %bb.fm, %bb.la, %bb.wt, %bb.agv, %bb.lb, %bb.tw, %bb.wu, %bb.adk
  %lpad.loopexit.split-lp622 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.eu:                                            ; preds = %bb.et
  %i.qg = extractvalue { ptr, ptr } %i.qf, 0      ; 5 uses
  %.not367 = icmp eq ptr %i.qg, null
  br i1 %.not367, label %bb.fm, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.qh = extractvalue { ptr, ptr } %i.qf, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.qh) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ho)
  call void @llvm.experimental.noalias.scope.decl(metadata !1245)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.es), !noalias !1248
  store ptr null, ptr %i.es, align 8, !noalias !1248
  store i64 0, ptr %i.pk, align 8, !noalias !1248
  %i.qi = load ptr, ptr %i.qh, align 8, !alias.scope !1245, !noalias !1250, !noundef !4 ; 5 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qh, i64 8
  %.not.i = icmp ne ptr %i.qi, null               ; 2 uses
  %.sroa.07.sroa.0.0.i = zext i1 %.not.i to i64   ; 4 uses
  %i.qk = load <2 x i64>, ptr %i.qj, align 8, !alias.scope !1245, !noalias !1250
  %i.ql = insertelement <2 x i1> poison, i1 %.not.i, i64 0
  %i.qm = shufflevector <2 x i1> %i.ql, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.qn = select <2 x i1> %i.qm, <2 x i64> %i.qk, <2 x i64> <i64 undef, i64 0> ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.er), !noalias !1248
  store i64 %.sroa.07.sroa.0.0.i, ptr %i.er, align 8, !noalias !1248
  store ptr null, ptr %.sroa.09.sroa.2.0..sroa_idx.i, align 8, !noalias !1248
  store ptr %i.qi, ptr %.sroa.09.sroa.2.sroa.2.0..sroa.09.sroa.2.0..sroa_idx.sroa_idx.i, align 8, !noalias !1248
  %i.qo = extractelement <2 x i64> %i.qn, i64 0
  store i64 %i.qo, ptr %.sroa.09.sroa.2.sroa.3.0..sroa.09.sroa.2.0..sroa_idx.sroa_idx.i, align 8, !noalias !1248
  store i64 %.sroa.07.sroa.0.0.i, ptr %.sroa.09.sroa.3.0..sroa_idx.i, align 8, !noalias !1248
  store ptr null, ptr %.sroa.09.sroa.4.0..sroa_idx.i, align 8, !noalias !1248
  store ptr %i.qi, ptr %.sroa.09.sroa.4.sroa.2.0..sroa.09.sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !1248
  store <2 x i64> %i.qn, ptr %.sroa.09.sroa.4.sroa.3.0..sroa.09.sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !1248
  %i.qp = insertelement <2 x i64> %i.qn, i64 %.sroa.07.sroa.0.0.i, i64 1
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.backedge, %bb.ev
  %i.qq = invoke { ptr, ptr } @_RNvXsk_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterNtNtBb_6string6StringNtNtCsfOIrz68VyyU_11ruff_macros9map_codes4RuleENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1r_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.er)
          to label %bb.ew unwind label %.loopexit.split-lp.loopexit.i, !noalias !1248

.body.thread.i:                                   ; preds = %bb.fk, %bb.fi, %.body.thread106.i, %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit110.i
  %.pn.i = phi { ptr, i32 } [ %i.rk, %bb.fi ], [ %lpad.thr_comm.split-lp.i, %bb.fk ], [ %lpad.thr_comm.i, %.body.thread106.i ], [ %lpad.loopexit.i, %.loopexit110.i ], [ %lpad.loopexit111.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp112.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  invoke void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringINtNtB8_3vec3VecTNtNtCsfq6Q4Do6HaX_3syn4path4PathIB1p_NtNtB1J_4attr9AttributeEEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfOIrz68VyyU_11ruff_macros(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.es)
          to label %.body unwind label %bb.fl, !noalias !1248

.loopexit110.i:                                   ; preds = %.split.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

.loopexit.split-lp.loopexit.i:                    ; preds = %.loopexit.i
  %lpad.loopexit111.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %bb.fd, %bb.fa
  %lpad.loopexit.split-lp112.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

bb.ew:                                            ; preds = %.loopexit.i
  %i.qr = extractvalue { ptr, ptr } %i.qq, 0      ; 3 uses
  %.not86.i = icmp eq ptr %i.qr, null
  br i1 %.not86.i, label %bb.ahe, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 16
  %i.qt = load i64, ptr %i.qs, align 8, !noalias !1248, !noundef !4 ; 6 uses
  %i.qu = icmp sgt i64 %i.qt, -1
  call void @llvm.assume(i1 %i.qu)
  %.not.i131.i = icmp eq i64 %i.qt, 0
  br i1 %.not.i131.i, label %.loopexit.i.backedge, label %.lr.ph.i

.loopexit.i.backedge:                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtCsfq6Q4Do6HaX_3syn4path4PathIBY_NtNtB1y_4attr9AttributeEEEEECsfOIrz68VyyU_11ruff_macros.exit.i, %bb.ex
  br label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.ex
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qr, i64 8
  br label %bb.ey

bb.ey:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtCsfq6Q4Do6HaX_3syn4path4PathIBY_NtNtB1y_4attr9AttributeEEEEECsfOIrz68VyyU_11ruff_macros.exit.i, %.lr.ph.i
  %.sroa.0.0132.i = phi i64 [ 1, %.lr.ph.i ], [ %spec.select109.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtCsfq6Q4Do6HaX_3syn4path4PathIBY_NtNtB1y_4attr9AttributeEEEEECsfOIrz68VyyU_11ruff_macros.exit.i ] ; 9 uses
  %i.qw = icmp samesign uge i64 %.sroa.0.0132.i, %i.qt
  %not..i = icmp samesign ult i64 %.sroa.0.0132.i, %i.qt ; 2 uses
  %i.qx = zext i1 %not..i to i64
  %spec.select109.i = add nuw nsw i64 %.sroa.0.0132.i, %i.qx ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eq), !noalias !1248
  %i.qy = load ptr, ptr %i.qv, align 8, !noalias !1248, !nonnull !4, !noundef !4 ; 3 uses
  br i1 %not..i, label %bb.ez, label %.split.i.i

bb.ez:                                            ; preds = %bb.ey
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 %.sroa.0.0132.i
  %i.ra = load i8, ptr %i.qz, align 1, !alias.scope !1251, !noalias !1248, !noundef !4
  %i.rb = icmp sgt i8 %i.ra, -65
  br i1 %i.rb, label %.split.i.i, label %bb.fa

.split.i.i:                                       ; preds = %bb.ez, %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %i.el), !noalias !1248
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfOIrz68VyyU_11ruff_macros(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.el, i64 noundef %.sroa.0.0132.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.fc unwind label %.loopexit110.i, !noalias !1248

bb.fa:                                            ; preds = %bb.ez
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.qy, i64 noundef %i.qt, i64 noundef 0, i64 noundef %.sroa.0.0132.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #18
          to label %bb.fb unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !1248

bb.fb:                                            ; preds = %bb.fd, %bb.fa
  unreachable

bb.fc:                                            ; preds = %.split.i.i
  %i.rc = load i64, ptr %i.el, align 8, !range !436, !noalias !1248, !noundef !4
  %i.rd = trunc nuw i64 %i.rc to i1
  %i.re = load i64, ptr %i.pl, align 8, !range !1254, !noalias !1248, !noundef !4 ; 3 uses
  br i1 %i.rd, label %bb.fd, label %bb.fe, !prof !1255

bb.fd:                                            ; preds = %bb.fc
  %i.rf = load i64, ptr %i.pm, align 8, !noalias !1248
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.re, i64 %i.rf) #18
          to label %bb.fb unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !1248

bb.fe:                                            ; preds = %bb.fc
  %i.rg = load ptr, ptr %i.pm, align 8, !noalias !1248, !nonnull !4, !noundef !4 ; 2 uses
  %i.rh = icmp samesign ule i64 %.sroa.0.0132.i, %i.re
  call void @llvm.assume(i1 %i.rh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.el), !noalias !1248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.rg, ptr noundef nonnull align 1 dereferenceable(1) %i.qy, i64 %.sroa.0.0132.i, i1 false), !noalias !1248
  store i64 %i.re, ptr %i.eq, align 8, !noalias !1248
  store ptr %i.rg, ptr %.sroa.446.0..sroa_idx.i, align 8, !noalias !1248
  store i64 %.sroa.0.0132.i, ptr %.sroa.647.0..sroa_idx.i, align 8, !noalias !1248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ep), !noalias !1248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eo), !noalias !1248
  store i64 %.sroa.07.sroa.0.0.i, ptr %i.eo, align 8, !noalias !1248
  store ptr null, ptr %.sroa.04.sroa.5.0..sroa_idx.i, align 8, !noalias !1248
  store ptr %i.qi, ptr %.sroa.04.sroa.5.sroa.5.0..sroa.04.sroa.5.0..sroa_idx.sroa_idx.i, align 8, !noalias !1248
  store <2 x i64> %i.qp, ptr %.sroa.04.sroa.5.sroa.6.0..sroa.04.sroa.5.0..sroa_idx.sroa_idx.i, align 8, !noalias !1248
  store ptr null, ptr %.sroa.04.sroa.7.0..sroa_idx.i, align 8, !noalias !1248
  store ptr %i.qi, ptr %.sroa.04.sroa.7.sroa.5.0..sroa.04.sroa.7.0..sroa_idx.sroa_idx.i, align 8, !noalias !1248
  store <2 x i64> %i.qn, ptr %.sroa.04.sroa.7.sroa.6.0..sroa.04.sroa.7.0..sroa_idx.sroa_idx.i, align 8, !noalias !1248
  store ptr %i.eq, ptr %i.pn, align 8, !noalias !1248
  invoke void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtCsfq6Q4Do6HaX_3syn4path4PathIBR_NtNtB15_4attr9AttributeEEEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtNtNtB6_11collections5btree3map4IterNtNtB6_6string6StringNtNtCsfOIrz68VyyU_11ruff_macros9map_codes4RuleENCNvB4y_15rules_by_prefix0EE9from_iterB4A_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ep, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.eo)
          to label %bb.ff unwind label %bb.fk, !noalias !1248

.body.thread106.i:                                ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtCsfq6Q4Do6HaX_3syn4path4PathIBC_NtNtB1c_4attr9AttributeEEEECsfOIrz68VyyU_11ruff_macros.exit.i.i, %bb.ff
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

bb.ff:                                            ; preds = %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eo), !noalias !1248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.en), !noalias !1248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.em), !noalias !1248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.em, ptr noundef nonnull align 8 dereferenceable(24) %i.eq, i64 24, i1 false), !noalias !1248
  invoke void @_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringINtNtBb_3vec3VecTNtNtCsfq6Q4Do6HaX_3syn4path4PathIB1s_NtNtB1M_4attr9AttributeEEEE6insertCsfOIrz68VyyU_11ruff_macros(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.en, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.es, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.em, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ep)
          to label %bb.fg unwind label %.body.thread106.i, !noalias !1248

bb.fg:                                            ; preds = %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %i.em), !noalias !1248
  %i.ri = load i64, ptr %i.en, align 8, !range !70, !alias.scope !1256, !noalias !1248, !noundef !4
  %i.rj = icmp eq i64 %i.ri, -1
  br i1 %i.rj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtCsfq6Q4Do6HaX_3syn4path4PathIBY_NtNtB1y_4attr9AttributeEEEEECsfOIrz68VyyU_11ruff_macros.exit.i, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtCsfq6Q4Do6HaX_3syn4path4PathIBv_NtNtBJ_4attr9AttributeEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfOIrz68VyyU_11ruff_macros(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.en)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtCsfq6Q4Do6HaX_3syn4path4PathIBC_NtNtB1c_4attr9AttributeEEEECsfOIrz68VyyU_11ruff_macros.exit.i.i unwind label %bb.fi, !noalias !1248

bb.fi:                                            ; preds = %bb.fh
  %i.rk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtCsfq6Q4Do6HaX_3syn4path4PathINtNtB7_3vec3VecNtNtBQ_4attr9AttributeEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfOIrz68VyyU_11ruff_macros(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.en)
          to label %.body.thread.i unwind label %bb.fj, !noalias !1248

bb.fj:                                            ; preds = %bb.fi
  %i.rl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16, !noalias !1248
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtCsfq6Q4Do6HaX_3syn4path4PathIBC_NtNtB1c_4attr9AttributeEEEECsfOIrz68VyyU_11ruff_macros.exit.i.i: ; preds = %bb.fh
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtCsfq6Q4Do6HaX_3syn4path4PathINtNtB7_3vec3VecNtNtBQ_4attr9AttributeEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsfOIrz68VyyU_11ruff_macros(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.en)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtCsfq6Q4Do6HaX_3syn4path4PathIBY_NtNtB1y_4attr9AttributeEEEEECsfOIrz68VyyU_11ruff_macros.exit.i unwind label %.body.thread106.i, !noalias !1248

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtCsfq6Q4Do6HaX_3syn4path4PathIBY_NtNtB1y_4attr9AttributeEEEEECsfOIrz68VyyU_11ruff_macros.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtCsfq6Q4Do6HaX_3syn4path4PathIBC_NtNtB1c_4attr9AttributeEEEECsfOIrz68VyyU_11ruff_macros.exit.i.i, %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.en), !noalias !1248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ep), !noalias !1248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eq), !noalias !1248
  %.not.i.i450 = icmp samesign ugt i64 %spec.select109.i, %i.qt
  %or.cond.i = select i1 %i.qw, i1 true, i1 %.not.i.i450
  br i1 %or.cond.i, label %.loopexit.i.backedge, label %bb.ey

bb.fk:                                            ; preds = %bb.fe
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsfOIrz68VyyU_11ruff_macros(ptr noalias noundef align 8 dereferenceable(24) %i.eq) #17
          to label %.body.thread.i unwind label %bb.fl, !noalias !1248

bb.fl:                                            ; preds = %bb.fk, %.body.thread.i
  %i.rm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16, !noalias !1248
  unreachable

bb.fm:                                            ; preds = %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gc)
  invoke void @_RNvMCsghEUimwObfx_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.gc)
          to label %bb.fn unwind label %.loopexit.split-lp620

bb.fn:                                            ; preds = %bb.fm
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_ident(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.gc, ptr noalias noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 4)
          to label %bb.fq unwind label %bb.fp

bb.fo:                                            ; preds = %bb.ft, %bb.fp
  %.pn382 = phi { ptr, i32 } [ %i.rn, %bb.fp ], [ %.pn380, %bb.ft ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsfOIrz68VyyU_11ruff_macros(ptr noalias noundef align 8 dereferenceable(32) %i.gc) #17
          to label %.body unwind label %bb.ae

bb.fp:                                            ; preds = %bb.kz, %bb.fr, %bb.fq, %bb.fn
  %i.rn = landingpad { ptr, i32 }
          cleanup
  br label %bb.fo

bb.fq:                                            ; preds = %bb.fn
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_ident(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.gc, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 14)
          to label %bb.fr unwind label %bb.fp

bb.fr:                                            ; preds = %bb.fq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ga)
  invoke void @_RNvMCsghEUimwObfx_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ga)
          to label %bb.fs unwind label %bb.fp

bb.fs:                                            ; preds = %bb.fr
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_ident(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ga, ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 3)
          to label %bb.fv unwind label %bb.fu

bb.ft:                                            ; preds = %bb.kb, %bb.jm, %bb.jg, %bb.ha, %bb.gd, %bb.fx, %bb.fu
  %.pn380 = phi { ptr, i32 } [ %i.ro, %bb.fu ], [ %.pn378, %bb.kb ], [ %i.sd, %bb.jm ], [ %i.sc, %bb.jg ], [ %.pn374, %bb.ha ], [ %i.rq, %bb.gd ], [ %i.rp, %bb.fx ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsfOIrz68VyyU_11ruff_macros(ptr noalias noundef align 8 dereferenceable(32) %i.ga) #17
          to label %bb.fo unwind label %bb.ae

bb.fu:                                            ; preds = %bb.ky, %bb.jz, %bb.jy, %bb.jx, %bb.jw, %bb.jv, %bb.ju, %bb.jt, %bb.js, %bb.jr, %bb.jq, %bb.jp, %bb.jo, %bb.jk, %bb.jj, %bb.ji, %bb.jh, %bb.je, %bb.jd, %bb.jc, %bb.gy, %bb.gx, %bb.gw, %bb.gv, %bb.gu, %bb.gt, %bb.gs, %bb.gr, %bb.gq, %bb.gp, %bb.go, %bb.gn, %bb.gm, %bb.gb, %bb.ga, %bb.fz, %bb.fy, %bb.fv, %bb.fs
  %i.ro = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

bb.fv:                                            ; preds = %bb.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fy)
  invoke void @_RNvMCsghEUimwObfx_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.fy)
          to label %bb.fw unwind label %bb.fu

bb.fw:                                            ; preds = %bb.fv
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_ident(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.fy, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 5)
          to label %bb.fy unwind label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.rp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsfOIrz68VyyU_11ruff_macros(ptr noalias noundef align 8 dereferenceable(32) %i.fy) #17
          to label %bb.ft unwind label %bb.ae

bb.fy:                                            ; preds = %bb.fw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fz, ptr noundef nonnull align 8 dereferenceable(32) %i.fy, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fy)
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_group(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ga, i8 noundef 0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.fz)
          to label %bb.fz unwind label %bb.fu

bb.fz:                                            ; preds = %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fz)
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_ident(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ga, ptr noalias noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 2)
          to label %bb.ga unwind label %bb.fu

bb.ga:                                            ; preds = %bb.fz
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_ident(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ga, ptr noalias noundef nonnull readonly captures(address, read_provenance) @115, i64 noundef 5)
          to label %bb.gb unwind label %bb.fu

bb.gb:                                            ; preds = %bb.ga
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fw)
  invoke void @_RNvMCsghEUimwObfx_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.fw)
          to label %bb.gc unwind label %bb.fu

bb.gc:                                            ; preds = %bb.gb
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_ident(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.fw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @111, i64 noundef 6)
          to label %bb.ge unwind label %bb.gd

bb.gd:                                            ; preds = %bb.gl, %bb.gk, %bb.gj, %bb.gi, %bb.gh, %bb.gg, %bb.gf, %bb.ge, %bb.gc
  %i.rq = landingpad { ptr, i32 }
          cleanup
end_hunk_0
