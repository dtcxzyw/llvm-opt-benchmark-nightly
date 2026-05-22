inline.NumInlined: 44
inline.NumDeleted: 23
begin_hunk_0_@upb_MtDecoder_BuildMiniTableEnum:bb.a
bb.t:                                             ; preds = %upb_Arena_Malloc.exit.i.i70.i
  store ptr null, ptr %i.f, align 8, !tbaa !20
  call void (ptr, ptr, ...) @upb_MdDecoder_ErrorJmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #13
  unreachable

upb_MdDecoder_CheckOutOfMemory.exit.i57.i:        ; preds = %bb.s, %upb_Arena_ShrinkLast.exit.i.i60.i, %.critedge.i.i55.i, %bb.r
  %.pre27.i58.i = phi i32 [ %.pre27.pre.i69.i, %bb.s ], [ %i.al, %upb_Arena_ShrinkLast.exit.i.i60.i ], [ %i.al, %.critedge.i.i55.i ], [ %i.al, %bb.r ]
  %.034.i.ph.i59.i = phi ptr [ %.0.i4448.i.i68.i, %bb.s ], [ %i.ac, %upb_Arena_ShrinkLast.exit.i.i60.i ], [ %i.ac, %.critedge.i.i55.i ], [ %i.ac, %bb.r ] ; 3 uses
  store ptr %.034.i.ph.i59.i, ptr %i.f, align 8, !tbaa !20
  store i32 %spec.select.i52.i, ptr %i.o, align 8, !tbaa !21
  br label %_upb_MiniTable_AddEnumDataMember.exit77.i

_upb_MiniTable_AddEnumDataMember.exit77.i:        ; preds = %upb_MdDecoder_CheckOutOfMemory.exit.i57.i, %bb.m
  %.pre.i108.i = phi ptr [ %.034.i.ph.i59.i, %upb_MdDecoder_CheckOutOfMemory.exit.i57.i ], [ %.pre.i109.i, %bb.m ]
  %i.br = phi ptr [ %.034.i.ph.i59.i, %upb_MdDecoder_CheckOutOfMemory.exit.i57.i ], [ %i.ac, %bb.m ] ; 3 uses
  %i.bs = phi i32 [ %.pre27.i58.i, %upb_MdDecoder_CheckOutOfMemory.exit.i57.i ], [ %i.al, %bb.m ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = add i32 %i.bs, 1
  store i32 %i.bu, ptr %i.n, align 4, !tbaa !25
  %i.bv = zext i32 %i.bs to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.bv
  store i32 %.191.i, ptr %i.bw, align 4, !tbaa !3
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 4 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3
  %i.bz = add i32 %i.by, 1
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !3
  br label %upb_MiniTableEnum_BuildValue.exit.i

bb.u:                                             ; preds = %bb.l
  %i.ca = and i32 %.191.i, -32
  %i.cb = add i32 %i.ca, 32                       ; 2 uses
  %i.cc = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.cd = icmp ult i32 %i.cc, %i.cb
  br i1 %i.cd, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.u, %_upb_MiniTable_AddEnumDataMember.exit.i
  %i.ce = phi ptr [ %.pre.i113.i, %_upb_MiniTable_AddEnumDataMember.exit.i ], [ %.pre.i109.i, %bb.u ] ; 8 uses
  %i.cf = load i32, ptr %i.n, align 4, !tbaa !25  ; 9 uses
  %i.cg = load i32, ptr %i.o, align 8, !tbaa !21
  %i.ch = icmp eq i32 %i.cf, %i.cg
  br i1 %i.ch, label %bb.v, label %_upb_MiniTable_AddEnumDataMember.exit.i

bb.v:                                             ; preds = %.lr.ph.i.i
  %i.ci = zext i32 %i.cf to i64
  %i.cj = shl nuw nsw i64 %i.ci, 2                ; 3 uses
  %i.ck = icmp slt i32 %i.cf, 0
  br i1 %i.ck, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void (ptr, ptr, ...) @upb_MdDecoder_ErrorJmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #13
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.cl = icmp eq i32 %i.cf, 0
  %i.cm = shl nuw i32 %i.cf, 1
  %spec.select.i.i = select i1 %i.cl, i32 2, i32 %i.cm ; 2 uses
  %i.cn = zext i32 %spec.select.i.i to i64
  %i.co = shl nuw nsw i64 %i.cn, 2                ; 5 uses
  %i.cp = load ptr, ptr %i.p, align 8, !tbaa !12  ; 9 uses
  %.not.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i, label %.upb_Arena_TryExtend.exit.thread_crit_edge.i.i.i, label %bb.y

.upb_Arena_TryExtend.exit.thread_crit_edge.i.i.i: ; preds = %bb.x
  %.val.i43.pre.i.i.i = load ptr, ptr %i.cp, align 8, !tbaa !16
  %.pre.i.i.i = add nuw nsw i64 %i.co, 8
  br label %upb_Arena_TryExtend.exit.thread.i.i.i

bb.y:                                             ; preds = %bb.x
  %.not40.i.i.i = icmp samesign ugt i64 %i.co, %i.cj
  %i.cq = add nuw nsw i64 %i.cj, 12
  %i.cr = and i64 %i.cq, 17179869176              ; 4 uses
  br i1 %.not40.i.i.i, label %bb.z, label %.critedge.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.cs = add nuw nsw i64 %i.co, 8                ; 3 uses
  %i.ct = sub nsw i64 %i.cs, %i.cr                ; 2 uses
  %.val14.i.i.i.i = load ptr, ptr %i.cp, align 8, !tbaa !16 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cr ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %.val14.i.i.i.i
  br i1 %i.cv, label %bb.aa, label %upb_Arena_TryExtend.exit.thread.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.cw = getelementptr i8, ptr %i.cp, i64 8
  %.val13.i.i.i.i = load ptr, ptr %i.cw, align 8, !tbaa !18
  %i.cx = ptrtoint ptr %.val13.i.i.i.i to i64
  %i.cy = ptrtoint ptr %i.cu to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %.not.i.i.i.i = icmp ult i64 %i.cz, %i.ct
  br i1 %.not.i.i.i.i, label %upb_Arena_TryExtend.exit.thread.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = getelementptr inbounds nuw i8, ptr %.val14.i.i.i.i, i64 %i.ct
  store ptr %i.da, ptr %i.cp, align 8, !tbaa !16
  br label %upb_MdDecoder_CheckOutOfMemory.exit.i.i

.critedge.i.i.i:                                  ; preds = %bb.y
  %.val.i.i.i = load ptr, ptr %i.cp, align 8, !tbaa !16 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cr
  %i.dc = icmp eq ptr %i.db, %.val.i.i.i
  br i1 %i.dc, label %upb_Arena_ShrinkLast.exit.i.i.i, label %upb_MdDecoder_CheckOutOfMemory.exit.i.i

upb_Arena_ShrinkLast.exit.i.i.i:                  ; preds = %.critedge.i.i.i
  %i.dd = add nuw nsw i64 %i.co, 8
  %.neg.i.i.i.i = sub nsw i64 %i.dd, %i.cr
  %i.de = getelementptr inbounds i8, ptr %.val.i.i.i, i64 %.neg.i.i.i.i
  store ptr %i.de, ptr %i.cp, align 8, !tbaa !16
  br label %upb_MdDecoder_CheckOutOfMemory.exit.i.i

upb_Arena_TryExtend.exit.thread.i.i.i:            ; preds = %bb.aa, %bb.z, %.upb_Arena_TryExtend.exit.thread_crit_edge.i.i.i
  %.pre-phi54.i.i.i = phi i64 [ %.pre.i.i.i, %.upb_Arena_TryExtend.exit.thread_crit_edge.i.i.i ], [ %i.cs, %bb.z ], [ %i.cs, %bb.aa ] ; 3 uses
  %.val.i43.i.i.i = phi ptr [ %.val.i43.pre.i.i.i, %.upb_Arena_TryExtend.exit.thread_crit_edge.i.i.i ], [ %.val14.i.i.i.i, %bb.z ], [ %.val14.i.i.i.i, %bb.aa ] ; 4 uses
  %i.df = getelementptr i8, ptr %i.cp, i64 8
  %.val11.i.i.i.i = load ptr, ptr %i.df, align 8, !tbaa !18
  %i.dg = ptrtoint ptr %.val11.i.i.i.i to i64
  %i.dh = ptrtoint ptr %.val.i43.i.i.i to i64
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = icmp ult i64 %i.di, %.pre-phi54.i.i.i
  br i1 %i.dj, label %upb_Arena_Malloc.exit.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i.i, !prof !19

upb_Arena_Malloc.exit.thread.i.i.i:               ; preds = %upb_Arena_TryExtend.exit.thread.i.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %.val.i43.i.i.i, i64 %.pre-phi54.i.i.i
  store ptr %i.dk, ptr %i.cp, align 8, !tbaa !16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i43.i.i.i) ]
  br label %bb.ac

upb_Arena_Malloc.exit.i.i.i:                      ; preds = %upb_Arena_TryExtend.exit.thread.i.i.i
  %i.dl = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.cp, i64 noundef %.pre-phi54.i.i.i) #11 ; 2 uses
  %.not41.i.i.i = icmp eq ptr %i.dl, null
  br i1 %.not41.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %upb_Arena_Malloc.exit.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i
  %.0.i4448.i.i.i = phi ptr [ %.val.i43.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i ], [ %i.dl, %upb_Arena_Malloc.exit.i.i.i ] ; 2 uses
  %i.dm = call i64 @llvm.umin.i64(i64 %i.cj, i64 %i.co)
  %i.dn = add nuw nsw i64 %i.dm, 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i4448.i.i.i, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.ce, i64 %i.dn, i1 false)
  %.pre27.pre.i.i = load i32, ptr %i.n, align 4, !tbaa !25
  br label %upb_MdDecoder_CheckOutOfMemory.exit.i.i

bb.ad:                                            ; preds = %upb_Arena_Malloc.exit.i.i.i
  store ptr null, ptr %i.f, align 8, !tbaa !20
  call void (ptr, ptr, ...) @upb_MdDecoder_ErrorJmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #13
  unreachable

upb_MdDecoder_CheckOutOfMemory.exit.i.i:          ; preds = %bb.ac, %upb_Arena_ShrinkLast.exit.i.i.i, %.critedge.i.i.i, %bb.ab
  %.pre27.i.i = phi i32 [ %.pre27.pre.i.i, %bb.ac ], [ %i.cf, %upb_Arena_ShrinkLast.exit.i.i.i ], [ %i.cf, %.critedge.i.i.i ], [ %i.cf, %bb.ab ]
  %.034.i.ph.i.i = phi ptr [ %.0.i4448.i.i.i, %bb.ac ], [ %i.ce, %upb_Arena_ShrinkLast.exit.i.i.i ], [ %i.ce, %.critedge.i.i.i ], [ %i.ce, %bb.ab ] ; 2 uses
  store ptr %.034.i.ph.i.i, ptr %i.f, align 8, !tbaa !20
  store i32 %spec.select.i.i, ptr %i.o, align 8, !tbaa !21
  br label %_upb_MiniTable_AddEnumDataMember.exit.i

_upb_MiniTable_AddEnumDataMember.exit.i:          ; preds = %upb_MdDecoder_CheckOutOfMemory.exit.i.i, %.lr.ph.i.i
  %.pre.i113.i = phi ptr [ %.034.i.ph.i.i, %upb_MdDecoder_CheckOutOfMemory.exit.i.i ], [ %i.ce, %.lr.ph.i.i ] ; 6 uses
  %i.do = phi i32 [ %.pre27.i.i, %upb_MdDecoder_CheckOutOfMemory.exit.i.i ], [ %i.cf, %.lr.ph.i.i ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.pre.i113.i, i64 8
  %i.dq = add i32 %i.do, 1
  store i32 %i.dq, ptr %i.n, align 4, !tbaa !25
  %i.dr = zext i32 %i.do to i64
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.dr
  store i32 0, ptr %i.ds, align 4, !tbaa !3
  %i.dt = load i32, ptr %.pre.i113.i, align 4, !tbaa !3
  %i.du = add i32 %i.dt, 32                       ; 2 uses
  store i32 %i.du, ptr %.pre.i113.i, align 4, !tbaa !3
  %i.dv = icmp ult i32 %i.du, %i.cb
  br i1 %i.dv, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !26

._crit_edge.i.i:                                  ; preds = %_upb_MiniTable_AddEnumDataMember.exit.i, %bb.u
  %.pre.i111.i = phi ptr [ %.pre.i109.i, %bb.u ], [ %.pre.i113.i, %_upb_MiniTable_AddEnumDataMember.exit.i ]
  %i.dw = phi ptr [ %i.ac, %bb.u ], [ %.pre.i113.i, %_upb_MiniTable_AddEnumDataMember.exit.i ] ; 2 uses
  %i.dx = and i32 %.191.i, 31
  %i.dy = shl nuw i32 1, %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.ea = zext nneg i32 %i.aj to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.ea ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !3
  %i.ed = or i32 %i.ec, %i.dy
  store i32 %i.ed, ptr %i.eb, align 4, !tbaa !3
  br label %upb_MiniTableEnum_BuildValue.exit.i

upb_MiniTableEnum_BuildValue.exit.i:              ; preds = %._crit_edge.i.i, %_upb_MiniTable_AddEnumDataMember.exit77.i, %_upb_FromBase92.exit.i
  %.pre.i110.i = phi ptr [ %.pre.i111.i, %._crit_edge.i.i ], [ %.pre.i108.i, %_upb_MiniTable_AddEnumDataMember.exit77.i ], [ %.pre.i109.i, %_upb_FromBase92.exit.i ] ; 2 uses
  %i.ee = phi ptr [ %i.dw, %._crit_edge.i.i ], [ %i.br, %_upb_MiniTable_AddEnumDataMember.exit77.i ], [ %i.ac, %_upb_FromBase92.exit.i ] ; 2 uses
  %i.ef = add nuw nsw i32 %.093.i, 1              ; 2 uses
  %i.eg = add i32 %.191.i, 1                      ; 2 uses
  %i.eh = lshr i32 %.03792.i, 1
  %exitcond.not.i = icmp eq i32 %i.ef, 5
  br i1 %exitcond.not.i, label %.loopexit.loopexit.i, label %_upb_FromBase92.exit.i, !llvm.loop !28

bb.ae:                                            ; preds = %bb.h
  %i.ei = add nsw i8 %i.t, -95
  %or.cond.i = icmp ult i8 %i.ei, 32
  br i1 %or.cond.i, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.ej = ptrtoint ptr %i.s to i64
  %i.ek = ptrtoint ptr %i.q to i64
  %i.el = load i8, ptr getelementptr inbounds nuw (i8, ptr @_kUpb_FromBase92, i64 94), align 1, !tbaa !22
  %i.em = sext i8 %i.el to i32
  %i.en = load i8, ptr getelementptr inbounds nuw (i8, ptr @_kUpb_FromBase92, i64 63), align 1, !tbaa !22
  %i.eo = sext i8 %i.en to i32                    ; 3 uses
  %i.ep = sub nsw i32 %i.em, %i.eo                ; 2 uses
  %i.eq = add nsw i32 %i.ep, -1
  %i.er = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.eq, i1 false)
  %i.es = sub nuw nsw i32 32, %i.er
  %.narrow.inv.narrow.i.i.i.i = icmp sgt i32 %i.ep, 1
  %.0.i.i.i.i = select i1 %.narrow.inv.narrow.i.i.i.i, i32 %i.es, i32 0
  %i.et = sub i64 %i.ek, %i.ej
  %scevgep.i.i.i = getelementptr i8, ptr %i.s, i64 %i.et ; 2 uses
  %narrow = add nuw i8 %i.t, 96
  %i.eu = and i8 %narrow, 127
  %i.ev = zext nneg i8 %i.eu to i64
  %i.ew = getelementptr inbounds nuw i8, ptr @_kUpb_FromBase92, i64 %i.ev
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !22
  %i.ey = sext i8 %i.ex to i32
  %i.ez = sub nsw i32 %i.ey, %i.eo                ; 2 uses
  %i.fa = icmp eq ptr %i.s, %i.q
  br i1 %i.fa, label %upb_MdDecoder_DecodeBase92Varint.exit.i, label %.lr.ph

_upb_FromBase92.exit.i.i.i:                       ; preds = %bb.ag
  %i.fb = getelementptr inbounds nuw i8, ptr %.026.i.i.i70, i64 1 ; 2 uses
  %narrow74 = add nuw i8 %i.fm, 96
  %i.fc = and i8 %narrow74, 127
  %i.fd = zext nneg i8 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr @_kUpb_FromBase92, i64 %i.fd
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !22
  %i.fg = sext i8 %i.ff to i32
  %i.fh = sub nsw i32 %i.fg, %i.eo
  %i.fi = shl i32 %i.fh, %i.fo
  %i.fj = or i32 %i.fi, %i.fl                     ; 2 uses
  %i.fk = icmp eq ptr %i.fb, %i.q
  br i1 %i.fk, label %upb_MdDecoder_DecodeBase92Varint.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.af, %_upb_FromBase92.exit.i.i.i
  %i.fl = phi i32 [ %i.fj, %_upb_FromBase92.exit.i.i.i ], [ %i.ez, %bb.af ] ; 2 uses
  %.026.i.i.i70 = phi ptr [ %i.fb, %_upb_FromBase92.exit.i.i.i ], [ %i.s, %bb.af ] ; 3 uses
  %.028.i.i.i69 = phi i32 [ %i.fo, %_upb_FromBase92.exit.i.i.i ], [ 0, %bb.af ]
  %i.fm = load i8, ptr %.026.i.i.i70, align 1, !tbaa !22 ; 2 uses
  %i.fn = add i8 %i.fm, -127
  %or.cond.i.i.i = icmp ult i8 %i.fn, -32
  br i1 %or.cond.i.i.i, label %upb_MdDecoder_DecodeBase92Varint.exit.i, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph
  %i.fo = add nuw nsw i32 %.028.i.i.i69, %.0.i.i.i.i ; 3 uses
  %i.fp = icmp samesign ult i32 %i.fo, 32
  br i1 %i.fp, label %_upb_FromBase92.exit.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void (ptr, ptr, ...) @upb_MdDecoder_ErrorJmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.4) #13
  unreachable

upb_MdDecoder_DecodeBase92Varint.exit.i:          ; preds = %_upb_FromBase92.exit.i.i.i, %.lr.ph, %bb.af
  %.lcssa = phi i32 [ %i.ez, %bb.af ], [ %i.fj, %_upb_FromBase92.exit.i.i.i ], [ %i.fl, %.lr.ph ]
  %.026.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %bb.af ], [ %scevgep.i.i.i, %_upb_FromBase92.exit.i.i.i ], [ %.026.i.i.i70, %.lr.ph ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.026.lcssa.i.i.i) ]
  %i.fq = add i32 %.lcssa, %.03995.i
  br label %.loopexit.i

bb.ai:                                            ; preds = %bb.ae
  %i.fr = zext nneg i8 %i.t to i32
  call void (ptr, ptr, ...) @upb_MdDecoder_ErrorJmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, i32 noundef %i.fr) #13
  unreachable

.loopexit.loopexit.i:                             ; preds = %upb_MiniTableEnum_BuildValue.exit.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !23
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %upb_MdDecoder_DecodeBase92Varint.exit.i
  %i.fs = phi ptr [ %i.q, %upb_MdDecoder_DecodeBase92Varint.exit.i ], [ %.pre.i, %.loopexit.loopexit.i ] ; 2 uses
  %.pre.i107.i = phi ptr [ %.pre.i106.i, %upb_MdDecoder_DecodeBase92Varint.exit.i ], [ %.pre.i110.i, %.loopexit.loopexit.i ] ; 2 uses
  %i.ft = phi ptr [ %i.r, %upb_MdDecoder_DecodeBase92Varint.exit.i ], [ %i.ee, %.loopexit.loopexit.i ]
  %.141.i = phi ptr [ %.026.lcssa.i.i.i, %upb_MdDecoder_DecodeBase92Varint.exit.i ], [ %i.s, %.loopexit.loopexit.i ] ; 2 uses
  %.2.i = phi i32 [ %i.fq, %upb_MdDecoder_DecodeBase92Varint.exit.i ], [ %i.eg, %.loopexit.loopexit.i ]
  %i.fu = icmp ult ptr %.141.i, %i.fs
  br i1 %i.fu, label %bb.h, label %upb_MtDecoder_DoBuildMiniTableEnum.exit, !llvm.loop !29

upb_MtDecoder_DoBuildMiniTableEnum.exit:          ; preds = %.loopexit.i, %upb_MdDecoder_CheckOutOfMemory.exit.i, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.i, %upb_MdDecoder_CheckOutOfMemory.exit.i ], [ %.pre.i107.i, %.loopexit.i ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind returns_twice
declare i32 @__sigsetjmp(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint noreturn nounwind uwtable
define internal void @upb_MdDecoder_ErrorJmp(ptr noundef nonnull %0, ptr noundef %1, ...) unnamed_addr #5 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  tail call void @upb_Status_SetErrorMessage(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.2) #11
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !11
  call void @upb_Status_VAppendErrorFormat(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %2) #11
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @siglongjmp(ptr noundef nonnull %i.d, i32 noundef 1) #14
  unreachable
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_upb_MiniTable_AddEnumDataMember(ptr noundef nonnull %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !25   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !21
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !20
  br label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.f = zext i32 %i.b to i64
  %i.g = shl nuw nsw i64 %i.f, 2                  ; 3 uses
  %i.h = icmp slt i32 %i.b, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ...) @upb_MdDecoder_ErrorJmp(ptr noundef %0, ptr noundef nonnull @.str.3) #13
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = icmp eq i32 %i.b, 0
  %i.j = shl nuw i32 %i.b, 1
  %spec.select = select i1 %i.i, i32 2, i32 %i.j  ; 2 uses
  %i.k = zext i32 %spec.select to i64
  %i.l = shl nuw nsw i64 %i.k, 2                  ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !12   ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !20   ; 7 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %.upb_Arena_TryExtend.exit.thread_crit_edge.i, label %bb.e

.upb_Arena_TryExtend.exit.thread_crit_edge.i:     ; preds = %bb.d
  %.val.i43.pre.i = load ptr, ptr %i.n, align 8, !tbaa !16
  %.pre.i = add nuw nsw i64 %i.l, 8
  br label %upb_Arena_TryExtend.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %.not40.i = icmp samesign ugt i64 %i.l, %i.g
  %i.q = add nuw nsw i64 %i.g, 12
  %i.r = and i64 %i.q, 17179869176                ; 4 uses
  br i1 %.not40.i, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.s = add nuw nsw i64 %i.l, 8                  ; 3 uses
  %i.t = sub nsw i64 %i.s, %i.r                   ; 2 uses
  %.val14.i.i = load ptr, ptr %i.n, align 8, !tbaa !16 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.r ; 2 uses
  %i.v = icmp eq ptr %i.u, %.val14.i.i
  br i1 %i.v, label %bb.g, label %upb_Arena_TryExtend.exit.thread.i

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr i8, ptr %i.n, i64 8
  %.val13.i.i = load ptr, ptr %i.w, align 8, !tbaa !18
  %i.x = ptrtoint ptr %.val13.i.i to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  %.not.i.i = icmp ult i64 %i.z, %i.t
  br i1 %.not.i.i, label %upb_Arena_TryExtend.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %.val14.i.i, i64 %i.t
  store ptr %i.aa, ptr %i.n, align 8, !tbaa !16
  br label %upb_MdDecoder_CheckOutOfMemory.exit

.critedge.i:                                      ; preds = %bb.e
  %.val.i = load ptr, ptr %i.n, align 8, !tbaa !16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.r
  %i.ac = icmp eq ptr %i.ab, %.val.i
  br i1 %i.ac, label %upb_Arena_ShrinkLast.exit.i, label %upb_MdDecoder_CheckOutOfMemory.exit

upb_Arena_ShrinkLast.exit.i:                      ; preds = %.critedge.i
  %i.ad = add nuw nsw i64 %i.l, 8
  %.neg.i.i = sub nsw i64 %i.ad, %i.r
  %i.ae = getelementptr inbounds i8, ptr %.val.i, i64 %.neg.i.i
  store ptr %i.ae, ptr %i.n, align 8, !tbaa !16
  br label %upb_MdDecoder_CheckOutOfMemory.exit

upb_Arena_TryExtend.exit.thread.i:                ; preds = %bb.g, %bb.f, %.upb_Arena_TryExtend.exit.thread_crit_edge.i
  %.pre-phi54.i = phi i64 [ %.pre.i, %.upb_Arena_TryExtend.exit.thread_crit_edge.i ], [ %i.s, %bb.f ], [ %i.s, %bb.g ] ; 3 uses
  %.val.i43.i = phi ptr [ %.val.i43.pre.i, %.upb_Arena_TryExtend.exit.thread_crit_edge.i ], [ %.val14.i.i, %bb.f ], [ %.val14.i.i, %bb.g ] ; 4 uses
  %i.af = getelementptr i8, ptr %i.n, i64 8
  %.val11.i.i = load ptr, ptr %i.af, align 8, !tbaa !18
  %i.ag = ptrtoint ptr %.val11.i.i to i64
  %i.ah = ptrtoint ptr %.val.i43.i to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = icmp ult i64 %i.ai, %.pre-phi54.i
end_hunk_0
