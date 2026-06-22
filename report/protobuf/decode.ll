inline.NumInlined: 222
inline.NumDeleted: 105
begin_hunk_0_@_upb_Decoder_DecodeMessage:bb.a

bb.z:                                             ; preds = %_upb_Decoder_FindField.exit
  %i.es = load i8, ptr %.0.i16, align 1, !tbaa !22 ; 3 uses
  %i.et = icmp sgt i8 %i.es, -1
  br i1 %i.et, label %bb.aa, label %upb_EpsCopyInputStream_HasErrorHandler.exit.i38, !prof !20

bb.aa:                                            ; preds = %bb.z
  %i.eu = zext nneg i8 %i.es to i32
  %i.ev = getelementptr inbounds nuw i8, ptr %.0.i16, i64 1
  br label %upb_WireReader_ReadSize.exit

upb_EpsCopyInputStream_HasErrorHandler.exit.i38:  ; preds = %bb.z
  %i.ew = zext i8 %i.es to i64
  %i.ex = call { ptr, i64 } @_upb_WireReader_ReadLongSize_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %.0.i16, i64 noundef %i.ew, ptr noundef nonnull %0) #12 ; 2 uses
  %i.ey = extractvalue { ptr, i64 } %i.ex, 0
  %i.ez = extractvalue { ptr, i64 } %i.ex, 1
  %i.fa = trunc i64 %i.ez to i32
  br label %upb_WireReader_ReadSize.exit

upb_WireReader_ReadSize.exit:                     ; preds = %upb_EpsCopyInputStream_HasErrorHandler.exit.i38, %bb.aa
  %.0214 = phi i32 [ %i.eu, %bb.aa ], [ %i.fa, %upb_EpsCopyInputStream_HasErrorHandler.exit.i38 ] ; 2 uses
  %.0.i21 = phi ptr [ %i.ev, %bb.aa ], [ %i.ey, %upb_EpsCopyInputStream_HasErrorHandler.exit.i38 ] ; 7 uses
  store i32 %.0214, ptr %.sroa.0, align 8, !tbaa !3
  %i.fb = getelementptr inbounds nuw i8, ptr %.0.i27, i64 10
  %i.fc = load i8, ptr %i.fb, align 2, !tbaa !33  ; 2 uses
  %i.fd = zext i8 %i.fc to i32                    ; 2 uses
  %i.fe = getelementptr i8, ptr %.0.i27, i64 11
  %.val.i = load i8, ptr %i.fe, align 1, !tbaa !36 ; 3 uses
  %i.ff = and i8 %.val.i, 3
  %i.fg = icmp eq i8 %i.ff, 1
  %i.fh = add nuw nsw i32 %i.fd, 19
  %spec.select.i = select i1 %i.fg, i32 %i.fh, i32 %i.fd ; 2 uses
  %i.fi = zext nneg i32 %spec.select.i to i64     ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr @_upb_Decoder_GetDelimitedOp.kDelimitedOps, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !22  ; 5 uses
  %i.fl = shl nuw i64 1, %i.fi
  %i.fm = and i64 %i.fl, 1611139072
  %.not.i40 = icmp eq i64 %i.fm, 0
  %i.fn = trunc i32 %.0214 to i8                  ; 6 uses
  br i1 %.not.i40, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %upb_WireReader_ReadSize.exit
  %i.fo = and i8 %.val.i, 8
  %.not.i.i41 = icmp eq i8 %i.fo, 0
  br i1 %.not.i.i41, label %bb.ac, label %_upb_Decoder_DecodeWireValue.exit

bb.ac:                                            ; preds = %bb.ab
  %i.fp = getelementptr inbounds nuw i8, ptr %.0.i27, i64 8
  %i.fq = load i16, ptr %i.fp, align 4, !tbaa !34
  %i.fr = zext i16 %i.fq to i64
  %i.fs = shl nuw nsw i64 %i.fr, 2
  %i.ft = getelementptr inbounds nuw i8, ptr %.0.i27, i64 %i.fs
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !22
  %.not4.i.i = icmp eq ptr %i.fu, null
  br i1 %.not4.i.i, label %_upb_Decoder_DecodeWireValue.exit.thread.thread, label %_upb_Decoder_DecodeWireValue.exit

bb.ad:                                            ; preds = %upb_WireReader_ReadSize.exit
  switch i32 %spec.select.i, label %_upb_Decoder_DecodeWireValue.exit [
    i32 31, label %bb.ae
    i32 12, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.ad
  %i.fv = icmp eq i8 %i.fc, 12
  call void @llvm.assume(i1 %i.fv)
  %i.fw = and i8 %.val.i, 16
  %.not.i9.i = icmp eq i8 %i.fw, 0
  br i1 %.not.i9.i, label %_upb_Decoder_DecodeWireValue.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fx = load i16, ptr %i.k, align 8, !tbaa !37
  %i.fy = and i16 %i.fx, 8
  %.not6.i.i = icmp eq i16 %i.fy, 0
  br i1 %.not6.i.i, label %_upb_Decoder_DecodeWireValue.exit, label %_upb_Decoder_DecodeWireValue.exit.thread247

bb.ag:                                            ; preds = %_upb_Decoder_FindField.exit
  %i.fz = load i32, ptr %.0.i27, align 4, !tbaa !27 ; 2 uses
  store i32 %i.fz, ptr %.sroa.0, align 8, !tbaa !22
  %i.ga = getelementptr inbounds nuw i8, ptr %.0.i27, i64 10
  %i.gb = load i8, ptr %i.ga, align 2, !tbaa !33
  %i.gc = trunc i32 %i.fz to i8                   ; 2 uses
  switch i8 %i.gb, label %_upb_Decoder_DecodeWireValue.exit.thread.thread [
    i8 10, label %bb.ah
    i8 19, label %_upb_Decoder_DecodeWireValue.exit.thread.thread285.preheader
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.gd = getelementptr inbounds nuw i8, ptr %.0.i27, i64 11
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !36
  %i.gf = and i8 %i.ge, 8
  %.not.i20 = icmp eq i8 %i.gf, 0
  br i1 %.not.i20, label %bb.ai, label %_upb_Decoder_DecodeWireValue.exit.thread247

bb.ai:                                            ; preds = %bb.ah
  %i.gg = getelementptr inbounds nuw i8, ptr %.0.i27, i64 8
  %i.gh = load i16, ptr %i.gg, align 4, !tbaa !34
  %i.gi = zext i16 %i.gh to i64
  %i.gj = shl nuw nsw i64 %i.gi, 2
  %i.gk = getelementptr inbounds nuw i8, ptr %.0.i27, i64 %i.gj
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !22
  %.not4.i = icmp eq ptr %i.gl, null
  br i1 %.not4.i, label %_upb_Decoder_DecodeWireValue.exit.thread.thread, label %_upb_Decoder_DecodeWireValue.exit.thread247

bb.aj:                                            ; preds = %_upb_Decoder_FindField.exit
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.gm, i32 noundef 2) #13
  unreachable

_upb_Decoder_DecodeWireValue.exit:                ; preds = %bb.af, %bb.ac, %bb.ae, %bb.ad, %bb.ab, %_upb_Decoder_Munge.exit
  %.sroa.0.0..sroa.0.0..sroa.0.0.179309 = phi i8 [ %.sroa.0.0..sroa.0.0..sroa.0.0.179310, %_upb_Decoder_Munge.exit ], [ %i.fn, %bb.ac ], [ %i.fn, %bb.ad ], [ %i.fn, %bb.ab ], [ %i.fn, %bb.ae ], [ %i.fn, %bb.af ]
  %.4.in = phi i8 [ %i.eb, %_upb_Decoder_Munge.exit ], [ %i.fk, %bb.ac ], [ %i.fk, %bb.ad ], [ %i.fk, %bb.ab ], [ %i.fk, %bb.ae ], [ %i.fk, %bb.af ] ; 3 uses
  %.1.i = phi ptr [ %.0.i19, %_upb_Decoder_Munge.exit ], [ %.0.i21, %bb.ac ], [ %.0.i21, %bb.ad ], [ %.0.i21, %bb.ab ], [ %.0.i21, %bb.ae ], [ %.0.i21, %bb.af ] ; 3 uses
  %.4 = zext nneg i8 %.4.in to i32
  %i.gn = icmp sgt i8 %.4.in, -1
  br i1 %i.gn, label %_upb_Decoder_DecodeWireValue.exit.thread247, label %_upb_Decoder_DecodeWireValue.exit.thread

_upb_Decoder_DecodeWireValue.exit.thread247:      ; preds = %bb.ai, %bb.af, %bb.y, %bb.x, %bb.ah, %_upb_Decoder_DecodeWireValue.exit
  %.sroa.0.0..sroa.0.0..sroa.0.0.179 = phi i8 [ %.sroa.0.0..sroa.0.0..sroa.0.0.179309, %_upb_Decoder_DecodeWireValue.exit ], [ %i.gc, %bb.ai ], [ %i.gc, %bb.ah ], [ %i.er, %bb.y ], [ %i.ej, %bb.x ], [ %i.fn, %bb.af ]
  %.1.i251 = phi ptr [ %.1.i, %_upb_Decoder_DecodeWireValue.exit ], [ %.0.i16, %bb.ai ], [ %.0.i16, %bb.ah ], [ %i.eq, %bb.y ], [ %i.ei, %bb.x ], [ %.0.i21, %bb.af ] ; 24 uses
  %.4250 = phi i32 [ %.4, %_upb_Decoder_DecodeWireValue.exit ], [ 6, %bb.ai ], [ 6, %bb.ah ], [ 3, %bb.y ], [ 2, %bb.x ], [ 4, %bb.af ] ; 7 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.0.i27, i64 11
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !36
  %i.gq = zext i8 %i.gp to i32                    ; 2 uses
  %i.gr = and i32 %i.gq, 8
  %.not.i = icmp eq i32 %i.gr, 0
  br i1 %.not.i, label %bb.an, label %bb.ak, !prof !20

bb.ak:                                            ; preds = %_upb_Decoder_DecodeWireValue.exit.thread247
  %i.gs = call ptr @_upb_Message_GetOrCreateExtension_dont_copy_me__upb_internal_use_only(ptr noundef %2, ptr noundef nonnull %.0.i27, ptr noundef nonnull %i.p) #12 ; 2 uses
  %.not30.i = icmp eq ptr %i.gs, null
  br i1 %.not30.i, label %bb.al, label %bb.am, !prof !38

bb.al:                                            ; preds = %bb.ak
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.gt, i32 noundef 1) #13
  unreachable

bb.am:                                            ; preds = %bb.ak
  store ptr %2, ptr %i.q, align 8, !tbaa !39
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %_upb_Decoder_DecodeWireValue.exit.thread247
  %.029.i = phi ptr [ %i.gu, %bb.am ], [ %2, %_upb_Decoder_DecodeWireValue.exit.thread247 ] ; 5 uses
  %i.gv = and i32 %i.gq, 3
  %i.gw = getelementptr inbounds nuw i8, ptr %.0.i27, i64 4
  %i.gx = load i16, ptr %i.gw, align 4, !tbaa !40
  %i.gy = zext i16 %i.gx to i64
  %i.gz = getelementptr inbounds nuw i8, ptr %.029.i, i64 %i.gy ; 13 uses
  switch i32 %i.gv, label %.unreachabledefault.i [
    i32 1, label %bb.ao
    i32 0, label %bb.cm
    i32 2, label %bb.df
  ]

bb.ao:                                            ; preds = %bb.an
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !41 ; 6 uses
  %.not.i43 = icmp eq ptr %i.ha, null
  br i1 %.not.i43, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !43 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !45
  %i.hf = icmp eq i64 %i.hc, %i.he
  br i1 %i.hf, label %bb.aq, label %_upb_Decoder_Reserve.exit95

bb.aq:                                            ; preds = %bb.ap
  %i.hg = add i64 %i.hc, 1
  %i.hh = call zeroext i1 @_upb_Array_Realloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.ha, i64 noundef %i.hg, ptr noundef nonnull %i.p) #12
  br i1 %i.hh, label %_upb_Decoder_Reserve.exit95, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.hi, i32 noundef 1) #13
  unreachable

bb.as:                                            ; preds = %bb.ao
  %i.hj = getelementptr i8, ptr %.0.i27, i64 10
  %.val74.i = load i8, ptr %i.hj, align 2, !tbaa !33
  %i.hk = zext i8 %.val74.i to i64
  %i.hl = add nuw nsw i64 %i.hk, 4294967295
  %i.hm = and i64 %i.hl, 4294967295               ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr @_upb_FieldType_SizeLg2_dont_copy_me__upb_internal_use_only.size, i64 %i.hm
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !22
  %i.hp = sext i8 %i.ho to i64                    ; 2 uses
  %i.hq = and i64 %i.hp, 4294967295
  %i.hr = shl i64 4, %i.hq
  %i.hs = add nuw i64 %i.hr, 28
  %i.ht = and i64 %i.hs, -8                       ; 3 uses
  %.val.i.i.i.i90 = load ptr, ptr %i.p, align 8, !tbaa !46 ; 4 uses
  %.val11.i.i.i.i91 = load ptr, ptr %i.r, align 8, !tbaa !48
  %i.hu = ptrtoint ptr %.val11.i.i.i.i91 to i64
  %i.hv = ptrtoint ptr %.val.i.i.i.i90 to i64
  %i.hw = sub i64 %i.hu, %i.hv
  %i.hx = icmp ult i64 %i.hw, %i.ht
  br i1 %i.hx, label %upb_Arena_Malloc.exit.i.i.i93, label %upb_Arena_Malloc.exit.thread.i.i.i92, !prof !38

upb_Arena_Malloc.exit.thread.i.i.i92:             ; preds = %bb.as
  %i.hy = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i90, i64 %i.ht
  store ptr %i.hy, ptr %i.p, align 8, !tbaa !46
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i90) ]
  br label %_upb_Decoder_CreateArray.exit

upb_Arena_Malloc.exit.i.i.i93:                    ; preds = %bb.as
  %i.hz = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.p, i64 noundef %i.ht) #12 ; 2 uses
  %.not.i.i.i94 = icmp eq ptr %i.hz, null
  br i1 %.not.i.i.i94, label %bb.at, label %_upb_Decoder_CreateArray.exit

bb.at:                                            ; preds = %upb_Arena_Malloc.exit.i.i.i93
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.ia, i32 noundef 1) #13
  unreachable

_upb_Decoder_CreateArray.exit:                    ; preds = %upb_Arena_Malloc.exit.thread.i.i.i92, %upb_Arena_Malloc.exit.i.i.i93
  %.0.i19.i.i.i = phi ptr [ %.val.i.i.i.i90, %upb_Arena_Malloc.exit.thread.i.i.i92 ], [ %i.hz, %upb_Arena_Malloc.exit.i.i.i93 ] ; 6 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.0.i19.i.i.i, i64 24
  %i.ic = icmp ne i64 %i.hm, 7
  %.neg.i.i.i.i = sext i1 %i.ic to i64
  %i.id = add nsw i64 %.neg.i.i.i.i, %i.hp
  %i.ie = ptrtoint ptr %i.ib to i64
  %i.if = or i64 %i.id, %i.ie
  store i64 %i.if, ptr %.0.i19.i.i.i, align 8, !tbaa !49
  %i.ig = getelementptr inbounds nuw i8, ptr %.0.i19.i.i.i, i64 8
  store i64 0, ptr %i.ig, align 8, !tbaa !45
  %i.ih = getelementptr inbounds nuw i8, ptr %.0.i19.i.i.i, i64 16
  store i64 4, ptr %i.ih, align 8, !tbaa !43
  store ptr %.0.i19.i.i.i, ptr %i.gz, align 8, !tbaa !41
  br label %_upb_Decoder_Reserve.exit95

_upb_Decoder_Reserve.exit95:                      ; preds = %bb.aq, %bb.ap, %_upb_Decoder_CreateArray.exit
  %.069.i = phi ptr [ %.0.i19.i.i.i, %_upb_Decoder_CreateArray.exit ], [ %i.ha, %bb.ap ], [ %i.ha, %bb.aq ] ; 18 uses
  switch i32 %.4250, label %bb.cl [
    i32 0, label %bb.au
    i32 2, label %bb.au
    i32 3, label %bb.au
    i32 4, label %bb.av
    i32 5, label %bb.aw
    i32 6, label %bb.bd
    i32 7, label %bb.bp
    i32 8, label %bb.bp
    i32 9, label %bb.bz
    i32 11, label %bb.bz
    i32 12, label %bb.bz
    i32 13, label %bb.ck
  ]

bb.au:                                            ; preds = %_upb_Decoder_Reserve.exit95, %_upb_Decoder_Reserve.exit95, %_upb_Decoder_Reserve.exit95
  %.069.val80.i = load i64, ptr %.069.i, align 8, !tbaa !49
  %i.ii = and i64 %.069.val80.i, -8
  %i.ij = inttoptr i64 %i.ii to ptr
  %i.ik = getelementptr inbounds nuw i8, ptr %.069.i, i64 8 ; 2 uses
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !45 ; 2 uses
  %i.im = zext nneg i32 %.4250 to i64
  %i.in = shl i64 %i.il, %i.im
  %i.io = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.in
  %i.ip = add i64 %i.il, 1
  store i64 %i.ip, ptr %i.ik, align 8, !tbaa !45
  %i.iq = shl nuw nsw i32 1, %.4250
  %i.ir = zext nneg i32 %i.iq to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.io, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0, i64 %i.ir, i1 false)
  br label %_upb_Decoder_DecodeField.exit

bb.av:                                            ; preds = %_upb_Decoder_Reserve.exit95
  %.069.val79.i = load i64, ptr %.069.i, align 8, !tbaa !49
  %i.is = and i64 %.069.val79.i, -8
  %i.it = inttoptr i64 %i.is to ptr
  %i.iu = getelementptr inbounds nuw i8, ptr %.069.i, i64 8 ; 3 uses
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !45
  %i.iw = getelementptr inbounds nuw [16 x i8], ptr %i.it, i64 %i.iv
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.173 = load i32, ptr %.sroa.0, align 8, !tbaa !22
  %i.ix = call fastcc ptr @_upb_Decoder_ReadString2(ptr noundef nonnull %0, ptr noundef %.1.i251, i32 noundef %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.173, ptr noundef %i.iw, i1 noundef zeroext true), !inline_history !50
  %i.iy = load i64, ptr %i.iu, align 8, !tbaa !45
  %i.iz = add i64 %i.iy, 1
  store i64 %i.iz, ptr %i.iu, align 8, !tbaa !45
  br label %_upb_Decoder_DecodeField.exit

bb.aw:                                            ; preds = %_upb_Decoder_Reserve.exit95
  %.069.val78.i = load i64, ptr %.069.i, align 8, !tbaa !49
  %i.ja = and i64 %.069.val78.i, -8
  %i.jb = inttoptr i64 %i.ja to ptr
  %i.jc = getelementptr inbounds nuw i8, ptr %.069.i, i64 8 ; 3 uses
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !45
  %i.je = getelementptr inbounds nuw [16 x i8], ptr %i.jb, i64 %i.jd ; 2 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.172 = load i32, ptr %.sroa.0, align 8, !tbaa !22
  %i.jf = sext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.172 to i64 ; 5 uses
  %i.jg = load ptr, ptr %0, align 8, !tbaa !18
  %i.jh = load i64, ptr %i.l, align 8, !tbaa !51  ; 2 uses
  %i.ji = icmp eq i64 %i.jh, 0
  %i.jj = select i1 %i.ji, i64 16, i64 0
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.jj
  %i.jl = ptrtoint ptr %i.jk to i64
  %i.jm = ptrtoint ptr %.1.i251 to i64            ; 2 uses
  %i.jn = sub i64 %i.jl, %i.jm
  %i.jo = icmp slt i64 %i.jn, %i.jf
  br i1 %i.jo, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.jp = call ptr @upb_EpsCopyInputStream_ReturnError_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %0) #12
  br label %upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit.i.i

bb.ay:                                            ; preds = %bb.aw
  %.val14.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !52 ; 2 uses
  %i.jq = ptrtoint ptr %.val14.i.i.i to i64
  %i.jr = sub i64 %i.jh, %i.jq
  %i.js = getelementptr i8, ptr %.val14.i.i.i, i64 %i.jr
  %i.jt = getelementptr i8, ptr %i.js, i64 %i.jm
  %i.ju = getelementptr inbounds nuw i8, ptr %.1.i251, i64 %i.jf
  br label %upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit.i.i

upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit.i.i: ; preds = %bb.ay, %bb.ax
  %.sroa.0.1.i.i = phi ptr [ undef, %bb.ax ], [ %i.jt, %bb.ay ] ; 2 uses
  %.0.i.i.i89 = phi ptr [ %i.jp, %bb.ax ], [ %i.ju, %bb.ay ] ; 2 uses
  %i.jv = icmp eq ptr %.0.i.i.i89, null
  br i1 %i.jv, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit.i.i
  %i.jw = load i16, ptr %i.k, align 8, !tbaa !37
  %i.jx = and i16 %i.jw, 1
  %i.jy = icmp eq i16 %i.jx, 0
  br i1 %i.jy, label %bb.ba, label %_upb_Decoder_ReadString2.exit

bb.ba:                                            ; preds = %bb.az
  %i.jz = add nsw i64 %i.jf, 7
  %i.ka = and i64 %i.jz, -8                       ; 3 uses
  %.val.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !46 ; 4 uses
  %.val11.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !48
  %i.kb = ptrtoint ptr %.val11.i.i.i to i64
  %i.kc = ptrtoint ptr %.val.i.i.i to i64
  %i.kd = sub i64 %i.kb, %i.kc
  %i.ke = icmp ult i64 %i.kd, %i.ka
  br i1 %i.ke, label %upb_Arena_Malloc.exit.i.i, label %upb_Arena_Malloc.exit.thread.i.i, !prof !38

upb_Arena_Malloc.exit.thread.i.i:                 ; preds = %bb.ba
  %i.kf = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.ka
  store ptr %i.kf, ptr %i.p, align 8, !tbaa !46
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  br label %bb.bb

upb_Arena_Malloc.exit.i.i:                        ; preds = %bb.ba
  %i.kg = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.p, i64 noundef %i.ka) #12 ; 2 uses
  %.not15.not.i.i = icmp eq ptr %i.kg, null
  br i1 %.not15.not.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %upb_Arena_Malloc.exit.i.i, %upb_Arena_Malloc.exit.thread.i.i
  %.0.i1622.i.i = phi ptr [ %.val.i.i.i, %upb_Arena_Malloc.exit.thread.i.i ], [ %i.kg, %upb_Arena_Malloc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i1622.i.i, ptr align 1 %.sroa.0.1.i.i, i64 range(i64 -2147483648, 2147483648) %i.jf, i1 false)
  br label %_upb_Decoder_ReadString2.exit

bb.bc:                                            ; preds = %upb_Arena_Malloc.exit.i.i, %upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit.i.i
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.kh, i32 noundef 1) #13
  unreachable

_upb_Decoder_ReadString2.exit:                    ; preds = %bb.az, %bb.bb
  %.sroa.0.0.i.i = phi ptr [ %.0.i1622.i.i, %bb.bb ], [ %.sroa.0.1.i.i, %bb.az ]
  store ptr %.sroa.0.0.i.i, ptr %i.je, align 8, !tbaa !53
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  store i64 %i.jf, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !tbaa !32
  %i.ki = load i64, ptr %i.jc, align 8, !tbaa !45
  %i.kj = add i64 %i.ki, 1
  store i64 %i.kj, ptr %i.jc, align 8, !tbaa !45
  br label %_upb_Decoder_DecodeField.exit

bb.bd:                                            ; preds = %_upb_Decoder_Reserve.exit95
  %.069.val77.i = load i64, ptr %.069.i, align 8, !tbaa !49
  %i.kk = and i64 %.069.val77.i, -8
  %i.kl = inttoptr i64 %i.kk to ptr
  %i.km = getelementptr inbounds nuw i8, ptr %.069.i, i64 8 ; 3 uses
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !45
  %i.ko = shl i64 %i.kn, 3
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kl, i64 %i.ko
  %i.kq = getelementptr inbounds nuw i8, ptr %.0.i27, i64 8 ; 3 uses
  %i.kr = load i16, ptr %i.kq, align 4, !tbaa !34
  %i.ks = zext i16 %i.kr to i64
  %i.kt = shl nuw nsw i64 %i.ks, 2
  %i.ku = getelementptr inbounds nuw i8, ptr %.0.i27, i64 %i.kt
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !22
  %i.kw = getelementptr i8, ptr %i.kv, i64 8
  %.val.i88 = load i16, ptr %i.kw, align 8, !tbaa !24
  %i.kx = zext i16 %.val.i88 to i64               ; 5 uses
  %i.ky = and i64 %i.kx, 7
  %i.kz = icmp eq i64 %i.ky, 0
  call void @llvm.assume(i1 %i.kz)
  %.val.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !46 ; 4 uses
  %.val11.i.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !48
  %i.la = ptrtoint ptr %.val11.i.i.i.i to i64
  %i.lb = ptrtoint ptr %.val.i.i.i.i to i64
  %i.lc = sub i64 %i.la, %i.lb
  %i.ld = icmp ult i64 %i.lc, %i.kx
  br i1 %i.ld, label %upb_Arena_Malloc.exit.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i.i, !prof !38

upb_Arena_Malloc.exit.thread.i.i.i:               ; preds = %bb.bd
  %i.le = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.kx
  store ptr %i.le, ptr %i.p, align 8, !tbaa !46
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  br label %_upb_Decoder_NewSubMessage.exit

upb_Arena_Malloc.exit.i.i.i:                      ; preds = %bb.bd
  %i.lf = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.p, i64 noundef %i.kx) #12 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.lf, null
  br i1 %.not.i.i.i, label %bb.be, label %_upb_Decoder_NewSubMessage.exit, !prof !54

bb.be:                                            ; preds = %upb_Arena_Malloc.exit.i.i.i
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.lg, i32 noundef 1) #13
  unreachable

_upb_Decoder_NewSubMessage.exit:                  ; preds = %upb_Arena_Malloc.exit.thread.i.i.i, %upb_Arena_Malloc.exit.i.i.i
  %.0.i3.i.i.i = phi ptr [ %.val.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i ], [ %i.lf, %upb_Arena_Malloc.exit.i.i.i ] ; 4 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i3.i.i.i, i8 0, i64 %i.kx, i1 false)
  store ptr %.0.i3.i.i.i, ptr %i.kp, align 8, !tbaa !55
  %i.lh = load i64, ptr %i.km, align 8, !tbaa !45
  %i.li = add i64 %i.lh, 1
  store i64 %i.li, ptr %i.km, align 8, !tbaa !45
  %i.lj = getelementptr inbounds nuw i8, ptr %.0.i27, i64 10
  %i.lk = load i8, ptr %i.lj, align 2, !tbaa !33
  %i.ll = icmp eq i8 %i.lk, 10
  br i1 %i.ll, label %bb.bf, label %bb.bk, !prof !38

bb.bf:                                            ; preds = %_upb_Decoder_NewSubMessage.exit
  %i.lm = load i16, ptr %i.kq, align 4, !tbaa !34
  %i.ln = zext i16 %i.lm to i64
  %i.lo = shl nuw nsw i64 %i.ln, 2
  %i.lp = getelementptr inbounds nuw i8, ptr %.0.i27, i64 %i.lo
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !22
  %i.lr = load i32, ptr %.0.i27, align 4, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.1.i251, ptr %i.c, align 8, !tbaa !53
  %i.ls = call fastcc zeroext i1 @upb_EpsCopyInputStream_IsDone(ptr noundef nonnull %0, ptr noundef %i.c), !inline_history !50
  br i1 %i.ls, label %bb.bg, label %_upb_Decoder_DecodeGroup.exit.i

bb.bg:                                            ; preds = %bb.bf
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.lt, i32 noundef 2) #13, !inline_history !50
  unreachable

_upb_Decoder_DecodeGroup.exit.i:                  ; preds = %bb.bf
  %i.lu = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.lv = load i32, ptr %i.n, align 8, !tbaa !56  ; 2 uses
  %i.lw = add nsw i32 %i.lv, -1
  store i32 %i.lw, ptr %i.n, align 8, !tbaa !56
  %i.lx = icmp slt i32 %i.lv, 1
  br i1 %i.lx, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %_upb_Decoder_DecodeGroup.exit.i
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.ly, i32 noundef 4) #13, !inline_history !50
  unreachable

bb.bi:                                            ; preds = %_upb_Decoder_DecodeGroup.exit.i
  %i.lz = call ptr @_upb_Decoder_DecodeMessage(ptr noundef nonnull %0, ptr noundef %i.lu, ptr noundef nonnull %.0.i3.i.i.i, ptr noundef %i.lq), !inline_history !50
  %i.ma = load i32, ptr %i.n, align 8, !tbaa !56
  %i.mb = add nsw i32 %i.ma, 1
  store i32 %i.mb, ptr %i.n, align 8, !tbaa !56
  %i.mc = load i32, ptr %i.s, align 4, !tbaa !23
  %.not.i71.i = icmp eq i32 %i.mc, %i.lr
  br i1 %.not.i71.i, label %_upb_Decoder_RecurseSubMessage.exit.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.md, i32 noundef 2) #13, !inline_history !50
  unreachable

_upb_Decoder_RecurseSubMessage.exit.i:            ; preds = %bb.bi
  store i32 -1, ptr %i.s, align 4, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_upb_Decoder_DecodeField.exit

bb.bk:                                            ; preds = %_upb_Decoder_NewSubMessage.exit
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.171 = load i32, ptr %.sroa.0, align 8, !tbaa !22
  %i.me = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.171 to i64
  %i.mf = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.mg = ptrtoint ptr %.1.i251 to i64
  %i.mh = ptrtoint ptr %i.mf to i64
  %i.mi = sub i64 %i.mg, %i.mh
  %i.mj = add nsw i64 %i.mi, %i.me                ; 3 uses
  %i.mk = load i64, ptr %i.e, align 8, !tbaa !21
  %i.ml = sub nsw i64 %i.mk, %i.mj                ; 2 uses
  store i64 %i.mj, ptr %i.e, align 8, !tbaa !21
  %i.mm = call i64 @llvm.smin.i64(i64 %i.mj, i64 0)
  %i.mn = getelementptr inbounds i8, ptr %i.mf, i64 %i.mm
  store ptr %i.mn, ptr %i.d, align 8, !tbaa !19
  %i.mo = icmp slt i64 %i.ml, 0
  br i1 %i.mo, label %bb.bl, label %upb_EpsCopyInputStream_PushLimit.exit86, !prof !38

bb.bl:                                            ; preds = %bb.bk
  %i.mp = call ptr @upb_EpsCopyInputStream_ReturnError_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %0) #12 ; 0 uses
  br label %upb_EpsCopyInputStream_PushLimit.exit86

upb_EpsCopyInputStream_PushLimit.exit86:          ; preds = %bb.bk, %bb.bl
  %i.mq = load i16, ptr %i.kq, align 4, !tbaa !34
  %i.mr = zext i16 %i.mq to i64
  %i.ms = shl nuw nsw i64 %i.mr, 2
  %i.mt = getelementptr inbounds nuw i8, ptr %.0.i27, i64 %i.ms
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !22
  %i.mv = load i32, ptr %i.n, align 8, !tbaa !56  ; 2 uses
  %i.mw = add nsw i32 %i.mv, -1
  store i32 %i.mw, ptr %i.n, align 8, !tbaa !56
  %i.mx = icmp slt i32 %i.mv, 1
  br i1 %i.mx, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %upb_EpsCopyInputStream_PushLimit.exit86
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.my, i32 noundef 4) #13, !inline_history !50
  unreachable

bb.bn:                                            ; preds = %upb_EpsCopyInputStream_PushLimit.exit86
  %i.mz = call ptr @_upb_Decoder_DecodeMessage(ptr noundef nonnull %0, ptr noundef %.1.i251, ptr noundef nonnull %.0.i3.i.i.i, ptr noundef %i.mu), !inline_history !50
  %i.na = load i32, ptr %i.n, align 8, !tbaa !56
  %i.nb = add nsw i32 %i.na, 1
  store i32 %i.nb, ptr %i.n, align 8, !tbaa !56
  %i.nc = load i32, ptr %i.s, align 4, !tbaa !23
  %.not.i72.i = icmp eq i32 %i.nc, -1
  br i1 %.not.i72.i, label %_upb_Decoder_RecurseSubMessage.exit73.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.nd, i32 noundef 2) #13, !inline_history !50
  unreachable

_upb_Decoder_RecurseSubMessage.exit73.i:          ; preds = %bb.bn
  %i.ne = load i64, ptr %i.e, align 8, !tbaa !21
  %i.nf = add nsw i64 %i.ne, %i.ml                ; 2 uses
  store i64 %i.nf, ptr %i.e, align 8, !tbaa !21
  %i.ng = load ptr, ptr %0, align 8, !tbaa !18
  %spec.select.i85 = call i64 @llvm.smin.i64(i64 %i.nf, i64 0)
  %i.nh = getelementptr inbounds i8, ptr %i.ng, i64 %spec.select.i85
  store ptr %i.nh, ptr %i.d, align 8, !tbaa !19
  br label %_upb_Decoder_DecodeField.exit

bb.bp:                                            ; preds = %_upb_Decoder_Reserve.exit95, %_upb_Decoder_Reserve.exit95
  %i.ni = add nsw i32 %.4250, -5                  ; 3 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.169 = load i32, ptr %.sroa.0, align 8, !tbaa !22 ; 3 uses
  %i.nj = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.169 to i64 ; 3 uses
  %i.nk = load ptr, ptr %0, align 8, !tbaa !18
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 16
  %i.nm = ptrtoint ptr %i.nl to i64
  %i.nn = ptrtoint ptr %.1.i251 to i64
  %i.no = sub i64 %i.nm, %i.nn
  %i.np = icmp slt i64 %i.no, %i.nj
  br i1 %i.np, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.nq = call ptr @upb_EpsCopyInputStream_ReturnError_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %0) #12
  br label %upb_EpsCopyInputStream_ReadStringEphemeral.exit

bb.br:                                            ; preds = %bb.bp
  %i.nr = getelementptr inbounds nuw i8, ptr %.1.i251, i64 %i.nj
  br label %upb_EpsCopyInputStream_ReadStringEphemeral.exit

upb_EpsCopyInputStream_ReadStringEphemeral.exit:  ; preds = %bb.bq, %bb.br
  %.sroa.4.6 = phi i64 [ %.sroa.4.0, %bb.bq ], [ %i.nj, %bb.br ] ; 3 uses
  %.sroa.0188.6 = phi ptr [ %.sroa.0188.0, %bb.bq ], [ %.1.i251, %bb.br ] ; 3 uses
  %.0.i84 = phi ptr [ %i.nq, %bb.bq ], [ %i.nr, %bb.br ] ; 3 uses
  %.not.i.i46 = icmp eq ptr %.0.i84, null
  br i1 %.not.i.i46, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %upb_EpsCopyInputStream_ReadStringEphemeral.exit
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.ns, i32 noundef 2) #13, !inline_history !50
  unreachable

bb.bt:                                            ; preds = %upb_EpsCopyInputStream_ReadStringEphemeral.exit
  %notmask.i.i = shl nsw i32 -1, %i.ni
  %i.nt = xor i32 %notmask.i.i, -1
  %i.nu = and i32 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.169, %i.nt
  %.not48.i.i = icmp eq i32 %i.nu, 0
  br i1 %.not48.i.i, label %bb.bv, label %bb.bu, !prof !20

bb.bu:                                            ; preds = %bb.bt
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.nv, i32 noundef 2) #13, !inline_history !50
  unreachable

bb.bv:                                            ; preds = %bb.bt
  %i.nw = lshr i32 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.169, %i.ni ; 2 uses
  %i.nx = icmp eq i32 %i.nw, 0
  br i1 %i.nx, label %_upb_Decoder_DecodeField.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ny = zext nneg i32 %i.nw to i64              ; 3 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %.069.i, i64 16
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !43
  %i.ob = getelementptr inbounds nuw i8, ptr %.069.i, i64 8 ; 3 uses
  %i.oc = load i64, ptr %i.ob, align 8, !tbaa !45 ; 3 uses
  %i.od = sub i64 %i.oa, %i.oc
  %i.oe = icmp ult i64 %i.od, %i.ny
  br i1 %i.oe, label %bb.bx, label %_upb_Decoder_Reserve.exit83

bb.bx:                                            ; preds = %bb.bw
  %i.of = add i64 %i.oc, %i.ny
  %i.og = call zeroext i1 @_upb_Array_Realloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %.069.i, i64 noundef %i.of, ptr noundef nonnull %i.p) #12
  br i1 %i.og, label %._upb_Decoder_Reserve.exit83_crit_edge, label %bb.by

._upb_Decoder_Reserve.exit83_crit_edge:           ; preds = %bb.bx
end_hunk_0
begin_hunk_1_@_upb_Decoder_DecodeMessage:bb.a
bb.cc:                                            ; preds = %bb.cb
  %sext.i.i77 = shl i64 %i.pq, 32
  %i.pu = ashr exact i64 %sext.i.i77, 32          ; 2 uses
  %i.pv = load i64, ptr %i.e, align 8, !tbaa !21
  %i.pw = icmp eq i64 %i.pu, %i.pv
  br i1 %i.pw, label %_upb_Decoder_DecodeVarintPacked.exit.i, label %upb_EpsCopyInputStream_IsDone.exit81, !prof !20

upb_EpsCopyInputStream_IsDone.exit81:             ; preds = %bb.cc
  %i.px = call ptr @upb_EpsCopyInputStream_IsDoneFallback_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %0, ptr noundef %.0215, i32 noundef %i.pr) #12 ; 2 uses
  %.not.i79 = icmp eq ptr %i.px, null
  br i1 %.not.i79, label %upb_EpsCopyInputStream_IsDone.exit81._upb_Decoder_DecodeVarintPacked.exit.i_crit_edge, label %upb_EpsCopyInputStream_IsDone.exit81.thread255

upb_EpsCopyInputStream_IsDone.exit81._upb_Decoder_DecodeVarintPacked.exit.i_crit_edge: ; preds = %upb_EpsCopyInputStream_IsDone.exit81
  %.pre312 = load i64, ptr %i.e, align 8, !tbaa !21
  %.pre313 = load ptr, ptr %0, align 8, !tbaa !18
  br label %_upb_Decoder_DecodeVarintPacked.exit.i

upb_EpsCopyInputStream_IsDone.exit81.thread255:   ; preds = %bb.cb, %upb_EpsCopyInputStream_IsDone.exit81
  %.1216258 = phi ptr [ %i.px, %upb_EpsCopyInputStream_IsDone.exit81 ], [ %.0215, %bb.cb ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0189)
  %i.py = load i8, ptr %.1216258, align 1, !tbaa !22 ; 2 uses
  %i.pz = icmp sgt i8 %i.py, -1
  %i.qa = zext i8 %i.py to i64                    ; 3 uses
  br i1 %i.pz, label %bb.cd, label %upb_EpsCopyInputStream_HasErrorHandler.exit.i74, !prof !20

bb.cd:                                            ; preds = %upb_EpsCopyInputStream_IsDone.exit81.thread255
  store i64 %i.qa, ptr %.sroa.0189, align 8, !tbaa !32
  %i.qb = getelementptr inbounds nuw i8, ptr %.1216258, i64 1
  br label %upb_WireReader_ReadVarint.exit.i.i

upb_EpsCopyInputStream_HasErrorHandler.exit.i74:  ; preds = %upb_EpsCopyInputStream_IsDone.exit81.thread255
  %i.qc = call { ptr, i64 } @_upb_WireReader_ReadLongVarint_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %.1216258, i64 noundef %i.qa, ptr noundef nonnull %0) #12, !inline_history !50 ; 2 uses
  %i.qd = extractvalue { ptr, i64 } %i.qc, 0
  %i.qe = extractvalue { ptr, i64 } %i.qc, 1      ; 2 uses
  store i64 %i.qe, ptr %.sroa.0189, align 8, !tbaa !32
  br label %upb_WireReader_ReadVarint.exit.i.i

upb_WireReader_ReadVarint.exit.i.i:               ; preds = %upb_EpsCopyInputStream_HasErrorHandler.exit.i74, %bb.cd
  %.sroa.0189.0..sroa.0189.0..sroa.0189.0.191 = phi i64 [ %i.qa, %bb.cd ], [ %i.qe, %upb_EpsCopyInputStream_HasErrorHandler.exit.i74 ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.qb, %bb.cd ], [ %i.qd, %upb_EpsCopyInputStream_HasErrorHandler.exit.i74 ]
  %.val.i45 = load i8, ptr %i.pk, align 2, !tbaa !33
  switch i8 %.val.i45, label %_upb_Decoder_Munge.exit72 [
    i8 8, label %bb.ce
    i8 17, label %bb.cf
    i8 18, label %bb.cg
  ]

bb.ce:                                            ; preds = %upb_WireReader_ReadVarint.exit.i.i
  %i.qf = icmp ne i64 %.sroa.0189.0..sroa.0189.0..sroa.0189.0.191, 0
  %i.qg = zext i1 %i.qf to i8
  store i8 %i.qg, ptr %.sroa.0189, align 8, !tbaa !22
  br label %_upb_Decoder_Munge.exit72

bb.cf:                                            ; preds = %upb_WireReader_ReadVarint.exit.i.i
  %i.qh = trunc i64 %.sroa.0189.0..sroa.0189.0..sroa.0189.0.191 to i32 ; 2 uses
  %i.qi = lshr i32 %i.qh, 1
  %i.qj = and i32 %i.qh, 1
  %i.qk = sub nsw i32 0, %i.qj
  %i.ql = xor i32 %i.qi, %i.qk
  store i32 %i.ql, ptr %.sroa.0189, align 8, !tbaa !22
  br label %_upb_Decoder_Munge.exit72

bb.cg:                                            ; preds = %upb_WireReader_ReadVarint.exit.i.i
  %i.qm = lshr i64 %.sroa.0189.0..sroa.0189.0..sroa.0189.0.191, 1
  %i.qn = and i64 %.sroa.0189.0..sroa.0189.0..sroa.0189.0.191, 1
  %i.qo = sub nsw i64 0, %i.qn
  %i.qp = xor i64 %i.qm, %i.qo
  store i64 %i.qp, ptr %.sroa.0189, align 8, !tbaa !22
  br label %_upb_Decoder_Munge.exit72

_upb_Decoder_Munge.exit72:                        ; preds = %upb_WireReader_ReadVarint.exit.i.i, %bb.ce, %bb.cf, %bb.cg
  %i.qq = load i64, ptr %i.pl, align 8, !tbaa !43 ; 2 uses
  %i.qr = load i64, ptr %i.pf, align 8, !tbaa !45 ; 2 uses
  %i.qs = icmp eq i64 %i.qq, %i.qr
  br i1 %i.qs, label %bb.ch, label %_upb_Decoder_Reserve.exit

bb.ch:                                            ; preds = %_upb_Decoder_Munge.exit72
  %i.qt = add i64 %i.qq, 1
  %i.qu = call zeroext i1 @_upb_Array_Realloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %.069.i, i64 noundef %i.qt, ptr noundef nonnull %i.p) #12
  br i1 %i.qu, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.qv, i32 noundef 1) #13
  unreachable

bb.cj:                                            ; preds = %bb.ch
  %.069.val.i = load i64, ptr %.069.i, align 8, !tbaa !49
  %i.qw = and i64 %.069.val.i, -8
  %i.qx = inttoptr i64 %i.qw to ptr
  %i.qy = load i64, ptr %i.pf, align 8, !tbaa !45 ; 2 uses
  %i.qz = shl i64 %i.qy, %i.ph
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qx, i64 %i.qz
  br label %_upb_Decoder_Reserve.exit

_upb_Decoder_Reserve.exit:                        ; preds = %_upb_Decoder_Munge.exit72, %bb.cj
  %i.rb = phi i64 [ %i.qy, %bb.cj ], [ %i.qr, %_upb_Decoder_Munge.exit72 ]
  %.1.i.i = phi ptr [ %i.ra, %bb.cj ], [ %.0.i.i, %_upb_Decoder_Munge.exit72 ] ; 2 uses
  %i.rc = add i64 %i.rb, 1
  store i64 %i.rc, ptr %i.pf, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.1.i.i, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0189, i64 %i.pm, i1 false)
  %i.rd = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 %i.pm
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0189)
  br label %bb.cb, !llvm.loop !57

_upb_Decoder_DecodeVarintPacked.exit.i:           ; preds = %bb.cc, %upb_EpsCopyInputStream_IsDone.exit81._upb_Decoder_DecodeVarintPacked.exit.i_crit_edge
  %i.re = phi ptr [ %.pre313, %upb_EpsCopyInputStream_IsDone.exit81._upb_Decoder_DecodeVarintPacked.exit.i_crit_edge ], [ %i.pn, %bb.cc ]
  %i.rf = phi i64 [ %.pre312, %upb_EpsCopyInputStream_IsDone.exit81._upb_Decoder_DecodeVarintPacked.exit.i_crit_edge ], [ %i.pu, %bb.cc ]
  %.1216254 = phi ptr [ null, %upb_EpsCopyInputStream_IsDone.exit81._upb_Decoder_DecodeVarintPacked.exit.i_crit_edge ], [ %.0215, %bb.cc ]
  %i.rg = add nsw i64 %i.rf, %i.oy                ; 2 uses
  store i64 %i.rg, ptr %i.e, align 8, !tbaa !21
  %spec.select.i71 = call i64 @llvm.smin.i64(i64 %i.rg, i64 0)
  %i.rh = getelementptr inbounds i8, ptr %i.re, i64 %spec.select.i71
  store ptr %i.rh, ptr %i.d, align 8, !tbaa !19
  br label %_upb_Decoder_DecodeField.exit

bb.ck:                                            ; preds = %_upb_Decoder_Reserve.exit95
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..val81.i = load i32, ptr %.sroa.0, align 8, !tbaa !22
  %i.ri = call fastcc ptr @_upb_Decoder_DecodeEnumPacked(ptr noundef nonnull %0, ptr noundef %.1.i251, ptr noundef nonnull %.029.i, ptr noundef %.069.i, ptr noundef nonnull %.0.i27, i32 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..val81.i), !inline_history !50
  br label %_upb_Decoder_DecodeField.exit

bb.cl:                                            ; preds = %_upb_Decoder_Reserve.exit95
  unreachable

bb.cm:                                            ; preds = %bb.an
  %i.rj = load ptr, ptr %i.gz, align 8, !tbaa !58 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.rk = getelementptr inbounds nuw i8, ptr %.0.i27, i64 8 ; 2 uses
  %i.rl = load i16, ptr %i.rk, align 4, !tbaa !34
  %i.rm = zext i16 %i.rl to i64
  %i.rn = shl nuw nsw i64 %i.rm, 2
  %i.ro = getelementptr inbounds nuw i8, ptr %.0.i27, i64 %i.rn
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !22 ; 3 uses
  %.not.i47 = icmp eq ptr %i.rj, null
  br i1 %.not.i47, label %bb.cn, label %bb.cp

bb.cn:                                            ; preds = %bb.cm
  %.val.i51 = load ptr, ptr %i.rp, align 8, !tbaa !25 ; 2 uses
  %i.rq = getelementptr i8, ptr %.val.i51, i64 10
  %.val.val.i = load i8, ptr %i.rq, align 2, !tbaa !33
  %i.rr = getelementptr i8, ptr %.val.i51, i64 22
  %.val.val39.i = load i8, ptr %i.rr, align 2, !tbaa !33
  %i.rs = zext i8 %.val.val.i to i64
  %i.rt = getelementptr inbounds nuw i8, ptr @_upb_Decoder_CreateMap.kSizeInMap, i64 %i.rs
  %i.ru = load i8, ptr %i.rt, align 1, !tbaa !22
  %i.rv = zext i8 %.val.val39.i to i64
  %i.rw = getelementptr inbounds nuw i8, ptr @_upb_Decoder_CreateMap.kSizeInMap, i64 %i.rv
  %i.rx = load i8, ptr %i.rw, align 1, !tbaa !22
  %i.ry = sext i8 %i.ru to i64
  %i.rz = sext i8 %i.rx to i64
  %i.sa = call ptr @_upb_Map_New(ptr noundef nonnull %i.p, i64 noundef %i.ry, i64 noundef %i.rz) #12 ; 3 uses
  %.not.i114 = icmp eq ptr %i.sa, null
  br i1 %.not.i114, label %bb.co, label %_upb_Decoder_CreateMap.exit

bb.co:                                            ; preds = %bb.cn
  %i.sb = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.sb, i32 noundef 1) #13
  unreachable

_upb_Decoder_CreateMap.exit:                      ; preds = %bb.cn
  store ptr %i.sa, ptr %i.gz, align 8, !tbaa !58
  br label %bb.cp

bb.cp:                                            ; preds = %_upb_Decoder_CreateMap.exit, %bb.cm
  %.0.i48 = phi ptr [ %i.rj, %bb.cm ], [ %i.sa, %_upb_Decoder_CreateMap.exit ] ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  %i.sc = load ptr, ptr %i.rp, align 8, !tbaa !25 ; 3 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 22
  %i.se = load i8, ptr %i.sd, align 2, !tbaa !33
  %i.sf = and i8 %i.se, -2
  %i.sg = icmp eq i8 %i.sf, 10
  br i1 %i.sg, label %bb.cq, label %.thread259

bb.cq:                                            ; preds = %bb.cp
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sc, i64 12
  %i.si = getelementptr inbounds nuw i8, ptr %i.sc, i64 20
  %i.sj = load i16, ptr %i.si, align 4, !tbaa !34
  %i.sk = zext i16 %i.sj to i64
  %i.sl = shl nuw nsw i64 %i.sk, 2
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sh, i64 %i.sl
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !22 ; 3 uses
  %.not36.i = icmp eq ptr %i.sn, null
  br i1 %.not36.i, label %.thread259, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.so = getelementptr i8, ptr %i.sn, i64 8
  %.val.i106 = load i16, ptr %i.so, align 8, !tbaa !24
  %i.sp = zext i16 %.val.i106 to i64              ; 5 uses
  %i.sq = and i64 %i.sp, 7
  %i.sr = icmp eq i64 %i.sq, 0
  call void @llvm.assume(i1 %i.sr)
  %.val.i.i.i.i107 = load ptr, ptr %i.p, align 8, !tbaa !46 ; 4 uses
  %.val11.i.i.i.i108 = load ptr, ptr %i.r, align 8, !tbaa !48
  %i.ss = ptrtoint ptr %.val11.i.i.i.i108 to i64
  %i.st = ptrtoint ptr %.val.i.i.i.i107 to i64    ; 2 uses
  %i.su = sub i64 %i.ss, %i.st
  %i.sv = icmp ult i64 %i.su, %i.sp
  br i1 %i.sv, label %upb_Arena_Malloc.exit.i.i.i111, label %upb_Arena_Malloc.exit.thread.i.i.i109, !prof !38

upb_Arena_Malloc.exit.thread.i.i.i109:            ; preds = %bb.cr
  %i.sw = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i107, i64 %i.sp
  store ptr %i.sw, ptr %i.p, align 8, !tbaa !46
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i107) ]
  br label %_upb_Decoder_NewSubMessage.exit113

upb_Arena_Malloc.exit.i.i.i111:                   ; preds = %bb.cr
  %i.sx = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.p, i64 noundef %i.sp) #12 ; 3 uses
  %.not.i.i.i112 = icmp eq ptr %i.sx, null
  br i1 %.not.i.i.i112, label %bb.cs, label %upb_Arena_Malloc.exit.i.i.i111._upb_Decoder_NewSubMessage.exit113_crit_edge, !prof !54

upb_Arena_Malloc.exit.i.i.i111._upb_Decoder_NewSubMessage.exit113_crit_edge: ; preds = %upb_Arena_Malloc.exit.i.i.i111
  %.pre317 = ptrtoint ptr %i.sx to i64
  br label %_upb_Decoder_NewSubMessage.exit113

bb.cs:                                            ; preds = %upb_Arena_Malloc.exit.i.i.i111
  %i.sy = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.sy, i32 noundef 1) #13
  unreachable

_upb_Decoder_NewSubMessage.exit113:               ; preds = %upb_Arena_Malloc.exit.i.i.i111._upb_Decoder_NewSubMessage.exit113_crit_edge, %upb_Arena_Malloc.exit.thread.i.i.i109
  %.pre-phi = phi i64 [ %.pre317, %upb_Arena_Malloc.exit.i.i.i111._upb_Decoder_NewSubMessage.exit113_crit_edge ], [ %i.st, %upb_Arena_Malloc.exit.thread.i.i.i109 ]
  %.0.i3.i.i.i110 = phi ptr [ %i.sx, %upb_Arena_Malloc.exit.i.i.i111._upb_Decoder_NewSubMessage.exit113_crit_edge ], [ %.val.i.i.i.i107, %upb_Arena_Malloc.exit.thread.i.i.i109 ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i3.i.i.i110, i8 0, i64 %i.sp, i1 false)
  store i64 %.pre-phi, ptr %i.t, align 8, !tbaa !32
  br label %.thread259

.thread259:                                       ; preds = %bb.cp, %_upb_Decoder_NewSubMessage.exit113, %bb.cq
  %i.sz = phi ptr [ null, %bb.cq ], [ %i.sn, %_upb_Decoder_NewSubMessage.exit113 ], [ null, %bb.cp ] ; 2 uses
  %.0217 = phi ptr [ null, %bb.cq ], [ %.0.i3.i.i.i110, %_upb_Decoder_NewSubMessage.exit113 ], [ null, %bb.cp ] ; 2 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.174 = load i32, ptr %.sroa.0, align 8, !tbaa !22
  %i.ta = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.174 to i64
  %i.tb = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.tc = ptrtoint ptr %.1.i251 to i64
  %i.td = ptrtoint ptr %i.tb to i64
  %i.te = sub i64 %i.tc, %i.td
  %i.tf = add nsw i64 %i.te, %i.ta                ; 3 uses
  %i.tg = load i64, ptr %i.e, align 8, !tbaa !21
  %i.th = sub nsw i64 %i.tg, %i.tf                ; 2 uses
  store i64 %i.tf, ptr %i.e, align 8, !tbaa !21
  %i.ti = call i64 @llvm.smin.i64(i64 %i.tf, i64 0)
  %i.tj = getelementptr inbounds i8, ptr %i.tb, i64 %i.ti
  store ptr %i.tj, ptr %i.d, align 8, !tbaa !19
  %i.tk = icmp slt i64 %i.th, 0
  br i1 %i.tk, label %bb.ct, label %upb_EpsCopyInputStream_PushLimit.exit105, !prof !38

bb.ct:                                            ; preds = %.thread259
  %i.tl = call ptr @upb_EpsCopyInputStream_ReturnError_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %0) #12 ; 0 uses
  br label %upb_EpsCopyInputStream_PushLimit.exit105

upb_EpsCopyInputStream_PushLimit.exit105:         ; preds = %.thread259, %bb.ct
  %i.tm = load i16, ptr %i.rk, align 4, !tbaa !34
  %i.tn = zext i16 %i.tm to i64
  %i.to = shl nuw nsw i64 %i.tn, 2
  %i.tp = getelementptr inbounds nuw i8, ptr %.0.i27, i64 %i.to
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !22
  %i.tr = load i32, ptr %i.n, align 8, !tbaa !56  ; 2 uses
  %i.ts = add nsw i32 %i.tr, -1
  store i32 %i.ts, ptr %i.n, align 8, !tbaa !56
  %i.tt = icmp slt i32 %i.tr, 1
  br i1 %i.tt, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %upb_EpsCopyInputStream_PushLimit.exit105
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.tu, i32 noundef 4) #13, !inline_history !60
  unreachable

bb.cv:                                            ; preds = %upb_EpsCopyInputStream_PushLimit.exit105
  %i.tv = call ptr @_upb_Decoder_DecodeMessage(ptr noundef nonnull %0, ptr noundef %.1.i251, ptr noundef nonnull %4, ptr noundef %i.tq), !inline_history !60 ; 2 uses
  %i.tw = load i32, ptr %i.n, align 8, !tbaa !56
  %i.tx = add nsw i32 %i.tw, 1
  store i32 %i.tx, ptr %i.n, align 8, !tbaa !56
  %i.ty = load i32, ptr %i.s, align 4, !tbaa !23
  %.not.i.i49 = icmp eq i32 %i.ty, -1
  br i1 %.not.i.i49, label %_upb_Decoder_RecurseSubMessage.exit.i50, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.tz, i32 noundef 2) #13, !inline_history !60
  unreachable

_upb_Decoder_RecurseSubMessage.exit.i50:          ; preds = %bb.cv
  %i.ua = load i64, ptr %i.e, align 8, !tbaa !21
  %i.ub = add nsw i64 %i.ua, %i.th                ; 2 uses
  store i64 %i.ub, ptr %i.e, align 8, !tbaa !21
  %i.uc = load ptr, ptr %0, align 8, !tbaa !18
  %spec.select.i104 = call i64 @llvm.smin.i64(i64 %i.ub, i64 0)
  %i.ud = getelementptr inbounds i8, ptr %i.uc, i64 %spec.select.i104
  store ptr %i.ud, ptr %i.d, align 8, !tbaa !19
  %.not37.i = icmp eq ptr %.0217, null
  br i1 %.not37.i, label %bb.cz, label %bb.cx

bb.cx:                                            ; preds = %_upb_Decoder_RecurseSubMessage.exit.i50
  %i.ue = getelementptr inbounds nuw i8, ptr %i.sz, i64 15
  %i.uf = load i8, ptr %i.ue, align 1, !tbaa !22
  %.not38.i = icmp eq i8 %i.uf, 0
  br i1 %.not38.i, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ug = call ptr @_upb_Decoder_CheckRequired(ptr noundef nonnull %0, ptr noundef %i.tv, ptr noundef nonnull %.0217, ptr noundef nonnull %i.sz) #12, !inline_history !60 ; 0 uses
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx, %_upb_Decoder_RecurseSubMessage.exit.i50
  %.val40.i = load i64, ptr %4, align 8, !tbaa !22
  %i.uh = and i64 %.val40.i, -2                   ; 2 uses
  %.not.i.i101 = icmp eq i64 %i.uh, 0
  br i1 %.not.i.i101, label %.loopexit, label %.critedge.preheader.i.i

.critedge.preheader.i.i:                          ; preds = %bb.cz
  %i.ui = inttoptr i64 %i.uh to ptr               ; 2 uses
  %i.uj = load i32, ptr %i.ui, align 8, !tbaa !3  ; 2 uses
  %i.uk = zext i32 %i.uj to i64
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ui, i64 8
  %exitcond.not.i.not.i562 = icmp eq i32 %i.uj, 0
  br i1 %exitcond.not.i.not.i562, label %.loopexit, label %.lr.ph

.critedge.i.i:                                    ; preds = %.lr.ph
  %i.um = add nuw nsw i64 %.017.i.i563, 1         ; 2 uses
  %exitcond.not.i.not.i = icmp eq i64 %i.um, %i.uk
  br i1 %exitcond.not.i.not.i, label %.loopexit, label %.lr.ph, !llvm.loop !61

.lr.ph:                                           ; preds = %.critedge.preheader.i.i, %.critedge.i.i
  %.017.i.i563 = phi i64 [ %i.um, %.critedge.i.i ], [ 0, %.critedge.preheader.i.i ] ; 2 uses
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.ul, i64 %.017.i.i563
  %.sroa.0.0.copyload.i.i102 = load i64, ptr %i.un, align 8, !tbaa !32 ; 2 uses
  %i.uo = icmp ne i64 %.sroa.0.0.copyload.i.i102, 0
  %i.up = and i64 %.sroa.0.0.copyload.i.i102, 1
  %i.uq = icmp eq i64 %i.up, 0
  %i.ur = and i1 %i.uo, %i.uq
  br i1 %i.ur, label %upb_Message_HasUnknown.exit, label %.critedge.i.i, !llvm.loop !61

upb_Message_HasUnknown.exit:                      ; preds = %.lr.ph
  call fastcc void @_upb_Decoder_AddMapEntryUnknown(ptr noundef nonnull %0, ptr noundef %.029.i, ptr noundef %.0.i27, ptr noundef %4, ptr noundef nonnull %i.rp), !inline_history !60
  br label %_upb_Decoder_DecodeToMap.exit

.loopexit:                                        ; preds = %.critedge.i.i, %.critedge.preheader.i.i, %bb.cz
  %i.us = load i8, ptr %.0.i48, align 8, !tbaa !62 ; 2 uses
  %i.ut = sext i8 %i.us to i64                    ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %.0.i48, i64 1
  %i.uv = load i8, ptr %i.uu, align 1, !tbaa !64  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  store i64 0, ptr %.sroa.0.i, align 8
  %i.uw = icmp eq i8 %i.uv, 0
  br i1 %i.uw, label %bb.da, label %bb.dc

bb.da:                                            ; preds = %.loopexit
  %.val.i.i.i97 = load ptr, ptr %i.p, align 8, !tbaa !46 ; 4 uses
  %.val11.i.i.i98 = load ptr, ptr %i.r, align 8, !tbaa !48
  %i.ux = ptrtoint ptr %.val11.i.i.i98 to i64
  %i.uy = ptrtoint ptr %.val.i.i.i97 to i64       ; 2 uses
  %i.uz = sub i64 %i.ux, %i.uy
  %i.va = icmp ult i64 %i.uz, 16
  br i1 %i.va, label %upb_Arena_Malloc.exit.i.i99, label %bb.db, !prof !38

upb_Arena_Malloc.exit.i.i99:                      ; preds = %bb.da
  %i.vb = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.p, i64 noundef 16) #12 ; 3 uses
  %.not.i.i100 = icmp eq ptr %i.vb, null
  br i1 %.not.i.i100, label %_upb_Map_Insert.exit.thread, label %.thread19.i.i

.thread19.i.i:                                    ; preds = %upb_Arena_Malloc.exit.i.i99
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vb, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.t, i64 16, i1 false), !tbaa.struct !65
  %i.vc = ptrtoint ptr %i.vb to i64
  store i64 %i.vc, ptr %.sroa.0.i, align 8, !tbaa !32
  br label %bb.dd

bb.db:                                            ; preds = %bb.da
  %i.vd = getelementptr inbounds nuw i8, ptr %.val.i.i.i97, i64 16
  store ptr %i.vd, ptr %i.p, align 8, !tbaa !46
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i97) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i.i97, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.t, i64 16, i1 false), !tbaa.struct !65
  store i64 %i.uy, ptr %.sroa.0.i, align 8, !tbaa !32
  br label %bb.dd

bb.dc:                                            ; preds = %.loopexit
  %i.ve = sext i8 %i.uv to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.i, ptr nonnull readonly align 8 %i.t, i64 range(i64 -128, 128) %i.ve, i1 false)
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db, %.thread19.i.i
  %i.vf = getelementptr inbounds nuw i8, ptr %.0.i48, i64 3
  %i.vg = load i8, ptr %i.vf, align 1, !tbaa !66, !range !67, !noundef !68
  %i.vh = trunc nuw i8 %i.vg to i1
  %i.vi = getelementptr inbounds nuw i8, ptr %.0.i48, i64 8 ; 4 uses
  br i1 %i.vh, label %_upb_map_tokey.exit.i, label %bb.de

_upb_map_tokey.exit.i:                            ; preds = %bb.dd
  %i.vj = icmp eq i8 %i.us, 0                     ; 2 uses
  %.sroa.0.0.copyload.i.i96 = load ptr, ptr %i.u, align 8
  %.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.3.0..0..sroa_idx.i.i, align 8
  %.sroa.0.0.copyload.pn.i.i = select i1 %i.vj, ptr %.sroa.0.0.copyload.i.i96, ptr %i.u ; 2 uses
  %.sroa.3.0.copyload.pn.i.i = select i1 %i.vj, i64 %.sroa.3.0.copyload.i.i, i64 %i.ut ; 2 uses
  %i.vk = call zeroext i1 @upb_strtable_remove2(ptr noundef nonnull %i.vi, ptr noundef %.sroa.0.0.copyload.pn.i.i, i64 noundef %.sroa.3.0.copyload.pn.i.i, ptr noundef null) #12 ; 0 uses
  %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..i = load i64, ptr %.sroa.0.i, align 8
  %i.vl = call zeroext i1 @upb_strtable_insert(ptr noundef nonnull %i.vi, ptr noundef %.sroa.0.0.copyload.pn.i.i, i64 noundef %.sroa.3.0.copyload.pn.i.i, i64 %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..i, ptr noundef nonnull %i.p) #12
  br i1 %i.vl, label %_upb_Map_Insert.exit, label %_upb_Map_Insert.exit.thread

bb.de:                                            ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull readonly align 8 %i.u, i64 range(i64 -128, 128) %i.ut, i1 false)
  %.0..0..0..0..0..0..0..0..i.i = load i64, ptr %i.a, align 8, !tbaa !32 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.vm = call zeroext i1 @upb_inttable_remove(ptr noundef nonnull %i.vi, i64 noundef %.0..0..0..0..0..0..0..0..i.i, ptr noundef null) #12 ; 0 uses
  %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0.25.i = load i64, ptr %.sroa.0.i, align 8
  %i.vn = call zeroext i1 @upb_inttable_insert(ptr noundef nonnull %i.vi, i64 noundef %.0..0..0..0..0..0..0..0..i.i, i64 %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0.25.i, ptr noundef nonnull %i.p) #12
  br i1 %i.vn, label %_upb_Map_Insert.exit, label %_upb_Map_Insert.exit.thread

_upb_Map_Insert.exit.thread:                      ; preds = %bb.de, %_upb_map_tokey.exit.i, %upb_Arena_Malloc.exit.i.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %i.vo = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.vo, i32 noundef 1) #13, !inline_history !60
  unreachable

_upb_Map_Insert.exit:                             ; preds = %_upb_map_tokey.exit.i, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %_upb_Decoder_DecodeToMap.exit

_upb_Decoder_DecodeToMap.exit:                    ; preds = %_upb_Map_Insert.exit, %upb_Message_HasUnknown.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %_upb_Decoder_DecodeField.exit

bb.df:                                            ; preds = %bb.an
  %i.vp = getelementptr inbounds nuw i8, ptr %.0.i27, i64 10
  %i.vq = load i8, ptr %i.vp, align 2, !tbaa !33
  %i.vr = getelementptr i8, ptr %.0.i27, i64 6
  %.val.i52 = load i16, ptr %i.vr, align 2, !tbaa !69 ; 5 uses
  %i.vs = icmp sgt i16 %.val.i52, 0
  br i1 %i.vs, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.vt = lshr i16 %.val.i52, 3
  %i.vu = trunc i16 %.val.i52 to i8
  %i.vv = and i8 %i.vu, 7
  %i.vw = shl nuw i8 1, %i.vv
  %i.vx = zext nneg i16 %i.vt to i64
  %i.vy = getelementptr inbounds nuw i8, ptr %.029.i, i64 %i.vx ; 2 uses
  %i.vz = load i8, ptr %i.vy, align 1, !tbaa !22
  %i.wa = or i8 %i.vz, %i.vw
  store i8 %i.wa, ptr %i.vy, align 1, !tbaa !22
  br label %bb.dm

bb.dh:                                            ; preds = %bb.df
  %i.wb = icmp slt i16 %.val.i52, 0
  br i1 %i.wb, label %bb.di, label %bb.dm

bb.di:                                            ; preds = %bb.dh
  %i.wc = xor i16 %.val.i52, -1
  %i.wd = zext nneg i16 %i.wc to i64
  %i.we = getelementptr inbounds nuw i8, ptr %.029.i, i64 %i.wd ; 2 uses
  %i.wf = icmp eq i32 %.4250, 6
  %.pre307 = load i32, ptr %.0.i27, align 4, !tbaa !27 ; 3 uses
  br i1 %i.wf, label %bb.dj, label %bb.dl

bb.dj:                                            ; preds = %bb.di
  %i.wg = load i32, ptr %i.we, align 4, !tbaa !3
  %.not.i57 = icmp eq i32 %i.wg, %.pre307
  br i1 %.not.i57, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  store i64 0, ptr %i.gz, align 1
  %.pre = load i32, ptr %.0.i27, align 4, !tbaa !27
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj, %bb.di
  %i.wh = phi i32 [ %.pre, %bb.dk ], [ %.pre307, %bb.dj ], [ %.pre307, %bb.di ]
  store i32 %i.wh, ptr %i.we, align 4, !tbaa !3
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dh, %bb.dg
  switch i32 %.4250, label %bb.em [
    i32 6, label %bb.dn
    i32 4, label %bb.eb
    i32 5, label %bb.ec
    i32 3, label %bb.ej
    i32 2, label %bb.ek
    i32 0, label %bb.el
  ]

bb.dn:                                            ; preds = %bb.dm
  %i.wi = load ptr, ptr %i.gz, align 8, !tbaa !55 ; 2 uses
  %.not50.i = icmp eq ptr %i.wi, null
  br i1 %.not50.i, label %bb.do, label %bb.dq

bb.do:                                            ; preds = %bb.dn
  %i.wj = getelementptr inbounds nuw i8, ptr %.0.i27, i64 8
  %i.wk = load i16, ptr %i.wj, align 4, !tbaa !34
  %i.wl = zext i16 %i.wk to i64
  %i.wm = shl nuw nsw i64 %i.wl, 2
  %i.wn = getelementptr inbounds nuw i8, ptr %.0.i27, i64 %i.wm
  %i.wo = load ptr, ptr %i.wn, align 8, !tbaa !22
  %i.wp = getelementptr i8, ptr %i.wo, i64 8
  %.val.i131 = load i16, ptr %i.wp, align 8, !tbaa !24
  %i.wq = zext i16 %.val.i131 to i64              ; 5 uses
  %i.wr = and i64 %i.wq, 7
  %i.ws = icmp eq i64 %i.wr, 0
  call void @llvm.assume(i1 %i.ws)
  %.val.i.i.i.i132 = load ptr, ptr %i.p, align 8, !tbaa !46 ; 4 uses
  %.val11.i.i.i.i133 = load ptr, ptr %i.r, align 8, !tbaa !48
  %i.wt = ptrtoint ptr %.val11.i.i.i.i133 to i64
  %i.wu = ptrtoint ptr %.val.i.i.i.i132 to i64
  %i.wv = sub i64 %i.wt, %i.wu
  %i.ww = icmp ult i64 %i.wv, %i.wq
  br i1 %i.ww, label %upb_Arena_Malloc.exit.i.i.i136, label %upb_Arena_Malloc.exit.thread.i.i.i134, !prof !38

upb_Arena_Malloc.exit.thread.i.i.i134:            ; preds = %bb.do
  %i.wx = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i132, i64 %i.wq
  store ptr %i.wx, ptr %i.p, align 8, !tbaa !46
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i132) ]
  br label %_upb_Decoder_NewSubMessage.exit138

upb_Arena_Malloc.exit.i.i.i136:                   ; preds = %bb.do
  %i.wy = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.p, i64 noundef %i.wq) #12 ; 2 uses
  %.not.i.i.i137 = icmp eq ptr %i.wy, null
  br i1 %.not.i.i.i137, label %bb.dp, label %_upb_Decoder_NewSubMessage.exit138, !prof !54

bb.dp:                                            ; preds = %upb_Arena_Malloc.exit.i.i.i136
  %i.wz = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.wz, i32 noundef 1) #13
  unreachable

_upb_Decoder_NewSubMessage.exit138:               ; preds = %upb_Arena_Malloc.exit.thread.i.i.i134, %upb_Arena_Malloc.exit.i.i.i136
  %.0.i3.i.i.i135 = phi ptr [ %.val.i.i.i.i132, %upb_Arena_Malloc.exit.thread.i.i.i134 ], [ %i.wy, %upb_Arena_Malloc.exit.i.i.i136 ] ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i3.i.i.i135, i8 0, i64 %i.wq, i1 false)
  store ptr %.0.i3.i.i.i135, ptr %i.gz, align 8, !tbaa !55
  br label %bb.dq

bb.dq:                                            ; preds = %_upb_Decoder_NewSubMessage.exit138, %bb.dn
  %.0.i53 = phi ptr [ %i.wi, %bb.dn ], [ %.0.i3.i.i.i135, %_upb_Decoder_NewSubMessage.exit138 ] ; 2 uses
  %i.xa = icmp eq i8 %i.vq, 10
  br i1 %i.xa, label %bb.dr, label %bb.dw, !prof !38

bb.dr:                                            ; preds = %bb.dq
  %i.xb = getelementptr inbounds nuw i8, ptr %.0.i27, i64 8
  %i.xc = load i16, ptr %i.xb, align 4, !tbaa !34
  %i.xd = zext i16 %i.xc to i64
  %i.xe = shl nuw nsw i64 %i.xd, 2
  %i.xf = getelementptr inbounds nuw i8, ptr %.0.i27, i64 %i.xe
  %i.xg = load ptr, ptr %i.xf, align 8, !tbaa !22
  %i.xh = load i32, ptr %.0.i27, align 4, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.1.i251, ptr %i.b, align 8, !tbaa !53
  %i.xi = call fastcc zeroext i1 @upb_EpsCopyInputStream_IsDone(ptr noundef nonnull %0, ptr noundef %i.b), !inline_history !70
  br i1 %i.xi, label %bb.ds, label %_upb_Decoder_DecodeGroup.exit.i54

bb.ds:                                            ; preds = %bb.dr
  %i.xj = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.xj, i32 noundef 2) #13, !inline_history !70
  unreachable

_upb_Decoder_DecodeGroup.exit.i54:                ; preds = %bb.dr
  %i.xk = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.xl = load i32, ptr %i.n, align 8, !tbaa !56  ; 2 uses
  %i.xm = add nsw i32 %i.xl, -1
  store i32 %i.xm, ptr %i.n, align 8, !tbaa !56
  %i.xn = icmp slt i32 %i.xl, 1
  br i1 %i.xn, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %_upb_Decoder_DecodeGroup.exit.i54
  %i.xo = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.xo, i32 noundef 4) #13, !inline_history !70
  unreachable

bb.du:                                            ; preds = %_upb_Decoder_DecodeGroup.exit.i54
  %i.xp = call ptr @_upb_Decoder_DecodeMessage(ptr noundef nonnull %0, ptr noundef %i.xk, ptr noundef nonnull %.0.i53, ptr noundef %i.xg), !inline_history !70
  %i.xq = load i32, ptr %i.n, align 8, !tbaa !56
  %i.xr = add nsw i32 %i.xq, 1
  store i32 %i.xr, ptr %i.n, align 8, !tbaa !56
  %i.xs = load i32, ptr %i.s, align 4, !tbaa !23
  %.not.i.i55 = icmp eq i32 %i.xs, %i.xh
  br i1 %.not.i.i55, label %_upb_Decoder_RecurseSubMessage.exit.i56, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.xt = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.xt, i32 noundef 2) #13, !inline_history !70
  unreachable

_upb_Decoder_RecurseSubMessage.exit.i56:          ; preds = %bb.du
  store i32 -1, ptr %i.s, align 4, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_upb_Decoder_DecodeField.exit

bb.dw:                                            ; preds = %bb.dq
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.178 = load i32, ptr %.sroa.0, align 8, !tbaa !22
  %i.xu = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.178 to i64
  %i.xv = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.xw = ptrtoint ptr %.1.i251 to i64
  %i.xx = ptrtoint ptr %i.xv to i64
  %i.xy = sub i64 %i.xw, %i.xx
  %i.xz = add nsw i64 %i.xy, %i.xu                ; 3 uses
  %i.ya = load i64, ptr %i.e, align 8, !tbaa !21
  %i.yb = sub nsw i64 %i.ya, %i.xz                ; 2 uses
  store i64 %i.xz, ptr %i.e, align 8, !tbaa !21
  %i.yc = call i64 @llvm.smin.i64(i64 %i.xz, i64 0)
  %i.yd = getelementptr inbounds i8, ptr %i.xv, i64 %i.yc
  store ptr %i.yd, ptr %i.d, align 8, !tbaa !19
  %i.ye = icmp slt i64 %i.yb, 0
  br i1 %i.ye, label %bb.dx, label %upb_EpsCopyInputStream_PushLimit.exit129, !prof !38

bb.dx:                                            ; preds = %bb.dw
  %i.yf = call ptr @upb_EpsCopyInputStream_ReturnError_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %0) #12 ; 0 uses
  br label %upb_EpsCopyInputStream_PushLimit.exit129

upb_EpsCopyInputStream_PushLimit.exit129:         ; preds = %bb.dw, %bb.dx
  %i.yg = getelementptr inbounds nuw i8, ptr %.0.i27, i64 8
  %i.yh = load i16, ptr %i.yg, align 4, !tbaa !34
  %i.yi = zext i16 %i.yh to i64
  %i.yj = shl nuw nsw i64 %i.yi, 2
  %i.yk = getelementptr inbounds nuw i8, ptr %.0.i27, i64 %i.yj
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !22
  %i.ym = load i32, ptr %i.n, align 8, !tbaa !56  ; 2 uses
  %i.yn = add nsw i32 %i.ym, -1
  store i32 %i.yn, ptr %i.n, align 8, !tbaa !56
  %i.yo = icmp slt i32 %i.ym, 1
  br i1 %i.yo, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %upb_EpsCopyInputStream_PushLimit.exit129
  %i.yp = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.yp, i32 noundef 4) #13, !inline_history !70
  unreachable

bb.dz:                                            ; preds = %upb_EpsCopyInputStream_PushLimit.exit129
  %i.yq = call ptr @_upb_Decoder_DecodeMessage(ptr noundef nonnull %0, ptr noundef %.1.i251, ptr noundef nonnull %.0.i53, ptr noundef %i.yl), !inline_history !70
  %i.yr = load i32, ptr %i.n, align 8, !tbaa !56
  %i.ys = add nsw i32 %i.yr, 1
  store i32 %i.ys, ptr %i.n, align 8, !tbaa !56
  %i.yt = load i32, ptr %i.s, align 4, !tbaa !23
  %.not.i51.i = icmp eq i32 %i.yt, -1
  br i1 %.not.i51.i, label %_upb_Decoder_RecurseSubMessage.exit52.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.yu = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.yu, i32 noundef 2) #13, !inline_history !70
  unreachable

_upb_Decoder_RecurseSubMessage.exit52.i:          ; preds = %bb.dz
  %i.yv = load i64, ptr %i.e, align 8, !tbaa !21
  %i.yw = add nsw i64 %i.yv, %i.yb                ; 2 uses
  store i64 %i.yw, ptr %i.e, align 8, !tbaa !21
  %i.yx = load ptr, ptr %0, align 8, !tbaa !18
  %spec.select.i128 = call i64 @llvm.smin.i64(i64 %i.yw, i64 0)
  %i.yy = getelementptr inbounds i8, ptr %i.yx, i64 %spec.select.i128
  store ptr %i.yy, ptr %i.d, align 8, !tbaa !19
  br label %_upb_Decoder_DecodeField.exit

bb.eb:                                            ; preds = %bb.dm
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.177 = load i32, ptr %.sroa.0, align 8, !tbaa !22
  %i.yz = call fastcc ptr @_upb_Decoder_ReadString2(ptr noundef nonnull %0, ptr noundef %.1.i251, i32 noundef %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.177, ptr noundef %i.gz, i1 noundef zeroext true), !inline_history !70
  br label %_upb_Decoder_DecodeField.exit

bb.ec:                                            ; preds = %bb.dm
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.176 = load i32, ptr %.sroa.0, align 8, !tbaa !22
  %i.za = sext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.176 to i64 ; 5 uses
  %i.zb = load ptr, ptr %0, align 8, !tbaa !18
  %i.zc = load i64, ptr %i.l, align 8, !tbaa !51  ; 2 uses
  %i.zd = icmp eq i64 %i.zc, 0
  %i.ze = select i1 %i.zd, i64 16, i64 0
  %i.zf = getelementptr inbounds nuw i8, ptr %i.zb, i64 %i.ze
  %i.zg = ptrtoint ptr %i.zf to i64
  %i.zh = ptrtoint ptr %.1.i251 to i64            ; 2 uses
  %i.zi = sub i64 %i.zg, %i.zh
  %i.zj = icmp slt i64 %i.zi, %i.za
  br i1 %i.zj, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.zk = call ptr @upb_EpsCopyInputStream_ReturnError_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %0) #12
  br label %upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit.i.i116

bb.ee:                                            ; preds = %bb.ec
  %.val14.i.i.i115 = load ptr, ptr %i.m, align 8, !tbaa !52 ; 2 uses
  %i.zl = ptrtoint ptr %.val14.i.i.i115 to i64
  %i.zm = sub i64 %i.zc, %i.zl
  %i.zn = getelementptr i8, ptr %.val14.i.i.i115, i64 %i.zm
  %i.zo = getelementptr i8, ptr %i.zn, i64 %i.zh
  %i.zp = getelementptr inbounds nuw i8, ptr %.1.i251, i64 %i.za
  br label %upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit.i.i116

upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit.i.i116: ; preds = %bb.ee, %bb.ed
  %.sroa.0.1.i.i117 = phi ptr [ undef, %bb.ed ], [ %i.zo, %bb.ee ] ; 2 uses
  %.0.i.i.i118 = phi ptr [ %i.zk, %bb.ed ], [ %i.zp, %bb.ee ] ; 2 uses
  %i.zq = icmp eq ptr %.0.i.i.i118, null
  br i1 %i.zq, label %bb.ei, label %bb.ef

bb.ef:                                            ; preds = %upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit.i.i116
  %i.zr = load i16, ptr %i.k, align 8, !tbaa !37
  %i.zs = and i16 %i.zr, 1
  %i.zt = icmp eq i16 %i.zs, 0
  br i1 %i.zt, label %bb.eg, label %_upb_Decoder_ReadString2.exit127

bb.eg:                                            ; preds = %bb.ef
  %i.zu = add nsw i64 %i.za, 7
  %i.zv = and i64 %i.zu, -8                       ; 3 uses
  %.val.i.i.i121 = load ptr, ptr %i.p, align 8, !tbaa !46 ; 4 uses
  %.val11.i.i.i122 = load ptr, ptr %i.r, align 8, !tbaa !48
  %i.zw = ptrtoint ptr %.val11.i.i.i122 to i64
  %i.zx = ptrtoint ptr %.val.i.i.i121 to i64
  %i.zy = sub i64 %i.zw, %i.zx
  %i.zz = icmp ult i64 %i.zy, %i.zv
  br i1 %i.zz, label %upb_Arena_Malloc.exit.i.i125, label %upb_Arena_Malloc.exit.thread.i.i123, !prof !38

upb_Arena_Malloc.exit.thread.i.i123:              ; preds = %bb.eg
  %i.aaa = getelementptr inbounds nuw i8, ptr %.val.i.i.i121, i64 %i.zv
  store ptr %i.aaa, ptr %i.p, align 8, !tbaa !46
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i121) ]
  br label %bb.eh

upb_Arena_Malloc.exit.i.i125:                     ; preds = %bb.eg
  %i.aab = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.p, i64 noundef %i.zv) #12 ; 2 uses
  %.not15.not.i.i126 = icmp eq ptr %i.aab, null
  br i1 %.not15.not.i.i126, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %upb_Arena_Malloc.exit.i.i125, %upb_Arena_Malloc.exit.thread.i.i123
  %.0.i1622.i.i124 = phi ptr [ %.val.i.i.i121, %upb_Arena_Malloc.exit.thread.i.i123 ], [ %i.aab, %upb_Arena_Malloc.exit.i.i125 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i1622.i.i124, ptr align 1 %.sroa.0.1.i.i117, i64 range(i64 -2147483648, 2147483648) %i.za, i1 false)
  br label %_upb_Decoder_ReadString2.exit127

bb.ei:                                            ; preds = %upb_Arena_Malloc.exit.i.i125, %upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit.i.i116
  %i.aac = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.aac, i32 noundef 1) #13
  unreachable

_upb_Decoder_ReadString2.exit127:                 ; preds = %bb.ef, %bb.eh
  %.sroa.0.0.i.i119 = phi ptr [ %.0.i1622.i.i124, %bb.eh ], [ %.sroa.0.1.i.i117, %bb.ef ]
  store ptr %.sroa.0.0.i.i119, ptr %i.gz, align 8, !tbaa !53
  %.sroa.7.0..sroa_idx.i.i120 = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store i64 %i.za, ptr %.sroa.7.0..sroa_idx.i.i120, align 8, !tbaa !32
  br label %_upb_Decoder_DecodeField.exit

bb.ej:                                            ; preds = %bb.dm
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.185 = load i64, ptr %.sroa.0, align 8
  store i64 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.185, ptr %i.gz, align 1
  br label %_upb_Decoder_DecodeField.exit

bb.ek:                                            ; preds = %bb.dm
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.175 = load i32, ptr %.sroa.0, align 8
  store i32 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.175, ptr %i.gz, align 1
  br label %_upb_Decoder_DecodeField.exit

bb.el:                                            ; preds = %bb.dm
  store i8 %.sroa.0.0..sroa.0.0..sroa.0.0.179, ptr %i.gz, align 1
  br label %_upb_Decoder_DecodeField.exit

bb.em:                                            ; preds = %bb.dm
  unreachable

.unreachabledefault.i:                            ; preds = %bb.an
  unreachable

_upb_Decoder_DecodeWireValue.exit.thread:         ; preds = %_upb_Decoder_DecodeWireValue.exit
  %i.aad = icmp eq i8 %.4.in, -1
  br i1 %i.aad, label %_upb_Decoder_DecodeWireValue.exit.thread.thread, label %_upb_Decoder_DecodeWireValue.exit.thread.thread285.preheader

_upb_Decoder_DecodeWireValue.exit.thread.thread285.preheader: ; preds = %bb.ag, %_upb_Decoder_DecodeWireValue.exit.thread
  %.0209.ph = phi ptr [ %.0.i16, %bb.ag ], [ %.1.i, %_upb_Decoder_DecodeWireValue.exit.thread ]
  br label %_upb_Decoder_DecodeWireValue.exit.thread.thread285

_upb_Decoder_DecodeWireValue.exit.thread.thread:  ; preds = %bb.t, %bb.ag, %bb.ac, %bb.s, %upb_MiniTableEnum_CheckValue.exit, %bb.q, %bb.ai, %bb.x, %bb.y, %_upb_Decoder_DecodeWireValue.exit.thread
  %.1.i243283 = phi ptr [ %.1.i, %_upb_Decoder_DecodeWireValue.exit.thread ], [ %.0.i21, %bb.ac ], [ %.0.i19, %bb.s ], [ %.0.i16, %bb.ag ], [ %i.eq, %bb.y ], [ %.0.i19, %upb_MiniTableEnum_CheckValue.exit ], [ %.0.i19, %bb.q ], [ %.0.i16, %bb.ai ], [ %i.ei, %bb.x ], [ %.0.i19, %bb.t ] ; 8 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.180 = load i64, ptr %.sroa.0, align 8
  %i.aae = icmp eq i32 %i.ap, 0
  br i1 %i.aae, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %_upb_Decoder_DecodeWireValue.exit.thread.thread
  %i.aaf = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.aaf, i32 noundef 2) #13
  unreachable

bb.eo:                                            ; preds = %_upb_Decoder_DecodeWireValue.exit.thread.thread
  switch i32 %i.aq, label %.loopexit.i.i.preheader [
    i32 0, label %bb.ep
    i32 2, label %bb.ep
    i32 5, label %bb.er
    i32 1, label %bb.es
  ]

bb.ep:                                            ; preds = %bb.eo, %bb.eo
  %i.aag = getelementptr inbounds i8, ptr %.1.i243283, i64 -1
  br label %bb.eq

bb.eq:                                            ; preds = %bb.eq, %bb.ep
  %.015.i.i = phi ptr [ %i.aag, %bb.ep ], [ %i.aah, %bb.eq ] ; 2 uses
  %i.aah = getelementptr inbounds i8, ptr %.015.i.i, i64 -1 ; 2 uses
  %i.aai = load i8, ptr %i.aah, align 1, !tbaa !22
  %.not.i.i62 = icmp sgt i8 %i.aai, -1
  br i1 %.not.i.i62, label %.loopexit.i.i.preheader, label %bb.eq, !llvm.loop !71

bb.er:                                            ; preds = %bb.eo
  %i.aaj = getelementptr inbounds i8, ptr %.1.i243283, i64 -4
  br label %.loopexit.i.i.preheader

bb.es:                                            ; preds = %bb.eo
  %i.aak = getelementptr inbounds i8, ptr %.1.i243283, i64 -8
  br label %.loopexit.i.i.preheader

.loopexit.i.i.preheader:                          ; preds = %bb.eq, %bb.es, %bb.er, %bb.eo
  %.2.i.i.ph = phi ptr [ %.1.i243283, %bb.eo ], [ %i.aaj, %bb.er ], [ %i.aak, %bb.es ], [ %.015.i.i, %bb.eq ]
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.preheader, %.loopexit.i.i
  %.2.i.i = phi ptr [ %i.aal, %.loopexit.i.i ], [ %.2.i.i.ph, %.loopexit.i.i.preheader ]
  %.0.i.i59 = phi i32 [ %i.aaq, %.loopexit.i.i ], [ 0, %.loopexit.i.i.preheader ]
  %i.aal = getelementptr inbounds i8, ptr %.2.i.i, i64 -1 ; 3 uses
  %i.aam = shl i32 %.0.i.i59, 7
  %i.aan = load i8, ptr %i.aal, align 1, !tbaa !22
  %i.aao = and i8 %i.aan, 127
  %i.aap = zext nneg i8 %i.aao to i32
  %i.aaq = or disjoint i32 %i.aam, %i.aap         ; 2 uses
  %.not16.i.i = icmp eq i32 %i.aaq, %.0210
  br i1 %.not16.i.i, label %_upb_Decoder_FindFieldStart.exit.i, label %.loopexit.i.i, !llvm.loop !72

_upb_Decoder_FindFieldStart.exit.i:               ; preds = %.loopexit.i.i
  %.val.i.i = load i64, ptr %i.l, align 8, !tbaa !51
  %.val3.i.i = load ptr, ptr %i.m, align 8, !tbaa !52 ; 2 uses
  %i.aar = ptrtoint ptr %i.aal to i64
  %i.aas = ptrtoint ptr %.val3.i.i to i64
  %i.aat = sub i64 %.val.i.i, %i.aas
  %i.aau = getelementptr i8, ptr %.val3.i.i, i64 %i.aat
  %i.aav = getelementptr i8, ptr %i.aau, i64 %i.aar
  store ptr %i.aav, ptr %i.o, align 8, !tbaa !73
  switch i32 %i.aq, label %bb.ey [
    i32 2, label %bb.et
    i32 3, label %bb.ex
  ]

bb.et:                                            ; preds = %_upb_Decoder_FindFieldStart.exit.i
  %i.aaw = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.180, 4294967295 ; 2 uses
  %i.aax = load ptr, ptr %0, align 8, !tbaa !18
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aax, i64 16
  %i.aaz = ptrtoint ptr %i.aay to i64
  %i.aba = ptrtoint ptr %.1.i243283 to i64
  %i.abb = sub i64 %i.aaz, %i.aba
  %i.abc = icmp sgt i64 %i.aaw, %i.abb
  br i1 %i.abc, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.abd = call ptr @upb_EpsCopyInputStream_ReturnError_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %0) #12
  br label %upb_EpsCopyInputStream_ReadStringEphemeral.exit.i

bb.ev:                                            ; preds = %bb.et
  %i.abe = getelementptr inbounds nuw i8, ptr %.1.i243283, i64 %i.aaw
  br label %upb_EpsCopyInputStream_ReadStringEphemeral.exit.i

upb_EpsCopyInputStream_ReadStringEphemeral.exit.i: ; preds = %bb.ev, %bb.eu
  %.0.i32.i = phi ptr [ %i.abd, %bb.eu ], [ %i.abe, %bb.ev ] ; 2 uses
  %.not.i61 = icmp eq ptr %.0.i32.i, null
  br i1 %.not.i61, label %bb.ew, label %bb.ey

bb.ew:                                            ; preds = %upb_EpsCopyInputStream_ReadStringEphemeral.exit.i
  %i.abf = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.abf, i32 noundef 2) #13
  unreachable

bb.ex:                                            ; preds = %_upb_Decoder_FindFieldStart.exit.i
  %i.abg = and i32 %.0210, -8
  %i.abh = load i32, ptr %i.n, align 8, !tbaa !56
  %i.abi = call ptr @_upb_WireReader_SkipGroup_dont_copy_me__upb_internal_use_only(ptr noundef %.1.i243283, i32 noundef %i.abg, i32 noundef %i.abh, ptr noundef nonnull %0) #12
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %upb_EpsCopyInputStream_ReadStringEphemeral.exit.i, %_upb_Decoder_FindFieldStart.exit.i
  %.026.i = phi ptr [ %.1.i243283, %_upb_Decoder_FindFieldStart.exit.i ], [ %i.abi, %bb.ex ], [ %.0.i32.i, %upb_EpsCopyInputStream_ReadStringEphemeral.exit.i ] ; 3 uses
  %i.abj = load ptr, ptr %0, align 8, !tbaa !18
  %i.abk = ptrtoint ptr %.026.i to i64            ; 2 uses
  %i.abl = ptrtoint ptr %i.abj to i64
  %i.abm = sub i64 %i.abk, %i.abl
  %i.abn = load i64, ptr %i.e, align 8, !tbaa !21
  %i.abo = icmp sgt i64 %i.abm, %i.abn
  br i1 %i.abo, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %i.abp = call ptr @upb_EpsCopyInputStream_ReturnError_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %0) #12 ; 0 uses
  br label %upb_EpsCopyInputStream_EndCapture.exit.i

bb.fa:                                            ; preds = %bb.ey
  %.val.i33.i = load i64, ptr %i.l, align 8, !tbaa !51
  %.val13.i.i = load ptr, ptr %i.m, align 8, !tbaa !52 ; 2 uses
  %i.abq = ptrtoint ptr %.val13.i.i to i64
  %i.abr = sub i64 %.val.i33.i, %i.abq
  %i.abs = getelementptr i8, ptr %.val13.i.i, i64 %i.abr
  %i.abt = getelementptr i8, ptr %i.abs, i64 %i.abk
  %i.abu = load ptr, ptr %i.o, align 8, !tbaa !73 ; 2 uses
  %i.abv = ptrtoint ptr %i.abt to i64
  %i.abw = ptrtoint ptr %i.abu to i64
  %i.abx = sub i64 %i.abv, %i.abw
  store ptr null, ptr %i.o, align 8, !tbaa !73
  br label %upb_EpsCopyInputStream_EndCapture.exit.i

upb_EpsCopyInputStream_EndCapture.exit.i:         ; preds = %bb.fa, %bb.ez
  %.sroa.5.0.i = phi i64 [ undef, %bb.ez ], [ %i.abx, %bb.fa ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ undef, %bb.ez ], [ %i.abu, %bb.fa ] ; 3 uses
  %i.aby = load i16, ptr %i.k, align 8, !tbaa !37
  %.not30.i60 = trunc i16 %i.aby to i1            ; 2 uses
  br i1 %.not30.i60, label %bb.fb, label %_upb_Message_AddUnknown_dont_copy_me__upb_internal_use_only.exit.i

bb.fb:                                            ; preds = %upb_EpsCopyInputStream_EndCapture.exit.i
  %i.abz = load ptr, ptr %i.m, align 8, !tbaa !74
  %.not31.i = icmp eq ptr %.sroa.0.0.i, %i.abz
  br i1 %.not31.i, label %_upb_Message_AddUnknown_dont_copy_me__upb_internal_use_only.exit.i, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %.val.i35.i = load i64, ptr %2, align 8, !tbaa !22
  %i.aca = and i64 %.val.i35.i, -2                ; 2 uses
  %i.acb = inttoptr i64 %i.aca to ptr             ; 2 uses
  %.not.i36.i = icmp eq i64 %i.aca, 0
  br i1 %.not.i36.i, label %_upb_Message_AddUnknown_dont_copy_me__upb_internal_use_only.exit.i, label %bb.fd
end_hunk_1
begin_hunk_2_@upb_DecodeLengthPrefixed:bb.a
bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = ptrtoint ptr %i.d to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  store i64 %i.w, ptr %.sink28.i.i.sroa.gep8.i, align 8, !tbaa !51
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.i ; 2 uses
  store ptr %i.x, ptr %8, align 8, !tbaa !18
  br label %upb_Decode.exit

bb.h:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.i
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -16 ; 2 uses
  store ptr %i.z, ptr %8, align 8, !tbaa !18
  store i64 16, ptr %.sink28.i.i.sroa.gep.i, align 8, !tbaa !21
  br label %upb_Decode.exit

upb_Decode.exit:                                  ; preds = %bb.g, %bb.h
  %.0.i.i = phi ptr [ %i.t, %bb.g ], [ %i.d, %bb.h ]
  %.sink28.i.i.sroa.phi.i = phi ptr [ %.sink28.i.i.sroa.gep.i, %bb.g ], [ %.sink28.i.i.sroa.gep8.i, %bb.h ]
  %i.aa = phi ptr [ %i.x, %bb.g ], [ %i.z, %bb.h ]
  store i64 0, ptr %.sink28.i.i.sroa.phi.i, align 8, !tbaa !32
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 56
  store i8 0, ptr %i.ac, align 8, !tbaa !84
  %i.ad = shl i32 %6, 1
  %i.ae = and i32 %i.ad, 16
  %spec.select.i.i = or i32 %i.ae, %6
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 96
  store ptr %5, ptr %i.af, align 8, !tbaa !7
  %i.ag = lshr i32 %6, 16                         ; 2 uses
  %.not.i20.i.i = icmp eq i32 %i.ag, 0
  %i.ah = select i1 %.not.i20.i.i, i32 100, i32 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 112
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !56
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 116
  store i32 -1, ptr %i.aj, align 4, !tbaa !23
  %i.ak = trunc i32 %spec.select.i.i to i16
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 120
  store i16 %i.ak, ptr %i.al, align 8, !tbaa !37
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 122
  store i8 0, ptr %i.am, align 2, !tbaa !85
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 123
  store i8 0, ptr %i.an, align 1, !tbaa !80
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 128
  call void @_upb_Arena_SwapIn_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.ao, ptr noundef %7) #12, !inline_history !88
  %i.ap = call fastcc i32 @upb_Decoder_Decode(ptr noundef %8, ptr noundef nonnull %.0.i.i, ptr noundef %2, ptr noundef %4, ptr noundef %7), !inline_history !88
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.c, %upb_Decode.exit
  %.1 = phi i32 [ %i.ap, %upb_Decode.exit ], [ 2, %bb.c ], [ 2, %bb.a ], [ 2, %bb.b ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @upb_DecodeStatus_String(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ult i32 %0, 6
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.upb_DecodeStatus_String, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.6, %bb.a ]
  ret ptr %.0
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i1 @upb_EpsCopyInputStream_IsDone(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !53     ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !18
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = trunc i64 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.i = icmp ult ptr %i.a, %i.h
  br i1 %i.i, label %bb.c, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  %sext.i = shl i64 %i.e, 32
  %i.j = ashr exact i64 %sext.i, 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !21
  %i.m = icmp eq i64 %i.j, %i.l
  br i1 %i.m, label %bb.c, label %upb_EpsCopyInputStream_IsDoneStatus_dont_copy_me__upb_internal_use_only.exit, !prof !20

upb_EpsCopyInputStream_IsDoneStatus_dont_copy_me__upb_internal_use_only.exit: ; preds = %bb.b
  %i.n = tail call ptr @upb_EpsCopyInputStream_IsDoneFallback_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %0, ptr noundef %i.a, i32 noundef %i.f) #12 ; 2 uses
  store ptr %i.n, ptr %1, align 8, !tbaa !53
  %.not = icmp eq ptr %i.n, null
  br label %bb.c

bb.c:                                             ; preds = %upb_EpsCopyInputStream_IsDoneStatus_dont_copy_me__upb_internal_use_only.exit, %bb.a, %bb.b
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %.not, %upb_EpsCopyInputStream_IsDoneStatus_dont_copy_me__upb_internal_use_only.exit ]
  ret i1 %.0
}

declare ptr @upb_EpsCopyInputStream_IsDoneFallback_dont_copy_me__upb_internal_use_only(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare { ptr, i64 } @_upb_WireReader_ReadLongTag_dont_copy_me__upb_internal_use_only(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint noreturn nounwind uwtable
define internal fastcc void @upb_ErrorHandler_ThrowError(ptr noundef initializes((0, 4)) %0, i32 noundef range(i32 1, 0) %1) unnamed_addr #6 {
bb.a:
  store i32 %1, ptr %0, align 8, !tbaa !82
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @siglongjmp(ptr noundef nonnull %i.a, i32 noundef 1) #15
  unreachable
}

declare { ptr, i64 } @_upb_WireReader_ReadLongVarint_dont_copy_me__upb_internal_use_only(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare { ptr, i64 } @_upb_WireReader_ReadLongSize_dont_copy_me__upb_internal_use_only(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @siglongjmp(ptr noundef, i32 noundef) local_unnamed_addr #7

declare ptr @_upb_Message_GetOrCreateExtension_dont_copy_me__upb_internal_use_only(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc nonnull ptr @_upb_Decoder_ReadString2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, i1 noundef zeroext %4) unnamed_addr #4 {
bb.a:
  %i.a = sext i32 %2 to i64                       ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !51   ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  %i.f = select i1 %i.e, i64 16, i64 0
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.f
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp slt i64 %i.j, %i.a
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = tail call ptr @upb_EpsCopyInputStream_ReturnError_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %0) #12
  br label %upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit.i

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %0, i64 24
  %.val14.i.i = load ptr, ptr %i.m, align 8, !tbaa !52 ; 2 uses
  %i.n = ptrtoint ptr %.val14.i.i to i64
  %i.o = sub i64 %i.d, %i.n
  %i.p = getelementptr i8, ptr %.val14.i.i, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 %i.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.a
  br label %upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit.i

upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.0.1.i = phi ptr [ undef, %bb.b ], [ %i.q, %bb.c ] ; 3 uses
  %.0.i.i = phi ptr [ %i.l, %bb.b ], [ %i.r, %bb.c ] ; 2 uses
  %i.s = icmp eq ptr %.0.i.i, null
  br i1 %i.s, label %bb.j, label %bb.d

bb.d:                                             ; preds = %upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit.i
  br i1 %4, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.t = tail call i32 @utf8_range_IsValid(ptr noundef %.sroa.0.1.i, i64 noundef range(i64 -2147483648, 2147483648) %i.a) #12
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.u, i32 noundef 3) #13
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.w = load i16, ptr %i.v, align 8, !tbaa !37
  %i.x = and i16 %i.w, 1
  %i.y = icmp eq i16 %i.x, 0
  br i1 %i.y, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.aa = add nsw i64 %i.a, 7
  %i.ab = and i64 %i.aa, -8                       ; 3 uses
  %.val.i.i = load ptr, ptr %i.z, align 8, !tbaa !46 ; 4 uses
  %i.ac = getelementptr i8, ptr %0, i64 136
  %.val11.i.i = load ptr, ptr %i.ac, align 8, !tbaa !48
  %i.ad = ptrtoint ptr %.val11.i.i to i64
  %i.ae = ptrtoint ptr %.val.i.i to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = icmp ult i64 %i.af, %i.ab
  br i1 %i.ag, label %upb_Arena_Malloc.exit.i, label %upb_Arena_Malloc.exit.thread.i, !prof !38

upb_Arena_Malloc.exit.thread.i:                   ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ab
  store ptr %i.ah, ptr %i.z, align 8, !tbaa !46
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  br label %bb.i

upb_Arena_Malloc.exit.i:                          ; preds = %bb.h
  %i.ai = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.z, i64 noundef %i.ab) #12 ; 2 uses
  %.not15.not.i = icmp eq ptr %i.ai, null
  br i1 %.not15.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %upb_Arena_Malloc.exit.i, %upb_Arena_Malloc.exit.thread.i
  %.0.i1622.i = phi ptr [ %.val.i.i, %upb_Arena_Malloc.exit.thread.i ], [ %i.ai, %upb_Arena_Malloc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i1622.i, ptr align 1 %.sroa.0.1.i, i64 range(i64 -2147483648, 2147483648) %i.a, i1 false)
  br label %bb.k

bb.j:                                             ; preds = %upb_Arena_Malloc.exit.i, %upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.aj, i32 noundef 1) #13
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.g
  %.sroa.0.0.i = phi ptr [ %.0.i1622.i, %bb.i ], [ %.sroa.0.1.i, %bb.g ]
  store ptr %.sroa.0.0.i, ptr %3, align 8, !tbaa !53
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.a, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !32
  ret ptr %.0.i.i
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc ptr @_upb_Decoder_DecodeEnumPacked(ptr noundef initializes((8, 16)) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr nofree noundef readonly captures(none) %4, i32 %.0.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load i16, ptr %i.b, align 4, !tbaa !34
  %i.d = zext i16 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 2
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22   ; 3 uses
  %i.h = zext i32 %.0.val to i64
  %i.i = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.j = ptrtoint ptr %1 to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = add nsw i64 %i.l, %i.h                   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !21
  %i.p = sub nsw i64 %i.o, %i.m                   ; 2 uses
  store i64 %i.m, ptr %i.n, align 8, !tbaa !21
  %i.q = tail call i64 @llvm.smin.i64(i64 %i.m, i64 0)
  %i.r = getelementptr inbounds i8, ptr %i.i, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !19
  %i.t = icmp slt i64 %i.p, 0
  br i1 %i.t, label %bb.b, label %upb_EpsCopyInputStream_PushLimit.exit, !prof !38

bb.b:                                             ; preds = %bb.a
  %i.u = tail call ptr @upb_EpsCopyInputStream_ReturnError_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %0) #12 ; 0 uses
  br label %upb_EpsCopyInputStream_PushLimit.exit

upb_EpsCopyInputStream_PushLimit.exit:            ; preds = %bb.a, %bb.b
  %.val21 = load i64, ptr %3, align 8, !tbaa !49
  %i.v = and i64 %.val21, -8
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !45
  %i.z = shl i64 %i.y, 2
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 11
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ah = ptrtoint ptr %i.a to i64
  br label %.outer

.outer:                                           ; preds = %_upb_Decoder_Reserve.exit, %upb_EpsCopyInputStream_PushLimit.exit
  %.017.ph = phi ptr [ %.0.i, %_upb_Decoder_Reserve.exit ], [ %1, %upb_EpsCopyInputStream_PushLimit.exit ]
  %.0.ph = phi ptr [ %i.dd, %_upb_Decoder_Reserve.exit ], [ %i.aa, %upb_EpsCopyInputStream_PushLimit.exit ]
  br label %bb.c

bb.c:                                             ; preds = %.outer, %_upb_Decoder_AddEnumValueToUnknown.exit
  %.017 = phi ptr [ %.0.i, %_upb_Decoder_AddEnumValueToUnknown.exit ], [ %.017.ph, %.outer ] ; 5 uses
  %i.ai = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.aj = ptrtoint ptr %.017 to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 2 uses
  %i.am = trunc i64 %i.al to i32
  %i.an = load ptr, ptr %i.s, align 8, !tbaa !19
  %i.ao = icmp ult ptr %.017, %i.an
  br i1 %i.ao, label %upb_EpsCopyInputStream_IsDone.exit.thread22, label %bb.d, !prof !20

bb.d:                                             ; preds = %bb.c
  %sext.i.i = shl i64 %i.al, 32
  %i.ap = ashr exact i64 %sext.i.i, 32            ; 2 uses
  %i.aq = load i64, ptr %i.n, align 8, !tbaa !21
  %i.ar = icmp eq i64 %i.ap, %i.aq
  br i1 %i.ar, label %upb_EpsCopyInputStream_IsDone.exit.thread, label %upb_EpsCopyInputStream_IsDone.exit, !prof !20

upb_EpsCopyInputStream_IsDone.exit:               ; preds = %bb.d
  %i.as = call ptr @upb_EpsCopyInputStream_IsDoneFallback_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %0, ptr noundef %.017, i32 noundef %i.am) #12 ; 2 uses
  %.not.i22 = icmp eq ptr %i.as, null
  br i1 %.not.i22, label %upb_EpsCopyInputStream_IsDone.exit.upb_EpsCopyInputStream_IsDone.exit.thread_crit_edge, label %upb_EpsCopyInputStream_IsDone.exit.thread22

upb_EpsCopyInputStream_IsDone.exit.upb_EpsCopyInputStream_IsDone.exit.thread_crit_edge: ; preds = %upb_EpsCopyInputStream_IsDone.exit
  %.pre = load i64, ptr %i.n, align 8, !tbaa !21
  %.pre32 = load ptr, ptr %0, align 8, !tbaa !18
  br label %upb_EpsCopyInputStream_IsDone.exit.thread

upb_EpsCopyInputStream_IsDone.exit.thread22:      ; preds = %bb.c, %upb_EpsCopyInputStream_IsDone.exit
  %.11825 = phi ptr [ %i.as, %upb_EpsCopyInputStream_IsDone.exit ], [ %.017, %bb.c ] ; 3 uses
  %i.at = load i8, ptr %.11825, align 1, !tbaa !22 ; 3 uses
  %i.au = icmp sgt i8 %i.at, -1
  br i1 %i.au, label %bb.e, label %upb_EpsCopyInputStream_HasErrorHandler.exit.i, !prof !20

bb.e:                                             ; preds = %upb_EpsCopyInputStream_IsDone.exit.thread22
  %.sroa.0.0.extract.trunc2 = zext nneg i8 %i.at to i32
  %i.av = getelementptr inbounds nuw i8, ptr %.11825, i64 1
  br label %upb_WireReader_ReadVarint.exit

upb_EpsCopyInputStream_HasErrorHandler.exit.i:    ; preds = %upb_EpsCopyInputStream_IsDone.exit.thread22
  %i.aw = zext i8 %i.at to i64
  %i.ax = call { ptr, i64 } @_upb_WireReader_ReadLongVarint_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %.11825, i64 noundef %i.aw, ptr noundef nonnull %0) #12 ; 2 uses
  %i.ay = extractvalue { ptr, i64 } %i.ax, 0
  %i.az = extractvalue { ptr, i64 } %i.ax, 1
  %.sroa.0.0.extract.trunc = trunc i64 %i.az to i32
  br label %upb_WireReader_ReadVarint.exit

upb_WireReader_ReadVarint.exit:                   ; preds = %upb_EpsCopyInputStream_HasErrorHandler.exit.i, %bb.e
  %.sroa.0.0 = phi i32 [ %.sroa.0.0.extract.trunc2, %bb.e ], [ %.sroa.0.0.extract.trunc, %upb_EpsCopyInputStream_HasErrorHandler.exit.i ] ; 8 uses
  %.0.i = phi ptr [ %i.av, %bb.e ], [ %i.ay, %upb_EpsCopyInputStream_HasErrorHandler.exit.i ] ; 2 uses
  %i.ba = icmp ult i32 %.sroa.0.0, 64
  br i1 %i.ba, label %bb.f, label %bb.g, !prof !20

bb.f:                                             ; preds = %upb_WireReader_ReadVarint.exit
  %i.bb = load i64, ptr %i.ab, align 4
  %i.bc = zext nneg i32 %.sroa.0.0 to i64
  %i.bd = shl nuw i64 1, %i.bc
  %i.be = and i64 %i.bb, %i.bd
  %.not29 = icmp eq i64 %i.be, 0
  br i1 %.not29, label %upb_MiniTableEnum_CheckValue.exit.thread, label %upb_MiniTableEnum_CheckValue.exit.thread27

bb.g:                                             ; preds = %upb_WireReader_ReadVarint.exit
  %i.bf = load i32, ptr %i.g, align 4, !tbaa !3   ; 2 uses
  %i.bg = icmp ult i32 %.sroa.0.0, %i.bf
  br i1 %i.bg, label %upb_MiniTableEnum_CheckValue.exit, label %bb.h, !prof !20

bb.h:                                             ; preds = %bb.g
  %i.bh = lshr i32 %i.bf, 5                       ; 3 uses
  %i.bi = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.bj = add i32 %i.bi, %i.bh                    ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.bk
  %.not30.i = icmp ult i32 %i.bh, %i.bj
  br i1 %.not30.i, label %.lr.ph.preheader.i, label %upb_MiniTableEnum_CheckValue.exit.thread

.lr.ph.preheader.i:                               ; preds = %bb.h
  %i.bm = zext nneg i32 %i.bh to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.bm
  br label %.lr.ph.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.02531.i, i64 4 ; 2 uses
  %.not.i24 = icmp ult ptr %i.bo, %i.bl
  br i1 %.not.i24, label %.lr.ph.i, label %upb_MiniTableEnum_CheckValue.exit.thread, !llvm.loop !35

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.preheader.i
  %.02531.i = phi ptr [ %i.bo, %bb.i ], [ %i.bn, %.lr.ph.preheader.i ] ; 2 uses
  %i.bp = load i32, ptr %.02531.i, align 4, !tbaa !3
  %i.bq = icmp eq i32 %i.bp, %.sroa.0.0
  br i1 %i.bq, label %upb_MiniTableEnum_CheckValue.exit.thread27, label %bb.i

upb_MiniTableEnum_CheckValue.exit:                ; preds = %bb.g
  %i.br = lshr i32 %.sroa.0.0, 5
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bv = and i32 %.sroa.0.0, 31
  %i.bw = shl nuw i32 1, %i.bv
  %i.bx = and i32 %i.bu, %i.bw
  %.not = icmp eq i32 %i.bx, 0
  br i1 %.not, label %upb_MiniTableEnum_CheckValue.exit.thread, label %upb_MiniTableEnum_CheckValue.exit.thread27

upb_MiniTableEnum_CheckValue.exit.thread:         ; preds = %bb.i, %bb.h, %bb.f, %upb_MiniTableEnum_CheckValue.exit
  %i.by = load i32, ptr %4, align 4, !tbaa !27
  %i.bz = shl i32 %i.by, 3
  %i.ca = load i8, ptr %i.af, align 1, !tbaa !36
  %i.cb = and i8 %i.ca, 8
  %.not.i = icmp eq i8 %i.cb, 0
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %upb_MiniTableEnum_CheckValue.exit.thread
  %i.cc = load ptr, ptr %i.ag, align 8, !tbaa !39
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %upb_MiniTableEnum_CheckValue.exit.thread
  %i.cd = phi ptr [ %i.cc, %bb.j ], [ %2, %upb_MiniTableEnum_CheckValue.exit.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.08.i = phi i32 [ %i.bz, %bb.k ], [ %i.cg, %bb.l ] ; 2 uses
  %.07.i = phi ptr [ %i.a, %bb.k ], [ %i.ch, %bb.l ] ; 2 uses
end_hunk_2
begin_hunk_3_@_upb_Decoder_DecodeEnumPacked:bb.a
  %i.cu = call zeroext i1 @_upb_Array_Realloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %3, i64 noundef %i.ct, ptr noundef nonnull %i.ae) #12
  br i1 %i.cu, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.cv, i32 noundef 1) #13
  unreachable

bb.p:                                             ; preds = %bb.n
  %.val = load i64, ptr %3, align 8, !tbaa !49
  %i.cw = and i64 %.val, -8
  %i.cx = inttoptr i64 %i.cw to ptr
  %i.cy = load i64, ptr %i.x, align 8, !tbaa !45  ; 2 uses
  %i.cz = shl i64 %i.cy, 2
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cz
  br label %_upb_Decoder_Reserve.exit

_upb_Decoder_Reserve.exit:                        ; preds = %upb_MiniTableEnum_CheckValue.exit.thread27, %bb.p
  %i.db = phi i64 [ %i.cy, %bb.p ], [ %i.cr, %upb_MiniTableEnum_CheckValue.exit.thread27 ]
  %.1 = phi ptr [ %i.da, %bb.p ], [ %.0.ph, %upb_MiniTableEnum_CheckValue.exit.thread27 ] ; 2 uses
  %i.dc = add i64 %i.db, 1
  store i64 %i.dc, ptr %i.x, align 8, !tbaa !45
  store i32 %.sroa.0.0, ptr %.1, align 1
  %i.dd = getelementptr inbounds nuw i8, ptr %.1, i64 4
  br label %.outer

upb_EpsCopyInputStream_IsDone.exit.thread:        ; preds = %bb.d, %upb_EpsCopyInputStream_IsDone.exit.upb_EpsCopyInputStream_IsDone.exit.thread_crit_edge
  %i.de = phi ptr [ %.pre32, %upb_EpsCopyInputStream_IsDone.exit.upb_EpsCopyInputStream_IsDone.exit.thread_crit_edge ], [ %i.ai, %bb.d ]
  %i.df = phi i64 [ %.pre, %upb_EpsCopyInputStream_IsDone.exit.upb_EpsCopyInputStream_IsDone.exit.thread_crit_edge ], [ %i.ap, %bb.d ]
  %.11821 = phi ptr [ null, %upb_EpsCopyInputStream_IsDone.exit.upb_EpsCopyInputStream_IsDone.exit.thread_crit_edge ], [ %.017, %bb.d ]
  %i.dg = add nsw i64 %i.df, %i.p                 ; 2 uses
  store i64 %i.dg, ptr %i.n, align 8, !tbaa !21
  %spec.select.i = call i64 @llvm.smin.i64(i64 %i.dg, i64 0)
  %i.dh = getelementptr inbounds i8, ptr %i.de, i64 %spec.select.i
  store ptr %i.dh, ptr %i.s, align 8, !tbaa !19
  ret ptr %.11821
}

declare zeroext i1 @_upb_Array_Realloc_dont_copy_me__upb_internal_use_only(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @utf8_range_IsValid(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @upb_EpsCopyInputStream_ReturnError_dont_copy_me__upb_internal_use_only(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare zeroext i1 @_upb_Message_AddUnknownSlowPath_dont_copy_me__upb_internal_use_only(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @_upb_Decoder_AddMapEntryUnknown(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef nonnull %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca [10 x i8], align 1                ; 5 uses
  %5 = alloca [2 x %struct.upb_StringView], align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.e = call i32 @upb_Encode(ptr noundef nonnull %3, ptr noundef %4, i32 noundef 0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #12
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.f, i32 noundef 1) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.g = load i32, ptr %2, align 4, !tbaa !27
  %i.h = shl i32 %i.g, 3
  %i.i = or disjoint i32 %i.h, 2
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.08.i = phi i32 [ %i.i, %bb.c ], [ %i.l, %bb.d ] ; 2 uses
  %.07.i = phi ptr [ %i.c, %bb.c ], [ %i.m, %bb.d ] ; 2 uses
  %i.j = trunc i32 %.08.i to i8
  %i.k = and i8 %i.j, 127
  %i.l = lshr i32 %.08.i, 7                       ; 2 uses
  %.not.i = icmp eq i32 %i.l, 0                   ; 2 uses
  %masksel.i = select i1 %.not.i, i8 0, i8 -128
  %.0.i = or disjoint i8 %masksel.i, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %.07.i, i64 1 ; 2 uses
  store i8 %.0.i, ptr %.07.i, align 1, !tbaa !22
  br i1 %.not.i, label %upb_Decoder_EncodeVarint32.exit, label %bb.d, !llvm.loop !89

upb_Decoder_EncodeVarint32.exit:                  ; preds = %bb.d
  %i.n = load i64, ptr %i.b, align 8, !tbaa !32
  %i.o = trunc i64 %i.n to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %upb_Decoder_EncodeVarint32.exit
  %.08.i12 = phi i32 [ %i.o, %upb_Decoder_EncodeVarint32.exit ], [ %i.r, %bb.e ] ; 2 uses
  %.07.i13 = phi ptr [ %i.m, %upb_Decoder_EncodeVarint32.exit ], [ %i.s, %bb.e ] ; 2 uses
  %i.p = trunc i32 %.08.i12 to i8
  %i.q = and i8 %i.p, 127
  %i.r = lshr i32 %.08.i12, 7                     ; 2 uses
  %.not.i14 = icmp eq i32 %i.r, 0                 ; 2 uses
  %masksel.i15 = select i1 %.not.i14, i8 0, i8 -128
  %.0.i16 = or disjoint i8 %masksel.i15, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %.07.i13, i64 1 ; 2 uses
  store i8 %.0.i16, ptr %.07.i13, align 1, !tbaa !22
  br i1 %.not.i14, label %upb_Decoder_EncodeVarint32.exit17, label %bb.e, !llvm.loop !89

upb_Decoder_EncodeVarint32.exit17:                ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  store ptr %i.c, ptr %5, align 16, !tbaa !75
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.c to i64
  %i.w = sub i64 %i.u, %i.v
  store i64 %i.w, ptr %i.t, align 8, !tbaa !77
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !53
  store ptr %i.y, ptr %i.x, align 16, !tbaa !75
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.aa = load i64, ptr %i.b, align 8, !tbaa !32
  store i64 %i.aa, ptr %i.z, align 8, !tbaa !77
  %i.ab = call zeroext i1 @_upb_Message_AddUnknownV_dont_copy_me__upb_internal_use_only(ptr noundef %1, ptr noundef nonnull %i.d, ptr noundef nonnull %5, i64 noundef 2) #12
  br i1 %i.ab, label %bb.g, label %bb.f

bb.f:                                             ; preds = %upb_Decoder_EncodeVarint32.exit17
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.ac, i32 noundef 1) #13
  unreachable

bb.g:                                             ; preds = %upb_Decoder_EncodeVarint32.exit17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

declare ptr @_upb_Map_New(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @upb_Encode(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @_upb_Message_AddUnknownV_dont_copy_me__upb_internal_use_only(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i1 @upb_strtable_remove2(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @upb_strtable_insert(ptr noundef, ptr noundef, i64 noundef, i64, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @upb_inttable_remove(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @upb_inttable_insert(ptr noundef, i64 noundef, i64, ptr noundef) local_unnamed_addr #2

declare ptr @_upb_WireReader_SkipGroup_dont_copy_me__upb_internal_use_only(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @upb_Decoder_AddMessageSetItem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #4 {
bb.a:
  %6 = alloca %struct.upb_Decoder, align 8        ; 21 uses
  %i.a = alloca [30 x i8], align 16               ; 7 uses
  %7 = alloca [3 x %struct.upb_StringView], align 16 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.d = tail call ptr @upb_ExtensionRegistry_Lookup(ptr noundef %i.c, ptr noundef %2, i32 noundef %3) #12 ; 5 uses
  %.not = icmp eq ptr %i.d, null
  %.sink28.i.i.i.sroa.gep = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %.sink28.i.i.i.sroa.gep14 = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 6 uses
  %i.f = tail call ptr @_upb_Message_GetOrCreateExtension_dont_copy_me__upb_internal_use_only(ptr noundef %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #12, !inline_history !91 ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.c, label %bb.d, !prof !38

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.g, i32 noundef 1) #13, !inline_history !91
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !92
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %.val.i = load i16, ptr %i.l, align 8, !tbaa !24
  %i.m = zext i16 %.val.i to i64                  ; 5 uses
  %i.n = and i64 %i.m, 7
  %i.o = icmp eq i64 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !46 ; 4 uses
  %i.p = getelementptr i8, ptr %0, i64 136
  %.val11.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !48
  %i.q = ptrtoint ptr %.val11.i.i.i to i64
  %i.r = ptrtoint ptr %.val.i.i.i to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = icmp ult i64 %i.s, %i.m
  br i1 %i.t, label %upb_Arena_Malloc.exit.i.i, label %upb_Arena_Malloc.exit.thread.i.i, !prof !38

upb_Arena_Malloc.exit.thread.i.i:                 ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.m
  store ptr %i.u, ptr %i.e, align 8, !tbaa !46
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  br label %_upb_Decoder_NewSubMessage2.exit

upb_Arena_Malloc.exit.i.i:                        ; preds = %bb.d
  %i.v = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.e, i64 noundef %i.m) #12 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %bb.e, label %_upb_Decoder_NewSubMessage2.exit, !prof !54

bb.e:                                             ; preds = %upb_Arena_Malloc.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.w, i32 noundef 1) #13
  unreachable

_upb_Decoder_NewSubMessage2.exit:                 ; preds = %upb_Arena_Malloc.exit.thread.i.i, %upb_Arena_Malloc.exit.i.i
  %.0.i3.i.i = phi ptr [ %.val.i.i.i, %upb_Arena_Malloc.exit.thread.i.i ], [ %i.v, %upb_Arena_Malloc.exit.i.i ] ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i3.i.i, i8 0, i64 %i.m, i1 false)
  store ptr %.0.i3.i.i, ptr %i.h, align 8, !tbaa !55
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.y = load i32, ptr %i.x, align 8, !tbaa !56   ; 2 uses
  %i.z = icmp slt i32 %i.y, 2
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_upb_Decoder_NewSubMessage2.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.aa, i32 noundef 4) #13, !inline_history !91
  unreachable

bb.g:                                             ; preds = %_upb_Decoder_NewSubMessage2.exit
  %i.ab = zext i32 %5 to i64                      ; 3 uses
  %i.ac = getelementptr i8, ptr %i.d, i64 10
  %.val.i13 = load i8, ptr %i.ac, align 2, !tbaa !33 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.d, i64 11
  %.val3.i = load i8, ptr %i.ad, align 1, !tbaa !36
  %i.ae = zext i8 %.val.i13 to i64
  %i.af = and i8 %.val3.i, 16
  %.not.i.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i, label %upb_MiniTableExtension_CType.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  switch i8 %.val.i13, label %upb_MiniTableExtension_CType.exit.i [
    i8 5, label %upb_MiniTableExtension_GetSubMessage.exit
    i8 12, label %upb_MiniTableExtension_GetSubMessage.exit
  ]

upb_MiniTableExtension_CType.exit.i:              ; preds = %bb.h, %bb.g
  %i.ag = add nuw nsw i64 %i.ae, 4294967295
  %i.ah = and i64 %i.ag, 4294967295
  %i.ai = add nsw i64 %i.ah, -9
  %i.aj = icmp ult i64 %i.ai, 2
  br i1 %i.aj, label %bb.i, label %upb_MiniTableExtension_GetSubMessage.exit

bb.i:                                             ; preds = %upb_MiniTableExtension_CType.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  br label %upb_MiniTableExtension_GetSubMessage.exit

upb_MiniTableExtension_GetSubMessage.exit:        ; preds = %bb.h, %bb.h, %upb_MiniTableExtension_CType.exit.i, %bb.i
  %.0.i = phi ptr [ %i.al, %bb.i ], [ null, %upb_MiniTableExtension_CType.exit.i ], [ null, %bb.h ], [ null, %bb.h ]
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ao = load i16, ptr %i.an, align 8, !tbaa !37 ; 2 uses
  %i.ap = add nsw i32 %i.y, -1
  %spec.select8.i = tail call i32 @llvm.umin.i32(i32 range(i32 -2147483648, 2147483647) %i.ap, i32 100)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 208 ; 2 uses
  store i32 0, ptr %i.aq, align 8, !tbaa !82
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %4, ptr %i.ar, align 8, !tbaa !52
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr null, ptr %i.as, align 8, !tbaa !73
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.aq, ptr %i.at, align 8, !tbaa !83
  %i.au = icmp ult i32 %5, 17
  br i1 %i.au, label %bb.j, label %bb.m

bb.j:                                             ; preds = %upb_MiniTableExtension_GetSubMessage.exit
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 57 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.av, i8 0, i64 32, i1 false)
  %.not.i.i.i = icmp eq i32 %5, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.av, ptr align 1 %4, i64 %i.ab, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aw = ptrtoint ptr %4 to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  store i64 %i.ay, ptr %.sink28.i.i.i.sroa.gep14, align 8, !tbaa !51
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ab ; 2 uses
  store ptr %i.az, ptr %6, align 8, !tbaa !18
  br label %upb_Decode.exit

bb.m:                                             ; preds = %upb_MiniTableExtension_GetSubMessage.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 %i.ab
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -16 ; 2 uses
  store ptr %i.bb, ptr %6, align 8, !tbaa !18
  store i64 16, ptr %.sink28.i.i.i.sroa.gep, align 8, !tbaa !21
  br label %upb_Decode.exit

upb_Decode.exit:                                  ; preds = %bb.l, %bb.m
  %.0.i.i = phi ptr [ %i.av, %bb.l ], [ %4, %bb.m ]
  %.sink28.i.i.i.sroa.phi = phi ptr [ %.sink28.i.i.i.sroa.gep, %bb.l ], [ %.sink28.i.i.i.sroa.gep14, %bb.m ]
  %i.bc = phi ptr [ %i.az, %bb.l ], [ %i.bb, %bb.m ]
  store i64 0, ptr %.sink28.i.i.i.sroa.phi, align 8, !tbaa !32
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !19
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i8 0, ptr %i.be, align 8, !tbaa !84
  %i.bf = shl i16 %i.ao, 1
  %i.bg = and i16 %i.bf, 16
  %spec.select.i.i = or i16 %i.bg, %i.ao
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 96
  store ptr %i.am, ptr %i.bh, align 8, !tbaa !7
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 112
  store i32 %spec.select8.i, ptr %i.bi, align 8, !tbaa !56
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 116
  store i32 -1, ptr %i.bj, align 4, !tbaa !23
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i16 %spec.select.i.i, ptr %i.bk, align 8, !tbaa !37
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 122
  store i8 0, ptr %i.bl, align 2, !tbaa !85
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 123
  store i8 0, ptr %i.bm, align 1, !tbaa !80
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 128
  call void @_upb_Arena_SwapIn_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.bn, ptr noundef nonnull %i.e) #12, !inline_history !95
  %i.bo = call fastcc i32 @upb_Decoder_Decode(ptr noundef %6, ptr noundef %.0.i.i, ptr noundef nonnull %.0.i3.i.i, ptr noundef %.0.i, ptr noundef nonnull %i.e), !inline_history !95 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %.not22.i = icmp eq i32 %i.bo, 0
  br i1 %.not22.i, label %upb_Decoder_AddKnownMessageSetItem.exit, label %bb.n

bb.n:                                             ; preds = %upb_Decode.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.bp, i32 noundef %i.bo) #13, !inline_history !91
  unreachable

bb.o:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 11, ptr %i.a, align 16, !tbaa !22
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 16, ptr %i.bq, align 1, !tbaa !22
  br label %upb_Decoder_EncodeVarint32.exit23.i, !llvm.loop !89

upb_Decoder_EncodeVarint32.exit23.i:              ; preds = %upb_Decoder_EncodeVarint32.exit23.i, %bb.o
  %.08.i24.i = phi i32 [ %i.bu, %upb_Decoder_EncodeVarint32.exit23.i ], [ %3, %bb.o ] ; 2 uses
  %.07.i25.i = phi ptr [ %i.bv, %upb_Decoder_EncodeVarint32.exit23.i ], [ %i.br, %bb.o ] ; 3 uses
  %i.bs = trunc i32 %.08.i24.i to i8
  %i.bt = and i8 %i.bs, 127
  %i.bu = lshr i32 %.08.i24.i, 7                  ; 2 uses
  %.not.i26.i = icmp eq i32 %i.bu, 0              ; 2 uses
  %masksel.i27.i = select i1 %.not.i26.i, i8 0, i8 -128
  %.0.i28.i = or disjoint i8 %masksel.i27.i, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %.07.i25.i, i64 1 ; 2 uses
  store i8 %.0.i28.i, ptr %.07.i25.i, align 1, !tbaa !22
  br i1 %.not.i26.i, label %upb_Decoder_EncodeVarint32.exit29.i, label %upb_Decoder_EncodeVarint32.exit23.i, !llvm.loop !89

upb_Decoder_EncodeVarint32.exit29.i:              ; preds = %upb_Decoder_EncodeVarint32.exit23.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.07.i25.i, i64 2
  store i8 26, ptr %i.bv, align 1, !tbaa !22
  br label %upb_Decoder_EncodeVarint32.exit35.i, !llvm.loop !89

upb_Decoder_EncodeVarint32.exit35.i:              ; preds = %upb_Decoder_EncodeVarint32.exit35.i, %upb_Decoder_EncodeVarint32.exit29.i
  %.08.i36.i = phi i32 [ %i.bz, %upb_Decoder_EncodeVarint32.exit35.i ], [ %5, %upb_Decoder_EncodeVarint32.exit29.i ] ; 2 uses
  %.07.i37.i = phi ptr [ %i.ca, %upb_Decoder_EncodeVarint32.exit35.i ], [ %i.bw, %upb_Decoder_EncodeVarint32.exit29.i ] ; 2 uses
  %i.bx = trunc i32 %.08.i36.i to i8
  %i.by = and i8 %i.bx, 127
  %i.bz = lshr i32 %.08.i36.i, 7                  ; 2 uses
  %.not.i38.i = icmp eq i32 %i.bz, 0              ; 2 uses
  %masksel.i39.i = select i1 %.not.i38.i, i8 0, i8 -128
  %.0.i40.i = or disjoint i8 %masksel.i39.i, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %.07.i37.i, i64 1 ; 4 uses
  store i8 %.0.i40.i, ptr %.07.i37.i, align 1, !tbaa !22
  br i1 %.not.i38.i, label %upb_Decoder_EncodeVarint32.exit41.i, label %upb_Decoder_EncodeVarint32.exit35.i, !llvm.loop !89

upb_Decoder_EncodeVarint32.exit41.i:              ; preds = %upb_Decoder_EncodeVarint32.exit35.i
  store i8 12, ptr %i.ca, align 1, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  store ptr %i.a, ptr %7, align 16, !tbaa !75
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.a to i64
  %i.ce = sub i64 %i.cc, %i.cd
  store i64 %i.ce, ptr %i.cb, align 8, !tbaa !77
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %4, ptr %i.cf, align 16, !tbaa !75
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ch = zext i32 %5 to i64
  store i64 %i.ch, ptr %i.cg, align 8, !tbaa !77
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.ca, ptr %i.ci, align 16, !tbaa !75
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 1, ptr %i.cj, align 8, !tbaa !77
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cl = call zeroext i1 @_upb_Message_AddUnknownV_dont_copy_me__upb_internal_use_only(ptr noundef %1, ptr noundef nonnull %i.ck, ptr noundef nonnull %7, i64 noundef 3) #12
  br i1 %i.cl, label %upb_Decoder_AddUnknownMessageSetItem.exit, label %bb.p

bb.p:                                             ; preds = %upb_Decoder_EncodeVarint32.exit41.i
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.cm, i32 noundef 1) #13
end_hunk_3
