inline.NumInlined: 298
inline.NumDeleted: 162
begin_hunk_0_@enumdef_toproto:bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 8 ; 6 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !19
  %i.ad = or i8 %i.ac, 1
  store i8 %i.ad, ptr %i.ab, align 1, !tbaa !19
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 16
  store ptr %.0.i11.i.i, ptr %i.ae, align 1
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 24
  store i64 %i.p, ptr %.sroa.56.0..sroa_idx.i, align 1
  %i.af = tail call i32 @upb_EnumDef_ValueCount(ptr noundef %1) #11 ; 3 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = load ptr, ptr %0, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) @__const.google_protobuf_EnumDescriptorProto_resize_value.field, i64 12, i1 false)
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__EnumValueDescriptorProto_msg_init) #11, !srcloc !20
  %i.ai = call fastcc ptr @upb_Message_ResizeArrayUninitialized(ptr noundef nonnull %.0.i3.i.i, ptr noundef %4, i64 noundef range(i64 -2147483648, 2147483648) %i.ag, ptr noundef %i.ah) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %.not67 = icmp eq ptr %i.ai, null
  br i1 %.not67, label %bb.e, label %.preheader

.preheader:                                       ; preds = %strviewdup.exit
  %i.aj = icmp sgt i32 %i.af, 0
  br i1 %i.aj, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.af to i64
  br label %.lr.ph

bb.e:                                             ; preds = %strviewdup.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @siglongjmp(ptr noundef nonnull %i.ak, i32 noundef 1) #13
  unreachable

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.al = call i32 @upb_EnumDef_ReservedRangeCount(ptr noundef %1) #11 ; 3 uses
  %i.am = sext i32 %i.al to i64
  %i.an = load ptr, ptr %0, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) @__const.google_protobuf_EnumDescriptorProto_resize_reserved_range.field, i64 12, i1 false)
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__EnumDescriptorProto__EnumReservedRange_msg_init) #11, !srcloc !20
  %i.ao = call fastcc ptr @upb_Message_ResizeArrayUninitialized(ptr noundef nonnull %.0.i3.i.i, ptr noundef %3, i64 noundef range(i64 -2147483648, 2147483648) %i.am, ptr noundef %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.ap = icmp sgt i32 %i.al, 0
  br i1 %i.ap, label %.lr.ph89, label %._crit_edge90

.lr.ph89:                                         ; preds = %._crit_edge
  %google__protobuf__EnumDescriptorProto__EnumReservedRange_msg_init.val.i.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @google__protobuf__EnumDescriptorProto__EnumReservedRange_msg_init, i64 8), align 8
  %i.aq = zext i16 %google__protobuf__EnumDescriptorProto__EnumReservedRange_msg_init.val.i.i to i64 ; 5 uses
  %i.ar = and i64 %i.aq, 7
  %i.as = icmp eq i64 %i.ar, 0
  %wide.trip.count99 = zext nneg i32 %i.al to i64
  br label %bb.f

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.at = trunc nuw nsw i64 %indvars.iv to i32
  %i.au = call ptr @upb_EnumDef_Value(ptr noundef %1, i32 noundef %i.at) #11
  %i.av = call fastcc ptr @enumvaldef_toproto(ptr noundef nonnull %0, ptr noundef %i.au)
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !23

._crit_edge90:                                    ; preds = %enumresrange_toproto.exit, %._crit_edge
  %i.ax = call i32 @upb_EnumDef_ReservedNameCount(ptr noundef %1) #11 ; 3 uses
  %i.ay = sext i32 %i.ax to i64
  %i.az = load ptr, ptr %0, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) @__const.google_protobuf_EnumDescriptorProto_resize_reserved_name.field, i64 12, i1 false)
  %i.ba = call fastcc ptr @upb_Message_ResizeArrayUninitialized(ptr noundef nonnull %.0.i3.i.i, ptr noundef %2, i64 noundef range(i64 -2147483648, 2147483648) %i.ay, ptr noundef %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %i.bb = icmp sgt i32 %i.ax, 0
  br i1 %i.bb, label %.lr.ph93.preheader, label %._crit_edge94

.lr.ph93.preheader:                               ; preds = %._crit_edge90
  %wide.trip.count104 = zext nneg i32 %i.ax to i64
  br label %.lr.ph93

bb.f:                                             ; preds = %.lr.ph89, %enumresrange_toproto.exit
  %indvars.iv96 = phi i64 [ 0, %.lr.ph89 ], [ %indvars.iv.next97, %enumresrange_toproto.exit ] ; 3 uses
  %i.bc = trunc nuw nsw i64 %indvars.iv96 to i32
  %i.bd = call ptr @upb_EnumDef_ReservedRange(ptr noundef %1, i32 noundef %i.bc) #11 ; 2 uses
  %i.be = load ptr, ptr %0, align 8, !tbaa !7     ; 4 uses
  call void @llvm.assume(i1 %i.as)
  %.val.i.i.i.i = load ptr, ptr %i.be, align 8, !tbaa !13 ; 4 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 8
  %.val11.i.i.i.i = load ptr, ptr %i.bf, align 8, !tbaa !16
  %i.bg = ptrtoint ptr %.val11.i.i.i.i to i64
  %i.bh = ptrtoint ptr %.val.i.i.i.i to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = icmp ult i64 %i.bi, %i.aq
  br i1 %i.bj, label %upb_Arena_Malloc.exit.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i.i, !prof !17

upb_Arena_Malloc.exit.thread.i.i.i:               ; preds = %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.aq
  store ptr %i.bk, ptr %i.be, align 8, !tbaa !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  br label %enumresrange_toproto.exit

upb_Arena_Malloc.exit.i.i.i:                      ; preds = %bb.f
  %i.bl = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.be, i64 noundef %i.aq) #11 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i, label %bb.g, label %enumresrange_toproto.exit, !prof !18

bb.g:                                             ; preds = %upb_Arena_Malloc.exit.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @siglongjmp(ptr noundef nonnull %i.bm, i32 noundef 1) #13
  unreachable

enumresrange_toproto.exit:                        ; preds = %upb_Arena_Malloc.exit.thread.i.i.i, %upb_Arena_Malloc.exit.i.i.i
  %.0.i3.i.i.i = phi ptr [ %.val.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i ], [ %i.bl, %upb_Arena_Malloc.exit.i.i.i ] ; 5 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i3.i.i.i, i8 0, i64 %i.aq, i1 false)
  %i.bn = call i32 @upb_EnumReservedRange_Start(ptr noundef %i.bd) #11
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i, i64 8 ; 4 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !19
  %i.bq = or i8 %i.bp, 1
  store i8 %i.bq, ptr %i.bo, align 1, !tbaa !19
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i, i64 12
  store i32 %i.bn, ptr %i.br, align 1
  %i.bs = call i32 @upb_EnumReservedRange_End(ptr noundef %i.bd) #11
  %i.bt = load i8, ptr %i.bo, align 1, !tbaa !19
  %i.bu = or i8 %i.bt, 2
  store i8 %i.bu, ptr %i.bo, align 1, !tbaa !19
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i, i64 16
  store i32 %i.bs, ptr %i.bv, align 1
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv96
  store ptr %.0.i3.i.i.i, ptr %i.bw, align 8, !tbaa !25
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %exitcond100.not = icmp eq i64 %indvars.iv.next97, %wide.trip.count99
  br i1 %exitcond100.not, label %._crit_edge90, label %bb.f, !llvm.loop !27

._crit_edge94:                                    ; preds = %.lr.ph93, %._crit_edge90
  %i.bx = call zeroext i1 @upb_EnumDef_HasOptions(ptr noundef %1) #11
  br i1 %i.bx, label %bb.h, label %bb.m

.lr.ph93:                                         ; preds = %.lr.ph93.preheader, %.lr.ph93
  %indvars.iv101 = phi i64 [ 0, %.lr.ph93.preheader ], [ %indvars.iv.next102, %.lr.ph93 ] ; 3 uses
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %indvars.iv101 ; 2 uses
  %i.bz = trunc nuw nsw i64 %indvars.iv101 to i32
  %i.ca = call { ptr, i64 } @upb_EnumDef_ReservedName(ptr noundef %1, i32 noundef %i.bz) #11 ; 2 uses
  %i.cb = extractvalue { ptr, i64 } %i.ca, 0
  %i.cc = extractvalue { ptr, i64 } %i.ca, 1
  store ptr %i.cb, ptr %i.by, align 8, !tbaa !28
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i64 %i.cc, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !29
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %exitcond105.not = icmp eq i64 %indvars.iv.next102, %wide.trip.count104
  br i1 %exitcond105.not, label %._crit_edge94, label %.lr.ph93, !llvm.loop !31

bb.h:                                             ; preds = %._crit_edge94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.cd = call ptr @upb_EnumDef_Options(ptr noundef %1) #11
  %i.ce = load ptr, ptr %0, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.cf = call i32 @upb_Encode(ptr noundef %i.cd, ptr noundef nonnull @google__protobuf__EnumOptions_msg_init, i32 noundef 0, ptr noundef %i.ce, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #11 ; 0 uses
  %i.cg = load ptr, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.not68 = icmp eq ptr %i.cg, null
  br i1 %.not68, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @siglongjmp(ptr noundef nonnull %i.ch, i32 noundef 1) #13
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ci = load i64, ptr %i.b, align 8, !tbaa !29
  %i.cj = call ptr @upb_EnumDef_File(ptr noundef %1) #11
  %i.ck = call ptr @upb_FileDef_Pool(ptr noundef %i.cj) #11
  %i.cl = call ptr @_upb_DefPool_GeneratedExtensionRegistry(ptr noundef %i.ck) #11
  %i.cm = load ptr, ptr %0, align 8, !tbaa !7     ; 5 uses
  %google__protobuf__EnumOptions_msg_init.val.i.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @google__protobuf__EnumOptions_msg_init, i64 8), align 8, !tbaa !11
  %i.cn = zext i16 %google__protobuf__EnumOptions_msg_init.val.i.i to i64 ; 5 uses
  %i.co = and i64 %i.cn, 7
  %i.cp = icmp eq i64 %i.co, 0
  call void @llvm.assume(i1 %i.cp)
  %.val.i.i.i.i76 = load ptr, ptr %i.cm, align 8, !tbaa !13 ; 4 uses
  %i.cq = getelementptr i8, ptr %i.cm, i64 8
  %.val11.i.i.i.i77 = load ptr, ptr %i.cq, align 8, !tbaa !16
  %i.cr = ptrtoint ptr %.val11.i.i.i.i77 to i64
  %i.cs = ptrtoint ptr %.val.i.i.i.i76 to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = icmp ult i64 %i.ct, %i.cn
  br i1 %i.cu, label %upb_Arena_Malloc.exit.i.i.i80, label %upb_Arena_Malloc.exit.thread.i.i.i78, !prof !17

upb_Arena_Malloc.exit.thread.i.i.i78:             ; preds = %bb.j
  %i.cv = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i76, i64 %i.cn
  store ptr %i.cv, ptr %i.cm, align 8, !tbaa !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i76) ]
  br label %bb.k

upb_Arena_Malloc.exit.i.i.i80:                    ; preds = %bb.j
  %i.cw = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.cm, i64 noundef %i.cn) #11 ; 2 uses
  %.not.i.i.i81 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i81, label %bb.l, label %bb.k, !prof !18

bb.k:                                             ; preds = %upb_Arena_Malloc.exit.i.i.i80, %upb_Arena_Malloc.exit.thread.i.i.i78
  %.0.i3.i.i.i79 = phi ptr [ %.val.i.i.i.i76, %upb_Arena_Malloc.exit.thread.i.i.i78 ], [ %i.cw, %upb_Arena_Malloc.exit.i.i.i80 ] ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i3.i.i.i79, i8 0, i64 %i.cn, i1 false)
  %i.cx = call i32 @upb_Decode(ptr noundef nonnull %i.cg, i64 noundef %i.ci, ptr noundef nonnull %.0.i3.i.i.i79, ptr noundef nonnull @google__protobuf__EnumOptions_msg_init, ptr noundef %i.cl, i32 noundef 0, ptr noundef nonnull %i.cm) #11
  %.fr = freeze i32 %i.cx
  %.not10.i = icmp eq i32 %.fr, 0
  br i1 %.not10.i, label %google_protobuf_EnumOptions_parse_ex.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %upb_Arena_Malloc.exit.i.i.i80
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @siglongjmp(ptr noundef nonnull %i.cy, i32 noundef 1) #13
  unreachable

google_protobuf_EnumOptions_parse_ex.exit:        ; preds = %bb.k
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__EnumOptions_msg_init) #11, !srcloc !20
  %i.cz = load i8, ptr %i.ab, align 1, !tbaa !19
  %i.da = or i8 %i.cz, 2
  store i8 %i.da, ptr %i.ab, align 1, !tbaa !19
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 40
  %i.dc = ptrtoint ptr %.0.i3.i.i.i79 to i64
  store i64 %i.dc, ptr %i.db, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.m

bb.m:                                             ; preds = %google_protobuf_EnumOptions_parse_ex.exit, %._crit_edge94
  %i.dd = call i32 @upb_EnumDef_Visibility(ptr noundef %1) #11 ; 2 uses
  %.not70 = icmp eq i32 %i.dd, 0
  br i1 %.not70, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.de = load i8, ptr %i.ab, align 1, !tbaa !19
  %i.df = or i8 %i.de, 4
  store i8 %i.df, ptr %i.ab, align 1, !tbaa !19
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 12
  store i32 %i.dd, ptr %i.dg, align 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  ret ptr %.0.i3.i.i
}

; Function Attrs: nounwind uwtable
define hidden ptr @upb_EnumDef_ToProto(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.upb_ToProto_Context, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.a, i8 0, i64 200, i1 false)
  store ptr %1, ptr %2, align 8, !tbaa !7
  %i.b = call ptr @upb_ToProto_ConvertEnumDef(ptr noundef nonnull %2, ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define hidden ptr @upb_ToProto_ConvertEnumValueDef(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = call i32 @__sigsetjmp(ptr noundef nonnull %i.a, i32 noundef 0) #12
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = call fastcc ptr @enumvaldef_toproto(ptr noundef nonnull %0, ptr noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc nonnull ptr @enumvaldef_toproto(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !7      ; 4 uses
  %google__protobuf__EnumValueDescriptorProto_msg_init.val.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @google__protobuf__EnumValueDescriptorProto_msg_init, i64 8), align 8, !tbaa !11
  %i.d = zext i16 %google__protobuf__EnumValueDescriptorProto_msg_init.val.i to i64 ; 5 uses
  %i.e = and i64 %i.d, 7
  %i.f = icmp eq i64 %i.e, 0
  tail call void @llvm.assume(i1 %i.f)
  %.val.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !13 ; 4 uses
  %i.g = getelementptr i8, ptr %i.c, i64 8
  %.val11.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !16
  %i.h = ptrtoint ptr %.val11.i.i.i to i64
  %i.i = ptrtoint ptr %.val.i.i.i to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ult i64 %i.j, %i.d
  br i1 %i.k, label %upb_Arena_Malloc.exit.i.i, label %upb_Arena_Malloc.exit.thread.i.i, !prof !17

upb_Arena_Malloc.exit.thread.i.i:                 ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.d
  store ptr %i.l, ptr %i.c, align 8, !tbaa !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  br label %bb.c

upb_Arena_Malloc.exit.i.i:                        ; preds = %bb.a
  %i.m = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.c, i64 noundef %i.d) #11 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.b, label %bb.c, !prof !18

bb.b:                                             ; preds = %upb_Arena_Malloc.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @siglongjmp(ptr noundef nonnull %i.n, i32 noundef 1) #13
  unreachable

bb.c:                                             ; preds = %upb_Arena_Malloc.exit.i.i, %upb_Arena_Malloc.exit.thread.i.i
  %.0.i3.i.i = phi ptr [ %.val.i.i.i, %upb_Arena_Malloc.exit.thread.i.i ], [ %i.m, %upb_Arena_Malloc.exit.i.i ] ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i3.i.i, i8 0, i64 %i.d, i1 false)
  %i.o = tail call ptr @upb_EnumValueDef_Name(ptr noundef %1) #11 ; 2 uses
  %i.p = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.o) #14 ; 3 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !7      ; 4 uses
  %i.r = add i64 %i.p, 7
  %i.s = and i64 %i.r, -8                         ; 3 uses
  %.val.i.i.i25 = load ptr, ptr %i.q, align 8, !tbaa !13 ; 4 uses
  %i.t = getelementptr i8, ptr %i.q, i64 8
  %.val11.i.i.i26 = load ptr, ptr %i.t, align 8, !tbaa !16
  %i.u = ptrtoint ptr %.val11.i.i.i26 to i64
  %i.v = ptrtoint ptr %.val.i.i.i25 to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp ult i64 %i.w, %i.s
  br i1 %i.x, label %upb_Arena_Malloc.exit.i.i28, label %upb_Arena_Malloc.exit.thread.i.i27, !prof !17

upb_Arena_Malloc.exit.thread.i.i27:               ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %.val.i.i.i25, i64 %i.s
  store ptr %i.y, ptr %i.q, align 8, !tbaa !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i25) ]
  br label %strviewdup.exit

upb_Arena_Malloc.exit.i.i28:                      ; preds = %bb.c
  %i.z = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.q, i64 noundef %i.s) #11 ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.z, null
  br i1 %.not.i.i29, label %bb.d, label %strviewdup.exit

bb.d:                                             ; preds = %upb_Arena_Malloc.exit.i.i28
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @siglongjmp(ptr noundef nonnull %i.aa, i32 noundef 1) #13
  unreachable

strviewdup.exit:                                  ; preds = %upb_Arena_Malloc.exit.thread.i.i27, %upb_Arena_Malloc.exit.i.i28
  %.0.i11.i.i = phi ptr [ %.val.i.i.i25, %upb_Arena_Malloc.exit.thread.i.i27 ], [ %i.z, %upb_Arena_Malloc.exit.i.i28 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i11.i.i, ptr nonnull readonly align 1 %i.o, i64 %i.p, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 8 ; 6 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !19
  %i.ad = or i8 %i.ac, 1
  store i8 %i.ad, ptr %i.ab, align 1, !tbaa !19
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 16
  store ptr %.0.i11.i.i, ptr %i.ae, align 1
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 24
  store i64 %i.p, ptr %.sroa.56.0..sroa_idx.i, align 1
  %i.af = tail call i32 @upb_EnumValueDef_Number(ptr noundef %1) #11
  %i.ag = load i8, ptr %i.ab, align 1, !tbaa !19
  %i.ah = or i8 %i.ag, 2
  store i8 %i.ah, ptr %i.ab, align 1, !tbaa !19
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 12
  store i32 %i.af, ptr %i.ai, align 1
  %i.aj = tail call zeroext i1 @upb_EnumValueDef_HasOptions(ptr noundef %1) #11
  br i1 %i.aj, label %bb.e, label %bb.j

bb.e:                                             ; preds = %strviewdup.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.ak = tail call ptr @upb_EnumValueDef_Options(ptr noundef %1) #11
  %i.al = load ptr, ptr %0, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.am = call i32 @upb_Encode(ptr noundef %i.ak, ptr noundef nonnull @google__protobuf__EnumValueOptions_msg_init, i32 noundef 0, ptr noundef %i.al, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #11 ; 0 uses
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.not23 = icmp eq ptr %i.an, null
  br i1 %.not23, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @siglongjmp(ptr noundef nonnull %i.ao, i32 noundef 1) #13
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ap = load i64, ptr %i.b, align 8, !tbaa !29
  %i.aq = call ptr @upb_EnumValueDef_Enum(ptr noundef %1) #11
  %i.ar = call ptr @upb_EnumDef_File(ptr noundef %i.aq) #11
  %i.as = call ptr @upb_FileDef_Pool(ptr noundef %i.ar) #11
  %i.at = call ptr @_upb_DefPool_GeneratedExtensionRegistry(ptr noundef %i.as) #11
  %i.au = load ptr, ptr %0, align 8, !tbaa !7     ; 5 uses
  %google__protobuf__EnumValueOptions_msg_init.val.i.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @google__protobuf__EnumValueOptions_msg_init, i64 8), align 8, !tbaa !11
  %i.av = zext i16 %google__protobuf__EnumValueOptions_msg_init.val.i.i to i64 ; 5 uses
  %i.aw = and i64 %i.av, 7
  %i.ax = icmp eq i64 %i.aw, 0
  call void @llvm.assume(i1 %i.ax)
  %.val.i.i.i.i = load ptr, ptr %i.au, align 8, !tbaa !13 ; 4 uses
  %i.ay = getelementptr i8, ptr %i.au, i64 8
  %.val11.i.i.i.i = load ptr, ptr %i.ay, align 8, !tbaa !16
  %i.az = ptrtoint ptr %.val11.i.i.i.i to i64
  %i.ba = ptrtoint ptr %.val.i.i.i.i to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = icmp ult i64 %i.bb, %i.av
  br i1 %i.bc, label %upb_Arena_Malloc.exit.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i.i, !prof !17

upb_Arena_Malloc.exit.thread.i.i.i:               ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.av
  store ptr %i.bd, ptr %i.au, align 8, !tbaa !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  br label %bb.h

upb_Arena_Malloc.exit.i.i.i:                      ; preds = %bb.g
  %i.be = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.au, i64 noundef %i.av) #11 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.h, !prof !18

bb.h:                                             ; preds = %upb_Arena_Malloc.exit.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i
  %.0.i3.i.i.i = phi ptr [ %.val.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i ], [ %i.be, %upb_Arena_Malloc.exit.i.i.i ] ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i3.i.i.i, i8 0, i64 %i.av, i1 false)
  %i.bf = call i32 @upb_Decode(ptr noundef nonnull %i.an, i64 noundef %i.ap, ptr noundef nonnull %.0.i3.i.i.i, ptr noundef nonnull @google__protobuf__EnumValueOptions_msg_init, ptr noundef %i.at, i32 noundef 0, ptr noundef nonnull %i.au) #11
  %.fr = freeze i32 %i.bf
  %.not10.i = icmp eq i32 %.fr, 0
  br i1 %.not10.i, label %google_protobuf_EnumValueOptions_parse_ex.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %upb_Arena_Malloc.exit.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @siglongjmp(ptr noundef nonnull %i.bg, i32 noundef 1) #13
  unreachable

google_protobuf_EnumValueOptions_parse_ex.exit:   ; preds = %bb.h
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__EnumValueOptions_msg_init) #11, !srcloc !20
  %i.bh = load i8, ptr %i.ab, align 1, !tbaa !19
  %i.bi = or i8 %i.bh, 4
  store i8 %i.bi, ptr %i.ab, align 1, !tbaa !19
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 32
  %i.bk = ptrtoint ptr %.0.i3.i.i.i to i64
  store i64 %i.bk, ptr %i.bj, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.j

bb.j:                                             ; preds = %google_protobuf_EnumValueOptions_parse_ex.exit, %strviewdup.exit
  ret ptr %.0.i3.i.i
}

; Function Attrs: nounwind uwtable
define hidden ptr @upb_EnumValueDef_ToProto(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.upb_ToProto_Context, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.a, i8 0, i64 200, i1 false)
  store ptr %1, ptr %2, align 8, !tbaa !7
  %i.b = call ptr @upb_ToProto_ConvertEnumValueDef(ptr noundef nonnull %2, ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define hidden ptr @upb_ToProto_ConvertFieldDef(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = call i32 @__sigsetjmp(ptr noundef nonnull %i.a, i32 noundef 0) #12
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = call fastcc ptr @fielddef_toproto(ptr noundef nonnull %0, ptr noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc nonnull ptr @fielddef_toproto(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !7      ; 4 uses
  %google__protobuf__FieldDescriptorProto_msg_init.val.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @google__protobuf__FieldDescriptorProto_msg_init, i64 8), align 8, !tbaa !11
  %i.d = zext i16 %google__protobuf__FieldDescriptorProto_msg_init.val.i to i64 ; 5 uses
  %i.e = and i64 %i.d, 7
  %i.f = icmp eq i64 %i.e, 0
  tail call void @llvm.assume(i1 %i.f)
  %.val.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !13 ; 4 uses
  %i.g = getelementptr i8, ptr %i.c, i64 8
  %.val11.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !16
  %i.h = ptrtoint ptr %.val11.i.i.i to i64
  %i.i = ptrtoint ptr %.val.i.i.i to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ult i64 %i.j, %i.d
  br i1 %i.k, label %upb_Arena_Malloc.exit.i.i, label %upb_Arena_Malloc.exit.thread.i.i, !prof !17

upb_Arena_Malloc.exit.thread.i.i:                 ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.d
  store ptr %i.l, ptr %i.c, align 8, !tbaa !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  br label %bb.c

upb_Arena_Malloc.exit.i.i:                        ; preds = %bb.a
  %i.m = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.c, i64 noundef %i.d) #11 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.b, label %bb.c, !prof !18

bb.b:                                             ; preds = %upb_Arena_Malloc.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @siglongjmp(ptr noundef nonnull %i.n, i32 noundef 1) #13
  unreachable

bb.c:                                             ; preds = %upb_Arena_Malloc.exit.i.i, %upb_Arena_Malloc.exit.thread.i.i
  %.0.i3.i.i = phi ptr [ %.val.i.i.i, %upb_Arena_Malloc.exit.thread.i.i ], [ %i.m, %upb_Arena_Malloc.exit.i.i ] ; 22 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i3.i.i, i8 0, i64 %i.d, i1 false)
  %i.o = tail call ptr @upb_FieldDef_Name(ptr noundef %1) #11 ; 2 uses
  %i.p = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.o) #14 ; 3 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !7      ; 4 uses
  %i.r = add i64 %i.p, 7
  %i.s = and i64 %i.r, -8                         ; 3 uses
  %.val.i.i.i73 = load ptr, ptr %i.q, align 8, !tbaa !13 ; 4 uses
  %i.t = getelementptr i8, ptr %i.q, i64 8
  %.val11.i.i.i74 = load ptr, ptr %i.t, align 8, !tbaa !16
  %i.u = ptrtoint ptr %.val11.i.i.i74 to i64
  %i.v = ptrtoint ptr %.val.i.i.i73 to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp ult i64 %i.w, %i.s
  br i1 %i.x, label %upb_Arena_Malloc.exit.i.i76, label %upb_Arena_Malloc.exit.thread.i.i75, !prof !17

upb_Arena_Malloc.exit.thread.i.i75:               ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %.val.i.i.i73, i64 %i.s
  store ptr %i.y, ptr %i.q, align 8, !tbaa !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i73) ]
  br label %strviewdup.exit

upb_Arena_Malloc.exit.i.i76:                      ; preds = %bb.c
  %i.z = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.q, i64 noundef %i.s) #11 ; 2 uses
  %.not.i.i77 = icmp eq ptr %i.z, null
  br i1 %.not.i.i77, label %bb.d, label %strviewdup.exit

bb.d:                                             ; preds = %upb_Arena_Malloc.exit.i.i76
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @siglongjmp(ptr noundef nonnull %i.aa, i32 noundef 1) #13
  unreachable

strviewdup.exit:                                  ; preds = %upb_Arena_Malloc.exit.thread.i.i75, %upb_Arena_Malloc.exit.i.i76
  %.0.i11.i.i = phi ptr [ %.val.i.i.i73, %upb_Arena_Malloc.exit.thread.i.i75 ], [ %i.z, %upb_Arena_Malloc.exit.i.i76 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i11.i.i, ptr nonnull readonly align 1 %i.o, i64 %i.p, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 8 ; 16 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !19
  %i.ad = or i8 %i.ac, 1
  store i8 %i.ad, ptr %i.ab, align 1, !tbaa !19
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 32
  store ptr %.0.i11.i.i, ptr %i.ae, align 1
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 40
  store i64 %i.p, ptr %.sroa.56.0..sroa_idx.i, align 1
  %i.af = tail call i32 @upb_FieldDef_Number(ptr noundef %1) #11
  %i.ag = load i8, ptr %i.ab, align 1, !tbaa !19
  %i.ah = or i8 %i.ag, 4
  store i8 %i.ah, ptr %i.ab, align 1, !tbaa !19
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 12
  store i32 %i.af, ptr %i.ai, align 1
  %i.aj = tail call zeroext i1 @upb_FieldDef_IsRequired(ptr noundef %1) #11
  br i1 %i.aj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %strviewdup.exit
  %i.ak = tail call ptr @upb_FieldDef_File(ptr noundef %1) #11
  %i.al = tail call i32 @upb_FileDef_Edition(ptr noundef %i.ak) #11
  %i.am = icmp ugt i32 %i.al, 999
  br i1 %i.am, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %strviewdup.exit
  %i.an = tail call i32 @upb_FieldDef_Label(ptr noundef %1) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sink = phi i32 [ %i.an, %bb.f ], [ 1, %bb.e ]
  %i.ao = load i8, ptr %i.ab, align 1, !tbaa !19
  %i.ap = or i8 %i.ao, 8
  store i8 %i.ap, ptr %i.ab, align 1, !tbaa !19
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 16
  store i32 %.sink, ptr %i.aq, align 1
  %i.ar = tail call i32 @upb_FieldDef_Type(ptr noundef %1) #11
  %i.as = icmp eq i32 %i.ar, 10
  br i1 %i.as, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.at = tail call ptr @upb_FieldDef_File(ptr noundef %1) #11
  %i.au = tail call i32 @upb_FileDef_Edition(ptr noundef %i.at) #11
  %i.av = icmp ugt i32 %i.au, 999
  br i1 %i.av, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aw = tail call i32 @upb_FieldDef_Type(ptr noundef %1) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sink167 = phi i32 [ %i.aw, %bb.i ], [ 11, %bb.h ]
  %i.ax = load i8, ptr %i.ab, align 1, !tbaa !19
  %i.ay = or i8 %i.ax, 16
  store i8 %i.ay, ptr %i.ab, align 1, !tbaa !19
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 20
  store i32 %.sink167, ptr %i.az, align 1
  %i.ba = tail call zeroext i1 @upb_FieldDef_HasJsonName(ptr noundef %1) #11
  br i1 %i.ba, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bb = tail call ptr @upb_FieldDef_JsonName(ptr noundef %1) #11 ; 2 uses
  %i.bc = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.bb) #14 ; 3 uses
  %i.bd = load ptr, ptr %0, align 8, !tbaa !7     ; 4 uses
  %i.be = add i64 %i.bc, 7
  %i.bf = and i64 %i.be, -8                       ; 3 uses
  %.val.i.i.i78 = load ptr, ptr %i.bd, align 8, !tbaa !13 ; 4 uses
  %i.bg = getelementptr i8, ptr %i.bd, i64 8
  %.val11.i.i.i79 = load ptr, ptr %i.bg, align 8, !tbaa !16
  %i.bh = ptrtoint ptr %.val11.i.i.i79 to i64
  %i.bi = ptrtoint ptr %.val.i.i.i78 to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = icmp ult i64 %i.bj, %i.bf
  br i1 %i.bk, label %upb_Arena_Malloc.exit.i.i84, label %upb_Arena_Malloc.exit.thread.i.i80, !prof !17

upb_Arena_Malloc.exit.thread.i.i80:               ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %.val.i.i.i78, i64 %i.bf
  store ptr %i.bl, ptr %i.bd, align 8, !tbaa !13
end_hunk_0
begin_hunk_1_@fielddef_toproto:bb.a
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 1
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !19  ; 2 uses
  switch i8 %i.id, label %special_escape.exit.i.i.1 [
    i8 10, label %bb.at
    i8 13, label %bb.at
    i8 9, label %bb.at
    i8 92, label %bb.at
    i8 39, label %bb.at
    i8 34, label %bb.at
  ]

special_escape.exit.i.i.1:                        ; preds = %.lr.ph.i.i.1
  %i.ie = icmp sgt i8 %i.id, 31
  %..i.i.1 = select i1 %i.ie, i64 1, i64 4
  br label %bb.at

bb.at:                                            ; preds = %special_escape.exit.i.i.1, %.lr.ph.i.i.1, %.lr.ph.i.i.1, %.lr.ph.i.i.1, %.lr.ph.i.i.1, %.lr.ph.i.i.1, %.lr.ph.i.i.1
  %.sink.i.i.1 = phi i64 [ %..i.i.1, %special_escape.exit.i.i.1 ], [ 2, %.lr.ph.i.i.1 ], [ 2, %.lr.ph.i.i.1 ], [ 2, %.lr.ph.i.i.1 ], [ 2, %.lr.ph.i.i.1 ], [ 2, %.lr.ph.i.i.1 ], [ 2, %.lr.ph.i.i.1 ]
  %i.if = add i64 %.sink.i.i.1, %i.ia             ; 3 uses
  %i.ig = add nuw i64 %.03555.i.i, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !32

bb.au:                                            ; preds = %upb_Arena_Malloc.exit.i73.i
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @siglongjmp(ptr noundef nonnull %i.ih, i32 noundef 1) #13
  unreachable

bb.av:                                            ; preds = %upb_Arena_Malloc.exit.i73.i, %upb_Arena_Malloc.exit.thread.i70.i
  %.0.i48.i.i = phi ptr [ %.val.i.i68.i, %upb_Arena_Malloc.exit.thread.i70.i ], [ %i.hw, %upb_Arena_Malloc.exit.i73.i ] ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dz
  br i1 %.not62.i.i, label %default_bytes.exit.i, label %.lr.ph60.i.i

.lr.ph60.i.i:                                     ; preds = %bb.av, %bb.bb
  %.03658.i.i = phi ptr [ %i.ij, %bb.bb ], [ %i.dy, %bb.av ] ; 2 uses
  %.03757.i.i = phi ptr [ %.138.i.i, %bb.bb ], [ %.0.i48.i.i, %bb.av ] ; 9 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.03658.i.i, i64 1 ; 2 uses
  %i.ik = load i8, ptr %.03658.i.i, align 1, !tbaa !19 ; 7 uses
  switch i8 %i.ik, label %special_escape.exit43.i.i [
    i8 10, label %special_escape.exit45.i.i
    i8 13, label %bb.aw
    i8 9, label %bb.ax
    i8 92, label %bb.ay
    i8 39, label %bb.ay
    i8 34, label %bb.ay
  ]

bb.aw:                                            ; preds = %.lr.ph60.i.i
  br label %special_escape.exit45.i.i

bb.ax:                                            ; preds = %.lr.ph60.i.i
  br label %special_escape.exit45.i.i

bb.ay:                                            ; preds = %.lr.ph60.i.i, %.lr.ph60.i.i, %.lr.ph60.i.i
  br label %special_escape.exit45.i.i

special_escape.exit45.i.i:                        ; preds = %bb.ay, %bb.ax, %bb.aw, %.lr.ph60.i.i
  %.0.i44.i.i = phi i8 [ 110, %.lr.ph60.i.i ], [ %i.ik, %bb.ay ], [ 114, %bb.aw ], [ 116, %bb.ax ]
  store i8 92, ptr %.03757.i.i, align 1, !tbaa !19
  %i.il = getelementptr inbounds nuw i8, ptr %.03757.i.i, i64 1
  %i.im = getelementptr inbounds nuw i8, ptr %.03757.i.i, i64 2
  store i8 %.0.i44.i.i, ptr %i.il, align 1, !tbaa !19
  br label %bb.bb

special_escape.exit43.i.i:                        ; preds = %.lr.ph60.i.i
  %i.in = icmp sgt i8 %i.ik, 31
  %i.io = getelementptr inbounds nuw i8, ptr %.03757.i.i, i64 1 ; 2 uses
  br i1 %i.in, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %special_escape.exit43.i.i
  store i8 %i.ik, ptr %.03757.i.i, align 1, !tbaa !19
  br label %bb.bb

bb.ba:                                            ; preds = %special_escape.exit43.i.i
  store i8 92, ptr %.03757.i.i, align 1, !tbaa !19
  %i.ip = lshr i8 %i.ik, 6
  %i.iq = or disjoint i8 %i.ip, 48
  %i.ir = getelementptr inbounds nuw i8, ptr %.03757.i.i, i64 2
  store i8 %i.iq, ptr %i.io, align 1, !tbaa !19
  %i.is = lshr i8 %i.ik, 3
  %i.it = and i8 %i.is, 7
  %i.iu = or disjoint i8 %i.it, 48
  %i.iv = getelementptr inbounds nuw i8, ptr %.03757.i.i, i64 3
  store i8 %i.iu, ptr %i.ir, align 1, !tbaa !19
  %i.iw = and i8 %i.ik, 7
  %i.ix = or disjoint i8 %i.iw, 48
  %i.iy = getelementptr inbounds nuw i8, ptr %.03757.i.i, i64 4
  store i8 %i.ix, ptr %i.iv, align 1, !tbaa !19
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %special_escape.exit45.i.i
  %.138.i.i = phi ptr [ %i.im, %special_escape.exit45.i.i ], [ %i.io, %bb.az ], [ %i.iy, %bb.ba ]
  %i.iz = icmp ult ptr %i.ij, %i.ii
  br i1 %i.iz, label %.lr.ph60.i.i, label %default_bytes.exit.i, !llvm.loop !33

default_bytes.exit.i:                             ; preds = %bb.bb, %bb.av
  %i.ja = insertvalue { ptr, i64 } poison, ptr %.0.i48.i.i, 0
  %i.jb = insertvalue { ptr, i64 } %i.ja, i64 %.0.lcssa.i.i, 1
  br label %default_string.exit

bb.bc:                                            ; preds = %bb.af
  unreachable

default_string.exit:                              ; preds = %strviewdup.exit.i, %strviewdup.exit49.i, %bb.ae, %strviewdup.exit58.i, %strviewdup.exit67.i, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %strviewdup2.exit.i, %default_bytes.exit.i
  %.fca.1.insert.merged.i = phi { ptr, i64 } [ %i.fw, %strviewdup.exit58.i ], [ %i.gn, %strviewdup.exit67.i ], [ %i.go, %bb.ak ], [ %i.gp, %bb.al ], [ %i.gq, %bb.am ], [ %i.gr, %bb.an ], [ %i.gt, %bb.ao ], [ %i.gu, %bb.ap ], [ %i.hh, %strviewdup2.exit.i ], [ %i.jb, %default_bytes.exit.i ], [ %i.fh, %bb.ae ], [ %i.ff, %strviewdup.exit49.i ], [ %i.et, %strviewdup.exit.i ] ; 2 uses
  %i.jc = extractvalue { ptr, i64 } %.fca.1.insert.merged.i, 0
  %i.jd = extractvalue { ptr, i64 } %.fca.1.insert.merged.i, 1
  %i.je = load i8, ptr %i.ab, align 1, !tbaa !19
  %i.jf = or i8 %i.je, 64
  store i8 %i.jf, ptr %i.ab, align 1, !tbaa !19
  %i.jg = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 80
  store ptr %i.jc, ptr %i.jg, align 1
  %.sroa.56.0..sroa_idx.i115 = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 88
  store i64 %i.jd, ptr %.sroa.56.0..sroa_idx.i115, align 1
  br label %bb.bd

bb.bd:                                            ; preds = %default_string.exit, %bb.v
  %i.jh = tail call ptr @upb_FieldDef_ContainingOneof(ptr noundef %1) #11 ; 2 uses
  %.not70 = icmp eq ptr %i.jh, null
  br i1 %.not70, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ji = tail call i32 @upb_OneofDef_Index(ptr noundef nonnull %i.jh) #11
  %i.jj = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 9 ; 2 uses
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !19
  %i.jl = or i8 %i.jk, 1
  store i8 %i.jl, ptr %i.jj, align 1, !tbaa !19
  %i.jm = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 24
  store i32 %i.ji, ptr %i.jm, align 1
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.jn = tail call zeroext i1 @_upb_FieldDef_IsProto3Optional(ptr noundef %1) #11
  br i1 %i.jn, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.jo = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 9 ; 2 uses
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !19
  %i.jq = or i8 %i.jp, 4
  store i8 %i.jq, ptr %i.jo, align 1, !tbaa !19
  %i.jr = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 10
  store i8 1, ptr %i.jr, align 1
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.js = tail call zeroext i1 @upb_FieldDef_HasOptions(ptr noundef %1) #11
  br i1 %i.js, label %bb.bi, label %bb.bn

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.jt = tail call ptr @upb_FieldDef_Options(ptr noundef %1) #11
  %i.ju = load ptr, ptr %0, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.jv = call i32 @upb_Encode(ptr noundef %i.jt, ptr noundef nonnull @google__protobuf__FieldOptions_msg_init, i32 noundef 0, ptr noundef %i.ju, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #11 ; 0 uses
  %i.jw = load ptr, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.not71 = icmp eq ptr %i.jw, null
  br i1 %.not71, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @siglongjmp(ptr noundef nonnull %i.jx, i32 noundef 1) #13
  unreachable

bb.bk:                                            ; preds = %bb.bi
  %i.jy = load i64, ptr %i.b, align 8, !tbaa !29
  %i.jz = call ptr @upb_FieldDef_File(ptr noundef %1) #11
  %i.ka = call ptr @upb_FileDef_Pool(ptr noundef %i.jz) #11
  %i.kb = call ptr @_upb_DefPool_GeneratedExtensionRegistry(ptr noundef %i.ka) #11
  %i.kc = load ptr, ptr %0, align 8, !tbaa !7     ; 5 uses
  %google__protobuf__FieldOptions_msg_init.val.i.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @google__protobuf__FieldOptions_msg_init, i64 8), align 8, !tbaa !11
  %i.kd = zext i16 %google__protobuf__FieldOptions_msg_init.val.i.i to i64 ; 5 uses
  %i.ke = and i64 %i.kd, 7
  %i.kf = icmp eq i64 %i.ke, 0
  call void @llvm.assume(i1 %i.kf)
  %.val.i.i.i.i116 = load ptr, ptr %i.kc, align 8, !tbaa !13 ; 4 uses
  %i.kg = getelementptr i8, ptr %i.kc, i64 8
  %.val11.i.i.i.i117 = load ptr, ptr %i.kg, align 8, !tbaa !16
  %i.kh = ptrtoint ptr %.val11.i.i.i.i117 to i64
  %i.ki = ptrtoint ptr %.val.i.i.i.i116 to i64
  %i.kj = sub i64 %i.kh, %i.ki
  %i.kk = icmp ult i64 %i.kj, %i.kd
  br i1 %i.kk, label %upb_Arena_Malloc.exit.i.i.i119, label %upb_Arena_Malloc.exit.thread.i.i.i118, !prof !17

upb_Arena_Malloc.exit.thread.i.i.i118:            ; preds = %bb.bk
  %i.kl = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i116, i64 %i.kd
  store ptr %i.kl, ptr %i.kc, align 8, !tbaa !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i116) ]
  br label %bb.bl

upb_Arena_Malloc.exit.i.i.i119:                   ; preds = %bb.bk
  %i.km = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.kc, i64 noundef %i.kd) #11 ; 2 uses
  %.not.i.i.i120 = icmp eq ptr %i.km, null
  br i1 %.not.i.i.i120, label %bb.bm, label %bb.bl, !prof !18

bb.bl:                                            ; preds = %upb_Arena_Malloc.exit.i.i.i119, %upb_Arena_Malloc.exit.thread.i.i.i118
  %.0.i3.i.i.i = phi ptr [ %.val.i.i.i.i116, %upb_Arena_Malloc.exit.thread.i.i.i118 ], [ %i.km, %upb_Arena_Malloc.exit.i.i.i119 ] ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i3.i.i.i, i8 0, i64 %i.kd, i1 false)
  %i.kn = call i32 @upb_Decode(ptr noundef nonnull %i.jw, i64 noundef %i.jy, ptr noundef nonnull %.0.i3.i.i.i, ptr noundef nonnull @google__protobuf__FieldOptions_msg_init, ptr noundef %i.kb, i32 noundef 0, ptr noundef nonnull %i.kc) #11
  %.fr = freeze i32 %i.kn
  %.not10.i = icmp eq i32 %.fr, 0
  br i1 %.not10.i, label %google_protobuf_FieldOptions_parse_ex.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %upb_Arena_Malloc.exit.i.i.i119
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @siglongjmp(ptr noundef nonnull %i.ko, i32 noundef 1) #13
  unreachable

google_protobuf_FieldOptions_parse_ex.exit:       ; preds = %bb.bl
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__FieldOptions_msg_init) #11, !srcloc !20
  %i.kp = load i8, ptr %i.ab, align 1, !tbaa !19
  %i.kq = or i8 %i.kp, -128
  store i8 %i.kq, ptr %i.ab, align 1, !tbaa !19
  %i.kr = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 112
  %i.ks = ptrtoint ptr %.0.i3.i.i.i to i64
  store i64 %i.ks, ptr %i.kr, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.bn

bb.bn:                                            ; preds = %google_protobuf_FieldOptions_parse_ex.exit, %bb.bh
  ret ptr %.0.i3.i.i
}

; Function Attrs: nounwind uwtable
define hidden ptr @upb_FieldDef_ToProto(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.upb_ToProto_Context, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.a, i8 0, i64 200, i1 false)
  store ptr %1, ptr %2, align 8, !tbaa !7
  %i.b = call ptr @upb_ToProto_ConvertFieldDef(ptr noundef nonnull %2, ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define hidden ptr @upb_ToProto_ConvertOneofDef(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = call i32 @__sigsetjmp(ptr noundef nonnull %i.a, i32 noundef 0) #12
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = call fastcc ptr @oneofdef_toproto(ptr noundef nonnull %0, ptr noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc nonnull ptr @oneofdef_toproto(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !7      ; 4 uses
  %google__protobuf__OneofDescriptorProto_msg_init.val.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @google__protobuf__OneofDescriptorProto_msg_init, i64 8), align 8, !tbaa !11
  %i.d = zext i16 %google__protobuf__OneofDescriptorProto_msg_init.val.i to i64 ; 5 uses
  %i.e = and i64 %i.d, 7
  %i.f = icmp eq i64 %i.e, 0
  tail call void @llvm.assume(i1 %i.f)
  %.val.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !13 ; 4 uses
  %i.g = getelementptr i8, ptr %i.c, i64 8
  %.val11.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !16
  %i.h = ptrtoint ptr %.val11.i.i.i to i64
  %i.i = ptrtoint ptr %.val.i.i.i to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ult i64 %i.j, %i.d
  br i1 %i.k, label %upb_Arena_Malloc.exit.i.i, label %upb_Arena_Malloc.exit.thread.i.i, !prof !17

upb_Arena_Malloc.exit.thread.i.i:                 ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.d
  store ptr %i.l, ptr %i.c, align 8, !tbaa !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  br label %bb.c

upb_Arena_Malloc.exit.i.i:                        ; preds = %bb.a
  %i.m = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.c, i64 noundef %i.d) #11 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.b, label %bb.c, !prof !18

bb.b:                                             ; preds = %upb_Arena_Malloc.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @siglongjmp(ptr noundef nonnull %i.n, i32 noundef 1) #13
  unreachable

bb.c:                                             ; preds = %upb_Arena_Malloc.exit.i.i, %upb_Arena_Malloc.exit.thread.i.i
  %.0.i3.i.i = phi ptr [ %.val.i.i.i, %upb_Arena_Malloc.exit.thread.i.i ], [ %i.m, %upb_Arena_Malloc.exit.i.i ] ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i3.i.i, i8 0, i64 %i.d, i1 false)
  %i.o = tail call ptr @upb_OneofDef_Name(ptr noundef %1) #11 ; 2 uses
  %i.p = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.o) #14 ; 3 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !7      ; 4 uses
  %i.r = add i64 %i.p, 7
  %i.s = and i64 %i.r, -8                         ; 3 uses
  %.val.i.i.i23 = load ptr, ptr %i.q, align 8, !tbaa !13 ; 4 uses
  %i.t = getelementptr i8, ptr %i.q, i64 8
  %.val11.i.i.i24 = load ptr, ptr %i.t, align 8, !tbaa !16
  %i.u = ptrtoint ptr %.val11.i.i.i24 to i64
  %i.v = ptrtoint ptr %.val.i.i.i23 to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp ult i64 %i.w, %i.s
  br i1 %i.x, label %upb_Arena_Malloc.exit.i.i26, label %upb_Arena_Malloc.exit.thread.i.i25, !prof !17

upb_Arena_Malloc.exit.thread.i.i25:               ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %.val.i.i.i23, i64 %i.s
  store ptr %i.y, ptr %i.q, align 8, !tbaa !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i23) ]
  br label %strviewdup.exit

upb_Arena_Malloc.exit.i.i26:                      ; preds = %bb.c
  %i.z = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.q, i64 noundef %i.s) #11 ; 2 uses
  %.not.i.i27 = icmp eq ptr %i.z, null
  br i1 %.not.i.i27, label %bb.d, label %strviewdup.exit

bb.d:                                             ; preds = %upb_Arena_Malloc.exit.i.i26
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @siglongjmp(ptr noundef nonnull %i.aa, i32 noundef 1) #13
  unreachable

strviewdup.exit:                                  ; preds = %upb_Arena_Malloc.exit.thread.i.i25, %upb_Arena_Malloc.exit.i.i26
  %.0.i11.i.i = phi ptr [ %.val.i.i.i23, %upb_Arena_Malloc.exit.thread.i.i25 ], [ %i.z, %upb_Arena_Malloc.exit.i.i26 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i11.i.i, ptr nonnull readonly align 1 %i.o, i64 %i.p, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 8 ; 4 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !19
  %i.ad = or i8 %i.ac, 1
  store i8 %i.ad, ptr %i.ab, align 1, !tbaa !19
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 16
  store ptr %.0.i11.i.i, ptr %i.ae, align 1
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 24
  store i64 %i.p, ptr %.sroa.56.0..sroa_idx.i, align 1
  %i.af = tail call zeroext i1 @upb_OneofDef_HasOptions(ptr noundef %1) #11
  br i1 %i.af, label %bb.e, label %bb.j

bb.e:                                             ; preds = %strviewdup.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.ag = tail call ptr @upb_OneofDef_Options(ptr noundef %1) #11
  %i.ah = load ptr, ptr %0, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.ai = call i32 @upb_Encode(ptr noundef %i.ag, ptr noundef nonnull @google__protobuf__OneofOptions_msg_init, i32 noundef 0, ptr noundef %i.ah, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #11 ; 0 uses
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.not21 = icmp eq ptr %i.aj, null
  br i1 %.not21, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @siglongjmp(ptr noundef nonnull %i.ak, i32 noundef 1) #13
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.al = load i64, ptr %i.b, align 8, !tbaa !29
  %i.am = call ptr @upb_OneofDef_ContainingType(ptr noundef %1) #11
  %i.an = call ptr @upb_MessageDef_File(ptr noundef %i.am) #11
  %i.ao = call ptr @upb_FileDef_Pool(ptr noundef %i.an) #11
  %i.ap = call ptr @_upb_DefPool_GeneratedExtensionRegistry(ptr noundef %i.ao) #11
  %i.aq = load ptr, ptr %0, align 8, !tbaa !7     ; 5 uses
  %google__protobuf__OneofOptions_msg_init.val.i.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @google__protobuf__OneofOptions_msg_init, i64 8), align 8, !tbaa !11
  %i.ar = zext i16 %google__protobuf__OneofOptions_msg_init.val.i.i to i64 ; 5 uses
  %i.as = and i64 %i.ar, 7
  %i.at = icmp eq i64 %i.as, 0
  call void @llvm.assume(i1 %i.at)
  %.val.i.i.i.i = load ptr, ptr %i.aq, align 8, !tbaa !13 ; 4 uses
  %i.au = getelementptr i8, ptr %i.aq, i64 8
  %.val11.i.i.i.i = load ptr, ptr %i.au, align 8, !tbaa !16
  %i.av = ptrtoint ptr %.val11.i.i.i.i to i64
  %i.aw = ptrtoint ptr %.val.i.i.i.i to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = icmp ult i64 %i.ax, %i.ar
  br i1 %i.ay, label %upb_Arena_Malloc.exit.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i.i, !prof !17

upb_Arena_Malloc.exit.thread.i.i.i:               ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.ar
  store ptr %i.az, ptr %i.aq, align 8, !tbaa !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  br label %bb.h

upb_Arena_Malloc.exit.i.i.i:                      ; preds = %bb.g
  %i.ba = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.aq, i64 noundef %i.ar) #11 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.h, !prof !18

bb.h:                                             ; preds = %upb_Arena_Malloc.exit.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i
  %.0.i3.i.i.i = phi ptr [ %.val.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i ], [ %i.ba, %upb_Arena_Malloc.exit.i.i.i ] ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i3.i.i.i, i8 0, i64 %i.ar, i1 false)
  %i.bb = call i32 @upb_Decode(ptr noundef nonnull %i.aj, i64 noundef %i.al, ptr noundef nonnull %.0.i3.i.i.i, ptr noundef nonnull @google__protobuf__OneofOptions_msg_init, ptr noundef %i.ap, i32 noundef 0, ptr noundef nonnull %i.aq) #11
  %.fr = freeze i32 %i.bb
  %.not10.i = icmp eq i32 %.fr, 0
  br i1 %.not10.i, label %google_protobuf_OneofOptions_parse_ex.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %upb_Arena_Malloc.exit.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @siglongjmp(ptr noundef nonnull %i.bc, i32 noundef 1) #13
  unreachable

google_protobuf_OneofOptions_parse_ex.exit:       ; preds = %bb.h
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__OneofOptions_msg_init) #11, !srcloc !20
  %i.bd = load i8, ptr %i.ab, align 1, !tbaa !19
  %i.be = or i8 %i.bd, 2
  store i8 %i.be, ptr %i.ab, align 1, !tbaa !19
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 32
  %i.bg = ptrtoint ptr %.0.i3.i.i.i to i64
  store i64 %i.bg, ptr %i.bf, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.j

bb.j:                                             ; preds = %google_protobuf_OneofOptions_parse_ex.exit, %strviewdup.exit
  ret ptr %.0.i3.i.i
}

; Function Attrs: nounwind uwtable
define hidden ptr @upb_OneofDef_ToProto(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.upb_ToProto_Context, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.a, i8 0, i64 200, i1 false)
  store ptr %1, ptr %2, align 8, !tbaa !7
  %i.b = call ptr @upb_ToProto_ConvertOneofDef(ptr noundef nonnull %2, ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define hidden ptr @upb_ToProto_ConvertFileDef(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %struct.upb_MiniTableField, align 4 ; 4 uses
  %3 = alloca %struct.upb_MiniTableField, align 4 ; 4 uses
  %4 = alloca %struct.upb_MiniTableField, align 4 ; 4 uses
  %5 = alloca %struct.upb_MiniTableField, align 4 ; 4 uses
  %6 = alloca %struct.upb_MiniTableField, align 4 ; 4 uses
  %7 = alloca %struct.upb_MiniTableField, align 4 ; 4 uses
  %8 = alloca %struct.upb_MiniTableField, align 4 ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.d = call i32 @__sigsetjmp(ptr noundef nonnull %i.c, i32 noundef 0) #12
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %filedef_toproto.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !7      ; 4 uses
  %google__protobuf__FileDescriptorProto_msg_init.val.i.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @google__protobuf__FileDescriptorProto_msg_init, i64 8), align 8, !tbaa !11
  %i.f = zext i16 %google__protobuf__FileDescriptorProto_msg_init.val.i.i to i64 ; 5 uses
  %i.g = and i64 %i.f, 7
  %i.h = icmp eq i64 %i.g, 0
  call void @llvm.assume(i1 %i.h)
  %.val.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !13 ; 4 uses
  %i.i = getelementptr i8, ptr %i.e, i64 8
  %.val11.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !16
  %i.j = ptrtoint ptr %.val11.i.i.i.i to i64
  %i.k = ptrtoint ptr %.val.i.i.i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ult i64 %i.l, %i.f
  br i1 %i.m, label %upb_Arena_Malloc.exit.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i.i, !prof !17

upb_Arena_Malloc.exit.thread.i.i.i:               ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.f
  store ptr %i.n, ptr %i.e, align 8, !tbaa !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  br label %bb.d

upb_Arena_Malloc.exit.i.i.i:                      ; preds = %bb.b
  %i.o = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.e, i64 noundef %i.f) #11 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.d, !prof !18

bb.c:                                             ; preds = %upb_Arena_Malloc.exit.i.i.i
  call void @siglongjmp(ptr noundef nonnull %i.c, i32 noundef 1) #13
  unreachable

bb.d:                                             ; preds = %upb_Arena_Malloc.exit.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i
  %.0.i3.i.i.i = phi ptr [ %.val.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i ], [ %i.o, %upb_Arena_Malloc.exit.i.i.i ] ; 21 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i3.i.i.i, i8 0, i64 %i.f, i1 false)
  %i.p = call ptr @upb_FileDef_Name(ptr noundef %1) #11 ; 2 uses
  %i.q = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.p) #14 ; 3 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !7      ; 4 uses
  %i.s = add i64 %i.q, 7
  %i.t = and i64 %i.s, -8                         ; 3 uses
  %.val.i.i.i134.i = load ptr, ptr %i.r, align 8, !tbaa !13 ; 4 uses
  %i.u = getelementptr i8, ptr %i.r, i64 8
  %.val11.i.i.i135.i = load ptr, ptr %i.u, align 8, !tbaa !16
  %i.v = ptrtoint ptr %.val11.i.i.i135.i to i64
  %i.w = ptrtoint ptr %.val.i.i.i134.i to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = icmp ult i64 %i.x, %i.t
  br i1 %i.y, label %upb_Arena_Malloc.exit.i.i137.i, label %upb_Arena_Malloc.exit.thread.i.i136.i, !prof !17

upb_Arena_Malloc.exit.thread.i.i136.i:            ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i.i.i134.i, i64 %i.t
  store ptr %i.z, ptr %i.r, align 8, !tbaa !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i134.i) ]
  br label %strviewdup.exit.i

upb_Arena_Malloc.exit.i.i137.i:                   ; preds = %bb.d
  %i.aa = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.r, i64 noundef %i.t) #11 ; 2 uses
  %.not.i.i138.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i138.i, label %bb.e, label %strviewdup.exit.i

bb.e:                                             ; preds = %upb_Arena_Malloc.exit.i.i137.i
  call void @siglongjmp(ptr noundef nonnull %i.c, i32 noundef 1) #13
  unreachable

strviewdup.exit.i:                                ; preds = %upb_Arena_Malloc.exit.i.i137.i, %upb_Arena_Malloc.exit.thread.i.i136.i
  %.0.i11.i.i.i = phi ptr [ %.val.i.i.i134.i, %upb_Arena_Malloc.exit.thread.i.i136.i ], [ %i.aa, %upb_Arena_Malloc.exit.i.i137.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i11.i.i.i, ptr nonnull readonly align 1 %i.p, i64 %i.q, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i, i64 8 ; 10 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !19
  %i.ad = or i8 %i.ac, 1
  store i8 %i.ad, ptr %i.ab, align 1, !tbaa !19
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i, i64 16
  store ptr %.0.i11.i.i.i, ptr %i.ae, align 1
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i, i64 24
  store i64 %i.q, ptr %.sroa.56.0..sroa_idx.i.i, align 1
  %i.af = call ptr @upb_FileDef_Package(ptr noundef %1) #11 ; 4 uses
  %.not128.i = icmp eq ptr %i.af, null
  br i1 %.not128.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %strviewdup.exit.i
  %char0.i = load i8, ptr %i.af, align 1
  %.not129.i = icmp eq i8 %char0.i, 0
  br i1 %.not129.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.af) #14 ; 3 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !7     ; 4 uses
  %i.ai = add i64 %i.ag, 7
  %i.aj = and i64 %i.ai, -8                       ; 3 uses
  %.val.i.i.i139.i = load ptr, ptr %i.ah, align 8, !tbaa !13 ; 4 uses
  %i.ak = getelementptr i8, ptr %i.ah, i64 8
  %.val11.i.i.i140.i = load ptr, ptr %i.ak, align 8, !tbaa !16
  %i.al = ptrtoint ptr %.val11.i.i.i140.i to i64
  %i.am = ptrtoint ptr %.val.i.i.i139.i to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = icmp ult i64 %i.an, %i.aj
  br i1 %i.ao, label %upb_Arena_Malloc.exit.i.i145.i, label %upb_Arena_Malloc.exit.thread.i.i141.i, !prof !17

upb_Arena_Malloc.exit.thread.i.i141.i:            ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.i.i.i139.i, i64 %i.aj
  store ptr %i.ap, ptr %i.ah, align 8, !tbaa !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i139.i) ]
  br label %strviewdup.exit147.i

upb_Arena_Malloc.exit.i.i145.i:                   ; preds = %bb.g
  %i.aq = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.ah, i64 noundef %i.aj) #11 ; 2 uses
  %.not.i.i146.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i146.i, label %bb.h, label %strviewdup.exit147.i

bb.h:                                             ; preds = %upb_Arena_Malloc.exit.i.i145.i
  call void @siglongjmp(ptr noundef nonnull %i.c, i32 noundef 1) #13
  unreachable

strviewdup.exit147.i:                             ; preds = %upb_Arena_Malloc.exit.i.i145.i, %upb_Arena_Malloc.exit.thread.i.i141.i
  %.0.i11.i.i142.i = phi ptr [ %.val.i.i.i139.i, %upb_Arena_Malloc.exit.thread.i.i141.i ], [ %i.aq, %upb_Arena_Malloc.exit.i.i145.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i11.i.i142.i, ptr nonnull readonly align 1 %i.af, i64 %i.ag, i1 false)
  %i.ar = load i8, ptr %i.ab, align 1, !tbaa !19
  %i.as = or i8 %i.ar, 2
  store i8 %i.as, ptr %i.ab, align 1, !tbaa !19
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i, i64 32
  store ptr %.0.i11.i.i142.i, ptr %i.at, align 1
  %.sroa.56.0..sroa_idx.i148.i = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i, i64 40
  store i64 %i.ag, ptr %.sroa.56.0..sroa_idx.i148.i, align 1
  br label %bb.i

bb.i:                                             ; preds = %strviewdup.exit147.i, %bb.f, %strviewdup.exit.i
  %i.au = call i32 @upb_FileDef_Edition(ptr noundef %1) #11 ; 2 uses
  switch i32 %i.au, label %bb.l [
    i32 998, label %bb.n
    i32 999, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.av = load ptr, ptr %0, align 8, !tbaa !7     ; 4 uses
  %.val.i.i.i149.i = load ptr, ptr %i.av, align 8, !tbaa !13 ; 4 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  %.val11.i.i.i150.i = load ptr, ptr %i.aw, align 8, !tbaa !16
  %i.ax = ptrtoint ptr %.val11.i.i.i150.i to i64
  %i.ay = ptrtoint ptr %.val.i.i.i149.i to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = icmp ult i64 %i.az, 8
  br i1 %i.ba, label %upb_Arena_Malloc.exit.i.i155.i, label %upb_Arena_Malloc.exit.thread.i.i151.i, !prof !17

upb_Arena_Malloc.exit.thread.i.i151.i:            ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %.val.i.i.i149.i, i64 8
  store ptr %i.bb, ptr %i.av, align 8, !tbaa !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i149.i) ]
  br label %strviewdup.exit157.i

end_hunk_1
begin_hunk_2_@upb_ToProto_ConvertFileDef:bb.a
  %i.cj = getelementptr i8, ptr %i.cg, i64 8
  %.val11.i.i.i170.i = load ptr, ptr %i.cj, align 8, !tbaa !16
  %i.ck = ptrtoint ptr %.val11.i.i.i170.i to i64
  %i.cl = ptrtoint ptr %.val.i.i.i169.i to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = icmp ult i64 %i.cm, %i.ci
  br i1 %i.cn, label %upb_Arena_Malloc.exit.i.i175.i, label %upb_Arena_Malloc.exit.thread.i.i171.i, !prof !17

upb_Arena_Malloc.exit.thread.i.i171.i:            ; preds = %.lr.ph.i
  %i.co = getelementptr inbounds nuw i8, ptr %.val.i.i.i169.i, i64 %i.ci
  store ptr %i.co, ptr %i.cg, align 8, !tbaa !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i169.i) ]
  br label %strviewdup.exit177.i

upb_Arena_Malloc.exit.i.i175.i:                   ; preds = %.lr.ph.i
  %i.cp = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.cg, i64 noundef %i.ci) #11 ; 2 uses
  %.not.i.i176.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i176.i, label %bb.o, label %strviewdup.exit177.i

bb.o:                                             ; preds = %upb_Arena_Malloc.exit.i.i175.i
  call void @siglongjmp(ptr noundef nonnull %i.c, i32 noundef 1) #13
  unreachable

strviewdup.exit177.i:                             ; preds = %upb_Arena_Malloc.exit.i.i175.i, %upb_Arena_Malloc.exit.thread.i.i171.i
  %.0.i11.i.i172.i = phi ptr [ %.val.i.i.i169.i, %upb_Arena_Malloc.exit.thread.i.i171.i ], [ %i.cp, %upb_Arena_Malloc.exit.i.i175.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i11.i.i172.i, ptr nonnull readonly align 1 %i.ce, i64 %i.cf, i1 false)
  store ptr %.0.i11.i.i172.i, ptr %i.cb, align 8, !tbaa !28
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i64 %i.cf, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !29
  %i.cq = add nuw i64 %.0182.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cq, %i.bt
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !34

bb.p:                                             ; preds = %._crit_edge.i
  %i.cr = shl nsw i64 %i.bx, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bz, ptr align 4 %i.ca, i64 %i.cr, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge.i
  %i.cs = call i32 @upb_FileDef_WeakDependencyCount(ptr noundef %1) #11 ; 2 uses
  %i.ct = sext i32 %i.cs to i64                   ; 2 uses
  %i.cu = load ptr, ptr %0, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) @__const.google_protobuf_FileDescriptorProto_resize_weak_dependency.field, i64 12, i1 false)
  %i.cv = call fastcc ptr @upb_Message_ResizeArrayUninitialized(ptr noundef nonnull %.0.i3.i.i.i, ptr noundef %6, i64 noundef range(i64 -2147483648, 2147483648) %i.ct, ptr noundef %i.cu)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %i.cw = call ptr @_upb_FileDef_WeakDependencyIndexes(ptr noundef %1) #11
  %.not131.i = icmp eq i32 %i.cs, 0
  br i1 %.not131.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cx = shl nsw i64 %i.ct, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cv, ptr align 4 %i.cw, i64 %i.cx, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cy = call i32 @upb_FileDef_TopLevelMessageCount(ptr noundef %1) #11 ; 2 uses
  %i.cz = sext i32 %i.cy to i64                   ; 2 uses
  %i.da = load ptr, ptr %0, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) @__const.google_protobuf_FileDescriptorProto_resize_message_type.field, i64 12, i1 false)
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__DescriptorProto_msg_init) #11, !srcloc !20
  %i.db = call fastcc ptr @upb_Message_ResizeArrayUninitialized(ptr noundef nonnull %.0.i3.i.i.i, ptr noundef %5, i64 noundef range(i64 -2147483648, 2147483648) %i.cz, ptr noundef %i.da)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %.not199.i = icmp eq i32 %i.cy, 0
  br i1 %.not199.i, label %._crit_edge186.i, label %.lr.ph185.i

._crit_edge186.i:                                 ; preds = %.lr.ph185.i, %bb.s
  %i.dc = call i32 @upb_FileDef_TopLevelEnumCount(ptr noundef %1) #11 ; 2 uses
  %i.dd = sext i32 %i.dc to i64                   ; 2 uses
  %i.de = load ptr, ptr %0, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) @__const.google_protobuf_FileDescriptorProto_resize_enum_type.field, i64 12, i1 false)
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__EnumDescriptorProto_msg_init) #11, !srcloc !20
  %i.df = call fastcc ptr @upb_Message_ResizeArrayUninitialized(ptr noundef nonnull %.0.i3.i.i.i, ptr noundef %4, i64 noundef range(i64 -2147483648, 2147483648) %i.dd, ptr noundef %i.de)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %.not200.i = icmp eq i32 %i.dc, 0
  br i1 %.not200.i, label %._crit_edge190.i, label %.lr.ph189.i

.lr.ph185.i:                                      ; preds = %bb.s, %.lr.ph185.i
  %.0119183.i = phi i64 [ %i.dk, %.lr.ph185.i ], [ 0, %bb.s ] ; 3 uses
  %i.dg = trunc i64 %.0119183.i to i32
  %i.dh = call ptr @upb_FileDef_TopLevelMessage(ptr noundef %1, i32 noundef %i.dg) #11
  %i.di = call fastcc ptr @msgdef_toproto(ptr noundef nonnull %0, ptr noundef %i.dh)
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.0119183.i
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !35
  %i.dk = add nuw i64 %.0119183.i, 1              ; 2 uses
  %exitcond203.not.i = icmp eq i64 %i.dk, %i.cz
  br i1 %exitcond203.not.i, label %._crit_edge186.i, label %.lr.ph185.i, !llvm.loop !37

._crit_edge190.i:                                 ; preds = %.lr.ph189.i, %._crit_edge186.i
  %i.dl = call i32 @upb_FileDef_ServiceCount(ptr noundef %1) #11 ; 2 uses
  %i.dm = sext i32 %i.dl to i64                   ; 2 uses
  %i.dn = load ptr, ptr %0, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) @__const.google_protobuf_FileDescriptorProto_resize_service.field, i64 12, i1 false)
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__ServiceDescriptorProto_msg_init) #11, !srcloc !20
  %i.do = call fastcc ptr @upb_Message_ResizeArrayUninitialized(ptr noundef nonnull %.0.i3.i.i.i, ptr noundef %3, i64 noundef range(i64 -2147483648, 2147483648) %i.dm, ptr noundef %i.dn)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %.not201.i = icmp eq i32 %i.dl, 0
  br i1 %.not201.i, label %._crit_edge194.i, label %.lr.ph193.i

.lr.ph189.i:                                      ; preds = %._crit_edge186.i, %.lr.ph189.i
  %.0121187.i = phi i64 [ %i.dt, %.lr.ph189.i ], [ 0, %._crit_edge186.i ] ; 3 uses
  %i.dp = trunc i64 %.0121187.i to i32
  %i.dq = call ptr @upb_FileDef_TopLevelEnum(ptr noundef %1, i32 noundef %i.dp) #11
  %i.dr = call fastcc ptr @enumdef_toproto(ptr noundef nonnull %0, ptr noundef %i.dq)
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %.0121187.i
  store ptr %i.dr, ptr %i.ds, align 8, !tbaa !38
  %i.dt = add nuw i64 %.0121187.i, 1              ; 2 uses
  %exitcond204.not.i = icmp eq i64 %i.dt, %i.dd
  br i1 %exitcond204.not.i, label %._crit_edge190.i, label %.lr.ph189.i, !llvm.loop !40

._crit_edge194.i:                                 ; preds = %.lr.ph193.i, %._crit_edge190.i
  %i.du = call i32 @upb_FileDef_TopLevelExtensionCount(ptr noundef %1) #11 ; 2 uses
  %i.dv = sext i32 %i.du to i64                   ; 2 uses
  %i.dw = load ptr, ptr %0, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) @__const.google_protobuf_FileDescriptorProto_resize_extension.field, i64 12, i1 false)
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__FieldDescriptorProto_msg_init) #11, !srcloc !20
  %i.dx = call fastcc ptr @upb_Message_ResizeArrayUninitialized(ptr noundef nonnull %.0.i3.i.i.i, ptr noundef %2, i64 noundef range(i64 -2147483648, 2147483648) %i.dv, ptr noundef %i.dw)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %.not202.i = icmp eq i32 %i.du, 0
  br i1 %.not202.i, label %._crit_edge198.i, label %.lr.ph197.i

.lr.ph193.i:                                      ; preds = %._crit_edge190.i, %.lr.ph193.i
  %.0120191.i = phi i64 [ %i.ec, %.lr.ph193.i ], [ 0, %._crit_edge190.i ] ; 3 uses
  %i.dy = trunc i64 %.0120191.i to i32
  %i.dz = call ptr @upb_FileDef_Service(ptr noundef %1, i32 noundef %i.dy) #11
  %i.ea = call fastcc ptr @servicedef_toproto(ptr noundef nonnull %0, ptr noundef %i.dz)
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %.0120191.i
  store ptr %i.ea, ptr %i.eb, align 8, !tbaa !41
  %i.ec = add nuw i64 %.0120191.i, 1              ; 2 uses
  %exitcond205.not.i = icmp eq i64 %i.ec, %i.dm
  br i1 %exitcond205.not.i, label %._crit_edge194.i, label %.lr.ph193.i, !llvm.loop !43

._crit_edge198.i:                                 ; preds = %.lr.ph197.i, %._crit_edge194.i
  %i.ed = call zeroext i1 @upb_FileDef_HasOptions(ptr noundef %1) #11
  br i1 %i.ed, label %bb.t, label %filedef_toproto.exit

.lr.ph197.i:                                      ; preds = %._crit_edge194.i, %.lr.ph197.i
  %.0118195.i = phi i64 [ %i.ei, %.lr.ph197.i ], [ 0, %._crit_edge194.i ] ; 3 uses
  %i.ee = trunc i64 %.0118195.i to i32
  %i.ef = call ptr @upb_FileDef_TopLevelExtension(ptr noundef %1, i32 noundef %i.ee) #11
  %i.eg = call fastcc ptr @fielddef_toproto(ptr noundef nonnull %0, ptr noundef %i.ef)
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %.0118195.i
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !44
  %i.ei = add nuw i64 %.0118195.i, 1              ; 2 uses
  %exitcond206.not.i = icmp eq i64 %i.ei, %i.dv
  br i1 %exitcond206.not.i, label %._crit_edge198.i, label %.lr.ph197.i, !llvm.loop !46

bb.t:                                             ; preds = %._crit_edge198.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.ej = call ptr @upb_FileDef_Options(ptr noundef %1) #11
  %i.ek = load ptr, ptr %0, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.el = call i32 @upb_Encode(ptr noundef %i.ej, ptr noundef nonnull @google__protobuf__FileOptions_msg_init, i32 noundef 0, ptr noundef %i.ek, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #11 ; 0 uses
  %i.em = load ptr, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.not132.i = icmp eq ptr %i.em, null
  br i1 %.not132.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @siglongjmp(ptr noundef nonnull %i.c, i32 noundef 1) #13
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.en = load i64, ptr %i.b, align 8, !tbaa !29
  %i.eo = call ptr @upb_FileDef_Pool(ptr noundef %1) #11
  %i.ep = call ptr @_upb_DefPool_GeneratedExtensionRegistry(ptr noundef %i.eo) #11
  %i.eq = load ptr, ptr %0, align 8, !tbaa !7     ; 5 uses
  %google__protobuf__FileOptions_msg_init.val.i.i.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @google__protobuf__FileOptions_msg_init, i64 8), align 8, !tbaa !11
  %i.er = zext i16 %google__protobuf__FileOptions_msg_init.val.i.i.i to i64 ; 5 uses
  %i.es = and i64 %i.er, 7
  %i.et = icmp eq i64 %i.es, 0
  call void @llvm.assume(i1 %i.et)
  %.val.i.i.i.i.i = load ptr, ptr %i.eq, align 8, !tbaa !13 ; 4 uses
  %i.eu = getelementptr i8, ptr %i.eq, i64 8
  %.val11.i.i.i.i.i = load ptr, ptr %i.eu, align 8, !tbaa !16
  %i.ev = ptrtoint ptr %.val11.i.i.i.i.i to i64
  %i.ew = ptrtoint ptr %.val.i.i.i.i.i to i64
  %i.ex = sub i64 %i.ev, %i.ew
  %i.ey = icmp ult i64 %i.ex, %i.er
  br i1 %i.ey, label %upb_Arena_Malloc.exit.i.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i.i.i, !prof !17

upb_Arena_Malloc.exit.thread.i.i.i.i:             ; preds = %bb.v
  %i.ez = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.er
  store ptr %i.ez, ptr %i.eq, align 8, !tbaa !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  br label %bb.w

upb_Arena_Malloc.exit.i.i.i.i:                    ; preds = %bb.v
  %i.fa = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.eq, i64 noundef %i.er) #11 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i, label %bb.x, label %bb.w, !prof !18

bb.w:                                             ; preds = %upb_Arena_Malloc.exit.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i.i
  %.0.i3.i.i.i.i = phi ptr [ %.val.i.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i.i ], [ %i.fa, %upb_Arena_Malloc.exit.i.i.i.i ] ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i3.i.i.i.i, i8 0, i64 %i.er, i1 false)
  %i.fb = call i32 @upb_Decode(ptr noundef nonnull %i.em, i64 noundef %i.en, ptr noundef nonnull %.0.i3.i.i.i.i, ptr noundef nonnull @google__protobuf__FileOptions_msg_init, ptr noundef %i.ep, i32 noundef 0, ptr noundef nonnull %i.eq) #11
  %.fr.i = freeze i32 %i.fb
  %.not10.i.i = icmp eq i32 %.fr.i, 0
  br i1 %.not10.i.i, label %google_protobuf_FileOptions_parse_ex.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w, %upb_Arena_Malloc.exit.i.i.i.i
  call void @siglongjmp(ptr noundef nonnull %i.c, i32 noundef 1) #13
  unreachable

google_protobuf_FileOptions_parse_ex.exit.i:      ; preds = %bb.w
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__FileOptions_msg_init) #11, !srcloc !20
  %i.fc = load i8, ptr %i.ab, align 1, !tbaa !19
  %i.fd = or i8 %i.fc, 4
  store i8 %i.fd, ptr %i.ab, align 1, !tbaa !19
  %i.fe = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i, i64 104
  %i.ff = ptrtoint ptr %.0.i3.i.i.i.i to i64
  store i64 %i.ff, ptr %i.fe, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %filedef_toproto.exit

filedef_toproto.exit:                             ; preds = %google_protobuf_FileOptions_parse_ex.exit.i, %._crit_edge198.i, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %.0.i3.i.i.i, %._crit_edge198.i ], [ %.0.i3.i.i.i, %google_protobuf_FileOptions_parse_ex.exit.i ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @upb_FileDef_ToProto(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.upb_ToProto_Context, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.a, i8 0, i64 200, i1 false)
  store ptr %1, ptr %2, align 8, !tbaa !7
  %i.b = call ptr @upb_ToProto_ConvertFileDef(ptr noundef nonnull %2, ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define hidden ptr @upb_ToProto_ConvertMethodDef(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = call i32 @__sigsetjmp(ptr noundef nonnull %i.a, i32 noundef 0) #12
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = call fastcc ptr @methoddef_toproto(ptr noundef nonnull %0, ptr noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc nonnull ptr @methoddef_toproto(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !7      ; 4 uses
  %google__protobuf__MethodDescriptorProto_msg_init.val.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @google__protobuf__MethodDescriptorProto_msg_init, i64 8), align 8, !tbaa !11
  %i.d = zext i16 %google__protobuf__MethodDescriptorProto_msg_init.val.i to i64 ; 5 uses
  %i.e = and i64 %i.d, 7
  %i.f = icmp eq i64 %i.e, 0
  tail call void @llvm.assume(i1 %i.f)
  %.val.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !13 ; 4 uses
  %i.g = getelementptr i8, ptr %i.c, i64 8
  %.val11.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !16
  %i.h = ptrtoint ptr %.val11.i.i.i to i64
  %i.i = ptrtoint ptr %.val.i.i.i to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ult i64 %i.j, %i.d
  br i1 %i.k, label %upb_Arena_Malloc.exit.i.i, label %upb_Arena_Malloc.exit.thread.i.i, !prof !17

upb_Arena_Malloc.exit.thread.i.i:                 ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.d
  store ptr %i.l, ptr %i.c, align 8, !tbaa !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  br label %bb.c

upb_Arena_Malloc.exit.i.i:                        ; preds = %bb.a
  %i.m = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.c, i64 noundef %i.d) #11 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.b, label %bb.c, !prof !18

bb.b:                                             ; preds = %upb_Arena_Malloc.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @siglongjmp(ptr noundef nonnull %i.n, i32 noundef 1) #13
  unreachable

bb.c:                                             ; preds = %upb_Arena_Malloc.exit.i.i, %upb_Arena_Malloc.exit.thread.i.i
  %.0.i3.i.i = phi ptr [ %.val.i.i.i, %upb_Arena_Malloc.exit.thread.i.i ], [ %i.m, %upb_Arena_Malloc.exit.i.i ] ; 12 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i3.i.i, i8 0, i64 %i.d, i1 false)
  %i.o = tail call ptr @upb_MethodDef_Name(ptr noundef %1) #11 ; 2 uses
  %i.p = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.o) #14 ; 3 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !7      ; 4 uses
  %i.r = add i64 %i.p, 7
  %i.s = and i64 %i.r, -8                         ; 3 uses
  %.val.i.i.i37 = load ptr, ptr %i.q, align 8, !tbaa !13 ; 4 uses
  %i.t = getelementptr i8, ptr %i.q, i64 8
  %.val11.i.i.i38 = load ptr, ptr %i.t, align 8, !tbaa !16
  %i.u = ptrtoint ptr %.val11.i.i.i38 to i64
  %i.v = ptrtoint ptr %.val.i.i.i37 to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp ult i64 %i.w, %i.s
  br i1 %i.x, label %upb_Arena_Malloc.exit.i.i40, label %upb_Arena_Malloc.exit.thread.i.i39, !prof !17

upb_Arena_Malloc.exit.thread.i.i39:               ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %.val.i.i.i37, i64 %i.s
  store ptr %i.y, ptr %i.q, align 8, !tbaa !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i37) ]
  br label %strviewdup.exit

upb_Arena_Malloc.exit.i.i40:                      ; preds = %bb.c
  %i.z = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.q, i64 noundef %i.s) #11 ; 2 uses
  %.not.i.i41 = icmp eq ptr %i.z, null
  br i1 %.not.i.i41, label %bb.d, label %strviewdup.exit

bb.d:                                             ; preds = %upb_Arena_Malloc.exit.i.i40
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @siglongjmp(ptr noundef nonnull %i.aa, i32 noundef 1) #13
  unreachable

strviewdup.exit:                                  ; preds = %upb_Arena_Malloc.exit.thread.i.i39, %upb_Arena_Malloc.exit.i.i40
  %.0.i11.i.i = phi ptr [ %.val.i.i.i37, %upb_Arena_Malloc.exit.thread.i.i39 ], [ %i.z, %upb_Arena_Malloc.exit.i.i40 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i11.i.i, ptr nonnull readonly align 1 %i.o, i64 %i.p, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 8 ; 12 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !19
  %i.ad = or i8 %i.ac, 1
  store i8 %i.ad, ptr %i.ab, align 1, !tbaa !19
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 16
  store ptr %.0.i11.i.i, ptr %i.ae, align 1
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 24
  store i64 %i.p, ptr %.sroa.56.0..sroa_idx.i, align 1
  %i.af = tail call ptr @upb_MethodDef_InputType(ptr noundef %1) #11
  %i.ag = tail call ptr @upb_MessageDef_FullName(ptr noundef %i.af) #11 ; 2 uses
  %i.ah = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ag) #14 ; 3 uses
  %i.ai = load ptr, ptr %0, align 8, !tbaa !7     ; 4 uses
  %i.aj = and i64 %i.ah, -8
  %i.ak = add i64 %i.aj, 8                        ; 3 uses
  %.val.i.i = load ptr, ptr %i.ai, align 8, !tbaa !13 ; 4 uses
  %i.al = getelementptr i8, ptr %i.ai, i64 8
  %.val11.i.i = load ptr, ptr %i.al, align 8, !tbaa !16
  %i.am = ptrtoint ptr %.val11.i.i to i64
  %i.an = ptrtoint ptr %.val.i.i to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = icmp ult i64 %i.ao, %i.ak
  br i1 %i.ap, label %upb_Arena_Malloc.exit.i, label %upb_Arena_Malloc.exit.thread.i, !prof !17

upb_Arena_Malloc.exit.thread.i:                   ; preds = %strviewdup.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ak
  store ptr %i.aq, ptr %i.ai, align 8, !tbaa !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  br label %qual_dup.exit

upb_Arena_Malloc.exit.i:                          ; preds = %strviewdup.exit
  %i.ar = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.ai, i64 noundef %i.ak) #11 ; 2 uses
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %bb.e, label %qual_dup.exit

bb.e:                                             ; preds = %upb_Arena_Malloc.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @siglongjmp(ptr noundef nonnull %i.as, i32 noundef 1) #13
  unreachable

qual_dup.exit:                                    ; preds = %upb_Arena_Malloc.exit.thread.i, %upb_Arena_Malloc.exit.i
  %.0.i12.i = phi ptr [ %.val.i.i, %upb_Arena_Malloc.exit.thread.i ], [ %i.ar, %upb_Arena_Malloc.exit.i ] ; 3 uses
  %i.at = add i64 %i.ah, 1
  store i8 46, ptr %.0.i12.i, align 1, !tbaa !19
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i12.i, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.au, ptr nonnull readonly align 1 %i.ag, i64 %i.ah, i1 false)
  %i.av = load i8, ptr %i.ab, align 1, !tbaa !19
  %i.aw = or i8 %i.av, 2
  store i8 %i.aw, ptr %i.ab, align 1, !tbaa !19
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 32
  store ptr %.0.i12.i, ptr %i.ax, align 1
  %.sroa.56.0..sroa_idx.i42 = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 40
  store i64 %i.at, ptr %.sroa.56.0..sroa_idx.i42, align 1
  %i.ay = tail call ptr @upb_MethodDef_OutputType(ptr noundef %1) #11
  %i.az = tail call ptr @upb_MessageDef_FullName(ptr noundef %i.ay) #11 ; 2 uses
  %i.ba = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.az) #14 ; 3 uses
  %i.bb = load ptr, ptr %0, align 8, !tbaa !7     ; 4 uses
  %i.bc = and i64 %i.ba, -8
  %i.bd = add i64 %i.bc, 8                        ; 3 uses
  %.val.i.i43 = load ptr, ptr %i.bb, align 8, !tbaa !13 ; 4 uses
  %i.be = getelementptr i8, ptr %i.bb, i64 8
  %.val11.i.i44 = load ptr, ptr %i.be, align 8, !tbaa !16
  %i.bf = ptrtoint ptr %.val11.i.i44 to i64
  %i.bg = ptrtoint ptr %.val.i.i43 to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = icmp ult i64 %i.bh, %i.bd
  br i1 %i.bi, label %upb_Arena_Malloc.exit.i49, label %upb_Arena_Malloc.exit.thread.i45, !prof !17

upb_Arena_Malloc.exit.thread.i45:                 ; preds = %qual_dup.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %.val.i.i43, i64 %i.bd
  store ptr %i.bj, ptr %i.bb, align 8, !tbaa !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i43) ]
  br label %qual_dup.exit51

upb_Arena_Malloc.exit.i49:                        ; preds = %qual_dup.exit
  %i.bk = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.bb, i64 noundef %i.bd) #11 ; 2 uses
  %.not.i50 = icmp eq ptr %i.bk, null
  br i1 %.not.i50, label %bb.f, label %qual_dup.exit51

bb.f:                                             ; preds = %upb_Arena_Malloc.exit.i49
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @siglongjmp(ptr noundef nonnull %i.bl, i32 noundef 1) #13
  unreachable

qual_dup.exit51:                                  ; preds = %upb_Arena_Malloc.exit.thread.i45, %upb_Arena_Malloc.exit.i49
  %.0.i12.i46 = phi ptr [ %.val.i.i43, %upb_Arena_Malloc.exit.thread.i45 ], [ %i.bk, %upb_Arena_Malloc.exit.i49 ] ; 3 uses
  %i.bm = add i64 %i.ba, 1
  store i8 46, ptr %.0.i12.i46, align 1, !tbaa !19
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i12.i46, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bn, ptr nonnull readonly align 1 %i.az, i64 %i.ba, i1 false)
  %i.bo = load i8, ptr %i.ab, align 1, !tbaa !19
  %i.bp = or i8 %i.bo, 4
  store i8 %i.bp, ptr %i.ab, align 1, !tbaa !19
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 48
  store ptr %.0.i12.i46, ptr %i.bq, align 1
  %.sroa.56.0..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 56
  store i64 %i.bm, ptr %.sroa.56.0..sroa_idx.i52, align 1
  %i.br = tail call zeroext i1 @upb_MethodDef_ClientStreaming(ptr noundef %1) #11
  br i1 %i.br, label %bb.g, label %bb.h

bb.g:                                             ; preds = %qual_dup.exit51
  %i.bs = load i8, ptr %i.ab, align 1, !tbaa !19
  %i.bt = or i8 %i.bs, 16
  store i8 %i.bt, ptr %i.ab, align 1, !tbaa !19
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 9
  store i8 1, ptr %i.bu, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %qual_dup.exit51
  %i.bv = tail call zeroext i1 @upb_MethodDef_ServerStreaming(ptr noundef %1) #11
  br i1 %i.bv, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bw = load i8, ptr %i.ab, align 1, !tbaa !19
  %i.bx = or i8 %i.bw, 32
  store i8 %i.bx, ptr %i.ab, align 1, !tbaa !19
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 10
  store i8 1, ptr %i.by, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bz = tail call zeroext i1 @upb_MethodDef_HasOptions(ptr noundef %1) #11
  br i1 %i.bz, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.ca = tail call ptr @upb_MethodDef_Options(ptr noundef %1) #11
  %i.cb = load ptr, ptr %0, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.cc = call i32 @upb_Encode(ptr noundef %i.ca, ptr noundef nonnull @google__protobuf__MethodOptions_msg_init, i32 noundef 0, ptr noundef %i.cb, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #11 ; 0 uses
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.not35 = icmp eq ptr %i.cd, null
  br i1 %.not35, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @siglongjmp(ptr noundef nonnull %i.ce, i32 noundef 1) #13
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.cf = load i64, ptr %i.b, align 8, !tbaa !29
  %i.cg = call ptr @upb_MethodDef_Service(ptr noundef %1) #11
  %i.ch = call ptr @upb_ServiceDef_File(ptr noundef %i.cg) #11
  %i.ci = call ptr @upb_FileDef_Pool(ptr noundef %i.ch) #11
  %i.cj = call ptr @_upb_DefPool_GeneratedExtensionRegistry(ptr noundef %i.ci) #11
  %i.ck = load ptr, ptr %0, align 8, !tbaa !7     ; 5 uses
  %google__protobuf__MethodOptions_msg_init.val.i.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @google__protobuf__MethodOptions_msg_init, i64 8), align 8, !tbaa !11
  %i.cl = zext i16 %google__protobuf__MethodOptions_msg_init.val.i.i to i64 ; 5 uses
  %i.cm = and i64 %i.cl, 7
  %i.cn = icmp eq i64 %i.cm, 0
  call void @llvm.assume(i1 %i.cn)
  %.val.i.i.i.i = load ptr, ptr %i.ck, align 8, !tbaa !13 ; 4 uses
  %i.co = getelementptr i8, ptr %i.ck, i64 8
  %.val11.i.i.i.i = load ptr, ptr %i.co, align 8, !tbaa !16
  %i.cp = ptrtoint ptr %.val11.i.i.i.i to i64
  %i.cq = ptrtoint ptr %.val.i.i.i.i to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = icmp ult i64 %i.cr, %i.cl
  br i1 %i.cs, label %upb_Arena_Malloc.exit.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i.i, !prof !17

upb_Arena_Malloc.exit.thread.i.i.i:               ; preds = %bb.m
  %i.ct = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.cl
  store ptr %i.ct, ptr %i.ck, align 8, !tbaa !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  br label %bb.n

upb_Arena_Malloc.exit.i.i.i:                      ; preds = %bb.m
  %i.cu = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.ck, i64 noundef %i.cl) #11 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i, label %bb.o, label %bb.n, !prof !18

bb.n:                                             ; preds = %upb_Arena_Malloc.exit.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i
  %.0.i3.i.i.i = phi ptr [ %.val.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i ], [ %i.cu, %upb_Arena_Malloc.exit.i.i.i ] ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i3.i.i.i, i8 0, i64 %i.cl, i1 false)
  %i.cv = call i32 @upb_Decode(ptr noundef nonnull %i.cd, i64 noundef %i.cf, ptr noundef nonnull %.0.i3.i.i.i, ptr noundef nonnull @google__protobuf__MethodOptions_msg_init, ptr noundef %i.cj, i32 noundef 0, ptr noundef nonnull %i.ck) #11
  %.fr = freeze i32 %i.cv
  %.not10.i = icmp eq i32 %.fr, 0
  br i1 %.not10.i, label %google_protobuf_MethodOptions_parse_ex.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %upb_Arena_Malloc.exit.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @siglongjmp(ptr noundef nonnull %i.cw, i32 noundef 1) #13
  unreachable

google_protobuf_MethodOptions_parse_ex.exit:      ; preds = %bb.n
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__MethodOptions_msg_init) #11, !srcloc !20
  %i.cx = load i8, ptr %i.ab, align 1, !tbaa !19
  %i.cy = or i8 %i.cx, 8
  store i8 %i.cy, ptr %i.ab, align 1, !tbaa !19
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 64
  %i.da = ptrtoint ptr %.0.i3.i.i.i to i64
  store i64 %i.da, ptr %i.cz, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.p

bb.p:                                             ; preds = %google_protobuf_MethodOptions_parse_ex.exit, %bb.j
  ret ptr %.0.i3.i.i
}

; Function Attrs: nounwind uwtable
define hidden ptr @upb_MethodDef_ToProto(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.upb_ToProto_Context, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.a, i8 0, i64 200, i1 false)
  store ptr %1, ptr %2, align 8, !tbaa !7
  %i.b = call ptr @upb_ToProto_ConvertMethodDef(ptr noundef nonnull %2, ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define hidden ptr @upb_ToProto_ConvertServiceDef(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = call i32 @__sigsetjmp(ptr noundef nonnull %i.a, i32 noundef 0) #12
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = call fastcc ptr @servicedef_toproto(ptr noundef nonnull %0, ptr noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc nonnull ptr @servicedef_toproto(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %struct.upb_MiniTableField, align 4 ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !7      ; 4 uses
  %google__protobuf__ServiceDescriptorProto_msg_init.val.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @google__protobuf__ServiceDescriptorProto_msg_init, i64 8), align 8, !tbaa !11
  %i.d = zext i16 %google__protobuf__ServiceDescriptorProto_msg_init.val.i to i64 ; 5 uses
  %i.e = and i64 %i.d, 7
  %i.f = icmp eq i64 %i.e, 0
  tail call void @llvm.assume(i1 %i.f)
  %.val.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !13 ; 4 uses
  %i.g = getelementptr i8, ptr %i.c, i64 8
  %.val11.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !16
  %i.h = ptrtoint ptr %.val11.i.i.i to i64
  %i.i = ptrtoint ptr %.val.i.i.i to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ult i64 %i.j, %i.d
  br i1 %i.k, label %upb_Arena_Malloc.exit.i.i, label %upb_Arena_Malloc.exit.thread.i.i, !prof !17

upb_Arena_Malloc.exit.thread.i.i:                 ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.d
  store ptr %i.l, ptr %i.c, align 8, !tbaa !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  br label %bb.c

upb_Arena_Malloc.exit.i.i:                        ; preds = %bb.a
  %i.m = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.c, i64 noundef %i.d) #11 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.b, label %bb.c, !prof !18

bb.b:                                             ; preds = %upb_Arena_Malloc.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @siglongjmp(ptr noundef nonnull %i.n, i32 noundef 1) #13
  unreachable

bb.c:                                             ; preds = %upb_Arena_Malloc.exit.i.i, %upb_Arena_Malloc.exit.thread.i.i
  %.0.i3.i.i = phi ptr [ %.val.i.i.i, %upb_Arena_Malloc.exit.thread.i.i ], [ %i.m, %upb_Arena_Malloc.exit.i.i ] ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i3.i.i, i8 0, i64 %i.d, i1 false)
  %i.o = tail call ptr @upb_ServiceDef_Name(ptr noundef %1) #11 ; 2 uses
  %i.p = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.o) #14 ; 3 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !7      ; 4 uses
  %i.r = add i64 %i.p, 7
  %i.s = and i64 %i.r, -8                         ; 3 uses
  %.val.i.i.i35 = load ptr, ptr %i.q, align 8, !tbaa !13 ; 4 uses
  %i.t = getelementptr i8, ptr %i.q, i64 8
  %.val11.i.i.i36 = load ptr, ptr %i.t, align 8, !tbaa !16
  %i.u = ptrtoint ptr %.val11.i.i.i36 to i64
  %i.v = ptrtoint ptr %.val.i.i.i35 to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp ult i64 %i.w, %i.s
  br i1 %i.x, label %upb_Arena_Malloc.exit.i.i38, label %upb_Arena_Malloc.exit.thread.i.i37, !prof !17

upb_Arena_Malloc.exit.thread.i.i37:               ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %.val.i.i.i35, i64 %i.s
  store ptr %i.y, ptr %i.q, align 8, !tbaa !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i35) ]
  br label %strviewdup.exit

upb_Arena_Malloc.exit.i.i38:                      ; preds = %bb.c
  %i.z = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.q, i64 noundef %i.s) #11 ; 2 uses
  %.not.i.i39 = icmp eq ptr %i.z, null
  br i1 %.not.i.i39, label %bb.d, label %strviewdup.exit

bb.d:                                             ; preds = %upb_Arena_Malloc.exit.i.i38
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @siglongjmp(ptr noundef nonnull %i.aa, i32 noundef 1) #13
  unreachable

strviewdup.exit:                                  ; preds = %upb_Arena_Malloc.exit.thread.i.i37, %upb_Arena_Malloc.exit.i.i38
  %.0.i11.i.i = phi ptr [ %.val.i.i.i35, %upb_Arena_Malloc.exit.thread.i.i37 ], [ %i.z, %upb_Arena_Malloc.exit.i.i38 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i11.i.i, ptr nonnull readonly align 1 %i.o, i64 %i.p, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 8 ; 4 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !19
  %i.ad = or i8 %i.ac, 1
  store i8 %i.ad, ptr %i.ab, align 1, !tbaa !19
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 16
  store ptr %.0.i11.i.i, ptr %i.ae, align 1
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 24
  store i64 %i.p, ptr %.sroa.56.0..sroa_idx.i, align 1
  %i.af = tail call i32 @upb_ServiceDef_MethodCount(ptr noundef %1) #11 ; 2 uses
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) @__const.google_protobuf_ServiceDescriptorProto_resize_method.field, i64 12, i1 false)
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__MethodDescriptorProto_msg_init) #11, !srcloc !20
  %i.ai = call fastcc ptr @upb_Message_ResizeArrayUninitialized(ptr noundef nonnull %.0.i3.i.i, ptr noundef %2, i64 noundef range(i64 -2147483648, 2147483648) %i.ag, ptr noundef %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %strviewdup.exit
  %i.aj = call zeroext i1 @upb_ServiceDef_HasOptions(ptr noundef %1) #11
  br i1 %i.aj, label %bb.e, label %bb.j

.lr.ph:                                           ; preds = %strviewdup.exit, %.lr.ph
  %.044 = phi i64 [ %i.ao, %.lr.ph ], [ 0, %strviewdup.exit ] ; 3 uses
  %i.ak = trunc i64 %.044 to i32
  %i.al = call ptr @upb_ServiceDef_Method(ptr noundef %1, i32 noundef %i.ak) #11
  %i.am = call fastcc ptr @methoddef_toproto(ptr noundef nonnull %0, ptr noundef %i.al)
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.044
  store ptr %i.am, ptr %i.an, align 8, !tbaa !47
  %i.ao = add nuw i64 %.044, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ao, %i.ag
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !49

bb.e:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.ap = call ptr @upb_ServiceDef_Options(ptr noundef %1) #11
  %i.aq = load ptr, ptr %0, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.ar = call i32 @upb_Encode(ptr noundef %i.ap, ptr noundef nonnull @google__protobuf__ServiceOptions_msg_init, i32 noundef 0, ptr noundef %i.aq, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #11 ; 0 uses
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.not33 = icmp eq ptr %i.as, null
  br i1 %.not33, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @siglongjmp(ptr noundef nonnull %i.at, i32 noundef 1) #13
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.au = load i64, ptr %i.b, align 8, !tbaa !29
  %i.av = call ptr @upb_ServiceDef_File(ptr noundef %1) #11
  %i.aw = call ptr @upb_FileDef_Pool(ptr noundef %i.av) #11
  %i.ax = call ptr @_upb_DefPool_GeneratedExtensionRegistry(ptr noundef %i.aw) #11
  %i.ay = load ptr, ptr %0, align 8, !tbaa !7     ; 5 uses
  %google__protobuf__ServiceOptions_msg_init.val.i.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @google__protobuf__ServiceOptions_msg_init, i64 8), align 8, !tbaa !11
  %i.az = zext i16 %google__protobuf__ServiceOptions_msg_init.val.i.i to i64 ; 5 uses
  %i.ba = and i64 %i.az, 7
  %i.bb = icmp eq i64 %i.ba, 0
  call void @llvm.assume(i1 %i.bb)
  %.val.i.i.i.i = load ptr, ptr %i.ay, align 8, !tbaa !13 ; 4 uses
  %i.bc = getelementptr i8, ptr %i.ay, i64 8
  %.val11.i.i.i.i = load ptr, ptr %i.bc, align 8, !tbaa !16
  %i.bd = ptrtoint ptr %.val11.i.i.i.i to i64
  %i.be = ptrtoint ptr %.val.i.i.i.i to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = icmp ult i64 %i.bf, %i.az
  br i1 %i.bg, label %upb_Arena_Malloc.exit.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i.i, !prof !17

upb_Arena_Malloc.exit.thread.i.i.i:               ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.az
  store ptr %i.bh, ptr %i.ay, align 8, !tbaa !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  br label %bb.h

upb_Arena_Malloc.exit.i.i.i:                      ; preds = %bb.g
  %i.bi = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.ay, i64 noundef %i.az) #11 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.h, !prof !18

bb.h:                                             ; preds = %upb_Arena_Malloc.exit.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i
  %.0.i3.i.i.i = phi ptr [ %.val.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i ], [ %i.bi, %upb_Arena_Malloc.exit.i.i.i ] ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i3.i.i.i, i8 0, i64 %i.az, i1 false)
  %i.bj = call i32 @upb_Decode(ptr noundef nonnull %i.as, i64 noundef %i.au, ptr noundef nonnull %.0.i3.i.i.i, ptr noundef nonnull @google__protobuf__ServiceOptions_msg_init, ptr noundef %i.ax, i32 noundef 0, ptr noundef nonnull %i.ay) #11
  %.fr = freeze i32 %i.bj
  %.not10.i = icmp eq i32 %.fr, 0
  br i1 %.not10.i, label %google_protobuf_ServiceOptions_parse_ex.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %upb_Arena_Malloc.exit.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @siglongjmp(ptr noundef nonnull %i.bk, i32 noundef 1) #13
  unreachable

google_protobuf_ServiceOptions_parse_ex.exit:     ; preds = %bb.h
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__ServiceOptions_msg_init) #11, !srcloc !20
  %i.bl = load i8, ptr %i.ab, align 1, !tbaa !19
  %i.bm = or i8 %i.bl, 2
  store i8 %i.bm, ptr %i.ab, align 1, !tbaa !19
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 40
  %i.bo = ptrtoint ptr %.0.i3.i.i.i to i64
  store i64 %i.bo, ptr %i.bn, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.j

bb.j:                                             ; preds = %google_protobuf_ServiceOptions_parse_ex.exit, %._crit_edge
  ret ptr %.0.i3.i.i
}

; Function Attrs: nounwind uwtable
define hidden ptr @upb_ServiceDef_ToProto(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.upb_ToProto_Context, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.a, i8 0, i64 200, i1 false)
  store ptr %1, ptr %2, align 8, !tbaa !7
  %i.b = call ptr @upb_ToProto_ConvertServiceDef(ptr noundef nonnull %2, ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal fastcc nonnull ptr @msgdef_toproto(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %struct.upb_MiniTableField, align 4 ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %3 = alloca %struct.upb_MiniTableField, align 4 ; 4 uses
  %4 = alloca %struct.upb_MiniTableField, align 4 ; 4 uses
  %5 = alloca %struct.upb_MiniTableField, align 4 ; 4 uses
  %6 = alloca %struct.upb_MiniTableField, align 4 ; 4 uses
  %7 = alloca %struct.upb_MiniTableField, align 4 ; 4 uses
  %8 = alloca %struct.upb_MiniTableField, align 4 ; 4 uses
  %9 = alloca %struct.upb_MiniTableField, align 4 ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !7      ; 4 uses
  %google__protobuf__DescriptorProto_msg_init.val.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @google__protobuf__DescriptorProto_msg_init, i64 8), align 8, !tbaa !11
  %i.f = zext i16 %google__protobuf__DescriptorProto_msg_init.val.i to i64 ; 5 uses
  %i.g = and i64 %i.f, 7
  %i.h = icmp eq i64 %i.g, 0
  tail call void @llvm.assume(i1 %i.h)
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !13 ; 4 uses
  %i.i = getelementptr i8, ptr %i.e, i64 8
  %.val11.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !16
  %i.j = ptrtoint ptr %.val11.i.i.i to i64
  %i.k = ptrtoint ptr %.val.i.i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ult i64 %i.l, %i.f
  br i1 %i.m, label %upb_Arena_Malloc.exit.i.i, label %upb_Arena_Malloc.exit.thread.i.i, !prof !17

upb_Arena_Malloc.exit.thread.i.i:                 ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.f
  store ptr %i.n, ptr %i.e, align 8, !tbaa !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  br label %bb.c

upb_Arena_Malloc.exit.i.i:                        ; preds = %bb.a
  %i.o = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.e, i64 noundef %i.f) #11 ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %bb.b, label %bb.c, !prof !18

bb.b:                                             ; preds = %upb_Arena_Malloc.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @siglongjmp(ptr noundef nonnull %i.p, i32 noundef 1) #13
  unreachable

bb.c:                                             ; preds = %upb_Arena_Malloc.exit.i.i, %upb_Arena_Malloc.exit.thread.i.i
  %.0.i3.i.i = phi ptr [ %.val.i.i.i, %upb_Arena_Malloc.exit.thread.i.i ], [ %i.o, %upb_Arena_Malloc.exit.i.i ] ; 15 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i3.i.i, i8 0, i64 %i.f, i1 false)
  %i.q = tail call ptr @upb_MessageDef_Name(ptr noundef %1) #11 ; 2 uses
  %i.r = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.q) #14 ; 3 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !7      ; 4 uses
  %i.t = add i64 %i.r, 7
  %i.u = and i64 %i.t, -8                         ; 3 uses
  %.val.i.i.i137 = load ptr, ptr %i.s, align 8, !tbaa !13 ; 4 uses
  %i.v = getelementptr i8, ptr %i.s, i64 8
  %.val11.i.i.i138 = load ptr, ptr %i.v, align 8, !tbaa !16
  %i.w = ptrtoint ptr %.val11.i.i.i138 to i64
  %i.x = ptrtoint ptr %.val.i.i.i137 to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = icmp ult i64 %i.y, %i.u
  br i1 %i.z, label %upb_Arena_Malloc.exit.i.i140, label %upb_Arena_Malloc.exit.thread.i.i139, !prof !17

upb_Arena_Malloc.exit.thread.i.i139:              ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i.i.i137, i64 %i.u
  store ptr %i.aa, ptr %i.s, align 8, !tbaa !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i137) ]
  br label %strviewdup.exit

upb_Arena_Malloc.exit.i.i140:                     ; preds = %bb.c
  %i.ab = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.s, i64 noundef %i.u) #11 ; 2 uses
  %.not.i.i141 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i141, label %bb.d, label %strviewdup.exit

bb.d:                                             ; preds = %upb_Arena_Malloc.exit.i.i140
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @siglongjmp(ptr noundef nonnull %i.ac, i32 noundef 1) #13
  unreachable

strviewdup.exit:                                  ; preds = %upb_Arena_Malloc.exit.thread.i.i139, %upb_Arena_Malloc.exit.i.i140
  %.0.i11.i.i = phi ptr [ %.val.i.i.i137, %upb_Arena_Malloc.exit.thread.i.i139 ], [ %i.ab, %upb_Arena_Malloc.exit.i.i140 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i11.i.i, ptr nonnull readonly align 1 %i.q, i64 %i.r, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 8 ; 6 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !19
  %i.af = or i8 %i.ae, 1
  store i8 %i.af, ptr %i.ad, align 1, !tbaa !19
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 16
  store ptr %.0.i11.i.i, ptr %i.ag, align 1
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 24
  store i64 %i.r, ptr %.sroa.56.0..sroa_idx.i, align 1
  %i.ah = tail call i32 @upb_MessageDef_FieldCount(ptr noundef %1) #11 ; 3 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = load ptr, ptr %0, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) @__const.google_protobuf_DescriptorProto_resize_field.field, i64 12, i1 false)
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__FieldDescriptorProto_msg_init) #11, !srcloc !20
  %i.ak = call fastcc ptr @upb_Message_ResizeArrayUninitialized(ptr noundef nonnull %.0.i3.i.i, ptr noundef %9, i64 noundef range(i64 -2147483648, 2147483648) %i.ai, ptr noundef %i.aj) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  %.not133 = icmp eq ptr %i.ak, null
  br i1 %.not133, label %bb.e, label %.preheader

.preheader:                                       ; preds = %strviewdup.exit
  %i.al = icmp sgt i32 %i.ah, 0
  br i1 %i.al, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.ah to i64
  br label %.lr.ph

bb.e:                                             ; preds = %strviewdup.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @siglongjmp(ptr noundef nonnull %i.am, i32 noundef 1) #13
  unreachable

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.an = call i32 @upb_MessageDef_OneofCount(ptr noundef %1) #11 ; 3 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = load ptr, ptr %0, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(12) @__const.google_protobuf_DescriptorProto_resize_oneof_decl.field, i64 12, i1 false)
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__OneofDescriptorProto_msg_init) #11, !srcloc !20
  %i.aq = call fastcc ptr @upb_Message_ResizeArrayUninitialized(ptr noundef nonnull %.0.i3.i.i, ptr noundef %8, i64 noundef range(i64 -2147483648, 2147483648) %i.ao, ptr noundef %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  %i.ar = icmp sgt i32 %i.an, 0
  br i1 %i.ar, label %.lr.ph161.preheader, label %._crit_edge162

.lr.ph161.preheader:                              ; preds = %._crit_edge
  %wide.trip.count191 = zext nneg i32 %i.an to i64
  br label %.lr.ph161

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.as = trunc nuw nsw i64 %indvars.iv to i32
  %i.at = call ptr @upb_MessageDef_Field(ptr noundef %1, i32 noundef %i.as) #11
  %i.au = call fastcc ptr @fielddef_toproto(ptr noundef nonnull %0, ptr noundef %i.at)
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv
  store ptr %i.au, ptr %i.av, align 8, !tbaa !44
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !50

._crit_edge162:                                   ; preds = %.lr.ph161, %._crit_edge
  %i.aw = call i32 @upb_MessageDef_NestedMessageCount(ptr noundef %1) #11 ; 3 uses
  %i.ax = sext i32 %i.aw to i64
  %i.ay = load ptr, ptr %0, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) @__const.google_protobuf_DescriptorProto_resize_nested_type.field, i64 12, i1 false)
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__DescriptorProto_msg_init) #11, !srcloc !20
  %i.az = call fastcc ptr @upb_Message_ResizeArrayUninitialized(ptr noundef nonnull %.0.i3.i.i, ptr noundef %7, i64 noundef range(i64 -2147483648, 2147483648) %i.ax, ptr noundef %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  %i.ba = icmp sgt i32 %i.aw, 0
  br i1 %i.ba, label %.lr.ph165.preheader, label %._crit_edge166

.lr.ph165.preheader:                              ; preds = %._crit_edge162
  %wide.trip.count196 = zext nneg i32 %i.aw to i64
  br label %.lr.ph165

.lr.ph161:                                        ; preds = %.lr.ph161.preheader, %.lr.ph161
  %indvars.iv188 = phi i64 [ 0, %.lr.ph161.preheader ], [ %indvars.iv.next189, %.lr.ph161 ] ; 3 uses
  %i.bb = trunc nuw nsw i64 %indvars.iv188 to i32
  %i.bc = call ptr @upb_MessageDef_Oneof(ptr noundef %1, i32 noundef %i.bb) #11
  %i.bd = call fastcc ptr @oneofdef_toproto(ptr noundef nonnull %0, ptr noundef %i.bc)
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv188
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !51
  %indvars.iv.next189 = add nuw nsw i64 %indvars.iv188, 1 ; 2 uses
end_hunk_2
begin_hunk_3_@msgdef_toproto:bb.a
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__EnumDescriptorProto_msg_init) #11, !srcloc !20
  %i.bi = call fastcc ptr @upb_Message_ResizeArrayUninitialized(ptr noundef nonnull %.0.i3.i.i, ptr noundef %6, i64 noundef range(i64 -2147483648, 2147483648) %i.bg, ptr noundef %i.bh)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %i.bj = icmp sgt i32 %i.bf, 0
  br i1 %i.bj, label %.lr.ph169.preheader, label %._crit_edge170

.lr.ph169.preheader:                              ; preds = %._crit_edge166
  %wide.trip.count201 = zext nneg i32 %i.bf to i64
  br label %.lr.ph169

.lr.ph165:                                        ; preds = %.lr.ph165.preheader, %.lr.ph165
  %indvars.iv193 = phi i64 [ 0, %.lr.ph165.preheader ], [ %indvars.iv.next194, %.lr.ph165 ] ; 3 uses
  %i.bk = trunc nuw nsw i64 %indvars.iv193 to i32
  %i.bl = call ptr @upb_MessageDef_NestedMessage(ptr noundef %1, i32 noundef %i.bk) #11
  %i.bm = call fastcc ptr @msgdef_toproto(ptr noundef nonnull %0, ptr noundef %i.bl)
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv193
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !35
  %indvars.iv.next194 = add nuw nsw i64 %indvars.iv193, 1 ; 2 uses
  %exitcond197.not = icmp eq i64 %indvars.iv.next194, %wide.trip.count196
  br i1 %exitcond197.not, label %._crit_edge166, label %.lr.ph165, !llvm.loop !54

._crit_edge170:                                   ; preds = %.lr.ph169, %._crit_edge166
  %i.bo = call i32 @upb_MessageDef_NestedExtensionCount(ptr noundef %1) #11 ; 3 uses
  %i.bp = sext i32 %i.bo to i64
  %i.bq = load ptr, ptr %0, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) @__const.google_protobuf_DescriptorProto_resize_extension.field, i64 12, i1 false)
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__FieldDescriptorProto_msg_init) #11, !srcloc !20
  %i.br = call fastcc ptr @upb_Message_ResizeArrayUninitialized(ptr noundef nonnull %.0.i3.i.i, ptr noundef %5, i64 noundef range(i64 -2147483648, 2147483648) %i.bp, ptr noundef %i.bq)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.bs = icmp sgt i32 %i.bo, 0
  br i1 %i.bs, label %.lr.ph173.preheader, label %._crit_edge174

.lr.ph173.preheader:                              ; preds = %._crit_edge170
  %wide.trip.count206 = zext nneg i32 %i.bo to i64
  br label %.lr.ph173

.lr.ph169:                                        ; preds = %.lr.ph169.preheader, %.lr.ph169
  %indvars.iv198 = phi i64 [ 0, %.lr.ph169.preheader ], [ %indvars.iv.next199, %.lr.ph169 ] ; 3 uses
  %i.bt = trunc nuw nsw i64 %indvars.iv198 to i32
  %i.bu = call ptr @upb_MessageDef_NestedEnum(ptr noundef %1, i32 noundef %i.bt) #11
  %i.bv = call fastcc ptr @enumdef_toproto(ptr noundef nonnull %0, ptr noundef %i.bu)
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv198
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !38
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 1 ; 2 uses
  %exitcond202.not = icmp eq i64 %indvars.iv.next199, %wide.trip.count201
  br i1 %exitcond202.not, label %._crit_edge170, label %.lr.ph169, !llvm.loop !55

._crit_edge174:                                   ; preds = %.lr.ph173, %._crit_edge170
  %i.bx = call i32 @upb_MessageDef_ExtensionRangeCount(ptr noundef %1) #11 ; 3 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = load ptr, ptr %0, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) @__const.google_protobuf_DescriptorProto_resize_extension_range.field, i64 12, i1 false)
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__DescriptorProto__ExtensionRange_msg_init) #11, !srcloc !20
  %i.ca = call fastcc ptr @upb_Message_ResizeArrayUninitialized(ptr noundef nonnull %.0.i3.i.i, ptr noundef %4, i64 noundef range(i64 -2147483648, 2147483648) %i.by, ptr noundef %i.bz)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.cb = icmp sgt i32 %i.bx, 0
  br i1 %i.cb, label %.lr.ph177, label %._crit_edge178

.lr.ph177:                                        ; preds = %._crit_edge174
  %google__protobuf__DescriptorProto__ExtensionRange_msg_init.val.i.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @google__protobuf__DescriptorProto__ExtensionRange_msg_init, i64 8), align 8
  %i.cc = zext i16 %google__protobuf__DescriptorProto__ExtensionRange_msg_init.val.i.i to i64 ; 5 uses
  %i.cd = and i64 %i.cc, 7
  %i.ce = icmp eq i64 %i.cd, 0
  %google__protobuf__ExtensionRangeOptions_msg_init.val.i.i.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @google__protobuf__ExtensionRangeOptions_msg_init, i64 8), align 8
  %i.cf = zext i16 %google__protobuf__ExtensionRangeOptions_msg_init.val.i.i.i to i64 ; 5 uses
  %i.cg = and i64 %i.cf, 7
  %i.ch = icmp eq i64 %i.cg, 0
  %wide.trip.count211 = zext nneg i32 %i.bx to i64
  br label %bb.f

.lr.ph173:                                        ; preds = %.lr.ph173.preheader, %.lr.ph173
  %indvars.iv203 = phi i64 [ 0, %.lr.ph173.preheader ], [ %indvars.iv.next204, %.lr.ph173 ] ; 3 uses
  %i.ci = trunc nuw nsw i64 %indvars.iv203 to i32
  %i.cj = call ptr @upb_MessageDef_NestedExtension(ptr noundef %1, i32 noundef %i.ci) #11
  %i.ck = call fastcc ptr @fielddef_toproto(ptr noundef nonnull %0, ptr noundef %i.cj)
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv203
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !44
  %indvars.iv.next204 = add nuw nsw i64 %indvars.iv203, 1 ; 2 uses
  %exitcond207.not = icmp eq i64 %indvars.iv.next204, %wide.trip.count206
  br i1 %exitcond207.not, label %._crit_edge174, label %.lr.ph173, !llvm.loop !56

._crit_edge178:                                   ; preds = %extrange_toproto.exit, %._crit_edge174
  %i.cm = call i32 @upb_MessageDef_ReservedRangeCount(ptr noundef %1) #11 ; 3 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = load ptr, ptr %0, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) @__const.google_protobuf_DescriptorProto_resize_reserved_range.field, i64 12, i1 false)
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__DescriptorProto__ReservedRange_msg_init) #11, !srcloc !20
  %i.cp = call fastcc ptr @upb_Message_ResizeArrayUninitialized(ptr noundef nonnull %.0.i3.i.i, ptr noundef %3, i64 noundef range(i64 -2147483648, 2147483648) %i.cn, ptr noundef %i.co)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.cq = icmp sgt i32 %i.cm, 0
  br i1 %i.cq, label %.lr.ph181, label %._crit_edge182

.lr.ph181:                                        ; preds = %._crit_edge178
  %google__protobuf__DescriptorProto__ReservedRange_msg_init.val.i.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @google__protobuf__DescriptorProto__ReservedRange_msg_init, i64 8), align 8
  %i.cr = zext i16 %google__protobuf__DescriptorProto__ReservedRange_msg_init.val.i.i to i64 ; 5 uses
  %i.cs = and i64 %i.cr, 7
  %i.ct = icmp eq i64 %i.cs, 0
  %wide.trip.count216 = zext nneg i32 %i.cm to i64
  br label %bb.n

bb.f:                                             ; preds = %.lr.ph177, %extrange_toproto.exit
  %indvars.iv208 = phi i64 [ 0, %.lr.ph177 ], [ %indvars.iv.next209, %extrange_toproto.exit ] ; 3 uses
  %i.cu = trunc nuw nsw i64 %indvars.iv208 to i32
  %i.cv = call ptr @upb_MessageDef_ExtensionRange(ptr noundef %1, i32 noundef %i.cu) #11 ; 4 uses
  %i.cw = load ptr, ptr %0, align 8, !tbaa !7     ; 4 uses
  call void @llvm.assume(i1 %i.ce)
  %.val.i.i.i.i = load ptr, ptr %i.cw, align 8, !tbaa !13 ; 4 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 8
  %.val11.i.i.i.i = load ptr, ptr %i.cx, align 8, !tbaa !16
  %i.cy = ptrtoint ptr %.val11.i.i.i.i to i64
  %i.cz = ptrtoint ptr %.val.i.i.i.i to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = icmp ult i64 %i.da, %i.cc
  br i1 %i.db, label %upb_Arena_Malloc.exit.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i.i, !prof !17

upb_Arena_Malloc.exit.thread.i.i.i:               ; preds = %bb.f
  %i.dc = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.cc
  store ptr %i.dc, ptr %i.cw, align 8, !tbaa !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  br label %bb.h

upb_Arena_Malloc.exit.i.i.i:                      ; preds = %bb.f
  %i.dd = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.cw, i64 noundef %i.cc) #11 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.h, !prof !18

bb.g:                                             ; preds = %upb_Arena_Malloc.exit.i.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @siglongjmp(ptr noundef nonnull %i.de, i32 noundef 1) #13
  unreachable

bb.h:                                             ; preds = %upb_Arena_Malloc.exit.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i
  %.0.i3.i.i.i = phi ptr [ %.val.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i ], [ %i.dd, %upb_Arena_Malloc.exit.i.i.i ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i3.i.i.i, i8 0, i64 %i.cc, i1 false)
  %i.df = call i32 @upb_ExtensionRange_Start(ptr noundef %i.cv) #11
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i, i64 8 ; 6 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !19
  %i.di = or i8 %i.dh, 1
  store i8 %i.di, ptr %i.dg, align 1, !tbaa !19
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i, i64 12
  store i32 %i.df, ptr %i.dj, align 1
  %i.dk = call i32 @upb_ExtensionRange_End(ptr noundef %i.cv) #11
  %i.dl = load i8, ptr %i.dg, align 1, !tbaa !19
  %i.dm = or i8 %i.dl, 2
  store i8 %i.dm, ptr %i.dg, align 1, !tbaa !19
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i, i64 16
  store i32 %i.dk, ptr %i.dn, align 1
  %i.do = call zeroext i1 @upb_ExtensionRange_HasOptions(ptr noundef %i.cv) #11
  br i1 %i.do, label %bb.i, label %extrange_toproto.exit

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.dp = call ptr @upb_ExtensionRange_Options(ptr noundef %i.cv) #11
  %i.dq = load ptr, ptr %0, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.dr = call i32 @upb_Encode(ptr noundef %i.dp, ptr noundef nonnull @google__protobuf__ExtensionRangeOptions_msg_init, i32 noundef 0, ptr noundef %i.dq, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #11 ; 0 uses
  %i.ds = load ptr, ptr %i.b, align 8, !tbaa !28  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %.not22.i = icmp eq ptr %i.ds, null
  br i1 %.not22.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @siglongjmp(ptr noundef nonnull %i.dt, i32 noundef 1) #13
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.du = load i64, ptr %i.c, align 8, !tbaa !29
  %i.dv = call ptr @upb_MessageDef_File(ptr noundef %1) #11
  %i.dw = call ptr @upb_FileDef_Pool(ptr noundef %i.dv) #11
  %i.dx = call ptr @_upb_DefPool_GeneratedExtensionRegistry(ptr noundef %i.dw) #11
  %i.dy = load ptr, ptr %0, align 8, !tbaa !7     ; 5 uses
  call void @llvm.assume(i1 %i.ch)
  %.val.i.i.i.i.i = load ptr, ptr %i.dy, align 8, !tbaa !13 ; 4 uses
  %i.dz = getelementptr i8, ptr %i.dy, i64 8
  %.val11.i.i.i.i.i = load ptr, ptr %i.dz, align 8, !tbaa !16
  %i.ea = ptrtoint ptr %.val11.i.i.i.i.i to i64
  %i.eb = ptrtoint ptr %.val.i.i.i.i.i to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = icmp ult i64 %i.ec, %i.cf
  br i1 %i.ed, label %upb_Arena_Malloc.exit.i.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i.i.i, !prof !17

upb_Arena_Malloc.exit.thread.i.i.i.i:             ; preds = %bb.k
  %i.ee = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.cf
  store ptr %i.ee, ptr %i.dy, align 8, !tbaa !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  br label %bb.l

upb_Arena_Malloc.exit.i.i.i.i:                    ; preds = %bb.k
  %i.ef = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.dy, i64 noundef %i.cf) #11 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.l, !prof !18

bb.l:                                             ; preds = %upb_Arena_Malloc.exit.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i.i
  %.0.i3.i.i.i.i = phi ptr [ %.val.i.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i.i ], [ %i.ef, %upb_Arena_Malloc.exit.i.i.i.i ] ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i3.i.i.i.i, i8 0, i64 %i.cf, i1 false)
  %i.eg = call i32 @upb_Decode(ptr noundef nonnull %i.ds, i64 noundef %i.du, ptr noundef nonnull %.0.i3.i.i.i.i, ptr noundef nonnull @google__protobuf__ExtensionRangeOptions_msg_init, ptr noundef %i.dx, i32 noundef 0, ptr noundef nonnull %i.dy) #11
  %.fr.i = freeze i32 %i.eg
  %.not10.i.i = icmp eq i32 %.fr.i, 0
  br i1 %.not10.i.i, label %google_protobuf_ExtensionRangeOptions_parse_ex.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l, %upb_Arena_Malloc.exit.i.i.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @siglongjmp(ptr noundef nonnull %i.eh, i32 noundef 1) #13
  unreachable

google_protobuf_ExtensionRangeOptions_parse_ex.exit.i: ; preds = %bb.l
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__ExtensionRangeOptions_msg_init) #11, !srcloc !20
  %i.ei = load i8, ptr %i.dg, align 1, !tbaa !19
  %i.ej = or i8 %i.ei, 4
  store i8 %i.ej, ptr %i.dg, align 1, !tbaa !19
  %i.ek = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i, i64 24
  %i.el = ptrtoint ptr %.0.i3.i.i.i.i to i64
  store i64 %i.el, ptr %i.ek, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %extrange_toproto.exit

extrange_toproto.exit:                            ; preds = %bb.h, %google_protobuf_ExtensionRangeOptions_parse_ex.exit.i
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv208
  store ptr %.0.i3.i.i.i, ptr %i.em, align 8, !tbaa !57
  %indvars.iv.next209 = add nuw nsw i64 %indvars.iv208, 1 ; 2 uses
  %exitcond212.not = icmp eq i64 %indvars.iv.next209, %wide.trip.count211
  br i1 %exitcond212.not, label %._crit_edge178, label %bb.f, !llvm.loop !59

._crit_edge182:                                   ; preds = %resrange_toproto.exit, %._crit_edge178
  %i.en = call i32 @upb_MessageDef_ReservedNameCount(ptr noundef %1) #11 ; 3 uses
  %i.eo = sext i32 %i.en to i64
  %i.ep = load ptr, ptr %0, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) @__const.google_protobuf_DescriptorProto_resize_reserved_name.field, i64 12, i1 false)
  %i.eq = call fastcc ptr @upb_Message_ResizeArrayUninitialized(ptr noundef nonnull %.0.i3.i.i, ptr noundef %2, i64 noundef range(i64 -2147483648, 2147483648) %i.eo, ptr noundef %i.ep)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %i.er = icmp sgt i32 %i.en, 0
  br i1 %i.er, label %.lr.ph185.preheader, label %._crit_edge186

.lr.ph185.preheader:                              ; preds = %._crit_edge182
  %wide.trip.count221 = zext nneg i32 %i.en to i64
  br label %.lr.ph185

bb.n:                                             ; preds = %.lr.ph181, %resrange_toproto.exit
  %indvars.iv213 = phi i64 [ 0, %.lr.ph181 ], [ %indvars.iv.next214, %resrange_toproto.exit ] ; 3 uses
  %i.es = trunc nuw nsw i64 %indvars.iv213 to i32
  %i.et = call ptr @upb_MessageDef_ReservedRange(ptr noundef %1, i32 noundef %i.es) #11 ; 2 uses
  %i.eu = load ptr, ptr %0, align 8, !tbaa !7     ; 4 uses
  call void @llvm.assume(i1 %i.ct)
  %.val.i.i.i.i142 = load ptr, ptr %i.eu, align 8, !tbaa !13 ; 4 uses
  %i.ev = getelementptr i8, ptr %i.eu, i64 8
  %.val11.i.i.i.i143 = load ptr, ptr %i.ev, align 8, !tbaa !16
  %i.ew = ptrtoint ptr %.val11.i.i.i.i143 to i64
  %i.ex = ptrtoint ptr %.val.i.i.i.i142 to i64
  %i.ey = sub i64 %i.ew, %i.ex
  %i.ez = icmp ult i64 %i.ey, %i.cr
  br i1 %i.ez, label %upb_Arena_Malloc.exit.i.i.i146, label %upb_Arena_Malloc.exit.thread.i.i.i144, !prof !17

upb_Arena_Malloc.exit.thread.i.i.i144:            ; preds = %bb.n
  %i.fa = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i142, i64 %i.cr
  store ptr %i.fa, ptr %i.eu, align 8, !tbaa !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i142) ]
  br label %resrange_toproto.exit

upb_Arena_Malloc.exit.i.i.i146:                   ; preds = %bb.n
  %i.fb = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.eu, i64 noundef %i.cr) #11 ; 2 uses
  %.not.i.i.i147 = icmp eq ptr %i.fb, null
  br i1 %.not.i.i.i147, label %bb.o, label %resrange_toproto.exit, !prof !18

bb.o:                                             ; preds = %upb_Arena_Malloc.exit.i.i.i146
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @siglongjmp(ptr noundef nonnull %i.fc, i32 noundef 1) #13
  unreachable

resrange_toproto.exit:                            ; preds = %upb_Arena_Malloc.exit.thread.i.i.i144, %upb_Arena_Malloc.exit.i.i.i146
  %.0.i3.i.i.i145 = phi ptr [ %.val.i.i.i.i142, %upb_Arena_Malloc.exit.thread.i.i.i144 ], [ %i.fb, %upb_Arena_Malloc.exit.i.i.i146 ] ; 5 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i3.i.i.i145, i8 0, i64 %i.cr, i1 false)
  %i.fd = call i32 @upb_MessageReservedRange_Start(ptr noundef %i.et) #11
  %i.fe = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i145, i64 8 ; 4 uses
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !19
  %i.fg = or i8 %i.ff, 1
  store i8 %i.fg, ptr %i.fe, align 1, !tbaa !19
  %i.fh = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i145, i64 12
  store i32 %i.fd, ptr %i.fh, align 1
  %i.fi = call i32 @upb_MessageReservedRange_End(ptr noundef %i.et) #11
  %i.fj = load i8, ptr %i.fe, align 1, !tbaa !19
  %i.fk = or i8 %i.fj, 2
  store i8 %i.fk, ptr %i.fe, align 1, !tbaa !19
  %i.fl = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i145, i64 16
  store i32 %i.fi, ptr %i.fl, align 1
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv213
  store ptr %.0.i3.i.i.i145, ptr %i.fm, align 8, !tbaa !60
  %indvars.iv.next214 = add nuw nsw i64 %indvars.iv213, 1 ; 2 uses
  %exitcond217.not = icmp eq i64 %indvars.iv.next214, %wide.trip.count216
  br i1 %exitcond217.not, label %._crit_edge182, label %bb.n, !llvm.loop !62

._crit_edge186:                                   ; preds = %.lr.ph185, %._crit_edge182
  %i.fn = call zeroext i1 @upb_MessageDef_HasOptions(ptr noundef %1) #11
  br i1 %i.fn, label %bb.p, label %bb.u

.lr.ph185:                                        ; preds = %.lr.ph185.preheader, %.lr.ph185
  %indvars.iv218 = phi i64 [ 0, %.lr.ph185.preheader ], [ %indvars.iv.next219, %.lr.ph185 ] ; 3 uses
  %i.fo = getelementptr inbounds nuw [16 x i8], ptr %i.eq, i64 %indvars.iv218 ; 2 uses
  %i.fp = trunc nuw nsw i64 %indvars.iv218 to i32
  %i.fq = call { ptr, i64 } @upb_MessageDef_ReservedName(ptr noundef %1, i32 noundef %i.fp) #11 ; 2 uses
  %i.fr = extractvalue { ptr, i64 } %i.fq, 0
  %i.fs = extractvalue { ptr, i64 } %i.fq, 1
  store ptr %i.fr, ptr %i.fo, align 8, !tbaa !28
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store i64 %i.fs, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !29
  %indvars.iv.next219 = add nuw nsw i64 %indvars.iv218, 1 ; 2 uses
  %exitcond222.not = icmp eq i64 %indvars.iv.next219, %wide.trip.count221
  br i1 %exitcond222.not, label %._crit_edge186, label %.lr.ph185, !llvm.loop !63

bb.p:                                             ; preds = %._crit_edge186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.ft = call ptr @upb_MessageDef_Options(ptr noundef %1) #11
  %i.fu = load ptr, ptr %0, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.fv = call i32 @upb_Encode(ptr noundef %i.ft, ptr noundef nonnull @google__protobuf__MessageOptions_msg_init, i32 noundef 0, ptr noundef %i.fu, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d) #11 ; 0 uses
  %i.fw = load ptr, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.not134 = icmp eq ptr %i.fw, null
  br i1 %.not134, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @siglongjmp(ptr noundef nonnull %i.fx, i32 noundef 1) #13
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.fy = load i64, ptr %i.d, align 8, !tbaa !29
  %i.fz = call ptr @upb_MessageDef_File(ptr noundef %1) #11
  %i.ga = call ptr @upb_FileDef_Pool(ptr noundef %i.fz) #11
  %i.gb = call ptr @_upb_DefPool_GeneratedExtensionRegistry(ptr noundef %i.ga) #11
  %i.gc = load ptr, ptr %0, align 8, !tbaa !7     ; 5 uses
  %google__protobuf__MessageOptions_msg_init.val.i.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @google__protobuf__MessageOptions_msg_init, i64 8), align 8, !tbaa !11
  %i.gd = zext i16 %google__protobuf__MessageOptions_msg_init.val.i.i to i64 ; 5 uses
  %i.ge = and i64 %i.gd, 7
  %i.gf = icmp eq i64 %i.ge, 0
  call void @llvm.assume(i1 %i.gf)
  %.val.i.i.i.i148 = load ptr, ptr %i.gc, align 8, !tbaa !13 ; 4 uses
  %i.gg = getelementptr i8, ptr %i.gc, i64 8
  %.val11.i.i.i.i149 = load ptr, ptr %i.gg, align 8, !tbaa !16
  %i.gh = ptrtoint ptr %.val11.i.i.i.i149 to i64
  %i.gi = ptrtoint ptr %.val.i.i.i.i148 to i64
  %i.gj = sub i64 %i.gh, %i.gi
  %i.gk = icmp ult i64 %i.gj, %i.gd
  br i1 %i.gk, label %upb_Arena_Malloc.exit.i.i.i152, label %upb_Arena_Malloc.exit.thread.i.i.i150, !prof !17

upb_Arena_Malloc.exit.thread.i.i.i150:            ; preds = %bb.r
  %i.gl = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i148, i64 %i.gd
  store ptr %i.gl, ptr %i.gc, align 8, !tbaa !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i148) ]
  br label %bb.s

upb_Arena_Malloc.exit.i.i.i152:                   ; preds = %bb.r
  %i.gm = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.gc, i64 noundef %i.gd) #11 ; 2 uses
  %.not.i.i.i153 = icmp eq ptr %i.gm, null
  br i1 %.not.i.i.i153, label %bb.t, label %bb.s, !prof !18

bb.s:                                             ; preds = %upb_Arena_Malloc.exit.i.i.i152, %upb_Arena_Malloc.exit.thread.i.i.i150
  %.0.i3.i.i.i151 = phi ptr [ %.val.i.i.i.i148, %upb_Arena_Malloc.exit.thread.i.i.i150 ], [ %i.gm, %upb_Arena_Malloc.exit.i.i.i152 ] ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i3.i.i.i151, i8 0, i64 %i.gd, i1 false)
  %i.gn = call i32 @upb_Decode(ptr noundef nonnull %i.fw, i64 noundef %i.fy, ptr noundef nonnull %.0.i3.i.i.i151, ptr noundef nonnull @google__protobuf__MessageOptions_msg_init, ptr noundef %i.gb, i32 noundef 0, ptr noundef nonnull %i.gc) #11
  %.fr = freeze i32 %i.gn
  %.not10.i = icmp eq i32 %.fr, 0
  br i1 %.not10.i, label %google_protobuf_MessageOptions_parse_ex.exit, label %bb.t

bb.t:                                             ; preds = %bb.s, %upb_Arena_Malloc.exit.i.i.i152
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @siglongjmp(ptr noundef nonnull %i.go, i32 noundef 1) #13
  unreachable

google_protobuf_MessageOptions_parse_ex.exit:     ; preds = %bb.s
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__MessageOptions_msg_init) #11, !srcloc !20
  %i.gp = load i8, ptr %i.ad, align 1, !tbaa !19
  %i.gq = or i8 %i.gp, 2
  store i8 %i.gq, ptr %i.ad, align 1, !tbaa !19
  %i.gr = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 72
  %i.gs = ptrtoint ptr %.0.i3.i.i.i151 to i64
  store i64 %i.gs, ptr %i.gr, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br label %bb.u

bb.u:                                             ; preds = %google_protobuf_MessageOptions_parse_ex.exit, %._crit_edge186
  %i.gt = call i32 @upb_MessageDef_Visibility(ptr noundef %1) #11 ; 2 uses
  %.not136 = icmp eq i32 %i.gt, 0
  br i1 %.not136, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gu = load i8, ptr %i.ad, align 1, !tbaa !19
  %i.gv = or i8 %i.gu, 4
  store i8 %i.gv, ptr %i.ad, align 1, !tbaa !19
  %i.gw = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 12
  store i32 %i.gt, ptr %i.gw, align 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  ret ptr %.0.i3.i.i
}

; Function Attrs: noreturn nounwind
declare void @siglongjmp(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc { ptr, i64 } @strviewdup(ptr noundef %0, ptr noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #14 ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !7      ; 4 uses
  %i.c = add i64 %i.a, 7
  %i.d = and i64 %i.c, -8                         ; 3 uses
  %.val.i.i = load ptr, ptr %i.b, align 8, !tbaa !13 ; 4 uses
  %i.e = getelementptr i8, ptr %i.b, i64 8
  %.val11.i.i = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.f = ptrtoint ptr %.val11.i.i to i64
  %i.g = ptrtoint ptr %.val.i.i to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ult i64 %i.h, %i.d
  br i1 %i.i, label %upb_Arena_Malloc.exit.i, label %upb_Arena_Malloc.exit.thread.i, !prof !17

upb_Arena_Malloc.exit.thread.i:                   ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.d
  store ptr %i.j, ptr %i.b, align 8, !tbaa !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  br label %strviewdup2.exit

upb_Arena_Malloc.exit.i:                          ; preds = %bb.a
  %i.k = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.b, i64 noundef %i.d) #11 ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.b, label %strviewdup2.exit

bb.b:                                             ; preds = %upb_Arena_Malloc.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @siglongjmp(ptr noundef nonnull %i.l, i32 noundef 1) #13
  unreachable

strviewdup2.exit:                                 ; preds = %upb_Arena_Malloc.exit.thread.i, %upb_Arena_Malloc.exit.i
  %.0.i11.i = phi ptr [ %.val.i.i, %upb_Arena_Malloc.exit.thread.i ], [ %i.k, %upb_Arena_Malloc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i11.i, ptr nonnull readonly align 1 %1, i64 %i.a, i1 false)
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %.0.i11.i, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.a, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

declare ptr @upb_MessageDef_Name(ptr noundef) local_unnamed_addr #5

declare i32 @upb_MessageDef_FieldCount(ptr noundef) local_unnamed_addr #5

declare ptr @upb_MessageDef_Field(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @upb_MessageDef_OneofCount(ptr noundef) local_unnamed_addr #5

declare ptr @upb_MessageDef_Oneof(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @upb_MessageDef_NestedMessageCount(ptr noundef) local_unnamed_addr #5

declare ptr @upb_MessageDef_NestedMessage(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @upb_MessageDef_NestedEnumCount(ptr noundef) local_unnamed_addr #5

declare ptr @upb_MessageDef_NestedEnum(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @upb_MessageDef_NestedExtensionCount(ptr noundef) local_unnamed_addr #5

declare ptr @upb_MessageDef_NestedExtension(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @upb_MessageDef_ExtensionRangeCount(ptr noundef) local_unnamed_addr #5

declare ptr @upb_MessageDef_ExtensionRange(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @upb_MessageDef_ReservedRangeCount(ptr noundef) local_unnamed_addr #5

declare ptr @upb_MessageDef_ReservedRange(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @upb_MessageDef_ReservedNameCount(ptr noundef) local_unnamed_addr #5

declare { ptr, i64 } @upb_MessageDef_ReservedName(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare zeroext i1 @upb_MessageDef_HasOptions(ptr noundef) local_unnamed_addr #5

declare ptr @upb_MessageDef_Options(ptr noundef) local_unnamed_addr #5

declare ptr @_upb_DefPool_GeneratedExtensionRegistry(ptr noundef) local_unnamed_addr #5

declare ptr @upb_FileDef_Pool(ptr noundef) local_unnamed_addr #5

declare ptr @upb_MessageDef_File(ptr noundef) local_unnamed_addr #5

declare i32 @upb_MessageDef_Visibility(ptr noundef) local_unnamed_addr #5

declare ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @upb_Message_ResizeArrayUninitialized(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef range(i64 -2147483648, 2147483648) %2, ptr noundef %3) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 11         ; 3 uses
  %.val10 = load i8, ptr %i.a, align 1, !tbaa !64 ; 4 uses
  %i.b = icmp ugt i8 %.val10, -65
  tail call void @llvm.assume(i1 %i.b)
  %i.c = and i8 %.val10, 3
  %i.d = icmp eq i8 %i.c, 1
  tail call void @llvm.assume(i1 %i.d)
  %i.e = and i8 %.val10, 8
  %.not.i.i.i = icmp eq i8 %i.e, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.f = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %.val9.i.i.i = load i16, ptr %i.f, align 4, !tbaa !66
  %i.g = zext i16 %.val9.i.i.i to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %i.i = load i64, ptr %i.h, align 1              ; 2 uses
  %i.j = inttoptr i64 %i.i to ptr
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %bb.b, label %upb_Message_GetOrCreateMutableArray.exit

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %1, i64 10
  %.val16.i = load i8, ptr %i.k, align 2, !tbaa !67 ; 2 uses
  %i.l = zext i8 %.val16.i to i64
  %i.m = and i8 %.val10, 16
  %.not.i.i18.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i18.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i8 %.val16.i, label %bb.e [
    i8 5, label %_upb_MiniTableField_ElemSizeLg2_dont_copy_me__upb_internal_use_only.exit.i
    i8 12, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %_upb_MiniTableField_ElemSizeLg2_dont_copy_me__upb_internal_use_only.exit.i

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.n = add nuw nsw i64 %i.l, 4294967295
  %i.o = and i64 %i.n, 4294967295
  br label %_upb_MiniTableField_ElemSizeLg2_dont_copy_me__upb_internal_use_only.exit.i

_upb_MiniTableField_ElemSizeLg2_dont_copy_me__upb_internal_use_only.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %.0.i.i.i = phi i64 [ %i.o, %bb.e ], [ 8, %bb.d ], [ 13, %bb.c ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr @_upb_FieldType_SizeLg2_dont_copy_me__upb_internal_use_only.size, i64 %.0.i.i.i
  %i.q = load i8, ptr %i.p, align 1, !tbaa !19
  %i.r = sext i8 %i.q to i64                      ; 2 uses
  %i.s = and i64 %i.r, 4294967295
  %i.t = shl i64 4, %i.s
  %i.u = add nuw i64 %i.t, 28
  %i.v = and i64 %i.u, -8                         ; 3 uses
  %.val.i.i.i.i = load ptr, ptr %3, align 8, !tbaa !13 ; 4 uses
  %i.w = getelementptr i8, ptr %3, i64 8
  %.val11.i.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !16
  %i.x = ptrtoint ptr %.val11.i.i.i.i to i64
  %i.y = ptrtoint ptr %.val.i.i.i.i to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = icmp ult i64 %i.z, %i.v
  br i1 %i.aa, label %upb_Arena_Malloc.exit.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i.i, !prof !17

upb_Arena_Malloc.exit.thread.i.i.i:               ; preds = %_upb_MiniTableField_ElemSizeLg2_dont_copy_me__upb_internal_use_only.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.v
  store ptr %i.ab, ptr %3, align 8, !tbaa !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  br label %bb.f

end_hunk_3
