Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ioReadBaf?download=true
inline.NumInlined: 34
inline.NumDeleted: 19
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@str = private unnamed_addr constant [42 x i8] c"Io_ReadBaf: The network check has failed.\00", align 1
@str.1 = private unnamed_addr constant [32 x i8] c"Warning: Internal reader error.\00", align 1

; Function Attrs: nounwind uwtable
define ptr @Io_ReadBaf(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @Extra_FileSize(ptr noundef %0) #9
  %i.b = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str) ; 2 uses
  %i.c = sext i32 %i.a to i64                     ; 3 uses
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #10 ; 7 uses
  %i.e = tail call i64 @fread(ptr noundef %i.d, i64 noundef %i.c, i64 noundef 1, ptr noundef %i.b) ; 0 uses
  %i.f = tail call i32 @fclose(ptr noundef %i.b)  ; 0 uses
  %i.g = load i8, ptr %i.d, align 1, !tbaa !17    ; 2 uses
  %i.h = icmp eq i8 %i.g, 35
  br i1 %i.h, label %.preheader197, label %.preheader196

.preheader197:                                    ; preds = %bb.a, %bb.b
  %.0209 = phi ptr [ %i.m, %bb.b ], [ %i.d, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %.0209, i64 1
  br label %thread-pre-split

.preheader196:                                    ; preds = %bb.b, %bb.a
  %.0.lcssa = phi ptr [ %i.d, %bb.a ], [ %i.m, %bb.b ] ; 3 uses
  %.lcssa208 = phi i8 [ %i.g, %bb.a ], [ %i.n, %bb.b ]
  %i.j = getelementptr i8, ptr %.0.lcssa, i64 1   ; 2 uses
  %.not211 = icmp eq i8 %.lcssa208, 0
  br i1 %.not211, label %bb.c, label %thread-pre-split190.lr.ph, !llvm.loop !8

thread-pre-split190.lr.ph:                        ; preds = %.preheader196
  %strlen = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j)
  %i.k = getelementptr i8, ptr %.0.lcssa, i64 %strlen
  %scevgep = getelementptr i8, ptr %i.k, i64 2
  br label %bb.c, !llvm.loop !8

thread-pre-split:                                 ; preds = %.preheader197, %thread-pre-split
  %i.l = phi ptr [ %i.i, %.preheader197 ], [ %i.m, %thread-pre-split ] ; 2 uses
  %.pr = load i8, ptr %i.l, align 1, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 4 uses
  %.not151 = icmp eq i8 %.pr, 10
  br i1 %.not151, label %bb.b, label %thread-pre-split, !llvm.loop !9

bb.b:                                             ; preds = %thread-pre-split
  %i.n = load i8, ptr %i.m, align 1, !tbaa !17    ; 2 uses
  %i.o = icmp eq i8 %i.n, 35
  br i1 %i.o, label %.preheader197, label %.preheader196, !llvm.loop !10

bb.c:                                             ; preds = %thread-pre-split190.lr.ph, %.preheader196
  %.lcssa206 = phi ptr [ %scevgep, %thread-pre-split190.lr.ph ], [ %i.j, %.preheader196 ] ; 6 uses
  %i.p = tail call i64 @strtol(ptr noundef nonnull captures(none) %.lcssa206, ptr noundef null, i32 noundef 10) #9, !inline_history !11
  %strlen246 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.lcssa206) ; 4 uses
  %i.q = getelementptr i8, ptr %.lcssa206, i64 %strlen246
  %scevgep247 = getelementptr i8, ptr %i.q, i64 1 ; 2 uses
  %i.r = tail call i64 @strtol(ptr noundef nonnull captures(none) %scevgep247, ptr noundef null, i32 noundef 10) #9, !inline_history !11
  %strlen248 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %scevgep247) ; 3 uses
  %i.s = getelementptr i8, ptr %.lcssa206, i64 %strlen246
  %i.t = getelementptr i8, ptr %i.s, i64 %strlen248
  %scevgep249 = getelementptr i8, ptr %i.t, i64 2 ; 2 uses
  %i.u = tail call i64 @strtol(ptr noundef nonnull captures(none) %scevgep249, ptr noundef null, i32 noundef 10) #9, !inline_history !11
  %strlen250 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %scevgep249) ; 2 uses
  %i.v = getelementptr i8, ptr %.lcssa206, i64 %strlen246
  %i.w = getelementptr i8, ptr %i.v, i64 %strlen250
  %i.x = getelementptr i8, ptr %i.w, i64 %strlen248
  %scevgep251 = getelementptr i8, ptr %i.x, i64 3 ; 2 uses
  %i.y = tail call i64 @strtol(ptr noundef nonnull captures(none) %scevgep251, ptr noundef null, i32 noundef 10) #9, !inline_history !11 ; 2 uses
  %strlen252 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %scevgep251)
  %i.z = trunc i64 %i.p to i32                    ; 3 uses
  %i.aa = trunc i64 %i.r to i32                   ; 3 uses
  %i.ab = trunc i64 %i.u to i32                   ; 4 uses
  %i.ac = trunc i64 %i.y to i32                   ; 4 uses
  %i.ad = getelementptr i8, ptr %.lcssa206, i64 %strlen246
  %i.ae = getelementptr i8, ptr %i.ad, i64 %strlen252
  %i.af = getelementptr i8, ptr %i.ae, i64 %strlen248
  %i.ag = getelementptr i8, ptr %i.af, i64 %strlen250
  %scevgep253 = getelementptr i8, ptr %i.ag, i64 4 ; 2 uses
  %i.ah = tail call ptr @Abc_NtkAlloc(i32 noundef 3, i32 noundef 3, i32 noundef 1) #9 ; 16 uses
  %i.ai = tail call ptr @Extra_UtilStrsav(ptr noundef nonnull %.0.lcssa) #9
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !36
  %i.ak = tail call ptr @Extra_UtilStrsav(ptr noundef %0) #9
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !37
  %i.am = add nsw i32 %i.z, 1
  %i.an = add nsw i32 %i.am, %i.ab
  %i.ao = add nsw i32 %i.an, %i.ac                ; 2 uses
  %i.ap = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #10 ; 11 uses
  %i.aq = add i32 %i.ao, -1
  %or.cond.i = icmp ult i32 %i.aq, 7
  %spec.store.select.i = select i1 %or.cond.i, i32 8, i32 %i.ao ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 4 ; 4 uses
  store i32 %spec.store.select.i, ptr %i.ap, align 8, !tbaa !40
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_PtrGrow.exit12.sink.split.i, label %Vec_PtrAlloc.exit

Vec_PtrAlloc.exit:                                ; preds = %bb.c
  %i.as = sext i32 %spec.store.select.i to i64
  %i.at = shl nsw i64 %i.as, 3
  %i.au = tail call noalias ptr @malloc(i64 noundef %i.at) #10 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  store ptr %i.au, ptr %i.av, align 8, !tbaa !41
  %i.aw = tail call ptr @Abc_AigConst1(ptr noundef nonnull %i.ah) #9
  br label %Vec_PtrPush.exit

Vec_PtrGrow.exit12.sink.split.i:                  ; preds = %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.ay = tail call ptr @Abc_AigConst1(ptr noundef nonnull %i.ah) #9
  %i.az = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #10 ; 2 uses
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !41
  store i32 16, ptr %i.ap, align 8, !tbaa !40
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %Vec_PtrAlloc.exit, %Vec_PtrGrow.exit12.sink.split.i
  %i.ba = phi i32 [ %spec.store.select.i, %Vec_PtrAlloc.exit ], [ 16, %Vec_PtrGrow.exit12.sink.split.i ] ; 3 uses
  %i.bb = phi ptr [ %i.au, %Vec_PtrAlloc.exit ], [ %i.az, %Vec_PtrGrow.exit12.sink.split.i ]
  %i.bc = phi ptr [ %i.aw, %Vec_PtrAlloc.exit ], [ %i.ay, %Vec_PtrGrow.exit12.sink.split.i ]
  %i.bd = phi ptr [ %i.av, %Vec_PtrAlloc.exit ], [ %i.ax, %Vec_PtrGrow.exit12.sink.split.i ] ; 14 uses
  store i32 1, ptr %i.ar, align 4, !tbaa !42
  store ptr %i.bc, ptr %i.bb, align 8, !tbaa !43
  %i.be = icmp sgt i32 %i.z, 0
  br i1 %i.be, label %.lr.ph, label %.preheader195

.preheader195:                                    ; preds = %Vec_PtrPush.exit169, %Vec_PtrPush.exit
  %i.bf = phi i32 [ %i.ba, %Vec_PtrPush.exit ], [ %i.by, %Vec_PtrPush.exit169 ]
  %i.bg = phi i32 [ 1, %Vec_PtrPush.exit ], [ %i.cb, %Vec_PtrPush.exit169 ]
  %.7.lcssa = phi ptr [ %scevgep253, %Vec_PtrPush.exit ], [ %scevgep256, %Vec_PtrPush.exit169 ] ; 2 uses
  %i.bh = icmp sgt i32 %i.aa, 0
  br i1 %i.bh, label %.lr.ph218, label %.preheader

.lr.ph:                                           ; preds = %Vec_PtrPush.exit, %Vec_PtrPush.exit169
  %i.bi = phi i32 [ %i.by, %Vec_PtrPush.exit169 ], [ %i.ba, %Vec_PtrPush.exit ] ; 2 uses
  %i.bj = phi i32 [ %i.ca, %Vec_PtrPush.exit169 ], [ %i.ba, %Vec_PtrPush.exit ] ; 7 uses
  %i.bk = phi i32 [ %i.cb, %Vec_PtrPush.exit169 ], [ 1, %Vec_PtrPush.exit ] ; 3 uses
  %.7214 = phi ptr [ %scevgep256, %Vec_PtrPush.exit169 ], [ %scevgep253, %Vec_PtrPush.exit ] ; 3 uses
  %.0123213 = phi i32 [ %i.ce, %Vec_PtrPush.exit169 ], [ 0, %Vec_PtrPush.exit ]
  %i.bl = tail call ptr @Abc_NtkCreateObj(ptr noundef %i.ah, i32 noundef 2) #9 ; 2 uses
  %i.bm = tail call ptr @Abc_ObjAssignName(ptr noundef %i.bl, ptr noundef nonnull %.7214, ptr noundef null) #9 ; 0 uses
  %strlen254 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.7214)
  %scevgep255 = getelementptr i8, ptr %.7214, i64 1
  %scevgep256 = getelementptr i8, ptr %scevgep255, i64 %strlen254 ; 2 uses
  %i.bn = icmp eq i32 %i.bk, %i.bj
  br i1 %i.bn, label %bb.d, label %.lr.ph.Vec_PtrPush.exit169_crit_edge

.lr.ph.Vec_PtrPush.exit169_crit_edge:             ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.bd, align 8, !tbaa !41
  br label %Vec_PtrPush.exit169

bb.d:                                             ; preds = %.lr.ph
  %i.bo = icmp slt i32 %i.bj, 16
  br i1 %i.bo, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.bp = load ptr, ptr %i.bd, align 8, !tbaa !41 ; 2 uses
  %.not9.i.i167 = icmp eq ptr %i.bp, null
  br i1 %.not9.i.i167, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bq = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.bp, i64 noundef 128) #11
  br label %Vec_PtrGrow.exit12.sink.split.i165

bb.g:                                             ; preds = %bb.e
  %i.br = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #10
  br label %Vec_PtrGrow.exit12.sink.split.i165

bb.h:                                             ; preds = %bb.d
  %i.bs = icmp samesign ult i32 %i.bj, 1073741823
  %i.bt = shl nuw nsw i32 %i.bj, 1
  %spec.select.i162 = select i1 %i.bs, i32 %i.bt, i32 2147483647 ; 4 uses
  %.not.i10.i163 = icmp samesign ult i32 %i.bj, %spec.select.i162
  %.pre276 = load ptr, ptr %i.bd, align 8, !tbaa !41 ; 3 uses
  br i1 %.not.i10.i163, label %bb.i, label %Vec_PtrPush.exit169

bb.i:                                             ; preds = %bb.h
  %.not9.i11.i164 = icmp eq ptr %.pre276, null
  %i.bu = zext nneg i32 %spec.select.i162 to i64
  %i.bv = shl nuw nsw i64 %i.bu, 3                ; 2 uses
  br i1 %.not9.i11.i164, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bw = tail call ptr @realloc(ptr noundef nonnull %.pre276, i64 noundef %i.bv) #11
  br label %Vec_PtrGrow.exit12.sink.split.i165

bb.k:                                             ; preds = %bb.i
  %i.bx = tail call noalias ptr @malloc(i64 noundef %i.bv) #10
  br label %Vec_PtrGrow.exit12.sink.split.i165

Vec_PtrGrow.exit12.sink.split.i165:               ; preds = %bb.j, %bb.k, %bb.f, %bb.g
  %storemerge194 = phi ptr [ %i.br, %bb.g ], [ %i.bq, %bb.f ], [ %i.bw, %bb.j ], [ %i.bx, %bb.k ] ; 2 uses
  %spec.select.sink.i166 = phi i32 [ 16, %bb.g ], [ 16, %bb.f ], [ %spec.select.i162, %bb.j ], [ %spec.select.i162, %bb.k ] ; 3 uses
  store ptr %storemerge194, ptr %i.bd, align 8, !tbaa !41
  store i32 %spec.select.sink.i166, ptr %i.ap, align 8, !tbaa !40
  br label %Vec_PtrPush.exit169

Vec_PtrPush.exit169:                              ; preds = %.lr.ph.Vec_PtrPush.exit169_crit_edge, %bb.h, %Vec_PtrGrow.exit12.sink.split.i165
  %i.by = phi i32 [ %i.bi, %.lr.ph.Vec_PtrPush.exit169_crit_edge ], [ %i.bi, %bb.h ], [ %spec.select.sink.i166, %Vec_PtrGrow.exit12.sink.split.i165 ] ; 2 uses
  %i.bz = phi ptr [ %.pre, %.lr.ph.Vec_PtrPush.exit169_crit_edge ], [ %.pre276, %bb.h ], [ %storemerge194, %Vec_PtrGrow.exit12.sink.split.i165 ]
  %i.ca = phi i32 [ %i.bj, %.lr.ph.Vec_PtrPush.exit169_crit_edge ], [ %i.bj, %bb.h ], [ %spec.select.sink.i166, %Vec_PtrGrow.exit12.sink.split.i165 ]
  %i.cb = add nuw nsw i32 %i.bk, 1                ; 3 uses
  store i32 %i.cb, ptr %i.ar, align 4, !tbaa !42
  %i.cc = zext nneg i32 %i.bk to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cc
  store ptr %i.bl, ptr %i.cd, align 8, !tbaa !43
  %i.ce = add nuw nsw i32 %.0123213, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ce, %i.z
  br i1 %exitcond.not, label %.preheader195, label %.lr.ph, !llvm.loop !12

.preheader:                                       ; preds = %.lr.ph218, %.preheader195
  %.9.lcssa = phi ptr [ %.7.lcssa, %.preheader195 ], [ %scevgep259, %.lr.ph218 ] ; 2 uses
  %i.cf = icmp sgt i32 %i.ab, 0
  br i1 %i.cf, label %.lr.ph222, label %._crit_edge223

.lr.ph218:                                        ; preds = %.preheader195, %.lr.ph218
  %.9217 = phi ptr [ %scevgep259, %.lr.ph218 ], [ %.7.lcssa, %.preheader195 ] ; 3 uses
  %.1124216 = phi i32 [ %i.ci, %.lr.ph218 ], [ 0, %.preheader195 ]
  %i.cg = tail call ptr @Abc_NtkCreateObj(ptr noundef %i.ah, i32 noundef 3) #9
  %i.ch = tail call ptr @Abc_ObjAssignName(ptr noundef %i.cg, ptr noundef nonnull %.9217, ptr noundef null) #9 ; 0 uses
  %strlen257 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.9217)
  %scevgep258 = getelementptr i8, ptr %.9217, i64 1
  %scevgep259 = getelementptr i8, ptr %scevgep258, i64 %strlen257 ; 2 uses
  %i.ci = add nuw nsw i32 %.1124216, 1            ; 2 uses
  %exitcond260.not = icmp eq i32 %i.ci, %i.aa
  br i1 %exitcond260.not, label %.preheader, label %.lr.ph218, !llvm.loop !13

.lr.ph222:                                        ; preds = %.preheader, %Vec_PtrPush.exit177
  %.11221 = phi ptr [ %scevgep269, %Vec_PtrPush.exit177 ], [ %.9.lcssa, %.preheader ] ; 5 uses
  %.2125220 = phi i32 [ %i.dj, %Vec_PtrPush.exit177 ], [ 0, %.preheader ]
  %i.cj = tail call ptr @Abc_NtkCreateObj(ptr noundef %i.ah, i32 noundef 8) #9 ; 3 uses
  %i.ck = tail call ptr @Abc_ObjAssignName(ptr noundef %i.cj, ptr noundef nonnull %.11221, ptr noundef null) #9 ; 0 uses
  %strlen261 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.11221) ; 3 uses
  %scevgep262 = getelementptr i8, ptr %.11221, i64 1
  %scevgep263 = getelementptr i8, ptr %scevgep262, i64 %strlen261 ; 2 uses
  %i.cl = tail call ptr @Abc_NtkCreateObj(ptr noundef %i.ah, i32 noundef 4) #9 ; 2 uses
  %i.cm = tail call ptr @Abc_ObjAssignName(ptr noundef %i.cl, ptr noundef nonnull %scevgep263, ptr noundef null) #9 ; 0 uses
  %strlen264 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %scevgep263) ; 2 uses
  %scevgep265 = getelementptr i8, ptr %.11221, i64 2
  %2 = getelementptr i8, ptr %scevgep265, i64 %strlen261
  %scevgep266 = getelementptr i8, ptr %2, i64 %strlen264 ; 2 uses
  %i.cn = tail call ptr @Abc_NtkCreateObj(ptr noundef %i.ah, i32 noundef 5) #9 ; 3 uses
  %i.co = tail call ptr @Abc_ObjAssignName(ptr noundef %i.cn, ptr noundef nonnull %scevgep266, ptr noundef null) #9 ; 0 uses
  %strlen267 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %scevgep266)
  %scevgep268 = getelementptr i8, ptr %.11221, i64 3
  %i.cp = getelementptr i8, ptr %scevgep268, i64 %strlen261
  %i.cq = getelementptr i8, ptr %i.cp, i64 %strlen267
  %scevgep269 = getelementptr i8, ptr %i.cq, i64 %strlen264 ; 2 uses
  %i.cr = load i32, ptr %i.ar, align 4, !tbaa !42 ; 8 uses
  %i.cs = load i32, ptr %i.ap, align 8, !tbaa !40 ; 2 uses
  %i.ct = icmp eq i32 %i.cr, %i.cs
  br i1 %i.ct, label %bb.l, label %.lr.ph222.Vec_PtrPush.exit177_crit_edge

.lr.ph222.Vec_PtrPush.exit177_crit_edge:          ; preds = %.lr.ph222
  %.pre277 = load ptr, ptr %i.bd, align 8, !tbaa !41
  br label %Vec_PtrPush.exit177

bb.l:                                             ; preds = %.lr.ph222
  %i.cu = icmp slt i32 %i.cr, 16
  br i1 %i.cu, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.cv = load ptr, ptr %i.bd, align 8, !tbaa !41 ; 2 uses
  %.not9.i.i175 = icmp eq ptr %i.cv, null
  br i1 %.not9.i.i175, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cw = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.cv, i64 noundef 128) #11
  br label %Vec_PtrGrow.exit12.sink.split.i173

bb.o:                                             ; preds = %bb.m
  %i.cx = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #10
  br label %Vec_PtrGrow.exit12.sink.split.i173

bb.p:                                             ; preds = %bb.l
  %i.cy = icmp samesign ult i32 %i.cr, 1073741823
  %i.cz = shl nuw nsw i32 %i.cr, 1
  %spec.select.i170 = select i1 %i.cy, i32 %i.cz, i32 2147483647 ; 4 uses
  %.not.i10.i171 = icmp samesign ult i32 %i.cr, %spec.select.i170
  %.pre278 = load ptr, ptr %i.bd, align 8, !tbaa !41 ; 3 uses
  br i1 %.not.i10.i171, label %bb.q, label %Vec_PtrPush.exit177

bb.q:                                             ; preds = %bb.p
  %.not9.i11.i172 = icmp eq ptr %.pre278, null
  %i.da = zext nneg i32 %spec.select.i170 to i64
  %i.db = shl nuw nsw i64 %i.da, 3                ; 2 uses
  br i1 %.not9.i11.i172, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dc = tail call ptr @realloc(ptr noundef nonnull %.pre278, i64 noundef %i.db) #11
  br label %Vec_PtrGrow.exit12.sink.split.i173

bb.s:                                             ; preds = %bb.q
  %i.dd = tail call noalias ptr @malloc(i64 noundef %i.db) #10
  br label %Vec_PtrGrow.exit12.sink.split.i173

Vec_PtrGrow.exit12.sink.split.i173:               ; preds = %bb.r, %bb.s, %bb.n, %bb.o
  %storemerge193 = phi ptr [ %i.cx, %bb.o ], [ %i.cw, %bb.n ], [ %i.dc, %bb.r ], [ %i.dd, %bb.s ] ; 2 uses
  %spec.select.sink.i174 = phi i32 [ 16, %bb.o ], [ 16, %bb.n ], [ %spec.select.i170, %bb.r ], [ %spec.select.i170, %bb.s ] ; 2 uses
  store ptr %storemerge193, ptr %i.bd, align 8, !tbaa !41
  store i32 %spec.select.sink.i174, ptr %i.ap, align 8, !tbaa !40
  br label %Vec_PtrPush.exit177

Vec_PtrPush.exit177:                              ; preds = %.lr.ph222.Vec_PtrPush.exit177_crit_edge, %bb.p, %Vec_PtrGrow.exit12.sink.split.i173
  %i.de = phi i32 [ %i.cs, %.lr.ph222.Vec_PtrPush.exit177_crit_edge ], [ %i.cr, %bb.p ], [ %spec.select.sink.i174, %Vec_PtrGrow.exit12.sink.split.i173 ]
  %i.df = phi ptr [ %.pre277, %.lr.ph222.Vec_PtrPush.exit177_crit_edge ], [ %.pre278, %bb.p ], [ %storemerge193, %Vec_PtrGrow.exit12.sink.split.i173 ]
  %i.dg = add nsw i32 %i.cr, 1                    ; 2 uses
  store i32 %i.dg, ptr %i.ar, align 4, !tbaa !42
  %i.dh = sext i32 %i.cr to i64
  %i.di = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.dh
  store ptr %i.cn, ptr %i.di, align 8, !tbaa !43
  tail call void @Abc_ObjAddFanin(ptr noundef %i.cj, ptr noundef %i.cl) #9
  tail call void @Abc_ObjAddFanin(ptr noundef %i.cn, ptr noundef %i.cj) #9
  %i.dj = add nuw nsw i32 %.2125220, 1            ; 2 uses
  %exitcond270.not = icmp eq i32 %i.dj, %i.ab
  br i1 %exitcond270.not, label %._crit_edge223, label %.lr.ph222, !llvm.loop !14

._crit_edge223:                                   ; preds = %Vec_PtrPush.exit177, %.preheader
  %i.dk = phi i32 [ %i.bf, %.preheader ], [ %i.de, %Vec_PtrPush.exit177 ]
  %i.dl = phi i32 [ %i.bg, %.preheader ], [ %i.dg, %Vec_PtrPush.exit177 ]
  %.11.lcssa = phi ptr [ %.9.lcssa, %.preheader ], [ %scevgep269, %Vec_PtrPush.exit177 ]
  %i.dm = shl nsw i32 %i.ac, 1                    ; 2 uses
  %i.dn = add i32 %i.ab, %i.aa
  %i.do = add i32 %i.dn, %i.dm
  %i.dp = sext i32 %i.do to i64
  %i.dq = shl nsw i64 %i.dp, 2
  %i.dr = sub nsw i64 %i.c, %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.dr ; 3 uses
  %.not139 = icmp eq ptr %i.ds, %.11.lcssa
  br i1 %.not139, label %bb.v, label %bb.t

bb.t:                                             ; preds = %._crit_edge223
  tail call void @free(ptr noundef nonnull %i.d) #9
  %i.dt = load ptr, ptr %i.bd, align 8, !tbaa !41 ; 2 uses
  %.not.i178 = icmp eq ptr %i.dt, null
  br i1 %.not.i178, label %Vec_PtrFree.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @free(ptr noundef nonnull %i.dt) #9
  br label %Vec_PtrFree.exit

Vec_PtrFree.exit:                                 ; preds = %bb.t, %bb.u
  tail call void @free(ptr noundef nonnull %i.ap) #9
  tail call void @Abc_NtkDelete(ptr noundef %i.ah) #9
  %puts145 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %bb.ai

bb.v:                                             ; preds = %._crit_edge223
  %i.du = load ptr, ptr @stdout, align 8, !tbaa !45
  %i.dv = tail call ptr @Extra_ProgressBarStart(ptr noundef %i.du, i32 noundef %i.ac) #9 ; 4 uses
  %i.dw = icmp sgt i32 %i.ac, 0
  br i1 %i.dw, label %.lr.ph227, label %._crit_edge228

.lr.ph227:                                        ; preds = %bb.v
  %.not.i179 = icmp eq ptr %i.dv, null
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ah, i64 256
  %wide.trip.count = and i64 %i.y, 2147483647
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph227, %Vec_PtrPush.exit187
  %i.dy = phi i32 [ %i.dk, %.lr.ph227 ], [ %i.fj, %Vec_PtrPush.exit187 ] ; 7 uses
  %i.dz = phi i32 [ %i.dl, %.lr.ph227 ], [ %i.fl, %Vec_PtrPush.exit187 ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph227 ], [ %indvars.iv.next, %Vec_PtrPush.exit187 ] ; 4 uses
  br i1 %.not.i179, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ea = load i32, ptr %i.dv, align 4, !tbaa !46
  %i.eb = sext i32 %i.ea to i64
  %i.ec = icmp slt i64 %indvars.iv, %i.eb
  br i1 %i.ec, label %Extra_ProgressBarUpdate.exit, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ed = trunc nuw nsw i64 %indvars.iv to i32
  tail call void @Extra_ProgressBarUpdate_int(ptr noundef %i.dv, i32 noundef %i.ed, ptr noundef null) #9
  br label %Extra_ProgressBarUpdate.exit

Extra_ProgressBarUpdate.exit:                     ; preds = %bb.x, %bb.y
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ds, i64 %.idx ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !46 ; 2 uses
  %i.eg = lshr i32 %i.ef, 1
  %.val153 = load ptr, ptr %i.bd, align 8, !tbaa !41 ; 3 uses
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.val153, i64 %i.eh
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !43
  %i.ek = and i32 %i.ef, 1
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = zext nneg i32 %i.ek to i64
  %i.en = xor i64 %i.el, %i.em
  %i.eo = inttoptr i64 %i.en to ptr
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !46 ; 2 uses
  %i.er = lshr i32 %i.eq, 1
  %i.es = zext nneg i32 %i.er to i64
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %.val153, i64 %i.es
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !43
  %i.ev = and i32 %i.eq, 1
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = zext nneg i32 %i.ev to i64
  %i.ey = xor i64 %i.ex, %i.ew
  %i.ez = inttoptr i64 %i.ey to ptr
  %i.fa = load ptr, ptr %i.dx, align 8, !tbaa !47
  %i.fb = tail call ptr @Abc_AigAnd(ptr noundef %i.fa, ptr noundef %i.eo, ptr noundef %i.ez) #9
  %i.fc = icmp eq i32 %i.dz, %i.dy
  br i1 %i.fc, label %bb.z, label %Vec_PtrPush.exit187

bb.z:                                             ; preds = %Extra_ProgressBarUpdate.exit
  %i.fd = icmp slt i32 %i.dy, 16
  br i1 %i.fd, label %Vec_PtrGrow.exit12.sink.split.i183, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fe = icmp samesign ult i32 %i.dy, 1073741823
  %i.ff = shl nuw nsw i32 %i.dy, 1
  %spec.select.i180 = select i1 %i.fe, i32 %i.ff, i32 2147483647 ; 3 uses
  %.not.i10.i181 = icmp samesign ult i32 %i.dy, %spec.select.i180
  br i1 %.not.i10.i181, label %bb.ab, label %Vec_PtrPush.exit187

bb.ab:                                            ; preds = %bb.aa
  %i.fg = zext nneg i32 %spec.select.i180 to i64
  %i.fh = shl nuw nsw i64 %i.fg, 3
  br label %Vec_PtrGrow.exit12.sink.split.i183

Vec_PtrGrow.exit12.sink.split.i183:               ; preds = %bb.z, %bb.ab
  %.sink = phi i64 [ %i.fh, %bb.ab ], [ 128, %bb.z ]
  %spec.select.sink.i184 = phi i32 [ %spec.select.i180, %bb.ab ], [ 16, %bb.z ] ; 2 uses
  %i.fi = tail call ptr @realloc(ptr noundef nonnull %.val153, i64 noundef %.sink) #11
  store ptr %i.fi, ptr %i.bd, align 8, !tbaa !41
  store i32 %spec.select.sink.i184, ptr %i.ap, align 8, !tbaa !40
  br label %Vec_PtrPush.exit187

Vec_PtrPush.exit187:                              ; preds = %Extra_ProgressBarUpdate.exit, %bb.aa, %Vec_PtrGrow.exit12.sink.split.i183
  %i.fj = phi i32 [ %i.dy, %Extra_ProgressBarUpdate.exit ], [ %i.dy, %bb.aa ], [ %spec.select.sink.i184, %Vec_PtrGrow.exit12.sink.split.i183 ]
  %i.fk = load ptr, ptr %i.bd, align 8, !tbaa !41
  %i.fl = add nsw i32 %i.dz, 1
  %i.fm = sext i32 %i.dz to i64
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.fk, i64 %i.fm
  store ptr %i.fb, ptr %i.fn, align 8, !tbaa !43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond272.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond272.not, label %._crit_edge228, label %bb.w, !llvm.loop !15

._crit_edge228:                                   ; preds = %Vec_PtrPush.exit187, %bb.v
  tail call void @Extra_ProgressBarStop(ptr noundef %i.dv) #9
  %i.fo = getelementptr i8, ptr %i.ah, i64 64     ; 2 uses
  %.val154229 = load ptr, ptr %i.fo, align 8, !tbaa !48 ; 2 uses
  %i.fp = getelementptr i8, ptr %.val154229, i64 4
  %.val154.val230 = load i32, ptr %i.fp, align 4, !tbaa !42
  %i.fq = icmp sgt i32 %.val154.val230, 0
end_hunk_0
