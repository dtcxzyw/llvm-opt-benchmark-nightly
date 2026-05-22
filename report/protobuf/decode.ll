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
  %.sroa.0.i = alloca i64, align 8                ; 8 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %struct.upb_MapEntry, align 8       ; 9 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %.sroa.0189 = alloca i64, align 8               ; 8 uses
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
  br i1 %i.ab, label %upb_EpsCopyInputStream_IsDone.exit.thread223, label %bb.c, !prof !20

bb.c:                                             ; preds = %bb.b
  %sext.i.i = shl i64 %i.y, 32
  %i.ac = ashr exact i64 %sext.i.i, 32
  %i.ad = load i64, ptr %i.e, align 8, !tbaa !21
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %_upb_Decoder_DecodeField.exit.thread, label %upb_EpsCopyInputStream_IsDone.exit, !prof !20

upb_EpsCopyInputStream_IsDone.exit:               ; preds = %bb.c
  %i.af = call ptr @upb_EpsCopyInputStream_IsDoneFallback_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %0, ptr noundef %.0, i32 noundef %i.z) #12 ; 2 uses
  %.not.i24 = icmp eq ptr %i.af, null
  br i1 %.not.i24, label %_upb_Decoder_DecodeField.exit.thread, label %upb_EpsCopyInputStream_IsDone.exit.thread223

upb_EpsCopyInputStream_IsDone.exit.thread223:     ; preds = %bb.b, %upb_EpsCopyInputStream_IsDone.exit
  %.0207226 = phi ptr [ %i.af, %upb_EpsCopyInputStream_IsDone.exit ], [ %.0, %bb.b ] ; 3 uses
  %i.ag = load i8, ptr %.0207226, align 1, !tbaa !22 ; 3 uses
  %i.ah = icmp sgt i8 %i.ag, -1
  br i1 %i.ah, label %bb.d, label %upb_EpsCopyInputStream_HasErrorHandler.exit.i, !prof !20

bb.d:                                             ; preds = %upb_EpsCopyInputStream_IsDone.exit.thread223
  %i.ai = zext nneg i8 %i.ag to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %.0207226, i64 1
  br label %upb_WireReader_ReadTag.exit

upb_EpsCopyInputStream_HasErrorHandler.exit.i:    ; preds = %upb_EpsCopyInputStream_IsDone.exit.thread223
  %i.ak = zext i8 %i.ag to i64
  %i.al = call { ptr, i64 } @_upb_WireReader_ReadLongTag_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %.0207226, i64 noundef %i.ak, ptr noundef nonnull %0) #12 ; 2 uses
  %i.am = extractvalue { ptr, i64 } %i.al, 0
  %i.an = extractvalue { ptr, i64 } %i.al, 1
  %i.ao = trunc i64 %i.an to i32
  br label %upb_WireReader_ReadTag.exit

upb_WireReader_ReadTag.exit:                      ; preds = %upb_EpsCopyInputStream_HasErrorHandler.exit.i, %bb.d
  %.0210 = phi i32 [ %i.ai, %bb.d ], [ %i.ao, %upb_EpsCopyInputStream_HasErrorHandler.exit.i ] ; 4 uses
  %.0.i16 = phi ptr [ %i.aj, %bb.d ], [ %i.am, %upb_EpsCopyInputStream_HasErrorHandler.exit.i ] ; 16 uses
  %i.ap = lshr i32 %.0210, 3                      ; 7 uses
  %i.aq = and i32 %.0210, 7                       ; 5 uses
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
  %.sroa.0.0..sroa.0.0..sroa.0.0.179311 = phi i8 [ %i.bv, %bb.o ], [ %i.cc, %upb_EpsCopyInputStream_HasErrorHandler.exit.i31 ] ; 4 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0.181 = phi i64 [ %i.bx, %bb.o ], [ %i.cb, %upb_EpsCopyInputStream_HasErrorHandler.exit.i31 ] ; 7 uses
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
end_hunk_0
begin_hunk_1_@_upb_Decoder_DecodeMessage:bb.a
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
  br label %.thread.sink.split.i.i

bb.db:                                            ; preds = %bb.da
  %i.vd = getelementptr inbounds nuw i8, ptr %.val.i.i.i97, i64 16
  store ptr %i.vd, ptr %i.p, align 8, !tbaa !46
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i97) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i.i97, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.t, i64 16, i1 false), !tbaa.struct !65
  br label %.thread.sink.split.i.i

bb.dc:                                            ; preds = %.loopexit
  %i.ve = sext i8 %i.uv to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.i, ptr nonnull readonly align 8 %i.t, i64 range(i64 -128, 128) %i.ve, i1 false)
  br label %bb.dd

.thread.sink.split.i.i:                           ; preds = %bb.db, %.thread19.i.i
  %.sink.i.i = phi i64 [ %i.vc, %.thread19.i.i ], [ %i.uy, %bb.db ]
  store i64 %.sink.i.i, ptr %.sroa.0.i, align 8, !tbaa !32
  br label %bb.dd

bb.dd:                                            ; preds = %.thread.sink.split.i.i, %bb.dc
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
end_hunk_1
