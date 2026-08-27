Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_macros-36ad9e1c078c1756.ruff_macros.4247d776ce4985bc-cgu.00?download=true
inline.NumInlined: 218
inline.NumDeleted: 146
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RINvMsN_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsghEUimwObfx_11proc_macro25IdentINtNtB8_3map8BTreeMapNtNtBc_6string6StringNtNtCs5GOeAjNCyUy_11ruff_macros9map_codes4RuleENtB1m_4LeafENtB1m_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtB2e_5entryINtB4K_11VacantEntryB1C_B2b_E12insert_entry0EB2V_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !21
  %i.ev = invoke align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtCsghEUimwObfx_11proc_macro25IdentINtNtBK_3map8BTreeMapNtNtB6_6string6StringNtNtCs5GOeAjNCyUy_11ruff_macros9map_codes4RuleEEE13new_uninit_inB2M_()
          to label %.noexc.i29 unwind label %.body.thread43.i.loopexit, !noalias !21 ; 11 uses

.noexc.i29:                                       ; preds = %bb.al
  store ptr null, ptr %i.ev, align 8, !noalias !27
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 538 ; 3 uses
  store i16 0, ptr %i.ew, align 2, !noalias !27
  store ptr %i.ev, ptr %i.i, align 8, !noalias !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !27
  %i.ex = load i16, ptr %i.de, align 2, !noalias !28
  %i.ey = zext i16 %i.ex to i64
  %i.ez = xor i64 %.sroa.06.0.i, -1
  %i.fa = add nsw i64 %i.ey, %i.ez                ; 4 uses
  %i.fb = trunc i64 %i.fa to i16
  store i16 %i.fb, ptr %i.ew, align 2, !noalias !28
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.469.0.copyload, i64 8 ; 2 uses
  %i.fd = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %.sroa.06.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.fd, i64 24, i1 false), !noalias !28
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.469.0.copyload, i64 272 ; 2 uses
  %i.ff = getelementptr inbounds nuw [24 x i8], ptr %i.fe, i64 %.sroa.06.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.ff, i64 24, i1 false), !noalias !28
  %i.fg = icmp ult i64 %i.fa, 12
  br i1 %i.fg, label %bb.as, label %bb.am

bb.am:                                            ; preds = %.noexc.i29
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 0, i64 %i.fa, i64 11, ptr nonnull align 8 @8) #13
          to label %bb.ao unwind label %bb.an, !noalias !28

bb.an:                                            ; preds = %bb.am
  %i.fh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtCs5GOeAjNCyUy_11ruff_macros9map_codes4RuleEEB1Y_(ptr nonnull align 8 %i.f) #14
          to label %bb.aq unwind label %bb.ap, !noalias !28

bb.ao:                                            ; preds = %bb.am
  unreachable

bb.ap:                                            ; preds = %bb.aq, %bb.an
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15, !noalias !28
  unreachable

bb.aq:                                            ; preds = %bb.an
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.g) #14
          to label %.thread.i.i30 unwind label %bb.ap, !noalias !28

bb.ar:                                            ; preds = %.loopexit.split-lp.i.i
  br i1 %.sroa.0.1.i.i, label %.thread.i.i30, label %.body.thread.i

bb.as:                                            ; preds = %.noexc.i29
  %i.fj = add nuw nsw i64 %.sroa.06.0.i, 1        ; 2 uses
  %i.fk = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.fm = mul nuw nsw i64 %i.fa, 24               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fl, ptr nonnull readonly align 8 %i.fk, i64 %i.fm, i1 false), !noalias !28
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ev, i64 272
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %i.fe, i64 %i.fj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fn, ptr nonnull readonly align 8 %i.fo, i64 %i.fm, i1 false), !noalias !28
  %i.fp = trunc nuw nsw i64 %.sroa.06.0.i to i16
  store i16 %i.fp, ptr %i.de, align 2, !noalias !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !27
  %i.fq = load i16, ptr %i.ew, align 2, !noalias !27 ; 2 uses
  %i.fr = zext i16 %i.fq to i64                   ; 2 uses
  %i.fs = add nuw nsw i64 %i.fr, 1                ; 3 uses
  %i.ft = icmp ult i16 %i.fq, 12
  br i1 %i.ft, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ev, i64 544 ; 2 uses
  %i.fv = zext i16 %i.df to i64
  %i.fw = sub nuw nsw i64 %i.fv, %.sroa.06.0.i
  %i.fx = icmp eq i64 %i.fw, %i.fs
  br i1 %i.fx, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr nonnull @6, i64 40, ptr nonnull align 8 @7) #13
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i.i.loopexit.split-lp, !noalias !27

.noexc.i.i:                                       ; preds = %bb.au
  unreachable

bb.av:                                            ; preds = %bb.as
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 0, i64 %i.fs, i64 12, ptr nonnull align 8 @5) #13
          to label %bb.az unwind label %.loopexit.split-lp.i.i.loopexit.split-lp, !noalias !27

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i.loopexit:                  ; preds = %bb.ax
  %lpad.loopexit112 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i.loopexit.split-lp:         ; preds = %bb.au, %bb.av
  %lpad.loopexit.split-lp113 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i:                           ; preds = %.loopexit.split-lp.i.i.loopexit, %.loopexit.split-lp.i.i.loopexit.split-lp, %.loopexit.i.i
  %.sroa.0.1.i.i = phi i1 [ false, %.loopexit.i.i ], [ false, %.loopexit.split-lp.i.i.loopexit ], [ true, %.loopexit.split-lp.i.i.loopexit.split-lp ]
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit112, %.loopexit.split-lp.i.i.loopexit ], [ %lpad.loopexit.split-lp113, %.loopexit.split-lp.i.i.loopexit.split-lp ] ; 2 uses
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCsghEUimwObfx_11proc_macro25IdentINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtB1k_6string6StringNtNtCs5GOeAjNCyUy_11ruff_macros9map_codes4RuleEEEB2z_(ptr nonnull align 8 %i.h) #14
          to label %bb.ar unwind label %bb.ba, !noalias !27

bb.aw:                                            ; preds = %bb.at
  %i.fy = getelementptr i8, ptr %.sroa.469.0.copyload, i64 552
  %i.fz = getelementptr [8 x i8], ptr %i.fy, i64 %.sroa.06.0.i
  %i.ga = shl nuw nsw i64 %i.fs, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fu, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.fz, i64 %i.ga, i1 false), !noalias !27
  %.not.i.i31 = icmp eq i64 %i.da, 0
  br i1 %.not.i.i31, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !27
  store i64 0, ptr %i.e, align 8, !noalias !27
  store i64 %i.fr, ptr %.sroa.23.0..sroa_idx.i.i.i, align 8, !noalias !27
  store i8 0, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !27
  %i.gb = invoke { i64, i64 } @_RNvXsd_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCsiwsGNJdlvuS_9itertools(ptr nonnull align 8 %i.e)
          to label %.noexc5.i.i unwind label %.loopexit.split-lp.i.i.loopexit, !noalias !27 ; 2 uses

.noexc5.i.i:                                      ; preds = %bb.ax
  %i.gc = extractvalue { i64, i64 } %i.gb, 0
  %i.gd = trunc nuw i64 %i.gc to i1
  br i1 %i.gd, label %.lr.ph.i.i.i.i, label %.loopexit47.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc5.i.i, %.noexc6.i.i
  %i.ge = phi { i64, i64 } [ %i.gk, %.noexc6.i.i ], [ %i.gb, %.noexc5.i.i ]
  %i.gf = extractvalue { i64, i64 } %i.ge, 1      ; 2 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.gf
  %i.gh = load ptr, ptr %i.gg, align 8, !noalias !27 ; 2 uses
  store ptr %i.ev, ptr %i.gh, align 8, !noalias !27
  %i.gi = trunc i64 %i.gf to i16
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 536
  store i16 %i.gi, ptr %i.gj, align 8, !noalias !27
  %i.gk = invoke { i64, i64 } @_RNvXsd_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCsiwsGNJdlvuS_9itertools(ptr nonnull align 8 %i.e)
          to label %.noexc6.i.i unwind label %.loopexit.i.i, !noalias !27 ; 2 uses

.noexc6.i.i:                                      ; preds = %.lr.ph.i.i.i.i
  %i.gl = extractvalue { i64, i64 } %i.gk, 0
  %i.gm = trunc nuw i64 %i.gl to i1
  br i1 %i.gm, label %.lr.ph.i.i.i.i, label %.loopexit47.i

bb.ay:                                            ; preds = %bb.aw
  call void @_RNvNvMse_NtNtCs4NRVxsYgnAr_4core3num7nonzeroINtB7_7NonZeropE13new_unchecked18precondition_checkCs5GOeAjNCyUy_11ruff_macros(ptr nonnull align 8 @4) #16, !noalias !27
  unreachable

bb.az:                                            ; preds = %bb.av
  unreachable

bb.ba:                                            ; preds = %.thread.i.i30, %.loopexit.split-lp.i.i
  %i.gn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15, !noalias !27
  unreachable

.thread.i.i30:                                    ; preds = %bb.ar, %bb.aq
  %.pn10.i.i = phi { ptr, i32 } [ %lpad.phi.i.i, %bb.ar ], [ %i.fh, %bb.aq ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtBG_11collections5btree4node12InternalNodeNtCsghEUimwObfx_11proc_macro25IdentINtNtB1e_3map8BTreeMapNtNtBG_6string6StringNtNtCs5GOeAjNCyUy_11ruff_macros9map_codes4RuleEEEEB3h_(ptr nonnull align 8 %i.i) #14
          to label %.body.thread.i unwind label %bb.ba, !noalias !27

.loopexit47.i:                                    ; preds = %.noexc6.i.i, %.noexc5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false), !noalias !21
  store ptr %.sroa.469.0.copyload, ptr %i.ct, align 8, !alias.scope !24, !noalias !21
  store i64 %i.da, ptr %i.cu, align 8, !alias.scope !24, !noalias !21
  store ptr %i.ev, ptr %i.cv, align 8, !alias.scope !24, !noalias !21
  store i64 %i.da, ptr %i.cw, align 8, !alias.scope !24, !noalias !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !21
  %spec.select.i32 = select i1 %.sroa.03.0.i, ptr %i.ev, ptr %.sroa.469.0.copyload ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !noalias !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.go = getelementptr inbounds nuw i8, ptr %spec.select.i32, i64 538 ; 2 uses
  %i.gp = load i16, ptr %i.go, align 2, !noalias !21 ; 2 uses
  %i.gq = zext i16 %i.gp to i64                   ; 4 uses
  %i.gr = add i16 %i.gp, 1
  %i.gs = getelementptr inbounds nuw i8, ptr %spec.select.i32, i64 8 ; 2 uses
  %i.gt = add nsw i64 %.sroa.5.0.i28, 1           ; 6 uses
  %.not.i10.i = icmp ugt i64 %i.gt, %i.gq
  %i.gu = getelementptr inbounds nuw [24 x i8], ptr %i.gs, i64 %.sroa.5.0.i28 ; 3 uses
  br i1 %.not.i10.i, label %.thread.i, label %bb.bb

.thread.i:                                        ; preds = %.loopexit47.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gu, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !noalias !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !21
  br label %bb.bc

bb.bb:                                            ; preds = %.loopexit47.i
  %i.gv = getelementptr inbounds nuw [24 x i8], ptr %i.gs, i64 %i.gt
  %i.gw = sub nsw i64 %i.gq, %.sroa.5.0.i28
  %i.gx = mul nuw nsw i64 %i.gw, 24               ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gv, ptr nonnull align 8 %i.gu, i64 %i.gx, i1 false), !noalias !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gu, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !21
  %i.gy = getelementptr inbounds nuw i8, ptr %spec.select.i32, i64 272 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !21
  %i.gz = getelementptr inbounds nuw [24 x i8], ptr %i.gy, i64 %.sroa.5.0.i28
  %i.ha = getelementptr inbounds nuw [24 x i8], ptr %i.gy, i64 %i.gt
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ha, ptr nonnull align 8 %i.gz, i64 %i.gx, i1 false), !noalias !21
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.thread.i
  %i.hb = getelementptr inbounds nuw i8, ptr %spec.select.i32, i64 272
  %i.hc = getelementptr inbounds nuw [24 x i8], ptr %i.hb, i64 %.sroa.5.0.i28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hc, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !21
  %i.hd = add nuw nsw i64 %i.gq, 2                ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %spec.select.i32, i64 544 ; 4 uses
  %i.hf = add nsw i64 %.sroa.5.0.i28, 2           ; 2 uses
  %i.hg = icmp ugt i64 %i.hd, %i.hf
  br i1 %i.hg, label %bb.bd, label %.noexc.i11.i

bb.bd:                                            ; preds = %bb.bc
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.gt
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.hf
  %i.hj = sub nsw i64 %i.gq, %.sroa.5.0.i28
  %i.hk = shl nsw i64 %i.hj, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hi, ptr nonnull align 8 %i.hh, i64 %i.hk, i1 false), !noalias !21
  br label %.noexc.i11.i

.noexc.i11.i:                                     ; preds = %bb.bd, %bb.bc
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.gt
  store ptr %.sroa.671.0.copyload289304, ptr %i.hl, align 8, !noalias !21
  store i16 %i.gr, ptr %i.go, align 2, !noalias !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !21
  store i64 %i.gt, ptr %i.c, align 8, !noalias !21
  store i64 %i.hd, ptr %i.cx, align 8, !noalias !21
  %i.hm = invoke { i64, i64 } @_RNvXs4_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCsfcggljOhZkm_12regex_syntax(ptr nonnull align 8 %i.c)
          to label %.noexc13.i unwind label %.loopexit.split-lp.i, !noalias !21 ; 2 uses

.noexc13.i:                                       ; preds = %.noexc.i11.i
  %i.hn = extractvalue { i64, i64 } %i.hm, 0
  %i.ho = trunc nuw i64 %i.hn to i1
  br i1 %i.ho, label %.lr.ph.i.i.i, label %.loopexit

.lr.ph.i.i.i:                                     ; preds = %.noexc13.i, %.noexc14.i
  %i.hp = phi { i64, i64 } [ %i.hv, %.noexc14.i ], [ %i.hm, %.noexc13.i ]
  %i.hq = extractvalue { i64, i64 } %i.hp, 1      ; 2 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.hq
  %i.hs = load ptr, ptr %i.hr, align 8, !noalias !21 ; 2 uses
  store ptr %spec.select.i32, ptr %i.hs, align 8, !noalias !21
  %i.ht = trunc i64 %i.hq to i16
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 536
  store i16 %i.ht, ptr %i.hu, align 8, !noalias !21
  %i.hv = invoke { i64, i64 } @_RNvXs4_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCsfcggljOhZkm_12regex_syntax(ptr nonnull align 8 %i.c)
          to label %.noexc14.i unwind label %.loopexit.i, !noalias !21 ; 2 uses

.noexc14.i:                                       ; preds = %.lr.ph.i.i.i
  %i.hw = extractvalue { i64, i64 } %i.hv, 0
  %i.hx = trunc nuw i64 %i.hw to i1
  br i1 %i.hx, label %.lr.ph.i.i.i, label %.loopexit

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

.loopexit.split-lp.i:                             ; preds = %.noexc.i11.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.be:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree4node11SplitResultNtCsghEUimwObfx_11proc_macro25IdentINtNtBG_3map8BTreeMapNtNtBK_6string6StringNtNtCs5GOeAjNCyUy_11ruff_macros9map_codes4RuleENtNtBE_6marker8InternalEEB2X_(ptr nonnull align 8 %i.l) #14
          to label %.critedge24 unwind label %bb.bf, !noalias !21

bb.bf:                                            ; preds = %bb.bg, %.body.thread.i, %bb.be
  %i.hy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15, !noalias !21
  unreachable

.body.thread43.i.loopexit:                        ; preds = %bb.al
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

.body.thread43.i.loopexit.split-lp:               ; preds = %bb.ab
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

.body.thread.i:                                   ; preds = %.body.thread43.i.loopexit, %.body.thread43.i.loopexit.split-lp, %.thread.i.i30, %bb.ar
  %.pn37.i = phi { ptr, i32 } [ %.pn10.i.i, %.thread.i.i30 ], [ %lpad.phi.i.i, %bb.ar ], [ %lpad.loopexit, %.body.thread43.i.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread43.i.loopexit.split-lp ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtCs5GOeAjNCyUy_11ruff_macros9map_codes4RuleEEB1Y_(ptr nonnull align 8 %i.y) #14
          to label %bb.bg unwind label %bb.bf, !noalias !21

bb.bg:                                            ; preds = %.body.thread.i
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.z) #14
          to label %.critedge24 unwind label %bb.bf, !noalias !21

.loopexit:                                        ; preds = %.noexc14.i, %.noexc13.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.063, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false)
  %.sroa.264.0.copyload = load i8, ptr %.sroa.264.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.467, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.467.0..sroa_idx, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.not20 = icmp eq i8 %.sroa.264.0.copyload, -1
  br i1 %.not20, label %.loopexit115, label %bb.bh

bb.bh:                                            ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0458, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.063, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.467, i64 31, i1 false)
  %i.hz = load ptr, ptr %.sroa.469.0.copyload, align 8, !noalias !18 ; 2 uses
  %.not.i = icmp eq ptr %i.hz, null
  br i1 %.not.i, label %._crit_edge, label %bb.z

.loopexit115:                                     ; preds = %.loopexit, %.thread105, %bb.x, %.thread, %._crit_edge
  %spec.select.i.sink = phi ptr [ %spec.select.i, %bb.x ], [ %spec.select.i, %._crit_edge ], [ %i.cl, %.thread ], [ %spec.select.i, %.thread105 ], [ %spec.select.i, %.loopexit ]
  %spec.select37.i.sink = phi i64 [ %spec.select37.i, %bb.x ], [ %spec.select37.i, %._crit_edge ], [ %i.cn, %.thread ], [ %spec.select37.i, %.thread105 ], [ %spec.select37.i, %.loopexit ]
  %.sroa.5.0.i.sink = phi i64 [ %.sroa.5.0.i, %bb.x ], [ %.sroa.5.0.i, %._crit_edge ], [ %i.am, %.thread ], [ %.sroa.5.0.i, %.thread105 ], [ %.sroa.5.0.i, %.loopexit ]
  store ptr %spec.select.i.sink, ptr %0, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select37.i.sink, ptr %i.ia, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0.i.sink, ptr %i.ib, align 8
  ret void

bb.bi:                                            ; preds = %bb.z
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtCs5GOeAjNCyUy_11ruff_macros9map_codes4RuleEEB1Y_(ptr nonnull align 8 %i.y) #14
          to label %bb.bk unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bi
  %i.ic = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.bk:                                            ; preds = %bb.bi
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.z) #14
          to label %.critedge24 unwind label %bb.bj

bb.bl:                                            ; preds = %bb.a
  %i.id = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtCs5GOeAjNCyUy_11ruff_macros9map_codes4RuleEEB1Y_(ptr nonnull align 8 %i.aa) #14
          to label %bb.bm unwind label %bb.bj

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.ab) #14
          to label %.critedge24 unwind label %bb.bj

.critedge24:                                      ; preds = %bb.bk, %bb.be, %bb.bg, %bb.w, %bb.bm
  %.pn.pn = phi { ptr, i32 } [ %i.id, %bb.bm ], [ %.pn.ph.i, %bb.w ], [ %lpad.phi.i, %bb.be ], [ %lpad.thr_comm.split-lp, %bb.bk ], [ %.pn37.i, %bb.bg ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsN_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtB8_3set8BTreeSetB1C_ENtB1m_4LeafENtB1m_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3v_11VacantEntryB1C_B1X_E12insert_entry0ECs5GOeAjNCyUy_11ruff_macros(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1, ptr nofree readonly align 8 captures(none) %2, ptr nofree readonly align 8 captures(none) %3, ptr align 8 %4, ptr %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [80 x i8], align 8                ; 11 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.472 = alloca [40 x i8], align 8          ; 6 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 5 uses
  %i.x = alloca [80 x i8], align 8                ; 7 uses
  %i.y = alloca [24 x i8], align 8                ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.463 = alloca [40 x i8], align 8          ; 2 uses
  %i.aa = alloca [24 x i8], align 8               ; 5 uses
  %i.ab = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.4 = alloca [40 x i8], align 8            ; 2 uses
  %.sroa.4451 = alloca [40 x i8], align 8         ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  invoke void @_RNvXs2_NtCscdodAO9FK5_5alloc5allocNtB5_6GlobalNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs5GOeAjNCyUy_11ruff_macros(ptr nonnull %i.a)
end_hunk_0
begin_hunk_1_@_RINvMsN_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtB8_3set8BTreeSetB1C_ENtB1m_4LeafENtB1m_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3v_11VacantEntryB1C_B1X_E12insert_entry0ECs5GOeAjNCyUy_11ruff_macros:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !49
  %i.ev = invoke align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringINtNtBK_3set8BTreeSetB1t_EEE13new_uninit_inCs5GOeAjNCyUy_11ruff_macros()
          to label %.noexc.i29 unwind label %.body.thread43.i.loopexit, !noalias !49 ; 11 uses

.noexc.i29:                                       ; preds = %bb.al
  store ptr null, ptr %i.ev, align 8, !noalias !55
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 538 ; 3 uses
  store i16 0, ptr %i.ew, align 2, !noalias !55
  store ptr %i.ev, ptr %i.i, align 8, !noalias !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !55
  %i.ex = load i16, ptr %i.de, align 2, !noalias !56
  %i.ey = zext i16 %i.ex to i64
  %i.ez = xor i64 %.sroa.06.0.i, -1
  %i.fa = add nsw i64 %i.ey, %i.ez                ; 4 uses
  %i.fb = trunc i64 %i.fa to i16
  store i16 %i.fb, ptr %i.ew, align 2, !noalias !56
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.465.0.copyload, i64 8 ; 2 uses
  %i.fd = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %.sroa.06.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.fd, i64 24, i1 false), !noalias !56
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.465.0.copyload, i64 272 ; 2 uses
  %i.ff = getelementptr inbounds nuw [24 x i8], ptr %i.fe, i64 %.sroa.06.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.ff, i64 24, i1 false), !noalias !56
  %i.fg = icmp ult i64 %i.fa, 12
  br i1 %i.fg, label %bb.as, label %bb.am

bb.am:                                            ; preds = %.noexc.i29
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 0, i64 %i.fa, i64 11, ptr nonnull align 8 @8) #13
          to label %bb.ao unwind label %bb.an, !noalias !56

bb.an:                                            ; preds = %bb.am
  %i.fh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3set8BTreeSetNtNtBK_6string6StringEECs5GOeAjNCyUy_11ruff_macros(ptr nonnull align 8 %i.f) #14
          to label %bb.aq unwind label %bb.ap, !noalias !56

bb.ao:                                            ; preds = %bb.am
  unreachable

bb.ap:                                            ; preds = %bb.aq, %bb.an
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15, !noalias !56
  unreachable

bb.aq:                                            ; preds = %bb.an
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs4h2pZbAM0ZT_4heck(ptr nonnull align 8 %i.g) #14
          to label %.thread.i.i30 unwind label %bb.ap, !noalias !56

bb.ar:                                            ; preds = %.loopexit.split-lp.i.i
  br i1 %.sroa.0.1.i.i, label %.thread.i.i30, label %.body.thread.i

bb.as:                                            ; preds = %.noexc.i29
  %i.fj = add nuw nsw i64 %.sroa.06.0.i, 1        ; 2 uses
  %i.fk = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.fm = mul nuw nsw i64 %i.fa, 24               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fl, ptr nonnull readonly align 8 %i.fk, i64 %i.fm, i1 false), !noalias !56
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ev, i64 272
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %i.fe, i64 %i.fj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fn, ptr nonnull readonly align 8 %i.fo, i64 %i.fm, i1 false), !noalias !56
  %i.fp = trunc nuw nsw i64 %.sroa.06.0.i to i16
  store i16 %i.fp, ptr %i.de, align 2, !noalias !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !55
  %i.fq = load i16, ptr %i.ew, align 2, !noalias !55 ; 2 uses
  %i.fr = zext i16 %i.fq to i64                   ; 2 uses
  %i.fs = add nuw nsw i64 %i.fr, 1                ; 3 uses
  %i.ft = icmp ult i16 %i.fq, 12
  br i1 %i.ft, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ev, i64 544 ; 2 uses
  %i.fv = zext i16 %i.df to i64
  %i.fw = sub nuw nsw i64 %i.fv, %.sroa.06.0.i
  %i.fx = icmp eq i64 %i.fw, %i.fs
  br i1 %i.fx, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr nonnull @6, i64 40, ptr nonnull align 8 @7) #13
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i.i.loopexit.split-lp, !noalias !55

.noexc.i.i:                                       ; preds = %bb.au
  unreachable

bb.av:                                            ; preds = %bb.as
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 0, i64 %i.fs, i64 12, ptr nonnull align 8 @5) #13
          to label %bb.az unwind label %.loopexit.split-lp.i.i.loopexit.split-lp, !noalias !55

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i.loopexit:                  ; preds = %bb.ax
  %lpad.loopexit104 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i.loopexit.split-lp:         ; preds = %bb.au, %bb.av
  %lpad.loopexit.split-lp105 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i:                           ; preds = %.loopexit.split-lp.i.i.loopexit, %.loopexit.split-lp.i.i.loopexit.split-lp, %.loopexit.i.i
  %.sroa.0.1.i.i = phi i1 [ false, %.loopexit.i.i ], [ false, %.loopexit.split-lp.i.i.loopexit ], [ true, %.loopexit.split-lp.i.i.loopexit.split-lp ]
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit104, %.loopexit.split-lp.i.i.loopexit ], [ %lpad.loopexit.split-lp105, %.loopexit.split-lp.i.i.loopexit.split-lp ] ; 2 uses
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringINtNtNtNtBG_11collections5btree3set8BTreeSetBC_EEECs5GOeAjNCyUy_11ruff_macros(ptr nonnull align 8 %i.h) #14
          to label %bb.ar unwind label %bb.ba, !noalias !55

bb.aw:                                            ; preds = %bb.at
  %i.fy = getelementptr i8, ptr %.sroa.465.0.copyload, i64 552
  %i.fz = getelementptr [8 x i8], ptr %i.fy, i64 %.sroa.06.0.i
  %i.ga = shl nuw nsw i64 %i.fs, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fu, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.fz, i64 %i.ga, i1 false), !noalias !55
  %.not.i.i31 = icmp eq i64 %i.da, 0
  br i1 %.not.i.i31, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !55
  store i64 0, ptr %i.e, align 8, !noalias !55
  store i64 %i.fr, ptr %.sroa.23.0..sroa_idx.i.i.i, align 8, !noalias !55
  store i8 0, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !55
  %i.gb = invoke { i64, i64 } @_RNvXsd_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCsiwsGNJdlvuS_9itertools(ptr nonnull align 8 %i.e)
          to label %.noexc5.i.i unwind label %.loopexit.split-lp.i.i.loopexit, !noalias !55 ; 2 uses

.noexc5.i.i:                                      ; preds = %bb.ax
  %i.gc = extractvalue { i64, i64 } %i.gb, 0
  %i.gd = trunc nuw i64 %i.gc to i1
  br i1 %i.gd, label %.lr.ph.i.i.i.i, label %.loopexit47.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc5.i.i, %.noexc6.i.i
  %i.ge = phi { i64, i64 } [ %i.gk, %.noexc6.i.i ], [ %i.gb, %.noexc5.i.i ]
  %i.gf = extractvalue { i64, i64 } %i.ge, 1      ; 2 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.gf
  %i.gh = load ptr, ptr %i.gg, align 8, !noalias !55 ; 2 uses
  store ptr %i.ev, ptr %i.gh, align 8, !noalias !55
  %i.gi = trunc i64 %i.gf to i16
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 536
  store i16 %i.gi, ptr %i.gj, align 8, !noalias !55
  %i.gk = invoke { i64, i64 } @_RNvXsd_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCsiwsGNJdlvuS_9itertools(ptr nonnull align 8 %i.e)
          to label %.noexc6.i.i unwind label %.loopexit.i.i, !noalias !55 ; 2 uses

.noexc6.i.i:                                      ; preds = %.lr.ph.i.i.i.i
  %i.gl = extractvalue { i64, i64 } %i.gk, 0
  %i.gm = trunc nuw i64 %i.gl to i1
  br i1 %i.gm, label %.lr.ph.i.i.i.i, label %.loopexit47.i

bb.ay:                                            ; preds = %bb.aw
  call void @_RNvNvMse_NtNtCs4NRVxsYgnAr_4core3num7nonzeroINtB7_7NonZeropE13new_unchecked18precondition_checkCs5GOeAjNCyUy_11ruff_macros(ptr nonnull align 8 @4) #16, !noalias !55
  unreachable

bb.az:                                            ; preds = %bb.av
  unreachable

bb.ba:                                            ; preds = %.thread.i.i30, %.loopexit.split-lp.i.i
  %i.gn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15, !noalias !55
  unreachable

.thread.i.i30:                                    ; preds = %bb.ar, %bb.aq
  %.pn10.i.i = phi { ptr, i32 } [ %lpad.phi.i.i, %bb.ar ], [ %i.fh, %bb.aq ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtBG_11collections5btree4node12InternalNodeNtNtBG_6string6StringINtNtB1e_3set8BTreeSetB1X_EEEECs5GOeAjNCyUy_11ruff_macros(ptr nonnull align 8 %i.i) #14
          to label %.body.thread.i unwind label %bb.ba, !noalias !55

.loopexit47.i:                                    ; preds = %.noexc6.i.i, %.noexc5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false), !noalias !49
  store ptr %.sroa.465.0.copyload, ptr %i.ct, align 8, !alias.scope !52, !noalias !49
  store i64 %i.da, ptr %i.cu, align 8, !alias.scope !52, !noalias !49
  store ptr %i.ev, ptr %i.cv, align 8, !alias.scope !52, !noalias !49
  store i64 %i.da, ptr %i.cw, align 8, !alias.scope !52, !noalias !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !49
  %spec.select.i32 = select i1 %.sroa.03.0.i, ptr %i.ev, ptr %.sroa.465.0.copyload ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !noalias !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.go = getelementptr inbounds nuw i8, ptr %spec.select.i32, i64 538 ; 2 uses
  %i.gp = load i16, ptr %i.go, align 2, !noalias !49 ; 2 uses
  %i.gq = zext i16 %i.gp to i64                   ; 4 uses
  %i.gr = add i16 %i.gp, 1
  %i.gs = getelementptr inbounds nuw i8, ptr %spec.select.i32, i64 8 ; 2 uses
  %i.gt = add nsw i64 %.sroa.5.0.i28, 1           ; 6 uses
  %.not.i10.i = icmp ugt i64 %i.gt, %i.gq
  %i.gu = getelementptr inbounds nuw [24 x i8], ptr %i.gs, i64 %.sroa.5.0.i28 ; 3 uses
  br i1 %.not.i10.i, label %.thread.i, label %bb.bb

.thread.i:                                        ; preds = %.loopexit47.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gu, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !noalias !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !49
  br label %bb.bc

bb.bb:                                            ; preds = %.loopexit47.i
  %i.gv = getelementptr inbounds nuw [24 x i8], ptr %i.gs, i64 %i.gt
  %i.gw = sub nsw i64 %i.gq, %.sroa.5.0.i28
  %i.gx = mul nuw nsw i64 %i.gw, 24               ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gv, ptr nonnull align 8 %i.gu, i64 %i.gx, i1 false), !noalias !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gu, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !49
  %i.gy = getelementptr inbounds nuw i8, ptr %spec.select.i32, i64 272 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !49
  %i.gz = getelementptr inbounds nuw [24 x i8], ptr %i.gy, i64 %.sroa.5.0.i28
  %i.ha = getelementptr inbounds nuw [24 x i8], ptr %i.gy, i64 %i.gt
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ha, ptr nonnull align 8 %i.gz, i64 %i.gx, i1 false), !noalias !49
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.thread.i
  %i.hb = getelementptr inbounds nuw i8, ptr %spec.select.i32, i64 272
  %i.hc = getelementptr inbounds nuw [24 x i8], ptr %i.hb, i64 %.sroa.5.0.i28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hc, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !49
  %i.hd = add nuw nsw i64 %i.gq, 2                ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %spec.select.i32, i64 544 ; 4 uses
  %i.hf = add nsw i64 %.sroa.5.0.i28, 2           ; 2 uses
  %i.hg = icmp ugt i64 %i.hd, %i.hf
  br i1 %i.hg, label %bb.bd, label %.noexc.i11.i

bb.bd:                                            ; preds = %bb.bc
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.gt
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.hf
  %i.hj = sub nsw i64 %i.gq, %.sroa.5.0.i28
  %i.hk = shl nsw i64 %i.hj, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hi, ptr nonnull align 8 %i.hh, i64 %i.hk, i1 false), !noalias !49
  br label %.noexc.i11.i

.noexc.i11.i:                                     ; preds = %bb.bd, %bb.bc
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.gt
  store ptr %.sroa.667.0.copyload281296, ptr %i.hl, align 8, !noalias !49
  store i16 %i.gr, ptr %i.go, align 2, !noalias !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !49
  store i64 %i.gt, ptr %i.c, align 8, !noalias !49
  store i64 %i.hd, ptr %i.cx, align 8, !noalias !49
  %i.hm = invoke { i64, i64 } @_RNvXs4_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCsfcggljOhZkm_12regex_syntax(ptr nonnull align 8 %i.c)
          to label %.noexc13.i unwind label %.loopexit.split-lp.i, !noalias !49 ; 2 uses

.noexc13.i:                                       ; preds = %.noexc.i11.i
  %i.hn = extractvalue { i64, i64 } %i.hm, 0
  %i.ho = trunc nuw i64 %i.hn to i1
  br i1 %i.ho, label %.lr.ph.i.i.i, label %.loopexit

.lr.ph.i.i.i:                                     ; preds = %.noexc13.i, %.noexc14.i
  %i.hp = phi { i64, i64 } [ %i.hv, %.noexc14.i ], [ %i.hm, %.noexc13.i ]
  %i.hq = extractvalue { i64, i64 } %i.hp, 1      ; 2 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.hq
  %i.hs = load ptr, ptr %i.hr, align 8, !noalias !49 ; 2 uses
  store ptr %spec.select.i32, ptr %i.hs, align 8, !noalias !49
  %i.ht = trunc i64 %i.hq to i16
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 536
  store i16 %i.ht, ptr %i.hu, align 8, !noalias !49
  %i.hv = invoke { i64, i64 } @_RNvXs4_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCsfcggljOhZkm_12regex_syntax(ptr nonnull align 8 %i.c)
          to label %.noexc14.i unwind label %.loopexit.i, !noalias !49 ; 2 uses

.noexc14.i:                                       ; preds = %.lr.ph.i.i.i
  %i.hw = extractvalue { i64, i64 } %i.hv, 0
  %i.hx = trunc nuw i64 %i.hw to i1
  br i1 %i.hx, label %.lr.ph.i.i.i, label %.loopexit

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

.loopexit.split-lp.i:                             ; preds = %.noexc.i11.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.be:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree4node11SplitResultNtNtBK_6string6StringINtNtBG_3set8BTreeSetB1E_ENtNtBE_6marker8InternalEECs5GOeAjNCyUy_11ruff_macros(ptr nonnull align 8 %i.l) #14
          to label %.critedge24 unwind label %bb.bf, !noalias !49

bb.bf:                                            ; preds = %bb.bg, %.body.thread.i, %bb.be
  %i.hy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15, !noalias !49
  unreachable

.body.thread43.i.loopexit:                        ; preds = %bb.al
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

.body.thread43.i.loopexit.split-lp:               ; preds = %bb.ab
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

.body.thread.i:                                   ; preds = %.body.thread43.i.loopexit, %.body.thread43.i.loopexit.split-lp, %.thread.i.i30, %bb.ar
  %.pn37.i = phi { ptr, i32 } [ %.pn10.i.i, %.thread.i.i30 ], [ %lpad.phi.i.i, %bb.ar ], [ %lpad.loopexit, %.body.thread43.i.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread43.i.loopexit.split-lp ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3set8BTreeSetNtNtBK_6string6StringEECs5GOeAjNCyUy_11ruff_macros(ptr nonnull align 8 %i.y) #14
          to label %bb.bg unwind label %bb.bf, !noalias !49

bb.bg:                                            ; preds = %.body.thread.i
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs4h2pZbAM0ZT_4heck(ptr nonnull align 8 %i.z) #14
          to label %.critedge24 unwind label %bb.bf, !noalias !49

.loopexit:                                        ; preds = %.noexc14.i, %.noexc13.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.061.0.copyload = load i64, ptr %i.l, align 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.463, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.463.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.not20 = icmp eq i64 %.sroa.061.0.copyload, -1
  br i1 %.not20, label %.loopexit107, label %bb.bh

bb.bh:                                            ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4451, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.463, i64 40, i1 false)
  %i.hz = load ptr, ptr %.sroa.465.0.copyload, align 8, !noalias !46 ; 2 uses
  %.not.i = icmp eq ptr %i.hz, null
  br i1 %.not.i, label %._crit_edge, label %bb.z

.loopexit107:                                     ; preds = %.loopexit, %.thread97, %bb.x, %.thread, %._crit_edge
  %spec.select.i.sink = phi ptr [ %spec.select.i, %bb.x ], [ %spec.select.i, %._crit_edge ], [ %i.cl, %.thread ], [ %spec.select.i, %.thread97 ], [ %spec.select.i, %.loopexit ]
  %spec.select37.i.sink = phi i64 [ %spec.select37.i, %bb.x ], [ %spec.select37.i, %._crit_edge ], [ %i.cn, %.thread ], [ %spec.select37.i, %.thread97 ], [ %spec.select37.i, %.loopexit ]
  %.sroa.5.0.i.sink = phi i64 [ %.sroa.5.0.i, %bb.x ], [ %.sroa.5.0.i, %._crit_edge ], [ %i.am, %.thread ], [ %.sroa.5.0.i, %.thread97 ], [ %.sroa.5.0.i, %.loopexit ]
  store ptr %spec.select.i.sink, ptr %0, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select37.i.sink, ptr %i.ia, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0.i.sink, ptr %i.ib, align 8
  ret void

bb.bi:                                            ; preds = %bb.z
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3set8BTreeSetNtNtBK_6string6StringEECs5GOeAjNCyUy_11ruff_macros(ptr nonnull align 8 %i.y) #14
          to label %bb.bk unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bi
  %i.ic = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.bk:                                            ; preds = %bb.bi
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs4h2pZbAM0ZT_4heck(ptr nonnull align 8 %i.z) #14
          to label %.critedge24 unwind label %bb.bj

bb.bl:                                            ; preds = %bb.a
  %i.id = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3set8BTreeSetNtNtBK_6string6StringEECs5GOeAjNCyUy_11ruff_macros(ptr nonnull align 8 %i.aa) #14
          to label %bb.bm unwind label %bb.bj

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs4h2pZbAM0ZT_4heck(ptr nonnull align 8 %i.ab) #14
          to label %.critedge24 unwind label %bb.bj

.critedge24:                                      ; preds = %bb.bk, %bb.be, %bb.bg, %bb.w, %bb.bm
  %.pn.pn = phi { ptr, i32 } [ %i.id, %bb.bm ], [ %.pn.ph.i, %bb.w ], [ %lpad.phi.i, %bb.be ], [ %lpad.thr_comm.split-lp, %bb.bk ], [ %.pn37.i, %bb.bg ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsN_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtBc_3vec3VecTNtNtCsfq6Q4Do6HaX_3syn4path4PathIB1Y_NtNtB2i_4attr9AttributeEEENtB1m_4LeafENtB1m_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB4n_11VacantEntryB1C_B1X_E12insert_entry0ECs5GOeAjNCyUy_11ruff_macros(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1, ptr nofree readonly align 8 captures(none) %2, ptr nofree readonly align 8 captures(none) %3, ptr align 8 %4, ptr %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [80 x i8], align 8                ; 11 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.472 = alloca [40 x i8], align 8          ; 6 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 5 uses
  %i.x = alloca [80 x i8], align 8                ; 7 uses
  %i.y = alloca [24 x i8], align 8                ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.463 = alloca [40 x i8], align 8          ; 2 uses
  %i.aa = alloca [24 x i8], align 8               ; 5 uses
  %i.ab = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.4 = alloca [40 x i8], align 8            ; 2 uses
  %.sroa.4451 = alloca [40 x i8], align 8         ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  invoke void @_RNvXs2_NtCscdodAO9FK5_5alloc5allocNtB5_6GlobalNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs5GOeAjNCyUy_11ruff_macros(ptr nonnull %i.a)
          to label %bb.b unwind label %bb.bl

end_hunk_1
begin_hunk_2_@_RINvMsN_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtBc_3vec3VecTNtNtCsfq6Q4Do6HaX_3syn4path4PathIB1Y_NtNtB2i_4attr9AttributeEEENtB1m_4LeafENtB1m_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB4n_11VacantEntryB1C_B1X_E12insert_entry0ECs5GOeAjNCyUy_11ruff_macros:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !77
  %i.ev = invoke align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringINtNtB6_3vec3VecTNtNtCsfq6Q4Do6HaX_3syn4path4PathIB1P_NtNtB29_4attr9AttributeEEEEE13new_uninit_inCs5GOeAjNCyUy_11ruff_macros()
          to label %.noexc.i29 unwind label %.body.thread43.i.loopexit, !noalias !77 ; 11 uses

.noexc.i29:                                       ; preds = %bb.al
  store ptr null, ptr %i.ev, align 8, !noalias !83
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 538 ; 3 uses
  store i16 0, ptr %i.ew, align 2, !noalias !83
  store ptr %i.ev, ptr %i.i, align 8, !noalias !83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !83
  %i.ex = load i16, ptr %i.de, align 2, !noalias !84
  %i.ey = zext i16 %i.ex to i64
  %i.ez = xor i64 %.sroa.06.0.i, -1
  %i.fa = add nsw i64 %i.ey, %i.ez                ; 4 uses
  %i.fb = trunc i64 %i.fa to i16
  store i16 %i.fb, ptr %i.ew, align 2, !noalias !84
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.465.0.copyload, i64 8 ; 2 uses
  %i.fd = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %.sroa.06.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.fd, i64 24, i1 false), !noalias !84
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.465.0.copyload, i64 272 ; 2 uses
  %i.ff = getelementptr inbounds nuw [24 x i8], ptr %i.fe, i64 %.sroa.06.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.ff, i64 24, i1 false), !noalias !84
  %i.fg = icmp ult i64 %i.fa, 12
  br i1 %i.fg, label %bb.as, label %bb.am

bb.am:                                            ; preds = %.noexc.i29
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 0, i64 %i.fa, i64 11, ptr nonnull align 8 @8) #13
          to label %bb.ao unwind label %bb.an, !noalias !84

bb.an:                                            ; preds = %bb.am
  %i.fh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtCsfq6Q4Do6HaX_3syn4path4PathIBC_NtNtB1c_4attr9AttributeEEEECs5GOeAjNCyUy_11ruff_macros(ptr nonnull align 8 %i.f) #14
          to label %bb.aq unwind label %bb.ap, !noalias !84

bb.ao:                                            ; preds = %bb.am
  unreachable

bb.ap:                                            ; preds = %bb.aq, %bb.an
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15, !noalias !84
  unreachable

bb.aq:                                            ; preds = %bb.an
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs4h2pZbAM0ZT_4heck(ptr nonnull align 8 %i.g) #14
          to label %.thread.i.i30 unwind label %bb.ap, !noalias !84

bb.ar:                                            ; preds = %.loopexit.split-lp.i.i
  br i1 %.sroa.0.1.i.i, label %.thread.i.i30, label %.body.thread.i

bb.as:                                            ; preds = %.noexc.i29
  %i.fj = add nuw nsw i64 %.sroa.06.0.i, 1        ; 2 uses
  %i.fk = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.fm = mul nuw nsw i64 %i.fa, 24               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fl, ptr nonnull readonly align 8 %i.fk, i64 %i.fm, i1 false), !noalias !84
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ev, i64 272
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %i.fe, i64 %i.fj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fn, ptr nonnull readonly align 8 %i.fo, i64 %i.fm, i1 false), !noalias !84
  %i.fp = trunc nuw nsw i64 %.sroa.06.0.i to i16
  store i16 %i.fp, ptr %i.de, align 2, !noalias !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !83
  %i.fq = load i16, ptr %i.ew, align 2, !noalias !83 ; 2 uses
  %i.fr = zext i16 %i.fq to i64                   ; 2 uses
  %i.fs = add nuw nsw i64 %i.fr, 1                ; 3 uses
  %i.ft = icmp ult i16 %i.fq, 12
  br i1 %i.ft, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ev, i64 544 ; 2 uses
  %i.fv = zext i16 %i.df to i64
  %i.fw = sub nuw nsw i64 %i.fv, %.sroa.06.0.i
  %i.fx = icmp eq i64 %i.fw, %i.fs
  br i1 %i.fx, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr nonnull @6, i64 40, ptr nonnull align 8 @7) #13
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i.i.loopexit.split-lp, !noalias !83

.noexc.i.i:                                       ; preds = %bb.au
  unreachable

bb.av:                                            ; preds = %bb.as
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 0, i64 %i.fs, i64 12, ptr nonnull align 8 @5) #13
          to label %bb.az unwind label %.loopexit.split-lp.i.i.loopexit.split-lp, !noalias !83

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i.loopexit:                  ; preds = %bb.ax
  %lpad.loopexit104 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i.loopexit.split-lp:         ; preds = %bb.au, %bb.av
  %lpad.loopexit.split-lp105 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i:                           ; preds = %.loopexit.split-lp.i.i.loopexit, %.loopexit.split-lp.i.i.loopexit.split-lp, %.loopexit.i.i
  %.sroa.0.1.i.i = phi i1 [ false, %.loopexit.i.i ], [ false, %.loopexit.split-lp.i.i.loopexit ], [ true, %.loopexit.split-lp.i.i.loopexit.split-lp ]
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit104, %.loopexit.split-lp.i.i.loopexit ], [ %lpad.loopexit.split-lp105, %.loopexit.split-lp.i.i.loopexit.split-lp ] ; 2 uses
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringINtNtBG_3vec3VecTNtNtCsfq6Q4Do6HaX_3syn4path4PathIB1e_NtNtB1y_4attr9AttributeEEEEECs5GOeAjNCyUy_11ruff_macros(ptr nonnull align 8 %i.h) #14
          to label %bb.ar unwind label %bb.ba, !noalias !83

bb.aw:                                            ; preds = %bb.at
  %i.fy = getelementptr i8, ptr %.sroa.465.0.copyload, i64 552
  %i.fz = getelementptr [8 x i8], ptr %i.fy, i64 %.sroa.06.0.i
  %i.ga = shl nuw nsw i64 %i.fs, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fu, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.fz, i64 %i.ga, i1 false), !noalias !83
  %.not.i.i31 = icmp eq i64 %i.da, 0
  br i1 %.not.i.i31, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !83
  store i64 0, ptr %i.e, align 8, !noalias !83
  store i64 %i.fr, ptr %.sroa.23.0..sroa_idx.i.i.i, align 8, !noalias !83
  store i8 0, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !83
  %i.gb = invoke { i64, i64 } @_RNvXsd_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCsiwsGNJdlvuS_9itertools(ptr nonnull align 8 %i.e)
          to label %.noexc5.i.i unwind label %.loopexit.split-lp.i.i.loopexit, !noalias !83 ; 2 uses

.noexc5.i.i:                                      ; preds = %bb.ax
  %i.gc = extractvalue { i64, i64 } %i.gb, 0
  %i.gd = trunc nuw i64 %i.gc to i1
  br i1 %i.gd, label %.lr.ph.i.i.i.i, label %.loopexit47.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc5.i.i, %.noexc6.i.i
  %i.ge = phi { i64, i64 } [ %i.gk, %.noexc6.i.i ], [ %i.gb, %.noexc5.i.i ]
  %i.gf = extractvalue { i64, i64 } %i.ge, 1      ; 2 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.gf
  %i.gh = load ptr, ptr %i.gg, align 8, !noalias !83 ; 2 uses
  store ptr %i.ev, ptr %i.gh, align 8, !noalias !83
  %i.gi = trunc i64 %i.gf to i16
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 536
  store i16 %i.gi, ptr %i.gj, align 8, !noalias !83
  %i.gk = invoke { i64, i64 } @_RNvXsd_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCsiwsGNJdlvuS_9itertools(ptr nonnull align 8 %i.e)
          to label %.noexc6.i.i unwind label %.loopexit.i.i, !noalias !83 ; 2 uses

.noexc6.i.i:                                      ; preds = %.lr.ph.i.i.i.i
  %i.gl = extractvalue { i64, i64 } %i.gk, 0
  %i.gm = trunc nuw i64 %i.gl to i1
  br i1 %i.gm, label %.lr.ph.i.i.i.i, label %.loopexit47.i

bb.ay:                                            ; preds = %bb.aw
  call void @_RNvNvMse_NtNtCs4NRVxsYgnAr_4core3num7nonzeroINtB7_7NonZeropE13new_unchecked18precondition_checkCs5GOeAjNCyUy_11ruff_macros(ptr nonnull align 8 @4) #16, !noalias !83
  unreachable

bb.az:                                            ; preds = %bb.av
  unreachable

bb.ba:                                            ; preds = %.thread.i.i30, %.loopexit.split-lp.i.i
  %i.gn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15, !noalias !83
  unreachable

.thread.i.i30:                                    ; preds = %bb.ar, %bb.aq
  %.pn10.i.i = phi { ptr, i32 } [ %lpad.phi.i.i, %bb.ar ], [ %i.fh, %bb.aq ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtBG_11collections5btree4node12InternalNodeNtNtBG_6string6StringINtNtBG_3vec3VecTNtNtCsfq6Q4Do6HaX_3syn4path4PathIB2j_NtNtB2D_4attr9AttributeEEEEEECs5GOeAjNCyUy_11ruff_macros(ptr nonnull align 8 %i.i) #14
          to label %.body.thread.i unwind label %bb.ba, !noalias !83

.loopexit47.i:                                    ; preds = %.noexc6.i.i, %.noexc5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false), !noalias !77
  store ptr %.sroa.465.0.copyload, ptr %i.ct, align 8, !alias.scope !80, !noalias !77
  store i64 %i.da, ptr %i.cu, align 8, !alias.scope !80, !noalias !77
  store ptr %i.ev, ptr %i.cv, align 8, !alias.scope !80, !noalias !77
  store i64 %i.da, ptr %i.cw, align 8, !alias.scope !80, !noalias !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !77
  %spec.select.i32 = select i1 %.sroa.03.0.i, ptr %i.ev, ptr %.sroa.465.0.copyload ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !noalias !77
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.go = getelementptr inbounds nuw i8, ptr %spec.select.i32, i64 538 ; 2 uses
  %i.gp = load i16, ptr %i.go, align 2, !noalias !77 ; 2 uses
  %i.gq = zext i16 %i.gp to i64                   ; 4 uses
  %i.gr = add i16 %i.gp, 1
  %i.gs = getelementptr inbounds nuw i8, ptr %spec.select.i32, i64 8 ; 2 uses
  %i.gt = add nsw i64 %.sroa.5.0.i28, 1           ; 6 uses
  %.not.i10.i = icmp ugt i64 %i.gt, %i.gq
  %i.gu = getelementptr inbounds nuw [24 x i8], ptr %i.gs, i64 %.sroa.5.0.i28 ; 3 uses
  br i1 %.not.i10.i, label %.thread.i, label %bb.bb

.thread.i:                                        ; preds = %.loopexit47.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gu, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !noalias !77
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !77
  br label %bb.bc

bb.bb:                                            ; preds = %.loopexit47.i
  %i.gv = getelementptr inbounds nuw [24 x i8], ptr %i.gs, i64 %i.gt
  %i.gw = sub nsw i64 %i.gq, %.sroa.5.0.i28
  %i.gx = mul nuw nsw i64 %i.gw, 24               ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gv, ptr nonnull align 8 %i.gu, i64 %i.gx, i1 false), !noalias !77
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gu, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !77
  %i.gy = getelementptr inbounds nuw i8, ptr %spec.select.i32, i64 272 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !77
  %i.gz = getelementptr inbounds nuw [24 x i8], ptr %i.gy, i64 %.sroa.5.0.i28
  %i.ha = getelementptr inbounds nuw [24 x i8], ptr %i.gy, i64 %i.gt
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ha, ptr nonnull align 8 %i.gz, i64 %i.gx, i1 false), !noalias !77
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.thread.i
  %i.hb = getelementptr inbounds nuw i8, ptr %spec.select.i32, i64 272
  %i.hc = getelementptr inbounds nuw [24 x i8], ptr %i.hb, i64 %.sroa.5.0.i28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hc, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !77
  %i.hd = add nuw nsw i64 %i.gq, 2                ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %spec.select.i32, i64 544 ; 4 uses
  %i.hf = add nsw i64 %.sroa.5.0.i28, 2           ; 2 uses
  %i.hg = icmp ugt i64 %i.hd, %i.hf
  br i1 %i.hg, label %bb.bd, label %.noexc.i11.i

bb.bd:                                            ; preds = %bb.bc
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.gt
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.hf
  %i.hj = sub nsw i64 %i.gq, %.sroa.5.0.i28
  %i.hk = shl nsw i64 %i.hj, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hi, ptr nonnull align 8 %i.hh, i64 %i.hk, i1 false), !noalias !77
  br label %.noexc.i11.i

.noexc.i11.i:                                     ; preds = %bb.bd, %bb.bc
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.gt
  store ptr %.sroa.667.0.copyload281296, ptr %i.hl, align 8, !noalias !77
  store i16 %i.gr, ptr %i.go, align 2, !noalias !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !77
  store i64 %i.gt, ptr %i.c, align 8, !noalias !77
  store i64 %i.hd, ptr %i.cx, align 8, !noalias !77
  %i.hm = invoke { i64, i64 } @_RNvXs4_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCsfcggljOhZkm_12regex_syntax(ptr nonnull align 8 %i.c)
          to label %.noexc13.i unwind label %.loopexit.split-lp.i, !noalias !77 ; 2 uses

.noexc13.i:                                       ; preds = %.noexc.i11.i
  %i.hn = extractvalue { i64, i64 } %i.hm, 0
  %i.ho = trunc nuw i64 %i.hn to i1
  br i1 %i.ho, label %.lr.ph.i.i.i, label %.loopexit

.lr.ph.i.i.i:                                     ; preds = %.noexc13.i, %.noexc14.i
  %i.hp = phi { i64, i64 } [ %i.hv, %.noexc14.i ], [ %i.hm, %.noexc13.i ]
  %i.hq = extractvalue { i64, i64 } %i.hp, 1      ; 2 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.hq
  %i.hs = load ptr, ptr %i.hr, align 8, !noalias !77 ; 2 uses
  store ptr %spec.select.i32, ptr %i.hs, align 8, !noalias !77
  %i.ht = trunc i64 %i.hq to i16
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 536
  store i16 %i.ht, ptr %i.hu, align 8, !noalias !77
  %i.hv = invoke { i64, i64 } @_RNvXs4_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCsfcggljOhZkm_12regex_syntax(ptr nonnull align 8 %i.c)
          to label %.noexc14.i unwind label %.loopexit.i, !noalias !77 ; 2 uses

.noexc14.i:                                       ; preds = %.lr.ph.i.i.i
  %i.hw = extractvalue { i64, i64 } %i.hv, 0
  %i.hx = trunc nuw i64 %i.hw to i1
  br i1 %i.hx, label %.lr.ph.i.i.i, label %.loopexit

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

.loopexit.split-lp.i:                             ; preds = %.noexc.i11.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.be:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree4node11SplitResultNtNtBK_6string6StringINtNtBK_3vec3VecTNtNtCsfq6Q4Do6HaX_3syn4path4PathIB20_NtNtB2k_4attr9AttributeEEENtNtBE_6marker8InternalEECs5GOeAjNCyUy_11ruff_macros(ptr nonnull align 8 %i.l) #14
          to label %.critedge24 unwind label %bb.bf, !noalias !77

bb.bf:                                            ; preds = %bb.bg, %.body.thread.i, %bb.be
  %i.hy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15, !noalias !77
  unreachable

.body.thread43.i.loopexit:                        ; preds = %bb.al
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

.body.thread43.i.loopexit.split-lp:               ; preds = %bb.ab
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

.body.thread.i:                                   ; preds = %.body.thread43.i.loopexit, %.body.thread43.i.loopexit.split-lp, %.thread.i.i30, %bb.ar
  %.pn37.i = phi { ptr, i32 } [ %.pn10.i.i, %.thread.i.i30 ], [ %lpad.phi.i.i, %bb.ar ], [ %lpad.loopexit, %.body.thread43.i.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread43.i.loopexit.split-lp ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtCsfq6Q4Do6HaX_3syn4path4PathIBC_NtNtB1c_4attr9AttributeEEEECs5GOeAjNCyUy_11ruff_macros(ptr nonnull align 8 %i.y) #14
          to label %bb.bg unwind label %bb.bf, !noalias !77

bb.bg:                                            ; preds = %.body.thread.i
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs4h2pZbAM0ZT_4heck(ptr nonnull align 8 %i.z) #14
          to label %.critedge24 unwind label %bb.bf, !noalias !77

.loopexit:                                        ; preds = %.noexc14.i, %.noexc13.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.061.0.copyload = load i64, ptr %i.l, align 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.463, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.463.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.not20 = icmp eq i64 %.sroa.061.0.copyload, -1
  br i1 %.not20, label %.loopexit107, label %bb.bh

bb.bh:                                            ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4451, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.463, i64 40, i1 false)
  %i.hz = load ptr, ptr %.sroa.465.0.copyload, align 8, !noalias !74 ; 2 uses
  %.not.i = icmp eq ptr %i.hz, null
  br i1 %.not.i, label %._crit_edge, label %bb.z

.loopexit107:                                     ; preds = %.loopexit, %.thread97, %bb.x, %.thread, %._crit_edge
  %spec.select.i.sink = phi ptr [ %spec.select.i, %bb.x ], [ %spec.select.i, %._crit_edge ], [ %i.cl, %.thread ], [ %spec.select.i, %.thread97 ], [ %spec.select.i, %.loopexit ]
  %spec.select37.i.sink = phi i64 [ %spec.select37.i, %bb.x ], [ %spec.select37.i, %._crit_edge ], [ %i.cn, %.thread ], [ %spec.select37.i, %.thread97 ], [ %spec.select37.i, %.loopexit ]
  %.sroa.5.0.i.sink = phi i64 [ %.sroa.5.0.i, %bb.x ], [ %.sroa.5.0.i, %._crit_edge ], [ %i.am, %.thread ], [ %.sroa.5.0.i, %.thread97 ], [ %.sroa.5.0.i, %.loopexit ]
  store ptr %spec.select.i.sink, ptr %0, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select37.i.sink, ptr %i.ia, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0.i.sink, ptr %i.ib, align 8
  ret void

bb.bi:                                            ; preds = %bb.z
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtCsfq6Q4Do6HaX_3syn4path4PathIBC_NtNtB1c_4attr9AttributeEEEECs5GOeAjNCyUy_11ruff_macros(ptr nonnull align 8 %i.y) #14
          to label %bb.bk unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bi
  %i.ic = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.bk:                                            ; preds = %bb.bi
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs4h2pZbAM0ZT_4heck(ptr nonnull align 8 %i.z) #14
          to label %.critedge24 unwind label %bb.bj

bb.bl:                                            ; preds = %bb.a
  %i.id = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtCsfq6Q4Do6HaX_3syn4path4PathIBC_NtNtB1c_4attr9AttributeEEEECs5GOeAjNCyUy_11ruff_macros(ptr nonnull align 8 %i.aa) #14
          to label %bb.bm unwind label %bb.bj

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs4h2pZbAM0ZT_4heck(ptr nonnull align 8 %i.ab) #14
          to label %.critedge24 unwind label %bb.bj

.critedge24:                                      ; preds = %bb.bk, %bb.be, %bb.bg, %bb.w, %bb.bm
  %.pn.pn = phi { ptr, i32 } [ %i.id, %bb.bm ], [ %.pn.ph.i, %bb.w ], [ %lpad.phi.i, %bb.be ], [ %lpad.thr_comm.split-lp, %bb.bk ], [ %.pn37.i, %bb.bg ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsN_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtB8_7set_val9SetValZSTNtB1m_4LeafENtB1m_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3u_11VacantEntryB1C_B1X_E12insert_entry0ECs5GOeAjNCyUy_11ruff_macros(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1, ptr nofree readonly align 8 captures(none) %2, ptr align 8 %3, ptr %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [56 x i8], align 8                ; 11 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %i.n = alloca [56 x i8], align 8                ; 11 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [56 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.464 = alloca [16 x i8], align 8          ; 2 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.4 = alloca [16 x i8], align 8            ; 2 uses
  %.sroa.4479 = alloca [16 x i8], align 8         ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  invoke void @_RNvXs2_NtCscdodAO9FK5_5alloc5allocNtB5_6GlobalNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs5GOeAjNCyUy_11ruff_macros(ptr nonnull %i.a)
          to label %bb.b unwind label %bb.be

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.s = load ptr, ptr %1, align 8, !noalias !87  ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 274 ; 4 uses
  %i.u = load i16, ptr %i.t, align 2, !noalias !87 ; 2 uses
  %i.v = icmp ugt i16 %i.u, 10
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
end_hunk_2
begin_hunk_3_@_RINvMsN_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtB8_7set_val9SetValZSTNtB1m_4LeafENtB1m_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3u_11VacantEntryB1C_B1X_E12insert_entry0ECs5GOeAjNCyUy_11ruff_macros:bb.a

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.aa
  %.sroa.06.0.i = phi i64 [ 5, %bb.ag ], [ 6, %bb.af ], [ 4, %bb.aa ], [ 5, %bb.ae ] ; 5 uses
  %.sroa.5.0.i26 = phi i64 [ 0, %bb.ag ], [ %i.ea, %bb.af ], [ %i.cp, %bb.aa ], [ 5, %bb.ae ] ; 7 uses
  %.sroa.03.0.i = phi i1 [ true, %bb.ag ], [ true, %bb.af ], [ false, %bb.aa ], [ false, %bb.ae ]
  call void @llvm.experimental.noalias.scope.decl(metadata !109)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !106
  %i.eb = invoke align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtBK_7set_val9SetValZSTEE13new_uninit_inCs5GOeAjNCyUy_11ruff_macros()
          to label %.noexc.i27 unwind label %.body.thread41.i23.loopexit, !noalias !106 ; 11 uses

.noexc.i27:                                       ; preds = %bb.ah
  store ptr null, ptr %i.eb, align 8, !noalias !112
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 274 ; 3 uses
  store i16 0, ptr %i.ec, align 2, !noalias !112
  store ptr %i.eb, ptr %i.g, align 8, !noalias !112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !112
  %i.ed = load i16, ptr %i.cq, align 2, !noalias !113
  %i.ee = zext i16 %i.ed to i64
  %i.ef = xor i64 %.sroa.06.0.i, -1
  %i.eg = add nsw i64 %i.ee, %i.ef                ; 6 uses
  %i.eh = trunc i64 %i.eg to i16
  store i16 %i.eh, ptr %i.ec, align 2, !noalias !113
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.466.0.copyload, i64 8
  %i.ej = getelementptr inbounds nuw [24 x i8], ptr %i.ei, i64 %.sroa.06.0.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.ej, i64 24, i1 false), !noalias !113
  %i.ek = icmp ult i64 %i.eg, 12
  br i1 %i.ek, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %.noexc.i27
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 0, i64 %i.eg, i64 11, ptr nonnull align 8 @8) #13
          to label %bb.al unwind label %.loopexit.split-lp, !noalias !113

.loopexit104:                                     ; preds = %bb.ak
  %lpad.loopexit105 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit.split-lp:                               ; preds = %bb.ai
  %lpad.loopexit.split-lp106 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.aj:                                            ; preds = %.loopexit.split-lp, %.loopexit104
  %lpad.phi107 = phi { ptr, i32 } [ %lpad.loopexit105, %.loopexit104 ], [ %lpad.loopexit.split-lp106, %.loopexit.split-lp ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs4h2pZbAM0ZT_4heck(ptr nonnull align 8 %i.e) #14
          to label %.thread.i.i28 unwind label %bb.am, !noalias !113

bb.ak:                                            ; preds = %.noexc.i27
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.em = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.en = mul nuw nsw i64 %i.eg, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.em, ptr nonnull readonly align 8 %i.el, i64 %i.en, i1 false), !noalias !113
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.466.0.copyload, i64 276
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eb, i64 276
  invoke void @_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node13move_to_sliceNtNtB4_7set_val9SetValZSTECsjHAoiVGgJmj_12aho_corasick(ptr nonnull %i.eo, i64 %i.eg, ptr nonnull %i.ep, i64 %i.eg)
          to label %bb.ao unwind label %.loopexit104, !noalias !113

bb.al:                                            ; preds = %bb.ai
  unreachable

bb.am:                                            ; preds = %bb.aj
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15, !noalias !113
  unreachable

bb.an:                                            ; preds = %.loopexit.split-lp.i.i
  br i1 %.sroa.0.1.i.i, label %.thread.i.i28, label %.body.thread.i24

bb.ao:                                            ; preds = %bb.ak
  %i.er = trunc nuw nsw i64 %.sroa.06.0.i to i16
  store i16 %i.er, ptr %i.cq, align 2, !noalias !113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !112
  %i.es = load i16, ptr %i.ec, align 2, !noalias !112 ; 2 uses
  %i.et = zext i16 %i.es to i64                   ; 2 uses
  %i.eu = add nuw nsw i64 %i.et, 1                ; 3 uses
  %i.ev = icmp ult i16 %i.es, 12
  br i1 %i.ev, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eb, i64 280 ; 2 uses
  %i.ex = zext i16 %i.cr to i64
  %i.ey = sub nuw nsw i64 %i.ex, %.sroa.06.0.i
  %i.ez = icmp eq i64 %i.ey, %i.eu
  br i1 %i.ez, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr nonnull @6, i64 40, ptr nonnull align 8 @7) #13
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i.i.loopexit.split-lp, !noalias !112

.noexc.i.i:                                       ; preds = %bb.aq
  unreachable

bb.ar:                                            ; preds = %bb.ao
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 0, i64 %i.eu, i64 12, ptr nonnull align 8 @5) #13
          to label %bb.av unwind label %.loopexit.split-lp.i.i.loopexit.split-lp, !noalias !112

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i.loopexit:                  ; preds = %bb.at
  %lpad.loopexit108 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i.loopexit.split-lp:         ; preds = %bb.aq, %bb.ar
  %lpad.loopexit.split-lp109 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i:                           ; preds = %.loopexit.split-lp.i.i.loopexit, %.loopexit.split-lp.i.i.loopexit.split-lp, %.loopexit.i.i
  %.sroa.0.1.i.i = phi i1 [ false, %.loopexit.i.i ], [ false, %.loopexit.split-lp.i.i.loopexit ], [ true, %.loopexit.split-lp.i.i.loopexit.split-lp ]
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit108, %.loopexit.split-lp.i.i.loopexit ], [ %lpad.loopexit.split-lp109, %.loopexit.split-lp.i.i.loopexit.split-lp ] ; 2 uses
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtBG_11collections5btree7set_val9SetValZSTEECs5GOeAjNCyUy_11ruff_macros(ptr nonnull align 8 %i.f) #14
          to label %bb.an unwind label %bb.aw, !noalias !112

bb.as:                                            ; preds = %bb.ap
  %i.fa = getelementptr i8, ptr %.sroa.466.0.copyload, i64 288
  %i.fb = getelementptr [8 x i8], ptr %i.fa, i64 %.sroa.06.0.i
  %i.fc = shl nuw nsw i64 %i.eu, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ew, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.fb, i64 %i.fc, i1 false), !noalias !112
  %.not.i.i29 = icmp eq i64 %i.cm, 0
  br i1 %.not.i.i29, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !112
  store i64 0, ptr %i.d, align 8, !noalias !112
  store i64 %i.et, ptr %.sroa.23.0..sroa_idx.i.i.i, align 8, !noalias !112
  store i8 0, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !112
  %i.fd = invoke { i64, i64 } @_RNvXsd_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCsiwsGNJdlvuS_9itertools(ptr nonnull align 8 %i.d)
          to label %.noexc5.i.i unwind label %.loopexit.split-lp.i.i.loopexit, !noalias !112 ; 2 uses

.noexc5.i.i:                                      ; preds = %bb.at
  %i.fe = extractvalue { i64, i64 } %i.fd, 0
  %i.ff = trunc nuw i64 %i.fe to i1
  br i1 %i.ff, label %.lr.ph.i.i.i.i, label %.loopexit45.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc5.i.i, %.noexc6.i.i
  %i.fg = phi { i64, i64 } [ %i.fm, %.noexc6.i.i ], [ %i.fd, %.noexc5.i.i ]
  %i.fh = extractvalue { i64, i64 } %i.fg, 1      ; 2 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.fh
  %i.fj = load ptr, ptr %i.fi, align 8, !noalias !112 ; 2 uses
  store ptr %i.eb, ptr %i.fj, align 8, !noalias !112
  %i.fk = trunc i64 %i.fh to i16
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 272
  store i16 %i.fk, ptr %i.fl, align 8, !noalias !112
  %i.fm = invoke { i64, i64 } @_RNvXsd_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCsiwsGNJdlvuS_9itertools(ptr nonnull align 8 %i.d)
          to label %.noexc6.i.i unwind label %.loopexit.i.i, !noalias !112 ; 2 uses

.noexc6.i.i:                                      ; preds = %.lr.ph.i.i.i.i
  %i.fn = extractvalue { i64, i64 } %i.fm, 0
  %i.fo = trunc nuw i64 %i.fn to i1
  br i1 %i.fo, label %.lr.ph.i.i.i.i, label %.loopexit45.i

bb.au:                                            ; preds = %bb.as
  call void @_RNvNvMse_NtNtCs4NRVxsYgnAr_4core3num7nonzeroINtB7_7NonZeropE13new_unchecked18precondition_checkCs5GOeAjNCyUy_11ruff_macros(ptr nonnull align 8 @4) #16, !noalias !112
  unreachable

bb.av:                                            ; preds = %bb.ar
  unreachable

bb.aw:                                            ; preds = %.thread.i.i28, %.loopexit.split-lp.i.i
  %i.fp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15, !noalias !112
  unreachable

.thread.i.i28:                                    ; preds = %bb.an, %bb.aj
  %.pn10.i.i = phi { ptr, i32 } [ %lpad.phi.i.i, %bb.an ], [ %lpad.phi107, %bb.aj ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtBG_11collections5btree4node12InternalNodeNtNtBG_6string6StringNtNtB1e_7set_val9SetValZSTEEECs5GOeAjNCyUy_11ruff_macros(ptr nonnull align 8 %i.g) #14
          to label %.body.thread.i24 unwind label %bb.aw, !noalias !112

.loopexit45.i:                                    ; preds = %.noexc6.i.i, %.noexc5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !106
  store ptr %.sroa.466.0.copyload, ptr %i.cf, align 8, !alias.scope !109, !noalias !106
  store i64 %i.cm, ptr %i.cg, align 8, !alias.scope !109, !noalias !106
  store ptr %i.eb, ptr %i.ch, align 8, !alias.scope !109, !noalias !106
  store i64 %i.cm, ptr %i.ci, align 8, !alias.scope !109, !noalias !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !106
  %spec.select.i30 = select i1 %.sroa.03.0.i, ptr %i.eb, ptr %.sroa.466.0.copyload ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !106
  %i.fq = getelementptr inbounds nuw i8, ptr %spec.select.i30, i64 274 ; 2 uses
  %i.fr = load i16, ptr %i.fq, align 2, !noalias !106
  %i.fs = zext i16 %i.fr to i64                   ; 5 uses
  %i.ft = add nuw nsw i64 %i.fs, 1                ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %spec.select.i30, i64 8 ; 3 uses
  %i.fv = add nsw i64 %.sroa.5.0.i26, 1           ; 5 uses
  %.not.i10.i = icmp ugt i64 %i.fv, %i.fs
  br i1 %.not.i10.i, label %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertNtNtB8_6string6StringECs5GOeAjNCyUy_11ruff_macros.exit.i.i31, label %bb.ax

bb.ax:                                            ; preds = %.loopexit45.i
  %i.fw = getelementptr inbounds nuw [24 x i8], ptr %i.fu, i64 %.sroa.5.0.i26
  %i.fx = getelementptr inbounds nuw [24 x i8], ptr %i.fu, i64 %i.fv
  %i.fy = sub nsw i64 %i.fs, %.sroa.5.0.i26
  %i.fz = mul nuw nsw i64 %i.fy, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fx, ptr nonnull align 8 %i.fw, i64 %i.fz, i1 false), !noalias !106
  br label %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertNtNtB8_6string6StringECs5GOeAjNCyUy_11ruff_macros.exit.i.i31

_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertNtNtB8_6string6StringECs5GOeAjNCyUy_11ruff_macros.exit.i.i31: ; preds = %bb.ax, %.loopexit45.i
  %i.ga = getelementptr inbounds nuw [24 x i8], ptr %i.fu, i64 %.sroa.5.0.i26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ga, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !106
  %i.gb = getelementptr inbounds nuw i8, ptr %spec.select.i30, i64 276
  invoke void @_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertNtNtB4_7set_val9SetValZSTECsjHAoiVGgJmj_12aho_corasick(ptr nonnull %i.gb, i64 %i.ft, i64 %.sroa.5.0.i26)
          to label %.noexc11.i unwind label %.loopexit.split-lp.i, !noalias !106

.noexc11.i:                                       ; preds = %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertNtNtB8_6string6StringECs5GOeAjNCyUy_11ruff_macros.exit.i.i31
  %i.gc = add nuw nsw i64 %i.fs, 2                ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %spec.select.i30, i64 280 ; 4 uses
  %i.ge = add nsw i64 %.sroa.5.0.i26, 2           ; 2 uses
  %i.gf = icmp ugt i64 %i.gc, %i.ge
  br i1 %i.gf, label %bb.ay, label %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtB4_7set_val9SetValZSTEEECs5GOeAjNCyUy_11ruff_macros.exit.i.i

bb.ay:                                            ; preds = %.noexc11.i
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.fv
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.ge
  %i.gi = sub nsw i64 %i.fs, %.sroa.5.0.i26
  %i.gj = shl nsw i64 %i.gi, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gh, ptr nonnull align 8 %i.gg, i64 %i.gj, i1 false), !noalias !106
  br label %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtB4_7set_val9SetValZSTEEECs5GOeAjNCyUy_11ruff_macros.exit.i.i

_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtB4_7set_val9SetValZSTEEECs5GOeAjNCyUy_11ruff_macros.exit.i.i: ; preds = %bb.ay, %.noexc11.i
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.fv
  store ptr %.sroa.668.0.copyload298314, ptr %i.gk, align 8, !noalias !106
  %i.gl = trunc i64 %i.ft to i16
  store i16 %i.gl, ptr %i.fq, align 2, !noalias !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !106
  store i64 %i.fv, ptr %i.c, align 8, !noalias !106
  store i64 %i.gc, ptr %i.cj, align 8, !noalias !106
  %i.gm = invoke { i64, i64 } @_RNvXs4_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCsfcggljOhZkm_12regex_syntax(ptr nonnull align 8 %i.c)
          to label %.noexc12.i unwind label %.loopexit.split-lp.i, !noalias !106 ; 2 uses

.noexc12.i:                                       ; preds = %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtB4_7set_val9SetValZSTEEECs5GOeAjNCyUy_11ruff_macros.exit.i.i
  %i.gn = extractvalue { i64, i64 } %i.gm, 0
  %i.go = trunc nuw i64 %i.gn to i1
  br i1 %i.go, label %.lr.ph.i.i.i, label %.loopexit

.lr.ph.i.i.i:                                     ; preds = %.noexc12.i, %.noexc13.i
  %i.gp = phi { i64, i64 } [ %i.gv, %.noexc13.i ], [ %i.gm, %.noexc12.i ]
  %i.gq = extractvalue { i64, i64 } %i.gp, 1      ; 2 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.gq
  %i.gs = load ptr, ptr %i.gr, align 8, !noalias !106 ; 2 uses
  store ptr %spec.select.i30, ptr %i.gs, align 8, !noalias !106
  %i.gt = trunc i64 %i.gq to i16
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 272
  store i16 %i.gt, ptr %i.gu, align 8, !noalias !106
  %i.gv = invoke { i64, i64 } @_RNvXs4_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCsfcggljOhZkm_12regex_syntax(ptr nonnull align 8 %i.c)
          to label %.noexc13.i unwind label %.loopexit.i, !noalias !106 ; 2 uses

.noexc13.i:                                       ; preds = %.lr.ph.i.i.i
  %i.gw = extractvalue { i64, i64 } %i.gv, 0
  %i.gx = trunc nuw i64 %i.gw to i1
  br i1 %i.gx, label %.lr.ph.i.i.i, label %.loopexit

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.loopexit.split-lp.i:                             ; preds = %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtB4_7set_val9SetValZSTEEECs5GOeAjNCyUy_11ruff_macros.exit.i.i, %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertNtNtB8_6string6StringECs5GOeAjNCyUy_11ruff_macros.exit.i.i31
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.az:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree4node11SplitResultNtNtBK_6string6StringNtNtBG_7set_val9SetValZSTNtNtBE_6marker8InternalEECs5GOeAjNCyUy_11ruff_macros(ptr nonnull align 8 %i.i) #14
          to label %.body.thread unwind label %bb.ba, !noalias !106

bb.ba:                                            ; preds = %.body.thread.i24, %bb.az
  %i.gy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15, !noalias !106
  unreachable

.body.thread41.i23.loopexit:                      ; preds = %bb.ah
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i24

.body.thread41.i23.loopexit.split-lp:             ; preds = %bb.x
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i24

.body.thread.i24:                                 ; preds = %.body.thread41.i23.loopexit, %.body.thread41.i23.loopexit.split-lp, %.thread.i.i28, %bb.an
  %.pn36.i25 = phi { ptr, i32 } [ %.pn10.i.i, %.thread.i.i28 ], [ %lpad.phi.i.i, %bb.an ], [ %lpad.loopexit, %.body.thread41.i23.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread41.i23.loopexit.split-lp ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs4h2pZbAM0ZT_4heck(ptr nonnull align 8 %i.q) #14
          to label %.body.thread unwind label %bb.ba, !noalias !106

.loopexit:                                        ; preds = %.noexc13.i, %.noexc12.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !106
  %.sroa.062.0.copyload = load i64, ptr %i.i, align 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.464, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.464.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.not20 = icmp eq i64 %.sroa.062.0.copyload, -1
  br i1 %.not20, label %.loopexit111, label %bb.bb

bb.bb:                                            ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4479, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.464, i64 16, i1 false)
  %i.gz = load ptr, ptr %.sroa.466.0.copyload, align 8, !noalias !103 ; 2 uses
  %.not.i = icmp eq ptr %i.gz, null
  br i1 %.not.i, label %._crit_edge, label %bb.v

.loopexit111:                                     ; preds = %.loopexit, %.thread97, %bb.t, %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertNtNtB8_6string6StringECs5GOeAjNCyUy_11ruff_macros.exit.i.i, %._crit_edge
  %spec.select.i.sink = phi ptr [ %spec.select.i, %bb.t ], [ %spec.select.i, %._crit_edge ], [ %i.am, %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertNtNtB8_6string6StringECs5GOeAjNCyUy_11ruff_macros.exit.i.i ], [ %spec.select.i, %.thread97 ], [ %spec.select.i, %.loopexit ]
  %spec.select42.i.sink = phi i64 [ %spec.select42.i, %bb.t ], [ %spec.select42.i, %._crit_edge ], [ %i.ao, %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertNtNtB8_6string6StringECs5GOeAjNCyUy_11ruff_macros.exit.i.i ], [ %spec.select42.i, %.thread97 ], [ %spec.select42.i, %.loopexit ]
  %.sroa.5.0.i.sink = phi i64 [ %.sroa.5.0.i, %bb.t ], [ %.sroa.5.0.i, %._crit_edge ], [ %i.ac, %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertNtNtB8_6string6StringECs5GOeAjNCyUy_11ruff_macros.exit.i.i ], [ %.sroa.5.0.i, %.thread97 ], [ %.sroa.5.0.i, %.loopexit ]
  store ptr %spec.select.i.sink, ptr %0, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select42.i.sink, ptr %i.ha, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0.i.sink, ptr %i.hb, align 8
  ret void

bb.bc:                                            ; preds = %bb.v
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs4h2pZbAM0ZT_4heck(ptr nonnull align 8 %i.q) #14
          to label %.body.thread unwind label %bb.bd

bb.bd:                                            ; preds = %bb.be, %bb.bc
  %i.hc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.be:                                            ; preds = %bb.a
  %i.hd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs4h2pZbAM0ZT_4heck(ptr nonnull align 8 %i.r) #14
          to label %.body.thread unwind label %bb.bd

.body.thread:                                     ; preds = %bb.bc, %bb.az, %.body.thread.i24, %.body.thread.i, %bb.r, %bb.be
  %.pn.pn = phi { ptr, i32 } [ %i.cb, %bb.r ], [ %.pn37.i, %.body.thread.i ], [ %i.hd, %bb.be ], [ %lpad.phi.i, %bb.az ], [ %.pn36.i25, %.body.thread.i24 ], [ %lpad.thr_comm.split-lp, %bb.bc ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsN_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtCs5GOeAjNCyUy_11ruff_macros9map_codes4RuleNtB1m_4LeafENtB1m_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3P_11VacantEntryB1C_B1X_E12insert_entry0EB21_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1, ptr nofree readonly align 8 captures(none) %2, ptr nofree readonly align 8 captures(none) %3, ptr align 8 %4, ptr %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [128 x i8], align 8               ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [128 x i8], align 8               ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [152 x i8], align 8               ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [128 x i8], align 8               ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [184 x i8], align 8               ; 11 uses
  %i.m = alloca [128 x i8], align 8               ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [128 x i8], align 8               ; 5 uses
  %i.p = alloca [128 x i8], align 8               ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.472 = alloca [144 x i8], align 8         ; 6 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [128 x i8], align 8               ; 5 uses
  %i.t = alloca [128 x i8], align 8               ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 5 uses
  %i.v = alloca [128 x i8], align 8               ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 5 uses
  %i.x = alloca [184 x i8], align 8               ; 7 uses
  %i.y = alloca [128 x i8], align 8               ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.463 = alloca [144 x i8], align 8         ; 2 uses
  %i.aa = alloca [128 x i8], align 8              ; 5 uses
  %i.ab = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.4 = alloca [144 x i8], align 8           ; 2 uses
  %.sroa.4451 = alloca [144 x i8], align 8        ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.aa, ptr noundef nonnull align 8 dereferenceable(128) %3, i64 128, i1 false)
  invoke void @_RNvXs2_NtCscdodAO9FK5_5alloc5allocNtB5_6GlobalNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs5GOeAjNCyUy_11ruff_macros(ptr nonnull %i.a)
          to label %bb.b unwind label %bb.bl

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.472)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.ac = load ptr, ptr %1, align 8, !noalias !116 ; 12 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1682 ; 4 uses
  %i.ae = load i16, ptr %i.ad, align 2, !noalias !116 ; 3 uses
  %i.af = icmp ugt i16 %i.ae, 10
  br i1 %i.af, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !116 ; 6 uses
  %i.ai = icmp ult i64 %i.ah, 5
end_hunk_3
begin_hunk_4_@_RINvMsN_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtCs5GOeAjNCyUy_11ruff_macros9map_codes4RuleNtB1m_4LeafENtB1m_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3P_11VacantEntryB1C_B1X_E12insert_entry0EB21_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !134
  %i.et = invoke align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCs5GOeAjNCyUy_11ruff_macros9map_codes4RuleEE13new_uninit_inB1S_()
          to label %.noexc.i29 unwind label %.body.thread43.i.loopexit, !noalias !134 ; 11 uses

.noexc.i29:                                       ; preds = %bb.al
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 1408
  store ptr null, ptr %i.eu, align 8, !noalias !140
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 1682 ; 3 uses
  store i16 0, ptr %i.ev, align 2, !noalias !140
  store ptr %i.et, ptr %i.i, align 8, !noalias !140
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !140
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !140
  %i.ew = load i16, ptr %i.dd, align 2, !noalias !141
  %i.ex = zext i16 %i.ew to i64
  %i.ey = xor i64 %.sroa.06.0.i, -1
  %i.ez = add nsw i64 %i.ex, %i.ey                ; 5 uses
  %i.fa = trunc i64 %i.ez to i16
  store i16 %i.fa, ptr %i.ev, align 2, !noalias !141
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.465.0.copyload, i64 1416 ; 2 uses
  %i.fc = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %.sroa.06.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.fc, i64 24, i1 false), !noalias !141
  %i.fd = getelementptr inbounds nuw [128 x i8], ptr %.sroa.465.0.copyload, i64 %.sroa.06.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.f, ptr noundef nonnull align 8 dereferenceable(128) %i.fd, i64 128, i1 false), !noalias !141
  %i.fe = icmp ult i64 %i.ez, 12
  br i1 %i.fe, label %bb.as, label %bb.am

bb.am:                                            ; preds = %.noexc.i29
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 0, i64 %i.ez, i64 11, ptr nonnull align 8 @8) #13
          to label %bb.ao unwind label %bb.an, !noalias !141

bb.an:                                            ; preds = %bb.am
  %i.ff = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5GOeAjNCyUy_11ruff_macros9map_codes4RuleEBF_(ptr nonnull align 8 %i.f) #14
          to label %bb.aq unwind label %bb.ap, !noalias !141

bb.ao:                                            ; preds = %bb.am
  unreachable

bb.ap:                                            ; preds = %bb.aq, %bb.an
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15, !noalias !141
  unreachable

bb.aq:                                            ; preds = %bb.an
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs4h2pZbAM0ZT_4heck(ptr nonnull align 8 %i.g) #14
          to label %.thread.i.i30 unwind label %bb.ap, !noalias !141

bb.ar:                                            ; preds = %.loopexit.split-lp.i.i
  br i1 %.sroa.0.1.i.i, label %.thread.i.i30, label %.body.thread.i

bb.as:                                            ; preds = %.noexc.i29
  %i.fh = add nuw nsw i64 %.sroa.06.0.i, 1        ; 2 uses
  %i.fi = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.et, i64 1416
  %i.fk = mul nuw nsw i64 %i.ez, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fj, ptr nonnull readonly align 8 %i.fi, i64 %i.fk, i1 false), !noalias !141
  %i.fl = getelementptr inbounds nuw [128 x i8], ptr %.sroa.465.0.copyload, i64 %i.fh
  %i.fm = shl nuw nsw i64 %i.ez, 7
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.et, ptr nonnull readonly align 8 %i.fl, i64 %i.fm, i1 false), !noalias !141
  %i.fn = trunc nuw nsw i64 %.sroa.06.0.i to i16
  store i16 %i.fn, ptr %i.dd, align 2, !noalias !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !140
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.cr, ptr noundef nonnull align 8 dereferenceable(128) %i.f, i64 128, i1 false), !noalias !140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !140
  %i.fo = load i16, ptr %i.ev, align 2, !noalias !140 ; 2 uses
  %i.fp = zext i16 %i.fo to i64                   ; 2 uses
  %i.fq = add nuw nsw i64 %i.fp, 1                ; 3 uses
  %i.fr = icmp ult i16 %i.fo, 12
  br i1 %i.fr, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.fs = getelementptr inbounds nuw i8, ptr %i.et, i64 1688 ; 2 uses
  %i.ft = zext i16 %i.de to i64
  %i.fu = sub nuw nsw i64 %i.ft, %.sroa.06.0.i
  %i.fv = icmp eq i64 %i.fu, %i.fq
  br i1 %i.fv, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr nonnull @6, i64 40, ptr nonnull align 8 @7) #13
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i.i.loopexit.split-lp, !noalias !140

.noexc.i.i:                                       ; preds = %bb.au
  unreachable

bb.av:                                            ; preds = %bb.as
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 0, i64 %i.fq, i64 12, ptr nonnull align 8 @5) #13
          to label %bb.az unwind label %.loopexit.split-lp.i.i.loopexit.split-lp, !noalias !140

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i.loopexit:                  ; preds = %bb.ax
  %lpad.loopexit104 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i.loopexit.split-lp:         ; preds = %bb.au, %bb.av
  %lpad.loopexit.split-lp105 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i:                           ; preds = %.loopexit.split-lp.i.i.loopexit, %.loopexit.split-lp.i.i.loopexit.split-lp, %.loopexit.i.i
  %.sroa.0.1.i.i = phi i1 [ false, %.loopexit.i.i ], [ false, %.loopexit.split-lp.i.i.loopexit ], [ true, %.loopexit.split-lp.i.i.loopexit.split-lp ]
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit104, %.loopexit.split-lp.i.i.loopexit ], [ %lpad.loopexit.split-lp105, %.loopexit.split-lp.i.i.loopexit.split-lp ] ; 2 uses
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs5GOeAjNCyUy_11ruff_macros9map_codes4RuleEEB1h_(ptr nonnull align 8 %i.h) #14
          to label %bb.ar unwind label %bb.ba, !noalias !140

bb.aw:                                            ; preds = %bb.at
  %i.fw = getelementptr i8, ptr %.sroa.465.0.copyload, i64 1696
  %i.fx = getelementptr [8 x i8], ptr %i.fw, i64 %.sroa.06.0.i
  %i.fy = shl nuw nsw i64 %i.fq, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fs, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.fx, i64 %i.fy, i1 false), !noalias !140
  %.not.i.i31 = icmp eq i64 %i.cz, 0
  br i1 %.not.i.i31, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !140
  store i64 0, ptr %i.e, align 8, !noalias !140
  store i64 %i.fp, ptr %.sroa.23.0..sroa_idx.i.i.i, align 8, !noalias !140
  store i8 0, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !140
  %i.fz = invoke { i64, i64 } @_RNvXsd_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCsiwsGNJdlvuS_9itertools(ptr nonnull align 8 %i.e)
          to label %.noexc5.i.i unwind label %.loopexit.split-lp.i.i.loopexit, !noalias !140 ; 2 uses

.noexc5.i.i:                                      ; preds = %bb.ax
  %i.ga = extractvalue { i64, i64 } %i.fz, 0
  %i.gb = trunc nuw i64 %i.ga to i1
  br i1 %i.gb, label %.lr.ph.i.i.i.i, label %.loopexit47.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc5.i.i, %.noexc6.i.i
  %i.gc = phi { i64, i64 } [ %i.gj, %.noexc6.i.i ], [ %i.fz, %.noexc5.i.i ]
  %i.gd = extractvalue { i64, i64 } %i.gc, 1      ; 2 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.gd
  %i.gf = load ptr, ptr %i.ge, align 8, !noalias !140 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 1408
  store ptr %i.et, ptr %i.gg, align 8, !noalias !140
  %i.gh = trunc i64 %i.gd to i16
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 1680
  store i16 %i.gh, ptr %i.gi, align 8, !noalias !140
  %i.gj = invoke { i64, i64 } @_RNvXsd_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCsiwsGNJdlvuS_9itertools(ptr nonnull align 8 %i.e)
          to label %.noexc6.i.i unwind label %.loopexit.i.i, !noalias !140 ; 2 uses

.noexc6.i.i:                                      ; preds = %.lr.ph.i.i.i.i
  %i.gk = extractvalue { i64, i64 } %i.gj, 0
  %i.gl = trunc nuw i64 %i.gk to i1
  br i1 %i.gl, label %.lr.ph.i.i.i.i, label %.loopexit47.i

bb.ay:                                            ; preds = %bb.aw
  call void @_RNvNvMse_NtNtCs4NRVxsYgnAr_4core3num7nonzeroINtB7_7NonZeropE13new_unchecked18precondition_checkCs5GOeAjNCyUy_11ruff_macros(ptr nonnull align 8 @4) #16, !noalias !140
  unreachable

bb.az:                                            ; preds = %bb.av
  unreachable

bb.ba:                                            ; preds = %.thread.i.i30, %.loopexit.split-lp.i.i
  %i.gm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15, !noalias !140
  unreachable

.thread.i.i30:                                    ; preds = %bb.ar, %bb.aq
  %.pn10.i.i = phi { ptr, i32 } [ %lpad.phi.i.i, %bb.ar ], [ %i.ff, %bb.aq ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtBG_11collections5btree4node12InternalNodeNtNtBG_6string6StringNtNtCs5GOeAjNCyUy_11ruff_macros9map_codes4RuleEEEB2m_(ptr nonnull align 8 %i.i) #14
          to label %.body.thread.i unwind label %bb.ba, !noalias !140

.loopexit47.i:                                    ; preds = %.noexc6.i.i, %.noexc5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !140
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.l, ptr noundef nonnull align 8 dereferenceable(152) %i.h, i64 152, i1 false), !noalias !134
  store ptr %.sroa.465.0.copyload, ptr %i.cs, align 8, !alias.scope !137, !noalias !134
  store i64 %i.cz, ptr %i.ct, align 8, !alias.scope !137, !noalias !134
  store ptr %i.et, ptr %i.cu, align 8, !alias.scope !137, !noalias !134
  store i64 %i.cz, ptr %i.cv, align 8, !alias.scope !137, !noalias !134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !134
  %spec.select.i32 = select i1 %.sroa.03.0.i, ptr %i.et, ptr %.sroa.465.0.copyload ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !noalias !134
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.j, ptr noundef nonnull align 8 dereferenceable(128) %i.y, i64 128, i1 false), !noalias !134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.gn = getelementptr inbounds nuw i8, ptr %spec.select.i32, i64 1682 ; 2 uses
  %i.go = load i16, ptr %i.gn, align 2, !noalias !134 ; 2 uses
  %i.gp = zext i16 %i.go to i64                   ; 4 uses
  %i.gq = add i16 %i.go, 1
  %i.gr = getelementptr inbounds nuw i8, ptr %spec.select.i32, i64 1416 ; 2 uses
  %i.gs = add nsw i64 %.sroa.5.0.i28, 1           ; 6 uses
  %.not.i10.i = icmp ugt i64 %i.gs, %i.gp
  %i.gt = getelementptr inbounds nuw [24 x i8], ptr %i.gr, i64 %.sroa.5.0.i28 ; 3 uses
  br i1 %.not.i10.i, label %.thread.i, label %bb.bb

.thread.i:                                        ; preds = %.loopexit47.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gt, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !noalias !134
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(128) %i.j, i64 128, i1 false), !noalias !134
  br label %bb.bc

bb.bb:                                            ; preds = %.loopexit47.i
  %i.gu = getelementptr inbounds nuw [24 x i8], ptr %i.gr, i64 %i.gs
  %i.gv = sub nsw i64 %i.gp, %.sroa.5.0.i28       ; 2 uses
  %i.gw = mul nuw nsw i64 %i.gv, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gu, ptr nonnull align 8 %i.gt, i64 %i.gw, i1 false), !noalias !134
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gt, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !134
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(128) %i.j, i64 128, i1 false), !noalias !134
  %i.gx = getelementptr inbounds nuw [128 x i8], ptr %spec.select.i32, i64 %.sroa.5.0.i28
  %i.gy = getelementptr inbounds nuw [128 x i8], ptr %spec.select.i32, i64 %i.gs
  %i.gz = shl nuw nsw i64 %i.gv, 7
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.gy, ptr align 8 %i.gx, i64 %i.gz, i1 false), !noalias !134
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.thread.i
  %i.ha = getelementptr inbounds nuw [128 x i8], ptr %spec.select.i32, i64 %.sroa.5.0.i28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ha, ptr noundef nonnull readonly align 8 dereferenceable(128) %i.d, i64 128, i1 false), !noalias !134
  %i.hb = add nuw nsw i64 %i.gp, 2                ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %spec.select.i32, i64 1688 ; 4 uses
  %i.hd = add nsw i64 %.sroa.5.0.i28, 2           ; 2 uses
  %i.he = icmp ugt i64 %i.hb, %i.hd
  br i1 %i.he, label %bb.bd, label %.noexc.i11.i

bb.bd:                                            ; preds = %bb.bc
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %i.gs
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %i.hd
  %i.hh = sub nsw i64 %i.gp, %.sroa.5.0.i28
  %i.hi = shl nsw i64 %i.hh, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hg, ptr nonnull align 8 %i.hf, i64 %i.hi, i1 false), !noalias !134
  br label %.noexc.i11.i

.noexc.i11.i:                                     ; preds = %bb.bd, %bb.bc
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %i.gs
  store ptr %.sroa.667.0.copyload281296, ptr %i.hj, align 8, !noalias !134
  store i16 %i.gq, ptr %i.gn, align 2, !noalias !134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !134
  store i64 %i.gs, ptr %i.c, align 8, !noalias !134
  store i64 %i.hb, ptr %i.cw, align 8, !noalias !134
  %i.hk = invoke { i64, i64 } @_RNvXs4_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCsfcggljOhZkm_12regex_syntax(ptr nonnull align 8 %i.c)
          to label %.noexc13.i unwind label %.loopexit.split-lp.i, !noalias !134 ; 2 uses

.noexc13.i:                                       ; preds = %.noexc.i11.i
  %i.hl = extractvalue { i64, i64 } %i.hk, 0
  %i.hm = trunc nuw i64 %i.hl to i1
  br i1 %i.hm, label %.lr.ph.i.i.i, label %.loopexit

.lr.ph.i.i.i:                                     ; preds = %.noexc13.i, %.noexc14.i
  %i.hn = phi { i64, i64 } [ %i.hu, %.noexc14.i ], [ %i.hk, %.noexc13.i ]
  %i.ho = extractvalue { i64, i64 } %i.hn, 1      ; 2 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %i.ho
  %i.hq = load ptr, ptr %i.hp, align 8, !noalias !134 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 1408
  store ptr %spec.select.i32, ptr %i.hr, align 8, !noalias !134
  %i.hs = trunc i64 %i.ho to i16
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 1680
  store i16 %i.hs, ptr %i.ht, align 8, !noalias !134
  %i.hu = invoke { i64, i64 } @_RNvXs4_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCsfcggljOhZkm_12regex_syntax(ptr nonnull align 8 %i.c)
          to label %.noexc14.i unwind label %.loopexit.i, !noalias !134 ; 2 uses

.noexc14.i:                                       ; preds = %.lr.ph.i.i.i
  %i.hv = extractvalue { i64, i64 } %i.hu, 0
  %i.hw = trunc nuw i64 %i.hv to i1
  br i1 %i.hw, label %.lr.ph.i.i.i, label %.loopexit

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

.loopexit.split-lp.i:                             ; preds = %.noexc.i11.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.be:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree4node11SplitResultNtNtBK_6string6StringNtNtCs5GOeAjNCyUy_11ruff_macros9map_codes4RuleNtNtBE_6marker8InternalEEB23_(ptr nonnull align 8 %i.l) #14
          to label %.critedge24 unwind label %bb.bf, !noalias !134

bb.bf:                                            ; preds = %bb.bg, %.body.thread.i, %bb.be
  %i.hx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15, !noalias !134
  unreachable

.body.thread43.i.loopexit:                        ; preds = %bb.al
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

.body.thread43.i.loopexit.split-lp:               ; preds = %bb.ab
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

.body.thread.i:                                   ; preds = %.body.thread43.i.loopexit, %.body.thread43.i.loopexit.split-lp, %.thread.i.i30, %bb.ar
  %.pn37.i = phi { ptr, i32 } [ %.pn10.i.i, %.thread.i.i30 ], [ %lpad.phi.i.i, %bb.ar ], [ %lpad.loopexit, %.body.thread43.i.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread43.i.loopexit.split-lp ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5GOeAjNCyUy_11ruff_macros9map_codes4RuleEBF_(ptr nonnull align 8 %i.y) #14
          to label %bb.bg unwind label %bb.bf, !noalias !134

bb.bg:                                            ; preds = %.body.thread.i
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs4h2pZbAM0ZT_4heck(ptr nonnull align 8 %i.z) #14
          to label %.critedge24 unwind label %bb.bf, !noalias !134

.loopexit:                                        ; preds = %.noexc14.i, %.noexc13.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.061.0.copyload = load i64, ptr %i.l, align 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.463, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.463.0..sroa_idx, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.not20 = icmp eq i64 %.sroa.061.0.copyload, -1
  br i1 %.not20, label %.loopexit107, label %bb.bh

bb.bh:                                            ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.4451, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.463, i64 144, i1 false)
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.465.0.copyload, i64 1408
  %i.hz = load ptr, ptr %i.hy, align 8, !noalias !131 ; 2 uses
  %.not.i = icmp eq ptr %i.hz, null
  br i1 %.not.i, label %._crit_edge, label %bb.z

.loopexit107:                                     ; preds = %.loopexit, %.thread97, %bb.x, %.thread, %._crit_edge
  %spec.select.i.sink = phi ptr [ %spec.select.i, %bb.x ], [ %spec.select.i, %._crit_edge ], [ %i.ck, %.thread ], [ %spec.select.i, %.thread97 ], [ %spec.select.i, %.loopexit ]
  %spec.select37.i.sink = phi i64 [ %spec.select37.i, %bb.x ], [ %spec.select37.i, %._crit_edge ], [ %i.cm, %.thread ], [ %spec.select37.i, %.thread97 ], [ %spec.select37.i, %.loopexit ]
  %.sroa.5.0.i.sink = phi i64 [ %.sroa.5.0.i, %bb.x ], [ %.sroa.5.0.i, %._crit_edge ], [ %i.am, %.thread ], [ %.sroa.5.0.i, %.thread97 ], [ %.sroa.5.0.i, %.loopexit ]
  store ptr %spec.select.i.sink, ptr %0, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select37.i.sink, ptr %i.ia, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0.i.sink, ptr %i.ib, align 8
  ret void

bb.bi:                                            ; preds = %bb.z
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5GOeAjNCyUy_11ruff_macros9map_codes4RuleEBF_(ptr nonnull align 8 %i.y) #14
          to label %bb.bk unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bi
  %i.ic = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.bk:                                            ; preds = %bb.bi
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs4h2pZbAM0ZT_4heck(ptr nonnull align 8 %i.z) #14
          to label %.critedge24 unwind label %bb.bj

bb.bl:                                            ; preds = %bb.a
  %i.id = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5GOeAjNCyUy_11ruff_macros9map_codes4RuleEBF_(ptr nonnull align 8 %i.aa) #14
          to label %bb.bm unwind label %bb.bj

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs4h2pZbAM0ZT_4heck(ptr nonnull align 8 %i.ab) #14
          to label %.critedge24 unwind label %bb.bj

.critedge24:                                      ; preds = %bb.bk, %bb.be, %bb.bg, %bb.w, %bb.bm
  %.pn.pn = phi { ptr, i32 } [ %i.id, %bb.bm ], [ %.pn.ph.i, %bb.w ], [ %lpad.phi.i, %bb.be ], [ %lpad.thr_comm.split-lp, %bb.bk ], [ %.pn37.i, %bb.bg ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsN_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringRSNtNtCsfq6Q4Do6HaX_3syn4attr9AttributeNtB1m_4LeafENtB1m_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3I_11VacantEntryB1C_B1X_E12insert_entry0ECs5GOeAjNCyUy_11ruff_macros(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1, ptr nofree readonly align 8 captures(none) %2, ptr align 8 %3, i64 %4, ptr align 8 %5, ptr %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [40 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [72 x i8], align 8                ; 13 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.0.i.sroa.4 = alloca [16 x i8], align 8   ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [72 x i8], align 8                ; 9 uses
  %i.p = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.456.sroa.0 = alloca [16 x i8], align 8   ; 2 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.4 = alloca [16 x i8], align 8            ; 2 uses
  %.sroa.4498 = alloca [16 x i8], align 8         ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  invoke void @_RNvXs2_NtCscdodAO9FK5_5alloc5allocNtB5_6GlobalNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs5GOeAjNCyUy_11ruff_macros(ptr nonnull %i.a)
          to label %bb.b unwind label %bb.bc

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.r = load ptr, ptr %1, align 8, !noalias !144 ; 12 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 450 ; 4 uses
  %i.t = load i16, ptr %i.s, align 2, !noalias !144 ; 3 uses
  %i.u = icmp ugt i16 %i.t, 10
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8, !noalias !144 ; 6 uses
  %i.x = icmp ult i64 %i.w, 5
  br i1 %i.x, label %bb.i, label %bb.f

bb.d:                                             ; preds = %bb.b
end_hunk_4
begin_hunk_5_@_RINvMsN_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringRSNtNtCsfq6Q4Do6HaX_3syn4attr9AttributeNtB1m_4LeafENtB1m_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3I_11VacantEntryB1C_B1X_E12insert_entry0ECs5GOeAjNCyUy_11ruff_macros:bb.a
  %.sroa.06.0.i = phi i64 [ 5, %bb.af ], [ 6, %bb.ae ], [ 4, %bb.aa ], [ 5, %bb.ad ] ; 7 uses
  %.sroa.5.0.i23 = phi i64 [ 0, %bb.af ], [ %i.ep, %bb.ae ], [ %i.cx, %bb.aa ], [ 5, %bb.ad ] ; 7 uses
  %.sroa.03.0.i = phi i1 [ true, %bb.af ], [ true, %bb.ae ], [ false, %bb.aa ], [ false, %bb.ad ]
  call void @llvm.experimental.noalias.scope.decl(metadata !165)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !162
  %i.eq = invoke align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringRSNtNtCsfq6Q4Do6HaX_3syn4attr9AttributeEE13new_uninit_inCs5GOeAjNCyUy_11ruff_macros()
          to label %.noexc.i24 unwind label %.body.thread40.i.loopexit, !noalias !162 ; 11 uses

.noexc.i24:                                       ; preds = %bb.ag
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 176
  store ptr null, ptr %i.er, align 8, !noalias !168
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 450 ; 3 uses
  store i16 0, ptr %i.es, align 2, !noalias !168
  store ptr %i.eq, ptr %i.g, align 8, !noalias !168
  call void @llvm.experimental.noalias.scope.decl(metadata !169)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !168
  %i.et = load i16, ptr %i.cy, align 2, !noalias !172
  %i.eu = zext i16 %i.et to i64
  %i.ev = xor i64 %.sroa.06.0.i, -1
  %i.ew = add nsw i64 %i.eu, %i.ev                ; 5 uses
  %i.ex = trunc i64 %i.ew to i16
  store i16 %i.ex, ptr %i.es, align 2, !noalias !172
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.458.0.copyload, i64 184 ; 2 uses
  %i.ez = getelementptr inbounds nuw [24 x i8], ptr %i.ey, i64 %.sroa.06.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.ez, i64 24, i1 false), !noalias !172
  %i.fa = icmp ult i64 %i.ew, 12
  br i1 %i.fa, label %bb.am, label %bb.ah

bb.ah:                                            ; preds = %.noexc.i24
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 0, i64 %i.ew, i64 11, ptr nonnull align 8 @8) #13
          to label %bb.aj unwind label %bb.ai, !noalias !172

bb.ai:                                            ; preds = %bb.ah
  %i.fb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs4h2pZbAM0ZT_4heck(ptr nonnull align 8 %i.e) #14
          to label %.thread.i.i25 unwind label %bb.ak, !noalias !172

bb.aj:                                            ; preds = %bb.ah
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15, !noalias !172
  unreachable

bb.al:                                            ; preds = %.loopexit.split-lp.i.i
  br i1 %.sroa.0.1.i.i, label %.thread.i.i25, label %.body.thread.i

bb.am:                                            ; preds = %.noexc.i24
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %.sroa.458.0.copyload, i64 %.sroa.06.0.i ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load i64, ptr %i.fe, align 8, !noalias !172
  %i.fg = load ptr, ptr %i.fd, align 8, !noalias !172
  %i.fh = add nuw nsw i64 %.sroa.06.0.i, 1        ; 2 uses
  %i.fi = getelementptr inbounds nuw [24 x i8], ptr %i.ey, i64 %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eq, i64 184
  %i.fk = mul nuw nsw i64 %i.ew, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fj, ptr nonnull readonly align 8 %i.fi, i64 %i.fk, i1 false), !noalias !172
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.458.0.copyload, i64 %i.fh
  %i.fm = shl nuw nsw i64 %i.ew, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.eq, ptr nonnull readonly align 8 %i.fl, i64 %i.fm, i1 false), !noalias !172
  %i.fn = trunc nuw nsw i64 %.sroa.06.0.i to i16
  store i16 %i.fn, ptr %i.cy, align 2, !noalias !172
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !168
  store ptr %i.fg, ptr %i.cl, align 8, !alias.scope !169, !noalias !168
  store i64 %i.ff, ptr %i.cm, align 8, !alias.scope !169, !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !168
  %i.fo = load i16, ptr %i.es, align 2, !noalias !168 ; 2 uses
  %i.fp = zext i16 %i.fo to i64                   ; 2 uses
  %i.fq = add nuw nsw i64 %i.fp, 1                ; 3 uses
  %i.fr = icmp ult i16 %i.fo, 12
  br i1 %i.fr, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.fs = getelementptr inbounds nuw i8, ptr %i.eq, i64 456 ; 2 uses
  %i.ft = zext i16 %i.cz to i64
  %i.fu = sub nuw nsw i64 %i.ft, %.sroa.06.0.i
  %i.fv = icmp eq i64 %i.fu, %i.fq
  br i1 %i.fv, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr nonnull @6, i64 40, ptr nonnull align 8 @7) #13
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i.i.loopexit.split-lp, !noalias !168

.noexc.i.i:                                       ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.am
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 0, i64 %i.fq, i64 12, ptr nonnull align 8 @5) #13
          to label %bb.at unwind label %.loopexit.split-lp.i.i.loopexit.split-lp, !noalias !168

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i.loopexit:                  ; preds = %bb.ar
  %lpad.loopexit97 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i.loopexit.split-lp:         ; preds = %bb.ao, %bb.ap
  %lpad.loopexit.split-lp98 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i:                           ; preds = %.loopexit.split-lp.i.i.loopexit, %.loopexit.split-lp.i.i.loopexit.split-lp, %.loopexit.i.i
  %.sroa.0.1.i.i = phi i1 [ false, %.loopexit.i.i ], [ false, %.loopexit.split-lp.i.i.loopexit ], [ true, %.loopexit.split-lp.i.i.loopexit.split-lp ]
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit97, %.loopexit.split-lp.i.i.loopexit ], [ %lpad.loopexit.split-lp98, %.loopexit.split-lp.i.i.loopexit.split-lp ] ; 2 uses
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringRSNtNtCsfq6Q4Do6HaX_3syn4attr9AttributeEECs5GOeAjNCyUy_11ruff_macros(ptr nonnull align 8 %i.f) #14
          to label %bb.al unwind label %bb.au, !noalias !168

bb.aq:                                            ; preds = %bb.an
  %i.fw = getelementptr i8, ptr %.sroa.458.0.copyload, i64 464
  %i.fx = getelementptr [8 x i8], ptr %i.fw, i64 %.sroa.06.0.i
  %i.fy = shl nuw nsw i64 %i.fq, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fs, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.fx, i64 %i.fy, i1 false), !noalias !168
  %.not.i.i26 = icmp eq i64 %i.cu, 0
  br i1 %.not.i.i26, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !168
  store i64 0, ptr %i.d, align 8, !noalias !168
  store i64 %i.fp, ptr %.sroa.23.0..sroa_idx.i.i.i, align 8, !noalias !168
  store i8 0, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !168
  %i.fz = invoke { i64, i64 } @_RNvXsd_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCsiwsGNJdlvuS_9itertools(ptr nonnull align 8 %i.d)
          to label %.noexc5.i.i unwind label %.loopexit.split-lp.i.i.loopexit, !noalias !168 ; 2 uses

.noexc5.i.i:                                      ; preds = %bb.ar
  %i.ga = extractvalue { i64, i64 } %i.fz, 0
  %i.gb = trunc nuw i64 %i.ga to i1
  br i1 %i.gb, label %.lr.ph.i.i.i.i, label %.loopexit44.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc5.i.i, %.noexc6.i.i
  %i.gc = phi { i64, i64 } [ %i.gj, %.noexc6.i.i ], [ %i.fz, %.noexc5.i.i ]
  %i.gd = extractvalue { i64, i64 } %i.gc, 1      ; 2 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.gd
  %i.gf = load ptr, ptr %i.ge, align 8, !noalias !168 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 176
  store ptr %i.eq, ptr %i.gg, align 8, !noalias !168
  %i.gh = trunc i64 %i.gd to i16
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 448
  store i16 %i.gh, ptr %i.gi, align 8, !noalias !168
  %i.gj = invoke { i64, i64 } @_RNvXsd_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCsiwsGNJdlvuS_9itertools(ptr nonnull align 8 %i.d)
          to label %.noexc6.i.i unwind label %.loopexit.i.i, !noalias !168 ; 2 uses

.noexc6.i.i:                                      ; preds = %.lr.ph.i.i.i.i
  %i.gk = extractvalue { i64, i64 } %i.gj, 0
  %i.gl = trunc nuw i64 %i.gk to i1
  br i1 %i.gl, label %.lr.ph.i.i.i.i, label %.loopexit44.i

bb.as:                                            ; preds = %bb.aq
  call void @_RNvNvMse_NtNtCs4NRVxsYgnAr_4core3num7nonzeroINtB7_7NonZeropE13new_unchecked18precondition_checkCs5GOeAjNCyUy_11ruff_macros(ptr nonnull align 8 @4) #16, !noalias !168
  unreachable

bb.at:                                            ; preds = %bb.ap
  unreachable

bb.au:                                            ; preds = %.thread.i.i25, %.loopexit.split-lp.i.i
  %i.gm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15, !noalias !168
  unreachable

.thread.i.i25:                                    ; preds = %bb.al, %bb.ai
  %.pn10.i.i = phi { ptr, i32 } [ %lpad.phi.i.i, %bb.al ], [ %i.fb, %bb.ai ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtBG_11collections5btree4node12InternalNodeNtNtBG_6string6StringRSNtNtCsfq6Q4Do6HaX_3syn4attr9AttributeEEECs5GOeAjNCyUy_11ruff_macros(ptr nonnull align 8 %i.g) #14
          to label %.body.thread.i unwind label %bb.au, !noalias !168

.loopexit44.i:                                    ; preds = %.noexc6.i.i, %.noexc5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false), !noalias !162
  store ptr %.sroa.458.0.copyload, ptr %i.cn, align 8, !alias.scope !165, !noalias !162
  store i64 %i.cu, ptr %i.co, align 8, !alias.scope !165, !noalias !162
  store ptr %i.eq, ptr %i.cp, align 8, !alias.scope !165, !noalias !162
  store i64 %i.cu, ptr %i.cq, align 8, !alias.scope !165, !noalias !162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !162
  %spec.select.i27 = select i1 %.sroa.03.0.i, ptr %i.eq, ptr %.sroa.458.0.copyload ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !162
  %i.gn = getelementptr inbounds nuw i8, ptr %spec.select.i27, i64 450 ; 2 uses
  %i.go = load i16, ptr %i.gn, align 2, !noalias !162 ; 2 uses
  %i.gp = zext i16 %i.go to i64                   ; 4 uses
  %i.gq = add i16 %i.go, 1
  %i.gr = getelementptr inbounds nuw i8, ptr %spec.select.i27, i64 184 ; 2 uses
  %i.gs = add nsw i64 %.sroa.5.0.i23, 1           ; 6 uses
  %.not.i10.i = icmp ugt i64 %i.gs, %i.gp
  %i.gt = getelementptr inbounds nuw [24 x i8], ptr %i.gr, i64 %.sroa.5.0.i23 ; 3 uses
  br i1 %.not.i10.i, label %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertNtNtB8_6string6StringECs5GOeAjNCyUy_11ruff_macros.exit.i.thread.i, label %bb.av

_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertNtNtB8_6string6StringECs5GOeAjNCyUy_11ruff_macros.exit.i.thread.i: ; preds = %.loopexit44.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gt, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !162
  br label %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertRSNtNtCsfq6Q4Do6HaX_3syn4attr9AttributeECs5GOeAjNCyUy_11ruff_macros.exit.i.i

bb.av:                                            ; preds = %.loopexit44.i
  %i.gu = getelementptr inbounds nuw [24 x i8], ptr %i.gr, i64 %i.gs
  %i.gv = sub nsw i64 %i.gp, %.sroa.5.0.i23       ; 2 uses
  %i.gw = mul nuw nsw i64 %i.gv, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gu, ptr nonnull align 8 %i.gt, i64 %i.gw, i1 false), !noalias !162
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gt, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !162
  %i.gx = getelementptr inbounds nuw [16 x i8], ptr %spec.select.i27, i64 %.sroa.5.0.i23
  %i.gy = getelementptr inbounds nuw [16 x i8], ptr %spec.select.i27, i64 %i.gs
  %i.gz = shl nuw nsw i64 %i.gv, 4
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.gy, ptr align 8 %i.gx, i64 %i.gz, i1 false), !noalias !162
  br label %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertRSNtNtCsfq6Q4Do6HaX_3syn4attr9AttributeECs5GOeAjNCyUy_11ruff_macros.exit.i.i

_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertRSNtNtCsfq6Q4Do6HaX_3syn4attr9AttributeECs5GOeAjNCyUy_11ruff_macros.exit.i.i: ; preds = %bb.av, %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertNtNtB8_6string6StringECs5GOeAjNCyUy_11ruff_macros.exit.i.thread.i
  %i.ha = getelementptr inbounds nuw [16 x i8], ptr %spec.select.i27, i64 %.sroa.5.0.i23 ; 2 uses
  store ptr %.sroa.6.1, ptr %i.ha, align 8, !noalias !162
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  store i64 %.sroa.8.1, ptr %i.hb, align 8, !noalias !162
  %i.hc = add nuw nsw i64 %i.gp, 2                ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %spec.select.i27, i64 456 ; 4 uses
  %i.he = add nsw i64 %.sroa.5.0.i23, 2           ; 2 uses
  %i.hf = icmp ugt i64 %i.hc, %i.he
  br i1 %i.hf, label %bb.aw, label %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringRSNtNtCsfq6Q4Do6HaX_3syn4attr9AttributeEEECs5GOeAjNCyUy_11ruff_macros.exit.i.i

bb.aw:                                            ; preds = %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertRSNtNtCsfq6Q4Do6HaX_3syn4attr9AttributeECs5GOeAjNCyUy_11ruff_macros.exit.i.i
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %i.gs
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %i.he
  %i.hi = sub nsw i64 %i.gp, %.sroa.5.0.i23
  %i.hj = shl nsw i64 %i.hi, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hh, ptr nonnull align 8 %i.hg, i64 %i.hj, i1 false), !noalias !162
  br label %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringRSNtNtCsfq6Q4Do6HaX_3syn4attr9AttributeEEECs5GOeAjNCyUy_11ruff_macros.exit.i.i

_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringRSNtNtCsfq6Q4Do6HaX_3syn4attr9AttributeEEECs5GOeAjNCyUy_11ruff_macros.exit.i.i: ; preds = %bb.aw, %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertRSNtNtCsfq6Q4Do6HaX_3syn4attr9AttributeECs5GOeAjNCyUy_11ruff_macros.exit.i.i
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %i.gs
  store ptr %.sroa.660.0.copyload300315, ptr %i.hk, align 8, !noalias !162
  store i16 %i.gq, ptr %i.gn, align 2, !noalias !162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !162
  store i64 %i.gs, ptr %i.c, align 8, !noalias !162
  store i64 %i.hc, ptr %i.cr, align 8, !noalias !162
  %i.hl = invoke { i64, i64 } @_RNvXs4_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCsfcggljOhZkm_12regex_syntax(ptr nonnull align 8 %i.c)
          to label %.noexc11.i unwind label %.loopexit.split-lp.i, !noalias !162 ; 2 uses

.noexc11.i:                                       ; preds = %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringRSNtNtCsfq6Q4Do6HaX_3syn4attr9AttributeEEECs5GOeAjNCyUy_11ruff_macros.exit.i.i
  %i.hm = extractvalue { i64, i64 } %i.hl, 0
  %i.hn = trunc nuw i64 %i.hm to i1
  br i1 %i.hn, label %.lr.ph.i.i.i, label %.loopexit

.lr.ph.i.i.i:                                     ; preds = %.noexc11.i, %.noexc12.i
  %i.ho = phi { i64, i64 } [ %i.hv, %.noexc12.i ], [ %i.hl, %.noexc11.i ]
  %i.hp = extractvalue { i64, i64 } %i.ho, 1      ; 2 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %i.hp
  %i.hr = load ptr, ptr %i.hq, align 8, !noalias !162 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 176
  store ptr %spec.select.i27, ptr %i.hs, align 8, !noalias !162
  %i.ht = trunc i64 %i.hp to i16
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 448
  store i16 %i.ht, ptr %i.hu, align 8, !noalias !162
  %i.hv = invoke { i64, i64 } @_RNvXs4_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCsfcggljOhZkm_12regex_syntax(ptr nonnull align 8 %i.c)
          to label %.noexc12.i unwind label %.loopexit.i, !noalias !162 ; 2 uses

.noexc12.i:                                       ; preds = %.lr.ph.i.i.i
  %i.hw = extractvalue { i64, i64 } %i.hv, 0
  %i.hx = trunc nuw i64 %i.hw to i1
  br i1 %i.hx, label %.lr.ph.i.i.i, label %.loopexit

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.loopexit.split-lp.i:                             ; preds = %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringRSNtNtCsfq6Q4Do6HaX_3syn4attr9AttributeEEECs5GOeAjNCyUy_11ruff_macros.exit.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ax:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree4node11SplitResultNtNtBK_6string6StringRSNtNtCsfq6Q4Do6HaX_3syn4attr9AttributeNtNtBE_6marker8InternalEECs5GOeAjNCyUy_11ruff_macros(ptr nonnull align 8 %i.i) #14
          to label %.body unwind label %bb.ay, !noalias !162

bb.ay:                                            ; preds = %.body.thread.i, %bb.ax
  %i.hy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15, !noalias !162
  unreachable

.body.thread40.i.loopexit:                        ; preds = %bb.ag
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

.body.thread40.i.loopexit.split-lp:               ; preds = %bb.x
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

.body.thread.i:                                   ; preds = %.body.thread40.i.loopexit, %.body.thread40.i.loopexit.split-lp, %.thread.i.i25, %bb.al
  %.pn35.i = phi { ptr, i32 } [ %.pn10.i.i, %.thread.i.i25 ], [ %lpad.phi.i.i, %bb.al ], [ %lpad.loopexit, %.body.thread40.i.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread40.i.loopexit.split-lp ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs4h2pZbAM0ZT_4heck(ptr nonnull align 8 %i.p) #14
          to label %.body unwind label %bb.ay, !noalias !162

.loopexit:                                        ; preds = %.noexc12.i, %.noexc11.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !162
  %.sroa.054.0.copyload = load i64, ptr %i.i, align 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.456.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.456.0..sroa_idx, i64 16, i1 false)
  %.sroa.456.sroa.2.0.copyload = load ptr, ptr %.sroa.456.sroa.2.0..sroa.456.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.456.sroa.3.0.copyload = load i64, ptr %.sroa.456.sroa.3.0..sroa.456.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.not20 = icmp eq i64 %.sroa.054.0.copyload, -1
  br i1 %.not20, label %.loopexit100, label %bb.az

bb.az:                                            ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4498, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.456.sroa.0, i64 16, i1 false)
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.458.0.copyload, i64 176
  %i.ia = load ptr, ptr %i.hz, align 8, !noalias !159 ; 2 uses
  %.not.i = icmp eq ptr %i.ia, null
  br i1 %.not.i, label %._crit_edge, label %bb.v

.loopexit100:                                     ; preds = %.loopexit, %.thread90, %bb.t, %.thread, %._crit_edge
  %spec.select.i.sink = phi ptr [ %spec.select.i, %bb.t ], [ %spec.select.i, %._crit_edge ], [ %i.cd, %.thread ], [ %spec.select.i, %.thread90 ], [ %spec.select.i, %.loopexit ]
  %spec.select37.i.sink = phi i64 [ %spec.select37.i, %bb.t ], [ %spec.select37.i, %._crit_edge ], [ %i.cf, %.thread ], [ %spec.select37.i, %.thread90 ], [ %spec.select37.i, %.loopexit ]
  %.sroa.5.0.i.sink = phi i64 [ %.sroa.5.0.i, %bb.t ], [ %.sroa.5.0.i, %._crit_edge ], [ %i.ab, %.thread ], [ %.sroa.5.0.i, %.thread90 ], [ %.sroa.5.0.i, %.loopexit ]
  store ptr %spec.select.i.sink, ptr %0, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select37.i.sink, ptr %i.ib, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0.i.sink, ptr %i.ic, align 8
  ret void

bb.ba:                                            ; preds = %bb.v
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs4h2pZbAM0ZT_4heck(ptr nonnull align 8 %i.p) #14
          to label %.body unwind label %bb.bb

bb.bb:                                            ; preds = %bb.bc, %bb.ba
  %i.id = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.bc:                                            ; preds = %bb.a
  %i.ie = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs4h2pZbAM0ZT_4heck(ptr nonnull align 8 %i.q) #14
          to label %.body unwind label %bb.bb

.body:                                            ; preds = %bb.ba, %bb.ax, %.body.thread.i, %bb.s, %bb.bc
  %.pn.pn = phi { ptr, i32 } [ %.pn.ph.i, %bb.s ], [ %i.ie, %bb.bc ], [ %lpad.phi.i, %bb.ax ], [ %lpad.thr_comm.split-lp, %bb.ba ], [ %.pn35.i, %.body.thread.i ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker3MutNtCsghEUimwObfx_11proc_macro25IdentINtNtB7_3map8BTreeMapNtNtBb_6string6StringNtNtCs5GOeAjNCyUy_11ruff_macros9map_codes4RuleENtB1h_14LeafOrInternalE11search_treeB1x_EB2Q_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr %1, i64 %2, ptr align 8 %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %.sroa.3.0 = phi i64 [ %2, %bb.a ], [ %i.r, %bb.g ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %1, %bb.a ], [ %i.q, %bb.g ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 538
  %i.d = load i16, ptr %i.c, align 2
  %i.e = zext i16 %i.d to i64                     ; 2 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.e
  store ptr %i.b, ptr %i.a, align 8
  store ptr %i.f, ptr %.sroa.2.0..sroa_idx.i, align 8
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.g = call { i64, ptr } @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtCsghEUimwObfx_11proc_macro25IdentEENtNtNtB8_6traits8iterator8Iterator4nextCs5GOeAjNCyUy_11ruff_macros(ptr nonnull align 8 %i.a) ; 3 uses
  %i.h = extractvalue { i64, ptr } %i.g, 1        ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = call align 8 ptr @_RNvXNtCs4NRVxsYgnAr_4core6borrowNtCsghEUimwObfx_11proc_macro25IdentINtB2_6BorrowBu_E6borrowCs5GOeAjNCyUy_11ruff_macros(ptr nonnull align 8 %i.h)
  %i.j = call i8 @_RNvXsC_CsghEUimwObfx_11proc_macro2NtB5_5IdentNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp(ptr align 8 %3, ptr align 8 %i.i)
  switch i8 %i.j, label %bb.e [
    i8 -1, label %.loopexit.split.loop.exit3.i
    i8 0, label %bb.f
    i8 1, label %bb.c
  ]

.loopexit.split.loop.exit3.i:                     ; preds = %bb.d
  %i.k = extractvalue { i64, ptr } %i.g, 0
  br label %.loopexit

bb.e:                                             ; preds = %bb.d
  unreachable

.loopexit:                                        ; preds = %bb.c, %.loopexit.split.loop.exit3.i
  %.sroa.4.0.i.ph = phi i64 [ %i.k, %.loopexit.split.loop.exit3.i ], [ %i.e, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = icmp eq i64 %.sroa.3.0, 0
  br i1 %i.l, label %.loopexit79, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.m = extractvalue { i64, ptr } %i.g, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit79

.loopexit79:                                      ; preds = %.loopexit, %bb.f
end_hunk_5
