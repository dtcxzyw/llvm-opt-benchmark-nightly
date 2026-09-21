Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/lib_beast?download=true
inline.NumInlined: 3033
inline.NumDeleted: 950
loop-unroll.NumCompletelyUnrolled: 64
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 78
begin_hunk_0_@_ZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeE:bb.a

bb.ao:                                            ; preds = %.lr.ph, %bb.aq
  %indvars.iv = phi i64 [ %i.gl, %.lr.ph ], [ %indvars.iv.next, %bb.aq ] ; 2 uses
  %i.gx = phi i32 [ %.promoted436, %.lr.ph ], [ %i.hq, %bb.aq ] ; 4 uses
  %i.gy = phi ptr [ %.promoted435, %.lr.ph ], [ %i.hi, %bb.aq ] ; 4 uses
  %.not.i188 = icmp ult i32 %i.gx, 3
  br i1 %.not.i188, label %.lr.ph.preheader.i190, label %._crit_edge480

._crit_edge480:                                   ; preds = %bb.ao
  %.pre481 = load i32, ptr %0, align 8, !tbaa !404
  br label %bb.aq

.lr.ph.preheader.i190:                            ; preds = %bb.ao
  %.not10.i193 = icmp eq ptr %i.gy, %i.gk
  br i1 %.not10.i193, label %_ZN5boost5beast4zlib6detail9bitstream4fillIPKhEEbmRT_RKS7_.exit195, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.preheader.i190
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 1 ; 2 uses
  store ptr %i.gz, ptr %i.g, align 8, !tbaa !167
  %i.ha = load i8, ptr %i.gy, align 1, !tbaa !58
  %i.hb = zext i8 %i.ha to i32
  %i.hc = shl nuw nsw i32 %i.hb, %i.gx
  %i.hd = load i32, ptr %0, align 8, !tbaa !404
  %i.he = add i32 %i.hc, %i.hd                    ; 2 uses
  store i32 %i.he, ptr %0, align 8, !tbaa !404
  %i.hf = or disjoint i32 %i.gx, 8                ; 2 uses
  store i32 %i.hf, ptr %i.y, align 4, !tbaa !403
  br label %bb.aq, !llvm.loop !1159

_ZN5boost5beast4zlib6detail9bitstream4fillIPKhEEbmRT_RKS7_.exit195: ; preds = %.lr.ph.preheader.i190
  call fastcc void @"_ZZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeEENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(40) %5)
  br label %.critedge

bb.aq:                                            ; preds = %._crit_edge480, %bb.ap
  %i.hg = phi i32 [ %i.he, %bb.ap ], [ %.pre481, %._crit_edge480 ] ; 2 uses
  %i.hh = phi i32 [ %i.hf, %bb.ap ], [ %i.gx, %._crit_edge480 ]
  %i.hi = phi ptr [ %i.gz, %bb.ap ], [ %i.gy, %._crit_edge480 ]
  %i.hj = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeEE5order, i64 %indvars.iv
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !58
  %i.hl = zext i8 %i.hk to i64
  %i.hm = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.hl
  %i.hn = trunc i32 %i.hg to i16
  %i.ho = and i16 %i.hn, 7
  store i16 %i.ho, ptr %i.hm, align 2, !tbaa !197
  %i.hp = lshr i32 %i.hg, 3
  store i32 %i.hp, ptr %0, align 8, !tbaa !404
  %i.hq = add i32 %i.hh, -3                       ; 2 uses
  store i32 %i.hq, ptr %i.y, align 4, !tbaa !403
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hr = trunc i64 %indvars.iv.next to i32       ; 2 uses
  store i32 %i.hr, ptr %i.ac, align 8, !tbaa !1198
  %exitcond.not = icmp eq i32 %i.gj, %i.hr
  br i1 %exitcond.not, label %.preheader, label %bb.ao, !llvm.loop !1168

.lr.ph437:                                        ; preds = %.lr.ph437.prol.loopexit, %.lr.ph437
  %indvars.iv456 = phi i64 [ %indvars.iv.next457.3, %.lr.ph437 ], [ %indvars.iv456.unr, %.lr.ph437.prol.loopexit ] ; 5 uses
  %i.hs = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeEE5order, i64 %indvars.iv456
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !58
  %i.hu = zext i8 %i.ht to i64
  %i.hv = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.hu
  store i16 0, ptr %i.hv, align 2, !tbaa !197
  %i.hw = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeEE5order, i64 %indvars.iv456
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 1
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !58
  %i.hz = zext i8 %i.hy to i64
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.hz
  store i16 0, ptr %i.ia, align 2, !tbaa !197
  %i.ib = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeEE5order, i64 %indvars.iv456
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 2
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !58
  %i.ie = zext i8 %i.id to i64
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.ie
  store i16 0, ptr %i.if, align 2, !tbaa !197
  %indvars.iv.next457.3 = add nuw nsw i64 %indvars.iv456, 4 ; 2 uses
  %i.ig = trunc i64 %indvars.iv.next457.3 to i32  ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr @_ZZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeEE5order, i64 %indvars.iv456
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 3
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !58
  %i.ik = zext i8 %i.ij to i64
  %i.il = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.ik
  store i16 0, ptr %i.il, align 2, !tbaa !197
  %exitcond460.not.3 = icmp eq i32 %i.ig, 19
  br i1 %exitcond460.not.3, label %._crit_edge.loopexit, label %.lr.ph437, !llvm.loop !1169

._crit_edge.loopexit:                             ; preds = %.lr.ph437, %.lr.ph437.prol.loopexit
  %.lcssa660 = phi i32 [ %.lcssa660.unr, %.lr.ph437.prol.loopexit ], [ %i.ig, %.lr.ph437 ]
  store i32 %.lcssa660, ptr %i.ac, align 8, !tbaa !1198
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !389
  store ptr %i.ae, ptr %i.ag, align 8, !tbaa !387
  store i32 7, ptr %i.ah, align 8, !tbaa !409
  call void @_ZN5boost5beast4zlib6detail14inflate_stream13inflate_tableENS3_5buildEPtmPPNS3_4codeEPjS5_RNS_6system10error_codeE(i32 noundef 0, ptr noundef nonnull %i.ad, i64 noundef 19, ptr noundef nonnull %i.af, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.im = load i64, ptr %i.aj, align 8, !tbaa !68 ; 2 uses
  %i.in = and i64 %i.im, 1
  %.not.i.i196 = icmp eq i64 %i.in, 0
  br i1 %.not.i.i196, label %_ZNK5boost6system10error_codecvbEv.exit.thread357, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge
  %i.io = icmp eq i64 %i.im, 1
  br i1 %i.io, label %_ZNK5boost6system10error_codecvbEv.exit, label %_ZNK5boost6system10error_codecvbEv.exit.thread

_ZNK5boost6system10error_codecvbEv.exit:          ; preds = %bb.ar
  %i.ip = load i32, ptr %3, align 8, !tbaa !200
  %.not399 = icmp eq i32 %i.ip, 0
  br i1 %.not399, label %_ZNK5boost6system10error_codecvbEv.exit.thread357, label %_ZNK5boost6system10error_codecvbEv.exit.thread

_ZNK5boost6system10error_codecvbEv.exit.thread:   ; preds = %bb.ar, %_ZNK5boost6system10error_codecvbEv.exit
  store i32 27, ptr %i.t, align 8, !tbaa !401
  br label %.critedge134

_ZNK5boost6system10error_codecvbEv.exit.thread357: ; preds = %._crit_edge, %_ZNK5boost6system10error_codecvbEv.exit
  store i32 0, ptr %i.ac, align 8, !tbaa !1198
  store i32 16, ptr %i.t, align 8, !tbaa !401
  br label %bb.as

bb.as:                                            ; preds = %._crit_edge482, %_ZNK5boost6system10error_codecvbEv.exit.thread357
  %i.iq = phi i32 [ %.pre483, %._crit_edge482 ], [ 0, %_ZNK5boost6system10error_codecvbEv.exit.thread357 ] ; 2 uses
  %i.ir = load i32, ptr %i.z, align 8, !tbaa !1203 ; 2 uses
  %i.is = load i32, ptr %i.aa, align 4, !tbaa !1204
  %i.it = add i32 %i.is, %i.ir                    ; 3 uses
  %i.iu = icmp ult i32 %i.iq, %i.it
  br i1 %i.iu, label %.lr.ph444, label %._crit_edge445

.lr.ph444:                                        ; preds = %bb.as
  %.promoted438 = load ptr, ptr %i.g, align 8
  %i.iv = load i32, ptr %i.ah, align 8, !tbaa !409 ; 3 uses
  %i.iw = zext nneg i32 %i.iv to i64
  %i.ix = load ptr, ptr %i.f, align 8             ; 5 uses
  %notmask.i = shl nsw i64 -1, %i.iw
  %i.iy = and i64 %notmask.i, 65535
  %i.iz = xor i64 %i.iy, 65535
  %.pre484 = load i32, ptr %i.y, align 4, !tbaa !403
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph444, %bb.bg
  %i.ja = phi i32 [ %.pre484, %.lr.ph444 ], [ %i.oj, %bb.bg ] ; 3 uses
  %i.jb = phi i32 [ %i.iq, %.lr.ph444 ], [ %i.oi, %bb.bg ] ; 6 uses
  %i.jc = phi ptr [ %.promoted438, %.lr.ph444 ], [ %i.ok, %bb.bg ] ; 3 uses
  %.not.i197 = icmp ugt i32 %i.iv, %i.ja
  br i1 %.not.i197, label %.lr.ph.i201.preheader, label %..loopexit405_crit_edge

.lr.ph.i201.preheader:                            ; preds = %bb.at
  %.not10.i202635 = icmp eq ptr %i.jc, %i.ix
  br i1 %.not10.i202635, label %_ZN5boost5beast4zlib6detail9bitstream4fillIPKhEEbmRT_RKS7_.exit204, label %.lr.ph636.preheader

.lr.ph636.preheader:                              ; preds = %.lr.ph.i201.preheader
  %.promoted = load i32, ptr %0, align 8, !tbaa !404
  br label %.lr.ph636

..loopexit405_crit_edge:                          ; preds = %bb.at
  %.pre485 = load i32, ptr %0, align 8, !tbaa !404
  br label %.loopexit405

.lr.ph.i201:                                      ; preds = %.lr.ph636
  %.not10.i202 = icmp eq ptr %i.jg, %i.ix
  br i1 %.not10.i202, label %_ZN5boost5beast4zlib6detail9bitstream4fillIPKhEEbmRT_RKS7_.exit204, label %.lr.ph636, !llvm.loop !1159

.lr.ph636:                                        ; preds = %.lr.ph636.preheader, %.lr.ph.i201
  %i.jd = phi i32 [ %i.jk, %.lr.ph.i201 ], [ %.promoted, %.lr.ph636.preheader ]
  %i.je = phi i32 [ %i.jl, %.lr.ph.i201 ], [ %i.ja, %.lr.ph636.preheader ] ; 2 uses
  %i.jf = phi ptr [ %i.jg, %.lr.ph.i201 ], [ %i.jc, %.lr.ph636.preheader ] ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 1 ; 4 uses
  store ptr %i.jg, ptr %i.g, align 8, !tbaa !167
  %i.jh = load i8, ptr %i.jf, align 1, !tbaa !58
  %i.ji = zext i8 %i.jh to i32
  %i.jj = shl i32 %i.ji, %i.je
  %i.jk = add i32 %i.jj, %i.jd                    ; 3 uses
  store i32 %i.jk, ptr %0, align 8, !tbaa !404
  %i.jl = add i32 %i.je, 8                        ; 4 uses
  store i32 %i.jl, ptr %i.y, align 4, !tbaa !403
  %.not8.i203 = icmp ugt i32 %i.iv, %i.jl
  br i1 %.not8.i203, label %.lr.ph.i201, label %.loopexit405, !llvm.loop !1159

_ZN5boost5beast4zlib6detail9bitstream4fillIPKhEEbmRT_RKS7_.exit204: ; preds = %.lr.ph.i201.preheader, %.lr.ph.i201
  call fastcc void @"_ZZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeEENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(40) %5)
  br label %.critedge

.loopexit405:                                     ; preds = %.lr.ph636, %..loopexit405_crit_edge
  %i.jm = phi i32 [ %i.ja, %..loopexit405_crit_edge ], [ %i.jl, %.lr.ph636 ] ; 5 uses
  %i.jn = phi i32 [ %.pre485, %..loopexit405_crit_edge ], [ %i.jk, %.lr.ph636 ] ; 8 uses
  %i.jo = phi ptr [ %i.jc, %..loopexit405_crit_edge ], [ %i.jg, %.lr.ph636 ] ; 7 uses
  %i.jp = zext i32 %i.jn to i64
  %i.jq = load ptr, ptr %i.ag, align 8, !tbaa !387
  %i.jr = and i64 %i.iz, %i.jp
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %i.jr ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 2
  %i.ju = load i16, ptr %i.jt, align 2, !tbaa !411 ; 3 uses
  %i.jv = icmp ult i16 %i.ju, 16
  %i.jw = getelementptr inbounds nuw i8, ptr %i.js, i64 1
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !412 ; 5 uses
  br i1 %i.jv, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.loopexit405
  %i.jy = zext i8 %i.jx to i32                    ; 2 uses
  %i.jz = sub i32 %i.jm, %i.jy                    ; 2 uses
  store i32 %i.jz, ptr %i.y, align 4, !tbaa !403
  %i.ka = lshr i32 %i.jn, %i.jy
  store i32 %i.ka, ptr %0, align 8, !tbaa !404
  %i.kb = add i32 %i.jb, 1                        ; 2 uses
  store i32 %i.kb, ptr %i.ac, align 8, !tbaa !1198
  %i.kc = zext i32 %i.jb to i64
  %i.kd = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.kc
  store i16 %i.ju, ptr %i.kd, align 2, !tbaa !197
  br label %bb.bg

bb.av:                                            ; preds = %.loopexit405
  %i.ke = zext i8 %i.jx to i64                    ; 3 uses
  %i.kf = zext i32 %i.jm to i64                   ; 6 uses
  switch i16 %i.ju, label %bb.bc [
    i16 16, label %bb.aw
    i16 17, label %bb.ba
  ]

bb.aw:                                            ; preds = %bb.av
  %i.kg = add nuw nsw i64 %i.ke, 2                ; 2 uses
  %.not.i205 = icmp samesign ugt i64 %i.kg, %i.kf
  br i1 %.not.i205, label %.lr.ph.i209, label %.loopexit403

.lr.ph.i209:                                      ; preds = %bb.aw, %bb.ax
  %i.kh = phi i32 [ %i.ko, %bb.ax ], [ %i.jn, %bb.aw ]
  %indvars.iv464 = phi i64 [ %indvars.iv.next465, %bb.ax ], [ %i.kf, %bb.aw ] ; 2 uses
  %i.ki = phi ptr [ %i.kj, %bb.ax ], [ %i.jo, %bb.aw ] ; 3 uses
  %.not10.i210 = icmp eq ptr %i.ki, %i.ix
  br i1 %.not10.i210, label %_ZN5boost5beast4zlib6detail9bitstream4fillIPKhEEbmRT_RKS7_.exit212, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i209
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 1 ; 3 uses
  store ptr %i.kj, ptr %i.g, align 8, !tbaa !167
  %i.kk = load i8, ptr %i.ki, align 1, !tbaa !58
  %i.kl = zext i8 %i.kk to i32
  %i.km = trunc nuw nsw i64 %indvars.iv464 to i32
  %i.kn = shl i32 %i.kl, %i.km
  %i.ko = add i32 %i.kn, %i.kh                    ; 3 uses
  store i32 %i.ko, ptr %0, align 8, !tbaa !404
  %indvars.iv.next465 = add nuw nsw i64 %indvars.iv464, 8 ; 3 uses
  %i.kp = trunc nuw nsw i64 %indvars.iv.next465 to i32 ; 2 uses
  store i32 %i.kp, ptr %i.y, align 4, !tbaa !403
  %.not8.i211 = icmp samesign ugt i64 %i.kg, %indvars.iv.next465
  br i1 %.not8.i211, label %.lr.ph.i209, label %.loopexit403, !llvm.loop !1159

_ZN5boost5beast4zlib6detail9bitstream4fillIPKhEEbmRT_RKS7_.exit212: ; preds = %.lr.ph.i209
  call fastcc void @"_ZZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeEENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(40) %5)
  br label %.critedge

.loopexit403:                                     ; preds = %bb.ax, %bb.aw
  %i.kq = phi i32 [ %i.jn, %bb.aw ], [ %i.ko, %bb.ax ]
  %i.kr = phi i32 [ %i.jm, %bb.aw ], [ %i.kp, %bb.ax ]
  %i.ks = phi ptr [ %i.jo, %bb.aw ], [ %i.kj, %bb.ax ]
  %i.kt = zext i8 %i.jx to i32                    ; 2 uses
  %i.ku = sub i32 %i.kr, %i.kt                    ; 2 uses
  store i32 %i.ku, ptr %i.y, align 4, !tbaa !403
  %i.kv = lshr i32 %i.kq, %i.kt                   ; 3 uses
  store i32 %i.kv, ptr %0, align 8, !tbaa !404
  %i.kw = icmp eq i32 %i.jb, 0
  br i1 %i.kw, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %.loopexit403
  %i.kx = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, i64 8), align 8, !tbaa !66, !noalias !1207
  %i.ky = and i64 %i.kx, -2
  %switch.i.i.i.i.i213 = icmp eq i64 %i.ky, -5572340897628102704
  br i1 %switch.i.i.i.i.i213, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i217, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i214

_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i214: ; preds = %bb.ay
  %i.kz = load ptr, ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, align 8, !tbaa !61, !noalias !1207
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 48
  %i.lb = load ptr, ptr %i.la, align 8, !noalias !1207
  %i.lc = call noundef zeroext i1 %i.lb(ptr noundef nonnull align 8 dereferenceable(52) @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, i32 noundef 9) #48, !noalias !1207, !inline_history !1162
  br i1 %i.lc, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i217, label %"_ZZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeEENK3$_1clENS1_5errorE.exit218"

_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i217: ; preds = %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i214, %bb.ay
  br label %"_ZZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeEENK3$_1clENS1_5errorE.exit218"

"_ZZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeEENK3$_1clENS1_5errorE.exit218": ; preds = %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i214, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i217
  %i.ld = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread.i217 ], [ 0, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.i214 ]
  %i.le = or disjoint i64 %i.ld, ptrtoint (ptr @"_ZZZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeEENK3$_1clENS1_5errorEE7loc_bb_" to i64)
  store i64 9, ptr %3, align 8
  %.sroa.5.0..0.val.sroa_idx.i215 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, ptr %.sroa.5.0..0.val.sroa_idx.i215, align 8
  store i64 %i.le, ptr %i.aj, align 8, !tbaa !55
  store i32 27, ptr %i.t, align 8, !tbaa !401
  br label %.critedge

bb.az:                                            ; preds = %.loopexit403
  %i.lf = and i32 %i.kv, 3
  %i.lg = lshr i32 %i.kv, 2
  store i32 %i.lg, ptr %0, align 8, !tbaa !404
  %i.lh = add i32 %i.ku, -2                       ; 2 uses
  store i32 %i.lh, ptr %i.y, align 4, !tbaa !403
  %i.li = add i32 %i.jb, -1
  %i.lj = zext i32 %i.li to i64
  %i.lk = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.lj
  %i.ll = load i16, ptr %i.lk, align 2, !tbaa !197
  %i.lm = add nuw nsw i32 %i.lf, 3
  br label %bb.be

bb.ba:                                            ; preds = %bb.av
  %i.ln = add nuw nsw i64 %i.ke, 3                ; 2 uses
  %.not.i219 = icmp samesign ugt i64 %i.ln, %i.kf
  br i1 %.not.i219, label %.lr.ph.i223, label %.loopexit404

.lr.ph.i223:                                      ; preds = %bb.ba, %bb.bb
  %i.lo = phi i32 [ %i.lv, %bb.bb ], [ %i.jn, %bb.ba ]
  %indvars.iv461 = phi i64 [ %indvars.iv.next462, %bb.bb ], [ %i.kf, %bb.ba ] ; 2 uses
  %i.lp = phi ptr [ %i.lq, %bb.bb ], [ %i.jo, %bb.ba ] ; 3 uses
  %.not10.i224 = icmp eq ptr %i.lp, %i.ix
  br i1 %.not10.i224, label %_ZN5boost5beast4zlib6detail9bitstream4fillIPKhEEbmRT_RKS7_.exit226, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i223
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 1 ; 3 uses
  store ptr %i.lq, ptr %i.g, align 8, !tbaa !167
  %i.lr = load i8, ptr %i.lp, align 1, !tbaa !58
  %i.ls = zext i8 %i.lr to i32
  %i.lt = trunc nuw nsw i64 %indvars.iv461 to i32
  %i.lu = shl i32 %i.ls, %i.lt
  %i.lv = add i32 %i.lu, %i.lo                    ; 3 uses
  store i32 %i.lv, ptr %0, align 8, !tbaa !404
  %indvars.iv.next462 = add nuw nsw i64 %indvars.iv461, 8 ; 3 uses
  %i.lw = trunc nuw nsw i64 %indvars.iv.next462 to i32 ; 2 uses
  store i32 %i.lw, ptr %i.y, align 4, !tbaa !403
  %.not8.i225 = icmp samesign ugt i64 %i.ln, %indvars.iv.next462
  br i1 %.not8.i225, label %.lr.ph.i223, label %.loopexit404, !llvm.loop !1159

_ZN5boost5beast4zlib6detail9bitstream4fillIPKhEEbmRT_RKS7_.exit226: ; preds = %.lr.ph.i223
  call fastcc void @"_ZZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeEENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(40) %5)
  br label %.critedge

.loopexit404:                                     ; preds = %bb.bb, %bb.ba
  %i.lx = phi i32 [ %i.jn, %bb.ba ], [ %i.lv, %bb.bb ]
  %i.ly = phi i32 [ %i.jm, %bb.ba ], [ %i.lw, %bb.bb ]
  %i.lz = phi ptr [ %i.jo, %bb.ba ], [ %i.lq, %bb.bb ]
  %i.ma = zext i8 %i.jx to i32                    ; 2 uses
  %i.mb = sub i32 %i.ly, %i.ma
  %i.mc = lshr i32 %i.lx, %i.ma                   ; 2 uses
  %i.md = and i32 %i.mc, 7
  %i.me = lshr i32 %i.mc, 3
  store i32 %i.me, ptr %0, align 8, !tbaa !404
  %i.mf = add i32 %i.mb, -3                       ; 2 uses
  store i32 %i.mf, ptr %i.y, align 4, !tbaa !403
  %i.mg = add nuw nsw i32 %i.md, 3
  br label %bb.be

bb.bc:                                            ; preds = %bb.av
  %i.mh = add nuw nsw i64 %i.ke, 7                ; 2 uses
  %.not.i227 = icmp samesign ugt i64 %i.mh, %i.kf
  br i1 %.not.i227, label %.lr.ph.i231, label %.loopexit

.lr.ph.i231:                                      ; preds = %bb.bc, %bb.bd
  %i.mi = phi i32 [ %i.mp, %bb.bd ], [ %i.jn, %bb.bc ]
  %indvars.iv467 = phi i64 [ %indvars.iv.next468, %bb.bd ], [ %i.kf, %bb.bc ] ; 2 uses
  %i.mj = phi ptr [ %i.mk, %bb.bd ], [ %i.jo, %bb.bc ] ; 3 uses
  %.not10.i232 = icmp eq ptr %i.mj, %i.ix
  br i1 %.not10.i232, label %_ZN5boost5beast4zlib6detail9bitstream4fillIPKhEEbmRT_RKS7_.exit234, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph.i231
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 1 ; 3 uses
  store ptr %i.mk, ptr %i.g, align 8, !tbaa !167
  %i.ml = load i8, ptr %i.mj, align 1, !tbaa !58
  %i.mm = zext i8 %i.ml to i32
  %i.mn = trunc nuw nsw i64 %indvars.iv467 to i32
  %i.mo = shl i32 %i.mm, %i.mn
  %i.mp = add i32 %i.mo, %i.mi                    ; 3 uses
  store i32 %i.mp, ptr %0, align 8, !tbaa !404
  %indvars.iv.next468 = add nuw nsw i64 %indvars.iv467, 8 ; 3 uses
  %i.mq = trunc nuw nsw i64 %indvars.iv.next468 to i32 ; 2 uses
  store i32 %i.mq, ptr %i.y, align 4, !tbaa !403
  %.not8.i233 = icmp samesign ugt i64 %i.mh, %indvars.iv.next468
  br i1 %.not8.i233, label %.lr.ph.i231, label %.loopexit, !llvm.loop !1159

_ZN5boost5beast4zlib6detail9bitstream4fillIPKhEEbmRT_RKS7_.exit234: ; preds = %.lr.ph.i231
  call fastcc void @"_ZZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeEENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(40) %5)
  br label %.critedge

.loopexit:                                        ; preds = %bb.bd, %bb.bc
  %i.mr = phi i32 [ %i.jn, %bb.bc ], [ %i.mp, %bb.bd ]
  %i.ms = phi i32 [ %i.jm, %bb.bc ], [ %i.mq, %bb.bd ]
  %i.mt = phi ptr [ %i.jo, %bb.bc ], [ %i.mk, %bb.bd ]
  %i.mu = zext i8 %i.jx to i32                    ; 2 uses
  %i.mv = sub i32 %i.ms, %i.mu
  %i.mw = lshr i32 %i.mr, %i.mu                   ; 2 uses
  %i.mx = and i32 %i.mw, 127
  %i.my = lshr i32 %i.mw, 7
  store i32 %i.my, ptr %0, align 8, !tbaa !404
  %i.mz = add i32 %i.mv, -7                       ; 2 uses
  store i32 %i.mz, ptr %i.y, align 4, !tbaa !403
  %i.na = add nuw nsw i32 %i.mx, 11
  br label %bb.be

bb.be:                                            ; preds = %.loopexit404, %.loopexit, %bb.az
  %i.nb = phi i32 [ %i.mz, %.loopexit ], [ %i.lh, %bb.az ], [ %i.mf, %.loopexit404 ]
  %i.nc = phi ptr [ %i.mt, %.loopexit ], [ %i.ks, %bb.az ], [ %i.lz, %.loopexit404 ]
  %.0351 = phi i16 [ 0, %.loopexit ], [ %i.ll, %bb.az ], [ 0, %.loopexit404 ] ; 3 uses
  %.0 = phi i32 [ %i.na, %.loopexit ], [ %i.lm, %bb.az ], [ %i.mg, %.loopexit404 ]
  %i.nd = add i32 %.0, %i.jb                      ; 4 uses
  %i.ne = icmp ugt i32 %i.nd, %i.it
  br i1 %i.ne, label %bb.bf, label %iter.check

bb.bf:                                            ; preds = %bb.be
  %i.nf = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, i64 8), align 8, !tbaa !66, !noalias !1208
  %i.ng = and i64 %i.nf, -2
end_hunk_0
begin_hunk_1_@"_ZZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeEENK3$_0clEv":bb.a
  %i.am = load i16, ptr %i.al, align 2, !tbaa !382 ; 2 uses
  %i.an = zext i16 %i.am to i64
  %i.ao = load i16, ptr %i.y, align 4, !tbaa !380 ; 3 uses
  %i.ap = zext i16 %i.ao to i64
  %i.aq = sub nsw i64 %i.ap, %i.j
  %.not19.i = icmp ugt i64 %i.aq, %i.an
  %i.ar = trunc nuw i64 %i.j to i16
  %i.as = add i16 %i.am, %i.ar
  %storemerge.i = select i1 %.not19.i, i16 %i.as, i16 %i.ao
  store i16 %storemerge.i, ptr %i.al, align 2, !tbaa !382
  %i.at = load i16, ptr %i.ab, align 8, !tbaa !381
  %i.au = zext i16 %i.at to i64
  %i.av = add nuw nsw i64 %i.j, %i.au
  %.lhs.trunc.i = trunc nuw nsw i64 %i.av to i32
  %.rhs.trunc.i = zext i16 %i.ao to i32
  %i.aw = urem i32 %.lhs.trunc.i, %.rhs.trunc.i
  %i.ax = trunc nuw i32 %i.aw to i16
  store i16 %i.ax, ptr %i.ab, align 8, !tbaa !381
  br label %_ZN5boost5beast4zlib6detail6window5writeEPKhm.exit

bb.j:                                             ; preds = %bb.h
  %i.ay = sub nsw i64 %i.aa, %i.ah                ; 3 uses
  %i.az = load ptr, ptr %i.r, align 8, !tbaa !167
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ah
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ba, ptr align 1 %i.g, i64 %i.ay, i1 false)
  %i.bb = getelementptr inbounds i8, ptr %i.g, i64 %i.ay
  %i.bc = sub nsw i64 %i.j, %i.ay                 ; 2 uses
  %i.bd = trunc i64 %i.bc to i16
  store i16 %i.bd, ptr %i.ab, align 8, !tbaa !381
  %i.be = load ptr, ptr %i.r, align 8, !tbaa !167
  %i.bf = and i64 %i.bc, 65535
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.be, ptr align 1 %i.bb, i64 %i.bf, i1 false)
  %i.bg = load i16, ptr %i.y, align 4, !tbaa !380
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 34
  store i16 %i.bg, ptr %i.bh, align 2, !tbaa !382
  br label %_ZN5boost5beast4zlib6detail6window5writeEPKhm.exit

_ZN5boost5beast4zlib6detail6window5writeEPKhm.exit: ; preds = %bb.j, %bb.i, %bb.g, %bb.d, %bb.b, %bb.a
  %i.bi = load ptr, ptr %0, align 8, !tbaa !1221, !nonnull !146, !align !147 ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !394 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1225, !nonnull !146, !align !147 ; 7 uses
  store ptr %i.bk, ptr %i.bm, align 8, !tbaa !326
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !406
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !327
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !395 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !328
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !407
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bu to i64               ; 2 uses
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !331
  %i.cd = load ptr, ptr %i.bi, align 8, !tbaa !1226 ; 2 uses
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = sub i64 %i.bq, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !323
  %i.ci = add i64 %i.cf, %i.ch
  store i64 %i.ci, ptr %i.cg, align 8, !tbaa !323
  %i.cj = load ptr, ptr %i.bw, align 8, !tbaa !415 ; 2 uses
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = sub i64 %i.ca, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bm, i64 40 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !338
  %i.co = add i64 %i.cl, %i.cn
  store i64 %i.co, ptr %i.cm, align 8, !tbaa !338
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !403
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !402
  %.not3 = icmp eq i32 %i.cs, 0
  %i.ct = select i1 %.not3, i32 0, i32 64
  %i.cu = add i32 %i.ct, %i.cq
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !401 ; 3 uses
  %i.cx = icmp eq i32 %i.cw, 9
  %i.cy = select i1 %i.cx, i32 128, i32 0
  %i.cz = add i32 %i.cu, %i.cy
  %i.da = icmp eq i32 %i.cw, 17
  %i.db = icmp eq i32 %i.cw, 12
  %i.dc = or i1 %i.da, %i.db
  %i.dd = select i1 %i.dc, i32 256, i32 0
  %i.de = add i32 %i.cz, %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  store i32 %i.de, ptr %i.df, align 8, !tbaa !347
  %.not4 = icmp eq ptr %i.bk, %i.cd
  %.not5 = icmp eq ptr %i.bu, %i.cj
  %or.cond = select i1 %.not4, i1 %.not5, i1 false
  br i1 %or.cond, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN5boost5beast4zlib6detail6window5writeEPKhm.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !1222, !nonnull !146, !align !1223
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !333
  %i.dj = icmp eq i32 %i.di, 5
  br i1 %i.dj, label %bb.l, label %_ZNK5boost6system10error_codecvbEv.exit.thread

bb.l:                                             ; preds = %_ZN5boost5beast4zlib6detail6window5writeEPKhm.exit, %bb.k
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !1227, !nonnull !146, !align !147 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !68 ; 2 uses
  %i.do = and i64 %i.dn, 1
  %.not.i.i = icmp eq i64 %i.do, 0
  br i1 %.not.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread8, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dp = icmp eq i64 %i.dn, 1
  br i1 %i.dp, label %_ZNK5boost6system10error_codecvbEv.exit, label %_ZNK5boost6system10error_codecvbEv.exit.thread

_ZNK5boost6system10error_codecvbEv.exit:          ; preds = %bb.m
  %i.dq = load i32, ptr %i.dl, align 8, !tbaa !200
  %.not11 = icmp eq i32 %i.dq, 0
  br i1 %.not11, label %_ZNK5boost6system10error_codecvbEv.exit.thread8, label %_ZNK5boost6system10error_codecvbEv.exit.thread

_ZNK5boost6system10error_codecvbEv.exit.thread8:  ; preds = %bb.l, %_ZNK5boost6system10error_codecvbEv.exit
  %i.dr = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, i64 8), align 8, !tbaa !66, !noalias !1228
  %i.ds = and i64 %i.dr, -2
  %switch.i.i.i.i = icmp eq i64 %i.ds, -5572340897628102704
  br i1 %switch.i.i.i.i, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit

_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit: ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread8
  %i.dt = load ptr, ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, align 8, !tbaa !61, !noalias !1228
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 48
  %i.dv = load ptr, ptr %i.du, align 8, !noalias !1228
  %i.dw = tail call noundef zeroext i1 %i.dv(ptr noundef nonnull align 8 dereferenceable(52) @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, i32 noundef 1) #48, !noalias !1228, !inline_history !36
  br i1 %i.dw, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %bb.n

_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread: ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread8, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit
  br label %bb.n

bb.n:                                             ; preds = %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread
  %i.dx = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread ], [ 0, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit ]
  %i.dy = or disjoint i64 %i.dx, ptrtoint (ptr @"_ZZZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeEENK3$_0clEvE7loc_bb_" to i64)
  store i64 1, ptr %i.dl, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 %i.dy, ptr %i.dm, align 8, !tbaa !55
  br label %_ZNK5boost6system10error_codecvbEv.exit.thread

_ZNK5boost6system10error_codecvbEv.exit.thread:   ; preds = %bb.m, %bb.n, %_ZNK5boost6system10error_codecvbEv.exit, %bb.k
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5boost5beast4zlib6detail14inflate_stream11fixedTablesEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(7104) %0) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5boost5beast4zlib6detail14inflate_stream16get_fixed_tablesEvE2fc acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5boost5beast4zlib6detail14inflate_stream16get_fixed_tablesEv.exit, !prof !168

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost5beast4zlib6detail14inflate_stream16get_fixed_tablesEvE2fc) #48
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5boost5beast4zlib6detail14inflate_stream16get_fixed_tablesEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_ZZN5boost5beast4zlib6detail14inflate_stream16get_fixed_tablesEvEN11fixed_codesC2Ev()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 2200, ptr nonnull @_ZZN5boost5beast4zlib6detail14inflate_stream16get_fixed_tablesEvE2fc) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost5beast4zlib6detail14inflate_stream16get_fixed_tablesEvE2fc) #48
  br label %_ZN5boost5beast4zlib6detail14inflate_stream16get_fixed_tablesEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5boost5beast4zlib6detail14inflate_stream16get_fixed_tablesEvE2fc) #48
  resume { ptr, i32 } %i.e

_ZN5boost5beast4zlib6detail14inflate_stream16get_fixed_tablesEv.exit: ; preds = %bb.a, %bb.b, %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 7080
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 7096
  %i.h = load <2 x ptr>, ptr @_ZZN5boost5beast4zlib6detail14inflate_stream16get_fixed_tablesEvE2fc, align 16, !tbaa !405
  store <2 x ptr> %i.h, ptr %i.f, align 8, !tbaa !405
  %i.i = load <2 x i32>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14inflate_stream16get_fixed_tablesEvE2fc, i64 16), align 16, !tbaa !159
  store <2 x i32> %i.i, ptr %i.g, align 8, !tbaa !159
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5boost5beast4zlib6detail14inflate_stream13inflate_tableENS3_5buildEPtmPPNS3_4codeEPjS5_RNS_6system10error_codeE(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) %6) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
.preheader255:
  %7 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %8 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %9 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %10 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %i.a = alloca [16 x i16], align 16              ; 36 uses
  %i.b = alloca [16 x i16], align 16              ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !tbaa !197
  %.not285 = icmp eq i64 %2, 0                    ; 2 uses
  br i1 %.not285, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %.preheader255
  %i.c = load i32, ptr %4, align 4, !tbaa !159
  br label %bb.a

.lr.ph:                                           ; preds = %.preheader255, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader255 ] ; 2 uses
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.e = load i16, ptr %i.d, align 2, !tbaa !197
  %i.f = zext i16 %i.e to i64
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.f ; 2 uses
  %i.h = load i16, ptr %i.g, align 2, !tbaa !197
  %i.i = add i16 %i.h, 1
  store i16 %i.i, ptr %i.g, align 2, !tbaa !197
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.j = and i64 %indvars.iv.next, 4294967295
  %i.k = icmp ugt i64 %2, %i.j
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !1229

._crit_edge:                                      ; preds = %.lr.ph
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  %.pre = load i16, ptr %.phi.trans.insert, align 2, !tbaa !197 ; 2 uses
  %i.l = load i32, ptr %4, align 4, !tbaa !159    ; 2 uses
  %.not215 = icmp eq i16 %.pre, 0
  br i1 %.not215, label %bb.a, label %.lr.ph267.preheader

bb.a:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.m = phi i32 [ %i.c, %._crit_edge.thread ], [ %i.l, %._crit_edge ] ; 13 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.o = load i16, ptr %i.n, align 4, !tbaa !197
  %.not215.1 = icmp eq i16 %i.o, 0
  br i1 %.not215.1, label %bb.b, label %.lr.ph267.preheader

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.q = load i16, ptr %i.p, align 2, !tbaa !197
  %.not215.2 = icmp eq i16 %i.q, 0
  br i1 %.not215.2, label %bb.c, label %.lr.ph267.preheader

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.s = load i16, ptr %i.r, align 8, !tbaa !197
  %.not215.3 = icmp eq i16 %i.s, 0
  br i1 %.not215.3, label %bb.d, label %.lr.ph267.preheader

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  %i.u = load i16, ptr %i.t, align 2, !tbaa !197
  %.not215.4 = icmp eq i16 %i.u, 0
  br i1 %.not215.4, label %bb.e, label %.lr.ph267.preheader

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.w = load i16, ptr %i.v, align 4, !tbaa !197
  %.not215.5 = icmp eq i16 %i.w, 0
  br i1 %.not215.5, label %bb.f, label %.lr.ph267.preheader

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %i.y = load i16, ptr %i.x, align 2, !tbaa !197
  %.not215.6 = icmp eq i16 %i.y, 0
  br i1 %.not215.6, label %bb.g, label %.lr.ph267.preheader

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aa = load i16, ptr %i.z, align 16, !tbaa !197
  %.not215.7 = icmp eq i16 %i.aa, 0
  br i1 %.not215.7, label %bb.h, label %.lr.ph267.preheader

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !197
  %.not215.8 = icmp eq i16 %i.ac, 0
  br i1 %.not215.8, label %bb.i, label %.lr.ph267.preheader

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ae = load i16, ptr %i.ad, align 4, !tbaa !197
  %.not215.9 = icmp eq i16 %i.ae, 0
  br i1 %.not215.9, label %bb.j, label %.lr.ph267.preheader

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !197
  %.not215.10 = icmp eq i16 %i.ag, 0
  br i1 %.not215.10, label %bb.k, label %.lr.ph267.preheader

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ai = load i16, ptr %i.ah, align 8, !tbaa !197
  %.not215.11 = icmp eq i16 %i.ai, 0
  br i1 %.not215.11, label %bb.l, label %.lr.ph267.preheader

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !197
  %.not215.12 = icmp eq i16 %i.ak, 0
  br i1 %.not215.12, label %bb.m, label %.lr.ph267.preheader

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.am = load i16, ptr %i.al, align 4, !tbaa !197
  %.not215.13 = icmp eq i16 %i.am, 0
  br i1 %.not215.13, label %bb.n, label %.lr.ph267.preheader

bb.n:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !197
  %.not215.14 = icmp eq i16 %i.ao, 0
  br i1 %.not215.14, label %bb.o, label %._crit_edge268

bb.o:                                             ; preds = %bb.n
  %i.ap = load ptr, ptr %3, align 8, !tbaa !405   ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  store ptr %i.aq, ptr %3, align 8, !tbaa !405
  store i8 64, ptr %i.ap, align 2, !tbaa !58
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  store i8 1, ptr %.sroa.11.0..sroa_idx, align 1, !tbaa !58
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  store i16 0, ptr %.sroa.14.0..sroa_idx, align 2, !tbaa !197
  %i.ar = load ptr, ptr %3, align 8, !tbaa !405   ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store ptr %i.as, ptr %3, align 8, !tbaa !405
  store i8 64, ptr %i.ar, align 2, !tbaa !58
  %.sroa.11.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  store i8 1, ptr %.sroa.11.0..sroa_idx21, align 1, !tbaa !58
  %.sroa.14.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  store i16 0, ptr %.sroa.14.0..sroa_idx27, align 2, !tbaa !197
  store i32 1, ptr %4, align 4, !tbaa !159
  br label %bb.bl

.lr.ph267.preheader:                              ; preds = %._crit_edge, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %.ph = phi i32 [ %i.m, %bb.m ], [ %i.m, %bb.l ], [ %i.m, %bb.k ], [ %i.m, %bb.j ], [ %i.m, %bb.i ], [ %i.m, %bb.h ], [ %i.m, %bb.g ], [ %i.m, %bb.f ], [ %i.m, %bb.e ], [ %i.m, %bb.d ], [ %i.m, %bb.c ], [ %i.m, %bb.b ], [ %i.m, %bb.a ], [ %i.l, %._crit_edge ]
  %.ph338 = phi i16 [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ %.pre, %._crit_edge ] ; 2 uses
  %.0198264.lcssa.ph = phi i32 [ 2, %bb.m ], [ 3, %bb.l ], [ 4, %bb.k ], [ 5, %bb.j ], [ 6, %bb.i ], [ 7, %bb.h ], [ 8, %bb.g ], [ 9, %bb.f ], [ 10, %bb.e ], [ 11, %bb.d ], [ 12, %bb.c ], [ 13, %bb.b ], [ 14, %bb.a ], [ 15, %._crit_edge ] ; 6 uses
  %spec.select340 = tail call i32 @llvm.umin.i32(i32 %.ph, i32 %.0198264.lcssa.ph)
  %wide.trip.count = zext nneg i32 %.0198264.lcssa.ph to i64
  br label %.lr.ph267

.lr.ph267:                                        ; preds = %.lr.ph267.preheader, %bb.p
  %indvars.iv297 = phi i64 [ 1, %.lr.ph267.preheader ], [ %indvars.iv.next298, %bb.p ] ; 3 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv297
  %i.au = load i16, ptr %i.at, align 2, !tbaa !197
  %.not216 = icmp eq i16 %i.au, 0
  br i1 %.not216, label %bb.p, label %._crit_edge268.loopexit.split.loop.exit

bb.p:                                             ; preds = %.lr.ph267
  %indvars.iv.next298 = add nuw nsw i64 %indvars.iv297, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next298, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge268, label %.lr.ph267, !llvm.loop !1230

._crit_edge268.loopexit.split.loop.exit:          ; preds = %.lr.ph267
  %i.av = trunc nuw nsw i64 %indvars.iv297 to i32 ; 2 uses
  %i.aw = tail call i32 @llvm.umax.i32(i32 %spec.select340, i32 %i.av)
  br label %._crit_edge268

._crit_edge268:                                   ; preds = %bb.p, %bb.n, %._crit_edge268.loopexit.split.loop.exit
  %spec.select343 = phi i32 [ 1, %bb.n ], [ %i.aw, %._crit_edge268.loopexit.split.loop.exit ], [ %.0198264.lcssa.ph, %bb.p ] ; 8 uses
  %.0198264.lcssa341 = phi i32 [ 1, %bb.n ], [ %.0198264.lcssa.ph, %._crit_edge268.loopexit.split.loop.exit ], [ %.0198264.lcssa.ph, %bb.p ] ; 4 uses
  %i.ax = phi i1 [ false, %bb.n ], [ true, %._crit_edge268.loopexit.split.loop.exit ], [ true, %bb.p ]
  %i.ay = phi i16 [ 0, %bb.n ], [ %.ph338, %._crit_edge268.loopexit.split.loop.exit ], [ %.ph338, %bb.p ]
  %.0199.lcssa = phi i32 [ 1, %bb.n ], [ %i.av, %._crit_edge268.loopexit.split.loop.exit ], [ %.0198264.lcssa.ph, %bb.p ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !197 ; 4 uses
  %i.bb = icmp ugt i16 %i.ba, 2
  br i1 %i.bb, label %bb.af, label %bb.q

bb.q:                                             ; preds = %._crit_edge268
  %i.bc = shl nuw nsw i16 %i.ba, 1
  %i.bd = sub nuw nsw i16 4, %i.bc
  %i.be = zext nneg i16 %i.bd to i32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bg = load i16, ptr %i.bf, align 4, !tbaa !197 ; 2 uses
  %i.bh = zext i16 %i.bg to i32
  %i.bi = sub nsw i32 %i.be, %i.bh                ; 2 uses
  %i.bj = icmp slt i32 %i.bi, 0
  br i1 %i.bj, label %bb.af, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = shl nuw nsw i32 %i.bi, 1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !197 ; 2 uses
  %i.bn = zext i16 %i.bm to i32
  %i.bo = sub nsw i32 %i.bk, %i.bn                ; 2 uses
  %i.bp = icmp slt i32 %i.bo, 0
  br i1 %i.bp, label %bb.af, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bq = shl nuw nsw i32 %i.bo, 1
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bs = load i16, ptr %i.br, align 8, !tbaa !197 ; 2 uses
  %i.bt = zext i16 %i.bs to i32
  %i.bu = sub nsw i32 %i.bq, %i.bt                ; 2 uses
  %i.bv = icmp slt i32 %i.bu, 0
  br i1 %i.bv, label %bb.af, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bw = shl nuw nsw i32 %i.bu, 1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !197 ; 2 uses
  %i.bz = zext i16 %i.by to i32
  %i.ca = sub nsw i32 %i.bw, %i.bz                ; 2 uses
  %i.cb = icmp slt i32 %i.ca, 0
  br i1 %i.cb, label %bb.af, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cc = shl nuw nsw i32 %i.ca, 1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ce = load i16, ptr %i.cd, align 4, !tbaa !197 ; 2 uses
  %i.cf = zext i16 %i.ce to i32
  %i.cg = sub nsw i32 %i.cc, %i.cf                ; 2 uses
  %i.ch = icmp slt i32 %i.cg, 0
  br i1 %i.ch, label %bb.af, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ci = shl nuw nsw i32 %i.cg, 1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !197 ; 2 uses
  %i.cl = zext i16 %i.ck to i32
  %i.cm = sub nsw i32 %i.ci, %i.cl                ; 2 uses
  %i.cn = icmp slt i32 %i.cm, 0
  br i1 %i.cn, label %bb.af, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.co = shl nuw nsw i32 %i.cm, 1
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cq = load i16, ptr %i.cp, align 16, !tbaa !197 ; 2 uses
  %i.cr = zext i16 %i.cq to i32
  %i.cs = sub nsw i32 %i.co, %i.cr                ; 2 uses
  %i.ct = icmp slt i32 %i.cs, 0
  br i1 %i.ct, label %bb.af, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cu = shl nuw nsw i32 %i.cs, 1
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !197 ; 2 uses
  %i.cx = zext i16 %i.cw to i32
  %i.cy = sub nsw i32 %i.cu, %i.cx                ; 2 uses
  %i.cz = icmp slt i32 %i.cy, 0
  br i1 %i.cz, label %bb.af, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.da = shl nuw nsw i32 %i.cy, 1
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.dc = load i16, ptr %i.db, align 4, !tbaa !197 ; 2 uses
  %i.dd = zext i16 %i.dc to i32
  %i.de = sub nsw i32 %i.da, %i.dd                ; 2 uses
  %i.df = icmp slt i32 %i.de, 0
  br i1 %i.df, label %bb.af, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dg = shl nuw nsw i32 %i.de, 1
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !197 ; 2 uses
  %i.dj = zext i16 %i.di to i32
  %i.dk = sub nsw i32 %i.dg, %i.dj                ; 2 uses
  %i.dl = icmp slt i32 %i.dk, 0
  br i1 %i.dl, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dm = shl nuw nsw i32 %i.dk, 1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.do = load i16, ptr %i.dn, align 8, !tbaa !197 ; 2 uses
  %i.dp = zext i16 %i.do to i32
  %i.dq = sub nsw i32 %i.dm, %i.dp                ; 2 uses
  %i.dr = icmp slt i32 %i.dq, 0
  br i1 %i.dr, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ds = shl nuw nsw i32 %i.dq, 1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !197 ; 2 uses
  %i.dv = zext i16 %i.du to i32
  %i.dw = sub nsw i32 %i.ds, %i.dv                ; 2 uses
  %i.dx = icmp slt i32 %i.dw, 0
  br i1 %i.dx, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dy = shl nuw nsw i32 %i.dw, 1
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.ea = load i16, ptr %i.dz, align 4, !tbaa !197 ; 2 uses
  %i.eb = zext i16 %i.ea to i32
  %i.ec = sub nsw i32 %i.dy, %i.eb                ; 2 uses
  %i.ed = icmp slt i32 %i.ec, 0
  br i1 %i.ed, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ee = shl nuw nsw i32 %i.ec, 1                ; 2 uses
  %i.ef = zext i16 %i.ay to i32                   ; 2 uses
  %i.eg = icmp samesign ult i32 %i.ee, %i.ef
  br i1 %i.eg, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not253 = icmp ne i32 %i.ee, %i.ef
  %i.eh = icmp eq i32 %0, 0
  %or.cond = or i1 %i.eh, %i.ax
  %or.cond364 = and i1 %.not253, %or.cond
  br i1 %or.cond364, label %bb.ah, label %.preheader254

bb.af:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %._crit_edge268
  %i.ei = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, i64 8), align 8, !tbaa !66, !noalias !1240
  %i.ej = and i64 %i.ei, -2
  %switch.i.i.i.i = icmp eq i64 %i.ej, -5572340897628102704
  br i1 %switch.i.i.i.i, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit

_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit: ; preds = %bb.af
  %i.ek = load ptr, ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, align 8, !tbaa !61, !noalias !1240
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 48
  %i.em = load ptr, ptr %i.el, align 8, !noalias !1240
  %i.en = tail call noundef zeroext i1 %i.em(ptr noundef nonnull align 8 dereferenceable(52) @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, i32 noundef 14) #48, !noalias !1240, !inline_history !36
  br i1 %i.en, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %bb.ag

_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread: ; preds = %bb.af, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread
  %i.eo = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread ], [ 0, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit ]
  %i.ep = or disjoint i64 %i.eo, ptrtoint (ptr @_ZZN5boost5beast4zlib6detail14inflate_stream13inflate_tableENS3_5buildEPtmPPNS3_4codeEPjS5_RNS_6system10error_codeEE7loc_bb_ to i64)
  store i64 14, ptr %6, align 8
  %.sroa.5240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, ptr %.sroa.5240.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx.i227 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.ep, ptr %.sroa.5.0..sroa_idx.i227, align 8, !tbaa !55
  br label %bb.bl

bb.ah:                                            ; preds = %bb.ae
  %i.eq = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, i64 8), align 8, !tbaa !66, !noalias !1241
  %i.er = and i64 %i.eq, -2
  %switch.i.i.i.i228 = icmp eq i64 %i.er, -5572340897628102704
  br i1 %switch.i.i.i.i228, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit231.thread, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit231

_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit231: ; preds = %bb.ah
  %i.es = load ptr, ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, align 8, !tbaa !61, !noalias !1241
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 48
  %i.eu = load ptr, ptr %i.et, align 8, !noalias !1241
  %i.ev = tail call noundef zeroext i1 %i.eu(ptr noundef nonnull align 8 dereferenceable(52) @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, i32 noundef 15) #48, !noalias !1241, !inline_history !36
  br i1 %i.ev, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit231.thread, label %bb.ai

_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit231.thread: ; preds = %bb.ah, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit231
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit231, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit231.thread
  %i.ew = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit231.thread ], [ 0, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit231 ]
  %i.ex = or disjoint i64 %i.ew, ptrtoint (ptr @_ZZN5boost5beast4zlib6detail14inflate_stream13inflate_tableENS3_5buildEPtmPPNS3_4codeEPjS5_RNS_6system10error_codeEE7loc_bb__0 to i64)
  store i64 15, ptr %6, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx.i236 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.ex, ptr %.sroa.5.0..sroa_idx.i236, align 8, !tbaa !55
  br label %bb.bl

.preheader254:                                    ; preds = %bb.ae
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i16 0, ptr %i.ey, align 2, !tbaa !197
  %i.ez = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i16 %i.ba, ptr %i.ez, align 4, !tbaa !197
  %i.fa = add i16 %i.bg, %i.ba                    ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  store i16 %i.fa, ptr %i.fb, align 2, !tbaa !197
  %i.fc = add i16 %i.bm, %i.fa                    ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i16 %i.fc, ptr %i.fd, align 8, !tbaa !197
  %i.fe = add i16 %i.bs, %i.fc                    ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store i16 %i.fe, ptr %i.ff, align 2, !tbaa !197
  %i.fg = add i16 %i.by, %i.fe                    ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i16 %i.fg, ptr %i.fh, align 4, !tbaa !197
  %i.fi = add i16 %i.ce, %i.fg                    ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  store i16 %i.fi, ptr %i.fj, align 2, !tbaa !197
  %i.fk = add i16 %i.ck, %i.fi                    ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i16 %i.fk, ptr %i.fl, align 16, !tbaa !197
  %i.fm = add i16 %i.cq, %i.fk                    ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  store i16 %i.fm, ptr %i.fn, align 2, !tbaa !197
  %i.fo = add i16 %i.cw, %i.fm                    ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 %i.fo, ptr %i.fp, align 4, !tbaa !197
  %i.fq = add i16 %i.dc, %i.fo                    ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 %i.fq, ptr %i.fr, align 2, !tbaa !197
  %i.fs = add i16 %i.di, %i.fq                    ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i16 %i.fs, ptr %i.ft, align 8, !tbaa !197
  %i.fu = add i16 %i.do, %i.fs                    ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  store i16 %i.fu, ptr %i.fv, align 2, !tbaa !197
  %i.fw = add i16 %i.du, %i.fu                    ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i16 %i.fw, ptr %i.fx, align 4, !tbaa !197
  %i.fy = add i16 %i.ea, %i.fw
  %i.fz = getelementptr inbounds nuw i8, ptr %i.b, i64 30
  store i16 %i.fy, ptr %i.fz, align 2, !tbaa !197
  br i1 %.not285, label %._crit_edge276, label %.lr.ph275

.lr.ph275:                                        ; preds = %.preheader254, %bb.ak
  %indvars.iv311.a = phi i64 [ %indvars.iv.next312.a, %bb.ak ], [ 0, %.preheader254 ] ; 3 uses
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv311.a
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !197 ; 2 uses
  %.not223 = icmp eq i16 %i.gb, 0
  br i1 %.not223, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph275
  %i.gc = trunc i64 %indvars.iv311.a to i16
  %i.gd = zext i16 %i.gb to i64
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.gd ; 2 uses
  %i.gf = load i16, ptr %i.ge, align 2, !tbaa !197 ; 2 uses
  %i.gg = add i16 %i.gf, 1
  store i16 %i.gg, ptr %i.ge, align 2, !tbaa !197
  %i.gh = zext i16 %i.gf to i64
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.gh
  store i16 %i.gc, ptr %i.gi, align 2, !tbaa !197
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph275, %bb.aj
  %indvars.iv.next312.a = add i64 %indvars.iv311.a, 1 ; 2 uses
  %11 = and i64 %indvars.iv.next312.a, 4294967295
  %12 = icmp ugt i64 %2, %11
  br i1 %12, label %.lr.ph275, label %._crit_edge276, !llvm.loop !1235

._crit_edge276:                                   ; preds = %bb.ak, %.preheader254
  switch i32 %0, label %bb.am [
    i32 0, label %.preheader
    i32 1, label %bb.al
  ]

bb.al:                                            ; preds = %._crit_edge276
  %i.gj = icmp ugt i32 %spec.select343, 9
  br i1 %i.gj, label %bb.an, label %.preheader

bb.am:                                            ; preds = %._crit_edge276
  %i.gk = icmp ugt i32 %spec.select343, 9
  %i.gl = icmp eq i32 %0, 2                       ; 2 uses
  %or.cond5 = select i1 %i.gl, i1 %i.gk, i1 false
  br i1 %or.cond5, label %bb.an, label %.preheader

.preheader:                                       ; preds = %bb.al, %._crit_edge276, %bb.am
  %i.gm = phi i1 [ false, %._crit_edge276 ], [ %i.gl, %bb.am ], [ false, %bb.al ]
  %.0179250352 = phi ptr [ %5, %._crit_edge276 ], [ @_ZZN5boost5beast4zlib6detail14inflate_stream13inflate_tableENS3_5buildEPtmPPNS3_4codeEPjS5_RNS_6system10error_codeEE5dbase, %bb.am ], [ @_ZZN5boost5beast4zlib6detail14inflate_stream13inflate_tableENS3_5buildEPtmPPNS3_4codeEPjS5_RNS_6system10error_codeEE5lbase, %bb.al ]
  %.0178251351 = phi ptr [ %5, %._crit_edge276 ], [ @_ZZN5boost5beast4zlib6detail14inflate_stream13inflate_tableENS3_5buildEPtmPPNS3_4codeEPjS5_RNS_6system10error_codeEE4dext, %bb.am ], [ @_ZZN5boost5beast4zlib6detail14inflate_stream13inflate_tableENS3_5buildEPtmPPNS3_4codeEPjS5_RNS_6system10error_codeEE4lext, %bb.al ]
  %.0252350 = phi i32 [ 20, %._crit_edge276 ], [ 0, %bb.am ], [ 257, %bb.al ] ; 3 uses
  %i.gn = phi i1 [ false, %._crit_edge276 ], [ false, %bb.am ], [ true, %bb.al ]
  %i.go = shl nuw i32 1, %spec.select343          ; 2 uses
  %i.gp = add i32 %i.go, -1
  %i.gq = load ptr, ptr %3, align 8, !tbaa !405
  %i.gr = trunc i32 %spec.select343 to i8
  br label %.outer

.outer:                                           ; preds = %bb.bh, %.preheader
  %.3.ph = phi i32 [ %.4, %bb.bh ], [ %.0199.lcssa, %.preheader ]
  %.2202.ph = phi i32 [ %i.hy, %bb.bh ], [ 0, %.preheader ]
  %.0193.ph = phi i32 [ %.1194.lcssa, %bb.bh ], [ %spec.select343, %.preheader ]
  %.0191.ph = phi i32 [ %spec.select225, %bb.bh ], [ 0, %.preheader ] ; 4 uses
  %.0187.ph = phi i32 [ %i.jg, %bb.bh ], [ %i.go, %.preheader ] ; 2 uses
  %.0185.ph = phi i32 [ %.1186, %bb.bh ], [ 0, %.preheader ]
  %.0181.ph = phi i32 [ %i.in, %bb.bh ], [ -1, %.preheader ]
  %.0180.ph = phi ptr [ %i.iq, %bb.bh ], [ %i.gq, %.preheader ] ; 3 uses
  %i.gs = shl nuw i32 1, %.0193.ph                ; 2 uses
  br label %bb.aq

bb.an:                                            ; preds = %bb.am, %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #48
  call void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull @.str.423)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #48
  store ptr @.str.192, ptr %10, align 8, !tbaa !74
  %i.gt = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str.218, ptr %i.gt, align 8, !tbaa !75
  %i.gu = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 756, ptr %i.gu, align 8, !tbaa !76
  %i.gv = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i32 62, ptr %i.gv, align 4, !tbaa !77
  invoke void @_ZN5boost15throw_exceptionISt11logic_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(24) %10) #49
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %bb.an
  unreachable

common.resume:                                    ; preds = %bb.bg, %bb.ap
  %common.resume.op = phi { ptr, i32 } [ %i.gw, %bb.ap ], [ %i.jm, %bb.bg ]
  resume { ptr, i32 } %common.resume.op

bb.ap:                                            ; preds = %bb.an
  %i.gw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #48
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #48
  br label %common.resume

bb.aq:                                            ; preds = %.backedge, %.outer
  %.3 = phi i32 [ %.3.ph, %.outer ], [ %.4, %.backedge ] ; 5 uses
  %.2202 = phi i32 [ %.2202.ph, %.outer ], [ %i.hy, %.backedge ] ; 2 uses
  %.0185 = phi i32 [ %.0185.ph, %.outer ], [ %.1186, %.backedge ] ; 3 uses
  %i.gx = sub i32 %.3, %.0191.ph                  ; 2 uses
  %i.gy = trunc i32 %i.gx to i8                   ; 2 uses
  %i.gz = zext i32 %.2202 to i64
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.gz
  %i.hb = load i16, ptr %i.ha, align 2, !tbaa !197 ; 2 uses
  %i.hc = zext i16 %i.hb to i32                   ; 3 uses
  %i.hd = add nuw nsw i32 %i.hc, 1
  %i.he = icmp samesign ult i32 %i.hd, %.0252350
  br i1 %i.he, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.not217 = icmp samesign ugt i32 %.0252350, %i.hc
  br i1 %.not217, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hf = sub nuw nsw i32 %i.hc, %.0252350
  %i.hg = zext nneg i32 %i.hf to i64              ; 2 uses
  %i.hh = getelementptr inbounds nuw [2 x i8], ptr %.0178251351, i64 %i.hg
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !197
  %i.hj = trunc i16 %i.hi to i8
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %.0179250352, i64 %i.hg
  %i.hl = load i16, ptr %i.hk, align 2, !tbaa !197
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.aq, %bb.as
  %.sroa.14.0 = phi i16 [ %i.hb, %bb.aq ], [ %i.hl, %bb.as ], [ 0, %bb.ar ]
  %.sroa.0.0 = phi i8 [ 0, %bb.aq ], [ %i.hj, %bb.as ], [ 96, %bb.ar ]
  %.neg = shl nsw i32 -1, %i.gx
  %i.hm = lshr i32 %.0185, %.0191.ph
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %bb.at
  %.0183 = phi i32 [ %i.gs, %bb.at ], [ %i.hn, %bb.au ]
  %i.hn = add i32 %.0183, %.neg                   ; 3 uses
  %i.ho = add i32 %i.hn, %i.hm
  %i.hp = zext i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %.0180.ph, i64 %i.hp ; 3 uses
  store i8 %.sroa.0.0, ptr %i.hq, align 2, !tbaa !58
  %.sroa.11.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.hq, i64 1
  store i8 %i.gy, ptr %.sroa.11.0..sroa_idx23, align 1, !tbaa !58
  %.sroa.14.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.hq, i64 2
  store i16 %.sroa.14.0, ptr %.sroa.14.0..sroa_idx29, align 2, !tbaa !197
  %.not218 = icmp eq i32 %i.hn, 0
  br i1 %.not218, label %bb.av, label %bb.au, !llvm.loop !1236

bb.av:                                            ; preds = %bb.au
  %i.hr = add i32 %.3, -1
  %i.hs = shl nuw i32 1, %i.hr
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %bb.av
  %.0184 = phi i32 [ %i.hs, %bb.av ], [ %i.hu, %bb.aw ] ; 5 uses
  %i.ht = and i32 %.0184, %.0185
  %.not219 = icmp eq i32 %i.ht, 0
  %i.hu = lshr i32 %.0184, 1
  br i1 %.not219, label %bb.ax, label %bb.aw, !llvm.loop !1237

bb.ax:                                            ; preds = %bb.aw
  %.not220 = icmp eq i32 %.0184, 0
  %i.hv = add i32 %.0184, -1
  %i.hw = and i32 %i.hv, %.0185
  %i.hx = add i32 %i.hw, %.0184
  %.1186 = select i1 %.not220, i32 0, i32 %i.hx   ; 5 uses
  %i.hy = add i32 %.2202, 1                       ; 3 uses
  %i.hz = zext i32 %.3 to i64
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.hz ; 2 uses
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !197
  %i.ic = add i16 %i.ib, -1                       ; 2 uses
  store i16 %i.ic, ptr %i.ia, align 2, !tbaa !197
  %i.id = icmp eq i16 %i.ic, 0
  br i1 %i.id, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.ie = icmp eq i32 %.3, %.0198264.lcssa341
  br i1 %i.ie, label %bb.bi, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.if = zext i32 %i.hy to i64
  %i.ig = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.if
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !197
  %i.ii = zext i16 %i.ih to i64
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ii
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !197
  %i.il = zext i16 %i.ik to i32
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ax
  %.4 = phi i32 [ %i.il, %bb.az ], [ %.3, %bb.ax ] ; 6 uses
  %i.im = icmp ugt i32 %.4, %spec.select343
  br i1 %i.im, label %bb.bb, label %.backedge

bb.bb:                                            ; preds = %bb.ba
  %i.in = and i32 %.1186, %i.gp                   ; 3 uses
  %.not221 = icmp eq i32 %i.in, %.0181.ph
  br i1 %.not221, label %.backedge, label %bb.bc

.backedge:                                        ; preds = %bb.bb, %bb.ba
  br label %bb.aq, !llvm.loop !1238

bb.bc:                                            ; preds = %bb.bb
  %i.io = icmp eq i32 %.0191.ph, 0
  %spec.select225 = select i1 %i.io, i32 %spec.select343, i32 %.0191.ph ; 4 uses
  %i.ip = zext i32 %i.gs to i64
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %.0180.ph, i64 %i.ip ; 2 uses
  %i.ir = sub i32 %.4, %spec.select225            ; 3 uses
  %i.is = shl nuw i32 1, %i.ir                    ; 2 uses
  %i.it = icmp ult i32 %.4, %.0198264.lcssa341
  br i1 %i.it, label %.lr.ph280.preheader, label %._crit_edge281

.lr.ph280.preheader:                              ; preds = %bb.bc
  %i.iu = sub i32 %.0198264.lcssa341, %spec.select225
  br label %.lr.ph280

.lr.ph280:                                        ; preds = %.lr.ph280.preheader, %bb.bd
  %i.iv = phi i32 [ %i.je, %bb.bd ], [ %.4, %.lr.ph280.preheader ]
  %.1190278 = phi i32 [ %i.jd, %bb.bd ], [ %i.is, %.lr.ph280.preheader ]
  %.1194277 = phi i32 [ %i.jc, %bb.bd ], [ %i.ir, %.lr.ph280.preheader ] ; 2 uses
  %i.iw = zext nneg i32 %i.iv to i64
  %i.ix = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.iw
  %i.iy = load i16, ptr %i.ix, align 2, !tbaa !197
  %i.iz = zext i16 %i.iy to i32
  %i.ja = sub nsw i32 %.1190278, %i.iz            ; 2 uses
  %i.jb = icmp slt i32 %i.ja, 1
  br i1 %i.jb, label %._crit_edge281.loopexit, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph280
  %i.jc = add i32 %.1194277, 1                    ; 2 uses
  %i.jd = shl nuw i32 %i.ja, 1
end_hunk_1
