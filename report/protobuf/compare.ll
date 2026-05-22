inline.NumInlined: 39
inline.NumDeleted: 25
begin_hunk_0_@upb_Message_IsEqual:bb.a

bb.q:                                             ; preds = %upb_MiniTable_SubMessage.exit.i.thread
  br label %upb_MiniTableField_CType.exit.i

upb_MiniTableField_CType.exit.i:                  ; preds = %upb_MiniTable_SubMessage.exit.i, %upb_MiniTable_SubMessage.exit.i.thread._crit_edge, %bb.q, %upb_MiniTable_SubMessage.exit.i.thread
  %.0.i.i62 = phi ptr [ %.0.i.i64, %upb_MiniTable_SubMessage.exit.i.thread ], [ %.0.i.i64, %bb.q ], [ %.0.i.i64, %upb_MiniTable_SubMessage.exit.i.thread._crit_edge ], [ %.0.i.i, %upb_MiniTable_SubMessage.exit.i ]
  %.0.i.i.i = phi i64 [ 13, %upb_MiniTable_SubMessage.exit.i.thread ], [ 8, %bb.q ], [ %.pre152, %upb_MiniTable_SubMessage.exit.i.thread._crit_edge ], [ %i.ba, %upb_MiniTable_SubMessage.exit.i ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr @upb_FieldType_CType.c_type, i64 %.0.i.i.i
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i64 -1, ptr %i.a, align 8, !tbaa !7
  %i.bl = call zeroext i1 @upb_Map_Next(ptr noundef %i.an, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %i.a) #4, !inline_history !20
  br i1 %i.bl, label %.lr.ph, label %upb_MessageValue_IsEqual.exit.i.thread

.lr.ph:                                           ; preds = %upb_MiniTableField_CType.exit.i, %upb_MessageValue_IsEqual.exit.i.backedge
  %i.bm = load ptr, ptr %4, align 8
  %i.bn = load i64, ptr %i.i, align 8
  %i.bo = call zeroext i1 @upb_Map_Get(ptr noundef %i.ao, ptr %i.bm, i64 %i.bn, ptr noundef nonnull %6) #4, !inline_history !20
  br i1 %i.bo, label %bb.r, label %upb_MessageValue_IsEqual.exit.i.thread.thread

bb.r:                                             ; preds = %.lr.ph
  %i.bp = load ptr, ptr %5, align 8               ; 5 uses
  %i.bq = load i64, ptr %i.j, align 8             ; 3 uses
  %i.br = load ptr, ptr %6, align 8               ; 5 uses
  switch i32 %i.bk, label %bb.z [
    i32 1, label %bb.s
    i32 2, label %bb.t
    i32 3, label %bb.t
    i32 4, label %bb.t
    i32 5, label %bb.t
    i32 7, label %bb.u
    i32 8, label %bb.u
    i32 9, label %bb.u
    i32 10, label %bb.v
    i32 11, label %bb.v
    i32 6, label %bb.y
  ]

bb.s:                                             ; preds = %bb.r
  %i.bs = ptrtoint ptr %i.bp to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = xor i64 %i.bt, %i.bs
  %i.bv = and i64 %i.bu, 1
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %upb_MessageValue_IsEqual.exit.i.backedge, label %upb_MessageValue_IsEqual.exit.i.thread.thread

upb_MessageValue_IsEqual.exit.i.backedge:         ; preds = %bb.s, %bb.t, %bb.x, %bb.y, %bb.u, %bb.w
  %i.bx = call zeroext i1 @upb_Map_Next(ptr noundef %i.an, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %i.a) #4, !inline_history !20
  br i1 %i.bx, label %.lr.ph, label %upb_MessageValue_IsEqual.exit.i.thread, !llvm.loop !21

bb.t:                                             ; preds = %bb.r, %bb.r, %bb.r, %bb.r
  %i.by = ptrtoint ptr %i.bp to i64
  %.sroa.06.0.extract.trunc.i.i = trunc i64 %i.by to i32
  %i.bz = ptrtoint ptr %i.br to i64
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.bz to i32
  %i.ca = icmp eq i32 %.sroa.06.0.extract.trunc.i.i, %.sroa.0.0.extract.trunc.i.i
  br i1 %i.ca, label %upb_MessageValue_IsEqual.exit.i.backedge, label %upb_MessageValue_IsEqual.exit.i.thread.thread

bb.u:                                             ; preds = %bb.r, %bb.r, %bb.r
  %i.cb = icmp eq ptr %i.bp, %i.br
  br i1 %i.cb, label %upb_MessageValue_IsEqual.exit.i.backedge, label %upb_MessageValue_IsEqual.exit.i.thread.thread

bb.v:                                             ; preds = %bb.r, %bb.r
  %i.cc = load i64, ptr %i.k, align 8
  %i.cd = icmp eq i64 %i.bq, %i.cc
  br i1 %i.cd, label %bb.w, label %upb_MessageValue_IsEqual.exit.i.thread.thread

bb.w:                                             ; preds = %bb.v
  %.not.i51 = icmp eq i64 %i.bq, 0
  br i1 %.not.i51, label %upb_MessageValue_IsEqual.exit.i.backedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %bcmp.i = call i32 @bcmp(ptr readonly %i.bp, ptr readonly %i.br, i64 %i.bq)
  %.not5.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not5.i, label %upb_MessageValue_IsEqual.exit.i.backedge, label %upb_MessageValue_IsEqual.exit.i.thread.thread

bb.y:                                             ; preds = %bb.r
  %i.ce = call zeroext i1 @upb_Message_IsEqual(ptr noundef %i.bp, ptr noundef %i.br, ptr noundef %.0.i.i62, i32 noundef %3), !inline_history !23
  br i1 %i.ce, label %upb_MessageValue_IsEqual.exit.i.backedge, label %upb_MessageValue_IsEqual.exit.i.thread.thread

bb.z:                                             ; preds = %bb.r
  unreachable

upb_MessageValue_IsEqual.exit.i.thread.thread:    ; preds = %.lr.ph, %bb.s, %bb.t, %bb.x, %bb.y, %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #4
  br label %_upb_Message_BaseFieldsAreEqual.exit.sink.split

upb_MessageValue_IsEqual.exit.i.thread:           ; preds = %upb_MessageValue_IsEqual.exit.i.backedge, %upb_MiniTableField_CType.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #4
  br label %.backedge.sink.split

bb.aa:                                            ; preds = %upb_MiniTableField_CType.exit
  %i.cf = load ptr, ptr %7, align 8               ; 5 uses
  %i.cg = load i64, ptr %i.g, align 8             ; 3 uses
  %i.ch = load ptr, ptr %8, align 8               ; 5 uses
  switch i32 %i.af, label %bb.ai [
    i32 1, label %bb.ab
    i32 2, label %bb.ac
    i32 3, label %bb.ac
    i32 4, label %bb.ac
    i32 5, label %bb.ac
    i32 7, label %bb.ad
    i32 8, label %bb.ad
    i32 9, label %bb.ad
    i32 10, label %bb.ae
    i32 11, label %bb.ae
    i32 6, label %bb.ah
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.ci = ptrtoint ptr %i.cf to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = xor i64 %i.cj, %i.ci
  %i.cl = and i64 %i.ck, 1
  %i.cm = icmp eq i64 %i.cl, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  br i1 %i.cm, label %.backedge, label %_upb_Message_BaseFieldsAreEqual.exit

bb.ac:                                            ; preds = %bb.aa, %bb.aa, %bb.aa, %bb.aa
  %i.cn = ptrtoint ptr %i.cf to i64
  %.sroa.06.0.extract.trunc.i = trunc i64 %i.cn to i32
  %i.co = ptrtoint ptr %i.ch to i64
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.co to i32
  %i.cp = icmp eq i32 %.sroa.06.0.extract.trunc.i, %.sroa.0.0.extract.trunc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  br i1 %i.cp, label %.backedge, label %_upb_Message_BaseFieldsAreEqual.exit

bb.ad:                                            ; preds = %bb.aa, %bb.aa, %bb.aa
  %i.cq = icmp eq ptr %i.cf, %i.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  br i1 %i.cq, label %.backedge, label %_upb_Message_BaseFieldsAreEqual.exit

bb.ae:                                            ; preds = %bb.aa, %bb.aa
  %i.cr = load i64, ptr %i.h, align 8
  %i.cs = icmp eq i64 %i.cg, %i.cr
  br i1 %i.cs, label %bb.af, label %_upb_Message_BaseFieldsAreEqual.exit.sink.split

bb.af:                                            ; preds = %bb.ae
  %.not.i.i = icmp eq i64 %i.cg, 0
  br i1 %.not.i.i, label %.backedge.sink.split, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %bcmp.i.i = call i32 @bcmp(ptr readonly %i.cf, ptr readonly %i.ch, i64 %i.cg), !inline_history !24
  %.not5.i.i = icmp eq i32 %bcmp.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  br i1 %.not5.i.i, label %.backedge, label %_upb_Message_BaseFieldsAreEqual.exit

bb.ah:                                            ; preds = %bb.aa
  %i.ct = call zeroext i1 @upb_Message_IsEqual(ptr noundef %i.cf, ptr noundef %i.ch, ptr noundef %.0.i2958, i32 noundef %3), !inline_history !24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  br i1 %i.ct, label %.backedge, label %_upb_Message_BaseFieldsAreEqual.exit

bb.ai:                                            ; preds = %bb.aa
  unreachable

default.unreachable:                              ; preds = %upb_MiniTableField_CType.exit
  unreachable

.thread:                                          ; preds = %.backedge, %bb.b
  %.lcssa218 = phi i1 [ %i.l, %bb.b ], [ %i.ak, %.backedge ]
  %.lcssa = phi i1 [ %i.m, %bb.b ], [ %i.al, %.backedge ]
  %i.cu = xor i1 %.lcssa218, %.lcssa
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  br i1 %i.cu, label %_upb_Message_ExtensionsAreEqual.exit.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.thread
  %.val30.i228 = load i64, ptr %0, align 8, !tbaa !19
  %i.cv = and i64 %.val30.i228, -2                ; 2 uses
  %.not.i46229 = icmp eq i64 %i.cv, 0
  br i1 %.not.i46229, label %_upb_Message_ExtensionsAreEqual.exit, label %.preheader.i

_upb_Message_BaseFieldsAreEqual.exit.sink.split:  ; preds = %bb.m, %bb.ae, %upb_MessageValue_IsEqual.exit.i.thread.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  br label %_upb_Message_BaseFieldsAreEqual.exit

_upb_Message_BaseFieldsAreEqual.exit:             ; preds = %bb.g, %bb.ag, %bb.ah, %bb.ad, %bb.ac, %bb.ab, %_upb_Message_BaseFieldsAreEqual.exit.sink.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  br label %_upb_Message_ExtensionsAreEqual.exit.thread

.preheader.i:                                     ; preds = %.preheader.preheader, %.preheader.backedge
  %.in = phi i64 [ %i.ey, %.preheader.backedge ], [ %i.cv, %.preheader.preheader ]
  %.022.i231 = phi i64 [ %i.ef, %.preheader.backedge ], [ 0, %.preheader.preheader ] ; 3 uses
  %.055230 = phi i64 [ %i.dc, %.preheader.backedge ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.cw = inttoptr i64 %.in to ptr                ; 3 uses
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !3  ; 2 uses
  %i.cy = zext i32 %i.cx to i64
  %i.cz = icmp ult i64 %.055230, %i.cy
  br i1 %i.cz, label %.lr.ph.i, label %_upb_Message_ExtensionsAreEqual.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ap, %.lr.ph.i
  %i.db = phi i32 [ %i.cx, %.lr.ph.i ], [ %i.dz, %bb.ap ] ; 2 uses
  %.0208.i = phi i64 [ %.055230, %.lr.ph.i ], [ %i.dc, %bb.ap ] ; 2 uses
  %i.dc = add nuw nsw i64 %.0208.i, 1             ; 3 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %.0208.i
  %.sroa.0.0.copyload.i48 = load i64, ptr %i.dd, align 8, !tbaa !7 ; 2 uses
  %i.de = trunc i64 %.sroa.0.0.copyload.i48 to i1
  br i1 %i.de, label %bb.ak, label %bb.ap

bb.ak:                                            ; preds = %bb.aj
  %i.df = and i64 %.sroa.0.0.copyload.i48, -4
  %i.dg = inttoptr i64 %i.df to ptr               ; 6 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !25 ; 3 uses
  %i.di = getelementptr i8, ptr %i.dh, i64 11
  %.val.i.i49 = load i8, ptr %i.di, align 1, !tbaa !17
  %i.dj = and i8 %.val.i.i49, 3
  switch i8 %i.dj, label %bb.ao [
    i8 2, label %.loopexit
    i8 1, label %_upb_Extension_IsEmpty_dont_copy_me__upb_internal_use_only.exit.i
    i8 0, label %bb.al
  ]

bb.al:                                            ; preds = %bb.ak
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !19 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 3
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !28, !range !31, !noundef !32
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !19
  %i.dr = zext i32 %i.dq to i64
  br label %_upb_Map_Size.exit.i.i

bb.an:                                            ; preds = %bb.al
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dt = call i64 @upb_inttable_count(ptr noundef nonnull %i.ds) #4
  br label %_upb_Map_Size.exit.i.i

_upb_Map_Size.exit.i.i:                           ; preds = %bb.an, %bb.am
  %.0.i.i.i50 = phi i64 [ %i.dr, %bb.am ], [ %i.dt, %bb.an ]
  %i.du = icmp eq i64 %.0.i.i.i50, 0
  br i1 %i.du, label %_upb_Map_Size.exit.i._crit_edge.i, label %_upb_Map_Size.exit.i..thread_crit_edge.i, !llvm.loop !33

_upb_Map_Size.exit.i..thread_crit_edge.i:         ; preds = %_upb_Map_Size.exit.i.i
  %.pre13.i = load ptr, ptr %i.dg, align 8, !tbaa !25
  br label %.loopexit, !llvm.loop !33

_upb_Map_Size.exit.i._crit_edge.i:                ; preds = %_upb_Map_Size.exit.i.i
  %.pre.i = load i32, ptr %i.cw, align 8, !tbaa !3
  br label %bb.ap, !llvm.loop !33

bb.ao:                                            ; preds = %bb.ak
  unreachable

_upb_Extension_IsEmpty_dont_copy_me__upb_internal_use_only.exit.i: ; preds = %bb.ak
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !19
  %i.dx = getelementptr i8, ptr %i.dw, i64 8
  %.val4.i.i = load i64, ptr %i.dx, align 8, !tbaa !34
  %i.dy = icmp eq i64 %.val4.i.i, 0
  br i1 %i.dy, label %bb.ap, label %.loopexit, !llvm.loop !33

bb.ap:                                            ; preds = %_upb_Extension_IsEmpty_dont_copy_me__upb_internal_use_only.exit.i, %_upb_Map_Size.exit.i._crit_edge.i, %bb.aj
  %i.dz = phi i32 [ %.pre.i, %_upb_Map_Size.exit.i._crit_edge.i ], [ %i.db, %bb.aj ], [ %i.db, %_upb_Extension_IsEmpty_dont_copy_me__upb_internal_use_only.exit.i ] ; 2 uses
  %i.ea = zext i32 %i.dz to i64
  %i.eb = icmp ult i64 %i.dc, %i.ea
  br i1 %i.eb, label %bb.aj, label %_upb_Message_ExtensionsAreEqual.exit

.loopexit:                                        ; preds = %_upb_Extension_IsEmpty_dont_copy_me__upb_internal_use_only.exit.i, %bb.ak, %_upb_Map_Size.exit.i..thread_crit_edge.i
  %i.ec = phi ptr [ %.pre13.i, %_upb_Map_Size.exit.i..thread_crit_edge.i ], [ %i.dh, %bb.ak ], [ %i.dh, %_upb_Extension_IsEmpty_dont_copy_me__upb_internal_use_only.exit.i ] ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.ed, align 8 ; 6 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !19 ; 3 uses
  %i.ee = call ptr @_upb_Message_Getext_dont_copy_me__upb_internal_use_only(ptr noundef %1, ptr noundef %i.ec) #4, !inline_history !36 ; 3 uses
  %.not27.i = icmp eq ptr %i.ee, null
  br i1 %.not27.i, label %_upb_Message_ExtensionsAreEqual.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %.loopexit
  %i.ef = add i64 %.022.i231, 1                   ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.eg, align 8 ; 6 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !19
  %i.eh = getelementptr i8, ptr %i.ec, i64 10
  %.val31.i = load i8, ptr %i.eh, align 2, !tbaa !14 ; 4 uses
  %i.ei = and i8 %.val31.i, -2
  %spec.select.i = icmp eq i8 %i.ei, 10
  br i1 %spec.select.i, label %upb_MiniTableExtension_CType.exit.i, label %upb_MiniTableExtension_GetSubMessage.exit

upb_MiniTableExtension_CType.exit.i:              ; preds = %bb.aq
  %narrow = add nuw nsw i8 %.val31.i, 15
  %i.ej = and i8 %narrow, 11
  %i.ek = add nsw i8 %i.ej, -9
  %i.el = icmp ult i8 %i.ek, 2
  br i1 %i.el, label %bb.ar, label %upb_MiniTableExtension_GetSubMessage.exit

bb.ar:                                            ; preds = %upb_MiniTableExtension_CType.exit.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.en = load ptr, ptr %i.em, align 8
  br label %upb_MiniTableExtension_GetSubMessage.exit

upb_MiniTableExtension_GetSubMessage.exit:        ; preds = %bb.ar, %upb_MiniTableExtension_CType.exit.i, %bb.aq
  %i.eo = phi ptr [ null, %bb.aq ], [ %i.en, %bb.ar ], [ null, %upb_MiniTableExtension_CType.exit.i ] ; 2 uses
  %i.ep = getelementptr i8, ptr %i.ec, i64 11
  %.val28.i = load i8, ptr %i.ep, align 1, !tbaa !17 ; 2 uses
  %i.eq = zext i8 %.val31.i to i64
  %i.er = and i8 %.val28.i, 16
  %.not.i.i39 = icmp eq i8 %i.er, 0
  br i1 %.not.i.i39, label %bb.au, label %bb.as

bb.as:                                            ; preds = %upb_MiniTableExtension_GetSubMessage.exit
  switch i8 %.val31.i, label %bb.au [
    i8 5, label %upb_MiniTableField_CType.exit41
    i8 12, label %bb.at
  ]

bb.at:                                            ; preds = %bb.as
  br label %upb_MiniTableField_CType.exit41

bb.au:                                            ; preds = %bb.as, %upb_MiniTableExtension_GetSubMessage.exit
  %i.es = add nuw nsw i64 %i.eq, 4294967295
  %i.et = and i64 %i.es, 4294967295
  br label %upb_MiniTableField_CType.exit41

upb_MiniTableField_CType.exit41:                  ; preds = %bb.as, %bb.at, %bb.au
  %.0.i.i40 = phi i64 [ %i.et, %bb.au ], [ 8, %bb.at ], [ 13, %bb.as ]
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr @upb_FieldType_CType.c_type, i64 %.0.i.i40
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !3  ; 2 uses
  %i.ew = and i8 %.val28.i, 3
  switch i8 %i.ew, label %.preheader.backedge [
    i8 1, label %bb.av
    i8 2, label %bb.aw
  ]

bb.av:                                            ; preds = %upb_MiniTableField_CType.exit41
  %i.ex = call fastcc zeroext i1 @_upb_Array_IsEqual(ptr noundef %.sroa.0.0.copyload, ptr noundef %.sroa.0.0.copyload.i, i32 noundef %i.ev, ptr noundef %i.eo, i32 noundef %3), !inline_history !36
  br i1 %i.ex, label %.preheader.backedge, label %_upb_Message_ExtensionsAreEqual.exit.thread

.preheader.backedge:                              ; preds = %upb_MiniTableField_CType.exit41, %bb.bb, %bb.av, %bb.ax, %bb.bc, %bb.bd, %bb.az, %bb.ay
  %.val30.i = load i64, ptr %0, align 8, !tbaa !19
  %i.ey = and i64 %.val30.i, -2                   ; 2 uses
  %.not.i46 = icmp eq i64 %i.ey, 0
  br i1 %.not.i46, label %_upb_Message_ExtensionsAreEqual.exit, label %.preheader.i, !llvm.loop !37

bb.aw:                                            ; preds = %upb_MiniTableField_CType.exit41
  switch i32 %i.ev, label %bb.be [
    i32 1, label %bb.ax
    i32 2, label %bb.ay
    i32 3, label %bb.ay
    i32 4, label %bb.ay
    i32 5, label %bb.ay
    i32 7, label %bb.az
    i32 8, label %bb.az
    i32 9, label %bb.az
    i32 10, label %bb.ba
    i32 11, label %bb.ba
    i32 6, label %bb.bd
  ]

bb.ax:                                            ; preds = %bb.aw
  %i.ez = ptrtoint ptr %.sroa.0.0.copyload to i64
  %i.fa = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.fb = xor i64 %i.fa, %i.ez
  %i.fc = and i64 %i.fb, 1
  %i.fd = icmp eq i64 %i.fc, 0
  br i1 %i.fd, label %.preheader.backedge, label %_upb_Message_ExtensionsAreEqual.exit.thread

bb.ay:                                            ; preds = %bb.aw, %bb.aw, %bb.aw, %bb.aw
  %i.fe = ptrtoint ptr %.sroa.0.0.copyload to i64
  %.sroa.06.0.extract.trunc.i36 = trunc i64 %i.fe to i32
  %i.ff = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %.sroa.0.0.extract.trunc.i37 = trunc i64 %i.ff to i32
  %i.fg = icmp eq i32 %.sroa.06.0.extract.trunc.i36, %.sroa.0.0.extract.trunc.i37
  br i1 %i.fg, label %.preheader.backedge, label %_upb_Message_ExtensionsAreEqual.exit.thread

bb.az:                                            ; preds = %bb.aw, %bb.aw, %bb.aw
  %i.fh = icmp eq ptr %.sroa.0.0.copyload, %.sroa.0.0.copyload.i
  br i1 %i.fh, label %.preheader.backedge, label %_upb_Message_ExtensionsAreEqual.exit.thread
end_hunk_0
