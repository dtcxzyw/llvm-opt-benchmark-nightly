Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/decode?download=true
inline.NumInlined: 222
inline.NumDeleted: 105
begin_hunk_0_@_upb_Decoder_DecodeMessage:bb.a
  %.not13.i = icmp eq ptr %i.br, null
  br i1 %.not13.i, label %_upb_Decoder_FindField.exit, label %bb.l

bb.l:                                             ; preds = %upb_MiniTable_FindFieldByNumber.exit.thread.i
  %i.bs = load i8, ptr %i.j, align 4, !tbaa !24   ; 2 uses
  %.not14.i = icmp eq i8 %i.bs, 0
  br i1 %.not14.i, label %_upb_Decoder_FindField.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bt = zext i8 %i.bs to i32
  %i.bu = call ptr @_upb_Decoder_FindExtensionField(ptr noundef nonnull readonly %0, ptr noundef nonnull %3, i32 noundef %i.ap, i32 noundef %i.bt, i32 noundef range(i32 5, 4) %i.aq)
  br label %_upb_Decoder_FindField.exit

_upb_Decoder_FindField.exit:                      ; preds = %bb.k, %upb_MiniTable_FindFieldByNumber.exit.i, %upb_MiniTable_FindFieldByNumber.exit.thread.i, %bb.l, %bb.m
  %.0.i27 = phi ptr [ %i.bq, %upb_MiniTable_FindFieldByNumber.exit.i ], [ %i.bu, %bb.m ], [ @upb_Decoder_FieldNotFoundField, %bb.l ], [ @upb_Decoder_FieldNotFoundField, %upb_MiniTable_FindFieldByNumber.exit.thread.i ], [ %i.bk, %bb.k ] ; 41 uses
  switch i32 %i.aq, label %bb.aj [
    i32 0, label %bb.n
    i32 5, label %bb.x
    i32 1, label %bb.y
    i32 2, label %bb.z
    i32 3, label %bb.ag
  ]

bb.n:                                             ; preds = %_upb_Decoder_FindField.exit
  %i.bv = load i8, ptr %.0.i16, align 1, !tbaa !24 ; 3 uses
  %i.bw = icmp sgt i8 %i.bv, -1
  %i.bx = zext i8 %i.bv to i64                    ; 3 uses
  br i1 %i.bw, label %bb.o, label %upb_EpsCopyInputStream_HasErrorHandler.exit.i31, !prof !22

bb.o:                                             ; preds = %bb.n
  store i64 %i.bx, ptr %.sroa.0, align 8, !tbaa !30
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i16, i64 1
  br label %upb_WireReader_ReadVarint.exit

upb_EpsCopyInputStream_HasErrorHandler.exit.i31:  ; preds = %bb.n
  %i.bz = call { ptr, i64 } @_upb_WireReader_ReadLongVarint_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %.0.i16, i64 noundef %i.bx, ptr noundef nonnull %0) #12 ; 2 uses
  %i.ca = extractvalue { ptr, i64 } %i.bz, 0
  %i.cb = extractvalue { ptr, i64 } %i.bz, 1      ; 3 uses
  store i64 %i.cb, ptr %.sroa.0, align 8, !tbaa !30
  %i.cc = trunc i64 %i.cb to i8
  br label %upb_WireReader_ReadVarint.exit

upb_WireReader_ReadVarint.exit:                   ; preds = %upb_EpsCopyInputStream_HasErrorHandler.exit.i31, %bb.o
  %.sroa.0.0..sroa.0.0..sroa.0.0.180296 = phi i8 [ %i.bv, %bb.o ], [ %i.cc, %upb_EpsCopyInputStream_HasErrorHandler.exit.i31 ] ; 4 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0.182 = phi i64 [ %i.bx, %bb.o ], [ %i.cb, %upb_EpsCopyInputStream_HasErrorHandler.exit.i31 ] ; 7 uses
  %.0.i19 = phi ptr [ %i.by, %bb.o ], [ %i.ca, %upb_EpsCopyInputStream_HasErrorHandler.exit.i31 ] ; 5 uses
  %i.cd = getelementptr i8, ptr %.0.i27, i64 10
  %.val = load i8, ptr %i.cd, align 2, !tbaa !31  ; 2 uses
  switch i8 %.val, label %_upb_Decoder_Munge.exit [
    i8 14, label %bb.p
    i8 8, label %bb.u
    i8 17, label %bb.v
    i8 18, label %bb.w
  ]

bb.p:                                             ; preds = %upb_WireReader_ReadVarint.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i27, i64 8
  %i.cf = load i16, ptr %i.ce, align 4, !tbaa !32
  %i.cg = zext i16 %i.cf to i64
  %i.ch = shl nuw nsw i64 %i.cg, 2
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i27, i64 %i.ch
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !24 ; 4 uses
  %i.ck = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0.182 to i32 ; 4 uses
  %i.cl = icmp ult i32 %i.ck, 64
  br i1 %i.cl, label %.split, label %bb.q, !prof !22

.split:                                           ; preds = %bb.p
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cn = load i64, ptr %i.cm, align 4
  %i.co = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0.182, 63
  %i.cp = shl nuw i64 1, %i.co
  %i.cq = and i64 %i.cn, %i.cp
  %.not456 = icmp eq i64 %i.cq, 0
  br i1 %.not456, label %_upb_Decoder_DecodeWireValue.exit.thread.thread, label %_upb_Decoder_Munge.exit

bb.q:                                             ; preds = %bb.p
  %i.cr = load i32, ptr %i.cj, align 4, !tbaa !8  ; 2 uses
  %i.cs = icmp ugt i32 %i.cr, %i.ck
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 3 uses
  br i1 %i.cs, label %bb.t, label %bb.r, !prof !22

bb.r:                                             ; preds = %bb.q
  %i.cu = lshr i32 %i.cr, 5                       ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !8
  %i.cx = add i32 %i.cw, %i.cu                    ; 2 uses
  %i.cy = zext i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cy
  %.not30.i33 = icmp ult i32 %i.cu, %i.cx
  br i1 %.not30.i33, label %.lr.ph.preheader.i, label %_upb_Decoder_DecodeWireValue.exit.thread.thread

.lr.ph.preheader.i:                               ; preds = %bb.r
  %i.da = zext nneg i32 %i.cu to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.da
  br label %.lr.ph.i

bb.s:                                             ; preds = %.lr.ph.i
  %i.dc = getelementptr inbounds nuw i8, ptr %.02531.i, i64 4 ; 2 uses
  %.not.i34 = icmp ult ptr %i.dc, %i.cz
  br i1 %.not.i34, label %.lr.ph.i, label %_upb_Decoder_DecodeWireValue.exit.thread.thread, !llvm.loop !0

.lr.ph.i:                                         ; preds = %bb.s, %.lr.ph.preheader.i
  %.02531.i = phi ptr [ %i.dc, %bb.s ], [ %i.db, %.lr.ph.preheader.i ] ; 2 uses
  %i.dd = load i32, ptr %.02531.i, align 4, !tbaa !8
  %i.de = icmp eq i32 %i.dd, %i.ck
  br i1 %i.de, label %_upb_Decoder_Munge.exit, label %bb.s

bb.t:                                             ; preds = %bb.q
  %i.df = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0.182, 5
  %i.dg = and i64 %i.df, 134217727
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !8
  %i.dj = and i32 %i.ck, 31
  %i.dk = shl nuw i32 1, %i.dj
  %i.dl = and i32 %i.di, %i.dk
  %.not455 = icmp eq i32 %i.dl, 0
  br i1 %.not455, label %_upb_Decoder_DecodeWireValue.exit.thread.thread, label %_upb_Decoder_Munge.exit

bb.u:                                             ; preds = %upb_WireReader_ReadVarint.exit
  %i.dm = icmp ne i64 %.sroa.0.0..sroa.0.0..sroa.0.0.182, 0
  %i.dn = zext i1 %i.dm to i8                     ; 2 uses
  store i8 %i.dn, ptr %.sroa.0, align 8, !tbaa !24
  br label %_upb_Decoder_Munge.exit

bb.v:                                             ; preds = %upb_WireReader_ReadVarint.exit
  %i.do = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0.182 to i32 ; 2 uses
  %i.dp = lshr i32 %i.do, 1
  %i.dq = and i32 %i.do, 1
  %i.dr = sub nsw i32 0, %i.dq
  %i.ds = xor i32 %i.dp, %i.dr                    ; 2 uses
  store i32 %i.ds, ptr %.sroa.0, align 8, !tbaa !24
  %i.dt = trunc i32 %i.ds to i8
  br label %_upb_Decoder_Munge.exit

bb.w:                                             ; preds = %upb_WireReader_ReadVarint.exit
  %i.du = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0.182, 1
  %i.dv = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0.182, 1
  %i.dw = sub nsw i64 0, %i.dv
  %i.dx = xor i64 %i.du, %i.dw                    ; 2 uses
  store i64 %i.dx, ptr %.sroa.0, align 8, !tbaa !24
  %i.dy = trunc i64 %i.dx to i8
  br label %_upb_Decoder_Munge.exit

_upb_Decoder_Munge.exit:                          ; preds = %.lr.ph.i, %.split, %upb_WireReader_ReadVarint.exit, %bb.w, %bb.v, %bb.u, %bb.t
  %.sroa.0.0..sroa.0.0..sroa.0.0.180295 = phi i8 [ %.sroa.0.0..sroa.0.0..sroa.0.0.180296, %.split ], [ %.sroa.0.0..sroa.0.0..sroa.0.0.180296, %upb_WireReader_ReadVarint.exit ], [ %i.dy, %bb.w ], [ %i.dt, %bb.v ], [ %i.dn, %bb.u ], [ %.sroa.0.0..sroa.0.0..sroa.0.0.180296, %bb.t ], [ %.sroa.0.0..sroa.0.0..sroa.0.0.180296, %.lr.ph.i ]
  %i.dz = zext i8 %.val to i64
  %i.ea = getelementptr inbounds nuw i8, ptr @_upb_Decoder_GetVarintOp.kVarintOps, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !24
  br label %_upb_Decoder_DecodeWireValue.exit

bb.x:                                             ; preds = %_upb_Decoder_FindField.exit
  %i.ec = getelementptr inbounds nuw i8, ptr %.0.i27, i64 10
  %i.ed = load i8, ptr %i.ec, align 2, !tbaa !31
  %i.ee = zext nneg i8 %i.ed to i32
  %i.ef = shl nuw i32 1, %i.ee
  %i.eg = and i32 %i.ef, 32900
  %i.eh = icmp eq i32 %i.eg, 0
  %.0.copyload.i = load i32, ptr %.0.i16, align 1 ; 2 uses
  store i32 %.0.copyload.i, ptr %.sroa.0, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %.0.i16, i64 4 ; 2 uses
  %i.ej = trunc i32 %.0.copyload.i to i8
  br i1 %i.eh, label %_upb_Decoder_DecodeWireValue.exit.thread.thread, label %_upb_Decoder_DecodeWireValue.exit.thread248

bb.y:                                             ; preds = %_upb_Decoder_FindField.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %.0.i27, i64 10
  %i.el = load i8, ptr %i.ek, align 2, !tbaa !31
  %i.em = zext nneg i8 %i.el to i32
  %i.en = shl nuw i32 1, %i.em
  %i.eo = and i32 %i.en, 65602
  %i.ep = icmp eq i32 %i.eo, 0
  %.0.copyload.i35 = load i64, ptr %.0.i16, align 1 ; 2 uses
  store i64 %.0.copyload.i35, ptr %.sroa.0, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.i16, i64 8 ; 2 uses
  %i.er = trunc i64 %.0.copyload.i35 to i8
  br i1 %i.ep, label %_upb_Decoder_DecodeWireValue.exit.thread.thread, label %_upb_Decoder_DecodeWireValue.exit.thread248

bb.z:                                             ; preds = %_upb_Decoder_FindField.exit
  %i.es = load i8, ptr %.0.i16, align 1, !tbaa !24 ; 3 uses
  %i.et = icmp sgt i8 %i.es, -1
  br i1 %i.et, label %bb.aa, label %upb_EpsCopyInputStream_HasErrorHandler.exit.i38, !prof !22

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
  %.0211 = phi i32 [ %i.eu, %bb.aa ], [ %i.fa, %upb_EpsCopyInputStream_HasErrorHandler.exit.i38 ] ; 2 uses
  %.0.i21 = phi ptr [ %i.ev, %bb.aa ], [ %i.ey, %upb_EpsCopyInputStream_HasErrorHandler.exit.i38 ] ; 7 uses
  store i32 %.0211, ptr %.sroa.0, align 8, !tbaa !8
  %i.fb = getelementptr inbounds nuw i8, ptr %.0.i27, i64 10
  %i.fc = load i8, ptr %i.fb, align 2, !tbaa !31  ; 2 uses
  %5 = zext i8 %i.fc to i32                       ; 2 uses
  %i.fd = getelementptr i8, ptr %.0.i27, i64 11
  %.val.i = load i8, ptr %i.fd, align 1, !tbaa !33 ; 3 uses
  %i.fe = and i8 %.val.i, 3
  %i.ff = icmp eq i8 %i.fe, 1
  %6 = add nuw nsw i32 %5, 19
  %spec.select.i = select i1 %i.ff, i32 %6, i32 %5 ; 2 uses
  %7 = zext nneg i32 %spec.select.i to i64        ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr @_upb_Decoder_GetDelimitedOp.kDelimitedOps, i64 %7
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !24  ; 5 uses
  %i.fi = shl nuw i64 1, %7
  %i.fj = and i64 %i.fi, 1611139072
  %.not.i40 = icmp eq i64 %i.fj, 0
  %i.fk = trunc i32 %.0211 to i8                  ; 6 uses
  br i1 %.not.i40, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %upb_WireReader_ReadSize.exit
  %i.fl = and i8 %.val.i, 8
  %.not.i.i41 = icmp eq i8 %i.fl, 0
  br i1 %.not.i.i41, label %bb.ac, label %_upb_Decoder_DecodeWireValue.exit

bb.ac:                                            ; preds = %bb.ab
  %i.fm = getelementptr inbounds nuw i8, ptr %.0.i27, i64 8
  %i.fn = load i16, ptr %i.fm, align 4, !tbaa !32
  %i.fo = zext i16 %i.fn to i64
  %i.fp = shl nuw nsw i64 %i.fo, 2
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.i27, i64 %i.fp
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !24
  %.not4.i.i = icmp eq ptr %i.fr, null
  br i1 %.not4.i.i, label %_upb_Decoder_DecodeWireValue.exit.thread.thread, label %_upb_Decoder_DecodeWireValue.exit

bb.ad:                                            ; preds = %upb_WireReader_ReadSize.exit
  switch i32 %spec.select.i, label %_upb_Decoder_DecodeWireValue.exit [
    i32 31, label %bb.ae
    i32 12, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.ad
  %i.fs = icmp eq i8 %i.fc, 12
  call void @llvm.assume(i1 %i.fs)
  %i.ft = and i8 %.val.i, 16
  %.not.i9.i = icmp eq i8 %i.ft, 0
  br i1 %.not.i9.i, label %_upb_Decoder_DecodeWireValue.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fu = load i16, ptr %i.k, align 8, !tbaa !34
  %i.fv = and i16 %i.fu, 8
  %.not6.i.i = icmp eq i16 %i.fv, 0
  br i1 %.not6.i.i, label %_upb_Decoder_DecodeWireValue.exit, label %_upb_Decoder_DecodeWireValue.exit.thread248

bb.ag:                                            ; preds = %_upb_Decoder_FindField.exit
  %i.fw = load i32, ptr %.0.i27, align 4, !tbaa !28 ; 2 uses
  store i32 %i.fw, ptr %.sroa.0, align 8, !tbaa !24
  %i.fx = getelementptr inbounds nuw i8, ptr %.0.i27, i64 10
  %i.fy = load i8, ptr %i.fx, align 2, !tbaa !31
  %i.fz = trunc i32 %i.fw to i8                   ; 2 uses
  switch i8 %i.fy, label %_upb_Decoder_DecodeWireValue.exit.thread.thread [
    i8 10, label %bb.ah
    i8 19, label %_upb_Decoder_DecodeWireValue.exit.thread.thread281.preheader
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.ga = getelementptr inbounds nuw i8, ptr %.0.i27, i64 11
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !33
  %i.gc = and i8 %i.gb, 8
  %.not.i20 = icmp eq i8 %i.gc, 0
  br i1 %.not.i20, label %bb.ai, label %_upb_Decoder_DecodeWireValue.exit.thread248

bb.ai:                                            ; preds = %bb.ah
  %i.gd = getelementptr inbounds nuw i8, ptr %.0.i27, i64 8
  %i.ge = load i16, ptr %i.gd, align 4, !tbaa !32
  %i.gf = zext i16 %i.ge to i64
  %i.gg = shl nuw nsw i64 %i.gf, 2
  %i.gh = getelementptr inbounds nuw i8, ptr %.0.i27, i64 %i.gg
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !24
  %.not4.i = icmp eq ptr %i.gi, null
  br i1 %.not4.i, label %_upb_Decoder_DecodeWireValue.exit.thread.thread, label %_upb_Decoder_DecodeWireValue.exit.thread248

bb.aj:                                            ; preds = %_upb_Decoder_FindField.exit
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.gj, i32 noundef 2) #13
  unreachable

_upb_Decoder_DecodeWireValue.exit:                ; preds = %bb.af, %bb.ac, %bb.ae, %bb.ad, %bb.ab, %_upb_Decoder_Munge.exit
  %.sroa.0.0..sroa.0.0..sroa.0.0.180294 = phi i8 [ %.sroa.0.0..sroa.0.0..sroa.0.0.180295, %_upb_Decoder_Munge.exit ], [ %i.fk, %bb.ac ], [ %i.fk, %bb.ae ], [ %i.fk, %bb.ad ], [ %i.fk, %bb.ab ], [ %i.fk, %bb.af ]
  %.1.in = phi i8 [ %i.eb, %_upb_Decoder_Munge.exit ], [ %i.fh, %bb.ac ], [ %i.fh, %bb.ae ], [ %i.fh, %bb.ad ], [ %i.fh, %bb.ab ], [ %i.fh, %bb.af ] ; 3 uses
  %.1.i = phi ptr [ %.0.i19, %_upb_Decoder_Munge.exit ], [ %.0.i21, %bb.ac ], [ %.0.i21, %bb.ae ], [ %.0.i21, %bb.ad ], [ %.0.i21, %bb.ab ], [ %.0.i21, %bb.af ] ; 3 uses
  %.1 = zext nneg i8 %.1.in to i32
  %i.gk = icmp sgt i8 %.1.in, -1
  br i1 %i.gk, label %_upb_Decoder_DecodeWireValue.exit.thread248, label %_upb_Decoder_DecodeWireValue.exit.thread

_upb_Decoder_DecodeWireValue.exit.thread248:      ; preds = %bb.ah, %bb.ai, %bb.y, %bb.x, %bb.af, %_upb_Decoder_DecodeWireValue.exit
  %.sroa.0.0..sroa.0.0..sroa.0.0.180 = phi i8 [ %.sroa.0.0..sroa.0.0..sroa.0.0.180294, %_upb_Decoder_DecodeWireValue.exit ], [ %i.fk, %bb.af ], [ %i.fz, %bb.ai ], [ %i.fz, %bb.ah ], [ %i.er, %bb.y ], [ %i.ej, %bb.x ]
  %.1.i252 = phi ptr [ %.1.i, %_upb_Decoder_DecodeWireValue.exit ], [ %.0.i21, %bb.af ], [ %.0.i16, %bb.ai ], [ %.0.i16, %bb.ah ], [ %i.eq, %bb.y ], [ %i.ei, %bb.x ] ; 24 uses
  %.1251 = phi i32 [ %.1, %_upb_Decoder_DecodeWireValue.exit ], [ 4, %bb.af ], [ 6, %bb.ai ], [ 6, %bb.ah ], [ 3, %bb.y ], [ 2, %bb.x ] ; 7 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.0.i27, i64 11
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !33
  %i.gn = zext i8 %i.gm to i32                    ; 2 uses
  %i.go = and i32 %i.gn, 8
  %.not.i = icmp eq i32 %i.go, 0
  br i1 %.not.i, label %bb.an, label %bb.ak, !prof !22

bb.ak:                                            ; preds = %_upb_Decoder_DecodeWireValue.exit.thread248
  %i.gp = call ptr @_upb_Message_GetOrCreateExtension_dont_copy_me__upb_internal_use_only(ptr noundef %2, ptr noundef nonnull %.0.i27, ptr noundef nonnull %i.p) #12 ; 2 uses
  %.not30.i = icmp eq ptr %i.gp, null
  br i1 %.not30.i, label %bb.al, label %bb.am, !prof !35

bb.al:                                            ; preds = %bb.ak
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.gq, i32 noundef 1) #13
  unreachable

bb.am:                                            ; preds = %bb.ak
  store ptr %2, ptr %i.q, align 8, !tbaa !36
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %_upb_Decoder_DecodeWireValue.exit.thread248
  %.029.i = phi ptr [ %i.gr, %bb.am ], [ %2, %_upb_Decoder_DecodeWireValue.exit.thread248 ] ; 5 uses
  %i.gs = and i32 %i.gn, 3
  %i.gt = getelementptr inbounds nuw i8, ptr %.0.i27, i64 4
  %i.gu = load i16, ptr %i.gt, align 4, !tbaa !75
  %i.gv = zext i16 %i.gu to i64
  %i.gw = getelementptr inbounds nuw i8, ptr %.029.i, i64 %i.gv ; 13 uses
  switch i32 %i.gs, label %.unreachabledefault.i [
    i32 1, label %bb.ao
    i32 0, label %bb.cm
    i32 2, label %bb.df
  ]

bb.ao:                                            ; preds = %bb.an
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !77 ; 6 uses
  %.not.i43 = icmp eq ptr %i.gx, null
  br i1 %.not.i43, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !38 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !39
  %i.hc = icmp eq i64 %i.gz, %i.hb
  br i1 %i.hc, label %bb.aq, label %_upb_Decoder_Reserve.exit96

bb.aq:                                            ; preds = %bb.ap
  %i.hd = add i64 %i.gz, 1
  %i.he = call zeroext i1 @_upb_Array_Realloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.gx, i64 noundef %i.hd, ptr noundef nonnull %i.p) #12
  br i1 %i.he, label %_upb_Decoder_Reserve.exit96, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.hf, i32 noundef 1) #13
  unreachable

bb.as:                                            ; preds = %bb.ao
  %i.hg = getelementptr i8, ptr %.0.i27, i64 10
  %.val74.i = load i8, ptr %i.hg, align 2, !tbaa !31
  %i.hh = zext i8 %.val74.i to i64
  %i.hi = add nuw nsw i64 %i.hh, 4294967295
  %i.hj = and i64 %i.hi, 4294967295               ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr @_upb_FieldType_SizeLg2_dont_copy_me__upb_internal_use_only.size, i64 %i.hj
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !24
  %8 = sext i8 %i.hl to i64                       ; 2 uses
  %9 = and i64 %8, 4294967295
  %i.hm = shl i64 4, %9
  %i.hn = add nuw i64 %i.hm, 28
  %i.ho = and i64 %i.hn, -8                       ; 3 uses
  %.val.i.i.i.i91 = load ptr, ptr %i.p, align 8, !tbaa !41 ; 4 uses
  %.val11.i.i.i.i92 = load ptr, ptr %i.r, align 8, !tbaa !42
  %i.hp = ptrtoint ptr %.val11.i.i.i.i92 to i64
  %i.hq = ptrtoint ptr %.val.i.i.i.i91 to i64
  %i.hr = sub i64 %i.hp, %i.hq
  %i.hs = icmp ult i64 %i.hr, %i.ho
  br i1 %i.hs, label %upb_Arena_Malloc.exit.i.i.i94, label %upb_Arena_Malloc.exit.thread.i.i.i93, !prof !35

upb_Arena_Malloc.exit.thread.i.i.i93:             ; preds = %bb.as
  %i.ht = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i91, i64 %i.ho
  store ptr %i.ht, ptr %i.p, align 8, !tbaa !41
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i91) ]
  br label %_upb_Decoder_CreateArray.exit

upb_Arena_Malloc.exit.i.i.i94:                    ; preds = %bb.as
  %i.hu = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.p, i64 noundef %i.ho) #12 ; 2 uses
  %.not.i.i.i95 = icmp eq ptr %i.hu, null
  br i1 %.not.i.i.i95, label %bb.at, label %_upb_Decoder_CreateArray.exit

bb.at:                                            ; preds = %upb_Arena_Malloc.exit.i.i.i94
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.hv, i32 noundef 1) #13
  unreachable

_upb_Decoder_CreateArray.exit:                    ; preds = %upb_Arena_Malloc.exit.thread.i.i.i93, %upb_Arena_Malloc.exit.i.i.i94
  %.0.i19.i.i.i = phi ptr [ %.val.i.i.i.i91, %upb_Arena_Malloc.exit.thread.i.i.i93 ], [ %i.hu, %upb_Arena_Malloc.exit.i.i.i94 ] ; 6 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.0.i19.i.i.i, i64 24
  %i.hx = icmp ne i64 %i.hj, 7
  %.neg.i.i.i.i = sext i1 %i.hx to i64
  %i.hy = add nsw i64 %.neg.i.i.i.i, %8
  %i.hz = ptrtoint ptr %i.hw to i64
  %i.ia = or i64 %i.hy, %i.hz
  store i64 %i.ia, ptr %.0.i19.i.i.i, align 8, !tbaa !43
  %i.ib = getelementptr inbounds nuw i8, ptr %.0.i19.i.i.i, i64 8
  store i64 0, ptr %i.ib, align 8, !tbaa !39
  %i.ic = getelementptr inbounds nuw i8, ptr %.0.i19.i.i.i, i64 16
  store i64 4, ptr %i.ic, align 8, !tbaa !38
  store ptr %.0.i19.i.i.i, ptr %i.gw, align 8, !tbaa !77
  br label %_upb_Decoder_Reserve.exit96

_upb_Decoder_Reserve.exit96:                      ; preds = %bb.aq, %bb.ap, %_upb_Decoder_CreateArray.exit
  %.069.i = phi ptr [ %.0.i19.i.i.i, %_upb_Decoder_CreateArray.exit ], [ %i.gx, %bb.ap ], [ %i.gx, %bb.aq ] ; 18 uses
  switch i32 %.1251, label %bb.cl [
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

bb.au:                                            ; preds = %_upb_Decoder_Reserve.exit96, %_upb_Decoder_Reserve.exit96, %_upb_Decoder_Reserve.exit96
  %.069.val80.i = load i64, ptr %.069.i, align 8, !tbaa !43
  %i.id = and i64 %.069.val80.i, -8
  %i.ie = inttoptr i64 %i.id to ptr
  %i.if = getelementptr inbounds nuw i8, ptr %.069.i, i64 8 ; 2 uses
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !39 ; 2 uses
  %i.ih = zext nneg i32 %.1251 to i64
  %i.ii = shl i64 %i.ig, %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.ii
  %i.ik = add i64 %i.ig, 1
  store i64 %i.ik, ptr %i.if, align 8, !tbaa !39
  %i.il = shl nuw nsw i32 1, %.1251
  %i.im = zext nneg i32 %i.il to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ij, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0, i64 %i.im, i1 false)
  br label %_upb_Decoder_DecodeField.exit

bb.av:                                            ; preds = %_upb_Decoder_Reserve.exit96
  %.069.val79.i = load i64, ptr %.069.i, align 8, !tbaa !43
  %i.in = and i64 %.069.val79.i, -8
  %i.io = inttoptr i64 %i.in to ptr
  %i.ip = getelementptr inbounds nuw i8, ptr %.069.i, i64 8 ; 3 uses
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !39
  %i.ir = getelementptr inbounds nuw [16 x i8], ptr %i.io, i64 %i.iq
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.174 = load i32, ptr %.sroa.0, align 8, !tbaa !24
  %i.is = call fastcc ptr @_upb_Decoder_ReadString2(ptr noundef nonnull %0, ptr noundef %.1.i252, i32 noundef %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.174, ptr noundef %i.ir, i1 noundef zeroext true), !inline_history !62
  %i.it = load i64, ptr %i.ip, align 8, !tbaa !39
  %i.iu = add i64 %i.it, 1
  store i64 %i.iu, ptr %i.ip, align 8, !tbaa !39
  br label %_upb_Decoder_DecodeField.exit

bb.aw:                                            ; preds = %_upb_Decoder_Reserve.exit96
  %.069.val78.i = load i64, ptr %.069.i, align 8, !tbaa !43
  %i.iv = and i64 %.069.val78.i, -8
  %i.iw = inttoptr i64 %i.iv to ptr
  %i.ix = getelementptr inbounds nuw i8, ptr %.069.i, i64 8 ; 3 uses
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !39
  %i.iz = getelementptr inbounds nuw [16 x i8], ptr %i.iw, i64 %i.iy ; 2 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.173 = load i32, ptr %.sroa.0, align 8, !tbaa !24
  %i.ja = sext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.173 to i64 ; 5 uses
  %i.jb = load ptr, ptr %0, align 8, !tbaa !20
  %i.jc = load i64, ptr %i.l, align 8, !tbaa !44  ; 2 uses
  %i.jd = icmp eq i64 %i.jc, 0
  %i.je = select i1 %i.jd, i64 16, i64 0
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.je
  %i.jg = ptrtoint ptr %i.jf to i64
  %i.jh = ptrtoint ptr %.1.i252 to i64            ; 2 uses
  %i.ji = sub i64 %i.jg, %i.jh
  %i.jj = icmp slt i64 %i.ji, %i.ja
  br i1 %i.jj, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.jk = call ptr @upb_EpsCopyInputStream_ReturnError_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %0) #12
  br label %upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit.i.i

bb.ay:                                            ; preds = %bb.aw
  %.val14.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !45 ; 2 uses
  %i.jl = ptrtoint ptr %.val14.i.i.i to i64
  %i.jm = sub i64 %i.jc, %i.jl
  %i.jn = getelementptr i8, ptr %.val14.i.i.i, i64 %i.jm
  %i.jo = getelementptr i8, ptr %i.jn, i64 %i.jh
  %i.jp = getelementptr inbounds nuw i8, ptr %.1.i252, i64 %i.ja
  br label %upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit.i.i

upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit.i.i: ; preds = %bb.ay, %bb.ax
  %.sroa.0.1.i.i = phi ptr [ undef, %bb.ax ], [ %i.jo, %bb.ay ] ; 2 uses
  %.0.i.i.i90 = phi ptr [ %i.jk, %bb.ax ], [ %i.jp, %bb.ay ] ; 2 uses
  %i.jq = icmp eq ptr %.0.i.i.i90, null
  br i1 %i.jq, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit.i.i
  %i.jr = load i16, ptr %i.k, align 8, !tbaa !34
  %i.js = and i16 %i.jr, 1
  %i.jt = icmp eq i16 %i.js, 0
  br i1 %i.jt, label %bb.ba, label %_upb_Decoder_ReadString2.exit

bb.ba:                                            ; preds = %bb.az
  %i.ju = add nsw i64 %i.ja, 7
  %i.jv = and i64 %i.ju, -8                       ; 3 uses
  %.val.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !41 ; 4 uses
  %.val11.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !42
  %i.jw = ptrtoint ptr %.val11.i.i.i to i64
  %i.jx = ptrtoint ptr %.val.i.i.i to i64
  %i.jy = sub i64 %i.jw, %i.jx
  %i.jz = icmp ult i64 %i.jy, %i.jv
  br i1 %i.jz, label %upb_Arena_Malloc.exit.i.i, label %upb_Arena_Malloc.exit.thread.i.i, !prof !35

upb_Arena_Malloc.exit.thread.i.i:                 ; preds = %bb.ba
  %i.ka = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.jv
  store ptr %i.ka, ptr %i.p, align 8, !tbaa !41
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  br label %bb.bb

upb_Arena_Malloc.exit.i.i:                        ; preds = %bb.ba
  %i.kb = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.p, i64 noundef %i.jv) #12 ; 2 uses
  %.not16.not.i.i = icmp eq ptr %i.kb, null
  br i1 %.not16.not.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %upb_Arena_Malloc.exit.i.i, %upb_Arena_Malloc.exit.thread.i.i
  %.0.i1723.i.i = phi ptr [ %.val.i.i.i, %upb_Arena_Malloc.exit.thread.i.i ], [ %i.kb, %upb_Arena_Malloc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i1723.i.i, ptr align 1 %.sroa.0.1.i.i, i64 range(i64 -2147483648, 2147483648) %i.ja, i1 false)
  br label %_upb_Decoder_ReadString2.exit

bb.bc:                                            ; preds = %upb_Arena_Malloc.exit.i.i, %upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit.i.i
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.kc, i32 noundef 1) #13
  unreachable

_upb_Decoder_ReadString2.exit:                    ; preds = %bb.az, %bb.bb
  %.sroa.0.0.i.i = phi ptr [ %.0.i1723.i.i, %bb.bb ], [ %.sroa.0.1.i.i, %bb.az ]
  store ptr %.sroa.0.0.i.i, ptr %i.iz, align 8, !tbaa !46
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  store i64 %i.ja, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !tbaa !30
  %i.kd = load i64, ptr %i.ix, align 8, !tbaa !39
  %i.ke = add i64 %i.kd, 1
  store i64 %i.ke, ptr %i.ix, align 8, !tbaa !39
  br label %_upb_Decoder_DecodeField.exit

bb.bd:                                            ; preds = %_upb_Decoder_Reserve.exit96
  %.069.val77.i = load i64, ptr %.069.i, align 8, !tbaa !43
  %i.kf = and i64 %.069.val77.i, -8
  %i.kg = inttoptr i64 %i.kf to ptr
  %i.kh = getelementptr inbounds nuw i8, ptr %.069.i, i64 8 ; 3 uses
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !39
  %i.kj = shl i64 %i.ki, 3
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.kj
  %i.kl = getelementptr inbounds nuw i8, ptr %.0.i27, i64 8 ; 3 uses
  %i.km = load i16, ptr %i.kl, align 4, !tbaa !32
  %i.kn = zext i16 %i.km to i64
  %i.ko = shl nuw nsw i64 %i.kn, 2
  %i.kp = getelementptr inbounds nuw i8, ptr %.0.i27, i64 %i.ko
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !24
  %i.kr = getelementptr i8, ptr %i.kq, i64 8
  %.val.i89 = load i16, ptr %i.kr, align 8, !tbaa !26
  %i.ks = zext i16 %.val.i89 to i64               ; 5 uses
  %i.kt = and i64 %i.ks, 7
  %i.ku = icmp eq i64 %i.kt, 0
  call void @llvm.assume(i1 %i.ku)
  %.val.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !41 ; 4 uses
  %.val11.i.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !42
  %i.kv = ptrtoint ptr %.val11.i.i.i.i to i64
  %i.kw = ptrtoint ptr %.val.i.i.i.i to i64
  %i.kx = sub i64 %i.kv, %i.kw
  %i.ky = icmp ult i64 %i.kx, %i.ks
  br i1 %i.ky, label %upb_Arena_Malloc.exit.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i.i, !prof !35

upb_Arena_Malloc.exit.thread.i.i.i:               ; preds = %bb.bd
  %i.kz = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.ks
  store ptr %i.kz, ptr %i.p, align 8, !tbaa !41
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  br label %_upb_Decoder_NewSubMessage.exit

upb_Arena_Malloc.exit.i.i.i:                      ; preds = %bb.bd
  %i.la = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.p, i64 noundef %i.ks) #12 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.la, null
  br i1 %.not.i.i.i, label %bb.be, label %_upb_Decoder_NewSubMessage.exit, !prof !47

bb.be:                                            ; preds = %upb_Arena_Malloc.exit.i.i.i
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.lb, i32 noundef 1) #13
  unreachable

_upb_Decoder_NewSubMessage.exit:                  ; preds = %upb_Arena_Malloc.exit.thread.i.i.i, %upb_Arena_Malloc.exit.i.i.i
  %.0.i3.i.i.i = phi ptr [ %.val.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i ], [ %i.la, %upb_Arena_Malloc.exit.i.i.i ] ; 4 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i3.i.i.i, i8 0, i64 %i.ks, i1 false)
  store ptr %.0.i3.i.i.i, ptr %i.kk, align 8, !tbaa !48
  %i.lc = load i64, ptr %i.kh, align 8, !tbaa !39
  %i.ld = add i64 %i.lc, 1
  store i64 %i.ld, ptr %i.kh, align 8, !tbaa !39
  %i.le = getelementptr inbounds nuw i8, ptr %.0.i27, i64 10
  %i.lf = load i8, ptr %i.le, align 2, !tbaa !31
end_hunk_0
