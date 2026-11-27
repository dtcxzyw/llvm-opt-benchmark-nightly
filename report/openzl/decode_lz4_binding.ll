Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/decode_lz4_binding?download=true
inline.NumInlined: 13
inline.NumDeleted: 11
begin_hunk_0
@.str.34 = private unnamed_addr constant [16 x i8] c"ZL_varintDecode\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"Unconditional failure: %s\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@ZL_varintDecode.__zl_static_error_info.37 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.32, ptr @.str.33, ptr @.str.34, i32 192, [4 x i8] zeroinitializer }, align 8

; Function Attrs: nounwind uwtable
define { i32, i64 } @DI_lz4(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ZL_ErrorContext, align 8    ; 6 uses
  %3 = alloca %struct.ZL_ErrorContext, align 8    ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = tail call ptr @ZL_Decoder_getOperationContext(ptr noundef %0) #6
  store ptr %i.b, ptr %3, align 8, !tbaa !18
  %i.c = load ptr, ptr %1, align 8, !tbaa !20     ; 2 uses
  %i.d = tail call i64 @ZL_Data_numElts(ptr noundef %i.c) #5 ; 3 uses
  %i.e = icmp ult i64 %i.d, 2147483648
  br i1 %i.e, label %bb.c, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.f = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @DI_lz4.__zl_static_error_info, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 19, i32 noundef 55, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef %i.d, i64 noundef 2147483647) #5 ; 2 uses
  %i.g = extractvalue { i32, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i32, ptr } %i.f, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.g, ptr %i.h, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #5
  %i.i = ptrtoint ptr %i.h to i64
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  %i.j = tail call { ptr, i64 } @ZL_Decoder_getCodecHeader(ptr noundef %0) #5 ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.j, 0        ; 12 uses
  %i.l = extractvalue { ptr, i64 } %i.j, 1        ; 3 uses
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %.thread83, label %bb.d, !prof !22

.thread83:                                        ; preds = %bb.c
  %i.m = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @DI_lz4.__zl_static_error_info.9, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 23, i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i64 noundef 0, i64 noundef 0) #5 ; 2 uses
  %i.n = extractvalue { i32, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { i32, ptr } %i.m, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.n, ptr %i.o, ptr noundef nonnull @.str.14) #5
  %i.p = ptrtoint ptr %i.o to i64
  br label %bb.z

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.r = icmp ugt i64 %i.l, 9
  br i1 %i.r, label %bb.e, label %.lr.ph.i, !prof !21

bb.e:                                             ; preds = %bb.d
  %i.s = load i8, ptr %i.k, align 1, !tbaa !23    ; 2 uses
  %i.t = and i8 %i.s, 127
  %i.u = zext nneg i8 %i.t to i64                 ; 2 uses
  %i.v = icmp sgt i8 %i.s, -1
  br i1 %i.v, label %ZL_varintDecode.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !23    ; 2 uses
  %i.y = sext i8 %i.x to i64
  %i.z = shl nsw i64 %i.y, 7
  %i.aa = and i64 %i.z, 16256
  %i.ab = or disjoint i64 %i.aa, %i.u             ; 2 uses
  %i.ac = icmp sgt i8 %i.x, -1
  br i1 %i.ac, label %ZL_varintDecode.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !23  ; 2 uses
  %i.af = sext i8 %i.ae to i64
  %i.ag = shl nsw i64 %i.af, 14
  %i.ah = and i64 %i.ag, 2080768
  %i.ai = or disjoint i64 %i.ah, %i.ab            ; 2 uses
  %i.aj = icmp sgt i8 %i.ae, -1
  br i1 %i.aj, label %ZL_varintDecode.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !23  ; 2 uses
  %i.am = sext i8 %i.al to i64
  %i.an = shl nsw i64 %i.am, 21
  %i.ao = and i64 %i.an, 266338304
  %i.ap = or disjoint i64 %i.ao, %i.ai            ; 2 uses
  %i.aq = icmp sgt i8 %i.al, -1
  br i1 %i.aq, label %ZL_varintDecode.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !23  ; 2 uses
  %i.at = sext i8 %i.as to i64
  %i.au = shl nsw i64 %i.at, 28
  %i.av = and i64 %i.au, 34091302912
  %i.aw = or disjoint i64 %i.av, %i.ap            ; 2 uses
  %i.ax = icmp sgt i8 %i.as, -1
  br i1 %i.ax, label %ZL_varintDecode.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.k, i64 5
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !23  ; 2 uses
  %i.ba = sext i8 %i.az to i64
  %i.bb = shl nsw i64 %i.ba, 35
  %i.bc = and i64 %i.bb, 4363686772736
  %i.bd = or disjoint i64 %i.bc, %i.aw            ; 2 uses
  %i.be = icmp sgt i8 %i.az, -1
  br i1 %i.be, label %ZL_varintDecode.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %i.k, i64 6
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !23  ; 2 uses
  %i.bh = sext i8 %i.bg to i64
  %i.bi = shl nsw i64 %i.bh, 42
  %i.bj = and i64 %i.bi, 558551906910208
  %i.bk = or i64 %i.bj, %i.bd                     ; 2 uses
  %i.bl = icmp sgt i8 %i.bg, -1
  br i1 %i.bl, label %ZL_varintDecode.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %i.k, i64 7
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !23  ; 2 uses
  %i.bo = sext i8 %i.bn to i64
  %i.bp = shl nsw i64 %i.bo, 49
  %i.bq = and i64 %i.bp, 71494644084506624
  %i.br = or i64 %i.bq, %i.bk                     ; 2 uses
  %i.bs = icmp sgt i8 %i.bn, -1
  br i1 %i.bs, label %ZL_varintDecode.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bt = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !23  ; 2 uses
  %i.bv = sext i8 %i.bu to i64
  %i.bw = shl nsw i64 %i.bv, 56
  %i.bx = and i64 %i.bw, 9151314442816847872
  %i.by = or i64 %i.bx, %i.br                     ; 2 uses
  %i.bz = icmp sgt i8 %i.bu, -1
  br i1 %i.bz, label %ZL_varintDecode.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ca = getelementptr inbounds nuw i8, ptr %i.k, i64 9
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !23  ; 2 uses
  %i.cc = zext nneg i8 %i.cb to i64
  %i.cd = shl i64 %i.cc, 63
  %i.ce = or i64 %i.cd, %i.by
  %i.cf = icmp sgt i8 %i.cb, -1
  br i1 %i.cf, label %ZL_varintDecode.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cg = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_varintDecode.__zl_static_error_info, ptr noundef nonnull %2, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef 183, i32 noundef 1, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.8) #5
  br label %ZL_varintDecode.exit

.lr.ph.i:                                         ; preds = %bb.d, %bb.p
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.p ], [ 0, %bb.d ] ; 3 uses
  %.290.i = phi ptr [ %i.cj, %bb.p ], [ %i.k, %bb.d ] ; 2 uses
  %.27089.i = phi i64 [ %i.cn, %bb.p ], [ 0, %bb.d ] ; 2 uses
  %i.ch = load i8, ptr %.290.i, align 1, !tbaa !23 ; 3 uses
  %i.ci = icmp slt i8 %i.ch, 0
  br i1 %i.ci, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.290.i, i64 1 ; 2 uses
  %i.ck = and i8 %i.ch, 127
  %i.cl = zext nneg i8 %i.ck to i64
  %i.cm = shl i64 %i.cl, %indvars.iv.i
  %i.cn = or i64 %i.cm, %.27089.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 7
  %.not.i = icmp eq ptr %i.cj, %i.q
  br i1 %.not.i, label %.thread80.i, label %.lr.ph.i, !llvm.loop !11

.thread80.i:                                      ; preds = %bb.p
  %i.co = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_varintDecode.__zl_static_error_info.37, ptr noundef nonnull %2, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef 192, i32 noundef 1, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.8) #5
  br label %ZL_varintDecode.exit

bb.q:                                             ; preds = %.lr.ph.i
  %i.cp = zext nneg i8 %i.ch to i64
  %i.cq = shl i64 %i.cp, %indvars.iv.i
  %i.cr = or i64 %i.cq, %.27089.i
  br label %ZL_varintDecode.exit.thread

ZL_varintDecode.exit.thread:                      ; preds = %bb.q, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.sroa.7.2.i.ph = phi i64 [ %i.u, %bb.e ], [ %i.ab, %bb.f ], [ %i.ai, %bb.g ], [ %i.ap, %bb.h ], [ %i.aw, %bb.i ], [ %i.bd, %bb.j ], [ %i.bk, %bb.k ], [ %i.br, %bb.l ], [ %i.by, %bb.m ], [ %i.ce, %bb.n ], [ %i.cr, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  br label %bb.s

ZL_varintDecode.exit:                             ; preds = %bb.o, %.thread80.i
  %.sink130 = phi { i32, ptr } [ %i.cg, %bb.o ], [ %i.co, %.thread80.i ] ; 2 uses
  %i.cs = extractvalue { i32, ptr } %.sink130, 0  ; 3 uses
  %i.ct = extractvalue { i32, ptr } %.sink130, 1  ; 3 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.cs, ptr %i.ct, ptr noundef nonnull @.str.36) #5
  %.sroa.7.2.i = ptrtoint ptr %i.ct to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  %.not.i78 = icmp eq i32 %i.cs, 0
  br i1 %.not.i78, label %bb.s, label %bb.r

bb.r:                                             ; preds = %ZL_varintDecode.exit
  %i.cu = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %3, i32 %i.cs, ptr %i.ct, ptr null, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 27, ptr noundef nonnull @.str.15) #5 ; 2 uses
  %i.cv = extractvalue { i32, ptr } %i.cu, 0
  %i.cw = extractvalue { i32, ptr } %i.cu, 1
  %i.cx = ptrtoint ptr %i.cw to i64
  br label %bb.z

bb.s:                                             ; preds = %ZL_varintDecode.exit, %ZL_varintDecode.exit.thread
  %.0.i.ph = phi i64 [ %.sroa.7.2.i.ph, %ZL_varintDecode.exit.thread ], [ %.sroa.7.2.i, %ZL_varintDecode.exit ] ; 7 uses
  %i.cy = icmp ult i64 %.0.i.ph, 2147483648
  br i1 %i.cy, label %bb.u, label %bb.t, !prof !21

bb.t:                                             ; preds = %bb.s
  %i.cz = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @DI_lz4.__zl_static_error_info.16, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 28, i32 noundef 55, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef %.0.i.ph, i64 noundef 2147483647) #5 ; 2 uses
  %i.da = extractvalue { i32, ptr } %i.cz, 0      ; 2 uses
  %i.db = extractvalue { i32, ptr } %i.cz, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.da, ptr %i.db, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #5
  %i.dc = ptrtoint ptr %i.db to i64
  br label %bb.z

bb.u:                                             ; preds = %bb.s
  %i.dd = call ptr @ZL_Decoder_createTypedStream(ptr noundef %0, i32 noundef 0, i64 noundef %.0.i.ph, i64 noundef 1) #5 ; 3 uses
  %.not75 = icmp eq ptr %i.dd, null
  br i1 %.not75, label %.thread106, label %bb.v, !prof !22

.thread106:                                       ; preds = %bb.u
  %i.de = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @DI_lz4.__zl_static_error_info.19, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 32, i32 noundef 70, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.23, ptr noundef null, ptr noundef null) #5 ; 2 uses
  %i.df = extractvalue { i32, ptr } %i.de, 0      ; 2 uses
  %i.dg = extractvalue { i32, ptr } %i.de, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.df, ptr %i.dg, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #5
  %i.dh = ptrtoint ptr %i.dg to i64
  br label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.di = call ptr @ZL_Data_rPtr(ptr noundef %i.c) #5
  %i.dj = call ptr @ZL_Data_wPtr(ptr noundef nonnull %i.dd) #5
  %i.dk = trunc nuw nsw i64 %i.d to i32
  %i.dl = trunc nuw nsw i64 %.0.i.ph to i32
  %i.dm = call i32 @LZ4_decompress_safe(ptr noundef %i.di, ptr noundef %i.dj, i32 noundef %i.dk, i32 noundef %i.dl) #5
  %i.dn = sext i32 %i.dm to i64                   ; 2 uses
  %.not76 = icmp eq i64 %.0.i.ph, %i.dn
  br i1 %.not76, label %bb.x, label %bb.w, !prof !21

bb.w:                                             ; preds = %bb.v
  %i.do = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @DI_lz4.__zl_static_error_info.24, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 40, i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.18, i64 noundef %i.dn, i64 noundef %.0.i.ph) #5 ; 2 uses
  %i.dp = extractvalue { i32, ptr } %i.do, 0      ; 2 uses
  %i.dq = extractvalue { i32, ptr } %i.do, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.dp, ptr %i.dq, ptr noundef nonnull @.str.28) #5
  %i.dr = ptrtoint ptr %i.dq to i64
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.ds = call { i32, i64 } @ZL_Data_commit(ptr noundef nonnull %i.dd, i64 noundef range(i64 -2147483648, 2147483648) %.0.i.ph) #5 ; 2 uses
  %i.dt = extractvalue { i32, i64 } %i.ds, 0      ; 2 uses
  %.not77 = icmp eq i32 %i.dt, 0
  br i1 %.not77, label %bb.z, label %bb.y, !prof !21

bb.y:                                             ; preds = %bb.x
  %i.du = extractvalue { i32, i64 } %i.ds, 1
  %i.dv = inttoptr i64 %i.du to ptr
  %i.dw = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %3, i32 %i.dt, ptr %i.dv, ptr nonnull @DI_lz4.__zl_static_error_info.29, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 41, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.8) #5 ; 2 uses
  %i.dx = extractvalue { i32, ptr } %i.dw, 0
  %i.dy = extractvalue { i32, ptr } %i.dw, 1
  %i.dz = ptrtoint ptr %i.dy to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.r, %bb.y, %bb.t, %.thread106, %bb.w, %bb.x, %.thread83, %bb.b
  %.sroa.063.9 = phi i32 [ %i.g, %bb.b ], [ %i.n, %.thread83 ], [ %i.cv, %bb.r ], [ %i.da, %bb.t ], [ %i.df, %.thread106 ], [ %i.dx, %bb.y ], [ %i.dp, %bb.w ], [ 0, %bb.x ]
  %.sroa.19.9 = phi i64 [ %i.i, %bb.b ], [ %i.p, %.thread83 ], [ %i.cx, %bb.r ], [ %i.dc, %bb.t ], [ %i.dh, %.thread106 ], [ %i.dz, %bb.y ], [ %i.dr, %bb.w ], [ 0, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.063.9, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.19.9, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @ZL_Decoder_getOperationContext(ptr noundef) local_unnamed_addr #3

declare { i32, ptr } @ZL_E_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare void @ZL_E_appendToMessage(i32, ptr, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare { ptr, i64 } @ZL_Decoder_getCodecHeader(ptr noundef) local_unnamed_addr #4

declare { i32, ptr } @ZL_E_addFrame(ptr noundef, i32, ptr, ptr, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare ptr @ZL_Decoder_createTypedStream(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare i32 @LZ4_decompress_safe(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i64 @ZL_Data_numElts(ptr noundef) local_unnamed_addr #4

declare ptr @ZL_Data_rPtr(ptr noundef) local_unnamed_addr #4

declare ptr @ZL_Data_wPtr(ptr noundef) local_unnamed_addr #4

declare { i32, i64 } @ZL_Data_commit(ptr noundef, i64 noundef) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = distinct !{!11, !24}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS21ZL_OperationContext_s", !12, i64 0}
!14 = !{!"", !8, i64 0}
!15 = !{!"p1 omnipotent char", !12, i64 0}
!16 = !{!"", !14, i64 0, !14, i64 4, !8, i64 8, !15, i64 16}
!17 = !{!"", !13, i64 0, !16, i64 8}
!18 = !{!17, !13, i64 0}
!19 = !{!"p1 _ZTS10ZL_Input_s", !12, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!22 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!23 = !{!7, !7, i64 0}
!24 = !{!"llvm.loop.mustprogress"}
end_hunk_0
