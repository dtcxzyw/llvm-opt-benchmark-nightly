Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/lib_beast?download=true
inline.NumInlined: 3033
inline.NumDeleted: 950
loop-unroll.NumCompletelyUnrolled: 64
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 78
begin_hunk_0_@_ZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeE:bb.a
  %.not129 = icmp eq i32 %i.dp, %i.dr
  br i1 %.not129, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.loopexit406
  %i.ds = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, i64 8), align 8, !tbaa !66, !noalias !1201
  %i.dt = and i64 %i.ds, -2
  %switch.i.i.i.i.i166 = icmp eq i64 %i.dt, -5572340897628102704
  br i1 %switch.i.i.i.i.i166, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i170, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i167

_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i167: ; preds = %bb.aa
  %i.du = load ptr, ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, align 8, !tbaa !61, !noalias !1201
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 48
  %i.dw = load ptr, ptr %i.dv, align 8, !noalias !1201
  %i.dx = call noundef zeroext i1 %i.dw(ptr noundef nonnull align 8 dereferenceable(52) @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, i32 noundef 6) #48, !noalias !1201, !inline_history !1162
  br i1 %i.dx, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i170, label %"_ZZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeEENK3$_1clENS1_5errorE.exit171"

_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i170: ; preds = %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i167, %bb.aa
  br label %"_ZZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeEENK3$_1clENS1_5errorE.exit171"

"_ZZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeEENK3$_1clENS1_5errorE.exit171": ; preds = %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i167, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i170
  %i.dy = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i170 ], [ 0, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i167 ]
  %i.dz = or disjoint i64 %i.dy, ptrtoint (ptr @"_ZZZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeEENK3$_1clENS1_5errorEE7loc_bb_" to i64)
  store i64 6, ptr %3, align 8
  %.sroa.5.0..0.val.sroa_idx.i168 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, ptr %.sroa.5.0..0.val.sroa_idx.i168, align 8
  store i64 %i.dz, ptr %i.aj, align 8, !tbaa !55
  store i32 27, ptr %i.t, align 8, !tbaa !401
  br label %.critedge

bb.ab:                                            ; preds = %.loopexit406
  store i32 0, ptr %i.y, align 4, !tbaa !403
  store i32 0, ptr %0, align 8, !tbaa !404
  store i32 12, ptr %i.t, align 8, !tbaa !401
  %i.ea = load i32, ptr %i.a, align 4, !tbaa !333
  %i.eb = icmp eq i32 %i.ea, 6
  br i1 %i.eb, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call fastcc void @"_ZZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeEENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(40) %5)
  br label %.critedge

bb.ad:                                            ; preds = %bb.ab, %bb.d
  store i32 13, ptr %i.t, align 8, !tbaa !401
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.d
  %i.ec = load i32, ptr %i.x, align 8, !tbaa !1200 ; 2 uses
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 9, ptr %i.t, align 8, !tbaa !401
  br label %.critedge134

bb.ag:                                            ; preds = %bb.ae
  %i.ee = load ptr, ptr %i.f, align 8, !tbaa !406
  %i.ef = load ptr, ptr %i.g, align 8, !tbaa !1202 ; 2 uses
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = zext i32 %i.ec to i64
  %spec.select5.i = call i64 @llvm.umin.i64(i64 %i.ei, i64 %i.ej)
  %i.ek = load ptr, ptr %i.n, align 8, !tbaa !407
  %i.el = load ptr, ptr %i.o, align 8, !tbaa !408 ; 2 uses
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = sub i64 %i.em, %i.en
  %spec.select5.i172 = call i64 @llvm.umin.i64(i64 %i.eo, i64 %spec.select5.i) ; 5 uses
  %i.ep = icmp eq i64 %spec.select5.i172, 0
  br i1 %i.ep, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call fastcc void @"_ZZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeEENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(40) %5)
  br label %.critedge

bb.ai:                                            ; preds = %bb.ag
  %spec.select.i173 = trunc nuw i64 %spec.select5.i172 to i32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.el, ptr align 1 %i.ef, i64 %spec.select5.i172, i1 false)
  %i.eq = load ptr, ptr %i.g, align 8, !tbaa !394
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 %spec.select5.i172
  store ptr %i.er, ptr %i.g, align 8, !tbaa !394
  %i.es = load ptr, ptr %i.o, align 8, !tbaa !395
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 %spec.select5.i172
  store ptr %i.et, ptr %i.o, align 8, !tbaa !395
  %i.eu = load i32, ptr %i.x, align 8, !tbaa !1200
  %i.ev = sub i32 %i.eu, %spec.select.i173
  store i32 %i.ev, ptr %i.x, align 8, !tbaa !1200
  br label %.critedge134

bb.aj:                                            ; preds = %bb.d
  %i.ew = load i32, ptr %i.y, align 4, !tbaa !403 ; 6 uses
  %.not.i174 = icmp ult i32 %i.ew, 14
  br i1 %.not.i174, label %.lr.ph.preheader.i176, label %..loopexit411_crit_edge

..loopexit411_crit_edge:                          ; preds = %bb.aj
  %.pre475 = load i32, ptr %0, align 8, !tbaa !404
  br label %.loopexit411

.lr.ph.preheader.i176:                            ; preds = %bb.aj
  %.pre.i177 = load ptr, ptr %i.g, align 8, !tbaa !167 ; 4 uses
  %i.ex = load ptr, ptr %i.f, align 8, !tbaa !167 ; 2 uses
  %.not10.i179 = icmp eq ptr %.pre.i177, %i.ex
  br i1 %.not10.i179, label %_ZN5boost5beast4zlib6detail9bitstream4fillIPKhEEbmRT_RKS7_.exit181, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.preheader.i176
  %i.ey = getelementptr inbounds nuw i8, ptr %.pre.i177, i64 1 ; 3 uses
  store ptr %i.ey, ptr %i.g, align 8, !tbaa !167
  %i.ez = load i8, ptr %.pre.i177, align 1, !tbaa !58
  %i.fa = zext i8 %i.ez to i32
  %i.fb = shl nuw nsw i32 %i.fa, %i.ew
  %i.fc = load i32, ptr %0, align 8, !tbaa !404
  %i.fd = add i32 %i.fb, %i.fc                    ; 2 uses
  store i32 %i.fd, ptr %0, align 8, !tbaa !404
  %i.fe = add nuw nsw i32 %i.ew, 8                ; 3 uses
  store i32 %i.fe, ptr %i.y, align 4, !tbaa !403
  %.not8.i180 = icmp ult i32 %i.ew, 6
  br i1 %.not8.i180, label %.lr.ph.i178.1, label %.loopexit411

.lr.ph.i178.1:                                    ; preds = %bb.ak
  %.not10.i179.1 = icmp eq ptr %i.ey, %i.ex
  br i1 %.not10.i179.1, label %_ZN5boost5beast4zlib6detail9bitstream4fillIPKhEEbmRT_RKS7_.exit181, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i178.1
  %i.ff = getelementptr inbounds nuw i8, ptr %.pre.i177, i64 2
  store ptr %i.ff, ptr %i.g, align 8, !tbaa !167
  %i.fg = load i8, ptr %i.ey, align 1, !tbaa !58
  %i.fh = zext i8 %i.fg to i32
  %i.fi = shl nuw nsw i32 %i.fh, %i.fe
  %i.fj = load i32, ptr %0, align 8, !tbaa !404
  %i.fk = add i32 %i.fi, %i.fj                    ; 2 uses
  store i32 %i.fk, ptr %0, align 8, !tbaa !404
  %i.fl = or disjoint i32 %i.ew, 16               ; 2 uses
  store i32 %i.fl, ptr %i.y, align 4, !tbaa !403
  br label %.loopexit411

_ZN5boost5beast4zlib6detail9bitstream4fillIPKhEEbmRT_RKS7_.exit181: ; preds = %.lr.ph.i178.1, %.lr.ph.preheader.i176
  call fastcc void @"_ZZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeEENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(40) %5)
  br label %.critedge

.loopexit411:                                     ; preds = %bb.ak, %bb.al, %..loopexit411_crit_edge
  %i.fm = phi i32 [ %i.ew, %..loopexit411_crit_edge ], [ %i.fe, %bb.ak ], [ %i.fl, %bb.al ]
  %i.fn = phi i32 [ %.pre475, %..loopexit411_crit_edge ], [ %i.fd, %bb.ak ], [ %i.fk, %bb.al ] ; 4 uses
  %i.fo = and i32 %i.fn, 31                       ; 2 uses
  %i.fp = lshr i32 %i.fn, 5
  %i.fq = add nuw nsw i32 %i.fo, 257
  store i32 %i.fq, ptr %i.z, align 8, !tbaa !1203
  %i.fr = and i32 %i.fp, 31                       ; 2 uses
  %i.fs = lshr i32 %i.fn, 10
  %i.ft = add nuw nsw i32 %i.fr, 1
  store i32 %i.ft, ptr %i.aa, align 4, !tbaa !1204
  %i.fu = and i32 %i.fs, 15
  %i.fv = lshr i32 %i.fn, 14
  store i32 %i.fv, ptr %0, align 8, !tbaa !404
  %i.fw = add i32 %i.fm, -14
  store i32 %i.fw, ptr %i.y, align 4, !tbaa !403
  %i.fx = add nuw nsw i32 %i.fu, 4                ; 2 uses
  store i32 %i.fx, ptr %i.ab, align 4, !tbaa !1205
  %i.fy = icmp samesign ugt i32 %i.fo, 29
  %i.fz = icmp samesign ugt i32 %i.fr, 29
  %or.cond398 = select i1 %i.fy, i1 true, i1 %i.fz
  br i1 %or.cond398, label %bb.am, label %.thread575

bb.am:                                            ; preds = %.loopexit411
  %i.ga = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, i64 8), align 8, !tbaa !66, !noalias !1206
  %i.gb = and i64 %i.ga, -2
  %switch.i.i.i.i.i182 = icmp eq i64 %i.gb, -5572340897628102704
  br i1 %switch.i.i.i.i.i182, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i186, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i183

_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i183: ; preds = %bb.am
  %i.gc = load ptr, ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, align 8, !tbaa !61, !noalias !1206
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 48
  %i.ge = load ptr, ptr %i.gd, align 8, !noalias !1206
  %i.gf = call noundef zeroext i1 %i.ge(ptr noundef nonnull align 8 dereferenceable(52) @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, i32 noundef 7) #48, !noalias !1206, !inline_history !1162
  br i1 %i.gf, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i186, label %"_ZZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeEENK3$_1clENS1_5errorE.exit187"

_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i186: ; preds = %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i183, %bb.am
  br label %"_ZZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeEENK3$_1clENS1_5errorE.exit187"

"_ZZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeEENK3$_1clENS1_5errorE.exit187": ; preds = %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i183, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i186
  %i.gg = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i186 ], [ 0, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i183 ]
  %i.gh = or disjoint i64 %i.gg, ptrtoint (ptr @"_ZZZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeEENK3$_1clENS1_5errorEE7loc_bb_" to i64)
  store i64 7, ptr %3, align 8
  %.sroa.5.0..0.val.sroa_idx.i184 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, ptr %.sroa.5.0..0.val.sroa_idx.i184, align 8
  store i64 %i.gh, ptr %i.aj, align 8, !tbaa !55
  store i32 27, ptr %i.t, align 8, !tbaa !401
  br label %.critedge

.thread575:                                       ; preds = %.loopexit411
  store i32 0, ptr %i.ac, align 8, !tbaa !1198
  store i32 15, ptr %i.t, align 8, !tbaa !401
  br label %.lr.ph

bb.an:                                            ; preds = %bb.d
  %.pre477 = load i32, ptr %i.ab, align 4, !tbaa !1205 ; 2 uses
  %.promoted.pre = load i32, ptr %i.ac, align 8, !tbaa !1198 ; 3 uses
  %i.gi = icmp ult i32 %.promoted.pre, %.pre477
  br i1 %i.gi, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.thread575, %bb.an
  %i.gj = phi i32 [ %i.fx, %.thread575 ], [ %.pre477, %bb.an ] ; 2 uses
  %.promoted577 = phi i32 [ 0, %.thread575 ], [ %.promoted.pre, %bb.an ]
  %.promoted435 = load ptr, ptr %i.g, align 8
  %i.gk = load ptr, ptr %i.f, align 8
  %.promoted436 = load i32, ptr %i.y, align 4, !tbaa !403
  %wide.trip.count = zext i32 %.promoted577 to i64
  br label %bb.ao

.preheader:                                       ; preds = %bb.aq, %bb.an
  %i.gl = phi i32 [ %.promoted.pre, %bb.an ], [ %i.gj, %bb.aq ] ; 4 uses
  %i.gm = icmp ult i32 %i.gl, 19
  br i1 %i.gm, label %.lr.ph437.preheader, label %._crit_edge

.lr.ph437.preheader:                              ; preds = %.preheader
  %i.gn = zext nneg i32 %i.gl to i64              ; 2 uses
  %i.go = and i32 %i.gl, 3                        ; 2 uses
  %lcmp.mod.not = icmp eq i32 %i.go, 3
  br i1 %lcmp.mod.not, label %.lr.ph437.prol.loopexit, label %.lr.ph437.prol

.lr.ph437.prol:                                   ; preds = %.lr.ph437.preheader, %.lr.ph437.prol
  %indvars.iv456.prol = phi i64 [ %indvars.iv.next457.prol, %.lr.ph437.prol ], [ %i.gn, %.lr.ph437.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph437.prol ], [ 0, %.lr.ph437.preheader ]
  %indvars.iv.next457.prol = add nuw nsw i64 %indvars.iv456.prol, 1 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeEE5order, i64 %indvars.iv456.prol
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !58
  %i.gr = zext i8 %i.gq to i64
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.gr
  store i16 0, ptr %i.gs, align 2, !tbaa !197
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %i.gt = xor i32 %i.go, %prol.iter.next
  %prol.iter.cmp.not = icmp eq i32 %i.gt, 3
  br i1 %prol.iter.cmp.not, label %.lr.ph437.prol.loopexit.unr-lcssa, label %.lr.ph437.prol, !llvm.loop !1167

.lr.ph437.prol.loopexit.unr-lcssa:                ; preds = %.lr.ph437.prol
  %i.gu = trunc i64 %indvars.iv.next457.prol to i32
  br label %.lr.ph437.prol.loopexit

.lr.ph437.prol.loopexit:                          ; preds = %.lr.ph437.prol.loopexit.unr-lcssa, %.lr.ph437.preheader
  %.lcssa662.unr = phi i32 [ poison, %.lr.ph437.preheader ], [ %i.gu, %.lr.ph437.prol.loopexit.unr-lcssa ]
  %indvars.iv456.unr = phi i64 [ %i.gn, %.lr.ph437.preheader ], [ %indvars.iv.next457.prol, %.lr.ph437.prol.loopexit.unr-lcssa ]
  %i.gv = icmp ugt i32 %i.gl, 15
  br i1 %i.gv, label %._crit_edge.loopexit, label %.lr.ph437

bb.ao:                                            ; preds = %.lr.ph, %bb.aq
  %indvars.iv = phi i64 [ %wide.trip.count, %.lr.ph ], [ %indvars.iv.next, %bb.aq ] ; 2 uses
  %i.gw = phi i32 [ %.promoted436, %.lr.ph ], [ %i.hp, %bb.aq ] ; 4 uses
  %i.gx = phi ptr [ %.promoted435, %.lr.ph ], [ %i.hh, %bb.aq ] ; 4 uses
  %.not.i188 = icmp ult i32 %i.gw, 3
  br i1 %.not.i188, label %.lr.ph.preheader.i190, label %._crit_edge479

._crit_edge479:                                   ; preds = %bb.ao
  %.pre480 = load i32, ptr %0, align 8, !tbaa !404
  br label %bb.aq

.lr.ph.preheader.i190:                            ; preds = %bb.ao
  %.not10.i193 = icmp eq ptr %i.gx, %i.gk
  br i1 %.not10.i193, label %_ZN5boost5beast4zlib6detail9bitstream4fillIPKhEEbmRT_RKS7_.exit195, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.preheader.i190
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 1 ; 2 uses
  store ptr %i.gy, ptr %i.g, align 8, !tbaa !167
  %i.gz = load i8, ptr %i.gx, align 1, !tbaa !58
  %i.ha = zext i8 %i.gz to i32
  %i.hb = shl nuw nsw i32 %i.ha, %i.gw
  %i.hc = load i32, ptr %0, align 8, !tbaa !404
  %i.hd = add i32 %i.hb, %i.hc                    ; 2 uses
  store i32 %i.hd, ptr %0, align 8, !tbaa !404
  %i.he = or disjoint i32 %i.gw, 8                ; 2 uses
  store i32 %i.he, ptr %i.y, align 4, !tbaa !403
  br label %bb.aq, !llvm.loop !1159

_ZN5boost5beast4zlib6detail9bitstream4fillIPKhEEbmRT_RKS7_.exit195: ; preds = %.lr.ph.preheader.i190
  call fastcc void @"_ZZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeEENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(40) %5)
  br label %.critedge

bb.aq:                                            ; preds = %._crit_edge479, %bb.ap
  %i.hf = phi i32 [ %i.hd, %bb.ap ], [ %.pre480, %._crit_edge479 ] ; 2 uses
  %i.hg = phi i32 [ %i.he, %bb.ap ], [ %i.gw, %._crit_edge479 ]
  %i.hh = phi ptr [ %i.gy, %bb.ap ], [ %i.gx, %._crit_edge479 ]
  %i.hi = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeEE5order, i64 %indvars.iv
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !58
  %i.hk = zext i8 %i.hj to i64
  %i.hl = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.hk
  %i.hm = trunc i32 %i.hf to i16
  %i.hn = and i16 %i.hm, 7
  store i16 %i.hn, ptr %i.hl, align 2, !tbaa !197
  %i.ho = lshr i32 %i.hf, 3
  store i32 %i.ho, ptr %0, align 8, !tbaa !404
  %i.hp = add i32 %i.hg, -3                       ; 2 uses
  store i32 %i.hp, ptr %i.y, align 4, !tbaa !403
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hq = trunc i64 %indvars.iv.next to i32       ; 2 uses
  store i32 %i.hq, ptr %i.ac, align 8, !tbaa !1198
  %exitcond.not = icmp eq i32 %i.gj, %i.hq
  br i1 %exitcond.not, label %.preheader, label %bb.ao, !llvm.loop !1168

.lr.ph437:                                        ; preds = %.lr.ph437.prol.loopexit, %.lr.ph437
  %indvars.iv456 = phi i64 [ %indvars.iv.next457.3, %.lr.ph437 ], [ %indvars.iv456.unr, %.lr.ph437.prol.loopexit ] ; 5 uses
  %i.hr = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeEE5order, i64 %indvars.iv456
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !58
  %i.ht = zext i8 %i.hs to i64
  %i.hu = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.ht
  store i16 0, ptr %i.hu, align 2, !tbaa !197
  %i.hv = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeEE5order, i64 %indvars.iv456
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 1
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !58
  %i.hy = zext i8 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.hy
  store i16 0, ptr %i.hz, align 2, !tbaa !197
  %i.ia = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeEE5order, i64 %indvars.iv456
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 2
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !58
  %i.id = zext i8 %i.ic to i64
  %i.ie = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.id
  store i16 0, ptr %i.ie, align 2, !tbaa !197
  %indvars.iv.next457.3 = add nuw nsw i64 %indvars.iv456, 4 ; 2 uses
  %i.if = trunc i64 %indvars.iv.next457.3 to i32  ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeEE5order, i64 %indvars.iv456
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 3
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !58
  %i.ij = zext i8 %i.ii to i64
  %i.ik = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.ij
  store i16 0, ptr %i.ik, align 2, !tbaa !197
  %exitcond459.not.3 = icmp eq i32 %i.if, 19
  br i1 %exitcond459.not.3, label %._crit_edge.loopexit, label %.lr.ph437, !llvm.loop !1169

._crit_edge.loopexit:                             ; preds = %.lr.ph437, %.lr.ph437.prol.loopexit
  %.lcssa662 = phi i32 [ %.lcssa662.unr, %.lr.ph437.prol.loopexit ], [ %i.if, %.lr.ph437 ]
  store i32 %.lcssa662, ptr %i.ac, align 8, !tbaa !1198
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !389
  store ptr %i.ae, ptr %i.ag, align 8, !tbaa !387
  store i32 7, ptr %i.ah, align 8, !tbaa !409
  call void @_ZN5boost5beast4zlib6detail14inflate_stream13inflate_tableENS3_5buildEPtmPPNS3_4codeEPjS5_RNS_6system10error_codeE(i32 noundef 0, ptr noundef nonnull %i.ad, i64 noundef 19, ptr noundef nonnull %i.af, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.il = load i64, ptr %i.aj, align 8, !tbaa !68 ; 2 uses
  %i.im = and i64 %i.il, 1
  %.not.i.i196 = icmp eq i64 %i.im, 0
  br i1 %.not.i.i196, label %_ZNK5boost6system10error_codecvbEv.exit.thread357, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge
  %i.in = icmp eq i64 %i.il, 1
  br i1 %i.in, label %_ZNK5boost6system10error_codecvbEv.exit, label %_ZNK5boost6system10error_codecvbEv.exit.thread

_ZNK5boost6system10error_codecvbEv.exit:          ; preds = %bb.ar
  %i.io = load i32, ptr %3, align 8, !tbaa !200
  %.not399 = icmp eq i32 %i.io, 0
  br i1 %.not399, label %_ZNK5boost6system10error_codecvbEv.exit.thread357, label %_ZNK5boost6system10error_codecvbEv.exit.thread

_ZNK5boost6system10error_codecvbEv.exit.thread:   ; preds = %bb.ar, %_ZNK5boost6system10error_codecvbEv.exit
  store i32 27, ptr %i.t, align 8, !tbaa !401
  br label %.critedge134

_ZNK5boost6system10error_codecvbEv.exit.thread357: ; preds = %._crit_edge, %_ZNK5boost6system10error_codecvbEv.exit
  store i32 0, ptr %i.ac, align 8, !tbaa !1198
  store i32 16, ptr %i.t, align 8, !tbaa !401
  br label %bb.as

bb.as:                                            ; preds = %._crit_edge481, %_ZNK5boost6system10error_codecvbEv.exit.thread357
  %i.ip = phi i32 [ %.pre482, %._crit_edge481 ], [ 0, %_ZNK5boost6system10error_codecvbEv.exit.thread357 ] ; 2 uses
  %i.iq = load i32, ptr %i.z, align 8, !tbaa !1203 ; 2 uses
  %i.ir = load i32, ptr %i.aa, align 4, !tbaa !1204
  %i.is = add i32 %i.ir, %i.iq                    ; 3 uses
  %i.it = icmp ult i32 %i.ip, %i.is
  br i1 %i.it, label %.lr.ph444, label %._crit_edge445

.lr.ph444:                                        ; preds = %bb.as
  %.promoted438 = load ptr, ptr %i.g, align 8
  %i.iu = load i32, ptr %i.ah, align 8, !tbaa !409 ; 3 uses
  %i.iv = zext nneg i32 %i.iu to i64
  %i.iw = load ptr, ptr %i.f, align 8             ; 5 uses
  %notmask.i = shl nsw i64 -1, %i.iv
  %i.ix = and i64 %notmask.i, 65535
  %i.iy = xor i64 %i.ix, 65535
  %.pre483 = load i32, ptr %i.y, align 4, !tbaa !403
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph444, %bb.bg
  %i.iz = phi i32 [ %.pre483, %.lr.ph444 ], [ %i.oi, %bb.bg ] ; 3 uses
  %i.ja = phi i32 [ %i.ip, %.lr.ph444 ], [ %i.oh, %bb.bg ] ; 6 uses
  %i.jb = phi ptr [ %.promoted438, %.lr.ph444 ], [ %i.oj, %bb.bg ] ; 3 uses
  %.not.i197 = icmp ugt i32 %i.iu, %i.iz
  br i1 %.not.i197, label %.lr.ph.i201.preheader, label %..loopexit405_crit_edge

.lr.ph.i201.preheader:                            ; preds = %bb.at
  %.not10.i202636 = icmp eq ptr %i.jb, %i.iw
  br i1 %.not10.i202636, label %_ZN5boost5beast4zlib6detail9bitstream4fillIPKhEEbmRT_RKS7_.exit204, label %.lr.ph637.preheader

.lr.ph637.preheader:                              ; preds = %.lr.ph.i201.preheader
  %.promoted = load i32, ptr %0, align 8, !tbaa !404
  br label %.lr.ph637

..loopexit405_crit_edge:                          ; preds = %bb.at
  %.pre484 = load i32, ptr %0, align 8, !tbaa !404
  br label %.loopexit405

.lr.ph.i201:                                      ; preds = %.lr.ph637
  %.not10.i202 = icmp eq ptr %i.jf, %i.iw
  br i1 %.not10.i202, label %_ZN5boost5beast4zlib6detail9bitstream4fillIPKhEEbmRT_RKS7_.exit204, label %.lr.ph637, !llvm.loop !1159

.lr.ph637:                                        ; preds = %.lr.ph637.preheader, %.lr.ph.i201
  %i.jc = phi i32 [ %i.jj, %.lr.ph.i201 ], [ %.promoted, %.lr.ph637.preheader ]
  %i.jd = phi i32 [ %i.jk, %.lr.ph.i201 ], [ %i.iz, %.lr.ph637.preheader ] ; 2 uses
  %i.je = phi ptr [ %i.jf, %.lr.ph.i201 ], [ %i.jb, %.lr.ph637.preheader ] ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 1 ; 4 uses
  store ptr %i.jf, ptr %i.g, align 8, !tbaa !167
  %i.jg = load i8, ptr %i.je, align 1, !tbaa !58
  %i.jh = zext i8 %i.jg to i32
  %i.ji = shl i32 %i.jh, %i.jd
  %i.jj = add i32 %i.ji, %i.jc                    ; 3 uses
  store i32 %i.jj, ptr %0, align 8, !tbaa !404
  %i.jk = add i32 %i.jd, 8                        ; 4 uses
  store i32 %i.jk, ptr %i.y, align 4, !tbaa !403
  %.not8.i203 = icmp ugt i32 %i.iu, %i.jk
  br i1 %.not8.i203, label %.lr.ph.i201, label %.loopexit405, !llvm.loop !1159

_ZN5boost5beast4zlib6detail9bitstream4fillIPKhEEbmRT_RKS7_.exit204: ; preds = %.lr.ph.i201.preheader, %.lr.ph.i201
  call fastcc void @"_ZZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeEENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(40) %5)
  br label %.critedge

.loopexit405:                                     ; preds = %.lr.ph637, %..loopexit405_crit_edge
  %i.jl = phi i32 [ %i.iz, %..loopexit405_crit_edge ], [ %i.jk, %.lr.ph637 ] ; 5 uses
  %i.jm = phi i32 [ %.pre484, %..loopexit405_crit_edge ], [ %i.jj, %.lr.ph637 ] ; 8 uses
  %i.jn = phi ptr [ %i.jb, %..loopexit405_crit_edge ], [ %i.jf, %.lr.ph637 ] ; 7 uses
  %i.jo = zext i32 %i.jm to i64
  %i.jp = load ptr, ptr %i.ag, align 8, !tbaa !387
  %i.jq = and i64 %i.iy, %i.jo
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %i.jq ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 2
  %i.jt = load i16, ptr %i.js, align 2, !tbaa !411 ; 3 uses
  %i.ju = icmp ult i16 %i.jt, 16
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jr, i64 1
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !412 ; 5 uses
  br i1 %i.ju, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.loopexit405
  %i.jx = zext i8 %i.jw to i32                    ; 2 uses
  %i.jy = sub i32 %i.jl, %i.jx                    ; 2 uses
  store i32 %i.jy, ptr %i.y, align 4, !tbaa !403
  %i.jz = lshr i32 %i.jm, %i.jx
  store i32 %i.jz, ptr %0, align 8, !tbaa !404
  %i.ka = add i32 %i.ja, 1                        ; 2 uses
  store i32 %i.ka, ptr %i.ac, align 8, !tbaa !1198
  %i.kb = zext i32 %i.ja to i64
  %i.kc = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.kb
  store i16 %i.jt, ptr %i.kc, align 2, !tbaa !197
  br label %bb.bg

bb.av:                                            ; preds = %.loopexit405
  %i.kd = zext i8 %i.jw to i64                    ; 3 uses
  %i.ke = zext i32 %i.jl to i64                   ; 6 uses
  switch i16 %i.jt, label %bb.bc [
    i16 16, label %bb.aw
    i16 17, label %bb.ba
  ]

bb.aw:                                            ; preds = %bb.av
  %i.kf = add nuw nsw i64 %i.kd, 2                ; 2 uses
  %.not.i205 = icmp samesign ugt i64 %i.kf, %i.ke
  br i1 %.not.i205, label %.lr.ph.i209, label %.loopexit403

.lr.ph.i209:                                      ; preds = %bb.aw, %bb.ax
  %i.kg = phi i32 [ %i.kn, %bb.ax ], [ %i.jm, %bb.aw ]
  %indvars.iv463 = phi i64 [ %indvars.iv.next464, %bb.ax ], [ %i.ke, %bb.aw ] ; 2 uses
  %i.kh = phi ptr [ %i.ki, %bb.ax ], [ %i.jn, %bb.aw ] ; 3 uses
  %.not10.i210 = icmp eq ptr %i.kh, %i.iw
  br i1 %.not10.i210, label %_ZN5boost5beast4zlib6detail9bitstream4fillIPKhEEbmRT_RKS7_.exit212, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i209
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 1 ; 3 uses
  store ptr %i.ki, ptr %i.g, align 8, !tbaa !167
  %i.kj = load i8, ptr %i.kh, align 1, !tbaa !58
  %i.kk = zext i8 %i.kj to i32
  %i.kl = trunc nuw nsw i64 %indvars.iv463 to i32
  %i.km = shl i32 %i.kk, %i.kl
  %i.kn = add i32 %i.km, %i.kg                    ; 3 uses
  store i32 %i.kn, ptr %0, align 8, !tbaa !404
  %indvars.iv.next464 = add nuw nsw i64 %indvars.iv463, 8 ; 3 uses
  %i.ko = trunc nuw nsw i64 %indvars.iv.next464 to i32 ; 2 uses
  store i32 %i.ko, ptr %i.y, align 4, !tbaa !403
  %.not8.i211 = icmp samesign ugt i64 %i.kf, %indvars.iv.next464
  br i1 %.not8.i211, label %.lr.ph.i209, label %.loopexit403, !llvm.loop !1159

_ZN5boost5beast4zlib6detail9bitstream4fillIPKhEEbmRT_RKS7_.exit212: ; preds = %.lr.ph.i209
  call fastcc void @"_ZZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeEENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(40) %5)
  br label %.critedge

.loopexit403:                                     ; preds = %bb.ax, %bb.aw
  %i.kp = phi i32 [ %i.jm, %bb.aw ], [ %i.kn, %bb.ax ]
  %i.kq = phi i32 [ %i.jl, %bb.aw ], [ %i.ko, %bb.ax ]
  %i.kr = phi ptr [ %i.jn, %bb.aw ], [ %i.ki, %bb.ax ]
  %i.ks = zext i8 %i.jw to i32                    ; 2 uses
  %i.kt = sub i32 %i.kq, %i.ks                    ; 2 uses
end_hunk_0
