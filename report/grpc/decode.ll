Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/decode?download=true
inline.NumInlined: 222
inline.NumDeleted: 104
begin_hunk_0_@_upb_Decoder_DecodeMessage:bb.a
  %.0.copyload.i = load i32, ptr %.0.i16, align 1 ; 2 uses
  store i32 %.0.copyload.i, ptr %.sroa.0, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %.0.i16, i64 4 ; 2 uses
  %i.ei = trunc i32 %.0.copyload.i to i8
  br i1 %i.eg, label %_upb_Decoder_DecodeWireValue.exit.thread.thread, label %_upb_Decoder_DecodeWireValue.exit.thread246

bb.w:                                             ; preds = %_upb_Decoder_FindField.exit
  %i.ej = getelementptr inbounds nuw i8, ptr %.0.i27, i64 10
  %i.ek = load i8, ptr %i.ej, align 2, !tbaa !32
  %i.el = zext nneg i8 %i.ek to i32
  %i.em = shl nuw i32 1, %i.el
  %i.en = and i32 %i.em, 65602
  %i.eo = icmp eq i32 %i.en, 0
  %.0.copyload.i35 = load i64, ptr %.0.i16, align 1 ; 2 uses
  store i64 %.0.copyload.i35, ptr %.sroa.0, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %.0.i16, i64 8 ; 2 uses
  %i.eq = trunc i64 %.0.copyload.i35 to i8
  br i1 %i.eo, label %_upb_Decoder_DecodeWireValue.exit.thread.thread, label %_upb_Decoder_DecodeWireValue.exit.thread246

bb.x:                                             ; preds = %_upb_Decoder_FindField.exit
  %i.er = load i8, ptr %.0.i16, align 1, !tbaa !25 ; 3 uses
  %i.es = icmp sgt i8 %i.er, -1
  br i1 %i.es, label %bb.y, label %upb_EpsCopyInputStream_HasErrorHandler.exit.i38, !prof !23

bb.y:                                             ; preds = %bb.x
  %i.et = zext nneg i8 %i.er to i32
  %i.eu = getelementptr inbounds nuw i8, ptr %.0.i16, i64 1
  br label %upb_WireReader_ReadSize.exit

upb_EpsCopyInputStream_HasErrorHandler.exit.i38:  ; preds = %bb.x
  %i.ev = zext i8 %i.er to i64
  %i.ew = call { ptr, i64 } @_upb_WireReader_ReadLongSize_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %.0.i16, i64 noundef %i.ev, ptr noundef nonnull %0) #12 ; 2 uses
  %i.ex = extractvalue { ptr, i64 } %i.ew, 0
  %i.ey = extractvalue { ptr, i64 } %i.ew, 1
  %i.ez = trunc i64 %i.ey to i32
  br label %upb_WireReader_ReadSize.exit

upb_WireReader_ReadSize.exit:                     ; preds = %upb_EpsCopyInputStream_HasErrorHandler.exit.i38, %bb.y
  %.0208 = phi i32 [ %i.et, %bb.y ], [ %i.ez, %upb_EpsCopyInputStream_HasErrorHandler.exit.i38 ] ; 2 uses
  %.0.i21 = phi ptr [ %i.eu, %bb.y ], [ %i.ex, %upb_EpsCopyInputStream_HasErrorHandler.exit.i38 ] ; 7 uses
  store i32 %.0208, ptr %.sroa.0, align 8, !tbaa !34
  %i.fa = getelementptr inbounds nuw i8, ptr %.0.i27, i64 10
  %i.fb = load i8, ptr %i.fa, align 2, !tbaa !32  ; 2 uses
  %i.fc = zext i8 %i.fb to i64                    ; 2 uses
  %i.fd = getelementptr i8, ptr %.0.i27, i64 11
  %.val.i = load i8, ptr %i.fd, align 1, !tbaa !35 ; 3 uses
  %i.fe = and i8 %.val.i, 3
  %i.ff = icmp eq i8 %i.fe, 1
  %i.fg = add nuw nsw i64 %i.fc, 19
  %spec.select.i = select i1 %i.ff, i64 %i.fg, i64 %i.fc ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr @_upb_Decoder_GetDelimitedOp.kDelimitedOps, i64 %spec.select.i
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !25  ; 5 uses
  %i.fj = shl nuw i64 1, %spec.select.i
  %i.fk = and i64 %i.fj, 1611139072
  %.not.i40 = icmp eq i64 %i.fk, 0
  %i.fl = trunc i32 %.0208 to i8                  ; 6 uses
  br i1 %.not.i40, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %upb_WireReader_ReadSize.exit
  %i.fm = and i8 %.val.i, 8
  %.not.i.i41 = icmp eq i8 %i.fm, 0
  br i1 %.not.i.i41, label %bb.aa, label %_upb_Decoder_DecodeWireValue.exit

bb.aa:                                            ; preds = %bb.z
  %i.fn = getelementptr inbounds nuw i8, ptr %.0.i27, i64 8
  %i.fo = load i16, ptr %i.fn, align 4, !tbaa !33
  %i.fp = zext i16 %i.fo to i64
  %i.fq = shl nuw nsw i64 %i.fp, 2
  %i.fr = getelementptr inbounds nuw i8, ptr %.0.i27, i64 %i.fq
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !25
  %.not4.i.i = icmp eq ptr %i.fs, null
  br i1 %.not4.i.i, label %_upb_Decoder_DecodeWireValue.exit.thread.thread, label %_upb_Decoder_DecodeWireValue.exit

bb.ab:                                            ; preds = %upb_WireReader_ReadSize.exit
  switch i64 %spec.select.i, label %_upb_Decoder_DecodeWireValue.exit [
    i64 31, label %bb.ac
    i64 12, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab, %bb.ab
  %i.ft = icmp eq i8 %i.fb, 12
  call void @llvm.assume(i1 %i.ft)
  %i.fu = and i8 %.val.i, 16
  %.not.i9.i = icmp eq i8 %i.fu, 0
  br i1 %.not.i9.i, label %_upb_Decoder_DecodeWireValue.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fv = load i16, ptr %i.k, align 8, !tbaa !36
  %i.fw = and i16 %i.fv, 8
  %.not6.i.i = icmp eq i16 %i.fw, 0
  br i1 %.not6.i.i, label %_upb_Decoder_DecodeWireValue.exit, label %_upb_Decoder_DecodeWireValue.exit.thread246

bb.ae:                                            ; preds = %_upb_Decoder_FindField.exit
  %i.fx = load i32, ptr %.0.i27, align 4, !tbaa !29 ; 2 uses
  store i32 %i.fx, ptr %.sroa.0, align 8, !tbaa !25
  %i.fy = getelementptr inbounds nuw i8, ptr %.0.i27, i64 10
  %i.fz = load i8, ptr %i.fy, align 2, !tbaa !32
  %i.ga = trunc i32 %i.fx to i8                   ; 2 uses
  switch i8 %i.fz, label %_upb_Decoder_DecodeWireValue.exit.thread.thread [
    i8 10, label %bb.af
    i8 19, label %_upb_Decoder_DecodeWireValue.exit.thread.thread279.preheader
  ]

bb.af:                                            ; preds = %bb.ae
  %i.gb = getelementptr inbounds nuw i8, ptr %.0.i27, i64 11
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !35
  %i.gd = and i8 %i.gc, 8
  %.not.i20 = icmp eq i8 %i.gd, 0
  br i1 %.not.i20, label %bb.ag, label %_upb_Decoder_DecodeWireValue.exit.thread246

bb.ag:                                            ; preds = %bb.af
  %i.ge = getelementptr inbounds nuw i8, ptr %.0.i27, i64 8
  %i.gf = load i16, ptr %i.ge, align 4, !tbaa !33
  %i.gg = zext i16 %i.gf to i64
  %i.gh = shl nuw nsw i64 %i.gg, 2
  %i.gi = getelementptr inbounds nuw i8, ptr %.0.i27, i64 %i.gh
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !25
  %.not4.i = icmp eq ptr %i.gj, null
  br i1 %.not4.i, label %_upb_Decoder_DecodeWireValue.exit.thread.thread, label %_upb_Decoder_DecodeWireValue.exit.thread246

bb.ah:                                            ; preds = %_upb_Decoder_FindField.exit
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 712
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.gk, i32 noundef 2) #13
  unreachable

_upb_Decoder_DecodeWireValue.exit:                ; preds = %bb.ad, %bb.aa, %bb.ac, %bb.ab, %bb.z, %_upb_Decoder_Munge.exit
  %.sroa.0.0..sroa.0.0..sroa.0.0.177290 = phi i8 [ %.sroa.0.0..sroa.0.0..sroa.0.0.177291, %_upb_Decoder_Munge.exit ], [ %i.fl, %bb.aa ], [ %i.fl, %bb.ac ], [ %i.fl, %bb.ab ], [ %i.fl, %bb.z ], [ %i.fl, %bb.ad ]
  %.1.in = phi i8 [ %i.ea, %_upb_Decoder_Munge.exit ], [ %i.fi, %bb.aa ], [ %i.fi, %bb.ac ], [ %i.fi, %bb.ab ], [ %i.fi, %bb.z ], [ %i.fi, %bb.ad ] ; 3 uses
  %.1.i = phi ptr [ %.0.i19, %_upb_Decoder_Munge.exit ], [ %.0.i21, %bb.aa ], [ %.0.i21, %bb.ac ], [ %.0.i21, %bb.ab ], [ %.0.i21, %bb.z ], [ %.0.i21, %bb.ad ] ; 3 uses
  %.1 = zext nneg i8 %.1.in to i32
  %i.gl = icmp sgt i8 %.1.in, -1
  br i1 %i.gl, label %_upb_Decoder_DecodeWireValue.exit.thread246, label %_upb_Decoder_DecodeWireValue.exit.thread

_upb_Decoder_DecodeWireValue.exit.thread246:      ; preds = %bb.af, %bb.ag, %bb.w, %bb.v, %bb.ad, %_upb_Decoder_DecodeWireValue.exit
  %.sroa.0.0..sroa.0.0..sroa.0.0.177 = phi i8 [ %.sroa.0.0..sroa.0.0..sroa.0.0.177290, %_upb_Decoder_DecodeWireValue.exit ], [ %i.fl, %bb.ad ], [ %i.ga, %bb.ag ], [ %i.ga, %bb.af ], [ %i.eq, %bb.w ], [ %i.ei, %bb.v ]
  %.1.i250 = phi ptr [ %.1.i, %_upb_Decoder_DecodeWireValue.exit ], [ %.0.i21, %bb.ad ], [ %.0.i16, %bb.ag ], [ %.0.i16, %bb.af ], [ %i.ep, %bb.w ], [ %i.eh, %bb.v ] ; 24 uses
  %.1249 = phi i32 [ %.1, %_upb_Decoder_DecodeWireValue.exit ], [ 4, %bb.ad ], [ 6, %bb.ag ], [ 6, %bb.af ], [ 3, %bb.w ], [ 2, %bb.v ] ; 7 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.0.i27, i64 11
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !35
  %i.go = zext i8 %i.gn to i32                    ; 2 uses
  %i.gp = and i32 %i.go, 8
  %.not.i = icmp eq i32 %i.gp, 0
  br i1 %.not.i, label %bb.al, label %bb.ai, !prof !23

bb.ai:                                            ; preds = %_upb_Decoder_DecodeWireValue.exit.thread246
  %i.gq = call ptr @_upb_Message_GetOrCreateExtension_dont_copy_me__upb_internal_use_only(ptr noundef %2, ptr noundef nonnull %.0.i27, ptr noundef nonnull %i.p) #12 ; 2 uses
  %.not30.i = icmp eq ptr %i.gq, null
  br i1 %.not30.i, label %bb.aj, label %bb.ak, !prof !37

bb.aj:                                            ; preds = %bb.ai
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 712
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.gr, i32 noundef 1) #13
  unreachable

bb.ak:                                            ; preds = %bb.ai
  store ptr %2, ptr %i.q, align 8, !tbaa !38
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_upb_Decoder_DecodeWireValue.exit.thread246
  %.029.i = phi ptr [ %i.gs, %bb.ak ], [ %2, %_upb_Decoder_DecodeWireValue.exit.thread246 ] ; 5 uses
  %i.gt = and i32 %i.go, 3
  %i.gu = getelementptr inbounds nuw i8, ptr %.0.i27, i64 4
  %i.gv = load i16, ptr %i.gu, align 4, !tbaa !75
  %i.gw = zext i16 %i.gv to i64
  %i.gx = getelementptr inbounds nuw i8, ptr %.029.i, i64 %i.gw ; 13 uses
  switch i32 %i.gt, label %.unreachabledefault.i [
    i32 1, label %bb.am
    i32 0, label %bb.ck
    i32 2, label %bb.dd
  ]

bb.am:                                            ; preds = %bb.al
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !77 ; 6 uses
  %.not.i43 = icmp eq ptr %i.gy, null
  br i1 %.not.i43, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !40 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !41
  %i.hd = icmp eq i64 %i.ha, %i.hc
  br i1 %i.hd, label %bb.ao, label %_upb_Decoder_Reserve.exit94

bb.ao:                                            ; preds = %bb.an
  %i.he = add i64 %i.ha, 1
  %i.hf = call zeroext i1 @_upb_Array_Realloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.gy, i64 noundef %i.he, ptr noundef nonnull %i.p) #12
  br i1 %i.hf, label %_upb_Decoder_Reserve.exit94, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 712
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.hg, i32 noundef 1) #13
  unreachable

bb.aq:                                            ; preds = %bb.am
  %i.hh = getelementptr i8, ptr %.0.i27, i64 10
  %.val74.i = load i8, ptr %i.hh, align 2, !tbaa !32
  %i.hi = zext i8 %.val74.i to i64
  %i.hj = add nuw nsw i64 %i.hi, 4294967295
  %i.hk = and i64 %i.hj, 4294967295               ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr @_upb_FieldType_SizeLg2_dont_copy_me__upb_internal_use_only.size, i64 %i.hk
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !25  ; 2 uses
  %i.hn = zext nneg i8 %i.hm to i64
  %i.ho = shl i64 4, %i.hn
  %i.hp = add nuw i64 %i.ho, 28
  %i.hq = and i64 %i.hp, -8                       ; 3 uses
  %.val.i.i.i.i89 = load ptr, ptr %i.p, align 8, !tbaa !43 ; 4 uses
  %.val11.i.i.i.i90 = load ptr, ptr %i.r, align 8, !tbaa !44
  %i.hr = ptrtoint ptr %.val11.i.i.i.i90 to i64
  %i.hs = ptrtoint ptr %.val.i.i.i.i89 to i64
  %i.ht = sub i64 %i.hr, %i.hs
  %i.hu = icmp ult i64 %i.ht, %i.hq
  br i1 %i.hu, label %upb_Arena_Malloc.exit.i.i.i92, label %upb_Arena_Malloc.exit.thread.i.i.i91, !prof !37

upb_Arena_Malloc.exit.thread.i.i.i91:             ; preds = %bb.aq
  %i.hv = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i89, i64 %i.hq
  store ptr %i.hv, ptr %i.p, align 8, !tbaa !43
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i89) ]
  br label %_upb_Decoder_CreateArray.exit

upb_Arena_Malloc.exit.i.i.i92:                    ; preds = %bb.aq
  %i.hw = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.p, i64 noundef %i.hq) #12 ; 2 uses
  %.not.i.i.i93 = icmp eq ptr %i.hw, null
  br i1 %.not.i.i.i93, label %bb.ar, label %_upb_Decoder_CreateArray.exit

bb.ar:                                            ; preds = %upb_Arena_Malloc.exit.i.i.i92
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 712
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.hx, i32 noundef 1) #13
  unreachable

_upb_Decoder_CreateArray.exit:                    ; preds = %upb_Arena_Malloc.exit.thread.i.i.i91, %upb_Arena_Malloc.exit.i.i.i92
  %.0.i19.i.i.i = phi ptr [ %.val.i.i.i.i89, %upb_Arena_Malloc.exit.thread.i.i.i91 ], [ %i.hw, %upb_Arena_Malloc.exit.i.i.i92 ] ; 6 uses
  %i.hy = sext i8 %i.hm to i64
  %i.hz = getelementptr inbounds nuw i8, ptr %.0.i19.i.i.i, i64 24
  %i.ia = icmp ne i64 %i.hk, 7
  %.neg.i.i.i.i = sext i1 %i.ia to i64
  %i.ib = add nsw i64 %.neg.i.i.i.i, %i.hy
  %i.ic = ptrtoint ptr %i.hz to i64
  %i.id = or i64 %i.ib, %i.ic
  store i64 %i.id, ptr %.0.i19.i.i.i, align 8, !tbaa !45
  %i.ie = getelementptr inbounds nuw i8, ptr %.0.i19.i.i.i, i64 8
  store i64 0, ptr %i.ie, align 8, !tbaa !41
  %i.if = getelementptr inbounds nuw i8, ptr %.0.i19.i.i.i, i64 16
  store i64 4, ptr %i.if, align 8, !tbaa !40
  store ptr %.0.i19.i.i.i, ptr %i.gx, align 8, !tbaa !77
  br label %_upb_Decoder_Reserve.exit94

_upb_Decoder_Reserve.exit94:                      ; preds = %bb.ao, %bb.an, %_upb_Decoder_CreateArray.exit
  %.069.i = phi ptr [ %.0.i19.i.i.i, %_upb_Decoder_CreateArray.exit ], [ %i.gy, %bb.an ], [ %i.gy, %bb.ao ] ; 18 uses
  switch i32 %.1249, label %bb.cj [
    i32 0, label %bb.as
    i32 2, label %bb.as
    i32 3, label %bb.as
    i32 4, label %bb.at
    i32 5, label %bb.au
    i32 6, label %bb.bb
    i32 7, label %bb.bn
    i32 8, label %bb.bn
    i32 9, label %bb.bx
    i32 11, label %bb.bx
    i32 12, label %bb.bx
    i32 13, label %bb.ci
  ]

bb.as:                                            ; preds = %_upb_Decoder_Reserve.exit94, %_upb_Decoder_Reserve.exit94, %_upb_Decoder_Reserve.exit94
  %.069.val80.i = load i64, ptr %.069.i, align 8, !tbaa !45
  %i.ig = and i64 %.069.val80.i, -8
  %i.ih = inttoptr i64 %i.ig to ptr
  %i.ii = getelementptr inbounds nuw i8, ptr %.069.i, i64 8 ; 2 uses
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !41 ; 2 uses
  %i.ik = zext nneg i32 %.1249 to i64
  %i.il = shl i64 %i.ij, %i.ik
  %i.im = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.il
  %i.in = add i64 %i.ij, 1
  store i64 %i.in, ptr %i.ii, align 8, !tbaa !41
  %i.io = shl nuw nsw i32 1, %.1249
  %i.ip = zext nneg i32 %i.io to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.im, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0, i64 %i.ip, i1 false)
  br label %_upb_Decoder_DecodeField.exit

bb.at:                                            ; preds = %_upb_Decoder_Reserve.exit94
  %.069.val79.i = load i64, ptr %.069.i, align 8, !tbaa !45
  %i.iq = and i64 %.069.val79.i, -8
  %i.ir = inttoptr i64 %i.iq to ptr
  %i.is = getelementptr inbounds nuw i8, ptr %.069.i, i64 8 ; 3 uses
  %i.it = load i64, ptr %i.is, align 8, !tbaa !41
  %i.iu = getelementptr inbounds nuw [16 x i8], ptr %i.ir, i64 %i.it
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.171 = load i32, ptr %.sroa.0, align 8, !tbaa !25
  %i.iv = call fastcc ptr @_upb_Decoder_ReadString2(ptr noundef nonnull %0, ptr noundef %.1.i250, i32 noundef %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.171, ptr noundef %i.iu, i1 noundef zeroext true), !inline_history !64
  %i.iw = load i64, ptr %i.is, align 8, !tbaa !41
  %i.ix = add i64 %i.iw, 1
  store i64 %i.ix, ptr %i.is, align 8, !tbaa !41
  br label %_upb_Decoder_DecodeField.exit

bb.au:                                            ; preds = %_upb_Decoder_Reserve.exit94
  %.069.val78.i = load i64, ptr %.069.i, align 8, !tbaa !45
  %i.iy = and i64 %.069.val78.i, -8
  %i.iz = inttoptr i64 %i.iy to ptr
  %i.ja = getelementptr inbounds nuw i8, ptr %.069.i, i64 8 ; 3 uses
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !41
  %i.jc = getelementptr inbounds nuw [16 x i8], ptr %i.iz, i64 %i.jb ; 2 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.170 = load i32, ptr %.sroa.0, align 8, !tbaa !25
  %i.jd = sext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.170 to i64 ; 5 uses
  %i.je = load ptr, ptr %0, align 8, !tbaa !21
  %i.jf = load i64, ptr %i.l, align 8, !tbaa !46  ; 2 uses
  %i.jg = icmp eq i64 %i.jf, 0
  %i.jh = select i1 %i.jg, i64 16, i64 0
  %i.ji = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.jh
  %i.jj = ptrtoint ptr %i.ji to i64
  %i.jk = ptrtoint ptr %.1.i250 to i64            ; 2 uses
  %i.jl = sub i64 %i.jj, %i.jk
  %i.jm = icmp slt i64 %i.jl, %i.jd
  br i1 %i.jm, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.jn = call ptr @upb_EpsCopyInputStream_ReturnError_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %0) #12
  br label %upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit.i.i

bb.aw:                                            ; preds = %bb.au
  %.val14.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !47 ; 2 uses
  %i.jo = ptrtoint ptr %.val14.i.i.i to i64
  %i.jp = sub i64 %i.jf, %i.jo
  %i.jq = getelementptr i8, ptr %.val14.i.i.i, i64 %i.jp
  %i.jr = getelementptr i8, ptr %i.jq, i64 %i.jk
  %i.js = getelementptr inbounds nuw i8, ptr %.1.i250, i64 %i.jd
  br label %upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit.i.i

upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit.i.i: ; preds = %bb.aw, %bb.av
  %.sroa.0.1.i.i = phi ptr [ undef, %bb.av ], [ %i.jr, %bb.aw ] ; 2 uses
  %.0.i.i.i88 = phi ptr [ %i.jn, %bb.av ], [ %i.js, %bb.aw ] ; 2 uses
  %i.jt = icmp eq ptr %.0.i.i.i88, null
  br i1 %i.jt, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit.i.i
  %i.ju = load i16, ptr %i.k, align 8, !tbaa !36
  %i.jv = and i16 %i.ju, 1
  %i.jw = icmp eq i16 %i.jv, 0
  br i1 %i.jw, label %bb.ay, label %_upb_Decoder_ReadString2.exit

bb.ay:                                            ; preds = %bb.ax
  %i.jx = add nsw i64 %i.jd, 7
  %i.jy = and i64 %i.jx, -8                       ; 3 uses
  %.val.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !43 ; 4 uses
  %.val11.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !44
  %i.jz = ptrtoint ptr %.val11.i.i.i to i64
  %i.ka = ptrtoint ptr %.val.i.i.i to i64
  %i.kb = sub i64 %i.jz, %i.ka
  %i.kc = icmp ult i64 %i.kb, %i.jy
  br i1 %i.kc, label %upb_Arena_Malloc.exit.i.i, label %upb_Arena_Malloc.exit.thread.i.i, !prof !37

upb_Arena_Malloc.exit.thread.i.i:                 ; preds = %bb.ay
  %i.kd = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.jy
  store ptr %i.kd, ptr %i.p, align 8, !tbaa !43
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  br label %bb.az

upb_Arena_Malloc.exit.i.i:                        ; preds = %bb.ay
  %i.ke = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.p, i64 noundef %i.jy) #12 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.ke, null
  br i1 %.not.not.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %upb_Arena_Malloc.exit.i.i, %upb_Arena_Malloc.exit.thread.i.i
  %.0.i1622.i.i = phi ptr [ %.val.i.i.i, %upb_Arena_Malloc.exit.thread.i.i ], [ %i.ke, %upb_Arena_Malloc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i1622.i.i, ptr align 1 %.sroa.0.1.i.i, i64 range(i64 -2147483648, 2147483648) %i.jd, i1 false)
  br label %_upb_Decoder_ReadString2.exit

bb.ba:                                            ; preds = %upb_Arena_Malloc.exit.i.i, %upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit.i.i
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 712
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.kf, i32 noundef 1) #13
  unreachable

_upb_Decoder_ReadString2.exit:                    ; preds = %bb.ax, %bb.az
  %.sroa.0.0.i.i = phi ptr [ %.0.i1622.i.i, %bb.az ], [ %.sroa.0.1.i.i, %bb.ax ]
  store ptr %.sroa.0.0.i.i, ptr %i.jc, align 8, !tbaa !48
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  store i64 %i.jd, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !tbaa !31
  %i.kg = load i64, ptr %i.ja, align 8, !tbaa !41
  %i.kh = add i64 %i.kg, 1
  store i64 %i.kh, ptr %i.ja, align 8, !tbaa !41
  br label %_upb_Decoder_DecodeField.exit

bb.bb:                                            ; preds = %_upb_Decoder_Reserve.exit94
  %.069.val77.i = load i64, ptr %.069.i, align 8, !tbaa !45
  %i.ki = and i64 %.069.val77.i, -8
  %i.kj = inttoptr i64 %i.ki to ptr
  %i.kk = getelementptr inbounds nuw i8, ptr %.069.i, i64 8 ; 3 uses
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !41
  %i.km = shl i64 %i.kl, 3
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kj, i64 %i.km
  %i.ko = getelementptr inbounds nuw i8, ptr %.0.i27, i64 8 ; 3 uses
  %i.kp = load i16, ptr %i.ko, align 4, !tbaa !33
  %i.kq = zext i16 %i.kp to i64
  %i.kr = shl nuw nsw i64 %i.kq, 2
  %i.ks = getelementptr inbounds nuw i8, ptr %.0.i27, i64 %i.kr
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !25
  %i.ku = getelementptr i8, ptr %i.kt, i64 8
  %.val.i87 = load i16, ptr %i.ku, align 8, !tbaa !27
  %i.kv = zext i16 %.val.i87 to i64               ; 5 uses
  %i.kw = and i64 %i.kv, 7
  %i.kx = icmp eq i64 %i.kw, 0
  call void @llvm.assume(i1 %i.kx)
  %.val.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !43 ; 4 uses
  %.val11.i.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !44
  %i.ky = ptrtoint ptr %.val11.i.i.i.i to i64
  %i.kz = ptrtoint ptr %.val.i.i.i.i to i64
  %i.la = sub i64 %i.ky, %i.kz
  %i.lb = icmp ult i64 %i.la, %i.kv
  br i1 %i.lb, label %upb_Arena_Malloc.exit.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i.i, !prof !37

upb_Arena_Malloc.exit.thread.i.i.i:               ; preds = %bb.bb
  %i.lc = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.kv
  store ptr %i.lc, ptr %i.p, align 8, !tbaa !43
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  br label %_upb_Decoder_NewSubMessage.exit

upb_Arena_Malloc.exit.i.i.i:                      ; preds = %bb.bb
  %i.ld = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.p, i64 noundef %i.kv) #12 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ld, null
  br i1 %.not.i.i.i, label %bb.bc, label %_upb_Decoder_NewSubMessage.exit, !prof !49

bb.bc:                                            ; preds = %upb_Arena_Malloc.exit.i.i.i
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 712
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.le, i32 noundef 1) #13
  unreachable

_upb_Decoder_NewSubMessage.exit:                  ; preds = %upb_Arena_Malloc.exit.thread.i.i.i, %upb_Arena_Malloc.exit.i.i.i
  %.0.i3.i.i.i = phi ptr [ %.val.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i ], [ %i.ld, %upb_Arena_Malloc.exit.i.i.i ] ; 4 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i3.i.i.i, i8 0, i64 %i.kv, i1 false)
  store ptr %.0.i3.i.i.i, ptr %i.kn, align 8, !tbaa !50
  %i.lf = load i64, ptr %i.kk, align 8, !tbaa !41
  %i.lg = add i64 %i.lf, 1
  store i64 %i.lg, ptr %i.kk, align 8, !tbaa !41
  %i.lh = getelementptr inbounds nuw i8, ptr %.0.i27, i64 10
  %i.li = load i8, ptr %i.lh, align 2, !tbaa !32
  %i.lj = icmp eq i8 %i.li, 10
end_hunk_0
