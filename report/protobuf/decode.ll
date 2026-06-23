inline.NumInlined: 222
inline.NumDeleted: 105
begin_hunk_0_@_upb_Decoder_DecodeEnumPacked:bb.a
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
  %i.ce = trunc i32 %.08.i to i8
  %i.cf = and i8 %i.ce, 127
  %i.cg = lshr i32 %.08.i, 7                      ; 2 uses
  %.not.i25 = icmp eq i32 %i.cg, 0                ; 2 uses
  %masksel.i = select i1 %.not.i25, i8 0, i8 -128
  %.0.i26 = or disjoint i8 %masksel.i, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %.07.i, i64 1 ; 2 uses
  store i8 %.0.i26, ptr %.07.i, align 1, !tbaa !22
  br i1 %.not.i25, label %upb_Decoder_EncodeVarint32.exit, label %bb.l, !llvm.loop !89

upb_Decoder_EncodeVarint32.exit:                  ; preds = %bb.l, %upb_Decoder_EncodeVarint32.exit
  %.08.i27 = phi i32 [ %i.ck, %upb_Decoder_EncodeVarint32.exit ], [ %.sroa.0.0, %bb.l ] ; 2 uses
  %.07.i28 = phi ptr [ %i.cl, %upb_Decoder_EncodeVarint32.exit ], [ %i.ch, %bb.l ] ; 2 uses
  %i.ci = trunc i32 %.08.i27 to i8
  %i.cj = and i8 %i.ci, 127
  %i.ck = lshr i32 %.08.i27, 7                    ; 2 uses
  %.not.i29 = icmp eq i32 %i.ck, 0                ; 2 uses
  %masksel.i30 = select i1 %.not.i29, i8 0, i8 -128
  %.0.i31 = or disjoint i8 %masksel.i30, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %.07.i28, i64 1 ; 2 uses
  store i8 %.0.i31, ptr %.07.i28, align 1, !tbaa !22
  br i1 %.not.i29, label %upb_Decoder_EncodeVarint32.exit32, label %upb_Decoder_EncodeVarint32.exit, !llvm.loop !89

upb_Decoder_EncodeVarint32.exit32:                ; preds = %upb_Decoder_EncodeVarint32.exit
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = sub i64 %i.cm, %i.ah
  %i.co = call zeroext i1 @_upb_Message_AddUnknownSlowPath_dont_copy_me__upb_internal_use_only(ptr noundef %i.cd, ptr noundef nonnull %i.a, i64 noundef %i.cn, ptr noundef nonnull %i.ae, i1 noundef zeroext false) #12
  br i1 %i.co, label %_upb_Decoder_AddEnumValueToUnknown.exit, label %bb.m

bb.m:                                             ; preds = %upb_Decoder_EncodeVarint32.exit32
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.cp, i32 noundef 1) #13
  unreachable

_upb_Decoder_AddEnumValueToUnknown.exit:          ; preds = %upb_Decoder_EncodeVarint32.exit32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.c, !llvm.loop !90

upb_MiniTableEnum_CheckValue.exit.thread27:       ; preds = %bb.f, %upb_MiniTableEnum_CheckValue.exit, %.lr.ph.i
  %i.cq = load i64, ptr %i.ad, align 8, !tbaa !43 ; 2 uses
  %i.cr = load i64, ptr %i.x, align 8, !tbaa !45  ; 2 uses
  %i.cs = icmp eq i64 %i.cq, %i.cr
  br i1 %i.cs, label %bb.n, label %_upb_Decoder_Reserve.exit

bb.n:                                             ; preds = %upb_MiniTableEnum_CheckValue.exit.thread27
  %i.ct = add i64 %i.cq, 1
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
  %6 = load i64, ptr %i.b, align 8, !tbaa !32
  store i64 %6, ptr %i.z, align 8, !tbaa !77
  %i.aa = call zeroext i1 @_upb_Message_AddUnknownV_dont_copy_me__upb_internal_use_only(ptr noundef %1, ptr noundef nonnull %i.d, ptr noundef nonnull %5, i64 noundef 2) #12
  br i1 %i.aa, label %bb.g, label %bb.f

bb.f:                                             ; preds = %upb_Decoder_EncodeVarint32.exit17
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.ab, i32 noundef 1) #13
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
end_hunk_0
