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
  %i.q = phi ptr [ %i.k, %.lr.ph.i ], [ %i.ft, %.loopexit.i ] ; 4 uses
  %.pre.i106.i = phi ptr [ %i.i, %.lr.ph.i ], [ %.pre.i107.i, %.loopexit.i ] ; 2 uses
  %i.r = phi ptr [ %i.i, %.lr.ph.i ], [ %i.fu, %.loopexit.i ] ; 2 uses
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
  %i.x = add nuw nsw i64 %i.w, 4294967264
  %i.y = and i64 %i.x, 4294967295
  %i.z = getelementptr inbounds nuw i8, ptr @_kUpb_FromBase92, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !22
  %i.ab = sext i8 %i.aa to i32
  br label %_upb_FromBase92.exit.i.preheader

_upb_FromBase92.exit.i.preheader:                 ; preds = %bb.j, %bb.i
  %.03792.i.ph = phi i32 [ -1, %bb.i ], [ %i.ab, %bb.j ]
  br label %_upb_FromBase92.exit.i

_upb_FromBase92.exit.i:                           ; preds = %_upb_FromBase92.exit.i.preheader, %upb_MiniTableEnum_BuildValue.exit.i
  %.pre.i109.i = phi ptr [ %.pre.i110.i, %upb_MiniTableEnum_BuildValue.exit.i ], [ %.pre.i106.i, %_upb_FromBase92.exit.i.preheader ] ; 4 uses
  %i.ac = phi ptr [ %i.ee, %upb_MiniTableEnum_BuildValue.exit.i ], [ %i.r, %_upb_FromBase92.exit.i.preheader ] ; 11 uses
  %.093.i = phi i32 [ %i.ef, %upb_MiniTableEnum_BuildValue.exit.i ], [ 0, %_upb_FromBase92.exit.i.preheader ]
  %.03792.i = phi i32 [ %i.eh, %upb_MiniTableEnum_BuildValue.exit.i ], [ %.03792.i.ph, %_upb_FromBase92.exit.i.preheader ] ; 2 uses
  %.191.i = phi i32 [ %i.eg, %upb_MiniTableEnum_BuildValue.exit.i ], [ %.03995.i, %_upb_FromBase92.exit.i.preheader ] ; 6 uses
  %i.ad = and i32 %.03792.i, 1
  %.not45.i = icmp eq i32 %i.ad, 0
  br i1 %.not45.i, label %upb_MiniTableEnum_BuildValue.exit.i, label %bb.k

bb.k:                                             ; preds = %_upb_FromBase92.exit.i
  %i.ae = load i32, ptr %i.m, align 8, !tbaa !24
  %i.af = add i32 %i.ae, 1                        ; 2 uses
  store i32 %i.af, ptr %i.m, align 8, !tbaa !24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3
  %.not.i46.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i46.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ai = icmp ugt i32 %.191.i, 512
  %i.aj = lshr i32 %.191.i, 5                     ; 2 uses
  %i.ak = icmp ult i32 %i.af, %i.aj
  %or.cond.i47.i = select i1 %i.ai, i1 %i.ak, i1 false
  br i1 %or.cond.i47.i, label %bb.m, label %bb.u

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.al = load i32, ptr %i.n, align 4, !tbaa !25  ; 9 uses
  %i.am = load i32, ptr %i.o, align 8, !tbaa !21
  %i.an = icmp eq i32 %i.al, %i.am
  br i1 %i.an, label %bb.n, label %_upb_MiniTable_AddEnumDataMember.exit77.i

bb.n:                                             ; preds = %bb.m
  %i.ao = zext i32 %i.al to i64
  %i.ap = shl nuw nsw i64 %i.ao, 2                ; 3 uses
  %i.aq = icmp slt i32 %i.al, 0
  br i1 %i.aq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void (ptr, ptr, ...) @upb_MdDecoder_ErrorJmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #13
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ar = icmp eq i32 %i.al, 0
  %i.as = shl nuw i32 %i.al, 1
  %spec.select.i52.i = select i1 %i.ar, i32 2, i32 %i.as ; 2 uses
  %i.at = zext i32 %spec.select.i52.i to i64
  %i.au = shl nuw nsw i64 %i.at, 2                ; 3 uses
  %i.av = load ptr, ptr %i.p, align 8, !tbaa !12  ; 7 uses
  %.not40.i.i54.i = icmp samesign ugt i64 %i.au, %i.ap
  %i.aw = add nuw nsw i64 %i.ap, 12
  %i.ax = and i64 %i.aw, 17179869176              ; 4 uses
  br i1 %.not40.i.i54.i, label %bb.q, label %.critedge.i.i55.i

bb.q:                                             ; preds = %bb.p
  %i.ay = add nuw nsw i64 %i.au, 8                ; 4 uses
  %i.az = sub nsw i64 %i.ay, %i.ax                ; 2 uses
  %.val14.i.i.i62.i = load ptr, ptr %i.av, align 8, !tbaa !16 ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ax ; 2 uses
  %i.bb = icmp ne ptr %i.ba, %.val14.i.i.i62.i
  %i.bc = getelementptr i8, ptr %i.av, i64 8
  %.val13.i.i.i72.i = load ptr, ptr %i.bc, align 8, !tbaa !18
  %i.bd = ptrtoint ptr %.val13.i.i.i72.i to i64   ; 2 uses
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  %.not.i.i.i73.i = icmp ult i64 %i.bf, %i.az
  %or.cond152.i = select i1 %i.bb, i1 true, i1 %.not.i.i.i73.i
  br i1 %or.cond152.i, label %upb_Arena_TryExtend.exit.thread.i.i63.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %.val14.i.i.i62.i, i64 %i.az
  store ptr %i.bg, ptr %i.av, align 8, !tbaa !16
  br label %upb_MdDecoder_CheckOutOfMemory.exit.i57.i

.critedge.i.i55.i:                                ; preds = %bb.p
  %.val.i.i56.i = load ptr, ptr %i.av, align 8, !tbaa !16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ax
  %i.bi = icmp eq ptr %i.bh, %.val.i.i56.i
  br i1 %i.bi, label %upb_Arena_ShrinkLast.exit.i.i60.i, label %upb_MdDecoder_CheckOutOfMemory.exit.i57.i

upb_Arena_ShrinkLast.exit.i.i60.i:                ; preds = %.critedge.i.i55.i
  %i.bj = add nuw nsw i64 %i.au, 8
  %.neg.i.i.i61.i = sub nsw i64 %i.bj, %i.ax
  %i.bk = getelementptr inbounds i8, ptr %.val.i.i56.i, i64 %.neg.i.i.i61.i
  store ptr %i.bk, ptr %i.av, align 8, !tbaa !16
  br label %upb_MdDecoder_CheckOutOfMemory.exit.i57.i

upb_Arena_TryExtend.exit.thread.i.i63.i:          ; preds = %bb.q
  %i.bl = ptrtoint ptr %.val14.i.i.i62.i to i64
  %i.bm = sub i64 %i.bd, %i.bl
  %i.bn = icmp ult i64 %i.bm, %i.ay
  br i1 %i.bn, label %upb_Arena_Malloc.exit.i.i70.i, label %upb_Arena_Malloc.exit.thread.i.i67.i, !prof !19

upb_Arena_Malloc.exit.thread.i.i67.i:             ; preds = %upb_Arena_TryExtend.exit.thread.i.i63.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.val14.i.i.i62.i, i64 %i.ay
  store ptr %i.bo, ptr %i.av, align 8, !tbaa !16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val14.i.i.i62.i) ]
  br label %bb.s

upb_Arena_Malloc.exit.i.i70.i:                    ; preds = %upb_Arena_TryExtend.exit.thread.i.i63.i
  %i.bp = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.av, i64 noundef %i.ay) #11 ; 2 uses
  %.not41.i.i71.i = icmp eq ptr %i.bp, null
  br i1 %.not41.i.i71.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %upb_Arena_Malloc.exit.i.i70.i, %upb_Arena_Malloc.exit.thread.i.i67.i
  %.0.i4448.i.i68.i = phi ptr [ %.val14.i.i.i62.i, %upb_Arena_Malloc.exit.thread.i.i67.i ], [ %i.bp, %upb_Arena_Malloc.exit.i.i70.i ] ; 2 uses
  %i.bq = add nuw nsw i64 %i.ap, 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i4448.i.i68.i, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.ac, i64 %i.bq, i1 false)
  %.pre27.pre.i69.i = load i32, ptr %i.n, align 4, !tbaa !25
  br label %upb_MdDecoder_CheckOutOfMemory.exit.i57.i

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
end_hunk_0
