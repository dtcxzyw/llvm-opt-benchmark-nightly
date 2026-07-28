inline.NumInlined: 44
inline.NumDeleted: 23
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.upb_MdEnumDecoder = type { %struct.upb_MdDecoder, ptr, ptr, i32, i32, i32 }
%struct.upb_MdDecoder = type { ptr, ptr, [1 x %struct.__jmp_buf_tag] }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [25 x i8] c"Invalid enum version: %c\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Unexpected character: %c\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Error building mini table: \00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@_kUpb_FromBase92 = external local_unnamed_addr constant [0 x i8], align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Overlong varint\00", align 1

; Function Attrs: nounwind uwtable
define hidden ptr @upb_MiniTableEnum_Build(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.upb_MdEnumDecoder, align 8  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.a, i8 0, i64 232, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1
  store ptr %i.b, ptr %4, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.c, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 216
  store ptr %2, ptr %i.d, align 8, !tbaa !12
  %.val.i = load ptr, ptr %2, align 8, !tbaa !16  ; 4 uses
  %i.e = getelementptr i8, ptr %2, i64 8
  %.val11.i = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.f = ptrtoint ptr %.val11.i to i64
  %i.g = ptrtoint ptr %.val.i to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ult i64 %i.h, 16
  br i1 %i.i, label %bb.b, label %bb.c, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %2, i64 noundef 16) #11
  br label %upb_Arena_Malloc.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  store ptr %i.k, ptr %2, align 8, !tbaa !16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  br label %upb_Arena_Malloc.exit

upb_Arena_Malloc.exit:                            ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.j, %bb.b ], [ %.val.i, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 224
  store ptr %.0.i, ptr %i.l, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 240
  store i32 2, ptr %i.m, align 8, !tbaa !21
  %i.n = call fastcc ptr @upb_MtDecoder_BuildMiniTableEnum(ptr noundef %4, ptr noundef %0, i64 noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret ptr %i.n
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @upb_MtDecoder_BuildMiniTableEnum(ptr noundef nonnull %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = call i32 @__sigsetjmp(ptr noundef nonnull %i.a, i32 noundef 0) #12
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %upb_MtDecoder_DoBuildMiniTableEnum.exit

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i8, ptr %1, align 1, !tbaa !22      ; 2 uses
  %.not44.i = icmp eq i8 %i.c, 33
  br i1 %.not44.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = sext i8 %i.c to i32
  call void (ptr, ptr, ...) @upb_MdDecoder_ErrorJmp(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef %i.d) #13
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.038.i = phi ptr [ %i.e, %bb.e ], [ %1, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 7 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20   ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.g, label %upb_MdDecoder_CheckOutOfMemory.exit.i

bb.g:                                             ; preds = %bb.f
  call void (ptr, ptr, ...) @upb_MdDecoder_ErrorJmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #13
  unreachable

upb_MdDecoder_CheckOutOfMemory.exit.i:            ; preds = %bb.f
  store i32 64, ptr %i.g, align 4, !tbaa !3
  %i.h = call fastcc ptr @_upb_MiniTable_AddEnumDataMember(ptr noundef nonnull %0, i32 noundef 0)
  store ptr %i.h, ptr %i.f, align 8, !tbaa !20
  %i.i = call fastcc ptr @_upb_MiniTable_AddEnumDataMember(ptr noundef nonnull %0, i32 noundef 0) ; 5 uses
  store ptr %i.i, ptr %i.f, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 0, ptr %i.j, align 4, !tbaa !3
  %i.k = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %i.l = icmp ult ptr %.038.i, %i.k
  br i1 %i.l, label %.lr.ph.i, label %upb_MtDecoder_DoBuildMiniTableEnum.exit

.lr.ph.i:                                         ; preds = %upb_MdDecoder_CheckOutOfMemory.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %i.q = phi ptr [ %i.k, %.lr.ph.i ], [ %i.fn, %.loopexit.i ] ; 4 uses
  %.pre.i106.i = phi ptr [ %i.i, %.lr.ph.i ], [ %.pre.i107.i, %.loopexit.i ] ; 2 uses
  %i.r = phi ptr [ %i.i, %.lr.ph.i ], [ %i.fo, %.loopexit.i ] ; 2 uses
  %.03995.i = phi i32 [ 0, %.lr.ph.i ], [ %.2.i, %.loopexit.i ] ; 2 uses
  %.04094.i = phi ptr [ %.038.i, %.lr.ph.i ], [ %.141.i, %.loopexit.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.04094.i, i64 1 ; 5 uses
  %i.t = load i8, ptr %.04094.i, align 1, !tbaa !22 ; 6 uses
  %i.u = icmp slt i8 %i.t, 66
  br i1 %i.u, label %bb.i, label %bb.ae

bb.i:                                             ; preds = %bb.h
  %i.v = icmp slt i8 %i.t, 32
  br i1 %i.v, label %_upb_FromBase92.exit.i.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = zext nneg i8 %i.t to i64
  %3 = add nuw nsw i64 %i.w, 4294967264
  %4 = and i64 %3, 4294967295
  %i.x = getelementptr inbounds nuw i8, ptr @_kUpb_FromBase92, i64 %4
  %i.y = load i8, ptr %i.x, align 1, !tbaa !22
  %i.z = sext i8 %i.y to i32
  br label %_upb_FromBase92.exit.i.preheader

_upb_FromBase92.exit.i.preheader:                 ; preds = %bb.j, %bb.i
  %.03792.i.ph = phi i32 [ -1, %bb.i ], [ %i.z, %bb.j ]
  br label %_upb_FromBase92.exit.i

_upb_FromBase92.exit.i:                           ; preds = %_upb_FromBase92.exit.i.preheader, %upb_MiniTableEnum_BuildValue.exit.i
  %.pre.i109.i = phi ptr [ %.pre.i110.i, %upb_MiniTableEnum_BuildValue.exit.i ], [ %.pre.i106.i, %_upb_FromBase92.exit.i.preheader ] ; 4 uses
  %i.aa = phi ptr [ %i.ec, %upb_MiniTableEnum_BuildValue.exit.i ], [ %i.r, %_upb_FromBase92.exit.i.preheader ] ; 11 uses
  %.093.i = phi i32 [ %i.ed, %upb_MiniTableEnum_BuildValue.exit.i ], [ 0, %_upb_FromBase92.exit.i.preheader ]
  %.03792.i = phi i32 [ %i.ef, %upb_MiniTableEnum_BuildValue.exit.i ], [ %.03792.i.ph, %_upb_FromBase92.exit.i.preheader ] ; 2 uses
  %.191.i = phi i32 [ %i.ee, %upb_MiniTableEnum_BuildValue.exit.i ], [ %.03995.i, %_upb_FromBase92.exit.i.preheader ] ; 6 uses
  %i.ab = and i32 %.03792.i, 1
  %.not45.i = icmp eq i32 %i.ab, 0
  br i1 %.not45.i, label %upb_MiniTableEnum_BuildValue.exit.i, label %bb.k

bb.k:                                             ; preds = %_upb_FromBase92.exit.i
  %i.ac = load i32, ptr %i.m, align 8, !tbaa !24
  %i.ad = add i32 %i.ac, 1                        ; 2 uses
  store i32 %i.ad, ptr %i.m, align 8, !tbaa !24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %.not.i46.i = icmp eq i32 %i.af, 0
  br i1 %.not.i46.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ag = icmp ugt i32 %.191.i, 512
  %i.ah = lshr i32 %.191.i, 5                     ; 2 uses
  %i.ai = icmp ult i32 %i.ad, %i.ah
  %or.cond.i47.i = select i1 %i.ag, i1 %i.ai, i1 false
  br i1 %or.cond.i47.i, label %bb.m, label %bb.u

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aj = load i32, ptr %i.n, align 4, !tbaa !25  ; 9 uses
  %i.ak = load i32, ptr %i.o, align 8, !tbaa !21
  %i.al = icmp eq i32 %i.aj, %i.ak
  br i1 %i.al, label %bb.n, label %_upb_MiniTable_AddEnumDataMember.exit77.i

bb.n:                                             ; preds = %bb.m
  %i.am = zext i32 %i.aj to i64
  %i.an = shl nuw nsw i64 %i.am, 2                ; 3 uses
  %i.ao = icmp slt i32 %i.aj, 0
  br i1 %i.ao, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void (ptr, ptr, ...) @upb_MdDecoder_ErrorJmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #13
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ap = icmp eq i32 %i.aj, 0
  %i.aq = shl nuw i32 %i.aj, 1
  %spec.select.i52.i = select i1 %i.ap, i32 2, i32 %i.aq ; 2 uses
  %i.ar = zext i32 %spec.select.i52.i to i64
  %i.as = shl nuw nsw i64 %i.ar, 2                ; 3 uses
  %i.at = load ptr, ptr %i.p, align 8, !tbaa !12  ; 7 uses
  %.not40.i.i54.i = icmp samesign ugt i64 %i.as, %i.an
  %i.au = add nuw nsw i64 %i.an, 12
  %i.av = and i64 %i.au, 17179869176              ; 4 uses
  br i1 %.not40.i.i54.i, label %bb.q, label %.critedge.i.i55.i

bb.q:                                             ; preds = %bb.p
  %i.aw = add nuw nsw i64 %i.as, 8                ; 4 uses
  %i.ax = sub nsw i64 %i.aw, %i.av                ; 2 uses
  %.val14.i.i.i62.i = load ptr, ptr %i.at, align 8, !tbaa !16 ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.av ; 2 uses
  %i.az = icmp ne ptr %i.ay, %.val14.i.i.i62.i
  %i.ba = getelementptr i8, ptr %i.at, i64 8
  %.val13.i.i.i72.i = load ptr, ptr %i.ba, align 8, !tbaa !18
  %i.bb = ptrtoint ptr %.val13.i.i.i72.i to i64   ; 2 uses
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %.not.i.i.i73.i = icmp ult i64 %i.bd, %i.ax
  %or.cond152.i = select i1 %i.az, i1 true, i1 %.not.i.i.i73.i
  br i1 %or.cond152.i, label %upb_Arena_TryExtend.exit.thread.i.i63.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %.val14.i.i.i62.i, i64 %i.ax
  store ptr %i.be, ptr %i.at, align 8, !tbaa !16
  br label %upb_MdDecoder_CheckOutOfMemory.exit.i57.i

.critedge.i.i55.i:                                ; preds = %bb.p
  %.val.i.i56.i = load ptr, ptr %i.at, align 8, !tbaa !16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.av
  %i.bg = icmp eq ptr %i.bf, %.val.i.i56.i
  br i1 %i.bg, label %upb_Arena_ShrinkLast.exit.i.i60.i, label %upb_MdDecoder_CheckOutOfMemory.exit.i57.i

upb_Arena_ShrinkLast.exit.i.i60.i:                ; preds = %.critedge.i.i55.i
  %i.bh = add nuw nsw i64 %i.as, 8
  %.neg.i.i.i61.i = sub nsw i64 %i.bh, %i.av
  %i.bi = getelementptr inbounds i8, ptr %.val.i.i56.i, i64 %.neg.i.i.i61.i
  store ptr %i.bi, ptr %i.at, align 8, !tbaa !16
  br label %upb_MdDecoder_CheckOutOfMemory.exit.i57.i

upb_Arena_TryExtend.exit.thread.i.i63.i:          ; preds = %bb.q
  %i.bj = ptrtoint ptr %.val14.i.i.i62.i to i64
  %i.bk = sub i64 %i.bb, %i.bj
  %i.bl = icmp ult i64 %i.bk, %i.aw
  br i1 %i.bl, label %upb_Arena_Malloc.exit.i.i70.i, label %upb_Arena_Malloc.exit.thread.i.i67.i, !prof !19

upb_Arena_Malloc.exit.thread.i.i67.i:             ; preds = %upb_Arena_TryExtend.exit.thread.i.i63.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.val14.i.i.i62.i, i64 %i.aw
  store ptr %i.bm, ptr %i.at, align 8, !tbaa !16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val14.i.i.i62.i) ]
  br label %bb.s

upb_Arena_Malloc.exit.i.i70.i:                    ; preds = %upb_Arena_TryExtend.exit.thread.i.i63.i
  %i.bn = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.at, i64 noundef %i.aw) #11 ; 2 uses
  %.not41.i.i71.i = icmp eq ptr %i.bn, null
  br i1 %.not41.i.i71.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %upb_Arena_Malloc.exit.i.i70.i, %upb_Arena_Malloc.exit.thread.i.i67.i
  %.0.i4448.i.i68.i = phi ptr [ %.val14.i.i.i62.i, %upb_Arena_Malloc.exit.thread.i.i67.i ], [ %i.bn, %upb_Arena_Malloc.exit.i.i70.i ] ; 2 uses
  %i.bo = add nuw nsw i64 %i.an, 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i4448.i.i68.i, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.aa, i64 %i.bo, i1 false)
  %.pre27.pre.i69.i = load i32, ptr %i.n, align 4, !tbaa !25
  br label %upb_MdDecoder_CheckOutOfMemory.exit.i57.i

bb.t:                                             ; preds = %upb_Arena_Malloc.exit.i.i70.i
  store ptr null, ptr %i.f, align 8, !tbaa !20
  call void (ptr, ptr, ...) @upb_MdDecoder_ErrorJmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #13
  unreachable

upb_MdDecoder_CheckOutOfMemory.exit.i57.i:        ; preds = %bb.s, %upb_Arena_ShrinkLast.exit.i.i60.i, %.critedge.i.i55.i, %bb.r
  %.pre27.i58.i = phi i32 [ %.pre27.pre.i69.i, %bb.s ], [ %i.aj, %upb_Arena_ShrinkLast.exit.i.i60.i ], [ %i.aj, %.critedge.i.i55.i ], [ %i.aj, %bb.r ]
  %.034.i.ph.i59.i = phi ptr [ %.0.i4448.i.i68.i, %bb.s ], [ %i.aa, %upb_Arena_ShrinkLast.exit.i.i60.i ], [ %i.aa, %.critedge.i.i55.i ], [ %i.aa, %bb.r ] ; 3 uses
  store ptr %.034.i.ph.i59.i, ptr %i.f, align 8, !tbaa !20
  store i32 %spec.select.i52.i, ptr %i.o, align 8, !tbaa !21
  br label %_upb_MiniTable_AddEnumDataMember.exit77.i

_upb_MiniTable_AddEnumDataMember.exit77.i:        ; preds = %upb_MdDecoder_CheckOutOfMemory.exit.i57.i, %bb.m
  %.pre.i108.i = phi ptr [ %.034.i.ph.i59.i, %upb_MdDecoder_CheckOutOfMemory.exit.i57.i ], [ %.pre.i109.i, %bb.m ]
  %i.bp = phi ptr [ %.034.i.ph.i59.i, %upb_MdDecoder_CheckOutOfMemory.exit.i57.i ], [ %i.aa, %bb.m ] ; 3 uses
  %i.bq = phi i32 [ %.pre27.i58.i, %upb_MdDecoder_CheckOutOfMemory.exit.i57.i ], [ %i.aj, %bb.m ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bs = add i32 %i.bq, 1
  store i32 %i.bs, ptr %i.n, align 4, !tbaa !25
  %i.bt = zext i32 %i.bq to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bt
  store i32 %.191.i, ptr %i.bu, align 4, !tbaa !3
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 4 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !3
  %i.bx = add i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !3
  br label %upb_MiniTableEnum_BuildValue.exit.i

bb.u:                                             ; preds = %bb.l
  %i.by = and i32 %.191.i, -32
  %i.bz = add i32 %i.by, 32                       ; 2 uses
  %i.ca = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.cb = icmp ult i32 %i.ca, %i.bz
  br i1 %i.cb, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.u, %_upb_MiniTable_AddEnumDataMember.exit.i
  %i.cc = phi ptr [ %.pre.i113.i, %_upb_MiniTable_AddEnumDataMember.exit.i ], [ %.pre.i109.i, %bb.u ] ; 8 uses
  %i.cd = load i32, ptr %i.n, align 4, !tbaa !25  ; 9 uses
  %i.ce = load i32, ptr %i.o, align 8, !tbaa !21
  %i.cf = icmp eq i32 %i.cd, %i.ce
  br i1 %i.cf, label %bb.v, label %_upb_MiniTable_AddEnumDataMember.exit.i

bb.v:                                             ; preds = %.lr.ph.i.i
  %i.cg = zext i32 %i.cd to i64
  %i.ch = shl nuw nsw i64 %i.cg, 2                ; 3 uses
  %i.ci = icmp slt i32 %i.cd, 0
  br i1 %i.ci, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void (ptr, ptr, ...) @upb_MdDecoder_ErrorJmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #13
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.cj = icmp eq i32 %i.cd, 0
  %i.ck = shl nuw i32 %i.cd, 1
  %spec.select.i.i = select i1 %i.cj, i32 2, i32 %i.ck ; 2 uses
  %i.cl = zext i32 %spec.select.i.i to i64
  %i.cm = shl nuw nsw i64 %i.cl, 2                ; 5 uses
  %i.cn = load ptr, ptr %i.p, align 8, !tbaa !12  ; 9 uses
  %.not.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i, label %.upb_Arena_TryExtend.exit.thread_crit_edge.i.i.i, label %bb.y

.upb_Arena_TryExtend.exit.thread_crit_edge.i.i.i: ; preds = %bb.x
  %.val.i43.pre.i.i.i = load ptr, ptr %i.cn, align 8, !tbaa !16
  %.pre.i.i.i = add nuw nsw i64 %i.cm, 8
  br label %upb_Arena_TryExtend.exit.thread.i.i.i

bb.y:                                             ; preds = %bb.x
  %.not40.i.i.i = icmp samesign ugt i64 %i.cm, %i.ch
  %i.co = add nuw nsw i64 %i.ch, 12
  %i.cp = and i64 %i.co, 17179869176              ; 4 uses
  br i1 %.not40.i.i.i, label %bb.z, label %.critedge.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.cq = add nuw nsw i64 %i.cm, 8                ; 3 uses
  %i.cr = sub nsw i64 %i.cq, %i.cp                ; 2 uses
  %.val14.i.i.i.i = load ptr, ptr %i.cn, align 8, !tbaa !16 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cp ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %.val14.i.i.i.i
  br i1 %i.ct, label %bb.aa, label %upb_Arena_TryExtend.exit.thread.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.cu = getelementptr i8, ptr %i.cn, i64 8
  %.val13.i.i.i.i = load ptr, ptr %i.cu, align 8, !tbaa !18
  %i.cv = ptrtoint ptr %.val13.i.i.i.i to i64
  %i.cw = ptrtoint ptr %i.cs to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %.not.i.i.i.i = icmp ult i64 %i.cx, %i.cr
  br i1 %.not.i.i.i.i, label %upb_Arena_TryExtend.exit.thread.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cy = getelementptr inbounds nuw i8, ptr %.val14.i.i.i.i, i64 %i.cr
  store ptr %i.cy, ptr %i.cn, align 8, !tbaa !16
  br label %upb_MdDecoder_CheckOutOfMemory.exit.i.i

.critedge.i.i.i:                                  ; preds = %bb.y
  %.val.i.i.i = load ptr, ptr %i.cn, align 8, !tbaa !16 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cp
  %i.da = icmp eq ptr %i.cz, %.val.i.i.i
  br i1 %i.da, label %upb_Arena_ShrinkLast.exit.i.i.i, label %upb_MdDecoder_CheckOutOfMemory.exit.i.i

upb_Arena_ShrinkLast.exit.i.i.i:                  ; preds = %.critedge.i.i.i
  %i.db = add nuw nsw i64 %i.cm, 8
  %.neg.i.i.i.i = sub nsw i64 %i.db, %i.cp
  %i.dc = getelementptr inbounds i8, ptr %.val.i.i.i, i64 %.neg.i.i.i.i
  store ptr %i.dc, ptr %i.cn, align 8, !tbaa !16
  br label %upb_MdDecoder_CheckOutOfMemory.exit.i.i

upb_Arena_TryExtend.exit.thread.i.i.i:            ; preds = %bb.aa, %bb.z, %.upb_Arena_TryExtend.exit.thread_crit_edge.i.i.i
  %.pre-phi54.i.i.i = phi i64 [ %.pre.i.i.i, %.upb_Arena_TryExtend.exit.thread_crit_edge.i.i.i ], [ %i.cq, %bb.z ], [ %i.cq, %bb.aa ] ; 3 uses
  %.val.i43.i.i.i = phi ptr [ %.val.i43.pre.i.i.i, %.upb_Arena_TryExtend.exit.thread_crit_edge.i.i.i ], [ %.val14.i.i.i.i, %bb.z ], [ %.val14.i.i.i.i, %bb.aa ] ; 4 uses
  %i.dd = getelementptr i8, ptr %i.cn, i64 8
  %.val11.i.i.i.i = load ptr, ptr %i.dd, align 8, !tbaa !18
  %i.de = ptrtoint ptr %.val11.i.i.i.i to i64
  %i.df = ptrtoint ptr %.val.i43.i.i.i to i64
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = icmp ult i64 %i.dg, %.pre-phi54.i.i.i
  br i1 %i.dh, label %upb_Arena_Malloc.exit.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i.i, !prof !19

upb_Arena_Malloc.exit.thread.i.i.i:               ; preds = %upb_Arena_TryExtend.exit.thread.i.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %.val.i43.i.i.i, i64 %.pre-phi54.i.i.i
  store ptr %i.di, ptr %i.cn, align 8, !tbaa !16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i43.i.i.i) ]
  br label %bb.ac

upb_Arena_Malloc.exit.i.i.i:                      ; preds = %upb_Arena_TryExtend.exit.thread.i.i.i
  %i.dj = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.cn, i64 noundef %.pre-phi54.i.i.i) #11 ; 2 uses
  %.not41.i.i.i = icmp eq ptr %i.dj, null
  br i1 %.not41.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %upb_Arena_Malloc.exit.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i
  %.0.i4448.i.i.i = phi ptr [ %.val.i43.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i ], [ %i.dj, %upb_Arena_Malloc.exit.i.i.i ] ; 2 uses
  %i.dk = call i64 @llvm.umin.i64(i64 %i.ch, i64 %i.cm)
  %i.dl = add nuw nsw i64 %i.dk, 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i4448.i.i.i, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.cc, i64 %i.dl, i1 false)
  %.pre27.pre.i.i = load i32, ptr %i.n, align 4, !tbaa !25
  br label %upb_MdDecoder_CheckOutOfMemory.exit.i.i

bb.ad:                                            ; preds = %upb_Arena_Malloc.exit.i.i.i
  store ptr null, ptr %i.f, align 8, !tbaa !20
  call void (ptr, ptr, ...) @upb_MdDecoder_ErrorJmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #13
  unreachable

upb_MdDecoder_CheckOutOfMemory.exit.i.i:          ; preds = %bb.ac, %upb_Arena_ShrinkLast.exit.i.i.i, %.critedge.i.i.i, %bb.ab
  %.pre27.i.i = phi i32 [ %.pre27.pre.i.i, %bb.ac ], [ %i.cd, %upb_Arena_ShrinkLast.exit.i.i.i ], [ %i.cd, %.critedge.i.i.i ], [ %i.cd, %bb.ab ]
  %.034.i.ph.i.i = phi ptr [ %.0.i4448.i.i.i, %bb.ac ], [ %i.cc, %upb_Arena_ShrinkLast.exit.i.i.i ], [ %i.cc, %.critedge.i.i.i ], [ %i.cc, %bb.ab ] ; 2 uses
  store ptr %.034.i.ph.i.i, ptr %i.f, align 8, !tbaa !20
  store i32 %spec.select.i.i, ptr %i.o, align 8, !tbaa !21
  br label %_upb_MiniTable_AddEnumDataMember.exit.i

_upb_MiniTable_AddEnumDataMember.exit.i:          ; preds = %upb_MdDecoder_CheckOutOfMemory.exit.i.i, %.lr.ph.i.i
  %.pre.i113.i = phi ptr [ %.034.i.ph.i.i, %upb_MdDecoder_CheckOutOfMemory.exit.i.i ], [ %i.cc, %.lr.ph.i.i ] ; 6 uses
  %i.dm = phi i32 [ %.pre27.i.i, %upb_MdDecoder_CheckOutOfMemory.exit.i.i ], [ %i.cd, %.lr.ph.i.i ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.pre.i113.i, i64 8
  %i.do = add i32 %i.dm, 1
  store i32 %i.do, ptr %i.n, align 4, !tbaa !25
  %i.dp = zext i32 %i.dm to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.dp
  store i32 0, ptr %i.dq, align 4, !tbaa !3
  %i.dr = load i32, ptr %.pre.i113.i, align 4, !tbaa !3
  %i.ds = add i32 %i.dr, 32                       ; 2 uses
  store i32 %i.ds, ptr %.pre.i113.i, align 4, !tbaa !3
  %i.dt = icmp ult i32 %i.ds, %i.bz
  br i1 %i.dt, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !26

._crit_edge.i.i:                                  ; preds = %_upb_MiniTable_AddEnumDataMember.exit.i, %bb.u
  %.pre.i111.i = phi ptr [ %.pre.i109.i, %bb.u ], [ %.pre.i113.i, %_upb_MiniTable_AddEnumDataMember.exit.i ]
  %i.du = phi ptr [ %i.aa, %bb.u ], [ %.pre.i113.i, %_upb_MiniTable_AddEnumDataMember.exit.i ] ; 2 uses
  %i.dv = and i32 %.191.i, 31
  %i.dw = shl nuw i32 1, %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dy = zext nneg i32 %i.ah to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.dy ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.eb = or i32 %i.ea, %i.dw
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !3
  br label %upb_MiniTableEnum_BuildValue.exit.i

upb_MiniTableEnum_BuildValue.exit.i:              ; preds = %._crit_edge.i.i, %_upb_MiniTable_AddEnumDataMember.exit77.i, %_upb_FromBase92.exit.i
  %.pre.i110.i = phi ptr [ %.pre.i111.i, %._crit_edge.i.i ], [ %.pre.i108.i, %_upb_MiniTable_AddEnumDataMember.exit77.i ], [ %.pre.i109.i, %_upb_FromBase92.exit.i ] ; 2 uses
  %i.ec = phi ptr [ %i.du, %._crit_edge.i.i ], [ %i.bp, %_upb_MiniTable_AddEnumDataMember.exit77.i ], [ %i.aa, %_upb_FromBase92.exit.i ] ; 2 uses
  %i.ed = add nuw nsw i32 %.093.i, 1              ; 2 uses
  %i.ee = add i32 %.191.i, 1                      ; 2 uses
  %i.ef = lshr i32 %.03792.i, 1
  %exitcond.not.i = icmp eq i32 %i.ed, 5
  br i1 %exitcond.not.i, label %.loopexit.loopexit.i, label %_upb_FromBase92.exit.i, !llvm.loop !28

bb.ae:                                            ; preds = %bb.h
  %i.eg = add nsw i8 %i.t, -95
  %or.cond.i = icmp ult i8 %i.eg, 32
  br i1 %or.cond.i, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.eh = ptrtoaddr ptr %i.s to i64
  %i.ei = ptrtoaddr ptr %i.q to i64
  %i.ej = load i8, ptr getelementptr inbounds nuw (i8, ptr @_kUpb_FromBase92, i64 94), align 1, !tbaa !22
  %i.ek = sext i8 %i.ej to i32
  %i.el = load i8, ptr getelementptr inbounds nuw (i8, ptr @_kUpb_FromBase92, i64 63), align 1, !tbaa !22
  %i.em = sext i8 %i.el to i32                    ; 3 uses
  %i.en = sub nsw i32 %i.ek, %i.em                ; 2 uses
  %i.eo = icmp slt i32 %i.en, 2
  %i.ep = add nsw i32 %i.en, -1
  %i.eq = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ep, i1 true)
  %i.er = sub nuw nsw i32 32, %i.eq
  %.0.i.i.i.i = select i1 %i.eo, i32 0, i32 %i.er
  %i.es = sub i64 %i.ei, %i.eh
  %scevgep.i.i.i = getelementptr i8, ptr %i.s, i64 %i.es ; 2 uses
  %narrow = add nuw i8 %i.t, 96
  %5 = and i8 %narrow, 127
  %6 = zext nneg i8 %5 to i64
  %i.et = getelementptr inbounds nuw i8, ptr @_kUpb_FromBase92, i64 %6
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !22
  %i.ev = sext i8 %i.eu to i32
  %i.ew = sub nsw i32 %i.ev, %i.em                ; 2 uses
  %i.ex = icmp eq ptr %i.s, %i.q
  br i1 %i.ex, label %upb_MdDecoder_DecodeBase92Varint.exit.i, label %.lr.ph

_upb_FromBase92.exit.i.i.i:                       ; preds = %bb.ag
  %i.ey = getelementptr inbounds nuw i8, ptr %.026.i.i.i70, i64 1 ; 2 uses
  %narrow74 = add nuw i8 %i.fh, 96
  %7 = and i8 %narrow74, 127
  %8 = zext nneg i8 %7 to i64
  %i.ez = getelementptr inbounds nuw i8, ptr @_kUpb_FromBase92, i64 %8
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !22
  %i.fb = sext i8 %i.fa to i32
  %i.fc = sub nsw i32 %i.fb, %i.em
  %i.fd = shl i32 %i.fc, %i.fj
  %i.fe = or i32 %i.fd, %i.fg                     ; 2 uses
  %i.ff = icmp eq ptr %i.ey, %i.q
  br i1 %i.ff, label %upb_MdDecoder_DecodeBase92Varint.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.af, %_upb_FromBase92.exit.i.i.i
  %i.fg = phi i32 [ %i.fe, %_upb_FromBase92.exit.i.i.i ], [ %i.ew, %bb.af ] ; 2 uses
  %.026.i.i.i70 = phi ptr [ %i.ey, %_upb_FromBase92.exit.i.i.i ], [ %i.s, %bb.af ] ; 3 uses
  %.028.i.i.i69 = phi i32 [ %i.fj, %_upb_FromBase92.exit.i.i.i ], [ 0, %bb.af ]
  %i.fh = load i8, ptr %.026.i.i.i70, align 1, !tbaa !22 ; 2 uses
  %i.fi = add i8 %i.fh, -127
  %or.cond.i.i.i = icmp ult i8 %i.fi, -32
  br i1 %or.cond.i.i.i, label %upb_MdDecoder_DecodeBase92Varint.exit.i, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph
  %i.fj = add nuw nsw i32 %.028.i.i.i69, %.0.i.i.i.i ; 3 uses
  %i.fk = icmp samesign ult i32 %i.fj, 32
  br i1 %i.fk, label %_upb_FromBase92.exit.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void (ptr, ptr, ...) @upb_MdDecoder_ErrorJmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.4) #13
  unreachable

upb_MdDecoder_DecodeBase92Varint.exit.i:          ; preds = %_upb_FromBase92.exit.i.i.i, %.lr.ph, %bb.af
  %.lcssa = phi i32 [ %i.ew, %bb.af ], [ %i.fe, %_upb_FromBase92.exit.i.i.i ], [ %i.fg, %.lr.ph ]
  %.026.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %bb.af ], [ %scevgep.i.i.i, %_upb_FromBase92.exit.i.i.i ], [ %.026.i.i.i70, %.lr.ph ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.026.lcssa.i.i.i) ]
  %i.fl = add i32 %.lcssa, %.03995.i
  br label %.loopexit.i

bb.ai:                                            ; preds = %bb.ae
  %i.fm = zext nneg i8 %i.t to i32
  call void (ptr, ptr, ...) @upb_MdDecoder_ErrorJmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, i32 noundef %i.fm) #13
  unreachable

.loopexit.loopexit.i:                             ; preds = %upb_MiniTableEnum_BuildValue.exit.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !23
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %upb_MdDecoder_DecodeBase92Varint.exit.i
  %i.fn = phi ptr [ %i.q, %upb_MdDecoder_DecodeBase92Varint.exit.i ], [ %.pre.i, %.loopexit.loopexit.i ] ; 2 uses
  %.pre.i107.i = phi ptr [ %.pre.i106.i, %upb_MdDecoder_DecodeBase92Varint.exit.i ], [ %.pre.i110.i, %.loopexit.loopexit.i ] ; 2 uses
  %i.fo = phi ptr [ %i.r, %upb_MdDecoder_DecodeBase92Varint.exit.i ], [ %i.ec, %.loopexit.loopexit.i ]
  %.141.i = phi ptr [ %.026.lcssa.i.i.i, %upb_MdDecoder_DecodeBase92Varint.exit.i ], [ %i.s, %.loopexit.loopexit.i ] ; 2 uses
  %.2.i = phi i32 [ %i.fl, %upb_MdDecoder_DecodeBase92Varint.exit.i ], [ %i.ee, %.loopexit.loopexit.i ]
  %i.fp = icmp ult ptr %.141.i, %i.fn
  br i1 %i.fp, label %bb.h, label %upb_MtDecoder_DoBuildMiniTableEnum.exit, !llvm.loop !29

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
  br i1 %i.aj, label %upb_Arena_Malloc.exit.i, label %upb_Arena_Malloc.exit.thread.i, !prof !19

upb_Arena_Malloc.exit.thread.i:                   ; preds = %upb_Arena_TryExtend.exit.thread.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i43.i, i64 %.pre-phi54.i
  store ptr %i.ak, ptr %i.n, align 8, !tbaa !16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i43.i) ]
  br label %bb.i

upb_Arena_Malloc.exit.i:                          ; preds = %upb_Arena_TryExtend.exit.thread.i
  %i.al = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.n, i64 noundef %.pre-phi54.i) #11 ; 2 uses
  %.not41.i = icmp eq ptr %i.al, null
  br i1 %.not41.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %upb_Arena_Malloc.exit.i, %upb_Arena_Malloc.exit.thread.i
  %.0.i4448.i = phi ptr [ %.val.i43.i, %upb_Arena_Malloc.exit.thread.i ], [ %i.al, %upb_Arena_Malloc.exit.i ] ; 2 uses
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.l)
  %i.an = add nuw nsw i64 %i.am, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i4448.i, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.p, i64 %i.an, i1 false)
end_hunk_0
