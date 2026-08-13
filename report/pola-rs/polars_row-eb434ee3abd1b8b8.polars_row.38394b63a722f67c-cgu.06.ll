inline.NumInlined: 465
inline.NumDeleted: 212
begin_hunk_0_@_RNvNtCs4PheDXcg4wa_10polars_row6encode12encode_array:bb.a
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.sroa.22.0229, !dbg !4266 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !dbg !4266, !noundef !12 ; 4 uses
  %i.dt = icmp ult i64 %i.ds, %1, !dbg !4267
  br i1 %i.dt, label %bb.ae, label %bb.af, !dbg !4267

bb.ad:                                            ; preds = %bb.ab
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.22.0229, i64 noundef %6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #27, !dbg !4266
  unreachable, !dbg !4266

bb.ae:                                            ; preds = %bb.ac
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 %i.ds, !dbg !4267
  store i8 %sext.i, ptr %i.du, align 1, !dbg !4267
  %i.dv = add nuw nsw i64 %i.ds, 1, !dbg !4268
  store i64 %i.dv, ptr %i.dr, align 8, !dbg !4268
  %.not93 = icmp eq i64 %.val.i.i.i.i.i, %.val1.i.i.i.i.i, !dbg !4269
  br i1 %.not93, label %.backedge, label %bb.ag, !dbg !4269

bb.af:                                            ; preds = %bb.ac
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ds, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #27, !dbg !4267
  unreachable, !dbg !4267

.backedge:                                        ; preds = %bb.ae, %bb.ag, %bb.aj
  %exitcond269 = icmp eq i64 %.sroa.22.0229, %i.bm, !dbg !3993
  br i1 %exitcond269, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3map3MapINtNtNtBa_5slice4iter7WindowsxENCNvMs6_NtCs8774dFTUdNv_12polars_arrow6offsetINtB20_13OffsetsBufferxE22offset_and_length_iter0EENtNtNtB8_6traits8iterator8Iterator4nextCs4PheDXcg4wa_10polars_row.exit, label %bb.w, !dbg !3993

bb.ag:                                            ; preds = %bb.ae
  call void @_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter7sources8repeat_n7RepeatNjEECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.da, i64 %7), !dbg !4270
  br label %.backedge, !dbg !4270

._crit_edge221:                                   ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecjE8push_mutCs4PheDXcg4wa_10polars_row.exit105, %.preheader
  %i.dw = icmp ult i64 %.sroa.22.0229, %6, !dbg !4279
  br i1 %i.dw, label %bb.ah, label %bb.ai, !dbg !4279

.lr.ph220.split:                                  ; preds = %.lr.ph220.split.preheader, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecjE8push_mutCs4PheDXcg4wa_10polars_row.exit105
  %i.dx = phi i64 [ %i.ep, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecjE8push_mutCs4PheDXcg4wa_10polars_row.exit105 ], [ %.pre276, %.lr.ph220.split.preheader ], !dbg !4258 ; 4 uses
  %.sroa.050.0219 = phi i64 [ %i.dy, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecjE8push_mutCs4PheDXcg4wa_10polars_row.exit105 ], [ %.val1.i.i.i.i.i, %.lr.ph220.split.preheader ] ; 2 uses
  %i.dy = add i64 %.sroa.050.0219, 1, !dbg !4280  ; 2 uses
  %i.dz = icmp ult i64 %i.dx, %1, !dbg !4260
  br i1 %i.dz, label %bb.am, label %bb.ao, !dbg !4260

bb.ah:                                            ; preds = %._crit_edge221
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.sroa.22.0229, !dbg !4279 ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !dbg !4279, !noundef !12 ; 4 uses
  %i.ec = icmp ult i64 %i.eb, %1, !dbg !4286
  br i1 %i.ec, label %bb.aj, label %bb.ak, !dbg !4286

bb.ai:                                            ; preds = %._crit_edge221
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.22.0229, i64 noundef %6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #27, !dbg !4279
  unreachable, !dbg !4279

bb.aj:                                            ; preds = %bb.ah
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 %i.eb, !dbg !4286
  store i8 %..i99, ptr %i.ed, align 1, !dbg !4286
  %i.ee = add nuw nsw i64 %i.eb, 1, !dbg !4287
  store i64 %i.ee, ptr %i.ea, align 8, !dbg !4287
  br label %.backedge, !dbg !4288

bb.ak:                                            ; preds = %bb.ah
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.eb, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #27, !dbg !4286
  unreachable, !dbg !4286

bb.al:                                            ; preds = %.lr.ph220
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.22.0229, i64 noundef %6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #27, !dbg !4258
  unreachable, !dbg !4258

bb.am:                                            ; preds = %.lr.ph220.split
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 %i.dx, !dbg !4260
  store i8 %..i, ptr %i.ef, align 1, !dbg !4260
  %i.eg = add nuw nsw i64 %i.dx, 1, !dbg !4289    ; 2 uses
  store i64 %i.eg, ptr %i.dn, align 8, !dbg !4289
  %i.eh = load i64, ptr %i.au, align 8, !dbg !4290, !alias.scope !4293, !noundef !12 ; 3 uses
  %i.ei = load i64, ptr %8, align 8, !dbg !4296, !range !258, !alias.scope !4293, !noundef !12
  %i.ej = icmp eq i64 %i.eh, %i.ei, !dbg !4299
  br i1 %i.ej, label %bb.an, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecjE8push_mutCs4PheDXcg4wa_10polars_row.exit105, !dbg !4299

bb.an:                                            ; preds = %bb.am
  call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs39HECPMKlmJ_7ndarray(ptr noalias noundef nonnull align 8 dereferenceable(24) %8), !dbg !4300
  br label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecjE8push_mutCs4PheDXcg4wa_10polars_row.exit105, !dbg !4300

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecjE8push_mutCs4PheDXcg4wa_10polars_row.exit105: ; preds = %bb.am, %bb.an
  %i.ek = load ptr, ptr %i.bl, align 8, !dbg !4301, !alias.scope !4293, !nonnull !12, !noundef !12
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.eh, !dbg !4306
  store i64 %i.eg, ptr %i.el, align 8, !dbg !4308
  %i.em = add i64 %i.eh, 1, !dbg !4310
  store i64 %i.em, ptr %i.au, align 8, !dbg !4310, !alias.scope !4293
  %i.en = call noundef i64 @_RNvMs_NtCs4PheDXcg4wa_10polars_row6widthsNtB4_9RowWidths3get(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.s, i64 noundef %.sroa.050.0219), !dbg !4311
  %i.eo = load i64, ptr %i.dn, align 8, !dbg !4312, !noundef !12
  %i.ep = add i64 %i.eo, %i.en, !dbg !4312        ; 2 uses
  store i64 %i.ep, ptr %i.dn, align 8, !dbg !4312
  %exitcond268.not = icmp eq i64 %i.dy, %.val.i.i.i.i.i, !dbg !4249
  br i1 %exitcond268.not, label %._crit_edge221, label %.lr.ph220.split, !dbg !4257

bb.ao:                                            ; preds = %.lr.ph220.split
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.dx, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #27, !dbg !4260
  unreachable, !dbg !4260

bb.ap:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !4313
  %i.eq = mul i64 %i.am, %6, !dbg !4314           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4320
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.eq, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !dbg !4320
  %i.er = load i64, ptr %i.a, align 8, !dbg !4320, !range !3352, !noundef !12
  %i.es = trunc nuw i64 %i.er to i1, !dbg !4329
  %i.et = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !4330
  %i.eu = load i64, ptr %i.et, align 8, !dbg !4330, !range !161, !noundef !12 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !4330 ; 2 uses
  br i1 %i.es, label %bb.aq, label %bb.ar, !dbg !4329, !prof !788

bb.aq:                                            ; preds = %bb.ap
  %i.ew = load i64, ptr %i.ev, align 8, !dbg !4331
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.eu, i64 %i.ew) #29, !dbg !4332
  unreachable, !dbg !4332

bb.ar:                                            ; preds = %bb.ap
  %i.ex = load ptr, ptr %i.ev, align 8, !dbg !4334, !nonnull !12, !noundef !12 ; 3 uses
  %i.ey = icmp ule i64 %i.eq, %i.eu, !dbg !4335
  tail call void @llvm.assume(i1 %i.ey), !dbg !4339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4342
  store i64 %i.eu, ptr %i.d, align 8, !dbg !4343
  %i.ez = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !4343 ; 4 uses
  store ptr %i.ex, ptr %i.ez, align 8, !dbg !4343
  %i.fa = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !4343 ; 5 uses
  store i64 0, ptr %i.fa, align 8, !dbg !4343
  %.idx242 = shl nuw nsw i64 %6, 3, !dbg !4344
  %i.fb = getelementptr inbounds nuw i8, ptr %5, i64 %.idx242, !dbg !4344 ; 2 uses
  %i.fc = icmp eq i64 %6, 0, !dbg !4355           ; 2 uses
  br i1 %i.fc, label %._crit_edge, label %.lr.ph214, !dbg !4366

.lr.ph214:                                        ; preds = %bb.ar
  %i.fd = load i64, ptr %i.al, align 8, !dbg !4367, !noundef !12 ; 2 uses
  %.not243 = icmp eq i64 %i.fd, 0, !dbg !4369
  br i1 %.not243, label %._crit_edge, label %.lr.ph214.split

.loopexit:                                        ; preds = %bb.bb, %.lr.ph214.split
  %i.fe = icmp eq ptr %i.fg, %i.fb, !dbg !4355
  br i1 %i.fe, label %._crit_edge.loopexit246, label %.lr.ph214.splitthread-pre-split, !dbg !4366, !llvm.loop !4377

.loopexit190:                                     ; preds = %bb.ba, %bb.az
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.loopexit.split-lp:                               ; preds = %._crit_edge, %bb.ax
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.as:                                            ; preds = %.loopexit.split-lp, %.loopexit190
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit190 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(24) %i.d) #25
          to label %common.resume unwind label %bb.aa, !dbg !4379

.lr.ph214.splitthread-pre-split:                  ; preds = %.loopexit
  %.pr = load i64, ptr %i.al, align 8, !dbg !4367
  br label %.lr.ph214.split, !dbg !4380

.lr.ph214.split:                                  ; preds = %.lr.ph214, %.lr.ph214.splitthread-pre-split
  %i.ff = phi i64 [ %.pr, %.lr.ph214.splitthread-pre-split ], [ %i.fd, %.lr.ph214 ], !dbg !4367 ; 2 uses
  %.sroa.7137.0213 = phi i64 [ %i.fh, %.lr.ph214.splitthread-pre-split ], [ 0, %.lr.ph214 ] ; 2 uses
  %.sroa.0135.0212 = phi ptr [ %i.fg, %.lr.ph214.splitthread-pre-split ], [ %5, %.lr.ph214 ] ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0135.0212, i64 8, !dbg !4380 ; 2 uses
  %i.fh = add nuw nsw i64 %.sroa.7137.0213, 1, !dbg !4383
  %.not244 = icmp eq i64 %i.ff, 0, !dbg !4369
  br i1 %.not244, label %.loopexit, label %.lr.ph211.preheader, !dbg !4386

.lr.ph211.preheader:                              ; preds = %.lr.ph214.split
  %.pre = load i64, ptr %.sroa.0135.0212, align 8, !dbg !4387
  br label %.lr.ph211, !dbg !4389

._crit_edge.loopexit246:                          ; preds = %.loopexit
  %.pre273 = load ptr, ptr %i.ez, align 8, !dbg !4392
  %.pre274 = load i64, ptr %i.fa, align 8, !dbg !4404
  br label %._crit_edge, !dbg !4405

._crit_edge:                                      ; preds = %.lr.ph214, %._crit_edge.loopexit246, %bb.ar
  %i.fi = phi i64 [ %.pre274, %._crit_edge.loopexit246 ], [ 0, %bb.ar ], [ 0, %.lr.ph214 ], !dbg !4404
  %i.fj = phi ptr [ %.pre273, %._crit_edge.loopexit246 ], [ %i.ex, %bb.ar ], [ %i.ex, %.lr.ph214 ], !dbg !4392
  %i.fk = getelementptr inbounds nuw i8, ptr %i.h, i64 32, !dbg !4405
  %i.fl = load ptr, ptr %i.fk, align 8, !dbg !4405, !nonnull !12, !noundef !12
  %i.fm = and i8 %3, 1, !dbg !4408
  %.not.i107 = icmp eq i8 %i.fm, 0, !dbg !4412
  %i.fn = or i8 %3, 2, !dbg !4412
  %i.fo = and i8 %3, -4, !dbg !4412
  %.sroa.0.0.i108 = select i1 %.not.i107, i8 %i.fo, i8 %i.fn, !dbg !4412
  invoke void @_RNvNtCs4PheDXcg4wa_10polars_row6encode12encode_array(ptr noalias noundef nonnull %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fl, i8 noundef %.sroa.0.0.i108, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %4, ptr noalias noundef nonnull align 8 %i.fj, i64 noundef %i.fi, i64 noundef %7, ptr noalias noundef nonnull align 8 dereferenceable(48) %8)
          to label %.preheader189 unwind label %.loopexit.split-lp, !dbg !4415

.preheader189:                                    ; preds = %._crit_edge
  br i1 %i.fc, label %._crit_edge218, label %.lr.ph217, !dbg !4416

.lr.ph217:                                        ; preds = %.preheader189
  %i.fp = load i64, ptr %i.fa, align 8, !noundef !12 ; 2 uses
  %i.fq = load ptr, ptr %i.ez, align 8, !nonnull !12
  %.pre275 = load i64, ptr %i.al, align 8, !dbg !4420
  br label %bb.at, !dbg !4416

bb.at:                                            ; preds = %.lr.ph217, %bb.aw
  %.sroa.7140.0216 = phi i64 [ 0, %.lr.ph217 ], [ %i.fr, %bb.aw ]
  %.sroa.0138.0215 = phi ptr [ %5, %.lr.ph217 ], [ %i.fx, %bb.aw ] ; 2 uses
  %i.fr = add nuw nsw i64 %.sroa.7140.0216, 1, !dbg !4421 ; 2 uses
  %i.fs = mul i64 %.pre275, %i.fr, !dbg !4423
  %i.ft = add i64 %i.fs, -1, !dbg !4421           ; 3 uses
  %i.fu = icmp ult i64 %i.ft, %i.fp, !dbg !4426
  br i1 %i.fu, label %bb.aw, label %bb.ax, !dbg !4426

._crit_edge218:                                   ; preds = %bb.aw, %.preheader189
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs4PheDXcg4wa_10polars_row.exit unwind label %bb.au, !dbg !4435

bb.au:                                            ; preds = %._crit_edge218
  %i.fv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.av, !dbg !4437

bb.av:                                            ; preds = %bb.au
  %i.fw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #22, !dbg !4435
  unreachable, !dbg !4435

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs4PheDXcg4wa_10polars_row.exit: ; preds = %._crit_edge218
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d), !dbg !4439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !4379
  br label %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs4PheDXcg4wa_10polars_row6encode7EncoderEIBX_INtNtBb_6option6OptionNtNtB1q_3row18RowEncodingContextEEEINtB5_7ZipImplBW_B26_E4nextB1q_.exit.thread, !dbg !4441

bb.aw:                                            ; preds = %bb.at
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.0138.0215, i64 8, !dbg !4442 ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.ft, !dbg !4444
  %i.fz = load i64, ptr %i.fy, align 8, !dbg !4445, !noundef !12
  store i64 %i.fz, ptr %.sroa.0138.0215, align 8, !dbg !4446
  %i.ga = icmp eq ptr %i.fx, %i.fb, !dbg !4447
  br i1 %i.ga, label %._crit_edge218, label %bb.at, !dbg !4416

bb.ax:                                            ; preds = %bb.at
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ft, i64 noundef %i.fp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #29
          to label %bb.ay unwind label %.loopexit.split-lp, !dbg !4426

bb.ay:                                            ; preds = %bb.ax
  unreachable

.lr.ph211:                                        ; preds = %.lr.ph211.preheader, %bb.bb
  %i.gb = phi i64 [ %i.go, %bb.bb ], [ %.pre, %.lr.ph211.preheader ], !dbg !4387
  %.sroa.053.0210 = phi i64 [ %i.gc, %bb.bb ], [ 0, %.lr.ph211.preheader ] ; 2 uses
  %i.gc = add nuw i64 %.sroa.053.0210, 1, !dbg !4449 ; 2 uses
  %i.gd = load i64, ptr %i.fa, align 8, !dbg !4455, !alias.scope !4456, !noundef !12 ; 3 uses
  %i.ge = load i64, ptr %i.d, align 8, !dbg !4459, !range !258, !alias.scope !4456, !noundef !12
  %i.gf = icmp eq i64 %i.gd, %i.ge, !dbg !4389
  br i1 %i.gf, label %bb.az, label %bb.ba, !dbg !4389

bb.az:                                            ; preds = %.lr.ph211
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs39HECPMKlmJ_7ndarray(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.ba unwind label %.loopexit190, !dbg !4462

bb.ba:                                            ; preds = %.lr.ph211, %bb.az
  %i.gg = load ptr, ptr %i.ez, align 8, !dbg !4463, !alias.scope !4456, !nonnull !12, !noundef !12
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.gd, !dbg !4468
  store i64 %i.gb, ptr %i.gh, align 8, !dbg !4470
  %i.gi = add i64 %i.gd, 1, !dbg !4472
  store i64 %i.gi, ptr %i.fa, align 8, !dbg !4472, !alias.scope !4456
  %i.gj = load i64, ptr %i.al, align 8, !dbg !4473, !noundef !12
  %i.gk = mul i64 %i.gj, %.sroa.7137.0213, !dbg !4475
  %i.gl = add i64 %i.gk, %.sroa.053.0210, !dbg !4474
  %i.gm = invoke noundef i64 @_RNvMs_NtCs4PheDXcg4wa_10polars_row6widthsNtB4_9RowWidths3get(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h, i64 noundef %i.gl)
          to label %bb.bb unwind label %.loopexit190, !dbg !4478

bb.bb:                                            ; preds = %bb.ba
  %i.gn = load i64, ptr %.sroa.0135.0212, align 8, !dbg !4479, !noundef !12
  %i.go = add i64 %i.gn, %i.gm, !dbg !4479        ; 2 uses
  store i64 %i.go, ptr %.sroa.0135.0212, align 8, !dbg !4479
  %exitcond267.not = icmp eq i64 %i.gc, %i.ff, !dbg !4369
  br i1 %exitcond267.not, label %.loopexit, label %.lr.ph211, !dbg !4386

bb.bc:                                            ; preds = %bb.g
  %i.gp = load i64, ptr %4, align 8, !dbg !3894, !range !974, !noundef !12
  %i.gq = icmp sgt i64 %i.gp, -1, !dbg !3894
  br i1 %i.gq, label %bb.bf, label %bb.bg, !dbg !3895, !prof !987

bb.bd:                                            ; preds = %bb.g
  %i.gr = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !4480
  %i.gs = load ptr, ptr %i.gr, align 8, !dbg !4480, !nonnull !12, !noundef !12 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !4500
  %i.gu = load i64, ptr %i.gt, align 8, !dbg !4500, !noundef !12 ; 2 uses
  %.idx = mul nuw nsw i64 %i.gu, 24, !dbg !4501
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 %.idx, !dbg !4501
  %i.gw = icmp eq i64 %i.gu, 0, !dbg !4510
  br i1 %i.gw, label %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs4PheDXcg4wa_10polars_row6encode7EncoderEIBX_INtNtBb_6option6OptionNtNtB1q_3row18RowEncodingContextEEEINtB5_7ZipImplBW_B26_E4nextB1q_.exit.thread, label %.lr.ph, !dbg !4512

.lr.ph:                                           ; preds = %bb.bd
  %i.gx = and i8 %3, 1
  %.not.i113 = icmp eq i8 %i.gx, 0
  %i.gy = or i8 %3, 2
  %i.gz = and i8 %3, -4
  %.sroa.0.0.i114 = select i1 %.not.i113, i8 %i.gz, i8 %i.gy
  br label %bb.be, !dbg !4512

bb.be:                                            ; preds = %.lr.ph, %bb.be
  %.sroa.027.0209 = phi ptr [ %i.gs, %.lr.ph ], [ %i.ha, %bb.be ] ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.027.0209, i64 24, !dbg !4519 ; 2 uses
  tail call void @_RNvNtCs4PheDXcg4wa_10polars_row6encode12encode_array(ptr noalias noundef nonnull %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.027.0209, i8 noundef %.sroa.0.0.i114, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull align 8 %5, i64 noundef %6, i64 noundef %7, ptr noalias noundef nonnull align 8 dereferenceable(48) %8), !dbg !4522
  %i.hb = icmp eq ptr %i.ha, %i.gv, !dbg !4510
  br i1 %i.hb, label %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs4PheDXcg4wa_10polars_row6encode7EncoderEIBX_INtNtBb_6option6OptionNtNtB1q_3row18RowEncodingContextEEEINtB5_7ZipImplBW_B26_E4nextB1q_.exit.thread, label %bb.be, !dbg !4512

bb.bf:                                            ; preds = %bb.bc
  %i.hc = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !4524
  %i.hd = load ptr, ptr %i.hc, align 8, !dbg !4524, !nonnull !12, !noundef !12 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !4537
  %i.hf = load i64, ptr %i.he, align 8, !dbg !4537, !noundef !12
  %i.hg = getelementptr inbounds nuw [24 x i8], ptr %i.hd, i64 %i.hf, !dbg !4538
  %i.hh = getelementptr i8, ptr %4, i64 8, !dbg !4546
  %.val95 = load ptr, ptr %i.hh, align 8, !dbg !4546, !nonnull !12, !noundef !12 ; 2 uses
  %i.hi = getelementptr i8, ptr %4, i64 16, !dbg !4546
  %.val96 = load i64, ptr %i.hi, align 8, !dbg !4546, !noundef !12
  %i.hj = getelementptr inbounds nuw [24 x i8], ptr %.val95, i64 %.val96, !dbg !4547
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs4PheDXcg4wa_10polars_row6encode7EncoderEIBX_INtNtBb_6option6OptionNtNtB1q_3row18RowEncodingContextEEEINtB5_7ZipImplBW_B26_E3newB1q_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.hd, ptr noundef nonnull %i.hg, ptr noundef nonnull %.val95, ptr noundef nonnull %i.hj), !dbg !4554
  %.sroa.0141.0.copyload = load ptr, ptr %i.c, align 8, !dbg !4535 ; 2 uses
  %.sroa.4143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !4535
  %.sroa.4143.0.copyload = load ptr, ptr %.sroa.4143.0..sroa_idx, align 8, !dbg !4535 ; 2 uses
  %.sroa.5145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !4535
  %.sroa.5145.0.copyload = load i64, ptr %.sroa.5145.0..sroa_idx, align 8, !dbg !4535 ; 2 uses
  %.sroa.7146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !4535
  %.sroa.7146.0.copyload = load i64, ptr %.sroa.7146.0..sroa_idx, align 8, !dbg !4535 ; 2 uses
  %i.hk = icmp ult i64 %.sroa.5145.0.copyload, %.sroa.7146.0.copyload, !dbg !4557
  br i1 %i.hk, label %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs4PheDXcg4wa_10polars_row6encode7EncoderEIBX_INtNtBb_6option6OptionNtNtB1q_3row18RowEncodingContextEEEINtB5_7ZipImplBW_B26_E4nextB1q_.exit.lr.ph, label %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs4PheDXcg4wa_10polars_row6encode7EncoderEIBX_INtNtBb_6option6OptionNtNtB1q_3row18RowEncodingContextEEEINtB5_7ZipImplBW_B26_E4nextB1q_.exit.thread, !dbg !4557

_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs4PheDXcg4wa_10polars_row6encode7EncoderEIBX_INtNtBb_6option6OptionNtNtB1q_3row18RowEncodingContextEEEINtB5_7ZipImplBW_B26_E4nextB1q_.exit.lr.ph: ; preds = %bb.bf
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0141.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4143.0.copyload) ]
  %i.hl = and i8 %3, 1
  %.not.i116 = icmp eq i8 %i.hl, 0
  %i.hm = or i8 %3, 2
  %i.hn = and i8 %3, -4
  %.sroa.0.0.i117 = select i1 %.not.i116, i8 %i.hn, i8 %i.hm
  br label %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs4PheDXcg4wa_10polars_row6encode7EncoderEIBX_INtNtBb_6option6OptionNtNtB1q_3row18RowEncodingContextEEEINtB5_7ZipImplBW_B26_E4nextB1q_.exit, !dbg !4557

bb.bg:                                            ; preds = %bb.bc
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #27, !dbg !4564
  unreachable, !dbg !4564

_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs4PheDXcg4wa_10polars_row6encode7EncoderEIBX_INtNtBb_6option6OptionNtNtB1q_3row18RowEncodingContextEEEINtB5_7ZipImplBW_B26_E4nextB1q_.exit: ; preds = %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs4PheDXcg4wa_10polars_row6encode7EncoderEIBX_INtNtBb_6option6OptionNtNtB1q_3row18RowEncodingContextEEEINtB5_7ZipImplBW_B26_E4nextB1q_.exit.lr.ph, %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs4PheDXcg4wa_10polars_row6encode7EncoderEIBX_INtNtBb_6option6OptionNtNtB1q_3row18RowEncodingContextEEEINtB5_7ZipImplBW_B26_E4nextB1q_.exit
  %.sroa.5145.0208 = phi i64 [ %.sroa.5145.0.copyload, %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs4PheDXcg4wa_10polars_row6encode7EncoderEIBX_INtNtBb_6option6OptionNtNtB1q_3row18RowEncodingContextEEEINtB5_7ZipImplBW_B26_E4nextB1q_.exit.lr.ph ], [ %i.hq, %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs4PheDXcg4wa_10polars_row6encode7EncoderEIBX_INtNtBb_6option6OptionNtNtB1q_3row18RowEncodingContextEEEINtB5_7ZipImplBW_B26_E4nextB1q_.exit ] ; 3 uses
  %i.ho = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0141.0.copyload, i64 %.sroa.5145.0208, !dbg !4565
  %i.hp = getelementptr inbounds nuw [24 x i8], ptr %.sroa.4143.0.copyload, i64 %.sroa.5145.0208, !dbg !4571 ; 2 uses
  %i.hq = add i64 %.sroa.5145.0208, 1, !dbg !4574 ; 2 uses
  %i.hr = load i64, ptr %i.hp, align 8, !dbg !4575, !range !1097, !noundef !12
  %.not87 = icmp eq i64 %i.hr, -9223372036854775806, !dbg !4575
  %. = select i1 %.not87, ptr null, ptr %i.hp, !dbg !4579
  tail call void @_RNvNtCs4PheDXcg4wa_10polars_row6encode12encode_array(ptr noalias noundef nonnull %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ho, i8 noundef %.sroa.0.0.i117, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %., ptr noalias noundef nonnull align 8 %5, i64 noundef %6, i64 noundef %7, ptr noalias noundef nonnull align 8 dereferenceable(48) %8), !dbg !4580
  %exitcond.not = icmp eq i64 %i.hq, %.sroa.7146.0.copyload, !dbg !4557
  br i1 %exitcond.not, label %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs4PheDXcg4wa_10polars_row6encode7EncoderEIBX_INtNtBb_6option6OptionNtNtB1q_3row18RowEncodingContextEEEINtB5_7ZipImplBW_B26_E4nextB1q_.exit.thread, label %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs4PheDXcg4wa_10polars_row6encode7EncoderEIBX_INtNtBb_6option6OptionNtNtB1q_3row18RowEncodingContextEEEINtB5_7ZipImplBW_B26_E4nextB1q_.exit, !dbg !4557
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs4PheDXcg4wa_10polars_row6encode15convert_columns(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 576460752303423488) %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %6, i64 noundef range(i64 0, 384307168202282326) %7) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4581 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 16               ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 6 uses
  %i.f = alloca [80 x i8], align 8                ; 9 uses
  %i.g = alloca [80 x i8], align 8                ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 10 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 9 uses
  %i.k = alloca [80 x i8], align 8                ; 4 uses
  %i.l = alloca [104 x i8], align 8               ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 9 uses
  %i.n = alloca [32 x i8], align 8                ; 14 uses
  %i.o = alloca [8 x i8], align 8                 ; 6 uses
  %i.p = alloca [8 x i8], align 8                 ; 5 uses
  %i.q = alloca [48 x i8], align 16               ; 7 uses
  %i.r = alloca [48 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !4582
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4583), !dbg !4586
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4587), !dbg !4586
  store i64 0, ptr %i.r, align 8, !dbg !4589, !alias.scope !4593, !noalias !4587
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !4589
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8, !dbg !4589, !alias.scope !4593, !noalias !4587
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16, !dbg !4589
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32, !dbg !4589
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false), !dbg !4589
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx, align 8, !dbg !4589, !alias.scope !4595, !noalias !4583
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40, !dbg !4589
  store i64 0, ptr %.sroa.53.0..sroa_idx, align 8, !dbg !4589, !alias.scope !4595, !noalias !4583
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !4596
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 %5, !dbg !4598
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %6, i64 %7, !dbg !4607
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCs4PheDXcg4wa_10polars_row3row18RowEncodingOptionsEEINtNtB7_3map3MapIB1j_INtNtBb_6option6OptionNtB1K_18RowEncodingContextEENCNvNtB1M_6encode15convert_columns0EEINtB5_7ZipImplBW_B2C_E3newB1M_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.q, ptr noundef nonnull %4, ptr noundef nonnull %i.s, ptr noundef nonnull %6, ptr noundef nonnull %i.t)
          to label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCs4PheDXcg4wa_10polars_row3row18RowEncodingOptionsEENtNtNtBa_6traits8iterator8Iterator3zipINtNtB8_3map3MapIBY_INtNtBc_6option6OptionNtB1p_18RowEncodingContextEENCNvNtB1r_6encode15convert_columns0EEB1r_.exit unwind label %bb.b, !dbg !4618

bb.b:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecjEECs4PheDXcg4wa_10polars_row.exit.i.i, %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !4623

.body:                                            ; preds = %.body.i, %bb.ak, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.u, %bb.b ], [ %i.cs, %bb.ak ], [ %.pn13.pn.i, %.body.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs4PheDXcg4wa_10polars_row3row11RowsEncodedEBK_(ptr noalias noundef align 8 dereferenceable(48) %i.r) #25
          to label %bb.au unwind label %bb.at, !dbg !4623

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCs4PheDXcg4wa_10polars_row3row18RowEncodingOptionsEENtNtNtBa_6traits8iterator8Iterator3zipINtNtB8_3map3MapIBY_INtNtBc_6option6OptionNtB1p_18RowEncodingContextEENCNvNtB1r_6encode15convert_columns0EEB1r_.exit: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4624), !dbg !4627
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 %1, ptr %i.p, align 8, !noalias !4628
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !4631, !noalias !4628
  store i64 0, ptr %i.o, align 8, !dbg !4634, !noalias !4628
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !4635, !noalias !4628
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !4637 ; 2 uses
  store i64 %1, ptr %i.v, align 8, !dbg !4637, !alias.scope !4639, !noalias !4628
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !4637 ; 2 uses
  store i64 0, ptr %i.w, align 8, !dbg !4637, !alias.scope !4639, !noalias !4628
  store i64 -9223372036854775808, ptr %i.n, align 8, !dbg !4637, !alias.scope !4639, !noalias !4628
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !4642, !noalias !4628
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !4644, !noalias !4628
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !4645
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 32, !dbg !4649
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %3, !dbg !4650
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !4659, !noalias !4662
  %i.aa = load <2 x ptr>, ptr %i.q, align 16, !dbg !4666, !alias.scope !4667, !noalias !4670
  store <2 x ptr> %i.aa, ptr %i.b, align 16, !dbg !4672, !alias.scope !4678, !noalias !4682
  %.sroa.5.0..sroa_idx23.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !4672
  %i.ab = load <2 x ptr>, ptr %i.x, align 16, !dbg !4645, !alias.scope !4667, !noalias !4670
  store <2 x ptr> %i.ab, ptr %.sroa.5.0..sroa_idx23.i, align 16, !dbg !4672, !alias.scope !4678, !noalias !4682
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !4672
  %i.ac = load <2 x i64>, ptr %i.y, align 16, !dbg !4649, !alias.scope !4667, !noalias !4670
  store <2 x i64> %i.ac, ptr %.sroa.7.0..sroa_idx.i, align 16, !dbg !4672, !alias.scope !4678, !noalias !4682
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEIBN_INtNtB7_6copied6CopiedIBX_NtNtCs4PheDXcg4wa_10polars_row3row18RowEncodingOptionsEEINtNtB7_3map3MapIBX_INtNtBb_6option6OptionNtB3f_18RowEncodingContextEENCNvNtB3h_6encode15convert_columns0EEEINtB5_7ZipImplBW_B2J_E3newB3h_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.k, ptr noundef nonnull readonly align 8 %2, ptr noundef nonnull readonly %i.z, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
end_hunk_0
