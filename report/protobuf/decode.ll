inline.NumInlined: 222
inline.NumDeleted: 105
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.upb_MiniTableField = type { i32, i16, i16, i16, i8, i8 }
%struct.upb_MapEntry = type { %struct.upb_Message, i64, %union.anon.1, %union.anon.2 }
%struct.upb_Message = type { %union.anon.0 }
%union.anon.0 = type { i64 }
%union.anon.1 = type { %struct.upb_StringView }
%struct.upb_StringView = type { ptr, i64 }
%union.anon.2 = type { %struct.upb_StringView }
%struct.upb_Decoder = type { %struct.upb_EpsCopyInputStream, ptr, ptr, i32, i32, i16, i8, i8, %union.anon, %struct.upb_ErrorHandler }
%struct.upb_EpsCopyInputStream = type { ptr, ptr, i64, ptr, ptr, i64, ptr, i8, [32 x i8] }
%union.anon = type { [10 x ptr] }
%struct.upb_ErrorHandler = type { i32, [1 x %struct.__jmp_buf_tag] }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }

@_upb_Decoder_FindExtensionField.item = internal global %struct.upb_MiniTableField { i32 0, i16 0, i16 0, i16 0, i8 19, i8 0 }, align 4
@upb_Decoder_FieldNotFoundField = internal global %struct.upb_MiniTableField zeroinitializer, align 4
@.str = private unnamed_addr constant [3 x i8] c"Ok\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Wire format was corrupt\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Arena alloc failed\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"String field had bad UTF-8\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Exceeded upb_DecodeOptions_MaxDepth\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Missing required field\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Unknown decode status\00", align 1
@_upb_Decoder_GetVarintOp.kVarintOps = internal unnamed_addr constant [20 x i8] c"\FF\FF\FF\03\03\02\FF\FF\00\FF\FF\FF\FF\02\02\FF\FF\02\03\FF", align 16
@_upb_Decoder_GetDelimitedOp.kDelimitedOps = internal unnamed_addr constant [38 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\04\FF\06\05\FF\FF\FF\FF\FF\FF\06\08\07\0C\0C\0B\08\07\09\04\06\06\05\0B\0D\07\08\0B\0C", align 16
@_upb_FieldType_SizeLg2_dont_copy_me__upb_internal_use_only.size = internal unnamed_addr constant [18 x i8] c"\03\02\03\03\02\03\02\00\04\03\03\04\02\02\02\03\02\03", align 16
@_upb_Decoder_CreateMap.kSizeInMap = internal unnamed_addr constant [19 x i8] c"\FF\08\04\08\08\04\08\04\01\00\08\08\00\04\04\04\08\04\08", align 16
@switch.table.upb_DecodeStatus_String = private unnamed_addr constant [6 x ptr] [ptr @.str, ptr @.str.2, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5], align 8

; Function Attrs: noinline nounwind uwtable
define hidden nonnull ptr @_upb_Decoder_FindExtensionField(ptr noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %3, 1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %3, 2                        ; 2 uses
  %i.c = icmp eq i32 %4, 2
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.f = tail call ptr @upb_ExtensionRegistry_Lookup(ptr noundef %i.e, ptr noundef %1, i32 noundef %2) #12 ; 2 uses
  %.not.not = icmp eq ptr %i.f, null
  br i1 %.not.not, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = icmp eq i32 %2, 1
  %or.cond3 = and i1 %i.g, %i.b
  br i1 %or.cond3, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.1 = phi ptr [ @upb_Decoder_FieldNotFoundField, %bb.e ], [ %i.f, %bb.c ], [ @_upb_Decoder_FindExtensionField.item, %bb.d ]
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @upb_ExtensionRegistry_Lookup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noinline nounwind uwtable
define hidden ptr @_upb_Decoder_DecodeMessage(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %.sroa.0.i = alloca i64, align 8                ; 9 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %struct.upb_MapEntry, align 8       ; 9 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %.sroa.0192 = alloca i64, align 8               ; 8 uses
  %.sroa.0 = alloca i64, align 8                  ; 25 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  %i.e = getelementptr i8, ptr %0, i64 40         ; 21 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 123 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 13
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.l = getelementptr i8, ptr %0, i64 16         ; 5 uses
  %i.m = getelementptr i8, ptr %0, i64 24         ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 22 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 29 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.r = getelementptr i8, ptr %0, i64 136        ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %.sroa.3.0..0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  br label %bb.b

bb.b:                                             ; preds = %_upb_Decoder_DecodeField.exit, %bb.a
  %.sroa.5.0 = phi i64 [ undef, %bb.a ], [ %.sroa.5.3, %_upb_Decoder_DecodeField.exit ] ; 20 uses
  %.sroa.0200.0 = phi ptr [ undef, %bb.a ], [ %.sroa.0200.3, %_upb_Decoder_DecodeField.exit ] ; 20 uses
  %.sroa.4.0 = phi i64 [ undef, %bb.a ], [ %.sroa.4.3, %_upb_Decoder_DecodeField.exit ] ; 19 uses
  %.sroa.0191.0 = phi ptr [ undef, %bb.a ], [ %.sroa.0191.3, %_upb_Decoder_DecodeField.exit ] ; 19 uses
  %.0 = phi ptr [ %1, %bb.a ], [ %.0.i15, %_upb_Decoder_DecodeField.exit ] ; 5 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !18
  %i.w = ptrtoint ptr %.0 to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x                       ; 2 uses
  %i.z = trunc i64 %i.y to i32
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.ab = icmp ult ptr %.0, %i.aa
  br i1 %i.ab, label %upb_EpsCopyInputStream_IsDone.exit.thread226, label %bb.c, !prof !20

bb.c:                                             ; preds = %bb.b
  %sext.i.i = shl i64 %i.y, 32
  %i.ac = ashr exact i64 %sext.i.i, 32
  %i.ad = load i64, ptr %i.e, align 8, !tbaa !21
  %i.ae = icmp eq i64 %i.ac, %i.ad
  %cond.fr.i = freeze i1 %i.ae
  br i1 %cond.fr.i, label %_upb_Decoder_DecodeField.exit.thread, label %upb_EpsCopyInputStream_IsDone.exit, !prof !20

upb_EpsCopyInputStream_IsDone.exit:               ; preds = %bb.c
  %i.af = call ptr @upb_EpsCopyInputStream_IsDoneFallback_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %0, ptr noundef %.0, i32 noundef %i.z) #12 ; 2 uses
  %.not.i24 = icmp eq ptr %i.af, null
  br i1 %.not.i24, label %_upb_Decoder_DecodeField.exit.thread, label %upb_EpsCopyInputStream_IsDone.exit.thread226

upb_EpsCopyInputStream_IsDone.exit.thread226:     ; preds = %bb.b, %upb_EpsCopyInputStream_IsDone.exit
  %.0210229 = phi ptr [ %i.af, %upb_EpsCopyInputStream_IsDone.exit ], [ %.0, %bb.b ] ; 3 uses
  %i.ag = load i8, ptr %.0210229, align 1, !tbaa !22 ; 3 uses
  %i.ah = icmp sgt i8 %i.ag, -1
  br i1 %i.ah, label %bb.d, label %upb_EpsCopyInputStream_HasErrorHandler.exit.i, !prof !20

bb.d:                                             ; preds = %upb_EpsCopyInputStream_IsDone.exit.thread226
  %i.ai = zext nneg i8 %i.ag to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %.0210229, i64 1
  br label %upb_WireReader_ReadTag.exit

upb_EpsCopyInputStream_HasErrorHandler.exit.i:    ; preds = %upb_EpsCopyInputStream_IsDone.exit.thread226
  %i.ak = zext i8 %i.ag to i64
  %i.al = call { ptr, i64 } @_upb_WireReader_ReadLongTag_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %.0210229, i64 noundef %i.ak, ptr noundef nonnull %0) #12 ; 2 uses
  %i.am = extractvalue { ptr, i64 } %i.al, 0
  %i.an = extractvalue { ptr, i64 } %i.al, 1
  %i.ao = trunc i64 %i.an to i32
  br label %upb_WireReader_ReadTag.exit

upb_WireReader_ReadTag.exit:                      ; preds = %upb_EpsCopyInputStream_HasErrorHandler.exit.i, %bb.d
  %.0213 = phi i32 [ %i.ai, %bb.d ], [ %i.ao, %upb_EpsCopyInputStream_HasErrorHandler.exit.i ] ; 4 uses
  %.0.i16 = phi ptr [ %i.aj, %bb.d ], [ %i.am, %upb_EpsCopyInputStream_HasErrorHandler.exit.i ] ; 16 uses
  %i.ap = lshr i32 %.0213, 3                      ; 7 uses
  %i.aq = and i32 %.0213, 7                       ; 5 uses
  %i.ar = icmp eq i32 %i.aq, 4
  br i1 %i.ar, label %bb.e, label %bb.f

bb.e:                                             ; preds = %upb_WireReader_ReadTag.exit
  store i32 %i.ap, ptr %i.s, align 4, !tbaa !23
  br label %_upb_Decoder_DecodeField.exit.thread

bb.f:                                             ; preds = %upb_WireReader_ReadTag.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.as = zext nneg i32 %i.ap to i64
  %i.at = add nsw i64 %i.as, -1                   ; 2 uses
  %i.au = load i8, ptr %i.g, align 1, !tbaa !22   ; 2 uses
  %i.av = zext i8 %i.au to i64
  %i.aw = icmp ult i64 %i.at, %i.av
  br i1 %i.aw, label %upb_MiniTable_FindFieldByNumber.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ax = load i16, ptr %i.h, align 2, !tbaa !24  ; 2 uses
  %i.ay = zext i16 %i.ax to i32
  %i.az = add nsw i32 %i.ay, -1                   ; 2 uses
  %i.ba = icmp eq i16 %i.ax, 0
  br i1 %i.ba, label %upb_MiniTable_FindFieldByNumber.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = load ptr, ptr %3, align 8, !tbaa !25    ; 2 uses
  %i.bc = zext nneg i32 %i.az to i64
  %i.bd = getelementptr inbounds nuw [12 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !27
  %i.bf = icmp ugt i32 %i.ap, %i.be
  br i1 %i.bf, label %upb_MiniTable_FindFieldByNumber.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = zext i8 %i.au to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.033.i.i = phi i32 [ %i.bg, %bb.i ], [ %..033.i.i, %bb.k ] ; 3 uses
  %.030.i.i = phi i32 [ %i.az, %bb.i ], [ %.030..i.i, %bb.k ] ; 3 uses
  %.not.i.i26 = icmp slt i32 %.030.i.i, %.033.i.i
  br i1 %.not.i.i26, label %upb_MiniTable_FindFieldByNumber.exit.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = add i32 %.030.i.i, %.033.i.i
  %i.bi = lshr i32 %i.bh, 1                       ; 3 uses
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [12 x i8], ptr %i.bb, i64 %i.bj ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !27 ; 2 uses
  %i.bm = add nsw i32 %i.bi, -1
  %i.bn = add nuw i32 %i.bi, 1
  %.not40.i.i = icmp eq i32 %i.bl, %i.ap
  %i.bo = icmp ult i32 %i.bl, %i.ap               ; 2 uses
  %..033.i.i = select i1 %i.bo, i32 %i.bn, i32 %.033.i.i, !prof !29
  %.030..i.i = select i1 %i.bo, i32 %.030.i.i, i32 %i.bm, !prof !29
  br i1 %.not40.i.i, label %_upb_Decoder_FindField.exit, label %bb.j, !llvm.loop !30

upb_MiniTable_FindFieldByNumber.exit.i:           ; preds = %bb.f
  %i.bp = load ptr, ptr %3, align 8, !tbaa !25    ; 2 uses
  %i.bq = getelementptr inbounds nuw [12 x i8], ptr %i.bp, i64 %i.at
  %.not.i28 = icmp eq ptr %i.bp, null
  br i1 %.not.i28, label %upb_MiniTable_FindFieldByNumber.exit.thread.i, label %_upb_Decoder_FindField.exit

upb_MiniTable_FindFieldByNumber.exit.thread.i:    ; preds = %bb.j, %upb_MiniTable_FindFieldByNumber.exit.i, %bb.h, %bb.g
  %i.br = load ptr, ptr %i.i, align 8, !tbaa !7
  %.not13.i = icmp eq ptr %i.br, null
  br i1 %.not13.i, label %_upb_Decoder_FindField.exit, label %bb.l

bb.l:                                             ; preds = %upb_MiniTable_FindFieldByNumber.exit.thread.i
  %i.bs = load i8, ptr %i.j, align 4, !tbaa !22   ; 2 uses
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
  %i.bv = load i8, ptr %.0.i16, align 1, !tbaa !22 ; 3 uses
  %i.bw = icmp sgt i8 %i.bv, -1
  %i.bx = zext i8 %i.bv to i64                    ; 3 uses
  br i1 %i.bw, label %bb.o, label %upb_EpsCopyInputStream_HasErrorHandler.exit.i31, !prof !20

bb.o:                                             ; preds = %bb.n
  store i64 %i.bx, ptr %.sroa.0, align 8, !tbaa !32
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i16, i64 1
  br label %upb_WireReader_ReadVarint.exit

upb_EpsCopyInputStream_HasErrorHandler.exit.i31:  ; preds = %bb.n
  %i.bz = call { ptr, i64 } @_upb_WireReader_ReadLongVarint_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %.0.i16, i64 noundef %i.bx, ptr noundef nonnull %0) #12 ; 2 uses
  %i.ca = extractvalue { ptr, i64 } %i.bz, 0
  %i.cb = extractvalue { ptr, i64 } %i.bz, 1      ; 3 uses
  store i64 %i.cb, ptr %.sroa.0, align 8, !tbaa !32
  %i.cc = trunc i64 %i.cb to i8
  br label %upb_WireReader_ReadVarint.exit

upb_WireReader_ReadVarint.exit:                   ; preds = %upb_EpsCopyInputStream_HasErrorHandler.exit.i31, %bb.o
  %.sroa.0.0..sroa.0.0..sroa.0.0.182323 = phi i8 [ %i.bv, %bb.o ], [ %i.cc, %upb_EpsCopyInputStream_HasErrorHandler.exit.i31 ] ; 4 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0.184 = phi i64 [ %i.bx, %bb.o ], [ %i.cb, %upb_EpsCopyInputStream_HasErrorHandler.exit.i31 ] ; 7 uses
  %.0.i19 = phi ptr [ %i.by, %bb.o ], [ %i.ca, %upb_EpsCopyInputStream_HasErrorHandler.exit.i31 ] ; 5 uses
  %i.cd = getelementptr i8, ptr %.0.i27, i64 10
  %.val = load i8, ptr %i.cd, align 2, !tbaa !33  ; 2 uses
  switch i8 %.val, label %_upb_Decoder_Munge.exit [
    i8 14, label %bb.p
    i8 8, label %bb.u
    i8 17, label %bb.v
    i8 18, label %bb.w
  ]

bb.p:                                             ; preds = %upb_WireReader_ReadVarint.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i27, i64 8
  %i.cf = load i16, ptr %i.ce, align 4, !tbaa !34
  %i.cg = zext i16 %i.cf to i64
  %i.ch = shl nuw nsw i64 %i.cg, 2
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i27, i64 %i.ch
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !22 ; 4 uses
  %i.ck = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0.184 to i32 ; 4 uses
  %i.cl = icmp ult i32 %i.ck, 64
  br i1 %i.cl, label %bb.q, label %bb.r, !prof !20

bb.q:                                             ; preds = %bb.p
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cn = load i64, ptr %i.cm, align 4
  %i.co = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0.184, 63
  %i.cp = shl nuw i64 1, %i.co
  %i.cq = and i64 %i.cn, %i.cp
  %.not303 = icmp eq i64 %i.cq, 0
  br i1 %.not303, label %_upb_Decoder_DecodeWireValue.exit.thread.thread, label %_upb_Decoder_Munge.exit

bb.r:                                             ; preds = %bb.p
  %i.cr = load i32, ptr %i.cj, align 4, !tbaa !3  ; 2 uses
  %i.cs = icmp ugt i32 %i.cr, %i.ck
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 3 uses
  br i1 %i.cs, label %upb_MiniTableEnum_CheckValue.exit, label %bb.s, !prof !20

bb.s:                                             ; preds = %bb.r
  %i.cu = lshr i32 %i.cr, 5                       ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  %i.cx = add i32 %i.cw, %i.cu                    ; 2 uses
  %i.cy = zext i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cy
  %.not30.i33 = icmp ult i32 %i.cu, %i.cx
  br i1 %.not30.i33, label %.lr.ph.preheader.i, label %_upb_Decoder_DecodeWireValue.exit.thread.thread

.lr.ph.preheader.i:                               ; preds = %bb.s
  %i.da = zext nneg i32 %i.cu to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.da
  br label %.lr.ph.i

bb.t:                                             ; preds = %.lr.ph.i
  %i.dc = getelementptr inbounds nuw i8, ptr %.02531.i, i64 4 ; 2 uses
  %.not.i34 = icmp ult ptr %i.dc, %i.cz
  br i1 %.not.i34, label %.lr.ph.i, label %_upb_Decoder_DecodeWireValue.exit.thread.thread, !llvm.loop !35

.lr.ph.i:                                         ; preds = %bb.t, %.lr.ph.preheader.i
  %.02531.i = phi ptr [ %i.dc, %bb.t ], [ %i.db, %.lr.ph.preheader.i ] ; 2 uses
  %i.dd = load i32, ptr %.02531.i, align 4, !tbaa !3
  %i.de = icmp eq i32 %i.dd, %i.ck
  br i1 %i.de, label %_upb_Decoder_Munge.exit, label %bb.t

upb_MiniTableEnum_CheckValue.exit:                ; preds = %bb.r
  %i.df = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0.184, 5
  %i.dg = and i64 %i.df, 134217727
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3
  %i.dj = and i32 %i.ck, 31
  %i.dk = shl nuw i32 1, %i.dj
  %i.dl = and i32 %i.di, %i.dk
  %.not302 = icmp eq i32 %i.dl, 0
  br i1 %.not302, label %_upb_Decoder_DecodeWireValue.exit.thread.thread, label %_upb_Decoder_Munge.exit

bb.u:                                             ; preds = %upb_WireReader_ReadVarint.exit
  %i.dm = icmp ne i64 %.sroa.0.0..sroa.0.0..sroa.0.0.184, 0
  %i.dn = zext i1 %i.dm to i8                     ; 2 uses
  store i8 %i.dn, ptr %.sroa.0, align 8, !tbaa !22
  br label %_upb_Decoder_Munge.exit

bb.v:                                             ; preds = %upb_WireReader_ReadVarint.exit
  %i.do = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0.184 to i32 ; 2 uses
  %i.dp = lshr i32 %i.do, 1
  %i.dq = and i32 %i.do, 1
  %i.dr = sub nsw i32 0, %i.dq
  %i.ds = xor i32 %i.dp, %i.dr                    ; 2 uses
  store i32 %i.ds, ptr %.sroa.0, align 8, !tbaa !22
  %i.dt = trunc i32 %i.ds to i8
  br label %_upb_Decoder_Munge.exit

bb.w:                                             ; preds = %upb_WireReader_ReadVarint.exit
  %i.du = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0.184, 1
  %i.dv = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0.184, 1
  %i.dw = sub nsw i64 0, %i.dv
  %i.dx = xor i64 %i.du, %i.dw                    ; 2 uses
  store i64 %i.dx, ptr %.sroa.0, align 8, !tbaa !22
  %i.dy = trunc i64 %i.dx to i8
  br label %_upb_Decoder_Munge.exit

_upb_Decoder_Munge.exit:                          ; preds = %.lr.ph.i, %upb_WireReader_ReadVarint.exit, %bb.q, %upb_MiniTableEnum_CheckValue.exit, %bb.w, %bb.v, %bb.u
  %.sroa.0.0..sroa.0.0..sroa.0.0.182322 = phi i8 [ %i.dn, %bb.u ], [ %.sroa.0.0..sroa.0.0..sroa.0.0.182323, %upb_WireReader_ReadVarint.exit ], [ %.sroa.0.0..sroa.0.0..sroa.0.0.182323, %bb.q ], [ %.sroa.0.0..sroa.0.0..sroa.0.0.182323, %upb_MiniTableEnum_CheckValue.exit ], [ %i.dy, %bb.w ], [ %i.dt, %bb.v ], [ %.sroa.0.0..sroa.0.0..sroa.0.0.182323, %.lr.ph.i ]
  %i.dz = zext i8 %.val to i64
  %i.ea = getelementptr inbounds nuw i8, ptr @_upb_Decoder_GetVarintOp.kVarintOps, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !22
  br label %_upb_Decoder_DecodeWireValue.exit

bb.x:                                             ; preds = %_upb_Decoder_FindField.exit
  %i.ec = getelementptr inbounds nuw i8, ptr %.0.i27, i64 10
  %i.ed = load i8, ptr %i.ec, align 2, !tbaa !33
  %i.ee = zext nneg i8 %i.ed to i32
  %i.ef = shl nuw i32 1, %i.ee
  %.fr301 = freeze i32 %i.ef
  %i.eg = and i32 %.fr301, 32900
  %i.eh = icmp eq i32 %i.eg, 0
  %.0.copyload.i = load i32, ptr %.0.i16, align 1 ; 2 uses
  store i32 %.0.copyload.i, ptr %.sroa.0, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %.0.i16, i64 4 ; 2 uses
  %i.ej = trunc i32 %.0.copyload.i to i8
  br i1 %i.eh, label %_upb_Decoder_DecodeWireValue.exit.thread.thread, label %_upb_Decoder_DecodeWireValue.exit.thread253

bb.y:                                             ; preds = %_upb_Decoder_FindField.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %.0.i27, i64 10
  %i.el = load i8, ptr %i.ek, align 2, !tbaa !33
  %i.em = zext nneg i8 %i.el to i32
  %i.en = shl nuw i32 1, %i.em
  %.fr299 = freeze i32 %i.en
  %i.eo = and i32 %.fr299, 65602
  %i.ep = icmp eq i32 %i.eo, 0
  %.0.copyload.i35 = load i64, ptr %.0.i16, align 1 ; 2 uses
  store i64 %.0.copyload.i35, ptr %.sroa.0, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.i16, i64 8 ; 2 uses
  %i.er = trunc i64 %.0.copyload.i35 to i8
  br i1 %i.ep, label %_upb_Decoder_DecodeWireValue.exit.thread.thread, label %_upb_Decoder_DecodeWireValue.exit.thread253

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
  %.0217.a = phi i32 [ %i.eu, %bb.aa ], [ %i.fa, %upb_EpsCopyInputStream_HasErrorHandler.exit.i38 ] ; 2 uses
  %.0.i21 = phi ptr [ %i.ev, %bb.aa ], [ %i.ey, %upb_EpsCopyInputStream_HasErrorHandler.exit.i38 ] ; 7 uses
  store i32 %.0217.a, ptr %.sroa.0, align 8, !tbaa !3
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
  %i.fn = trunc i32 %.0217.a to i8                ; 6 uses
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
  %.fr = freeze ptr %i.fu
  %.not4.i.i = icmp eq ptr %.fr, null
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
  %.fr297 = freeze i16 %i.fx
  %i.fy = and i16 %.fr297, 8
  %.not6.i.i = icmp eq i16 %i.fy, 0
  br i1 %.not6.i.i, label %_upb_Decoder_DecodeWireValue.exit, label %_upb_Decoder_DecodeWireValue.exit.thread253

bb.ag:                                            ; preds = %_upb_Decoder_FindField.exit
  %i.fz = load i32, ptr %.0.i27, align 4, !tbaa !27 ; 2 uses
  store i32 %i.fz, ptr %.sroa.0, align 8, !tbaa !22
  %i.ga = getelementptr inbounds nuw i8, ptr %.0.i27, i64 10
  %i.gb = load i8, ptr %i.ga, align 2, !tbaa !33
  %i.gc = trunc i32 %i.fz to i8                   ; 2 uses
  switch i8 %i.gb, label %_upb_Decoder_DecodeWireValue.exit.thread.thread [
    i8 10, label %bb.ah
    i8 19, label %_upb_Decoder_DecodeWireValue.exit.thread.thread291.preheader
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.gd = getelementptr inbounds nuw i8, ptr %.0.i27, i64 11
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !36
  %i.gf = and i8 %i.ge, 8
  %.not.i20 = icmp eq i8 %i.gf, 0
  br i1 %.not.i20, label %bb.ai, label %_upb_Decoder_DecodeWireValue.exit.thread253

bb.ai:                                            ; preds = %bb.ah
  %i.gg = getelementptr inbounds nuw i8, ptr %.0.i27, i64 8
  %i.gh = load i16, ptr %i.gg, align 4, !tbaa !34
  %i.gi = zext i16 %i.gh to i64
  %i.gj = shl nuw nsw i64 %i.gi, 2
  %i.gk = getelementptr inbounds nuw i8, ptr %.0.i27, i64 %i.gj
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !22
  %.not4.i = icmp eq ptr %i.gl, null
  br i1 %.not4.i, label %_upb_Decoder_DecodeWireValue.exit.thread.thread, label %_upb_Decoder_DecodeWireValue.exit.thread253

bb.aj:                                            ; preds = %_upb_Decoder_FindField.exit
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.gm, i32 noundef 2) #13
  unreachable

_upb_Decoder_DecodeWireValue.exit:                ; preds = %bb.af, %bb.ac, %bb.ae, %bb.ad, %bb.ab, %_upb_Decoder_Munge.exit
  %.sroa.0.0..sroa.0.0..sroa.0.0.182321 = phi i8 [ %.sroa.0.0..sroa.0.0..sroa.0.0.182322, %_upb_Decoder_Munge.exit ], [ %i.fn, %bb.ac ], [ %i.fn, %bb.ad ], [ %i.fn, %bb.ab ], [ %i.fn, %bb.ae ], [ %i.fn, %bb.af ]
  %.4.in = phi i8 [ %i.eb, %_upb_Decoder_Munge.exit ], [ %i.fk, %bb.ac ], [ %i.fk, %bb.ad ], [ %i.fk, %bb.ab ], [ %i.fk, %bb.ae ], [ %i.fk, %bb.af ] ; 3 uses
  %.1.i = phi ptr [ %.0.i19, %_upb_Decoder_Munge.exit ], [ %.0.i21, %bb.ac ], [ %.0.i21, %bb.ad ], [ %.0.i21, %bb.ab ], [ %.0.i21, %bb.ae ], [ %.0.i21, %bb.af ] ; 3 uses
  %.4 = zext nneg i8 %.4.in to i32
  %i.gn = icmp sgt i8 %.4.in, -1
  br i1 %i.gn, label %_upb_Decoder_DecodeWireValue.exit.thread253, label %_upb_Decoder_DecodeWireValue.exit.thread

_upb_Decoder_DecodeWireValue.exit.thread253:      ; preds = %bb.ai, %bb.af, %bb.y, %bb.x, %bb.ah, %_upb_Decoder_DecodeWireValue.exit
  %.sroa.0.0..sroa.0.0..sroa.0.0.182 = phi i8 [ %.sroa.0.0..sroa.0.0..sroa.0.0.182321, %_upb_Decoder_DecodeWireValue.exit ], [ %i.gc, %bb.ai ], [ %i.gc, %bb.ah ], [ %i.er, %bb.y ], [ %i.ej, %bb.x ], [ %i.fn, %bb.af ]
  %.1.i257 = phi ptr [ %.1.i, %_upb_Decoder_DecodeWireValue.exit ], [ %.0.i16, %bb.ai ], [ %.0.i16, %bb.ah ], [ %i.eq, %bb.y ], [ %i.ei, %bb.x ], [ %.0.i21, %bb.af ] ; 24 uses
  %.4256 = phi i32 [ %.4, %_upb_Decoder_DecodeWireValue.exit ], [ 6, %bb.ai ], [ 6, %bb.ah ], [ 3, %bb.y ], [ 2, %bb.x ], [ 4, %bb.af ] ; 7 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.0.i27, i64 11
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !36
  %i.gq = zext i8 %i.gp to i32                    ; 2 uses
  %i.gr = and i32 %i.gq, 8
  %.not.i = icmp eq i32 %i.gr, 0
  br i1 %.not.i, label %bb.an, label %bb.ak, !prof !20

bb.ak:                                            ; preds = %_upb_Decoder_DecodeWireValue.exit.thread253
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

bb.an:                                            ; preds = %bb.am, %_upb_Decoder_DecodeWireValue.exit.thread253
  %.029.i = phi ptr [ %i.gu, %bb.am ], [ %2, %_upb_Decoder_DecodeWireValue.exit.thread253 ] ; 5 uses
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
  br i1 %i.hf, label %bb.aq, label %_upb_Decoder_Reserve.exit97

bb.aq:                                            ; preds = %bb.ap
  %i.hg = add i64 %i.hc, 1
  %i.hh = call zeroext i1 @_upb_Array_Realloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.ha, i64 noundef %i.hg, ptr noundef nonnull %i.p) #12
  br i1 %i.hh, label %_upb_Decoder_Reserve.exit97, label %bb.ar

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
  %.val.i.i.i.i92 = load ptr, ptr %i.p, align 8, !tbaa !46 ; 4 uses
  %.val11.i.i.i.i93 = load ptr, ptr %i.r, align 8, !tbaa !48
  %i.hu = ptrtoint ptr %.val11.i.i.i.i93 to i64
  %i.hv = ptrtoint ptr %.val.i.i.i.i92 to i64
  %i.hw = sub i64 %i.hu, %i.hv
  %i.hx = icmp ult i64 %i.hw, %i.ht
  br i1 %i.hx, label %upb_Arena_Malloc.exit.i.i.i95, label %upb_Arena_Malloc.exit.thread.i.i.i94, !prof !38

upb_Arena_Malloc.exit.thread.i.i.i94:             ; preds = %bb.as
  %i.hy = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i92, i64 %i.ht
  store ptr %i.hy, ptr %i.p, align 8, !tbaa !46
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i92) ]
  br label %_upb_Decoder_CreateArray.exit

upb_Arena_Malloc.exit.i.i.i95:                    ; preds = %bb.as
  %i.hz = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.p, i64 noundef %i.ht) #12 ; 2 uses
  %.not.i.i.i96 = icmp eq ptr %i.hz, null
  br i1 %.not.i.i.i96, label %bb.at, label %_upb_Decoder_CreateArray.exit

bb.at:                                            ; preds = %upb_Arena_Malloc.exit.i.i.i95
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.ia, i32 noundef 1) #13
  unreachable

_upb_Decoder_CreateArray.exit:                    ; preds = %upb_Arena_Malloc.exit.thread.i.i.i94, %upb_Arena_Malloc.exit.i.i.i95
  %.0.i19.i.i.i = phi ptr [ %.val.i.i.i.i92, %upb_Arena_Malloc.exit.thread.i.i.i94 ], [ %i.hz, %upb_Arena_Malloc.exit.i.i.i95 ] ; 6 uses
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
  br label %_upb_Decoder_Reserve.exit97

_upb_Decoder_Reserve.exit97:                      ; preds = %bb.aq, %bb.ap, %_upb_Decoder_CreateArray.exit
  %.069.i = phi ptr [ %.0.i19.i.i.i, %_upb_Decoder_CreateArray.exit ], [ %i.ha, %bb.ap ], [ %i.ha, %bb.aq ] ; 18 uses
  switch i32 %.4256, label %bb.cl [
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

bb.au:                                            ; preds = %_upb_Decoder_Reserve.exit97, %_upb_Decoder_Reserve.exit97, %_upb_Decoder_Reserve.exit97
  %.069.val80.i = load i64, ptr %.069.i, align 8, !tbaa !49
  %i.ii = and i64 %.069.val80.i, -8
  %i.ij = inttoptr i64 %i.ii to ptr
  %i.ik = getelementptr inbounds nuw i8, ptr %.069.i, i64 8 ; 2 uses
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !45 ; 2 uses
  %i.im = zext nneg i32 %.4256 to i64
  %i.in = shl i64 %i.il, %i.im
  %i.io = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.in
  %i.ip = add i64 %i.il, 1
  store i64 %i.ip, ptr %i.ik, align 8, !tbaa !45
  %i.iq = shl nuw nsw i32 1, %.4256
  %i.ir = zext nneg i32 %i.iq to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.io, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0, i64 %i.ir, i1 false)
  br label %_upb_Decoder_DecodeField.exit

bb.av:                                            ; preds = %_upb_Decoder_Reserve.exit97
  %.069.val79.i = load i64, ptr %.069.i, align 8, !tbaa !49
  %i.is = and i64 %.069.val79.i, -8
  %i.it = inttoptr i64 %i.is to ptr
  %i.iu = getelementptr inbounds nuw i8, ptr %.069.i, i64 8 ; 3 uses
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !45
  %i.iw = getelementptr inbounds nuw [16 x i8], ptr %i.it, i64 %i.iv
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.176.a = load i32, ptr %.sroa.0, align 8, !tbaa !22
end_hunk_0
begin_hunk_1_@_upb_Decoder_DecodeMessage:bb.a

bb.bk:                                            ; preds = %_upb_Decoder_NewSubMessage.exit
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.174.a = load i32, ptr %.sroa.0, align 8, !tbaa !22
  %i.me = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.174.a to i64
  %i.mf = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.mg = ptrtoint ptr %.1.i257 to i64
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
  br i1 %i.mo, label %bb.bl, label %upb_EpsCopyInputStream_PushLimit.exit88, !prof !38

bb.bl:                                            ; preds = %bb.bk
  %i.mp = call ptr @upb_EpsCopyInputStream_ReturnError_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %0) #12 ; 0 uses
  br label %upb_EpsCopyInputStream_PushLimit.exit88

upb_EpsCopyInputStream_PushLimit.exit88:          ; preds = %bb.bk, %bb.bl
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

bb.bm:                                            ; preds = %upb_EpsCopyInputStream_PushLimit.exit88
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.my, i32 noundef 4) #13, !inline_history !50
  unreachable

bb.bn:                                            ; preds = %upb_EpsCopyInputStream_PushLimit.exit88
  %i.mz = call ptr @_upb_Decoder_DecodeMessage(ptr noundef nonnull %0, ptr noundef %.1.i257, ptr noundef nonnull %.0.i3.i.i.i, ptr noundef %i.mu), !inline_history !50
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
  %spec.select.i87 = call i64 @llvm.smin.i64(i64 %i.nf, i64 0)
  %i.nh = getelementptr inbounds i8, ptr %i.ng, i64 %spec.select.i87
  store ptr %i.nh, ptr %i.d, align 8, !tbaa !19
  br label %_upb_Decoder_DecodeField.exit

bb.bp:                                            ; preds = %_upb_Decoder_Reserve.exit97, %_upb_Decoder_Reserve.exit97
  %i.ni = add nsw i32 %.4256, -5                  ; 3 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.172 = load i32, ptr %.sroa.0, align 8, !tbaa !22 ; 3 uses
  %i.nj = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.172 to i64 ; 3 uses
  %i.nk = load ptr, ptr %0, align 8, !tbaa !18
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 16
  %i.nm = ptrtoint ptr %i.nl to i64
  %i.nn = ptrtoint ptr %.1.i257 to i64
  %i.no = sub i64 %i.nm, %i.nn
  %i.np = icmp slt i64 %i.no, %i.nj
  br i1 %i.np, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.nq = call ptr @upb_EpsCopyInputStream_ReturnError_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %0) #12
  br label %upb_EpsCopyInputStream_ReadStringEphemeral.exit

bb.br:                                            ; preds = %bb.bp
  %i.nr = getelementptr inbounds nuw i8, ptr %.1.i257, i64 %i.nj
  br label %upb_EpsCopyInputStream_ReadStringEphemeral.exit

upb_EpsCopyInputStream_ReadStringEphemeral.exit:  ; preds = %bb.bq, %bb.br
  %.sroa.4.6 = phi i64 [ %.sroa.4.0, %bb.bq ], [ %i.nj, %bb.br ] ; 3 uses
  %.sroa.0191.6 = phi ptr [ %.sroa.0191.0, %bb.bq ], [ %.1.i257, %bb.br ] ; 3 uses
  %.0.i86 = phi ptr [ %i.nq, %bb.bq ], [ %i.nr, %bb.br ] ; 3 uses
  %.not.i.i46 = icmp eq ptr %.0.i86, null
  br i1 %.not.i.i46, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %upb_EpsCopyInputStream_ReadStringEphemeral.exit
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.ns, i32 noundef 2) #13, !inline_history !50
  unreachable

bb.bt:                                            ; preds = %upb_EpsCopyInputStream_ReadStringEphemeral.exit
  %notmask.i.i = shl nsw i32 -1, %i.ni
  %i.nt = xor i32 %notmask.i.i, -1
  %i.nu = and i32 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.172, %i.nt
  %.not48.i.i = icmp eq i32 %i.nu, 0
  br i1 %.not48.i.i, label %bb.bv, label %bb.bu, !prof !20

bb.bu:                                            ; preds = %bb.bt
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.nv, i32 noundef 2) #13, !inline_history !50
  unreachable

bb.bv:                                            ; preds = %bb.bt
  %i.nw = lshr i32 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.172, %i.ni ; 2 uses
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
  br i1 %i.oe, label %bb.bx, label %_upb_Decoder_Reserve.exit85

bb.bx:                                            ; preds = %bb.bw
  %i.of = add i64 %i.oc, %i.ny
  %i.og = call zeroext i1 @_upb_Array_Realloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %.069.i, i64 noundef %i.of, ptr noundef nonnull %i.p) #12
  br i1 %i.og, label %._upb_Decoder_Reserve.exit85_crit_edge, label %bb.by

._upb_Decoder_Reserve.exit85_crit_edge:           ; preds = %bb.bx
  %.pre327 = load i64, ptr %i.ob, align 8, !tbaa !45
  br label %_upb_Decoder_Reserve.exit85

bb.by:                                            ; preds = %bb.bx
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.oh, i32 noundef 1) #13
  unreachable

_upb_Decoder_Reserve.exit85:                      ; preds = %._upb_Decoder_Reserve.exit85_crit_edge, %bb.bw
  %i.oi = phi i64 [ %.pre327, %._upb_Decoder_Reserve.exit85_crit_edge ], [ %i.oc, %bb.bw ] ; 2 uses
  %.069.val76.i = load i64, ptr %.069.i, align 8, !tbaa !49
  %i.oj = and i64 %.069.val76.i, -8
  %i.ok = inttoptr i64 %i.oj to ptr
  %i.ol = add i64 %i.oi, %i.ny
  store i64 %i.ol, ptr %i.ob, align 8, !tbaa !45
  %i.om = zext nneg i32 %i.ni to i64
  %i.on = shl i64 %i.oi, %i.om
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.on
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.oo, ptr align 1 %.sroa.0191.6, i64 %.sroa.4.6, i1 false)
  br label %_upb_Decoder_DecodeField.exit

bb.bz:                                            ; preds = %_upb_Decoder_Reserve.exit97, %_upb_Decoder_Reserve.exit97, %_upb_Decoder_Reserve.exit97
  %i.op = add nsw i32 %.4256, -9                  ; 2 uses
  %i.oq = shl nuw nsw i32 1, %i.op
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0. = load i32, ptr %.sroa.0, align 8, !tbaa !22
  %i.or = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0. to i64
  %i.os = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.ot = ptrtoint ptr %.1.i257 to i64
  %i.ou = ptrtoint ptr %i.os to i64
  %i.ov = sub i64 %i.ot, %i.ou
  %i.ow = add nsw i64 %i.ov, %i.or                ; 3 uses
  %i.ox = load i64, ptr %i.e, align 8, !tbaa !21
  %i.oy = sub nsw i64 %i.ox, %i.ow                ; 2 uses
  store i64 %i.ow, ptr %i.e, align 8, !tbaa !21
  %i.oz = call i64 @llvm.smin.i64(i64 %i.ow, i64 0)
  %i.pa = getelementptr inbounds i8, ptr %i.os, i64 %i.oz
  store ptr %i.pa, ptr %i.d, align 8, !tbaa !19
  %i.pb = icmp slt i64 %i.oy, 0
  br i1 %i.pb, label %bb.ca, label %upb_EpsCopyInputStream_PushLimit.exit, !prof !38

bb.ca:                                            ; preds = %bb.bz
  %i.pc = call ptr @upb_EpsCopyInputStream_ReturnError_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %0) #12 ; 0 uses
  br label %upb_EpsCopyInputStream_PushLimit.exit

upb_EpsCopyInputStream_PushLimit.exit:            ; preds = %bb.bz, %bb.ca
  %.069.val75.i = load i64, ptr %.069.i, align 8, !tbaa !49
  %i.pd = and i64 %.069.val75.i, -8
  %i.pe = inttoptr i64 %i.pd to ptr
  %i.pf = getelementptr inbounds nuw i8, ptr %.069.i, i64 8 ; 4 uses
  %i.pg = load i64, ptr %i.pf, align 8, !tbaa !45
  %i.ph = zext nneg i32 %i.op to i64              ; 2 uses
  %i.pi = shl i64 %i.pg, %i.ph
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pe, i64 %i.pi
  %i.pk = getelementptr i8, ptr %.0.i27, i64 10
  %i.pl = getelementptr inbounds nuw i8, ptr %.069.i, i64 16
  %i.pm = zext nneg i32 %i.oq to i64              ; 2 uses
  br label %bb.cb

bb.cb:                                            ; preds = %_upb_Decoder_Reserve.exit, %upb_EpsCopyInputStream_PushLimit.exit
  %.0218.a = phi ptr [ %.1.i257, %upb_EpsCopyInputStream_PushLimit.exit ], [ %.0.i.i.i, %_upb_Decoder_Reserve.exit ] ; 5 uses
  %.0.i.i = phi ptr [ %i.pj, %upb_EpsCopyInputStream_PushLimit.exit ], [ %i.rd, %_upb_Decoder_Reserve.exit ]
  %i.pn = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.po = ptrtoint ptr %.0218.a to i64
  %i.pp = ptrtoint ptr %i.pn to i64
  %i.pq = sub i64 %i.po, %i.pp                    ; 2 uses
  %i.pr = trunc i64 %i.pq to i32
  %i.ps = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.pt = icmp ult ptr %.0218.a, %i.ps
  br i1 %i.pt, label %upb_EpsCopyInputStream_IsDone.exit83.thread261, label %bb.cc, !prof !20

bb.cc:                                            ; preds = %bb.cb
  %sext.i.i78 = shl i64 %i.pq, 32
  %i.pu = ashr exact i64 %sext.i.i78, 32
  %i.pv = load i64, ptr %i.e, align 8, !tbaa !21  ; 2 uses
  %i.pw = icmp eq i64 %i.pu, %i.pv
  %cond.fr.i79 = freeze i1 %i.pw
  br i1 %cond.fr.i79, label %_upb_Decoder_DecodeVarintPacked.exit.i, label %upb_EpsCopyInputStream_IsDone.exit83, !prof !20

upb_EpsCopyInputStream_IsDone.exit83:             ; preds = %bb.cc
  %i.px = call ptr @upb_EpsCopyInputStream_IsDoneFallback_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %0, ptr noundef %.0218.a, i32 noundef %i.pr) #12 ; 2 uses
  %.not.i81 = icmp eq ptr %i.px, null
  br i1 %.not.i81, label %upb_EpsCopyInputStream_IsDone.exit83._upb_Decoder_DecodeVarintPacked.exit.i_crit_edge, label %upb_EpsCopyInputStream_IsDone.exit83.thread261

upb_EpsCopyInputStream_IsDone.exit83._upb_Decoder_DecodeVarintPacked.exit.i_crit_edge: ; preds = %upb_EpsCopyInputStream_IsDone.exit83
  %.pre324 = load i64, ptr %i.e, align 8, !tbaa !21
  %.pre325 = load ptr, ptr %0, align 8, !tbaa !18
  br label %_upb_Decoder_DecodeVarintPacked.exit.i

upb_EpsCopyInputStream_IsDone.exit83.thread261:   ; preds = %bb.cb, %upb_EpsCopyInputStream_IsDone.exit83
  %.1219264 = phi ptr [ %i.px, %upb_EpsCopyInputStream_IsDone.exit83 ], [ %.0218.a, %bb.cb ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0192)
  %i.py = load i8, ptr %.1219264, align 1, !tbaa !22 ; 2 uses
  %i.pz = icmp sgt i8 %i.py, -1
  %i.qa = zext i8 %i.py to i64                    ; 3 uses
  br i1 %i.pz, label %bb.cd, label %upb_EpsCopyInputStream_HasErrorHandler.exit.i75, !prof !20

bb.cd:                                            ; preds = %upb_EpsCopyInputStream_IsDone.exit83.thread261
  store i64 %i.qa, ptr %.sroa.0192, align 8, !tbaa !32
  %i.qb = getelementptr inbounds nuw i8, ptr %.1219264, i64 1
  br label %upb_WireReader_ReadVarint.exit.i.i

upb_EpsCopyInputStream_HasErrorHandler.exit.i75:  ; preds = %upb_EpsCopyInputStream_IsDone.exit83.thread261
  %i.qc = call { ptr, i64 } @_upb_WireReader_ReadLongVarint_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %.1219264, i64 noundef %i.qa, ptr noundef nonnull %0) #12, !inline_history !50 ; 2 uses
  %i.qd = extractvalue { ptr, i64 } %i.qc, 0
  %i.qe = extractvalue { ptr, i64 } %i.qc, 1      ; 2 uses
  store i64 %i.qe, ptr %.sroa.0192, align 8, !tbaa !32
  br label %upb_WireReader_ReadVarint.exit.i.i

upb_WireReader_ReadVarint.exit.i.i:               ; preds = %upb_EpsCopyInputStream_HasErrorHandler.exit.i75, %bb.cd
  %.sroa.0192.0..sroa.0192.0..sroa.0192.0.194 = phi i64 [ %i.qa, %bb.cd ], [ %i.qe, %upb_EpsCopyInputStream_HasErrorHandler.exit.i75 ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.qb, %bb.cd ], [ %i.qd, %upb_EpsCopyInputStream_HasErrorHandler.exit.i75 ]
  %.val.i45 = load i8, ptr %i.pk, align 2, !tbaa !33
  switch i8 %.val.i45, label %_upb_Decoder_Munge.exit73 [
    i8 8, label %bb.ce
    i8 17, label %bb.cf
    i8 18, label %bb.cg
  ]

bb.ce:                                            ; preds = %upb_WireReader_ReadVarint.exit.i.i
  %i.qf = icmp ne i64 %.sroa.0192.0..sroa.0192.0..sroa.0192.0.194, 0
  %i.qg = zext i1 %i.qf to i8
  store i8 %i.qg, ptr %.sroa.0192, align 8, !tbaa !22
  br label %_upb_Decoder_Munge.exit73

bb.cf:                                            ; preds = %upb_WireReader_ReadVarint.exit.i.i
  %i.qh = trunc i64 %.sroa.0192.0..sroa.0192.0..sroa.0192.0.194 to i32 ; 2 uses
  %i.qi = lshr i32 %i.qh, 1
  %i.qj = and i32 %i.qh, 1
  %i.qk = sub nsw i32 0, %i.qj
  %i.ql = xor i32 %i.qi, %i.qk
  store i32 %i.ql, ptr %.sroa.0192, align 8, !tbaa !22
  br label %_upb_Decoder_Munge.exit73

bb.cg:                                            ; preds = %upb_WireReader_ReadVarint.exit.i.i
  %i.qm = lshr i64 %.sroa.0192.0..sroa.0192.0..sroa.0192.0.194, 1
  %i.qn = and i64 %.sroa.0192.0..sroa.0192.0..sroa.0192.0.194, 1
  %i.qo = sub nsw i64 0, %i.qn
  %i.qp = xor i64 %i.qm, %i.qo
  store i64 %i.qp, ptr %.sroa.0192, align 8, !tbaa !22
  br label %_upb_Decoder_Munge.exit73

_upb_Decoder_Munge.exit73:                        ; preds = %upb_WireReader_ReadVarint.exit.i.i, %bb.ce, %bb.cf, %bb.cg
  %i.qq = load i64, ptr %i.pl, align 8, !tbaa !43 ; 2 uses
  %i.qr = load i64, ptr %i.pf, align 8, !tbaa !45 ; 2 uses
  %i.qs = icmp eq i64 %i.qq, %i.qr
  br i1 %i.qs, label %bb.ch, label %_upb_Decoder_Reserve.exit

bb.ch:                                            ; preds = %_upb_Decoder_Munge.exit73
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

_upb_Decoder_Reserve.exit:                        ; preds = %_upb_Decoder_Munge.exit73, %bb.cj
  %i.rb = phi i64 [ %i.qy, %bb.cj ], [ %i.qr, %_upb_Decoder_Munge.exit73 ]
  %.1.i.i = phi ptr [ %i.ra, %bb.cj ], [ %.0.i.i, %_upb_Decoder_Munge.exit73 ] ; 2 uses
  %i.rc = add i64 %i.rb, 1
  store i64 %i.rc, ptr %i.pf, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.1.i.i, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0192, i64 %i.pm, i1 false)
  %i.rd = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 %i.pm
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0192)
  br label %bb.cb, !llvm.loop !57

_upb_Decoder_DecodeVarintPacked.exit.i:           ; preds = %bb.cc, %upb_EpsCopyInputStream_IsDone.exit83._upb_Decoder_DecodeVarintPacked.exit.i_crit_edge
  %i.re = phi ptr [ %.pre325, %upb_EpsCopyInputStream_IsDone.exit83._upb_Decoder_DecodeVarintPacked.exit.i_crit_edge ], [ %i.pn, %bb.cc ]
  %i.rf = phi i64 [ %.pre324, %upb_EpsCopyInputStream_IsDone.exit83._upb_Decoder_DecodeVarintPacked.exit.i_crit_edge ], [ %i.pv, %bb.cc ]
  %.1219260 = phi ptr [ null, %upb_EpsCopyInputStream_IsDone.exit83._upb_Decoder_DecodeVarintPacked.exit.i_crit_edge ], [ %.0218.a, %bb.cc ]
  %i.rg = add nsw i64 %i.rf, %i.oy                ; 2 uses
  store i64 %i.rg, ptr %i.e, align 8, !tbaa !21
  %spec.select.i72 = call i64 @llvm.smin.i64(i64 %i.rg, i64 0)
  %i.rh = getelementptr inbounds i8, ptr %i.re, i64 %spec.select.i72
  store ptr %i.rh, ptr %i.d, align 8, !tbaa !19
  br label %_upb_Decoder_DecodeField.exit

bb.ck:                                            ; preds = %_upb_Decoder_Reserve.exit97
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..val81.i = load i32, ptr %.sroa.0, align 8, !tbaa !22
  %i.ri = call fastcc ptr @_upb_Decoder_DecodeEnumPacked(ptr noundef nonnull %0, ptr noundef %.1.i257, ptr noundef nonnull %.029.i, ptr noundef %.069.i, ptr noundef nonnull %.0.i27, i32 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..val81.i), !inline_history !50
  br label %_upb_Decoder_DecodeField.exit

bb.cl:                                            ; preds = %_upb_Decoder_Reserve.exit97
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
  %.not.i116 = icmp eq ptr %i.sa, null
  br i1 %.not.i116, label %bb.co, label %_upb_Decoder_CreateMap.exit

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
  br i1 %i.sg, label %bb.cq, label %.thread265

bb.cq:                                            ; preds = %bb.cp
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sc, i64 12
  %i.si = getelementptr inbounds nuw i8, ptr %i.sc, i64 20
  %i.sj = load i16, ptr %i.si, align 4, !tbaa !34
  %i.sk = zext i16 %i.sj to i64
  %i.sl = shl nuw nsw i64 %i.sk, 2
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sh, i64 %i.sl
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !22 ; 3 uses
  %.not36.i = icmp eq ptr %i.sn, null
  br i1 %.not36.i, label %.thread265, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.so = getelementptr i8, ptr %i.sn, i64 8
  %.val.i108 = load i16, ptr %i.so, align 8, !tbaa !24
  %i.sp = zext i16 %.val.i108 to i64              ; 5 uses
  %i.sq = and i64 %i.sp, 7
  %i.sr = icmp eq i64 %i.sq, 0
  call void @llvm.assume(i1 %i.sr)
  %.val.i.i.i.i109 = load ptr, ptr %i.p, align 8, !tbaa !46 ; 4 uses
  %.val11.i.i.i.i110 = load ptr, ptr %i.r, align 8, !tbaa !48
  %i.ss = ptrtoint ptr %.val11.i.i.i.i110 to i64
  %i.st = ptrtoint ptr %.val.i.i.i.i109 to i64    ; 2 uses
  %i.su = sub i64 %i.ss, %i.st
  %i.sv = icmp ult i64 %i.su, %i.sp
  br i1 %i.sv, label %upb_Arena_Malloc.exit.i.i.i113, label %upb_Arena_Malloc.exit.thread.i.i.i111, !prof !38

upb_Arena_Malloc.exit.thread.i.i.i111:            ; preds = %bb.cr
  %i.sw = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i109, i64 %i.sp
  store ptr %i.sw, ptr %i.p, align 8, !tbaa !46
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i109) ]
  br label %_upb_Decoder_NewSubMessage.exit115

upb_Arena_Malloc.exit.i.i.i113:                   ; preds = %bb.cr
  %i.sx = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.p, i64 noundef %i.sp) #12 ; 3 uses
  %.not.i.i.i114 = icmp eq ptr %i.sx, null
  br i1 %.not.i.i.i114, label %bb.cs, label %upb_Arena_Malloc.exit.i.i.i113._upb_Decoder_NewSubMessage.exit115_crit_edge, !prof !54

upb_Arena_Malloc.exit.i.i.i113._upb_Decoder_NewSubMessage.exit115_crit_edge: ; preds = %upb_Arena_Malloc.exit.i.i.i113
  %.pre329 = ptrtoint ptr %i.sx to i64
  br label %_upb_Decoder_NewSubMessage.exit115

bb.cs:                                            ; preds = %upb_Arena_Malloc.exit.i.i.i113
  %i.sy = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.sy, i32 noundef 1) #13
  unreachable

_upb_Decoder_NewSubMessage.exit115:               ; preds = %upb_Arena_Malloc.exit.i.i.i113._upb_Decoder_NewSubMessage.exit115_crit_edge, %upb_Arena_Malloc.exit.thread.i.i.i111
  %.pre-phi = phi i64 [ %.pre329, %upb_Arena_Malloc.exit.i.i.i113._upb_Decoder_NewSubMessage.exit115_crit_edge ], [ %i.st, %upb_Arena_Malloc.exit.thread.i.i.i111 ]
  %.0.i3.i.i.i112 = phi ptr [ %i.sx, %upb_Arena_Malloc.exit.i.i.i113._upb_Decoder_NewSubMessage.exit115_crit_edge ], [ %.val.i.i.i.i109, %upb_Arena_Malloc.exit.thread.i.i.i111 ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i3.i.i.i112, i8 0, i64 %i.sp, i1 false)
  store i64 %.pre-phi, ptr %i.t, align 8, !tbaa !32
  br label %.thread265

.thread265:                                       ; preds = %bb.cp, %_upb_Decoder_NewSubMessage.exit115, %bb.cq
  %i.sz = phi ptr [ null, %bb.cq ], [ %i.sn, %_upb_Decoder_NewSubMessage.exit115 ], [ null, %bb.cp ] ; 2 uses
  %.0220 = phi ptr [ null, %bb.cq ], [ %.0.i3.i.i.i112, %_upb_Decoder_NewSubMessage.exit115 ], [ null, %bb.cp ] ; 2 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.177.a = load i32, ptr %.sroa.0, align 8, !tbaa !22
  %i.ta = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.177.a to i64
  %i.tb = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.tc = ptrtoint ptr %.1.i257 to i64
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
  br i1 %i.tk, label %bb.ct, label %upb_EpsCopyInputStream_PushLimit.exit107, !prof !38

bb.ct:                                            ; preds = %.thread265
  %i.tl = call ptr @upb_EpsCopyInputStream_ReturnError_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %0) #12 ; 0 uses
  br label %upb_EpsCopyInputStream_PushLimit.exit107

upb_EpsCopyInputStream_PushLimit.exit107:         ; preds = %.thread265, %bb.ct
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

bb.cu:                                            ; preds = %upb_EpsCopyInputStream_PushLimit.exit107
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.tu, i32 noundef 4) #13, !inline_history !60
  unreachable

bb.cv:                                            ; preds = %upb_EpsCopyInputStream_PushLimit.exit107
  %i.tv = call ptr @_upb_Decoder_DecodeMessage(ptr noundef nonnull %0, ptr noundef %.1.i257, ptr noundef nonnull %4, ptr noundef %i.tq), !inline_history !60 ; 2 uses
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
  %spec.select.i106 = call i64 @llvm.smin.i64(i64 %i.ub, i64 0)
  %i.ud = getelementptr inbounds i8, ptr %i.uc, i64 %spec.select.i106
  store ptr %i.ud, ptr %i.d, align 8, !tbaa !19
  %.not37.i = icmp eq ptr %.0220, null
  br i1 %.not37.i, label %bb.cz, label %bb.cx

bb.cx:                                            ; preds = %_upb_Decoder_RecurseSubMessage.exit.i50
  %i.ue = getelementptr inbounds nuw i8, ptr %i.sz, i64 15
  %i.uf = load i8, ptr %i.ue, align 1, !tbaa !22
  %.not38.i = icmp eq i8 %i.uf, 0
  br i1 %.not38.i, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ug = call ptr @_upb_Decoder_CheckRequired(ptr noundef nonnull %0, ptr noundef %i.tv, ptr noundef nonnull %.0220, ptr noundef nonnull %i.sz) #12, !inline_history !60 ; 0 uses
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx, %_upb_Decoder_RecurseSubMessage.exit.i50
  %.val40.i = load i64, ptr %4, align 8, !tbaa !22
  %i.uh = and i64 %.val40.i, -2                   ; 2 uses
  %.not.i.i103 = icmp eq i64 %i.uh, 0
  br i1 %.not.i.i103, label %.loopexit, label %.critedge.preheader.i.i

.critedge.preheader.i.i:                          ; preds = %bb.cz
end_hunk_1
begin_hunk_2_@_upb_Decoder_DecodeMessage:bb.a
  %i.zy = sub i64 %i.zw, %i.zx
  %i.zz = icmp ult i64 %i.zy, %i.zv
  br i1 %i.zz, label %upb_Arena_Malloc.exit.i.i127, label %upb_Arena_Malloc.exit.thread.i.i125, !prof !38

upb_Arena_Malloc.exit.thread.i.i125:              ; preds = %bb.eg
  %i.aaa = getelementptr inbounds nuw i8, ptr %.val.i.i.i123, i64 %i.zv
  store ptr %i.aaa, ptr %i.p, align 8, !tbaa !46
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i123) ]
  br label %bb.eh

upb_Arena_Malloc.exit.i.i127:                     ; preds = %bb.eg
  %i.aab = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.p, i64 noundef %i.zv) #12 ; 2 uses
  %.not15.not.i.i128 = icmp eq ptr %i.aab, null
  br i1 %.not15.not.i.i128, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %upb_Arena_Malloc.exit.i.i127, %upb_Arena_Malloc.exit.thread.i.i125
  %.0.i1622.i.i126 = phi ptr [ %.val.i.i.i123, %upb_Arena_Malloc.exit.thread.i.i125 ], [ %i.aab, %upb_Arena_Malloc.exit.i.i127 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i1622.i.i126, ptr align 1 %.sroa.0.1.i.i119, i64 range(i64 -2147483648, 2147483648) %i.za, i1 false)
  br label %_upb_Decoder_ReadString2.exit129

bb.ei:                                            ; preds = %upb_Arena_Malloc.exit.i.i127, %upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit.i.i118
  %i.aac = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.aac, i32 noundef 1) #13
  unreachable

_upb_Decoder_ReadString2.exit129:                 ; preds = %bb.ef, %bb.eh
  %.sroa.0.0.i.i121 = phi ptr [ %.0.i1622.i.i126, %bb.eh ], [ %.sroa.0.1.i.i119, %bb.ef ]
  store ptr %.sroa.0.0.i.i121, ptr %i.gz, align 8, !tbaa !53
  %.sroa.7.0..sroa_idx.i.i122 = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store i64 %i.za, ptr %.sroa.7.0..sroa_idx.i.i122, align 8, !tbaa !32
  br label %_upb_Decoder_DecodeField.exit

bb.ej:                                            ; preds = %bb.dm
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.188 = load i64, ptr %.sroa.0, align 8
  store i64 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.188, ptr %i.gz, align 1
  br label %_upb_Decoder_DecodeField.exit

bb.ek:                                            ; preds = %bb.dm
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.178 = load i32, ptr %.sroa.0, align 8
  store i32 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.178, ptr %i.gz, align 1
  br label %_upb_Decoder_DecodeField.exit

bb.el:                                            ; preds = %bb.dm
  store i8 %.sroa.0.0..sroa.0.0..sroa.0.0.182, ptr %i.gz, align 1
  br label %_upb_Decoder_DecodeField.exit

bb.em:                                            ; preds = %bb.dm
  unreachable

.unreachabledefault.i:                            ; preds = %bb.an
  unreachable

_upb_Decoder_DecodeWireValue.exit.thread:         ; preds = %_upb_Decoder_DecodeWireValue.exit
  %i.aad = icmp eq i8 %.4.in, -1
  br i1 %i.aad, label %_upb_Decoder_DecodeWireValue.exit.thread.thread, label %_upb_Decoder_DecodeWireValue.exit.thread.thread291.preheader

_upb_Decoder_DecodeWireValue.exit.thread.thread291.preheader: ; preds = %bb.ag, %_upb_Decoder_DecodeWireValue.exit.thread
  %.0212.ph = phi ptr [ %.0.i16, %bb.ag ], [ %.1.i, %_upb_Decoder_DecodeWireValue.exit.thread ]
  br label %_upb_Decoder_DecodeWireValue.exit.thread.thread291

_upb_Decoder_DecodeWireValue.exit.thread.thread:  ; preds = %bb.t, %bb.ag, %bb.ac, %bb.s, %upb_MiniTableEnum_CheckValue.exit, %bb.q, %bb.ai, %bb.x, %bb.y, %_upb_Decoder_DecodeWireValue.exit.thread
  %.1.i249289 = phi ptr [ %.1.i, %_upb_Decoder_DecodeWireValue.exit.thread ], [ %.0.i21, %bb.ac ], [ %.0.i19, %bb.s ], [ %.0.i16, %bb.ag ], [ %i.eq, %bb.y ], [ %.0.i19, %upb_MiniTableEnum_CheckValue.exit ], [ %.0.i19, %bb.q ], [ %.0.i16, %bb.ai ], [ %i.ei, %bb.x ], [ %.0.i19, %bb.t ] ; 8 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.183 = load i64, ptr %.sroa.0, align 8
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
  %i.aag = getelementptr inbounds i8, ptr %.1.i249289, i64 -1
  br label %bb.eq

bb.eq:                                            ; preds = %bb.eq, %bb.ep
  %.015.i.i = phi ptr [ %i.aag, %bb.ep ], [ %i.aah, %bb.eq ] ; 2 uses
  %i.aah = getelementptr inbounds i8, ptr %.015.i.i, i64 -1 ; 2 uses
  %i.aai = load i8, ptr %i.aah, align 1, !tbaa !22
  %.not.i.i63 = icmp sgt i8 %i.aai, -1
  br i1 %.not.i.i63, label %.loopexit.i.i.preheader, label %bb.eq, !llvm.loop !71

bb.er:                                            ; preds = %bb.eo
  %i.aaj = getelementptr inbounds i8, ptr %.1.i249289, i64 -4
  br label %.loopexit.i.i.preheader

bb.es:                                            ; preds = %bb.eo
  %i.aak = getelementptr inbounds i8, ptr %.1.i249289, i64 -8
  br label %.loopexit.i.i.preheader

.loopexit.i.i.preheader:                          ; preds = %bb.eq, %bb.es, %bb.er, %bb.eo
  %.2.i.i.ph = phi ptr [ %.1.i249289, %bb.eo ], [ %i.aaj, %bb.er ], [ %i.aak, %bb.es ], [ %.015.i.i, %bb.eq ]
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
  %.not16.i.i = icmp eq i32 %i.aaq, %.0213
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
  %i.aaw = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.183, 4294967295 ; 2 uses
  %i.aax = load ptr, ptr %0, align 8, !tbaa !18
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aax, i64 16
  %i.aaz = ptrtoint ptr %i.aay to i64
  %i.aba = ptrtoint ptr %.1.i249289 to i64
  %i.abb = sub i64 %i.aaz, %i.aba
  %i.abc = icmp sgt i64 %i.aaw, %i.abb
  br i1 %i.abc, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.abd = call ptr @upb_EpsCopyInputStream_ReturnError_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %0) #12
  br label %upb_EpsCopyInputStream_ReadStringEphemeral.exit.i

bb.ev:                                            ; preds = %bb.et
  %i.abe = getelementptr inbounds nuw i8, ptr %.1.i249289, i64 %i.aaw
  br label %upb_EpsCopyInputStream_ReadStringEphemeral.exit.i

upb_EpsCopyInputStream_ReadStringEphemeral.exit.i: ; preds = %bb.ev, %bb.eu
  %.0.i32.i = phi ptr [ %i.abd, %bb.eu ], [ %i.abe, %bb.ev ] ; 2 uses
  %.not.i62 = icmp eq ptr %.0.i32.i, null
  br i1 %.not.i62, label %bb.ew, label %bb.ey

bb.ew:                                            ; preds = %upb_EpsCopyInputStream_ReadStringEphemeral.exit.i
  %i.abf = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.abf, i32 noundef 2) #13
  unreachable

bb.ex:                                            ; preds = %_upb_Decoder_FindFieldStart.exit.i
  %i.abg = and i32 %.0213, -8
  %i.abh = load i32, ptr %i.n, align 8, !tbaa !56
  %i.abi = call ptr @_upb_WireReader_SkipGroup_dont_copy_me__upb_internal_use_only(ptr noundef %.1.i249289, i32 noundef %i.abg, i32 noundef %i.abh, ptr noundef nonnull %0) #12
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %upb_EpsCopyInputStream_ReadStringEphemeral.exit.i, %_upb_Decoder_FindFieldStart.exit.i
  %.026.i = phi ptr [ %.1.i249289, %_upb_Decoder_FindFieldStart.exit.i ], [ %i.abi, %bb.ex ], [ %.0.i32.i, %upb_EpsCopyInputStream_ReadStringEphemeral.exit.i ] ; 3 uses
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
  %cond.fr.i61 = freeze i1 %.not31.i
  br i1 %cond.fr.i61, label %_upb_Message_AddUnknown_dont_copy_me__upb_internal_use_only.exit.i, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %.val.i35.i = load i64, ptr %2, align 8, !tbaa !22
  %i.aca = and i64 %.val.i35.i, -2                ; 2 uses
  %i.acb = inttoptr i64 %i.aca to ptr             ; 2 uses
  %.not.i36.i = icmp eq i64 %i.aca, 0
  br i1 %.not.i36.i, label %_upb_Message_AddUnknown_dont_copy_me__upb_internal_use_only.exit.i, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.acc = load i32, ptr %i.acb, align 8, !tbaa !3 ; 2 uses
  %.not26.i.i = icmp eq i32 %i.acc, 0
  br i1 %.not26.i.i, label %_upb_Message_AddUnknown_dont_copy_me__upb_internal_use_only.exit.i, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acb, i64 8
  %i.ace = add i32 %i.acc, -1
  %i.acf = zext i32 %i.ace to i64
  %i.acg = getelementptr inbounds nuw [8 x i8], ptr %i.acd, i64 %i.acf
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.acg, align 8, !tbaa !32 ; 3 uses
  %i.ach = icmp ne i64 %.sroa.0.0.copyload.i.i, 0
  %i.aci = and i64 %.sroa.0.0.copyload.i.i, 1
  %i.acj = icmp eq i64 %i.aci, 0
  %i.ack = and i1 %i.ach, %i.acj
  br i1 %i.ack, label %bb.ff, label %_upb_Message_AddUnknown_dont_copy_me__upb_internal_use_only.exit.i

bb.ff:                                            ; preds = %bb.fe
  %i.acl = and i64 %.sroa.0.0.copyload.i.i, -4
  %i.acm = inttoptr i64 %i.acl to ptr             ; 2 uses
  %i.acn = load ptr, ptr %i.acm, align 8, !tbaa !75
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acm, i64 8 ; 2 uses
  %i.acp = load i64, ptr %i.aco, align 8, !tbaa !77 ; 2 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acn, i64 %i.acp
  %.not27.i.i = icmp eq ptr %i.acq, %.sroa.0.0.i
  br i1 %.not27.i.i, label %_upb_Message_AddUnknown_dont_copy_me__upb_internal_use_only.exit.thread.i, label %_upb_Message_AddUnknown_dont_copy_me__upb_internal_use_only.exit.i

_upb_Message_AddUnknown_dont_copy_me__upb_internal_use_only.exit.thread.i: ; preds = %bb.ff
  %i.acr = add i64 %i.acp, %.sroa.5.0.i
  store i64 %i.acr, ptr %i.aco, align 8, !tbaa !77
  br label %_upb_Decoder_DecodeField.exit

_upb_Message_AddUnknown_dont_copy_me__upb_internal_use_only.exit.i: ; preds = %bb.ff, %bb.fe, %bb.fd, %bb.fc, %bb.fb, %upb_EpsCopyInputStream_EndCapture.exit.i
  %i.acs = call zeroext i1 @_upb_Message_AddUnknownSlowPath_dont_copy_me__upb_internal_use_only(ptr noundef %2, ptr noundef %.sroa.0.0.i, i64 noundef %.sroa.5.0.i, ptr noundef nonnull %i.p, i1 noundef zeroext %.not30.i60) #12
  br i1 %i.acs, label %_upb_Decoder_DecodeField.exit, label %bb.fg

bb.fg:                                            ; preds = %_upb_Message_AddUnknown_dont_copy_me__upb_internal_use_only.exit.i
  %i.act = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.act, i32 noundef 1) #13
  unreachable

_upb_Decoder_DecodeWireValue.exit.thread.thread291: ; preds = %_upb_Decoder_DecodeWireValue.exit.thread.thread291.backedge, %_upb_Decoder_DecodeWireValue.exit.thread.thread291.preheader
  %.sroa.5.4 = phi i64 [ %.sroa.5.0, %_upb_Decoder_DecodeWireValue.exit.thread.thread291.preheader ], [ %.sroa.5.4.be, %_upb_Decoder_DecodeWireValue.exit.thread.thread291.backedge ] ; 13 uses
  %.sroa.0200.4 = phi ptr [ %.sroa.0200.0, %_upb_Decoder_DecodeWireValue.exit.thread.thread291.preheader ], [ %.sroa.0200.4.be, %_upb_Decoder_DecodeWireValue.exit.thread.thread291.backedge ] ; 13 uses
  %.0212 = phi ptr [ %.0212.ph, %_upb_Decoder_DecodeWireValue.exit.thread.thread291.preheader ], [ %.0212.be, %_upb_Decoder_DecodeWireValue.exit.thread.thread291.backedge ] ; 4 uses
  %.028.i = phi i32 [ 0, %_upb_Decoder_DecodeWireValue.exit.thread.thread291.preheader ], [ %.028.i.be, %_upb_Decoder_DecodeWireValue.exit.thread.thread291.backedge ] ; 13 uses
  %.sroa.0.0.i64 = phi ptr [ null, %_upb_Decoder_DecodeWireValue.exit.thread.thread291.preheader ], [ %.sroa.0.0.i64.be, %_upb_Decoder_DecodeWireValue.exit.thread.thread291.backedge ] ; 14 uses
  %.sroa.5.0.i65 = phi i64 [ 0, %_upb_Decoder_DecodeWireValue.exit.thread.thread291.preheader ], [ %.sroa.5.0.i65.be, %_upb_Decoder_DecodeWireValue.exit.thread.thread291.backedge ] ; 14 uses
  %.027.i = phi i32 [ 0, %_upb_Decoder_DecodeWireValue.exit.thread.thread291.preheader ], [ %.027.i.be, %_upb_Decoder_DecodeWireValue.exit.thread.thread291.backedge ] ; 16 uses
  %i.acu = load ptr, ptr %0, align 8, !tbaa !18
  %i.acv = ptrtoint ptr %.0212 to i64
  %i.acw = ptrtoint ptr %i.acu to i64
  %i.acx = sub i64 %i.acv, %i.acw                 ; 2 uses
  %i.acy = trunc i64 %i.acx to i32
  %i.acz = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.ada = icmp ult ptr %.0212, %i.acz
  br i1 %i.ada, label %upb_EpsCopyInputStream_IsDone.exit165.thread271, label %bb.fh, !prof !20

bb.fh:                                            ; preds = %_upb_Decoder_DecodeWireValue.exit.thread.thread291
  %sext.i.i160 = shl i64 %i.acx, 32
  %i.adb = ashr exact i64 %sext.i.i160, 32
  %i.adc = load i64, ptr %i.e, align 8, !tbaa !21
  %i.add = icmp eq i64 %i.adb, %i.adc
  %cond.fr.i161 = freeze i1 %i.add
  br i1 %cond.fr.i161, label %upb_EpsCopyInputStream_IsDone.exit165.thread, label %upb_EpsCopyInputStream_IsDone.exit165, !prof !20

upb_EpsCopyInputStream_IsDone.exit165:            ; preds = %bb.fh
  %i.ade = call ptr @upb_EpsCopyInputStream_IsDoneFallback_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %0, ptr noundef %.0212, i32 noundef %i.acy) #12 ; 2 uses
  %.not.i163 = icmp eq ptr %i.ade, null
  br i1 %.not.i163, label %upb_EpsCopyInputStream_IsDone.exit165.thread, label %upb_EpsCopyInputStream_IsDone.exit165.thread271

upb_EpsCopyInputStream_IsDone.exit165.thread271:  ; preds = %_upb_Decoder_DecodeWireValue.exit.thread.thread291, %upb_EpsCopyInputStream_IsDone.exit165
  %.2274 = phi ptr [ %i.ade, %upb_EpsCopyInputStream_IsDone.exit165 ], [ %.0212, %_upb_Decoder_DecodeWireValue.exit.thread.thread291 ] ; 3 uses
  %i.adf = load i8, ptr %.2274, align 1, !tbaa !22 ; 3 uses
  %i.adg = icmp sgt i8 %i.adf, -1
  br i1 %i.adg, label %bb.fi, label %upb_EpsCopyInputStream_HasErrorHandler.exit.i157, !prof !20

bb.fi:                                            ; preds = %upb_EpsCopyInputStream_IsDone.exit165.thread271
  %i.adh = zext nneg i8 %i.adf to i32
  %i.adi = getelementptr inbounds nuw i8, ptr %.2274, i64 1
  br label %upb_WireReader_ReadTag.exit.i

upb_EpsCopyInputStream_HasErrorHandler.exit.i157: ; preds = %upb_EpsCopyInputStream_IsDone.exit165.thread271
  %i.adj = zext i8 %i.adf to i64
  %i.adk = call { ptr, i64 } @_upb_WireReader_ReadLongTag_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %.2274, i64 noundef %i.adj, ptr noundef nonnull %0) #12, !inline_history !78 ; 2 uses
  %i.adl = extractvalue { ptr, i64 } %i.adk, 0
  %i.adm = extractvalue { ptr, i64 } %i.adk, 1
  %i.adn = trunc i64 %i.adm to i32
  br label %upb_WireReader_ReadTag.exit.i

upb_WireReader_ReadTag.exit.i:                    ; preds = %upb_EpsCopyInputStream_HasErrorHandler.exit.i157, %bb.fi
  %.0221 = phi i32 [ %i.adh, %bb.fi ], [ %i.adn, %upb_EpsCopyInputStream_HasErrorHandler.exit.i157 ] ; 3 uses
  %.0.i.i66 = phi ptr [ %i.adi, %bb.fi ], [ %i.adl, %upb_EpsCopyInputStream_HasErrorHandler.exit.i157 ] ; 16 uses
  switch i32 %.0221, label %bb.fv [
    i32 12, label %_upb_Decoder_DecodeField.exit
    i32 16, label %bb.fj
    i32 26, label %bb.fn
  ]

bb.fj:                                            ; preds = %upb_WireReader_ReadTag.exit.i
  %i.ado = load i8, ptr %.0.i.i66, align 1, !tbaa !22 ; 2 uses
  %i.adp = icmp sgt i8 %i.ado, -1
  %i.adq = zext i8 %i.ado to i64                  ; 2 uses
  br i1 %i.adp, label %bb.fk, label %upb_EpsCopyInputStream_HasErrorHandler.exit.i153, !prof !20

bb.fk:                                            ; preds = %bb.fj
  %i.adr = getelementptr inbounds nuw i8, ptr %.0.i.i66, i64 1
  br label %upb_WireReader_ReadVarint.exit.i

upb_EpsCopyInputStream_HasErrorHandler.exit.i153: ; preds = %bb.fj
  %i.ads = call { ptr, i64 } @_upb_WireReader_ReadLongVarint_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %.0.i.i66, i64 noundef %i.adq, ptr noundef nonnull %0) #12, !inline_history !78 ; 2 uses
  %i.adt = extractvalue { ptr, i64 } %i.ads, 0
  %i.adu = extractvalue { ptr, i64 } %i.ads, 1
  br label %upb_WireReader_ReadVarint.exit.i

upb_WireReader_ReadVarint.exit.i:                 ; preds = %upb_EpsCopyInputStream_HasErrorHandler.exit.i153, %bb.fk
  %.0222 = phi i64 [ %i.adq, %bb.fk ], [ %i.adu, %upb_EpsCopyInputStream_HasErrorHandler.exit.i153 ]
  %.0.i38.i = phi ptr [ %i.adr, %bb.fk ], [ %i.adt, %upb_EpsCopyInputStream_HasErrorHandler.exit.i153 ] ; 3 uses
  %i.adv = and i32 %.027.i, 1
  %.not36.i69 = icmp eq i32 %i.adv, 0
  br i1 %.not36.i69, label %bb.fl, label %_upb_Decoder_DecodeWireValue.exit.thread.thread291.backedge

bb.fl:                                            ; preds = %upb_WireReader_ReadVarint.exit.i
  %i.adw = or disjoint i32 %.027.i, 1             ; 2 uses
  %i.adx = trunc i64 %.0222 to i32                ; 3 uses
  %i.ady = and i32 %.027.i, 2
  %.not37.i71 = icmp eq i32 %i.ady, 0
  br i1 %.not37.i71, label %_upb_Decoder_DecodeWireValue.exit.thread.thread291.backedge, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.adz = trunc i64 %.sroa.5.0.i65 to i32
  call fastcc void @upb_Decoder_AddMessageSetItem(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, i32 noundef %i.adx, ptr noundef %.sroa.0.0.i64, i32 noundef %i.adz), !inline_history !78
  br label %_upb_Decoder_DecodeWireValue.exit.thread.thread291.backedge

bb.fn:                                            ; preds = %upb_WireReader_ReadTag.exit.i
  %i.aea = load i8, ptr %.0.i.i66, align 1, !tbaa !22 ; 2 uses
  %i.aeb = icmp sgt i8 %i.aea, -1
  %i.aec = zext i8 %i.aea to i64                  ; 2 uses
  br i1 %i.aeb, label %bb.fo, label %upb_EpsCopyInputStream_HasErrorHandler.exit.i149, !prof !20

bb.fo:                                            ; preds = %bb.fn
  %i.aed = getelementptr inbounds nuw i8, ptr %.0.i.i66, i64 1
  br label %upb_WireReader_ReadSize.exit.i

upb_EpsCopyInputStream_HasErrorHandler.exit.i149: ; preds = %bb.fn
  %i.aee = call { ptr, i64 } @_upb_WireReader_ReadLongSize_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %.0.i.i66, i64 noundef %i.aec, ptr noundef nonnull %0) #12, !inline_history !78 ; 2 uses
  %i.aef = extractvalue { ptr, i64 } %i.aee, 0
  %i.aeg = extractvalue { ptr, i64 } %i.aee, 1
  br label %upb_WireReader_ReadSize.exit.i

upb_WireReader_ReadSize.exit.i:                   ; preds = %upb_EpsCopyInputStream_HasErrorHandler.exit.i149, %bb.fo
  %.0211 = phi i64 [ %i.aec, %bb.fo ], [ %i.aeg, %upb_EpsCopyInputStream_HasErrorHandler.exit.i149 ]
  %.0.i39.i = phi ptr [ %i.aed, %bb.fo ], [ %i.aef, %upb_EpsCopyInputStream_HasErrorHandler.exit.i149 ] ; 2 uses
  %i.aeh = and i64 %.0211, 4294967295             ; 3 uses
  %i.aei = load ptr, ptr %0, align 8, !tbaa !18
  %i.aej = load i64, ptr %i.l, align 8, !tbaa !51 ; 2 uses
  %i.aek = icmp eq i64 %i.aej, 0
  %i.ael = select i1 %i.aek, i64 16, i64 0
  %i.aem = getelementptr inbounds nuw i8, ptr %i.aei, i64 %i.ael
  %i.aen = ptrtoint ptr %i.aem to i64
  %i.aeo = ptrtoint ptr %.0.i39.i to i64          ; 2 uses
  %i.aep = sub i64 %i.aen, %i.aeo
  %i.aeq = icmp sgt i64 %i.aeh, %i.aep
  br i1 %i.aeq, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %upb_WireReader_ReadSize.exit.i
  %i.aer = call ptr @upb_EpsCopyInputStream_ReturnError_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %0) #12
  br label %upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit

bb.fq:                                            ; preds = %upb_WireReader_ReadSize.exit.i
  %.val14.i = load ptr, ptr %i.m, align 8, !tbaa !52 ; 2 uses
  %i.aes = ptrtoint ptr %.val14.i to i64
  %i.aet = sub i64 %i.aej, %i.aes
  %i.aeu = getelementptr i8, ptr %.val14.i, i64 %i.aet
  %i.aev = getelementptr i8, ptr %i.aeu, i64 %i.aeo
  %i.aew = getelementptr inbounds nuw i8, ptr %.0.i39.i, i64 %i.aeh
  br label %upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit

upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit: ; preds = %bb.fp, %bb.fq
  %.sroa.5.6 = phi i64 [ %.sroa.5.4, %bb.fp ], [ %i.aeh, %bb.fq ] ; 5 uses
  %.sroa.0200.6 = phi ptr [ %.sroa.0200.4, %bb.fp ], [ %i.aev, %bb.fq ] ; 5 uses
  %.0.i147 = phi ptr [ %i.aer, %bb.fp ], [ %i.aew, %bb.fq ] ; 4 uses
  %.not.i67 = icmp eq ptr %.0.i147, null
  br i1 %.not.i67, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit
  %i.aex = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.aex, i32 noundef 2) #13, !inline_history !78
  unreachable

bb.fs:                                            ; preds = %upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit
  %i.aey = and i32 %.027.i, 2
  %.not34.i = icmp eq i32 %i.aey, 0
  br i1 %.not34.i, label %bb.ft, label %_upb_Decoder_DecodeWireValue.exit.thread.thread291.backedge

bb.ft:                                            ; preds = %bb.fs
  %i.aez = or disjoint i32 %.027.i, 2             ; 2 uses
  %i.afa = and i32 %.027.i, 1
  %.not35.i = icmp eq i32 %i.afa, 0
  br i1 %.not35.i, label %_upb_Decoder_DecodeWireValue.exit.thread.thread291.backedge, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.afb = trunc i64 %.sroa.5.6 to i32
  call fastcc void @upb_Decoder_AddMessageSetItem(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, i32 noundef %.028.i, ptr noundef %.sroa.0200.6, i32 noundef %i.afb), !inline_history !78
  br label %_upb_Decoder_DecodeWireValue.exit.thread.thread291.backedge

bb.fv:                                            ; preds = %upb_WireReader_ReadTag.exit.i
  %i.afc = trunc i32 %.0221 to i8
  %i.afd = and i8 %i.afc, 7
  switch i8 %i.afd, label %bb.gf [
    i8 0, label %bb.fw
    i8 5, label %bb.fy
    i8 1, label %bb.fz
    i8 2, label %bb.ga
    i8 3, label %bb.ge
  ]

bb.fw:                                            ; preds = %bb.fv
  %i.afe = load i8, ptr %.0.i.i66, align 1, !tbaa !22 ; 2 uses
  %i.aff = icmp sgt i8 %i.afe, -1
  br i1 %i.aff, label %bb.fx, label %upb_EpsCopyInputStream_HasErrorHandler.exit.i.i.i, !prof !20

bb.fx:                                            ; preds = %bb.fw
  %i.afg = getelementptr inbounds nuw i8, ptr %.0.i.i66, i64 1
  br label %_upb_Decoder_DecodeWireValue.exit.thread.thread291.backedge

upb_EpsCopyInputStream_HasErrorHandler.exit.i.i.i: ; preds = %bb.fw
  %i.afh = zext i8 %i.afe to i64
  %i.afi = call { ptr, i64 } @_upb_WireReader_ReadLongVarint_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %.0.i.i66, i64 noundef %i.afh, ptr noundef nonnull %0) #12
  %i.afj = extractvalue { ptr, i64 } %i.afi, 0
  br label %_upb_Decoder_DecodeWireValue.exit.thread.thread291.backedge

_upb_Decoder_DecodeWireValue.exit.thread.thread291.backedge: ; preds = %upb_EpsCopyInputStream_HasErrorHandler.exit.i.i.i, %bb.gf, %bb.ge, %bb.gd, %bb.gc, %bb.fz, %bb.fy, %bb.fx, %bb.fs, %bb.fu, %bb.ft, %upb_WireReader_ReadVarint.exit.i, %bb.fl, %bb.fm
  %.sroa.5.4.be = phi i64 [ %.sroa.5.4, %bb.gc ], [ %.sroa.5.4, %bb.gd ], [ %.sroa.5.6, %bb.fs ], [ %.sroa.5.4, %bb.gf ], [ %.sroa.5.4, %upb_WireReader_ReadVarint.exit.i ], [ %.sroa.5.4, %bb.fm ], [ %.sroa.5.4, %bb.fl ], [ %.sroa.5.6, %bb.ft ], [ %.sroa.5.6, %bb.fu ], [ %.sroa.5.4, %bb.fx ], [ %.sroa.5.4, %upb_EpsCopyInputStream_HasErrorHandler.exit.i.i.i ], [ %.sroa.5.4, %bb.ge ], [ %.sroa.5.4, %bb.fy ], [ %.sroa.5.4, %bb.fz ]
  %.sroa.0200.4.be = phi ptr [ %.sroa.0200.4, %bb.gc ], [ %.sroa.0200.4, %bb.gd ], [ %.sroa.0200.6, %bb.fs ], [ %.sroa.0200.4, %bb.gf ], [ %.sroa.0200.4, %upb_WireReader_ReadVarint.exit.i ], [ %.sroa.0200.4, %bb.fm ], [ %.sroa.0200.4, %bb.fl ], [ %.sroa.0200.6, %bb.ft ], [ %.sroa.0200.6, %bb.fu ], [ %.sroa.0200.4, %bb.fx ], [ %.sroa.0200.4, %upb_EpsCopyInputStream_HasErrorHandler.exit.i.i.i ], [ %.sroa.0200.4, %bb.ge ], [ %.sroa.0200.4, %bb.fy ], [ %.sroa.0200.4, %bb.fz ]
  %.0212.be = phi ptr [ %i.afx, %bb.gc ], [ %i.afy, %bb.gd ], [ %.0.i147, %bb.fs ], [ %i.agb, %bb.gf ], [ %.0.i38.i, %upb_WireReader_ReadVarint.exit.i ], [ %.0.i38.i, %bb.fm ], [ %.0.i38.i, %bb.fl ], [ %.0.i147, %bb.ft ], [ %.0.i147, %bb.fu ], [ %i.afg, %bb.fx ], [ %i.afj, %upb_EpsCopyInputStream_HasErrorHandler.exit.i.i.i ], [ %i.aga, %bb.ge ], [ %i.afk, %bb.fy ], [ %i.afl, %bb.fz ]
  %.028.i.be = phi i32 [ %.028.i, %bb.gc ], [ %.028.i, %bb.gd ], [ %.028.i, %bb.fs ], [ %.028.i, %bb.gf ], [ %.028.i, %upb_WireReader_ReadVarint.exit.i ], [ %i.adx, %bb.fm ], [ %i.adx, %bb.fl ], [ %.028.i, %bb.ft ], [ %.028.i, %bb.fu ], [ %.028.i, %bb.fx ], [ %.028.i, %upb_EpsCopyInputStream_HasErrorHandler.exit.i.i.i ], [ %.028.i, %bb.ge ], [ %.028.i, %bb.fy ], [ %.028.i, %bb.fz ]
  %.sroa.0.0.i64.be = phi ptr [ %.sroa.0.0.i64, %bb.gc ], [ %.sroa.0.0.i64, %bb.gd ], [ %.sroa.0.0.i64, %bb.fs ], [ %.sroa.0.0.i64, %bb.gf ], [ %.sroa.0.0.i64, %upb_WireReader_ReadVarint.exit.i ], [ %.sroa.0.0.i64, %bb.fm ], [ %.sroa.0.0.i64, %bb.fl ], [ %.sroa.0200.6, %bb.ft ], [ %.sroa.0.0.i64, %bb.fu ], [ %.sroa.0.0.i64, %bb.fx ], [ %.sroa.0.0.i64, %upb_EpsCopyInputStream_HasErrorHandler.exit.i.i.i ], [ %.sroa.0.0.i64, %bb.ge ], [ %.sroa.0.0.i64, %bb.fy ], [ %.sroa.0.0.i64, %bb.fz ]
  %.sroa.5.0.i65.be = phi i64 [ %.sroa.5.0.i65, %bb.gc ], [ %.sroa.5.0.i65, %bb.gd ], [ %.sroa.5.0.i65, %bb.fs ], [ %.sroa.5.0.i65, %bb.gf ], [ %.sroa.5.0.i65, %upb_WireReader_ReadVarint.exit.i ], [ %.sroa.5.0.i65, %bb.fm ], [ %.sroa.5.0.i65, %bb.fl ], [ %.sroa.5.6, %bb.ft ], [ %.sroa.5.0.i65, %bb.fu ], [ %.sroa.5.0.i65, %bb.fx ], [ %.sroa.5.0.i65, %upb_EpsCopyInputStream_HasErrorHandler.exit.i.i.i ], [ %.sroa.5.0.i65, %bb.ge ], [ %.sroa.5.0.i65, %bb.fy ], [ %.sroa.5.0.i65, %bb.fz ]
  %.027.i.be = phi i32 [ %.027.i, %bb.gc ], [ %.027.i, %bb.gd ], [ %.027.i, %bb.fs ], [ %.027.i, %bb.gf ], [ %.027.i, %upb_WireReader_ReadVarint.exit.i ], [ %i.adw, %bb.fm ], [ %i.adw, %bb.fl ], [ %i.aez, %bb.ft ], [ %i.aez, %bb.fu ], [ %.027.i, %bb.fx ], [ %.027.i, %upb_EpsCopyInputStream_HasErrorHandler.exit.i.i.i ], [ %.027.i, %bb.ge ], [ %.027.i, %bb.fy ], [ %.027.i, %bb.fz ]
  br label %_upb_Decoder_DecodeWireValue.exit.thread.thread291, !llvm.loop !79

bb.fy:                                            ; preds = %bb.fv
  %i.afk = getelementptr inbounds nuw i8, ptr %.0.i.i66, i64 4
  br label %_upb_Decoder_DecodeWireValue.exit.thread.thread291.backedge

bb.fz:                                            ; preds = %bb.fv
  %i.afl = getelementptr inbounds nuw i8, ptr %.0.i.i66, i64 8
  br label %_upb_Decoder_DecodeWireValue.exit.thread.thread291.backedge

bb.ga:                                            ; preds = %bb.fv
  %i.afm = load i8, ptr %.0.i.i66, align 1, !tbaa !22 ; 2 uses
  %i.afn = icmp sgt i8 %i.afm, -1
  %i.afo = zext i8 %i.afm to i64                  ; 2 uses
  br i1 %i.afn, label %bb.gb, label %upb_EpsCopyInputStream_HasErrorHandler.exit.i.i, !prof !20

bb.gb:                                            ; preds = %bb.ga
  %i.afp = getelementptr inbounds nuw i8, ptr %.0.i.i66, i64 1
  br label %upb_WireReader_ReadSize.exit.thread.i

upb_EpsCopyInputStream_HasErrorHandler.exit.i.i:  ; preds = %bb.ga
  %i.afq = call { ptr, i64 } @_upb_WireReader_ReadLongSize_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %.0.i.i66, i64 noundef %i.afo, ptr noundef nonnull %0) #12 ; 2 uses
  %i.afr = extractvalue { ptr, i64 } %i.afq, 1
  %i.afs = extractvalue { ptr, i64 } %i.afq, 0    ; 2 uses
  %.not.i144 = icmp eq ptr %i.afs, null
end_hunk_2
begin_hunk_3_@upb_DecodeWithTrace:bb.a

upb_EpsCopyInputStream_InitWithErrorHandler.exit.i: ; preds = %bb.e, %bb.d
  %.0.i = phi ptr [ %i.f, %bb.d ], [ %0, %bb.e ]
  %.sink28.i.i.sroa.phi = phi ptr [ %.sink28.i.i.sroa.gep, %bb.d ], [ %.sink28.i.i.sroa.gep10, %bb.e ]
  %i.m = phi ptr [ %i.j, %bb.d ], [ %i.l, %bb.e ]
  store i64 0, ptr %.sink28.i.i.sroa.phi, align 8, !tbaa !32
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.m, ptr %i.n, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 56
  store i8 0, ptr %i.o, align 8, !tbaa !84
  %i.p = shl i32 %5, 1
  %i.q = and i32 %i.p, 16
  %spec.select.i = or i32 %i.q, %5
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 96
  store ptr %4, ptr %i.r, align 8, !tbaa !7
  %i.s = lshr i32 %5, 16                          ; 2 uses
  %.not.i20.i = icmp eq i32 %i.s, 0
  %i.t = select i1 %.not.i20.i, i32 100, i32 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 112
  store i32 %i.t, ptr %i.u, align 8, !tbaa !56
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 116
  store i32 -1, ptr %i.v, align 4, !tbaa !23
  %i.w = trunc i32 %spec.select.i to i16
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 120
  store i16 %i.w, ptr %i.x, align 8, !tbaa !37
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 122
  store i8 0, ptr %i.y, align 2, !tbaa !85
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 123
  store i8 0, ptr %i.z, align 1, !tbaa !80
  %.not19.i = icmp eq ptr %7, null
  br i1 %.not19.i, label %upb_Decoder_Init.exit, label %bb.f

bb.f:                                             ; preds = %upb_EpsCopyInputStream_InitWithErrorHandler.exit.i
  store i8 0, ptr %7, align 1, !tbaa !22
  br label %upb_Decoder_Init.exit

upb_Decoder_Init.exit:                            ; preds = %upb_EpsCopyInputStream_InitWithErrorHandler.exit.i, %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 128
  call void @_upb_Arena_SwapIn_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.aa, ptr noundef %6) #12
  %i.ab = call fastcc i32 @upb_Decoder_Decode(ptr noundef %9, ptr noundef %.0.i, ptr noundef %2, ptr noundef %3, ptr noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  ret i32 %i.ab
}

; Function Attrs: nounwind uwtable
define hidden i32 @upb_DecodeLengthPrefixed(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef writeonly captures(none) %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7) local_unnamed_addr #4 {
bb.a:
  %8 = alloca %struct.upb_Decoder, align 8        ; 21 uses
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = add i64 %1, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.b, i64 9)
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.02947 = phi i64 [ %i.k, %bb.b ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.03046 = phi i64 [ %i.i, %bb.b ], [ 0, %.lr.ph.preheader ]
  %.03245 = phi ptr [ %i.d, %bb.b ], [ %0, %.lr.ph.preheader ] ; 2 uses
  %i.c = load i8, ptr %.03245, align 1, !tbaa !22 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.03245, i64 1 ; 6 uses
  %i.e = and i8 %i.c, 127
  %i.f = zext nneg i8 %i.e to i64
  %i.g = mul nuw nsw i64 %.02947, 7
  %i.h = shl i64 %i.f, %i.g
  %i.i = add i64 %i.h, %.03046                    ; 8 uses
  %i.j = icmp slt i8 %i.c, 0
  %i.k = add nuw nsw i64 %.02947, 1               ; 2 uses
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %exitcond = icmp eq i64 %.02947, %umin
  br i1 %exitcond, label %.loopexit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.l = add i64 %i.k, %i.i                       ; 2 uses
  store i64 %i.l, ptr %3, align 8, !tbaa !32
  %i.m = icmp ugt i64 %i.l, %1
  %i.n = icmp ugt i64 %i.i, 2147483647
  %or.cond34 = or i1 %i.n, %i.m
  br i1 %or.cond34, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 208 ; 2 uses
  store i32 0, ptr %i.o, align 8, !tbaa !82
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.d, ptr %i.p, align 8, !tbaa !52
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr null, ptr %i.q, align 8, !tbaa !73
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %i.o, ptr %i.r, align 8, !tbaa !83
  %i.s = icmp samesign ult i64 %i.i, 17
  %.sink28.i.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %.sink28.i.i.sroa.gep8.i = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 57 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.t, i8 0, i64 32, i1 false)
  %.not.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull align 1 %i.d, i64 %i.i, i1 false)
  br label %bb.g

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
define internal fastcc zeroext i1 @upb_EpsCopyInputStream_IsDone(ptr noundef %0, ptr noundef nonnull captures(none) %1) unnamed_addr #5 {
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
  %cond.fr = freeze i1 %i.m
  br i1 %cond.fr, label %bb.c, label %upb_EpsCopyInputStream_IsDoneStatus_dont_copy_me__upb_internal_use_only.exit, !prof !20

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
define internal fastcc nonnull ptr @_upb_Decoder_ReadString2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef writeonly captures(none) %3, i1 noundef zeroext %4) unnamed_addr #4 {
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
define internal fastcc ptr @_upb_Decoder_DecodeEnumPacked(ptr noundef initializes((8, 16)) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef readonly captures(none) %4, i32 %.0.val) unnamed_addr #0 {
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
  %i.ap = ashr exact i64 %sext.i.i, 32
  %i.aq = load i64, ptr %i.n, align 8, !tbaa !21  ; 2 uses
  %i.ar = icmp eq i64 %i.ap, %i.aq
  %cond.fr.i = freeze i1 %i.ar
  br i1 %cond.fr.i, label %upb_EpsCopyInputStream_IsDone.exit.thread, label %upb_EpsCopyInputStream_IsDone.exit, !prof !20

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
  %i.df = phi i64 [ %.pre, %upb_EpsCopyInputStream_IsDone.exit.upb_EpsCopyInputStream_IsDone.exit.thread_crit_edge ], [ %i.aq, %bb.d ]
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
define internal fastcc void @_upb_Decoder_AddMapEntryUnknown(ptr noundef %0, ptr noundef %1, ptr noundef readonly captures(none) %2, ptr noundef nonnull %3, ptr noundef %4) unnamed_addr #0 {
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

end_hunk_3
