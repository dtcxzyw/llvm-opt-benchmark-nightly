Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/decode?download=true
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
define hidden nonnull ptr @_upb_Decoder_FindExtensionField(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
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
  %.sroa.0190 = alloca i64, align 8               ; 8 uses
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
  %.sroa.0197.0 = phi ptr [ undef, %bb.a ], [ %.sroa.0197.3, %_upb_Decoder_DecodeField.exit ] ; 20 uses
  %.sroa.4.0 = phi i64 [ undef, %bb.a ], [ %.sroa.4.3, %_upb_Decoder_DecodeField.exit ] ; 19 uses
  %.sroa.0188.0 = phi ptr [ undef, %bb.a ], [ %.sroa.0188.3, %_upb_Decoder_DecodeField.exit ] ; 19 uses
  %.0 = phi ptr [ %1, %bb.a ], [ %.0.i15, %_upb_Decoder_DecodeField.exit ] ; 5 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !18
  %i.w = ptrtoint ptr %.0 to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x                       ; 2 uses
  %i.z = trunc i64 %i.y to i32
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.ab = icmp ult ptr %.0, %i.aa
  br i1 %i.ab, label %upb_EpsCopyInputStream_IsDone.exit.thread224, label %bb.c, !prof !20

bb.c:                                             ; preds = %bb.b
  %sext.i.i = shl i64 %i.y, 32
  %i.ac = ashr exact i64 %sext.i.i, 32
  %i.ad = load i64, ptr %i.e, align 8, !tbaa !21
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %_upb_Decoder_DecodeField.exit.thread, label %upb_EpsCopyInputStream_IsDone.exit, !prof !20

upb_EpsCopyInputStream_IsDone.exit:               ; preds = %bb.c
  %i.af = call ptr @upb_EpsCopyInputStream_IsDoneFallback_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %0, ptr noundef %.0, i32 noundef %i.z) #12 ; 2 uses
  %.not.i24 = icmp eq ptr %i.af, null
  br i1 %.not.i24, label %_upb_Decoder_DecodeField.exit.thread, label %upb_EpsCopyInputStream_IsDone.exit.thread224

upb_EpsCopyInputStream_IsDone.exit.thread224:     ; preds = %bb.b, %upb_EpsCopyInputStream_IsDone.exit
  %.0208227 = phi ptr [ %i.af, %upb_EpsCopyInputStream_IsDone.exit ], [ %.0, %bb.b ] ; 3 uses
  %i.ag = load i8, ptr %.0208227, align 1, !tbaa !22 ; 3 uses
  %i.ah = icmp sgt i8 %i.ag, -1
  br i1 %i.ah, label %bb.d, label %upb_EpsCopyInputStream_HasErrorHandler.exit.i, !prof !20

bb.d:                                             ; preds = %upb_EpsCopyInputStream_IsDone.exit.thread224
  %i.ai = zext nneg i8 %i.ag to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %.0208227, i64 1
  br label %upb_WireReader_ReadTag.exit

upb_EpsCopyInputStream_HasErrorHandler.exit.i:    ; preds = %upb_EpsCopyInputStream_IsDone.exit.thread224
  %i.ak = zext i8 %i.ag to i64
  %i.al = call { ptr, i64 } @_upb_WireReader_ReadLongTag_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %.0208227, i64 noundef %i.ak, ptr noundef nonnull %0) #12 ; 2 uses
  %i.am = extractvalue { ptr, i64 } %i.al, 0
  %i.an = extractvalue { ptr, i64 } %i.al, 1
  %i.ao = trunc i64 %i.an to i32
  br label %upb_WireReader_ReadTag.exit

upb_WireReader_ReadTag.exit:                      ; preds = %upb_EpsCopyInputStream_HasErrorHandler.exit.i, %bb.d
  %.0209.a = phi i32 [ %i.ai, %bb.d ], [ %i.ao, %upb_EpsCopyInputStream_HasErrorHandler.exit.i ] ; 4 uses
  %.0.i16 = phi ptr [ %i.aj, %bb.d ], [ %i.am, %upb_EpsCopyInputStream_HasErrorHandler.exit.i ] ; 16 uses
  %i.ap = lshr i32 %.0209.a, 3                    ; 7 uses
  %i.aq = and i32 %.0209.a, 7                     ; 5 uses
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
  %.029.i.i = phi i32 [ %i.bg, %bb.i ], [ %.029..i.i, %bb.k ] ; 3 uses
  %.0.i.i.a = phi i32 [ %i.az, %bb.i ], [ %..0.i.i, %bb.k ] ; 3 uses
  %.not.i.i26 = icmp slt i32 %.0.i.i.a, %.029.i.i
  br i1 %.not.i.i26, label %upb_MiniTable_FindFieldByNumber.exit.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = add i32 %.0.i.i.a, %.029.i.i
  %i.bi = lshr i32 %i.bh, 1                       ; 3 uses
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [12 x i8], ptr %i.bb, i64 %i.bj ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !27 ; 2 uses
  %i.bm = add nsw i32 %i.bi, -1
  %i.bn = add nuw i32 %i.bi, 1
  %.not40.i.i = icmp eq i32 %i.bl, %i.ap
  %i.bo = icmp ult i32 %i.bl, %i.ap               ; 2 uses
  %.029..i.i = select i1 %i.bo, i32 %i.bn, i32 %.029.i.i, !prof !29
  %..0.i.i = select i1 %i.bo, i32 %.0.i.i.a, i32 %i.bm, !prof !29
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
  %.sroa.0.0..sroa.0.0..sroa.0.0.180296 = phi i8 [ %i.bv, %bb.o ], [ %i.cc, %upb_EpsCopyInputStream_HasErrorHandler.exit.i31 ] ; 4 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0.182 = phi i64 [ %i.bx, %bb.o ], [ %i.cb, %upb_EpsCopyInputStream_HasErrorHandler.exit.i31 ] ; 7 uses
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
  %i.ck = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0.182 to i32 ; 4 uses
  %i.cl = icmp ult i32 %i.ck, 64
  br i1 %i.cl, label %.split, label %bb.q, !prof !20

.split:                                           ; preds = %bb.p
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cn = load i64, ptr %i.cm, align 4
  %i.co = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0.182, 63
  %i.cp = shl nuw i64 1, %i.co
  %i.cq = and i64 %i.cn, %i.cp
  %.not456 = icmp eq i64 %i.cq, 0
  br i1 %.not456, label %_upb_Decoder_DecodeWireValue.exit.thread.thread, label %_upb_Decoder_Munge.exit

bb.q:                                             ; preds = %bb.p
  %i.cr = load i32, ptr %i.cj, align 4, !tbaa !3  ; 2 uses
  %i.cs = icmp ugt i32 %i.cr, %i.ck
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 3 uses
  br i1 %i.cs, label %bb.t, label %bb.r, !prof !20

bb.r:                                             ; preds = %bb.q
  %i.cu = lshr i32 %i.cr, 5                       ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
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
  br i1 %.not.i34, label %.lr.ph.i, label %_upb_Decoder_DecodeWireValue.exit.thread.thread, !llvm.loop !35

.lr.ph.i:                                         ; preds = %bb.s, %.lr.ph.preheader.i
  %.02531.i = phi ptr [ %i.dc, %bb.s ], [ %i.db, %.lr.ph.preheader.i ] ; 2 uses
  %i.dd = load i32, ptr %.02531.i, align 4, !tbaa !3
  %i.de = icmp eq i32 %i.dd, %i.ck
  br i1 %i.de, label %_upb_Decoder_Munge.exit, label %bb.s

bb.t:                                             ; preds = %bb.q
  %i.df = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0.182, 5
  %i.dg = and i64 %i.df, 134217727
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3
  %i.dj = and i32 %i.ck, 31
  %i.dk = shl nuw i32 1, %i.dj
  %i.dl = and i32 %i.di, %i.dk
  %.not455 = icmp eq i32 %i.dl, 0
  br i1 %.not455, label %_upb_Decoder_DecodeWireValue.exit.thread.thread, label %_upb_Decoder_Munge.exit

bb.u:                                             ; preds = %upb_WireReader_ReadVarint.exit
  %i.dm = icmp ne i64 %.sroa.0.0..sroa.0.0..sroa.0.0.182, 0
  %i.dn = zext i1 %i.dm to i8                     ; 2 uses
  store i8 %i.dn, ptr %.sroa.0, align 8, !tbaa !22
  br label %_upb_Decoder_Munge.exit

bb.v:                                             ; preds = %upb_WireReader_ReadVarint.exit
  %i.do = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0.182 to i32 ; 2 uses
  %i.dp = lshr i32 %i.do, 1
  %i.dq = and i32 %i.do, 1
  %i.dr = sub nsw i32 0, %i.dq
  %i.ds = xor i32 %i.dp, %i.dr                    ; 2 uses
  store i32 %i.ds, ptr %.sroa.0, align 8, !tbaa !22
  %i.dt = trunc i32 %i.ds to i8
  br label %_upb_Decoder_Munge.exit

bb.w:                                             ; preds = %upb_WireReader_ReadVarint.exit
  %i.du = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0.182, 1
  %i.dv = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0.182, 1
  %i.dw = sub nsw i64 0, %i.dv
  %i.dx = xor i64 %i.du, %i.dw                    ; 2 uses
  store i64 %i.dx, ptr %.sroa.0, align 8, !tbaa !22
  %i.dy = trunc i64 %i.dx to i8
  br label %_upb_Decoder_Munge.exit

_upb_Decoder_Munge.exit:                          ; preds = %.lr.ph.i, %upb_WireReader_ReadVarint.exit, %.split, %bb.t, %bb.w, %bb.v, %bb.u
  %.sroa.0.0..sroa.0.0..sroa.0.0.180295 = phi i8 [ %i.dn, %bb.u ], [ %.sroa.0.0..sroa.0.0..sroa.0.0.180296, %upb_WireReader_ReadVarint.exit ], [ %.sroa.0.0..sroa.0.0..sroa.0.0.180296, %.split ], [ %.sroa.0.0..sroa.0.0..sroa.0.0.180296, %bb.t ], [ %i.dy, %bb.w ], [ %i.dt, %bb.v ], [ %.sroa.0.0..sroa.0.0..sroa.0.0.180296, %.lr.ph.i ]
  %i.dz = zext i8 %.val to i64
  %i.ea = getelementptr inbounds nuw i8, ptr @_upb_Decoder_GetVarintOp.kVarintOps, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !22
  br label %_upb_Decoder_DecodeWireValue.exit

bb.x:                                             ; preds = %_upb_Decoder_FindField.exit
  %i.ec = getelementptr inbounds nuw i8, ptr %.0.i27, i64 10
  %i.ed = load i8, ptr %i.ec, align 2, !tbaa !33
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
  %i.el = load i8, ptr %i.ek, align 2, !tbaa !33
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
  %.0211 = phi i32 [ %i.eu, %bb.aa ], [ %i.fa, %upb_EpsCopyInputStream_HasErrorHandler.exit.i38 ] ; 2 uses
  %.0.i21 = phi ptr [ %i.ev, %bb.aa ], [ %i.ey, %upb_EpsCopyInputStream_HasErrorHandler.exit.i38 ] ; 7 uses
  store i32 %.0211, ptr %.sroa.0, align 8, !tbaa !3
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
  %i.fn = trunc i32 %.0211 to i8                  ; 6 uses
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
  br i1 %.not6.i.i, label %_upb_Decoder_DecodeWireValue.exit, label %_upb_Decoder_DecodeWireValue.exit.thread248

bb.ag:                                            ; preds = %_upb_Decoder_FindField.exit
  %i.fz = load i32, ptr %.0.i27, align 4, !tbaa !27 ; 2 uses
  store i32 %i.fz, ptr %.sroa.0, align 8, !tbaa !22
  %i.ga = getelementptr inbounds nuw i8, ptr %.0.i27, i64 10
  %i.gb = load i8, ptr %i.ga, align 2, !tbaa !33
  %i.gc = trunc i32 %i.fz to i8                   ; 2 uses
  switch i8 %i.gb, label %_upb_Decoder_DecodeWireValue.exit.thread.thread [
    i8 10, label %bb.ah
    i8 19, label %_upb_Decoder_DecodeWireValue.exit.thread.thread281.preheader
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.gd = getelementptr inbounds nuw i8, ptr %.0.i27, i64 11
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !36
  %i.gf = and i8 %i.ge, 8
  %.not.i20 = icmp eq i8 %i.gf, 0
  br i1 %.not.i20, label %bb.ai, label %_upb_Decoder_DecodeWireValue.exit.thread248

bb.ai:                                            ; preds = %bb.ah
  %i.gg = getelementptr inbounds nuw i8, ptr %.0.i27, i64 8
  %i.gh = load i16, ptr %i.gg, align 4, !tbaa !34
  %i.gi = zext i16 %i.gh to i64
  %i.gj = shl nuw nsw i64 %i.gi, 2
  %i.gk = getelementptr inbounds nuw i8, ptr %.0.i27, i64 %i.gj
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !22
  %.not4.i = icmp eq ptr %i.gl, null
  br i1 %.not4.i, label %_upb_Decoder_DecodeWireValue.exit.thread.thread, label %_upb_Decoder_DecodeWireValue.exit.thread248

bb.aj:                                            ; preds = %_upb_Decoder_FindField.exit
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.gm, i32 noundef 2) #13
  unreachable

_upb_Decoder_DecodeWireValue.exit:                ; preds = %bb.af, %bb.ac, %bb.ae, %bb.ad, %bb.ab, %_upb_Decoder_Munge.exit
  %.sroa.0.0..sroa.0.0..sroa.0.0.180294 = phi i8 [ %.sroa.0.0..sroa.0.0..sroa.0.0.180295, %_upb_Decoder_Munge.exit ], [ %i.fn, %bb.ac ], [ %i.fn, %bb.ad ], [ %i.fn, %bb.ab ], [ %i.fn, %bb.ae ], [ %i.fn, %bb.af ]
  %.1.in = phi i8 [ %i.eb, %_upb_Decoder_Munge.exit ], [ %i.fk, %bb.ac ], [ %i.fk, %bb.ad ], [ %i.fk, %bb.ab ], [ %i.fk, %bb.ae ], [ %i.fk, %bb.af ] ; 3 uses
  %.1.i = phi ptr [ %.0.i19, %_upb_Decoder_Munge.exit ], [ %.0.i21, %bb.ac ], [ %.0.i21, %bb.ad ], [ %.0.i21, %bb.ab ], [ %.0.i21, %bb.ae ], [ %.0.i21, %bb.af ] ; 3 uses
  %.1 = zext nneg i8 %.1.in to i32
  %i.gn = icmp sgt i8 %.1.in, -1
  br i1 %i.gn, label %_upb_Decoder_DecodeWireValue.exit.thread248, label %_upb_Decoder_DecodeWireValue.exit.thread

_upb_Decoder_DecodeWireValue.exit.thread248:      ; preds = %bb.ai, %bb.af, %bb.y, %bb.x, %bb.ah, %_upb_Decoder_DecodeWireValue.exit
  %.sroa.0.0..sroa.0.0..sroa.0.0.180 = phi i8 [ %.sroa.0.0..sroa.0.0..sroa.0.0.180294, %_upb_Decoder_DecodeWireValue.exit ], [ %i.gc, %bb.ai ], [ %i.gc, %bb.ah ], [ %i.er, %bb.y ], [ %i.ej, %bb.x ], [ %i.fn, %bb.af ]
  %.1.i252 = phi ptr [ %.1.i, %_upb_Decoder_DecodeWireValue.exit ], [ %.0.i16, %bb.ai ], [ %.0.i16, %bb.ah ], [ %i.eq, %bb.y ], [ %i.ei, %bb.x ], [ %.0.i21, %bb.af ] ; 24 uses
  %.1251 = phi i32 [ %.1, %_upb_Decoder_DecodeWireValue.exit ], [ 6, %bb.ai ], [ 6, %bb.ah ], [ 3, %bb.y ], [ 2, %bb.x ], [ 4, %bb.af ] ; 7 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.0.i27, i64 11
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !36
  %i.gq = zext i8 %i.gp to i32                    ; 2 uses
  %i.gr = and i32 %i.gq, 8
  %.not.i = icmp eq i32 %i.gr, 0
  br i1 %.not.i, label %bb.an, label %bb.ak, !prof !20

bb.ak:                                            ; preds = %_upb_Decoder_DecodeWireValue.exit.thread248
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

bb.an:                                            ; preds = %bb.am, %_upb_Decoder_DecodeWireValue.exit.thread248
  %.029.i = phi ptr [ %i.gu, %bb.am ], [ %2, %_upb_Decoder_DecodeWireValue.exit.thread248 ] ; 5 uses
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
  br i1 %i.hf, label %bb.aq, label %_upb_Decoder_Reserve.exit96

bb.aq:                                            ; preds = %bb.ap
  %i.hg = add i64 %i.hc, 1
  %i.hh = call zeroext i1 @_upb_Array_Realloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.ha, i64 noundef %i.hg, ptr noundef nonnull %i.p) #12
  br i1 %i.hh, label %_upb_Decoder_Reserve.exit96, label %bb.ar

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
  %.val.i.i.i.i91 = load ptr, ptr %i.p, align 8, !tbaa !46 ; 4 uses
  %.val11.i.i.i.i92 = load ptr, ptr %i.r, align 8, !tbaa !48
  %i.hu = ptrtoint ptr %.val11.i.i.i.i92 to i64
  %i.hv = ptrtoint ptr %.val.i.i.i.i91 to i64
  %i.hw = sub i64 %i.hu, %i.hv
  %i.hx = icmp ult i64 %i.hw, %i.ht
  br i1 %i.hx, label %upb_Arena_Malloc.exit.i.i.i94, label %upb_Arena_Malloc.exit.thread.i.i.i93, !prof !38

upb_Arena_Malloc.exit.thread.i.i.i93:             ; preds = %bb.as
  %i.hy = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i91, i64 %i.ht
  store ptr %i.hy, ptr %i.p, align 8, !tbaa !46
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i91) ]
  br label %_upb_Decoder_CreateArray.exit

upb_Arena_Malloc.exit.i.i.i94:                    ; preds = %bb.as
  %i.hz = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.p, i64 noundef %i.ht) #12 ; 2 uses
  %.not.i.i.i95 = icmp eq ptr %i.hz, null
  br i1 %.not.i.i.i95, label %bb.at, label %_upb_Decoder_CreateArray.exit

bb.at:                                            ; preds = %upb_Arena_Malloc.exit.i.i.i94
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.ia, i32 noundef 1) #13
  unreachable

_upb_Decoder_CreateArray.exit:                    ; preds = %upb_Arena_Malloc.exit.thread.i.i.i93, %upb_Arena_Malloc.exit.i.i.i94
  %.0.i19.i.i.i = phi ptr [ %.val.i.i.i.i91, %upb_Arena_Malloc.exit.thread.i.i.i93 ], [ %i.hz, %upb_Arena_Malloc.exit.i.i.i94 ] ; 6 uses
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
  br label %_upb_Decoder_Reserve.exit96

_upb_Decoder_Reserve.exit96:                      ; preds = %bb.aq, %bb.ap, %_upb_Decoder_CreateArray.exit
  %.069.i = phi ptr [ %.0.i19.i.i.i, %_upb_Decoder_CreateArray.exit ], [ %i.ha, %bb.ap ], [ %i.ha, %bb.aq ] ; 18 uses
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
  %.069.val80.i = load i64, ptr %.069.i, align 8, !tbaa !49
  %i.ii = and i64 %.069.val80.i, -8
  %i.ij = inttoptr i64 %i.ii to ptr
  %i.ik = getelementptr inbounds nuw i8, ptr %.069.i, i64 8 ; 2 uses
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !45 ; 2 uses
  %i.im = zext nneg i32 %.1251 to i64
  %i.in = shl i64 %i.il, %i.im
  %i.io = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.in
  %i.ip = add i64 %i.il, 1
  store i64 %i.ip, ptr %i.ik, align 8, !tbaa !45
  %i.iq = shl nuw nsw i32 1, %.1251
  %i.ir = zext nneg i32 %i.iq to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.io, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0, i64 %i.ir, i1 false)
  br label %_upb_Decoder_DecodeField.exit

bb.av:                                            ; preds = %_upb_Decoder_Reserve.exit96
  %.069.val79.i = load i64, ptr %.069.i, align 8, !tbaa !49
  %i.is = and i64 %.069.val79.i, -8
  %i.it = inttoptr i64 %i.is to ptr
  %i.iu = getelementptr inbounds nuw i8, ptr %.069.i, i64 8 ; 3 uses
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !45
  %i.iw = getelementptr inbounds nuw [16 x i8], ptr %i.it, i64 %i.iv
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.174.a = load i32, ptr %.sroa.0, align 8, !tbaa !22
  %i.ix = call fastcc ptr @_upb_Decoder_ReadString2(ptr noundef nonnull %0, ptr noundef %.1.i252, i32 noundef %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.174.a, ptr noundef %i.iw, i1 noundef zeroext true), !inline_history !50
  %i.iy = load i64, ptr %i.iu, align 8, !tbaa !45
  %i.iz = add i64 %i.iy, 1
  store i64 %i.iz, ptr %i.iu, align 8, !tbaa !45
  br label %_upb_Decoder_DecodeField.exit

bb.aw:                                            ; preds = %_upb_Decoder_Reserve.exit96
  %.069.val78.i = load i64, ptr %.069.i, align 8, !tbaa !49
  %i.ja = and i64 %.069.val78.i, -8
  %i.jb = inttoptr i64 %i.ja to ptr
  %i.jc = getelementptr inbounds nuw i8, ptr %.069.i, i64 8 ; 3 uses
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !45
  %i.je = getelementptr inbounds nuw [16 x i8], ptr %i.jb, i64 %i.jd ; 2 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.173 = load i32, ptr %.sroa.0, align 8, !tbaa !22
  %i.jf = sext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.173 to i64 ; 5 uses
  %i.jg = load ptr, ptr %0, align 8, !tbaa !18
  %i.jh = load i64, ptr %i.l, align 8, !tbaa !51  ; 2 uses
  %i.ji = icmp eq i64 %i.jh, 0
  %i.jj = select i1 %i.ji, i64 16, i64 0
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.jj
  %i.jl = ptrtoint ptr %i.jk to i64
  %i.jm = ptrtoint ptr %.1.i252 to i64            ; 2 uses
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
  %i.ju = getelementptr inbounds nuw i8, ptr %.1.i252, i64 %i.jf
  br label %upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit.i.i

upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit.i.i: ; preds = %bb.ay, %bb.ax
  %.sroa.0.1.i.i = phi ptr [ undef, %bb.ax ], [ %i.jt, %bb.ay ] ; 2 uses
  %.0.i.i.i90 = phi ptr [ %i.jp, %bb.ax ], [ %i.ju, %bb.ay ] ; 2 uses
  %i.jv = icmp eq ptr %.0.i.i.i90, null
  br i1 %i.jv, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit.i.i
  %i.jw = load i16, ptr %i.k, align 8, !tbaa !37
  %i.jx = and i16 %i.jw, 1
end_hunk_0
begin_hunk_1_@_upb_Decoder_DecodeMessage:bb.a
  unreachable

_upb_Decoder_ReadString2.exit:                    ; preds = %bb.az, %bb.bb
  %.sroa.0.0.i.i = phi ptr [ %.0.i1723.i.i, %bb.bb ], [ %.sroa.0.1.i.i, %bb.az ]
  store ptr %.sroa.0.0.i.i, ptr %i.je, align 8, !tbaa !53
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  store i64 %i.jf, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !tbaa !32
  %i.ki = load i64, ptr %i.jc, align 8, !tbaa !45
  %i.kj = add i64 %i.ki, 1
  store i64 %i.kj, ptr %i.jc, align 8, !tbaa !45
  br label %_upb_Decoder_DecodeField.exit

bb.bd:                                            ; preds = %_upb_Decoder_Reserve.exit96
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
  %.val.i89 = load i16, ptr %i.kw, align 8, !tbaa !24
  %i.kx = zext i16 %.val.i89 to i64               ; 5 uses
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
  store ptr %.1.i252, ptr %i.c, align 8, !tbaa !53
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
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.172 = load i32, ptr %.sroa.0, align 8, !tbaa !22
  %i.me = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.172 to i64
  %i.mf = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.mg = ptrtoint ptr %.1.i252 to i64
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
  br i1 %i.mo, label %bb.bl, label %upb_EpsCopyInputStream_PushLimit.exit87, !prof !38

bb.bl:                                            ; preds = %bb.bk
  %i.mp = call ptr @upb_EpsCopyInputStream_ReturnError_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %0) #12 ; 0 uses
  br label %upb_EpsCopyInputStream_PushLimit.exit87

upb_EpsCopyInputStream_PushLimit.exit87:          ; preds = %bb.bk, %bb.bl
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

bb.bm:                                            ; preds = %upb_EpsCopyInputStream_PushLimit.exit87
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.my, i32 noundef 4) #13, !inline_history !50
  unreachable

bb.bn:                                            ; preds = %upb_EpsCopyInputStream_PushLimit.exit87
  %i.mz = call ptr @_upb_Decoder_DecodeMessage(ptr noundef nonnull %0, ptr noundef %.1.i252, ptr noundef nonnull %.0.i3.i.i.i, ptr noundef %i.mu), !inline_history !50
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
  %spec.select.i86 = call i64 @llvm.smin.i64(i64 %i.nf, i64 0)
  %i.nh = getelementptr inbounds i8, ptr %i.ng, i64 %spec.select.i86
  store ptr %i.nh, ptr %i.d, align 8, !tbaa !19
  br label %_upb_Decoder_DecodeField.exit

bb.bp:                                            ; preds = %_upb_Decoder_Reserve.exit96, %_upb_Decoder_Reserve.exit96
  %i.ni = add nsw i32 %.1251, -5                  ; 3 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.170 = load i32, ptr %.sroa.0, align 8, !tbaa !22 ; 3 uses
  %i.nj = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.170 to i64 ; 3 uses
  %i.nk = load ptr, ptr %0, align 8, !tbaa !18
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 16
  %i.nm = ptrtoint ptr %i.nl to i64
  %i.nn = ptrtoint ptr %.1.i252 to i64
  %i.no = sub i64 %i.nm, %i.nn
  %i.np = icmp slt i64 %i.no, %i.nj
  br i1 %i.np, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.nq = call ptr @upb_EpsCopyInputStream_ReturnError_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %0) #12
  br label %upb_EpsCopyInputStream_ReadStringEphemeral.exit

bb.br:                                            ; preds = %bb.bp
  %i.nr = getelementptr inbounds nuw i8, ptr %.1.i252, i64 %i.nj
  br label %upb_EpsCopyInputStream_ReadStringEphemeral.exit

upb_EpsCopyInputStream_ReadStringEphemeral.exit:  ; preds = %bb.bq, %bb.br
  %.sroa.4.6 = phi i64 [ %.sroa.4.0, %bb.bq ], [ %i.nj, %bb.br ] ; 3 uses
  %.sroa.0189.0 = phi ptr [ %.sroa.0188.0, %bb.bq ], [ %.1.i252, %bb.br ] ; 3 uses
  %.0.i85 = phi ptr [ %i.nq, %bb.bq ], [ %i.nr, %bb.br ] ; 3 uses
  %.not.i.i47 = icmp eq ptr %.0.i85, null
  br i1 %.not.i.i47, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %upb_EpsCopyInputStream_ReadStringEphemeral.exit
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.ns, i32 noundef 2) #13, !inline_history !50
  unreachable

bb.bt:                                            ; preds = %upb_EpsCopyInputStream_ReadStringEphemeral.exit
  %notmask.i.i = shl nsw i32 -1, %i.ni
  %i.nt = xor i32 %notmask.i.i, -1
  %i.nu = and i32 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.170, %i.nt
  %.not48.i.i = icmp eq i32 %i.nu, 0
  br i1 %.not48.i.i, label %bb.bv, label %bb.bu, !prof !20

bb.bu:                                            ; preds = %bb.bt
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.nv, i32 noundef 2) #13, !inline_history !50
  unreachable

bb.bv:                                            ; preds = %bb.bt
  %i.nw = lshr i32 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.170, %i.ni ; 2 uses
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
  br i1 %i.oe, label %bb.bx, label %_upb_Decoder_Reserve.exit84

bb.bx:                                            ; preds = %bb.bw
  %i.of = add i64 %i.oc, %i.ny
  %i.og = call zeroext i1 @_upb_Array_Realloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %.069.i, i64 noundef %i.of, ptr noundef nonnull %i.p) #12
  br i1 %i.og, label %._upb_Decoder_Reserve.exit84_crit_edge, label %bb.by

._upb_Decoder_Reserve.exit84_crit_edge:           ; preds = %bb.bx
  %.pre300 = load i64, ptr %i.ob, align 8, !tbaa !45
  br label %_upb_Decoder_Reserve.exit84

bb.by:                                            ; preds = %bb.bx
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.oh, i32 noundef 1) #13
  unreachable

_upb_Decoder_Reserve.exit84:                      ; preds = %._upb_Decoder_Reserve.exit84_crit_edge, %bb.bw
  %i.oi = phi i64 [ %.pre300, %._upb_Decoder_Reserve.exit84_crit_edge ], [ %i.oc, %bb.bw ] ; 2 uses
  %.069.val76.i = load i64, ptr %.069.i, align 8, !tbaa !49
  %i.oj = and i64 %.069.val76.i, -8
  %i.ok = inttoptr i64 %i.oj to ptr
  %i.ol = add i64 %i.oi, %i.ny
  store i64 %i.ol, ptr %i.ob, align 8, !tbaa !45
  %i.om = zext nneg i32 %i.ni to i64
  %i.on = shl i64 %i.oi, %i.om
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.on
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.oo, ptr align 1 %.sroa.0189.0, i64 %.sroa.4.6, i1 false)
  br label %_upb_Decoder_DecodeField.exit

bb.bz:                                            ; preds = %_upb_Decoder_Reserve.exit96, %_upb_Decoder_Reserve.exit96, %_upb_Decoder_Reserve.exit96
  %i.op = add nsw i32 %.1251, -9                  ; 2 uses
  %i.oq = shl nuw nsw i32 1, %i.op
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0. = load i32, ptr %.sroa.0, align 8, !tbaa !22
  %i.or = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0. to i64
  %i.os = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.ot = ptrtoint ptr %.1.i252 to i64
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
  %.0212 = phi ptr [ %.1.i252, %upb_EpsCopyInputStream_PushLimit.exit ], [ %.0.i.i.i, %_upb_Decoder_Reserve.exit ] ; 5 uses
  %.0.i.i45 = phi ptr [ %i.pj, %upb_EpsCopyInputStream_PushLimit.exit ], [ %i.rd, %_upb_Decoder_Reserve.exit ]
  %i.pn = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.po = ptrtoint ptr %.0212 to i64
  %i.pp = ptrtoint ptr %i.pn to i64
  %i.pq = sub i64 %i.po, %i.pp                    ; 2 uses
  %i.pr = trunc i64 %i.pq to i32
  %i.ps = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.pt = icmp ult ptr %.0212, %i.ps
  br i1 %i.pt, label %upb_EpsCopyInputStream_IsDone.exit82.thread256, label %bb.cc, !prof !20

bb.cc:                                            ; preds = %bb.cb
  %sext.i.i78 = shl i64 %i.pq, 32
  %i.pu = ashr exact i64 %sext.i.i78, 32          ; 2 uses
  %i.pv = load i64, ptr %i.e, align 8, !tbaa !21
  %i.pw = icmp eq i64 %i.pu, %i.pv
  br i1 %i.pw, label %_upb_Decoder_DecodeVarintPacked.exit.i, label %upb_EpsCopyInputStream_IsDone.exit82, !prof !20

upb_EpsCopyInputStream_IsDone.exit82:             ; preds = %bb.cc
  %i.px = call ptr @upb_EpsCopyInputStream_IsDoneFallback_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %0, ptr noundef %.0212, i32 noundef %i.pr) #12 ; 2 uses
  %.not.i80 = icmp eq ptr %i.px, null
  br i1 %.not.i80, label %upb_EpsCopyInputStream_IsDone.exit82._upb_Decoder_DecodeVarintPacked.exit.i_crit_edge, label %upb_EpsCopyInputStream_IsDone.exit82.thread256

upb_EpsCopyInputStream_IsDone.exit82._upb_Decoder_DecodeVarintPacked.exit.i_crit_edge: ; preds = %upb_EpsCopyInputStream_IsDone.exit82
  %.pre297 = load i64, ptr %i.e, align 8, !tbaa !21
  %.pre298 = load ptr, ptr %0, align 8, !tbaa !18
  br label %_upb_Decoder_DecodeVarintPacked.exit.i

upb_EpsCopyInputStream_IsDone.exit82.thread256:   ; preds = %bb.cb, %upb_EpsCopyInputStream_IsDone.exit82
  %.1213259 = phi ptr [ %i.px, %upb_EpsCopyInputStream_IsDone.exit82 ], [ %.0212, %bb.cb ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0190)
  %i.py = load i8, ptr %.1213259, align 1, !tbaa !22 ; 2 uses
  %i.pz = icmp sgt i8 %i.py, -1
  %i.qa = zext i8 %i.py to i64                    ; 3 uses
  br i1 %i.pz, label %bb.cd, label %upb_EpsCopyInputStream_HasErrorHandler.exit.i75, !prof !20

bb.cd:                                            ; preds = %upb_EpsCopyInputStream_IsDone.exit82.thread256
  store i64 %i.qa, ptr %.sroa.0190, align 8, !tbaa !32
  %i.qb = getelementptr inbounds nuw i8, ptr %.1213259, i64 1
  br label %upb_WireReader_ReadVarint.exit.i.i

upb_EpsCopyInputStream_HasErrorHandler.exit.i75:  ; preds = %upb_EpsCopyInputStream_IsDone.exit82.thread256
  %i.qc = call { ptr, i64 } @_upb_WireReader_ReadLongVarint_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %.1213259, i64 noundef %i.qa, ptr noundef nonnull %0) #12, !inline_history !50 ; 2 uses
  %i.qd = extractvalue { ptr, i64 } %i.qc, 0
  %i.qe = extractvalue { ptr, i64 } %i.qc, 1      ; 2 uses
  store i64 %i.qe, ptr %.sroa.0190, align 8, !tbaa !32
  br label %upb_WireReader_ReadVarint.exit.i.i

upb_WireReader_ReadVarint.exit.i.i:               ; preds = %upb_EpsCopyInputStream_HasErrorHandler.exit.i75, %bb.cd
  %.sroa.0190.0..sroa.0190.0..sroa.0190.0.192 = phi i64 [ %i.qa, %bb.cd ], [ %i.qe, %upb_EpsCopyInputStream_HasErrorHandler.exit.i75 ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.qb, %bb.cd ], [ %i.qd, %upb_EpsCopyInputStream_HasErrorHandler.exit.i75 ]
  %.val.i46 = load i8, ptr %i.pk, align 2, !tbaa !33
  switch i8 %.val.i46, label %_upb_Decoder_Munge.exit73 [
    i8 8, label %bb.ce
    i8 17, label %bb.cf
    i8 18, label %bb.cg
  ]

bb.ce:                                            ; preds = %upb_WireReader_ReadVarint.exit.i.i
  %i.qf = icmp ne i64 %.sroa.0190.0..sroa.0190.0..sroa.0190.0.192, 0
  %i.qg = zext i1 %i.qf to i8
  store i8 %i.qg, ptr %.sroa.0190, align 8, !tbaa !22
  br label %_upb_Decoder_Munge.exit73

bb.cf:                                            ; preds = %upb_WireReader_ReadVarint.exit.i.i
  %i.qh = trunc i64 %.sroa.0190.0..sroa.0190.0..sroa.0190.0.192 to i32 ; 2 uses
  %i.qi = lshr i32 %i.qh, 1
  %i.qj = and i32 %i.qh, 1
  %i.qk = sub nsw i32 0, %i.qj
  %i.ql = xor i32 %i.qi, %i.qk
  store i32 %i.ql, ptr %.sroa.0190, align 8, !tbaa !22
  br label %_upb_Decoder_Munge.exit73

bb.cg:                                            ; preds = %upb_WireReader_ReadVarint.exit.i.i
  %i.qm = lshr i64 %.sroa.0190.0..sroa.0190.0..sroa.0190.0.192, 1
  %i.qn = and i64 %.sroa.0190.0..sroa.0190.0..sroa.0190.0.192, 1
  %i.qo = sub nsw i64 0, %i.qn
  %i.qp = xor i64 %i.qm, %i.qo
  store i64 %i.qp, ptr %.sroa.0190, align 8, !tbaa !22
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
  %.1.i.i = phi ptr [ %i.ra, %bb.cj ], [ %.0.i.i45, %_upb_Decoder_Munge.exit73 ] ; 2 uses
  %i.rc = add i64 %i.rb, 1
  store i64 %i.rc, ptr %i.pf, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.1.i.i, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0190, i64 %i.pm, i1 false)
  %i.rd = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 %i.pm
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0190)
  br label %bb.cb, !llvm.loop !57

_upb_Decoder_DecodeVarintPacked.exit.i:           ; preds = %bb.cc, %upb_EpsCopyInputStream_IsDone.exit82._upb_Decoder_DecodeVarintPacked.exit.i_crit_edge
  %i.re = phi ptr [ %.pre298, %upb_EpsCopyInputStream_IsDone.exit82._upb_Decoder_DecodeVarintPacked.exit.i_crit_edge ], [ %i.pn, %bb.cc ]
  %i.rf = phi i64 [ %.pre297, %upb_EpsCopyInputStream_IsDone.exit82._upb_Decoder_DecodeVarintPacked.exit.i_crit_edge ], [ %i.pu, %bb.cc ]
  %.1213255 = phi ptr [ null, %upb_EpsCopyInputStream_IsDone.exit82._upb_Decoder_DecodeVarintPacked.exit.i_crit_edge ], [ %.0212, %bb.cc ]
  %i.rg = add nsw i64 %i.rf, %i.oy                ; 2 uses
  store i64 %i.rg, ptr %i.e, align 8, !tbaa !21
  %spec.select.i72 = call i64 @llvm.smin.i64(i64 %i.rg, i64 0)
  %i.rh = getelementptr inbounds i8, ptr %i.re, i64 %spec.select.i72
  store ptr %i.rh, ptr %i.d, align 8, !tbaa !19
  br label %_upb_Decoder_DecodeField.exit

bb.ck:                                            ; preds = %_upb_Decoder_Reserve.exit96
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..val81.i = load i32, ptr %.sroa.0, align 8, !tbaa !22
  %i.ri = call fastcc ptr @_upb_Decoder_DecodeEnumPacked(ptr noundef nonnull %0, ptr noundef %.1.i252, ptr noundef nonnull %.029.i, ptr noundef %.069.i, ptr noundef nonnull %.0.i27, i32 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..val81.i), !inline_history !50
  br label %_upb_Decoder_DecodeField.exit

bb.cl:                                            ; preds = %_upb_Decoder_Reserve.exit96
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
  %.not.i48 = icmp eq ptr %i.rj, null
  br i1 %.not.i48, label %bb.cn, label %bb.cp

bb.cn:                                            ; preds = %bb.cm
  %.val.i52.a = load ptr, ptr %i.rp, align 8, !tbaa !25 ; 2 uses
  %i.rq = getelementptr i8, ptr %.val.i52.a, i64 10
  %.val.val.i = load i8, ptr %i.rq, align 2, !tbaa !33
  %i.rr = getelementptr i8, ptr %.val.i52.a, i64 22
  %.val.val39.i = load i8, ptr %i.rr, align 2, !tbaa !33
  %i.rs = zext i8 %.val.val.i to i64
  %i.rt = getelementptr inbounds nuw i8, ptr @_upb_Decoder_CreateMap.kSizeInMap, i64 %i.rs
  %i.ru = load i8, ptr %i.rt, align 1, !tbaa !22
  %i.rv = zext i8 %.val.val39.i to i64
  %i.rw = getelementptr inbounds nuw i8, ptr @_upb_Decoder_CreateMap.kSizeInMap, i64 %i.rv
  %i.rx = load i8, ptr %i.rw, align 1, !tbaa !22
  %i.ry = sext i8 %i.ru to i64
end_hunk_1
begin_hunk_2_@_upb_Decoder_DecodeMessage:bb.a
  %i.xm = add nsw i32 %i.xl, -1
  store i32 %i.xm, ptr %i.n, align 8, !tbaa !56
  %i.xn = icmp slt i32 %i.xl, 1
  br i1 %i.xn, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %_upb_Decoder_DecodeGroup.exit.i55
  %i.xo = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.xo, i32 noundef 4) #13, !inline_history !70
  unreachable

bb.du:                                            ; preds = %_upb_Decoder_DecodeGroup.exit.i55
  %i.xp = call ptr @_upb_Decoder_DecodeMessage(ptr noundef nonnull %0, ptr noundef %i.xk, ptr noundef nonnull %.0.i54, ptr noundef %i.xg), !inline_history !70
  %i.xq = load i32, ptr %i.n, align 8, !tbaa !56
  %i.xr = add nsw i32 %i.xq, 1
  store i32 %i.xr, ptr %i.n, align 8, !tbaa !56
  %i.xs = load i32, ptr %i.s, align 4, !tbaa !23
  %.not.i.i56 = icmp eq i32 %i.xs, %i.xh
  br i1 %.not.i.i56, label %_upb_Decoder_RecurseSubMessage.exit.i57, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.xt = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.xt, i32 noundef 2) #13, !inline_history !70
  unreachable

_upb_Decoder_RecurseSubMessage.exit.i57:          ; preds = %bb.du
  store i32 -1, ptr %i.s, align 4, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_upb_Decoder_DecodeField.exit

bb.dw:                                            ; preds = %bb.dq
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.179 = load i32, ptr %.sroa.0, align 8, !tbaa !22
  %i.xu = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.179 to i64
  %i.xv = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.xw = ptrtoint ptr %.1.i252 to i64
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
  br i1 %i.ye, label %bb.dx, label %upb_EpsCopyInputStream_PushLimit.exit130, !prof !38

bb.dx:                                            ; preds = %bb.dw
  %i.yf = call ptr @upb_EpsCopyInputStream_ReturnError_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %0) #12 ; 0 uses
  br label %upb_EpsCopyInputStream_PushLimit.exit130

upb_EpsCopyInputStream_PushLimit.exit130:         ; preds = %bb.dw, %bb.dx
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

bb.dy:                                            ; preds = %upb_EpsCopyInputStream_PushLimit.exit130
  %i.yp = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.yp, i32 noundef 4) #13, !inline_history !70
  unreachable

bb.dz:                                            ; preds = %upb_EpsCopyInputStream_PushLimit.exit130
  %i.yq = call ptr @_upb_Decoder_DecodeMessage(ptr noundef nonnull %0, ptr noundef %.1.i252, ptr noundef nonnull %.0.i54, ptr noundef %i.yl), !inline_history !70
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
  %spec.select.i129 = call i64 @llvm.smin.i64(i64 %i.yw, i64 0)
  %i.yy = getelementptr inbounds i8, ptr %i.yx, i64 %spec.select.i129
  store ptr %i.yy, ptr %i.d, align 8, !tbaa !19
  br label %_upb_Decoder_DecodeField.exit

bb.eb:                                            ; preds = %bb.dm
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.178 = load i32, ptr %.sroa.0, align 8, !tbaa !22
  %i.yz = call fastcc ptr @_upb_Decoder_ReadString2(ptr noundef nonnull %0, ptr noundef %.1.i252, i32 noundef %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.178, ptr noundef %i.gz, i1 noundef zeroext true), !inline_history !70
  br label %_upb_Decoder_DecodeField.exit

bb.ec:                                            ; preds = %bb.dm
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.177 = load i32, ptr %.sroa.0, align 8, !tbaa !22
  %i.za = sext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.177 to i64 ; 5 uses
  %i.zb = load ptr, ptr %0, align 8, !tbaa !18
  %i.zc = load i64, ptr %i.l, align 8, !tbaa !51  ; 2 uses
  %i.zd = icmp eq i64 %i.zc, 0
  %i.ze = select i1 %i.zd, i64 16, i64 0
  %i.zf = getelementptr inbounds nuw i8, ptr %i.zb, i64 %i.ze
  %i.zg = ptrtoint ptr %i.zf to i64
  %i.zh = ptrtoint ptr %.1.i252 to i64            ; 2 uses
  %i.zi = sub i64 %i.zg, %i.zh
  %i.zj = icmp slt i64 %i.zi, %i.za
  br i1 %i.zj, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.zk = call ptr @upb_EpsCopyInputStream_ReturnError_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %0) #12
  br label %upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit.i.i117

bb.ee:                                            ; preds = %bb.ec
  %.val14.i.i.i116 = load ptr, ptr %i.m, align 8, !tbaa !52 ; 2 uses
  %i.zl = ptrtoint ptr %.val14.i.i.i116 to i64
  %i.zm = sub i64 %i.zc, %i.zl
  %i.zn = getelementptr i8, ptr %.val14.i.i.i116, i64 %i.zm
  %i.zo = getelementptr i8, ptr %i.zn, i64 %i.zh
  %i.zp = getelementptr inbounds nuw i8, ptr %.1.i252, i64 %i.za
  br label %upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit.i.i117

upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit.i.i117: ; preds = %bb.ee, %bb.ed
  %.sroa.0.1.i.i118 = phi ptr [ undef, %bb.ed ], [ %i.zo, %bb.ee ] ; 2 uses
  %.0.i.i.i119 = phi ptr [ %i.zk, %bb.ed ], [ %i.zp, %bb.ee ] ; 2 uses
  %i.zq = icmp eq ptr %.0.i.i.i119, null
  br i1 %i.zq, label %bb.ei, label %bb.ef

bb.ef:                                            ; preds = %upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit.i.i117
  %i.zr = load i16, ptr %i.k, align 8, !tbaa !37
  %i.zs = and i16 %i.zr, 1
  %i.zt = icmp eq i16 %i.zs, 0
  br i1 %i.zt, label %bb.eg, label %_upb_Decoder_ReadString2.exit128

bb.eg:                                            ; preds = %bb.ef
  %i.zu = add nsw i64 %i.za, 7
  %i.zv = and i64 %i.zu, -8                       ; 3 uses
  %.val.i.i.i122 = load ptr, ptr %i.p, align 8, !tbaa !46 ; 4 uses
  %.val11.i.i.i123 = load ptr, ptr %i.r, align 8, !tbaa !48
  %i.zw = ptrtoint ptr %.val11.i.i.i123 to i64
  %i.zx = ptrtoint ptr %.val.i.i.i122 to i64
  %i.zy = sub i64 %i.zw, %i.zx
  %i.zz = icmp ult i64 %i.zy, %i.zv
  br i1 %i.zz, label %upb_Arena_Malloc.exit.i.i126, label %upb_Arena_Malloc.exit.thread.i.i124, !prof !38

upb_Arena_Malloc.exit.thread.i.i124:              ; preds = %bb.eg
  %i.aaa = getelementptr inbounds nuw i8, ptr %.val.i.i.i122, i64 %i.zv
  store ptr %i.aaa, ptr %i.p, align 8, !tbaa !46
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i122) ]
  br label %bb.eh

upb_Arena_Malloc.exit.i.i126:                     ; preds = %bb.eg
  %i.aab = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.p, i64 noundef %i.zv) #12 ; 2 uses
  %.not16.not.i.i127 = icmp eq ptr %i.aab, null
  br i1 %.not16.not.i.i127, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %upb_Arena_Malloc.exit.i.i126, %upb_Arena_Malloc.exit.thread.i.i124
  %.0.i1723.i.i125 = phi ptr [ %.val.i.i.i122, %upb_Arena_Malloc.exit.thread.i.i124 ], [ %i.aab, %upb_Arena_Malloc.exit.i.i126 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i1723.i.i125, ptr align 1 %.sroa.0.1.i.i118, i64 range(i64 -2147483648, 2147483648) %i.za, i1 false)
  br label %_upb_Decoder_ReadString2.exit128

bb.ei:                                            ; preds = %upb_Arena_Malloc.exit.i.i126, %upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit.i.i117
  %i.aac = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.aac, i32 noundef 1) #13
  unreachable

_upb_Decoder_ReadString2.exit128:                 ; preds = %bb.ef, %bb.eh
  %.sroa.0.0.i.i120 = phi ptr [ %.0.i1723.i.i125, %bb.eh ], [ %.sroa.0.1.i.i118, %bb.ef ]
  store ptr %.sroa.0.0.i.i120, ptr %i.gz, align 8, !tbaa !53
  %.sroa.7.0..sroa_idx.i.i121 = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store i64 %i.za, ptr %.sroa.7.0..sroa_idx.i.i121, align 8, !tbaa !32
  br label %_upb_Decoder_DecodeField.exit

bb.ej:                                            ; preds = %bb.dm
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.186 = load i64, ptr %.sroa.0, align 8
  store i64 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.186, ptr %i.gz, align 1
  br label %_upb_Decoder_DecodeField.exit

bb.ek:                                            ; preds = %bb.dm
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.176 = load i32, ptr %.sroa.0, align 8
  store i32 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.176, ptr %i.gz, align 1
  br label %_upb_Decoder_DecodeField.exit

bb.el:                                            ; preds = %bb.dm
  store i8 %.sroa.0.0..sroa.0.0..sroa.0.0.180, ptr %i.gz, align 1
  br label %_upb_Decoder_DecodeField.exit

bb.em:                                            ; preds = %bb.dm
  unreachable

.unreachabledefault.i:                            ; preds = %bb.an
  unreachable

_upb_Decoder_DecodeWireValue.exit.thread:         ; preds = %_upb_Decoder_DecodeWireValue.exit
  %i.aad = icmp eq i8 %.1.in, -1
  br i1 %i.aad, label %_upb_Decoder_DecodeWireValue.exit.thread.thread, label %_upb_Decoder_DecodeWireValue.exit.thread.thread281.preheader

_upb_Decoder_DecodeWireValue.exit.thread.thread281.preheader: ; preds = %bb.ag, %_upb_Decoder_DecodeWireValue.exit.thread
  %.0217.ph = phi ptr [ %.0.i16, %bb.ag ], [ %.1.i, %_upb_Decoder_DecodeWireValue.exit.thread ]
  br label %_upb_Decoder_DecodeWireValue.exit.thread.thread281

_upb_Decoder_DecodeWireValue.exit.thread.thread:  ; preds = %bb.s, %bb.ag, %bb.ac, %bb.r, %bb.t, %.split, %bb.ai, %bb.x, %bb.y, %_upb_Decoder_DecodeWireValue.exit.thread
  %.1.i244280 = phi ptr [ %.1.i, %_upb_Decoder_DecodeWireValue.exit.thread ], [ %.0.i21, %bb.ac ], [ %.0.i19, %bb.r ], [ %.0.i16, %bb.ag ], [ %i.eq, %bb.y ], [ %.0.i19, %bb.t ], [ %.0.i19, %.split ], [ %.0.i16, %bb.ai ], [ %i.ei, %bb.x ], [ %.0.i19, %bb.s ] ; 8 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.181 = load i64, ptr %.sroa.0, align 8
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
  %i.aag = getelementptr inbounds i8, ptr %.1.i244280, i64 -1
  br label %bb.eq

bb.eq:                                            ; preds = %bb.eq, %bb.ep
  %.015.i.i = phi ptr [ %i.aag, %bb.ep ], [ %i.aah, %bb.eq ] ; 2 uses
  %i.aah = getelementptr inbounds i8, ptr %.015.i.i, i64 -1 ; 2 uses
  %i.aai = load i8, ptr %i.aah, align 1, !tbaa !22
  %.not.i.i63 = icmp sgt i8 %i.aai, -1
  br i1 %.not.i.i63, label %.loopexit.i.i.preheader, label %bb.eq, !llvm.loop !71

bb.er:                                            ; preds = %bb.eo
  %i.aaj = getelementptr inbounds i8, ptr %.1.i244280, i64 -4
  br label %.loopexit.i.i.preheader

bb.es:                                            ; preds = %bb.eo
  %i.aak = getelementptr inbounds i8, ptr %.1.i244280, i64 -8
  br label %.loopexit.i.i.preheader

.loopexit.i.i.preheader:                          ; preds = %bb.eq, %bb.es, %bb.er, %bb.eo
  %.2.i.i.ph = phi ptr [ %.1.i244280, %bb.eo ], [ %i.aaj, %bb.er ], [ %i.aak, %bb.es ], [ %.015.i.i, %bb.eq ]
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.preheader, %.loopexit.i.i
  %.2.i.i = phi ptr [ %i.aal, %.loopexit.i.i ], [ %.2.i.i.ph, %.loopexit.i.i.preheader ]
  %.0.i.i60 = phi i32 [ %i.aaq, %.loopexit.i.i ], [ 0, %.loopexit.i.i.preheader ]
  %i.aal = getelementptr inbounds i8, ptr %.2.i.i, i64 -1 ; 3 uses
  %i.aam = shl i32 %.0.i.i60, 7
  %i.aan = load i8, ptr %i.aal, align 1, !tbaa !22
  %i.aao = and i8 %i.aan, 127
  %i.aap = zext nneg i8 %i.aao to i32
  %i.aaq = or disjoint i32 %i.aam, %i.aap         ; 2 uses
  %.not16.i.i = icmp eq i32 %i.aaq, %.0209.a
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
  %i.aaw = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.181, 4294967295 ; 2 uses
  %i.aax = load ptr, ptr %0, align 8, !tbaa !18
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aax, i64 16
  %i.aaz = ptrtoint ptr %i.aay to i64
  %i.aba = ptrtoint ptr %.1.i244280 to i64
  %i.abb = sub i64 %i.aaz, %i.aba
  %i.abc = icmp sgt i64 %i.aaw, %i.abb
  br i1 %i.abc, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.abd = call ptr @upb_EpsCopyInputStream_ReturnError_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %0) #12
  br label %upb_EpsCopyInputStream_ReadStringEphemeral.exit.i

bb.ev:                                            ; preds = %bb.et
  %i.abe = getelementptr inbounds nuw i8, ptr %.1.i244280, i64 %i.aaw
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
  %i.abg = and i32 %.0209.a, -8
  %i.abh = load i32, ptr %i.n, align 8, !tbaa !56
  %i.abi = call ptr @_upb_WireReader_SkipGroup_dont_copy_me__upb_internal_use_only(ptr noundef %.1.i244280, i32 noundef %i.abg, i32 noundef %i.abh, ptr noundef nonnull %0) #12
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %upb_EpsCopyInputStream_ReadStringEphemeral.exit.i, %_upb_Decoder_FindFieldStart.exit.i
  %.026.i = phi ptr [ %.1.i244280, %_upb_Decoder_FindFieldStart.exit.i ], [ %i.abi, %bb.ex ], [ %.0.i32.i, %upb_EpsCopyInputStream_ReadStringEphemeral.exit.i ] ; 3 uses
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
  %.not30.i61 = trunc i16 %i.aby to i1            ; 2 uses
  br i1 %.not30.i61, label %bb.fb, label %_upb_Message_AddUnknown_dont_copy_me__upb_internal_use_only.exit.i

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
  %i.acs = call zeroext i1 @_upb_Message_AddUnknownSlowPath_dont_copy_me__upb_internal_use_only(ptr noundef %2, ptr noundef %.sroa.0.0.i, i64 noundef %.sroa.5.0.i, ptr noundef nonnull %i.p, i1 noundef zeroext %.not30.i61) #12
  br i1 %i.acs, label %_upb_Decoder_DecodeField.exit, label %bb.fg

bb.fg:                                            ; preds = %_upb_Message_AddUnknown_dont_copy_me__upb_internal_use_only.exit.i
  %i.act = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.act, i32 noundef 1) #13
  unreachable

_upb_Decoder_DecodeWireValue.exit.thread.thread281: ; preds = %_upb_Decoder_DecodeWireValue.exit.thread.thread281.backedge, %_upb_Decoder_DecodeWireValue.exit.thread.thread281.preheader
  %.sroa.5.4 = phi i64 [ %.sroa.5.0, %_upb_Decoder_DecodeWireValue.exit.thread.thread281.preheader ], [ %.sroa.5.4.be, %_upb_Decoder_DecodeWireValue.exit.thread.thread281.backedge ] ; 13 uses
  %.sroa.0197.4 = phi ptr [ %.sroa.0197.0, %_upb_Decoder_DecodeWireValue.exit.thread.thread281.preheader ], [ %.sroa.0197.4.be, %_upb_Decoder_DecodeWireValue.exit.thread.thread281.backedge ] ; 13 uses
  %.0217 = phi ptr [ %.0217.ph, %_upb_Decoder_DecodeWireValue.exit.thread.thread281.preheader ], [ %.0217.be, %_upb_Decoder_DecodeWireValue.exit.thread.thread281.backedge ] ; 4 uses
  %.028.i = phi i32 [ 0, %_upb_Decoder_DecodeWireValue.exit.thread.thread281.preheader ], [ %.028.i.be, %_upb_Decoder_DecodeWireValue.exit.thread.thread281.backedge ] ; 13 uses
  %.sroa.0.0.i64 = phi ptr [ null, %_upb_Decoder_DecodeWireValue.exit.thread.thread281.preheader ], [ %.sroa.0.0.i64.be, %_upb_Decoder_DecodeWireValue.exit.thread.thread281.backedge ] ; 14 uses
  %.sroa.5.0.i64 = phi i64 [ 0, %_upb_Decoder_DecodeWireValue.exit.thread.thread281.preheader ], [ %.sroa.5.0.i64.be, %_upb_Decoder_DecodeWireValue.exit.thread.thread281.backedge ] ; 14 uses
  %.027.i = phi i32 [ 0, %_upb_Decoder_DecodeWireValue.exit.thread.thread281.preheader ], [ %.027.i.be, %_upb_Decoder_DecodeWireValue.exit.thread.thread281.backedge ] ; 16 uses
  %i.acu = load ptr, ptr %0, align 8, !tbaa !18
  %i.acv = ptrtoint ptr %.0217 to i64
  %i.acw = ptrtoint ptr %i.acu to i64
  %i.acx = sub i64 %i.acv, %i.acw                 ; 2 uses
  %i.acy = trunc i64 %i.acx to i32
  %i.acz = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.ada = icmp ult ptr %.0217, %i.acz
  br i1 %i.ada, label %upb_EpsCopyInputStream_IsDone.exit163.thread266, label %bb.fh, !prof !20

bb.fh:                                            ; preds = %_upb_Decoder_DecodeWireValue.exit.thread.thread281
  %sext.i.i159 = shl i64 %i.acx, 32
  %i.adb = ashr exact i64 %sext.i.i159, 32
  %i.adc = load i64, ptr %i.e, align 8, !tbaa !21
  %i.add = icmp eq i64 %i.adb, %i.adc
  br i1 %i.add, label %upb_EpsCopyInputStream_IsDone.exit163.thread, label %upb_EpsCopyInputStream_IsDone.exit163, !prof !20

upb_EpsCopyInputStream_IsDone.exit163:            ; preds = %bb.fh
  %i.ade = call ptr @upb_EpsCopyInputStream_IsDoneFallback_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %0, ptr noundef %.0217, i32 noundef %i.acy) #12 ; 2 uses
  %.not.i161 = icmp eq ptr %i.ade, null
  br i1 %.not.i161, label %upb_EpsCopyInputStream_IsDone.exit163.thread, label %upb_EpsCopyInputStream_IsDone.exit163.thread266

upb_EpsCopyInputStream_IsDone.exit163.thread266:  ; preds = %_upb_Decoder_DecodeWireValue.exit.thread.thread281, %upb_EpsCopyInputStream_IsDone.exit163
  %.2219269 = phi ptr [ %i.ade, %upb_EpsCopyInputStream_IsDone.exit163 ], [ %.0217, %_upb_Decoder_DecodeWireValue.exit.thread.thread281 ] ; 3 uses
  %i.adf = load i8, ptr %.2219269, align 1, !tbaa !22 ; 3 uses
  %i.adg = icmp sgt i8 %i.adf, -1
  br i1 %i.adg, label %bb.fi, label %upb_EpsCopyInputStream_HasErrorHandler.exit.i156, !prof !20

bb.fi:                                            ; preds = %upb_EpsCopyInputStream_IsDone.exit163.thread266
  %i.adh = zext nneg i8 %i.adf to i32
  %i.adi = getelementptr inbounds nuw i8, ptr %.2219269, i64 1
  br label %upb_WireReader_ReadTag.exit.i

upb_EpsCopyInputStream_HasErrorHandler.exit.i156: ; preds = %upb_EpsCopyInputStream_IsDone.exit163.thread266
  %i.adj = zext i8 %i.adf to i64
  %i.adk = call { ptr, i64 } @_upb_WireReader_ReadLongTag_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %.2219269, i64 noundef %i.adj, ptr noundef nonnull %0) #12, !inline_history !78 ; 2 uses
  %i.adl = extractvalue { ptr, i64 } %i.adk, 0
  %i.adm = extractvalue { ptr, i64 } %i.adk, 1
  %i.adn = trunc i64 %i.adm to i32
  br label %upb_WireReader_ReadTag.exit.i

upb_WireReader_ReadTag.exit.i:                    ; preds = %upb_EpsCopyInputStream_HasErrorHandler.exit.i156, %bb.fi
  %.0216 = phi i32 [ %i.adh, %bb.fi ], [ %i.adn, %upb_EpsCopyInputStream_HasErrorHandler.exit.i156 ] ; 3 uses
  %.0.i.i66 = phi ptr [ %i.adi, %bb.fi ], [ %i.adl, %upb_EpsCopyInputStream_HasErrorHandler.exit.i156 ] ; 16 uses
  switch i32 %.0216, label %bb.fv [
    i32 12, label %_upb_Decoder_DecodeField.exit
    i32 16, label %bb.fj
    i32 26, label %bb.fn
  ]

bb.fj:                                            ; preds = %upb_WireReader_ReadTag.exit.i
  %i.ado = load i8, ptr %.0.i.i66, align 1, !tbaa !22 ; 2 uses
  %i.adp = icmp sgt i8 %i.ado, -1
  %i.adq = zext i8 %i.ado to i64                  ; 2 uses
  br i1 %i.adp, label %bb.fk, label %upb_EpsCopyInputStream_HasErrorHandler.exit.i152, !prof !20

bb.fk:                                            ; preds = %bb.fj
  %i.adr = getelementptr inbounds nuw i8, ptr %.0.i.i66, i64 1
  br label %upb_WireReader_ReadVarint.exit.i

upb_EpsCopyInputStream_HasErrorHandler.exit.i152: ; preds = %bb.fj
  %i.ads = call { ptr, i64 } @_upb_WireReader_ReadLongVarint_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %.0.i.i66, i64 noundef %i.adq, ptr noundef nonnull %0) #12, !inline_history !78 ; 2 uses
  %i.adt = extractvalue { ptr, i64 } %i.ads, 0
  %i.adu = extractvalue { ptr, i64 } %i.ads, 1
  br label %upb_WireReader_ReadVarint.exit.i

upb_WireReader_ReadVarint.exit.i:                 ; preds = %upb_EpsCopyInputStream_HasErrorHandler.exit.i152, %bb.fk
  %.0215 = phi i64 [ %i.adq, %bb.fk ], [ %i.adu, %upb_EpsCopyInputStream_HasErrorHandler.exit.i152 ]
  %.0.i38.i = phi ptr [ %i.adr, %bb.fk ], [ %i.adt, %upb_EpsCopyInputStream_HasErrorHandler.exit.i152 ] ; 3 uses
  %i.adv = and i32 %.027.i, 1
  %.not36.i69 = icmp eq i32 %i.adv, 0
  br i1 %.not36.i69, label %bb.fl, label %_upb_Decoder_DecodeWireValue.exit.thread.thread281.backedge

bb.fl:                                            ; preds = %upb_WireReader_ReadVarint.exit.i
  %i.adw = or disjoint i32 %.027.i, 1             ; 2 uses
  %i.adx = trunc i64 %.0215 to i32                ; 3 uses
  %i.ady = and i32 %.027.i, 2
  %.not37.i71 = icmp eq i32 %i.ady, 0
  br i1 %.not37.i71, label %_upb_Decoder_DecodeWireValue.exit.thread.thread281.backedge, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %5 = trunc i64 %.sroa.5.0.i64 to i32
  call fastcc void @upb_Decoder_AddMessageSetItem(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, i32 noundef %i.adx, ptr noundef %.sroa.0.0.i64, i32 noundef %5), !inline_history !78
  br label %_upb_Decoder_DecodeWireValue.exit.thread.thread281.backedge

bb.fn:                                            ; preds = %upb_WireReader_ReadTag.exit.i
  %i.adz = load i8, ptr %.0.i.i66, align 1, !tbaa !22 ; 2 uses
  %i.aea = icmp sgt i8 %i.adz, -1
  %6 = zext i8 %i.adz to i64                      ; 2 uses
  br i1 %i.aea, label %bb.fo, label %upb_EpsCopyInputStream_HasErrorHandler.exit.i148, !prof !20

bb.fo:                                            ; preds = %bb.fn
  %i.aeb = getelementptr inbounds nuw i8, ptr %.0.i.i66, i64 1
  br label %upb_WireReader_ReadSize.exit.i

upb_EpsCopyInputStream_HasErrorHandler.exit.i148: ; preds = %bb.fn
  %i.aec = call { ptr, i64 } @_upb_WireReader_ReadLongSize_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %.0.i.i66, i64 noundef %6, ptr noundef nonnull %0) #12, !inline_history !78 ; 2 uses
  %i.aed = extractvalue { ptr, i64 } %i.aec, 0
  %i.aee = extractvalue { ptr, i64 } %i.aec, 1
  br label %upb_WireReader_ReadSize.exit.i

upb_WireReader_ReadSize.exit.i:                   ; preds = %upb_EpsCopyInputStream_HasErrorHandler.exit.i148, %bb.fo
  %.0208 = phi i64 [ %6, %bb.fo ], [ %i.aee, %upb_EpsCopyInputStream_HasErrorHandler.exit.i148 ]
  %.0.i39.i = phi ptr [ %i.aeb, %bb.fo ], [ %i.aed, %upb_EpsCopyInputStream_HasErrorHandler.exit.i148 ] ; 2 uses
  %7 = and i64 %.0208, 4294967295                 ; 3 uses
  %i.aef = load ptr, ptr %0, align 8, !tbaa !18
  %i.aeg = load i64, ptr %i.l, align 8, !tbaa !51 ; 2 uses
  %i.aeh = icmp eq i64 %i.aeg, 0
  %i.aei = select i1 %i.aeh, i64 16, i64 0
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aef, i64 %i.aei
  %i.aek = ptrtoint ptr %i.aej to i64
  %i.ael = ptrtoint ptr %.0.i39.i to i64          ; 2 uses
  %i.aem = sub i64 %i.aek, %i.ael
  %8 = icmp sgt i64 %7, %i.aem
  br i1 %8, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %upb_WireReader_ReadSize.exit.i
  %i.aen = call ptr @upb_EpsCopyInputStream_ReturnError_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %0) #12
  br label %upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit

bb.fq:                                            ; preds = %upb_WireReader_ReadSize.exit.i
  %.val14.i = load ptr, ptr %i.m, align 8, !tbaa !52 ; 2 uses
  %i.aeo = ptrtoint ptr %.val14.i to i64
  %i.aep = sub i64 %i.aeg, %i.aeo
  %i.aeq = getelementptr i8, ptr %.val14.i, i64 %i.aep
  %i.aer = getelementptr i8, ptr %i.aeq, i64 %i.ael
  %i.aes = getelementptr inbounds nuw i8, ptr %.0.i39.i, i64 %7
  br label %upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit

upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit: ; preds = %bb.fp, %bb.fq
  %.sroa.5.6 = phi i64 [ %.sroa.5.4, %bb.fp ], [ %7, %bb.fq ] ; 5 uses
  %.sroa.0198.0 = phi ptr [ %.sroa.0197.4, %bb.fp ], [ %i.aer, %bb.fq ] ; 5 uses
  %.0.i146 = phi ptr [ %i.aen, %bb.fp ], [ %i.aes, %bb.fq ] ; 4 uses
  %.not.i67 = icmp eq ptr %.0.i146, null
  br i1 %.not.i67, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit
  %i.aet = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.aet, i32 noundef 2) #13, !inline_history !78
  unreachable

bb.fs:                                            ; preds = %upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit
  %i.aeu = and i32 %.027.i, 2
  %.not34.i = icmp eq i32 %i.aeu, 0
  br i1 %.not34.i, label %bb.ft, label %_upb_Decoder_DecodeWireValue.exit.thread.thread281.backedge

bb.ft:                                            ; preds = %bb.fs
  %i.aev = or disjoint i32 %.027.i, 2             ; 2 uses
  %i.aew = and i32 %.027.i, 1
  %.not35.i = icmp eq i32 %i.aew, 0
  br i1 %.not35.i, label %_upb_Decoder_DecodeWireValue.exit.thread.thread281.backedge, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %9 = trunc i64 %.sroa.5.6 to i32
  call fastcc void @upb_Decoder_AddMessageSetItem(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, i32 noundef %.028.i, ptr noundef %.sroa.0198.0, i32 noundef %9), !inline_history !78
  br label %_upb_Decoder_DecodeWireValue.exit.thread.thread281.backedge

bb.fv:                                            ; preds = %upb_WireReader_ReadTag.exit.i
  %i.aex = trunc i32 %.0216 to i8
  %i.aey = and i8 %i.aex, 7
  switch i8 %i.aey, label %bb.gf [
    i8 0, label %bb.fw
    i8 5, label %bb.fy
    i8 1, label %bb.fz
    i8 2, label %bb.ga
    i8 3, label %bb.ge
  ]

bb.fw:                                            ; preds = %bb.fv
  %i.aez = load i8, ptr %.0.i.i66, align 1, !tbaa !22 ; 2 uses
  %i.afa = icmp sgt i8 %i.aez, -1
  br i1 %i.afa, label %bb.fx, label %upb_EpsCopyInputStream_HasErrorHandler.exit.i.i.i, !prof !20

bb.fx:                                            ; preds = %bb.fw
  %i.afb = getelementptr inbounds nuw i8, ptr %.0.i.i66, i64 1
  br label %_upb_Decoder_DecodeWireValue.exit.thread.thread281.backedge

upb_EpsCopyInputStream_HasErrorHandler.exit.i.i.i: ; preds = %bb.fw
  %i.afc = zext i8 %i.aez to i64
  %i.afd = call { ptr, i64 } @_upb_WireReader_ReadLongVarint_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %.0.i.i66, i64 noundef %i.afc, ptr noundef nonnull %0) #12
  %i.afe = extractvalue { ptr, i64 } %i.afd, 0
  br label %_upb_Decoder_DecodeWireValue.exit.thread.thread281.backedge

_upb_Decoder_DecodeWireValue.exit.thread.thread281.backedge: ; preds = %upb_EpsCopyInputStream_HasErrorHandler.exit.i.i.i, %bb.gf, %bb.ge, %bb.gd, %bb.gc, %bb.fz, %bb.fy, %bb.fx, %bb.fs, %bb.fu, %bb.ft, %upb_WireReader_ReadVarint.exit.i, %bb.fl, %bb.fm
  %.sroa.5.4.be = phi i64 [ %.sroa.5.4, %bb.gc ], [ %.sroa.5.4, %bb.gd ], [ %.sroa.5.6, %bb.fs ], [ %.sroa.5.4, %bb.gf ], [ %.sroa.5.4, %upb_WireReader_ReadVarint.exit.i ], [ %.sroa.5.4, %bb.fm ], [ %.sroa.5.4, %bb.fl ], [ %.sroa.5.6, %bb.ft ], [ %.sroa.5.6, %bb.fu ], [ %.sroa.5.4, %bb.fx ], [ %.sroa.5.4, %upb_EpsCopyInputStream_HasErrorHandler.exit.i.i.i ], [ %.sroa.5.4, %bb.ge ], [ %.sroa.5.4, %bb.fy ], [ %.sroa.5.4, %bb.fz ]
  %.sroa.0197.4.be = phi ptr [ %.sroa.0197.4, %bb.gc ], [ %.sroa.0197.4, %bb.gd ], [ %.sroa.0198.0, %bb.fs ], [ %.sroa.0197.4, %bb.gf ], [ %.sroa.0197.4, %upb_WireReader_ReadVarint.exit.i ], [ %.sroa.0197.4, %bb.fm ], [ %.sroa.0197.4, %bb.fl ], [ %.sroa.0198.0, %bb.ft ], [ %.sroa.0198.0, %bb.fu ], [ %.sroa.0197.4, %bb.fx ], [ %.sroa.0197.4, %upb_EpsCopyInputStream_HasErrorHandler.exit.i.i.i ], [ %.sroa.0197.4, %bb.ge ], [ %.sroa.0197.4, %bb.fy ], [ %.sroa.0197.4, %bb.fz ]
  %.0217.be = phi ptr [ %i.afs, %bb.gc ], [ %i.aft, %bb.gd ], [ %.0.i146, %bb.fs ], [ %i.afw, %bb.gf ], [ %.0.i38.i, %upb_WireReader_ReadVarint.exit.i ], [ %.0.i38.i, %bb.fm ], [ %.0.i38.i, %bb.fl ], [ %.0.i146, %bb.ft ], [ %.0.i146, %bb.fu ], [ %i.afb, %bb.fx ], [ %i.afe, %upb_EpsCopyInputStream_HasErrorHandler.exit.i.i.i ], [ %i.afv, %bb.ge ], [ %i.aff, %bb.fy ], [ %i.afg, %bb.fz ]
  %.028.i.be = phi i32 [ %.028.i, %bb.gc ], [ %.028.i, %bb.gd ], [ %.028.i, %bb.fs ], [ %.028.i, %bb.gf ], [ %.028.i, %upb_WireReader_ReadVarint.exit.i ], [ %i.adx, %bb.fm ], [ %i.adx, %bb.fl ], [ %.028.i, %bb.ft ], [ %.028.i, %bb.fu ], [ %.028.i, %bb.fx ], [ %.028.i, %upb_EpsCopyInputStream_HasErrorHandler.exit.i.i.i ], [ %.028.i, %bb.ge ], [ %.028.i, %bb.fy ], [ %.028.i, %bb.fz ]
  %.sroa.0.0.i64.be = phi ptr [ %.sroa.0.0.i64, %bb.gc ], [ %.sroa.0.0.i64, %bb.gd ], [ %.sroa.0.0.i64, %bb.fs ], [ %.sroa.0.0.i64, %bb.gf ], [ %.sroa.0.0.i64, %upb_WireReader_ReadVarint.exit.i ], [ %.sroa.0.0.i64, %bb.fm ], [ %.sroa.0.0.i64, %bb.fl ], [ %.sroa.0198.0, %bb.ft ], [ %.sroa.0.0.i64, %bb.fu ], [ %.sroa.0.0.i64, %bb.fx ], [ %.sroa.0.0.i64, %upb_EpsCopyInputStream_HasErrorHandler.exit.i.i.i ], [ %.sroa.0.0.i64, %bb.ge ], [ %.sroa.0.0.i64, %bb.fy ], [ %.sroa.0.0.i64, %bb.fz ]
  %.sroa.5.0.i64.be = phi i64 [ %.sroa.5.0.i64, %bb.gc ], [ %.sroa.5.0.i64, %bb.gd ], [ %.sroa.5.0.i64, %bb.fs ], [ %.sroa.5.0.i64, %bb.gf ], [ %.sroa.5.0.i64, %upb_WireReader_ReadVarint.exit.i ], [ %.sroa.5.0.i64, %bb.fm ], [ %.sroa.5.0.i64, %bb.fl ], [ %.sroa.5.6, %bb.ft ], [ %.sroa.5.0.i64, %bb.fu ], [ %.sroa.5.0.i64, %bb.fx ], [ %.sroa.5.0.i64, %upb_EpsCopyInputStream_HasErrorHandler.exit.i.i.i ], [ %.sroa.5.0.i64, %bb.ge ], [ %.sroa.5.0.i64, %bb.fy ], [ %.sroa.5.0.i64, %bb.fz ]
  %.027.i.be = phi i32 [ %.027.i, %bb.gc ], [ %.027.i, %bb.gd ], [ %.027.i, %bb.fs ], [ %.027.i, %bb.gf ], [ %.027.i, %upb_WireReader_ReadVarint.exit.i ], [ %i.adw, %bb.fm ], [ %i.adw, %bb.fl ], [ %i.aev, %bb.ft ], [ %i.aev, %bb.fu ], [ %.027.i, %bb.fx ], [ %.027.i, %upb_EpsCopyInputStream_HasErrorHandler.exit.i.i.i ], [ %.027.i, %bb.ge ], [ %.027.i, %bb.fy ], [ %.027.i, %bb.fz ]
  br label %_upb_Decoder_DecodeWireValue.exit.thread.thread281, !llvm.loop !79

bb.fy:                                            ; preds = %bb.fv
  %i.aff = getelementptr inbounds nuw i8, ptr %.0.i.i66, i64 4
  br label %_upb_Decoder_DecodeWireValue.exit.thread.thread281.backedge

bb.fz:                                            ; preds = %bb.fv
  %i.afg = getelementptr inbounds nuw i8, ptr %.0.i.i66, i64 8
  br label %_upb_Decoder_DecodeWireValue.exit.thread.thread281.backedge

bb.ga:                                            ; preds = %bb.fv
  %i.afh = load i8, ptr %.0.i.i66, align 1, !tbaa !22 ; 2 uses
  %i.afi = icmp sgt i8 %i.afh, -1
  %i.afj = zext i8 %i.afh to i64                  ; 2 uses
  br i1 %i.afi, label %bb.gb, label %upb_EpsCopyInputStream_HasErrorHandler.exit.i.i, !prof !20

bb.gb:                                            ; preds = %bb.ga
  %i.afk = getelementptr inbounds nuw i8, ptr %.0.i.i66, i64 1
  br label %upb_WireReader_ReadSize.exit.thread.i

upb_EpsCopyInputStream_HasErrorHandler.exit.i.i:  ; preds = %bb.ga
  %i.afl = call { ptr, i64 } @_upb_WireReader_ReadLongSize_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %.0.i.i66, i64 noundef %i.afj, ptr noundef nonnull %0) #12 ; 2 uses
  %i.afm = extractvalue { ptr, i64 } %i.afl, 1
  %i.afn = extractvalue { ptr, i64 } %i.afl, 0    ; 2 uses
  %.not.i143 = icmp eq ptr %i.afn, null
  br i1 %.not.i143, label %bb.gc, label %upb_WireReader_ReadSize.exit.thread.i

upb_WireReader_ReadSize.exit.thread.i:            ; preds = %upb_EpsCopyInputStream_HasErrorHandler.exit.i.i, %bb.gb
  %.0.i28.i = phi ptr [ %i.afn, %upb_EpsCopyInputStream_HasErrorHandler.exit.i.i ], [ %i.afk, %bb.gb ] ; 2 uses
  %.02327.i = phi i64 [ %i.afm, %upb_EpsCopyInputStream_HasErrorHandler.exit.i.i ], [ %i.afj, %bb.gb ]
  %.val.i144 = load ptr, ptr %0, align 8, !tbaa !18
  %.val21.i = load i64, ptr %i.e, align 8, !tbaa !21
  %sext.i = shl i64 %.02327.i, 32
  %i.afo = ashr exact i64 %sext.i, 32             ; 2 uses
  %i.afp = ptrtoint ptr %.0.i28.i to i64
  %i.afq = ptrtoint ptr %.val.i144 to i64
  %.neg.i.i = sub i64 %i.afq, %i.afp
  %i.afr = add i64 %.neg.i.i, %.val21.i
  %.not29.i = icmp slt i64 %i.afr, %i.afo
  br i1 %.not29.i, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %upb_WireReader_ReadSize.exit.thread.i, %upb_EpsCopyInputStream_HasErrorHandler.exit.i.i
  %i.afs = call ptr @upb_EpsCopyInputStream_ReturnError_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %0) #12
  br label %_upb_Decoder_DecodeWireValue.exit.thread.thread281.backedge

bb.gd:                                            ; preds = %upb_WireReader_ReadSize.exit.thread.i
  %i.aft = getelementptr inbounds i8, ptr %.0.i28.i, i64 %i.afo
  br label %_upb_Decoder_DecodeWireValue.exit.thread.thread281.backedge

bb.ge:                                            ; preds = %bb.fv
  %i.afu = load i32, ptr %i.n, align 8, !tbaa !56
  %i.afv = call ptr @_upb_WireReader_SkipGroup_dont_copy_me__upb_internal_use_only(ptr noundef %.0.i.i66, i32 noundef %.0216, i32 noundef %i.afu, ptr noundef nonnull %0) #12
  br label %_upb_Decoder_DecodeWireValue.exit.thread.thread281.backedge

bb.gf:                                            ; preds = %bb.fv
  %i.afw = call ptr @upb_EpsCopyInputStream_ReturnError_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %0) #12
  br label %_upb_Decoder_DecodeWireValue.exit.thread.thread281.backedge

upb_EpsCopyInputStream_IsDone.exit163.thread:     ; preds = %bb.fh, %upb_EpsCopyInputStream_IsDone.exit163
  %i.afx = getelementptr inbounds nuw i8, ptr %0, i64 208
  call fastcc void @upb_ErrorHandler_ThrowError(ptr noundef nonnull %i.afx, i32 noundef 2) #13, !inline_history !78
  unreachable

_upb_Decoder_DecodeField.exit:                    ; preds = %upb_WireReader_ReadTag.exit.i, %bb.el, %bb.ek, %bb.ej, %_upb_Decoder_ReadString2.exit128, %bb.eb, %_upb_Decoder_RecurseSubMessage.exit52.i, %_upb_Decoder_RecurseSubMessage.exit.i57, %bb.ck, %_upb_Decoder_DecodeVarintPacked.exit.i, %_upb_Decoder_RecurseSubMessage.exit73.i, %_upb_Decoder_RecurseSubMessage.exit.i, %_upb_Decoder_ReadString2.exit, %bb.av, %bb.au, %_upb_Decoder_Reserve.exit84, %bb.bv, %_upb_Decoder_DecodeToMap.exit, %_upb_Message_AddUnknown_dont_copy_me__upb_internal_use_only.exit.thread.i, %_upb_Message_AddUnknown_dont_copy_me__upb_internal_use_only.exit.i
  %.sroa.5.3 = phi i64 [ %.sroa.5.0, %_upb_Message_AddUnknown_dont_copy_me__upb_internal_use_only.exit.i ], [ %.sroa.5.0, %_upb_Decoder_DecodeToMap.exit ], [ %.sroa.5.0, %bb.el ], [ %.sroa.5.0, %bb.ek ], [ %.sroa.5.0, %bb.ej ], [ %.sroa.5.0, %_upb_Decoder_ReadString2.exit128 ], [ %.sroa.5.0, %bb.eb ], [ %.sroa.5.0, %_upb_Decoder_RecurseSubMessage.exit52.i ], [ %.sroa.5.0, %_upb_Decoder_RecurseSubMessage.exit.i57 ], [ %.sroa.5.0, %bb.ck ], [ %.sroa.5.0, %_upb_Decoder_DecodeVarintPacked.exit.i ], [ %.sroa.5.0, %_upb_Decoder_RecurseSubMessage.exit73.i ], [ %.sroa.5.0, %_upb_Decoder_RecurseSubMessage.exit.i ], [ %.sroa.5.0, %_upb_Decoder_ReadString2.exit ], [ %.sroa.5.0, %bb.av ], [ %.sroa.5.0, %bb.au ], [ %.sroa.5.0, %_upb_Decoder_Reserve.exit84 ], [ %.sroa.5.0, %bb.bv ], [ %.sroa.5.0, %_upb_Message_AddUnknown_dont_copy_me__upb_internal_use_only.exit.thread.i ], [ %.sroa.5.4, %upb_WireReader_ReadTag.exit.i ]
  %.sroa.0197.3 = phi ptr [ %.sroa.0197.0, %_upb_Message_AddUnknown_dont_copy_me__upb_internal_use_only.exit.i ], [ %.sroa.0197.0, %_upb_Decoder_DecodeToMap.exit ], [ %.sroa.0197.0, %bb.el ], [ %.sroa.0197.0, %bb.ek ], [ %.sroa.0197.0, %bb.ej ], [ %.sroa.0197.0, %_upb_Decoder_ReadString2.exit128 ], [ %.sroa.0197.0, %bb.eb ], [ %.sroa.0197.0, %_upb_Decoder_RecurseSubMessage.exit52.i ], [ %.sroa.0197.0, %_upb_Decoder_RecurseSubMessage.exit.i57 ], [ %.sroa.0197.0, %bb.ck ], [ %.sroa.0197.0, %_upb_Decoder_DecodeVarintPacked.exit.i ], [ %.sroa.0197.0, %_upb_Decoder_RecurseSubMessage.exit73.i ], [ %.sroa.0197.0, %_upb_Decoder_RecurseSubMessage.exit.i ], [ %.sroa.0197.0, %_upb_Decoder_ReadString2.exit ], [ %.sroa.0197.0, %bb.av ], [ %.sroa.0197.0, %bb.au ], [ %.sroa.0197.0, %_upb_Decoder_Reserve.exit84 ], [ %.sroa.0197.0, %bb.bv ], [ %.sroa.0197.0, %_upb_Message_AddUnknown_dont_copy_me__upb_internal_use_only.exit.thread.i ], [ %.sroa.0197.4, %upb_WireReader_ReadTag.exit.i ]
  %.sroa.4.3 = phi i64 [ %.sroa.4.0, %_upb_Message_AddUnknown_dont_copy_me__upb_internal_use_only.exit.i ], [ %.sroa.4.0, %_upb_Decoder_DecodeToMap.exit ], [ %.sroa.4.0, %bb.el ], [ %.sroa.4.0, %bb.ek ], [ %.sroa.4.0, %bb.ej ], [ %.sroa.4.0, %_upb_Decoder_ReadString2.exit128 ], [ %.sroa.4.0, %bb.eb ], [ %.sroa.4.0, %_upb_Decoder_RecurseSubMessage.exit52.i ], [ %.sroa.4.0, %_upb_Decoder_RecurseSubMessage.exit.i57 ], [ %.sroa.4.0, %bb.ck ], [ %.sroa.4.0, %_upb_Decoder_DecodeVarintPacked.exit.i ], [ %.sroa.4.0, %_upb_Decoder_RecurseSubMessage.exit73.i ], [ %.sroa.4.0, %_upb_Decoder_RecurseSubMessage.exit.i ], [ %.sroa.4.0, %_upb_Decoder_ReadString2.exit ], [ %.sroa.4.0, %bb.av ], [ %.sroa.4.0, %bb.au ], [ %.sroa.4.6, %_upb_Decoder_Reserve.exit84 ], [ %.sroa.4.6, %bb.bv ], [ %.sroa.4.0, %_upb_Message_AddUnknown_dont_copy_me__upb_internal_use_only.exit.thread.i ], [ %.sroa.4.0, %upb_WireReader_ReadTag.exit.i ]
  %.sroa.0188.3 = phi ptr [ %.sroa.0188.0, %_upb_Message_AddUnknown_dont_copy_me__upb_internal_use_only.exit.i ], [ %.sroa.0188.0, %_upb_Decoder_DecodeToMap.exit ], [ %.sroa.0188.0, %bb.el ], [ %.sroa.0188.0, %bb.ek ], [ %.sroa.0188.0, %bb.ej ], [ %.sroa.0188.0, %_upb_Decoder_ReadString2.exit128 ], [ %.sroa.0188.0, %bb.eb ], [ %.sroa.0188.0, %_upb_Decoder_RecurseSubMessage.exit52.i ], [ %.sroa.0188.0, %_upb_Decoder_RecurseSubMessage.exit.i57 ], [ %.sroa.0188.0, %bb.ck ], [ %.sroa.0188.0, %_upb_Decoder_DecodeVarintPacked.exit.i ], [ %.sroa.0188.0, %_upb_Decoder_RecurseSubMessage.exit73.i ], [ %.sroa.0188.0, %_upb_Decoder_RecurseSubMessage.exit.i ], [ %.sroa.0188.0, %_upb_Decoder_ReadString2.exit ], [ %.sroa.0188.0, %bb.av ], [ %.sroa.0188.0, %bb.au ], [ %.sroa.0189.0, %_upb_Decoder_Reserve.exit84 ], [ %.sroa.0189.0, %bb.bv ], [ %.sroa.0188.0, %_upb_Message_AddUnknown_dont_copy_me__upb_internal_use_only.exit.thread.i ], [ %.sroa.0188.0, %upb_WireReader_ReadTag.exit.i ]
  %.0.i15 = phi ptr [ %.026.i, %_upb_Message_AddUnknown_dont_copy_me__upb_internal_use_only.exit.i ], [ %i.tv, %_upb_Decoder_DecodeToMap.exit ], [ %.1.i252, %bb.el ], [ %.1.i252, %bb.ek ], [ %.1.i252, %bb.ej ], [ %.0.i.i.i119, %_upb_Decoder_ReadString2.exit128 ], [ %i.yz, %bb.eb ], [ %i.yq, %_upb_Decoder_RecurseSubMessage.exit52.i ], [ %i.xp, %_upb_Decoder_RecurseSubMessage.exit.i57 ], [ %i.ri, %bb.ck ], [ %.1213255, %_upb_Decoder_DecodeVarintPacked.exit.i ], [ %i.mz, %_upb_Decoder_RecurseSubMessage.exit73.i ], [ %i.lz, %_upb_Decoder_RecurseSubMessage.exit.i ], [ %.0.i.i.i90, %_upb_Decoder_ReadString2.exit ], [ %i.ix, %bb.av ], [ %.1.i252, %bb.au ], [ %.0.i85, %_upb_Decoder_Reserve.exit84 ], [ %.0.i85, %bb.bv ], [ %.026.i, %_upb_Message_AddUnknown_dont_copy_me__upb_internal_use_only.exit.thread.i ], [ %.0.i.i66, %upb_WireReader_ReadTag.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %.pre301 = load i8, ptr %i.f, align 1, !tbaa !80, !range !67
  %i.afy = trunc nuw i8 %.pre301 to i1
  br i1 %i.afy, label %_upb_Decoder_DecodeField.exit.thread, label %bb.b, !llvm.loop !81

_upb_Decoder_DecodeField.exit.thread:             ; preds = %_upb_Decoder_DecodeField.exit, %upb_EpsCopyInputStream_IsDone.exit, %bb.c, %bb.e
  %.0.i372 = phi ptr [ %.0.i16, %bb.e ], [ %.0, %bb.c ], [ null, %upb_EpsCopyInputStream_IsDone.exit ], [ %.0.i15, %_upb_Decoder_DecodeField.exit ] ; 3 uses
  store i8 0, ptr %i.f, align 1, !tbaa !80
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.critedge, label %bb.gg

bb.gg:                                            ; preds = %_upb_Decoder_DecodeField.exit.thread
  %i.afz = getelementptr inbounds nuw i8, ptr %3, i64 15
  %i.aga = load i8, ptr %i.afz, align 1, !tbaa !22
  %.not285 = icmp eq i8 %i.aga, 0
  br i1 %.not285, label %.critedge, label %bb.gh, !prof !20

bb.gh:                                            ; preds = %bb.gg
  %i.agb = call ptr @_upb_Decoder_CheckRequired(ptr noundef nonnull %0, ptr noundef %.0.i372, ptr noundef %2, ptr noundef nonnull %3) #12
  br label %.critedge

.critedge:                                        ; preds = %bb.gg, %_upb_Decoder_DecodeField.exit.thread, %bb.gh
  %i.agc = phi ptr [ %i.agb, %bb.gh ], [ %.0.i372, %_upb_Decoder_DecodeField.exit.thread ], [ %.0.i372, %bb.gg ]
  ret ptr %i.agc
}

declare ptr @_upb_Decoder_CheckRequired(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden zeroext range(i16 1, 0) i16 @upb_DecodeOptions_GetEffectiveMaxDepth(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = lshr i32 %0, 16                          ; 2 uses
  %i.b = trunc nuw i32 %i.a to i16
  %.not = icmp eq i32 %i.a, 0
  %narrow = select i1 %.not, i16 100, i16 %i.b
  ret i16 %narrow
}

; Function Attrs: nounwind uwtable
define hidden i32 @upb_Decode(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #4 {
bb.a:
  %7 = alloca %struct.upb_Decoder, align 8        ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 208 ; 2 uses
  store i32 0, ptr %i.a, align 8, !tbaa !82
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %0, ptr %i.b, align 8, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr null, ptr %i.c, align 8, !tbaa !73
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr %i.a, ptr %i.d, align 8, !tbaa !83
  %i.e = icmp ult i64 %1, 17
  %.sink28.i.i.sroa.gep = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %.sink28.i.i.sroa.gep8 = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 57 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  %.not.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr align 1 %0, i64 %1, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = ptrtoint ptr %0 to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  store i64 %i.i, ptr %.sink28.i.i.sroa.gep8, align 8, !tbaa !51
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %1 ; 2 uses
  store ptr %i.j, ptr %7, align 8, !tbaa !18
  br label %upb_Decoder_Init.exit

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -16 ; 2 uses
  store ptr %i.l, ptr %7, align 8, !tbaa !18
  store i64 16, ptr %.sink28.i.i.sroa.gep, align 8, !tbaa !21
  br label %upb_Decoder_Init.exit

upb_Decoder_Init.exit:                            ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.f, %bb.d ], [ %0, %bb.e ]
  %.sink28.i.i.sroa.phi = phi ptr [ %.sink28.i.i.sroa.gep, %bb.d ], [ %.sink28.i.i.sroa.gep8, %bb.e ]
  %i.m = phi ptr [ %i.j, %bb.d ], [ %i.l, %bb.e ]
  store i64 0, ptr %.sink28.i.i.sroa.phi, align 8, !tbaa !32
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.m, ptr %i.n, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 56
  store i8 0, ptr %i.o, align 8, !tbaa !84
  %i.p = shl i32 %5, 1
  %i.q = and i32 %i.p, 16
  %spec.select.i = or i32 %i.q, %5
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 96
  store ptr %4, ptr %i.r, align 8, !tbaa !7
  %i.s = lshr i32 %5, 16                          ; 2 uses
  %.not.i20.i = icmp eq i32 %i.s, 0
  %i.t = select i1 %.not.i20.i, i32 100, i32 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 112
  store i32 %i.t, ptr %i.u, align 8, !tbaa !56
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 116
  store i32 -1, ptr %i.v, align 4, !tbaa !23
  %i.w = trunc i32 %spec.select.i to i16
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 120
  store i16 %i.w, ptr %i.x, align 8, !tbaa !37
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 122
  store i8 0, ptr %i.y, align 2, !tbaa !85
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 123
  store i8 0, ptr %i.z, align 1, !tbaa !80
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 128
  call void @_upb_Arena_SwapIn_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.aa, ptr noundef %6) #12
  %i.ab = call fastcc i32 @upb_Decoder_Decode(ptr noundef %7, ptr noundef %.0.i, ptr noundef %2, ptr noundef %3, ptr noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  ret i32 %i.ab
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @upb_Decoder_Decode(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = call i32 @__sigsetjmp(ptr noundef nonnull %i.a, i32 noundef 0) #14
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.e = call ptr @_upb_Decoder_DecodeMessage(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3), !inline_history !86 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.g = load i32, ptr %i.f, align 4, !tbaa !23
  %.not.i = icmp eq i32 %i.g, -1
  br i1 %.not.i, label %bb.c, label %_upb_Decoder_DecodeTop.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.i = load i8, ptr %i.h, align 2, !tbaa !85, !range !67, !noundef !68
  %i.j = trunc nuw i8 %i.i to i1
  %..i = select i1 %i.j, i32 5, i32 0
  br label %_upb_Decoder_DecodeTop.exit

_upb_Decoder_DecodeTop.exit:                      ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ 2, %bb.b ], [ %..i, %bb.c ]
  store i32 %.0.i, ptr %i.d, align 8, !tbaa !87
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_upb_Decoder_DecodeTop.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @_upb_Arena_SwapOut_dont_copy_me__upb_internal_use_only(ptr noundef %4, ptr noundef nonnull %i.k) #12
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.m = load i32, ptr %i.l, align 8, !tbaa !87
  ret i32 %i.m
}

; Function Attrs: nounwind uwtable
define hidden i32 @upb_DecodeWithTrace(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr nofree noundef writeonly captures(address_is_null) %7, i64 noundef %8) local_unnamed_addr #4 {
bb.a:
  %9 = alloca %struct.upb_Decoder, align 8        ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 208 ; 2 uses
  store i32 0, ptr %i.a, align 8, !tbaa !82
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %0, ptr %i.b, align 8, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr null, ptr %i.c, align 8, !tbaa !73
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 48
  store ptr %i.a, ptr %i.d, align 8, !tbaa !83
  %i.e = icmp ult i64 %1, 17
  %.sink28.i.i.sroa.gep = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  %.sink28.i.i.sroa.gep10 = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 57 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  %.not.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr align 1 %0, i64 %1, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = ptrtoint ptr %0 to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  store i64 %i.i, ptr %.sink28.i.i.sroa.gep10, align 8, !tbaa !51
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %1 ; 2 uses
  store ptr %i.j, ptr %9, align 8, !tbaa !18
  br label %upb_EpsCopyInputStream_InitWithErrorHandler.exit.i

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -16 ; 2 uses
  store ptr %i.l, ptr %9, align 8, !tbaa !18
  store i64 16, ptr %.sink28.i.i.sroa.gep, align 8, !tbaa !21
  br label %upb_EpsCopyInputStream_InitWithErrorHandler.exit.i

upb_EpsCopyInputStream_InitWithErrorHandler.exit.i: ; preds = %bb.e, %bb.d
  %.0.i = phi ptr [ %i.f, %bb.d ], [ %0, %bb.e ]
  %.sink28.i.i.sroa.phi = phi ptr [ %.sink28.i.i.sroa.gep, %bb.d ], [ %.sink28.i.i.sroa.gep10, %bb.e ]
end_hunk_2
