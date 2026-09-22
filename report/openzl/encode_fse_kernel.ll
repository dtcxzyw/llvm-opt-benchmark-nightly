Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/encode_fse_kernel?download=true
inline.NumInlined: 86
inline.NumDeleted: 40
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ZL_ErrorContext = type { ptr, %struct.ZL_GraphContext }
%struct.ZL_GraphContext = type { %struct.ZL_NodeID, %struct.ZL_GraphID, i32, ptr }
%struct.ZL_NodeID = type { i32 }
%struct.ZL_GraphID = type { i32 }
%struct.ZL_ReadCursor = type { ptr, ptr }

@ZL_g_logLevel = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [87 x i8] c"/opt-bench/work/openzl/openzl/src/openzl/codecs/entropy/deprecated/encode_fse_kernel.c\00", align 1
@__func__.ZS_fseContextEncode = private unnamed_addr constant [20 x i8] c"ZS_fseContextEncode\00", align 1
@.str.1 = private unnamed_addr constant [84 x i8] c"%s `%s %s %s' failed where:\0A\09lhs = (unsigned long) %llu\0A\09rhs = (unsigned long) %llu\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Requirement\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"ZL_WC_avail(dst)\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"ZL_varintSize(nbSymbols)\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Error: \00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ZS_fseContextEncode.__zl_static_error_info = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.9, ptr @.str, ptr @__func__.ZS_fseContextEncode, i32 90, [4 x i8] zeroinitializer }, align 8
@.str.9 = private unnamed_addr constant [21 x i8] c"Forwarding error: %s\00", align 1
@.str.10 = private unnamed_addr constant [68 x i8] c"%s `%s %s %s' failed where:\0A\09lhs = (pointer) %p\0A\09rhs = (pointer) %p\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"(const char*)(const void*)states\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"(const char*)0\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"%s `%s' failed\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"!ZS_FSE_isError(tableLog)\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"!ZS_FSE_isError(nCountSize)\00", align 1
@.str.18 = private unnamed_addr constant [96 x i8] c"!ZS_FSE_isError(ZS_FSE_buildCTable( state->table, nCount, hist->maxSymbol, (unsigned)tableLog))\00", align 1
@.str.19 = private unnamed_addr constant [63 x i8] c"!ZS_FSE_isError( ZS_FSE_buildCTable_raw(state->table, nbBits))\00", align 1
@.str.20 = private unnamed_addr constant [86 x i8] c"!ZS_FSE_isError(ZS_FSE_buildCTable_constant( state->table, (uint8_t)hist->maxSymbol))\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"cSize\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@__func__.ZS_fseO1Encode = private unnamed_addr constant [15 x i8] c"ZS_fseO1Encode\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@__func__.ZS_fseContextO1Encode = private unnamed_addr constant [22 x i8] c"ZS_fseContextO1Encode\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"(const char*)(const void*)mixed\00", align 1
@__func__.ZS_computeHistograms = private unnamed_addr constant [21 x i8] c"ZS_computeHistograms\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"(const char*)(const void*)hists\00", align 1

; Function Attrs: nounwind uwtable
define { i32, i64 } @ZS_fseContextEncode(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.ZL_ErrorContext, align 8    ; 5 uses
  %i.a = alloca [256 x i16], align 16             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = tail call ptr @ZL_NULL_getOperationContext(ptr noundef null) #12
  store ptr %i.c, ptr %4, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 256 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !36   ; 4 uses
  %.val137 = load ptr, ptr %1, align 8, !tbaa !14
  %i.f = getelementptr i8, ptr %1, i64 8          ; 6 uses
  %.val138 = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.g = ptrtoint ptr %.val138 to i64
  %i.h = ptrtoint ptr %.val137 to i64
  %i.i = sub i64 %i.g, %i.h                       ; 4 uses
  %i.j = getelementptr i8, ptr %0, i64 8          ; 14 uses
  %.val145 = load ptr, ptr %i.j, align 8, !tbaa !17 ; 3 uses
  %i.k = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %.val146 = load ptr, ptr %i.k, align 8, !tbaa !18
  %i.l = ptrtoint ptr %.val146 to i64
  %i.m = ptrtoint ptr %.val145 to i64             ; 2 uses
  %i.n = sub i64 %i.l, %i.m                       ; 2 uses
  %i.o = or i64 %i.i, 1
  %i.p = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.o, i1 true)
  %i.q = trunc nuw nsw i64 %i.p to i8
  %narrow2.i = sub nuw nsw i8 70, %i.q
  %i.r = udiv i8 %narrow2.i, 7
  %i.s = zext nneg i8 %i.r to i64                 ; 2 uses
  %.not = icmp ult i64 %i.n, %i.s
  br i1 %.not, label %bb.b, label %bb.e, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.t = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !20
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ZS_fseContextEncode, i32 noundef 80, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i64 noundef %i.n, i64 noundef %i.s) #11
  %.pr = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !20
  %i.v = icmp sgt i32 %.pr, 0
  br i1 %i.v, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @ZL_LOG_func_if_nonempty(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ZS_fseContextEncode, i32 noundef 80, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #11
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.c, %bb.d
  tail call void @abort() #13
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.w = icmp ugt i64 %i.i, 127
  br i1 %i.w, label %.lr.ph.i.i, label %ZL_WC_pushVarint.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.z, %.lr.ph.i.i ], [ %.val145, %bb.e ] ; 2 uses
  %.089.i.i = phi i64 [ %i.aa, %.lr.ph.i.i ], [ %i.i, %bb.e ] ; 3 uses
  %i.x = trunc i64 %.089.i.i to i8
  %i.y = or i8 %i.x, -128
  %i.z = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 1 ; 2 uses
  store i8 %i.y, ptr %.010.i.i, align 1, !tbaa !21
  %i.aa = lshr i64 %.089.i.i, 7                   ; 2 uses
  %i.ab = icmp ugt i64 %.089.i.i, 16383
  br i1 %i.ab, label %.lr.ph.i.i, label %ZL_WC_pushVarint.exit, !llvm.loop !23

ZL_WC_pushVarint.exit:                            ; preds = %.lr.ph.i.i, %bb.e
  %.08.lcssa.i.i = phi i64 [ %i.i, %bb.e ], [ %i.aa, %.lr.ph.i.i ]
  %.0.lcssa.i.i = phi ptr [ %.val145, %bb.e ], [ %i.z, %.lr.ph.i.i ] ; 2 uses
  %i.ac = trunc nuw nsw i64 %.08.lcssa.i.i to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 1
  store i8 %i.ac, ptr %.0.lcssa.i.i, align 1, !tbaa !21
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.m
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !17
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.af
  store ptr %i.ah, ptr %i.j, align 8, !tbaa !17
  %.val135 = load ptr, ptr %1, align 8, !tbaa !14
  %.val136 = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.ai = icmp eq ptr %.val136, %.val135
  br i1 %i.ai, label %bb.au, label %bb.f

bb.f:                                             ; preds = %ZL_WC_pushVarint.exit
  %i.aj = tail call { i32, i64 } @ZL_ContextClustering_encode(ptr noundef nonnull %0, ptr noundef nonnull %3) #11 ; 2 uses
  %i.ak = extractvalue { i32, i64 } %i.aj, 0      ; 2 uses
  %.not120 = icmp eq i32 %i.ak, 0
  br i1 %.not120, label %bb.h, label %bb.g, !prof !37

bb.g:                                             ; preds = %bb.f
  %i.al = extractvalue { i32, i64 } %i.aj, 1
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %4, i32 %i.ak, ptr %i.am, ptr nonnull @ZS_fseContextEncode.__zl_static_error_info, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ZS_fseContextEncode, i32 noundef 90, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #11 ; 2 uses
  %i.ao = extractvalue { i32, ptr } %i.an, 0
  %i.ap = extractvalue { i32, ptr } %i.an, 1
  %i.aq = ptrtoint ptr %i.ap to i64
  br label %bb.au

bb.h:                                             ; preds = %bb.f
  %.val151 = load ptr, ptr %1, align 8, !tbaa !14 ; 3 uses
  %.val150 = load ptr, ptr %2, align 8, !tbaa !14
  %.val134 = load ptr, ptr %i.f, align 8, !tbaa !15 ; 2 uses
  %i.ar = ptrtoint ptr %.val134 to i64
  %i.as = ptrtoint ptr %.val151 to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = load i64, ptr %i.d, align 8, !tbaa !36
  %i.av = mul i64 %i.au, 1036
  %calloc.i = tail call ptr @calloc(i64 1, i64 %i.av) ; 4 uses
  %.not.i = icmp eq ptr %calloc.i, null
  br i1 %.not.i, label %bb.i, label %bb.l, !prof !19

bb.i:                                             ; preds = %bb.h
  %i.aw = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !20
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %bb.j, label %.thread.i

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ZS_computeHistograms, i32 noundef 34, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef null, ptr noundef null) #11
  %.pr.i = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !20
  %i.ay = icmp sgt i32 %.pr.i, 0
  br i1 %i.ay, label %bb.k, label %.thread.i

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @ZL_LOG_func_if_nonempty(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ZS_computeHistograms, i32 noundef 34, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #11
  br label %.thread.i

.thread.i:                                        ; preds = %bb.k, %bb.j, %bb.i
  tail call void @abort() #13
  unreachable

bb.l:                                             ; preds = %bb.h
  %.not36.i = icmp eq ptr %.val134, %.val151
  br i1 %.not36.i, label %ZS_computeHistograms.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.i
  %.035.i = phi i64 [ %i.bu, %.lr.ph.i ], [ 0, %bb.l ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.val150, i64 %.035.i
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !21
  %i.bb = zext i8 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !21
  %i.be = zext i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [1036 x i8], ptr %calloc.i, i64 %i.be ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.val151, i64 %.035.i
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !21  ; 2 uses
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bi ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !20
  %i.bl = add i32 %i.bk, 1                        ; 2 uses
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !20
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 1024 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !39
  %i.bo = add i32 %i.bn, 1
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !39
  %i.bp = zext i8 %i.bh to i32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bf, i64 1032 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !40
  %spec.store.select.i = tail call i32 @llvm.umax.i32(i32 %i.br, i32 %i.bp)
  store i32 %spec.store.select.i, ptr %i.bq, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bf, i64 1028 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !41
  %spec.store.select41.i = tail call i32 @llvm.umax.i32(i32 %i.bl, i32 %i.bt)
  store i32 %spec.store.select41.i, ptr %i.bs, align 4
  %i.bu = add nuw i64 %.035.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bu, %i.at
  br i1 %exitcond.not.i, label %ZS_computeHistograms.exit, label %.lr.ph.i, !llvm.loop !24

ZS_computeHistograms.exit:                        ; preds = %.lr.ph.i, %bb.l
  %i.bv = mul i64 %i.e, 10280
  %i.bw = add i64 %i.bv, 2048
  %i.bx = tail call noalias ptr @malloc(i64 noundef %i.bw) #14 ; 8 uses
  %.not121 = icmp eq ptr %i.bx, null
  br i1 %.not121, label %bb.m, label %bb.p, !prof !19

bb.m:                                             ; preds = %ZS_computeHistograms.exit
  %i.by = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !20
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %bb.n, label %.thread171

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ZS_fseContextEncode, i32 noundef 104, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef null, ptr noundef null) #11
  %.pr170 = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !20
  %i.ca = icmp sgt i32 %.pr170, 0
  br i1 %i.ca, label %bb.o, label %.thread171

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @ZL_LOG_func_if_nonempty(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ZS_fseContextEncode, i32 noundef 104, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #11
  br label %.thread171

.thread171:                                       ; preds = %bb.m, %bb.n, %bb.o
  tail call void @abort() #13
  unreachable

bb.p:                                             ; preds = %ZS_computeHistograms.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 2048 ; 6 uses
  %.not229 = icmp eq i64 %i.e, 0                  ; 2 uses
  br i1 %.not229, label %._crit_edge, label %.lr.ph

end_hunk_0
begin_hunk_1_@ZS_fseContextEncode:bb.a
  %i.eb = load ptr, ptr %i.j, align 8, !tbaa !17
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.du
  store ptr %i.ec, ptr %i.j, align 8, !tbaa !17
  store i8 0, ptr %.val143, align 1, !tbaa !21
  %i.ed = getelementptr inbounds nuw i8, ptr %.0114208, i64 32
  %i.ee = load i32, ptr %i.de, align 4, !tbaa !40
  %i.ef = call i64 @ZS_FSE_buildCTable(ptr noundef nonnull %i.ed, ptr noundef nonnull %i.a, i32 noundef %i.ee, i32 noundef %i.dt) #11
  %i.eg = call i32 @ZS_FSE_isError(i64 noundef %i.ef) #11
  %.not129 = icmp eq i32 %i.eg, 0
  br i1 %.not129, label %bb.an, label %bb.ae, !prof !37

bb.ae:                                            ; preds = %.thread180
  %i.eh = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !20
  %i.ei = icmp sgt i32 %i.eh, 0
  br i1 %i.ei, label %bb.af, label %.thread191

bb.af:                                            ; preds = %bb.ae
  call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ZS_fseContextEncode, i32 noundef 173, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.18) #11
  %.pr190 = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !20
  %i.ej = icmp sgt i32 %.pr190, 0
  br i1 %i.ej, label %bb.ag, label %.thread191

bb.ag:                                            ; preds = %bb.af
  call void (ptr, ptr, i32, ptr, ptr, ...) @ZL_LOG_func_if_nonempty(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ZS_fseContextEncode, i32 noundef 173, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #11
  br label %.thread191

.thread191:                                       ; preds = %bb.ae, %bb.af, %bb.ag
  call void @abort() #13
  unreachable

.thread184:                                       ; preds = %bb.u, %bb.ad
  store i8 1, ptr %.val143, align 1, !tbaa !21
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cc, i64 1032
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !40
  %i.em = add i32 %i.el, 1
  %i.en = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.em, i1 true)
  %i.eo = sub nuw nsw i32 32, %i.en               ; 2 uses
  %i.ep = trunc nuw nsw i32 %i.eo to i8
  %i.eq = load ptr, ptr %i.j, align 8, !tbaa !17  ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 1
  store ptr %i.er, ptr %i.j, align 8, !tbaa !17
  store i8 %i.ep, ptr %i.eq, align 1, !tbaa !21
  %i.es = getelementptr inbounds nuw i8, ptr %.0114208, i64 32
  %i.et = call i64 @ZS_FSE_buildCTable_raw(ptr noundef nonnull %i.es, i32 noundef %i.eo) #11
  %i.eu = call i32 @ZS_FSE_isError(i64 noundef %i.et) #11
  %.not128 = icmp eq i32 %i.eu, 0
  br i1 %.not128, label %bb.an, label %bb.ah, !prof !37

bb.ah:                                            ; preds = %.thread184
  %i.ev = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !20
  %i.ew = icmp sgt i32 %i.ev, 0
  br i1 %i.ew, label %bb.ai, label %.thread193

bb.ai:                                            ; preds = %bb.ah
  call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ZS_fseContextEncode, i32 noundef 180, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.19) #11
  %.pr192 = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !20
  %i.ex = icmp sgt i32 %.pr192, 0
  br i1 %i.ex, label %bb.aj, label %.thread193

bb.aj:                                            ; preds = %bb.ai
  call void (ptr, ptr, i32, ptr, ptr, ...) @ZL_LOG_func_if_nonempty(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ZS_fseContextEncode, i32 noundef 180, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #11
  br label %.thread193

.thread193:                                       ; preds = %bb.ah, %bb.ai, %bb.aj
  call void @abort() #13
  unreachable

bb.ak:                                            ; preds = %.thread187
  %i.ey = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !20
  %i.ez = icmp sgt i32 %i.ey, 0
  br i1 %i.ez, label %bb.al, label %.thread195

bb.al:                                            ; preds = %bb.ak
  call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ZS_fseContextEncode, i32 noundef 186, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.20) #11
  %.pr194 = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !20
  %i.fa = icmp sgt i32 %.pr194, 0
  br i1 %i.fa, label %bb.am, label %.thread195

bb.am:                                            ; preds = %bb.al
  call void (ptr, ptr, i32, ptr, ptr, ...) @ZL_LOG_func_if_nonempty(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ZS_fseContextEncode, i32 noundef 186, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #11
  br label %.thread195

.thread195:                                       ; preds = %bb.ak, %bb.al, %bb.am
  call void @abort() #13
  unreachable

bb.an:                                            ; preds = %.thread184, %.thread187, %.thread180
  %i.fb = getelementptr inbounds nuw i8, ptr %.0114208, i64 32
  %.val.i154 = load i16, ptr %i.fb, align 1, !tbaa !44 ; 3 uses
  %i.fc = zext i16 %.val.i154 to i32              ; 2 uses
  %i.fd = zext nneg i16 %.val.i154 to i64
  %i.fe = shl nuw i64 1, %i.fd
  store i64 %i.fe, ptr %.0114208, align 8, !tbaa !46
  %i.ff = getelementptr inbounds nuw i8, ptr %.0114208, i64 36 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.0114208, i64 8
  store ptr %i.ff, ptr %i.fg, align 8, !tbaa !47
  %.not.i155 = icmp eq i16 %.val.i154, 0
  %i.fh = add nsw i32 %i.fc, -1
  %i.fi = shl nuw i32 1, %i.fh
  %i.fj = sext i32 %i.fi to i64
  %i.fk = select i1 %.not.i155, i64 1, i64 %i.fj
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %.0114208, i64 16
  store ptr %i.fl, ptr %i.fm, align 8, !tbaa !48
  %i.fn = getelementptr inbounds nuw i8, ptr %.0114208, i64 24
  store i32 %i.fc, ptr %i.fn, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.fo = add nuw i64 %.0113209, 1                ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.0114208, i64 10280
  %exitcond.not = icmp eq i64 %i.fo, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !25

bb.ao:                                            ; preds = %bb.ap
  %.val147 = load ptr, ptr %i.j, align 8, !tbaa !17 ; 5 uses
  %.val140 = load ptr, ptr %i.k, align 8, !tbaa !18
  %i.fq = ptrtoint ptr %.val140 to i64
  %i.fr = ptrtoint ptr %.val147 to i64            ; 3 uses
  %i.fs = sub i64 %i.fq, %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %.val147, i64 %i.fs
  %i.fu = getelementptr inbounds i8, ptr %i.ft, i64 -8 ; 7 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !14    ; 2 uses
  %.val132 = load ptr, ptr %i.f, align 8, !tbaa !15 ; 2 uses
  %i.fv = ptrtoint ptr %.val132 to i64
  %i.fw = ptrtoint ptr %.val to i64
  %i.fx = sub i64 %i.fv, %i.fw
  %.not230 = icmp eq ptr %.val132, %.val
  br i1 %.not230, label %.preheader, label %.lr.ph216

.lr.ph216:                                        ; preds = %bb.ao
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ap, %._crit_edge
  %.0110210 = phi i64 [ 0, %._crit_edge ], [ %i.gw, %bb.ap ] ; 6 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %3, i64 %.0110210
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !21
  %i.gb = zext i8 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [10280 x i8], ptr %i.cb, i64 %i.gb
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.0110210
  store ptr %i.gc, ptr %i.gd, align 8, !tbaa !50
  %i.ge = or disjoint i64 %.0110210, 1            ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %3, i64 %i.ge
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !21
  %i.gh = zext i8 %i.gg to i64
  %i.gi = getelementptr inbounds nuw [10280 x i8], ptr %i.cb, i64 %i.gh
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.ge
  store ptr %i.gi, ptr %i.gj, align 8, !tbaa !50
  %i.gk = or disjoint i64 %.0110210, 2            ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !21
  %i.gn = zext i8 %i.gm to i64
  %i.go = getelementptr inbounds nuw [10280 x i8], ptr %i.cb, i64 %i.gn
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.gk
  store ptr %i.go, ptr %i.gp, align 8, !tbaa !50
  %i.gq = or disjoint i64 %.0110210, 3            ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %3, i64 %i.gq
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !21
  %i.gt = zext i8 %i.gs to i64
  %i.gu = getelementptr inbounds nuw [10280 x i8], ptr %i.cb, i64 %i.gt
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.gq
  store ptr %i.gu, ptr %i.gv, align 8, !tbaa !50
  %i.gw = add nuw nsw i64 %.0110210, 4            ; 2 uses
  %exitcond243.not.3 = icmp eq i64 %i.gw, 256
  br i1 %exitcond243.not.3, label %bb.ao, label %bb.ap, !llvm.loop !26

.preheader:                                       ; preds = %bb.aq, %bb.ao
  %.sroa.22.0.lcssa = phi ptr [ %.val147, %bb.ao ], [ %spec.store.select.i156, %bb.aq ] ; 2 uses
  %.sroa.11.0.lcssa = phi i32 [ 0, %bb.ao ], [ %i.ih, %bb.aq ] ; 2 uses
  %.sroa.0.0.lcssa = phi i64 [ 0, %bb.ao ], [ %i.ij, %bb.aq ] ; 2 uses
  br i1 %.not229, label %._crit_edge225, label %.lr.ph224

bb.aq:                                            ; preds = %.lr.ph216, %bb.aq
  %.0109214 = phi i64 [ 0, %.lr.ph216 ], [ %i.ik, %bb.aq ]
  %.sroa.0.0213 = phi i64 [ 0, %.lr.ph216 ], [ %i.ij, %bb.aq ]
  %.sroa.11.0212 = phi i32 [ 0, %.lr.ph216 ], [ %i.ih, %bb.aq ] ; 2 uses
  %.sroa.22.0211 = phi ptr [ %.val147, %.lr.ph216 ], [ %spec.store.select.i156, %bb.aq ] ; 2 uses
  %i.gx = load ptr, ptr %i.fy, align 8, !tbaa !15
  %i.gy = getelementptr inbounds i8, ptr %i.gx, i64 -1 ; 2 uses
  store ptr %i.gy, ptr %i.fy, align 8, !tbaa !15
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !21
  %i.ha = zext i8 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.ha
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !50 ; 4 uses
  %i.hd = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.he = getelementptr inbounds i8, ptr %i.hd, i64 -1 ; 2 uses
  store ptr %i.he, ptr %i.f, align 8, !tbaa !15
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !21
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !48
  %i.hi = zext i8 %i.hf to i64
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.hi ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.hj, align 4, !tbaa !20
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !20
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !47
  %i.hm = load i64, ptr %i.hc, align 8, !tbaa !46 ; 3 uses
  %i.hn = zext i32 %.sroa.4.0.copyload.i to i64
  %i.ho = add nsw i64 %i.hm, %i.hn
  %i.hp = lshr i64 %i.ho, 16                      ; 2 uses
  %i.hq = trunc i64 %i.hp to i32                  ; 2 uses
  %notmask.i.i = shl nsw i32 -1, %i.hq
  %5 = xor i32 %notmask.i.i, -1
  %i.hr = zext nneg i32 %5 to i64
  %i.hs = and i64 %i.hm, %i.hr
  %i.ht = zext nneg i32 %.sroa.11.0212 to i64
  %i.hu = shl nuw nsw i64 %i.hs, %i.ht
  %i.hv = or i64 %i.hu, %.sroa.0.0213             ; 2 uses
  %i.hw = add i32 %.sroa.11.0212, %i.hq           ; 2 uses
  %6 = and i64 %i.hp, 4294967295
  %i.hx = ashr i64 %i.hm, %6
  %i.hy = sext i32 %.sroa.0.0.copyload.i to i64
  %i.hz = getelementptr [2 x i8], ptr %i.hl, i64 %i.hx
  %i.ia = getelementptr [2 x i8], ptr %i.hz, i64 %i.hy
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !51
  %i.ic = zext i16 %i.ib to i64
  store i64 %i.ic, ptr %i.hc, align 8, !tbaa !46
  %i.id = lshr i32 %i.hw, 3
  %i.ie = zext nneg i32 %i.id to i64              ; 2 uses
  store i64 %i.hv, ptr %.sroa.22.0211, align 1, !tbaa !53
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.22.0211, i64 %i.ie ; 2 uses
  %i.ig = icmp ugt ptr %i.if, %i.fu
  %spec.store.select.i156 = select i1 %i.ig, ptr %i.fu, ptr %i.if ; 2 uses
  %i.ih = and i32 %i.hw, 7                        ; 2 uses
  %i.ii = shl nuw nsw i64 %i.ie, 3
  %i.ij = lshr i64 %i.hv, %i.ii                   ; 2 uses
  %i.ik = add nuw i64 %.0109214, 1                ; 2 uses
  %exitcond244.not = icmp eq i64 %i.ik, %i.fx
  br i1 %exitcond244.not, label %.preheader, label %bb.aq, !llvm.loop !27

._crit_edge225:                                   ; preds = %.lr.ph224, %.preheader
  %.sroa.22.1.lcssa = phi ptr [ %.sroa.22.0.lcssa, %.preheader ], [ %spec.store.select.i.i158, %.lr.ph224 ] ; 2 uses
  %.sroa.11.1.lcssa = phi i32 [ %.sroa.11.0.lcssa, %.preheader ], [ %i.jl, %.lr.ph224 ] ; 2 uses
  %.sroa.0.1.lcssa = phi i64 [ %.sroa.0.0.lcssa, %.preheader ], [ %i.jn, %.lr.ph224 ]
  %i.il = zext nneg i32 %.sroa.11.1.lcssa to i64
  %i.im = shl nuw nsw i64 1, %i.il
  %i.in = or i64 %i.im, %.sroa.0.1.lcssa
  %i.io = add nuw nsw i32 %.sroa.11.1.lcssa, 1    ; 2 uses
  %i.ip = lshr i32 %i.io, 3
  %i.iq = zext nneg i32 %i.ip to i64
  store i64 %i.in, ptr %.sroa.22.1.lcssa, align 1, !tbaa !53
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.22.1.lcssa, i64 %i.iq ; 2 uses
  %i.is = icmp ugt ptr %i.ir, %i.fu
  %spec.store.select.i.i = select i1 %i.is, ptr %i.fu, ptr %i.ir ; 2 uses
  %.not.i157 = icmp ult ptr %spec.store.select.i.i, %i.fu
  br i1 %.not.i157, label %BIT_closeCStream.exit, label %BIT_closeCStream.exit.thread

BIT_closeCStream.exit:                            ; preds = %._crit_edge225
  %i.it = and i32 %i.io, 7
  %i.iu = ptrtoint ptr %spec.store.select.i.i to i64
  %i.iv = icmp ne i32 %i.it, 0
  %i.iw = zext i1 %i.iv to i64
  %i.ix = add i64 %i.iu, %i.iw                    ; 2 uses
  %.not123 = icmp eq i64 %i.ix, %i.fr
  br i1 %.not123, label %BIT_closeCStream.exit.thread, label %bb.at, !prof !54

.lr.ph224:                                        ; preds = %.preheader, %.lr.ph224
  %.0223 = phi i64 [ %i.iy, %.lr.ph224 ], [ %i.e, %.preheader ]
  %.sroa.0.1222 = phi i64 [ %i.jn, %.lr.ph224 ], [ %.sroa.0.0.lcssa, %.preheader ]
  %.sroa.11.1221 = phi i32 [ %i.jl, %.lr.ph224 ], [ %.sroa.11.0.lcssa, %.preheader ] ; 2 uses
  %.sroa.22.1220 = phi ptr [ %spec.store.select.i.i158, %.lr.ph224 ], [ %.sroa.22.0.lcssa, %.preheader ] ; 2 uses
  %i.iy = add i64 %.0223, -1                      ; 3 uses
  %i.iz = getelementptr inbounds nuw [10280 x i8], ptr %i.cb, i64 %i.iy ; 2 uses
  %.val152 = load i64, ptr %i.iz, align 8, !tbaa !46
  %i.ja = getelementptr i8, ptr %i.iz, i64 24
  %.val153 = load i32, ptr %i.ja, align 8, !tbaa !49 ; 2 uses
  %notmask.i.i158 = shl nsw i32 -1, %.val153
  %7 = xor i32 %notmask.i.i158, -1
  %i.jb = zext nneg i32 %7 to i64
  %i.jc = and i64 %.val152, %i.jb
  %i.jd = zext nneg i32 %.sroa.11.1221 to i64
  %i.je = shl nuw nsw i64 %i.jc, %i.jd
  %i.jf = or i64 %i.je, %.sroa.0.1222             ; 2 uses
  %i.jg = add i32 %.val153, %.sroa.11.1221        ; 2 uses
  %i.jh = lshr i32 %i.jg, 3
  %i.ji = zext nneg i32 %i.jh to i64              ; 2 uses
  store i64 %i.jf, ptr %.sroa.22.1220, align 1, !tbaa !53
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.22.1220, i64 %i.ji ; 2 uses
  %i.jk = icmp ugt ptr %i.jj, %i.fu
  %spec.store.select.i.i158 = select i1 %i.jk, ptr %i.fu, ptr %i.jj ; 2 uses
  %i.jl = and i32 %i.jg, 7                        ; 2 uses
  %i.jm = shl nuw nsw i64 %i.ji, 3
  %i.jn = lshr i64 %i.jf, %i.jm                   ; 2 uses
  %.not122 = icmp eq i64 %i.iy, 0
  br i1 %.not122, label %._crit_edge225, label %.lr.ph224, !llvm.loop !28

BIT_closeCStream.exit.thread:                     ; preds = %._crit_edge225, %BIT_closeCStream.exit
  %i.jo = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !20
  %i.jp = icmp sgt i32 %i.jo, 0
  br i1 %i.jp, label %bb.ar, label %.thread200

bb.ar:                                            ; preds = %BIT_closeCStream.exit.thread
  call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ZS_fseContextEncode, i32 noundef 223, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.22, i64 noundef 0, i64 noundef 0) #11
  %.pr199 = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !20
  %i.jq = icmp sgt i32 %.pr199, 0
  br i1 %i.jq, label %bb.as, label %.thread200

bb.as:                                            ; preds = %bb.ar
  call void (ptr, ptr, i32, ptr, ptr, ...) @ZL_LOG_func_if_nonempty(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ZS_fseContextEncode, i32 noundef 223, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #11
  br label %.thread200

.thread200:                                       ; preds = %BIT_closeCStream.exit.thread, %bb.ar, %bb.as
  call void @abort() #13
  unreachable

bb.at:                                            ; preds = %BIT_closeCStream.exit
  %i.jr = sub i64 %i.ix, %i.fr
  %i.js = getelementptr inbounds nuw i8, ptr %.val147, i64 %i.jr
  store ptr %i.js, ptr %i.j, align 8, !tbaa !17
  call void @free(ptr noundef nonnull %i.bx) #11
  br label %bb.au

bb.au:                                            ; preds = %ZL_WC_pushVarint.exit, %bb.at, %bb.g
  %.sroa.0106.0 = phi i32 [ 0, %bb.at ], [ %i.ao, %bb.g ], [ 0, %ZL_WC_pushVarint.exit ]
  %.sroa.9.0 = phi i64 [ 0, %bb.at ], [ %i.aq, %bb.g ], [ 0, %ZL_WC_pushVarint.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0106.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.9.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @ZL_NULL_getOperationContext(ptr noundef) local_unnamed_addr #3

declare void @ZL_LOG_func(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare void @ZL_LOG_func_if_nonempty(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare { i32, i64 } @ZL_ContextClustering_encode(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare { i32, ptr } @ZL_E_addFrame(ptr noundef, i32, ptr, ptr, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

declare i32 @ZS_FSE_optimalTableLog(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

declare i64 @ZS_FSE_normalizeCount(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @ZS_FSE_isError(i64 noundef) local_unnamed_addr #4

declare i64 @ZS_FSE_writeNCount(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i64 @ZS_FSE_buildCTable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i64 @ZS_FSE_buildCTable_raw(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i64 @ZS_FSE_buildCTable_constant(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define { i32, i64 } @ZS_fseO1Encode(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.ZL_ReadCursor, align 8      ; 5 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !14    ; 3 uses
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val9 = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.b = icmp eq ptr %.val9, %.val
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !56
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -1
  store ptr %i.e, ptr %i.c, align 8, !tbaa !15
  %i.f = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %.val10 = load ptr, ptr %i.f, align 8, !tbaa !17 ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 16
  %.val11 = load ptr, ptr %i.g, align 8, !tbaa !18 ; 2 uses
  %i.h = ptrtoint ptr %.val11 to i64
  %i.i = ptrtoint ptr %.val10 to i64
  %i.j = sub i64 %i.h, %i.i
  %.not = icmp eq ptr %.val11, %.val10
  br i1 %.not, label %bb.c, label %bb.f, !prof !19

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !20
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ZS_fseO1Encode, i32 noundef 243, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.23, i64 noundef %i.j, i64 noundef 1) #11
  %.pr = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !20
  %i.m = icmp sgt i32 %.pr, 0
  br i1 %i.m, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @ZL_LOG_func_if_nonempty(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ZS_fseO1Encode, i32 noundef 243, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #11
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e
  tail call void @abort() #13
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 1
  store ptr %i.n, ptr %1, align 8, !tbaa !14
  %.val.i = load i8, ptr %.val, align 1
  store i8 %.val.i, ptr %.val10, align 1
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store ptr %i.p, ptr %i.f, align 8, !tbaa !17
  %i.q = call { i32, i64 } @ZS_fseContextEncode(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef %2) ; 2 uses
  %i.r = extractvalue { i32, i64 } %i.q, 0
  %i.s = extractvalue { i32, i64 } %i.q, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %.sroa.0.0 = phi i32 [ %i.r, %bb.f ], [ 0, %bb.a ]
  %.sroa.3.0 = phi i64 [ %i.s, %bb.f ], [ 0, %bb.a ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define { i32, i64 } @ZS_fseContextO1Encode(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.ZL_ReadCursor, align 8      ; 5 uses
  %.val32 = load ptr, ptr %1, align 8, !tbaa !14  ; 4 uses
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val33 = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.b = icmp eq ptr %.val33, %.val32
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %.val34 = load ptr, ptr %i.c, align 8, !tbaa !17 ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 16
  %.val35 = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  %i.e = ptrtoint ptr %.val35 to i64
  %i.f = ptrtoint ptr %.val34 to i64
  %i.g = sub i64 %i.e, %i.f
  %.not = icmp eq ptr %.val35, %.val34
  br i1 %.not, label %bb.c, label %bb.f, !prof !19

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !20
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ZS_fseContextO1Encode, i32 noundef 266, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.23, i64 noundef %i.g, i64 noundef 1) #11
  %.pr = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !20
  %i.j = icmp sgt i32 %.pr, 0
  br i1 %i.j, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @ZL_LOG_func_if_nonempty(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ZS_fseContextO1Encode, i32 noundef 266, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #11
end_hunk_1
