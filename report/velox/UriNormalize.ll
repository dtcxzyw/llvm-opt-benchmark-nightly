inline.NumInlined: 48
inline.NumDeleted: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UriMemoryManagerStruct = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.UriUriStructA = type { %struct.UriTextRangeStructA, %struct.UriTextRangeStructA, %struct.UriTextRangeStructA, %struct.UriHostDataStructA, %struct.UriTextRangeStructA, ptr, ptr, %struct.UriTextRangeStructA, %struct.UriTextRangeStructA, i32, i32, ptr }
%struct.UriHostDataStructA = type { ptr, ptr, %struct.UriTextRangeStructA }
%struct.UriTextRangeStructA = type { ptr, ptr }
%struct.UriUriStructW = type { %struct.UriTextRangeStructW, %struct.UriTextRangeStructW, %struct.UriTextRangeStructW, %struct.UriHostDataStructW, %struct.UriTextRangeStructW, ptr, ptr, %struct.UriTextRangeStructW, %struct.UriTextRangeStructW, i32, i32, ptr }
%struct.UriHostDataStructW = type { ptr, ptr, %struct.UriTextRangeStructW }
%struct.UriTextRangeStructW = type { ptr, ptr }

@defaultMemoryManager = external global %struct.UriMemoryManagerStruct, align 8

; Function Attrs: nounwind uwtable
define i32 @uriNormalizeSyntaxMaskRequiredA(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.UriUriStructA, align 8      ; 4 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %uriNormalizeSyntaxMaskRequiredExA.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull readonly align 8 dereferenceable(160) %0, i64 160, i1 false)
  %i.c = call fastcc i32 @uriNormalizeSyntaxEngineA(ptr noundef nonnull %1, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef null) ; 0 uses
  %.pre = load i32, ptr %i.a, align 4, !tbaa !3
  br label %uriNormalizeSyntaxMaskRequiredExA.exit

uriNormalizeSyntaxMaskRequiredExA.exit:           ; preds = %bb.a, %bb.b
  %i.d = phi i32 [ 0, %bb.a ], [ %.pre, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 0, 3) i32 @uriNormalizeSyntaxMaskRequiredExA(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.UriUriStructA, align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull align 8 dereferenceable(160) %0, i64 160, i1 false)
  %i.c = call fastcc i32 @uriNormalizeSyntaxEngineA(ptr noundef nonnull %2, i32 noundef 0, ptr noundef nonnull %1, ptr noundef null) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 2, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 4) i32 @uriNormalizeSyntaxEngineA(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(address_is_null) %2, ptr noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.b = icmp eq ptr %0, null
  %.not211 = icmp eq ptr %2, null                 ; 6 uses
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %.not211, label %bb.ef, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %2, align 4, !tbaa !3
  br label %bb.ef

bb.d:                                             ; preds = %bb.a
  br i1 %.not211, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.c = icmp eq i32 %1, 0
  br i1 %i.c, label %bb.ef, label %bb.o

bb.f:                                             ; preds = %bb.d
  store i32 0, ptr %2, align 4, !tbaa !3
  %i.d = load ptr, ptr %0, align 8, !tbaa !7      ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16   ; 2 uses
  %i.g = icmp ne ptr %i.d, null
  %i.h = icmp ugt ptr %i.f, %i.d
  %or.cond17.i = and i1 %i.g, %i.h
  br i1 %or.cond17.i, label %.preheader.i, label %uriContainsUppercaseLettersA.exit

.preheader.i:                                     ; preds = %bb.f, %.preheader.i
  %.01219.i = phi ptr [ %i.k, %.preheader.i ], [ %i.d, %bb.f ] ; 2 uses
  %i.i = load i8, ptr %.01219.i, align 1, !tbaa !17
  %i.j = add i8 %i.i, -91
  %or.cond18.i = icmp ult i8 %i.j, -26            ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.01219.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp ne ptr %i.k, %i.f
  %or.cond.not = select i1 %or.cond18.i, i1 %exitcond.not.i, i1 false
  br i1 %or.cond.not, label %.preheader.i, label %uriContainsUppercaseLettersA.exit, !llvm.loop !18

uriContainsUppercaseLettersA.exit:                ; preds = %.preheader.i, %bb.f
  %.not182 = phi i1 [ true, %bb.f ], [ %or.cond18.i, %.preheader.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20   ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !21   ; 4 uses
  %i.p = icmp ne ptr %i.m, null
  %i.q = icmp ugt ptr %i.o, %i.m
  %or.cond17.i213 = and i1 %i.p, %i.q             ; 2 uses
  br i1 %or.cond17.i213, label %.preheader.i215, label %uriContainsUppercaseLettersA.exit219

.preheader.i215:                                  ; preds = %uriContainsUppercaseLettersA.exit, %.preheader.i215
  %.01219.i216 = phi ptr [ %i.t, %.preheader.i215 ], [ %i.m, %uriContainsUppercaseLettersA.exit ] ; 2 uses
  %i.r = load i8, ptr %.01219.i216, align 1, !tbaa !17
  %i.s = add i8 %i.r, -91
  %or.cond18.i217 = icmp ult i8 %i.s, -26         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.01219.i216, i64 1 ; 2 uses
  %exitcond.not.i218 = icmp ne ptr %i.t, %i.o
  %or.cond653.not = select i1 %or.cond18.i217, i1 %exitcond.not.i218, i1 false
  br i1 %or.cond653.not, label %.preheader.i215, label %uriContainsUppercaseLettersA.exit219, !llvm.loop !18

uriContainsUppercaseLettersA.exit219:             ; preds = %.preheader.i215, %uriContainsUppercaseLettersA.exit
  %.not183 = phi i1 [ true, %uriContainsUppercaseLettersA.exit ], [ %or.cond18.i217, %.preheader.i215 ]
  br i1 %.not182, label %bb.h, label %bb.g

bb.g:                                             ; preds = %uriContainsUppercaseLettersA.exit219
  store i32 1, ptr %2, align 4, !tbaa !3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %uriContainsUppercaseLettersA.exit219
  %i.u = phi i32 [ 5, %bb.g ], [ 4, %uriContainsUppercaseLettersA.exit219 ]
  br i1 %.not183, label %bb.i, label %uriContainsUglyPercentEncodingA.exit.thread295.sink.split

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 2 ; 2 uses
  %i.w = icmp ult ptr %i.v, %i.o
  %or.cond.i = select i1 %or.cond17.i213, i1 %i.w, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %uriContainsUglyPercentEncodingA.exit

.lr.ph.i:                                         ; preds = %bb.i, %bb.m
  %i.x = phi ptr [ %i.ao, %bb.m ], [ %i.v, %bb.i ] ; 2 uses
  %.02132.i = phi ptr [ %i.an, %bb.m ], [ %i.m, %bb.i ] ; 4 uses
  %i.y = load i8, ptr %.02132.i, align 1, !tbaa !17
  %i.z = icmp eq i8 %i.y, 37
  br i1 %i.z, label %bb.j, label %bb.m

bb.j:                                             ; preds = %.lr.ph.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.02132.i, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !17  ; 2 uses
  %i.ac = add i8 %i.ab, -97
  %or.cond30.i = icmp ult i8 %i.ac, 6
  br i1 %or.cond30.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = load i8, ptr %i.x, align 1, !tbaa !17
  %i.ae = add i8 %i.ad, -97
  %or.cond31.i = icmp ult i8 %i.ae, 6
  br i1 %or.cond31.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.ab) #7
  %i.ag = load i8, ptr %i.x, align 1, !tbaa !17
  %i.ah = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.ag) #7
  %i.ai = zext i8 %i.af to i32
  %i.aj = shl nuw nsw i32 %i.ai, 4
  %i.ak = zext i8 %i.ah to i32
  %i.al = add nuw nsw i32 %i.aj, %i.ak
  %i.am = tail call i32 @uriIsUnreserved(i32 noundef %i.al) #7
  %.not.i = icmp eq i32 %i.am, 0
  br i1 %.not.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %.lr.ph.i
  %i.an = getelementptr inbounds nuw i8, ptr %.02132.i, i64 1
  %i.ao = getelementptr inbounds nuw i8, ptr %.02132.i, i64 3 ; 2 uses
  %i.ap = icmp ult ptr %i.ao, %i.o
  br i1 %i.ap, label %.lr.ph.i, label %uriContainsUglyPercentEncodingA.exit, !llvm.loop !22

bb.n:                                             ; preds = %bb.k, %bb.j, %bb.l
  %i.aq = load i32, ptr %2, align 4, !tbaa !3
  %i.ar = or i32 %i.aq, 4
  br label %uriContainsUglyPercentEncodingA.exit.thread295.sink.split

bb.o:                                             ; preds = %bb.e
  %i.as = and i32 %1, 1
  %.not171 = icmp eq i32 %i.as, 0
  br i1 %.not171, label %uriLowercaseInplaceA.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = load ptr, ptr %0, align 8, !tbaa !7     ; 27 uses
  %i.au = ptrtoint ptr %i.at to i64
  %.not172 = icmp eq ptr %i.at, null
  br i1 %.not172, label %uriLowercaseInplaceA.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !23
  %.not173 = icmp eq i32 %i.aw, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !24 ; 5 uses
  %i.az = ptrtoint ptr %i.ay to i64
  br i1 %.not173, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = icmp ugt ptr %i.ay, %i.at
  br i1 %i.ba, label %iter.check, label %uriLowercaseInplaceA.exit

iter.check:                                       ; preds = %bb.r
  %i.bb = sub i64 %i.az, %i.au                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.bb, 4
  br i1 %min.iters.check, label %.preheader.i220.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check414 = icmp ult i64 %i.bb, 16
  br i1 %min.iters.check414, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.bb, 12
  %n.vec = and i64 %i.bb, -16                     ; 4 uses
  %i.bc = getelementptr i8, ptr %i.at, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue459, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue459 ] ; 17 uses
  %next.gep = getelementptr i8, ptr %i.at, i64 %index ; 2 uses
  %i.bd = getelementptr i8, ptr %i.at, i64 %index
  %next.gep415 = getelementptr i8, ptr %i.bd, i64 1
  %i.be = getelementptr i8, ptr %i.at, i64 %index
  %next.gep416 = getelementptr i8, ptr %i.be, i64 2
  %i.bf = getelementptr i8, ptr %i.at, i64 %index
  %next.gep417 = getelementptr i8, ptr %i.bf, i64 3
  %i.bg = getelementptr i8, ptr %i.at, i64 %index
  %next.gep418 = getelementptr i8, ptr %i.bg, i64 4
  %i.bh = getelementptr i8, ptr %i.at, i64 %index
  %next.gep419 = getelementptr i8, ptr %i.bh, i64 5
  %i.bi = getelementptr i8, ptr %i.at, i64 %index
  %next.gep420 = getelementptr i8, ptr %i.bi, i64 6
  %i.bj = getelementptr i8, ptr %i.at, i64 %index
  %next.gep421 = getelementptr i8, ptr %i.bj, i64 7
  %i.bk = getelementptr i8, ptr %i.at, i64 %index
  %next.gep422 = getelementptr i8, ptr %i.bk, i64 8
  %i.bl = getelementptr i8, ptr %i.at, i64 %index
  %next.gep423 = getelementptr i8, ptr %i.bl, i64 9
  %i.bm = getelementptr i8, ptr %i.at, i64 %index
  %next.gep424 = getelementptr i8, ptr %i.bm, i64 10
  %i.bn = getelementptr i8, ptr %i.at, i64 %index
  %next.gep425 = getelementptr i8, ptr %i.bn, i64 11
  %i.bo = getelementptr i8, ptr %i.at, i64 %index
  %next.gep426 = getelementptr i8, ptr %i.bo, i64 12
  %i.bp = getelementptr i8, ptr %i.at, i64 %index
  %next.gep427 = getelementptr i8, ptr %i.bp, i64 13
  %i.bq = getelementptr i8, ptr %i.at, i64 %index
  %next.gep428 = getelementptr i8, ptr %i.bq, i64 14
  %i.br = getelementptr i8, ptr %i.at, i64 %index
  %next.gep429 = getelementptr i8, ptr %i.br, i64 15
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !17 ; 17 uses
  %i.bs = add <16 x i8> %wide.load, splat (i8 -65)
  %i.bt = icmp ult <16 x i8> %i.bs, splat (i8 26) ; 16 uses
  %i.bu = extractelement <16 x i1> %i.bt, i64 0
  br i1 %i.bu, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.bv = extractelement <16 x i8> %wide.load, i64 0
  %i.bw = or disjoint i8 %i.bv, 32
  store i8 %i.bw, ptr %next.gep, align 1, !tbaa !17
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.bx = extractelement <16 x i1> %i.bt, i64 1
  br i1 %i.bx, label %pred.store.if430, label %pred.store.continue431

pred.store.if430:                                 ; preds = %pred.store.continue
  %i.by = extractelement <16 x i8> %wide.load, i64 1
  %i.bz = or disjoint i8 %i.by, 32
  store i8 %i.bz, ptr %next.gep415, align 1, !tbaa !17
  br label %pred.store.continue431

pred.store.continue431:                           ; preds = %pred.store.if430, %pred.store.continue
  %i.ca = extractelement <16 x i1> %i.bt, i64 2
  br i1 %i.ca, label %pred.store.if432, label %pred.store.continue433

pred.store.if432:                                 ; preds = %pred.store.continue431
  %i.cb = extractelement <16 x i8> %wide.load, i64 2
  %i.cc = or disjoint i8 %i.cb, 32
  store i8 %i.cc, ptr %next.gep416, align 1, !tbaa !17
  br label %pred.store.continue433

pred.store.continue433:                           ; preds = %pred.store.if432, %pred.store.continue431
  %i.cd = extractelement <16 x i1> %i.bt, i64 3
  br i1 %i.cd, label %pred.store.if434, label %pred.store.continue435

pred.store.if434:                                 ; preds = %pred.store.continue433
  %i.ce = extractelement <16 x i8> %wide.load, i64 3
  %i.cf = or disjoint i8 %i.ce, 32
  store i8 %i.cf, ptr %next.gep417, align 1, !tbaa !17
  br label %pred.store.continue435

pred.store.continue435:                           ; preds = %pred.store.if434, %pred.store.continue433
  %i.cg = extractelement <16 x i1> %i.bt, i64 4
  br i1 %i.cg, label %pred.store.if436, label %pred.store.continue437

pred.store.if436:                                 ; preds = %pred.store.continue435
  %i.ch = extractelement <16 x i8> %wide.load, i64 4
  %i.ci = or disjoint i8 %i.ch, 32
  store i8 %i.ci, ptr %next.gep418, align 1, !tbaa !17
  br label %pred.store.continue437

pred.store.continue437:                           ; preds = %pred.store.if436, %pred.store.continue435
  %i.cj = extractelement <16 x i1> %i.bt, i64 5
  br i1 %i.cj, label %pred.store.if438, label %pred.store.continue439

pred.store.if438:                                 ; preds = %pred.store.continue437
  %i.ck = extractelement <16 x i8> %wide.load, i64 5
  %i.cl = or disjoint i8 %i.ck, 32
  store i8 %i.cl, ptr %next.gep419, align 1, !tbaa !17
  br label %pred.store.continue439

pred.store.continue439:                           ; preds = %pred.store.if438, %pred.store.continue437
  %i.cm = extractelement <16 x i1> %i.bt, i64 6
  br i1 %i.cm, label %pred.store.if440, label %pred.store.continue441

pred.store.if440:                                 ; preds = %pred.store.continue439
  %i.cn = extractelement <16 x i8> %wide.load, i64 6
  %i.co = or disjoint i8 %i.cn, 32
  store i8 %i.co, ptr %next.gep420, align 1, !tbaa !17
  br label %pred.store.continue441

pred.store.continue441:                           ; preds = %pred.store.if440, %pred.store.continue439
  %i.cp = extractelement <16 x i1> %i.bt, i64 7
  br i1 %i.cp, label %pred.store.if442, label %pred.store.continue443

pred.store.if442:                                 ; preds = %pred.store.continue441
  %i.cq = extractelement <16 x i8> %wide.load, i64 7
  %i.cr = or disjoint i8 %i.cq, 32
  store i8 %i.cr, ptr %next.gep421, align 1, !tbaa !17
  br label %pred.store.continue443

pred.store.continue443:                           ; preds = %pred.store.if442, %pred.store.continue441
  %i.cs = extractelement <16 x i1> %i.bt, i64 8
  br i1 %i.cs, label %pred.store.if444, label %pred.store.continue445

pred.store.if444:                                 ; preds = %pred.store.continue443
  %i.ct = extractelement <16 x i8> %wide.load, i64 8
  %i.cu = or disjoint i8 %i.ct, 32
  store i8 %i.cu, ptr %next.gep422, align 1, !tbaa !17
  br label %pred.store.continue445

pred.store.continue445:                           ; preds = %pred.store.if444, %pred.store.continue443
  %i.cv = extractelement <16 x i1> %i.bt, i64 9
  br i1 %i.cv, label %pred.store.if446, label %pred.store.continue447

pred.store.if446:                                 ; preds = %pred.store.continue445
  %i.cw = extractelement <16 x i8> %wide.load, i64 9
  %i.cx = or disjoint i8 %i.cw, 32
  store i8 %i.cx, ptr %next.gep423, align 1, !tbaa !17
  br label %pred.store.continue447

pred.store.continue447:                           ; preds = %pred.store.if446, %pred.store.continue445
  %i.cy = extractelement <16 x i1> %i.bt, i64 10
  br i1 %i.cy, label %pred.store.if448, label %pred.store.continue449

pred.store.if448:                                 ; preds = %pred.store.continue447
  %i.cz = extractelement <16 x i8> %wide.load, i64 10
  %i.da = or disjoint i8 %i.cz, 32
  store i8 %i.da, ptr %next.gep424, align 1, !tbaa !17
  br label %pred.store.continue449

pred.store.continue449:                           ; preds = %pred.store.if448, %pred.store.continue447
  %i.db = extractelement <16 x i1> %i.bt, i64 11
  br i1 %i.db, label %pred.store.if450, label %pred.store.continue451

pred.store.if450:                                 ; preds = %pred.store.continue449
  %i.dc = extractelement <16 x i8> %wide.load, i64 11
  %i.dd = or disjoint i8 %i.dc, 32
  store i8 %i.dd, ptr %next.gep425, align 1, !tbaa !17
  br label %pred.store.continue451

pred.store.continue451:                           ; preds = %pred.store.if450, %pred.store.continue449
  %i.de = extractelement <16 x i1> %i.bt, i64 12
  br i1 %i.de, label %pred.store.if452, label %pred.store.continue453

pred.store.if452:                                 ; preds = %pred.store.continue451
  %i.df = extractelement <16 x i8> %wide.load, i64 12
  %i.dg = or disjoint i8 %i.df, 32
  store i8 %i.dg, ptr %next.gep426, align 1, !tbaa !17
  br label %pred.store.continue453

pred.store.continue453:                           ; preds = %pred.store.if452, %pred.store.continue451
  %i.dh = extractelement <16 x i1> %i.bt, i64 13
  br i1 %i.dh, label %pred.store.if454, label %pred.store.continue455

pred.store.if454:                                 ; preds = %pred.store.continue453
  %i.di = extractelement <16 x i8> %wide.load, i64 13
  %i.dj = or disjoint i8 %i.di, 32
  store i8 %i.dj, ptr %next.gep427, align 1, !tbaa !17
  br label %pred.store.continue455

pred.store.continue455:                           ; preds = %pred.store.if454, %pred.store.continue453
  %i.dk = extractelement <16 x i1> %i.bt, i64 14
  br i1 %i.dk, label %pred.store.if456, label %pred.store.continue457

pred.store.if456:                                 ; preds = %pred.store.continue455
  %i.dl = extractelement <16 x i8> %wide.load, i64 14
  %i.dm = or disjoint i8 %i.dl, 32
  store i8 %i.dm, ptr %next.gep428, align 1, !tbaa !17
  br label %pred.store.continue457

pred.store.continue457:                           ; preds = %pred.store.if456, %pred.store.continue455
  %i.dn = extractelement <16 x i1> %i.bt, i64 15
  br i1 %i.dn, label %pred.store.if458, label %pred.store.continue459

pred.store.if458:                                 ; preds = %pred.store.continue457
  %i.do = extractelement <16 x i8> %wide.load, i64 15
  %i.dp = or disjoint i8 %i.do, 32
  store i8 %i.dp, ptr %next.gep429, align 1, !tbaa !17
  br label %pred.store.continue459

pred.store.continue459:                           ; preds = %pred.store.if458, %pred.store.continue457
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %pred.store.continue459
  %cmp.n = icmp eq i64 %i.bb, %n.vec
  br i1 %cmp.n, label %uriLowercaseInplaceA.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.preheader.i220.preheader, label %vec.epilog.ph, !prof !28

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec461 = and i64 %i.bb, -4                   ; 3 uses
  %i.dr = getelementptr i8, ptr %i.at, i64 %n.vec461
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue475.a, %vec.epilog.ph
  %index462 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next476, %pred.store.continue475.a ] ; 5 uses
  %next.gep463.a = getelementptr i8, ptr %i.at, i64 %index462 ; 2 uses
  %i.ds = getelementptr i8, ptr %i.at, i64 %index462
  %next.gep464.a = getelementptr i8, ptr %i.ds, i64 1
  %i.dt = getelementptr i8, ptr %i.at, i64 %index462
  %next.gep465.a = getelementptr i8, ptr %i.dt, i64 2
  %i.du = getelementptr i8, ptr %i.at, i64 %index462
  %next.gep466.a = getelementptr i8, ptr %i.du, i64 3
  %wide.load467 = load <4 x i8>, ptr %next.gep463.a, align 1, !tbaa !17 ; 5 uses
  %4 = add <4 x i8> %wide.load467, splat (i8 -65)
  %5 = icmp ult <4 x i8> %4, splat (i8 26)        ; 4 uses
  %i.dv = extractelement <4 x i1> %5, i64 0
  br i1 %i.dv, label %pred.store.if468, label %pred.store.continue469

pred.store.if468:                                 ; preds = %vec.epilog.vector.body
  %i.dw = extractelement <4 x i8> %wide.load467, i64 0
  %i.dx = or disjoint i8 %i.dw, 32
  store i8 %i.dx, ptr %next.gep463.a, align 1, !tbaa !17
  br label %pred.store.continue469

pred.store.continue469:                           ; preds = %pred.store.if468, %vec.epilog.vector.body
  %i.dy = extractelement <4 x i1> %5, i64 1
  br i1 %i.dy, label %pred.store.if470, label %pred.store.continue471

pred.store.if470:                                 ; preds = %pred.store.continue469
  %i.dz = extractelement <4 x i8> %wide.load467, i64 1
  %i.ea = or disjoint i8 %i.dz, 32
  store i8 %i.ea, ptr %next.gep464.a, align 1, !tbaa !17
  br label %pred.store.continue471

pred.store.continue471:                           ; preds = %pred.store.if470, %pred.store.continue469
  %i.eb = extractelement <4 x i1> %5, i64 2
  br i1 %i.eb, label %pred.store.if472.a, label %pred.store.continue473.a

pred.store.if472.a:                               ; preds = %pred.store.continue471
  %i.ec = extractelement <4 x i8> %wide.load467, i64 2
  %i.ed = or disjoint i8 %i.ec, 32
  store i8 %i.ed, ptr %next.gep465.a, align 1, !tbaa !17
  br label %pred.store.continue473.a

pred.store.continue473.a:                         ; preds = %pred.store.if472.a, %pred.store.continue471
  %i.ee = extractelement <4 x i1> %5, i64 3
  br i1 %i.ee, label %pred.store.if474.a, label %pred.store.continue475.a

pred.store.if474.a:                               ; preds = %pred.store.continue473.a
  %i.ef = extractelement <4 x i8> %wide.load467, i64 3
  %i.eg = or disjoint i8 %i.ef, 32
  store i8 %i.eg, ptr %next.gep466.a, align 1, !tbaa !17
  br label %pred.store.continue475.a

pred.store.continue475.a:                         ; preds = %pred.store.if474.a, %pred.store.continue473.a
  %index.next476 = add nuw i64 %index462, 4       ; 2 uses
  %i.eh = icmp eq i64 %index.next476, %n.vec461
  br i1 %i.eh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !29

vec.epilog.middle.block:                          ; preds = %pred.store.continue475.a
  %cmp.n477 = icmp eq i64 %i.bb, %n.vec461
  br i1 %cmp.n477, label %uriLowercaseInplaceA.exit, label %.preheader.i220.preheader

.preheader.i220.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.018.i.ph = phi ptr [ %i.at, %iter.check ], [ %i.bc, %vec.epilog.iter.check ], [ %i.dr, %vec.epilog.middle.block ]
  br label %.preheader.i220

.preheader.i220:                                  ; preds = %.preheader.i220.preheader, %bb.t
  %.018.i = phi ptr [ %i.el, %bb.t ], [ %.018.i.ph, %.preheader.i220.preheader ] ; 3 uses
  %i.ei = load i8, ptr %.018.i, align 1, !tbaa !17 ; 2 uses
  %i.ej = add i8 %i.ei, -65
  %or.cond17.i221 = icmp ult i8 %i.ej, 26
  br i1 %or.cond17.i221, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.preheader.i220
  %i.ek = or disjoint i8 %i.ei, 32
  store i8 %i.ek, ptr %.018.i, align 1, !tbaa !17
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.preheader.i220
  %i.el = getelementptr inbounds nuw i8, ptr %.018.i, i64 1 ; 2 uses
  %exitcond.not.i222 = icmp eq ptr %i.el, %i.ay
  br i1 %exitcond.not.i222, label %uriLowercaseInplaceA.exit, label %.preheader.i220, !llvm.loop !30

bb.u:                                             ; preds = %bb.q
  %i.em = icmp eq ptr %i.ay, null
  br i1 %i.em, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.en = ptrtoint ptr %i.ay to i64
  %i.eo = ptrtoint ptr %i.at to i64
  %i.ep = sub i64 %i.en, %i.eo                    ; 5 uses
  %i.eq = trunc i64 %i.ep to i32                  ; 2 uses
  %i.er = icmp eq i32 %i.eq, 0
  br i1 %i.er, label %uriLowercaseMallocA.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.es = icmp slt i32 %i.eq, 0
  br i1 %i.es, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.et = load ptr, ptr %3, align 8, !tbaa !31
  %i.eu = and i64 %i.ep, 2147483647               ; 3 uses
  %i.ev = tail call ptr %i.et(ptr noundef nonnull %3, i64 noundef %i.eu) #7, !inline_history !33 ; 6 uses
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %bb.y, label %.lr.ph.i223.preheader

.lr.ph.i223.preheader:                            ; preds = %bb.x
  %xtraiter = and i64 %i.ep, 1
  %i.ex = icmp eq i64 %i.eu, 1
  br i1 %i.ex, label %.lr.ph.i223.epil.preheader, label %.lr.ph.i223.preheader.new

.lr.ph.i223.preheader.new:                        ; preds = %.lr.ph.i223.preheader
  %unroll_iter = and i64 %i.ep, 2147483646
  br label %.lr.ph.i223

.lr.ph.i223:                                      ; preds = %.lr.ph.i223, %.lr.ph.i223.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i223.preheader.new ], [ %indvars.iv.next.i.1, %.lr.ph.i223 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i223.preheader.new ], [ %niter.next.1, %.lr.ph.i223 ]
  %i.ey = load ptr, ptr %0, align 8, !tbaa !24
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %indvars.iv.i
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !17  ; 3 uses
  %i.fb = add i8 %i.fa, -65
  %or.cond.i224 = icmp ult i8 %i.fb, 26
  %i.fc = or disjoint i8 %i.fa, 32
  %spec.select.i = select i1 %or.cond.i224, i8 %i.fc, i8 %i.fa
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ev, i64 %indvars.iv.i
  store i8 %spec.select.i, ptr %i.fd, align 1, !tbaa !17
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.fe = load ptr, ptr %0, align 8, !tbaa !24
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 %indvars.iv.next.i
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !17  ; 3 uses
  %i.fh = add i8 %i.fg, -65
  %or.cond.i224.1 = icmp ult i8 %i.fh, 26
  %i.fi = or disjoint i8 %i.fg, 32
  %spec.select.i.1 = select i1 %or.cond.i224.1, i8 %i.fi, i8 %i.fg
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ev, i64 %indvars.iv.next.i
  store i8 %spec.select.i.1, ptr %i.fj, align 1, !tbaa !17
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i223, !llvm.loop !34

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i223
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i223.epil.preheader

.lr.ph.i223.epil.preheader:                       ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i223.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i223.preheader ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %lcmp.mod657 = trunc i64 %i.ep to i1
  tail call void @llvm.assume(i1 %lcmp.mod657)
  %i.fk = load ptr, ptr %0, align 8, !tbaa !24
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %indvars.iv.i.epil.init
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !17  ; 3 uses
  %i.fn = add i8 %i.fm, -65
  %or.cond.i224.epil = icmp ult i8 %i.fn, 26
  %i.fo = or disjoint i8 %i.fm, 32
  %spec.select.i.epil = select i1 %or.cond.i224.epil, i8 %i.fo, i8 %i.fm
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ev, i64 %indvars.iv.i.epil.init
  store i8 %spec.select.i.epil, ptr %i.fp, align 1, !tbaa !17
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i223.epil.preheader
  store ptr %i.ev, ptr %0, align 8, !tbaa !24
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.eu
  store ptr %i.fq, ptr %i.ax, align 8, !tbaa !24
  br label %uriLowercaseMallocA.exit

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.u
  tail call fastcc void @uriPreventLeakageA(ptr noundef %0, i32 noundef 0, ptr noundef %3)
  br label %bb.ef

uriLowercaseMallocA.exit:                         ; preds = %._crit_edge.i, %bb.v
  store i32 1, ptr %i.a, align 4, !tbaa !3
  br label %uriLowercaseInplaceA.exit

uriLowercaseInplaceA.exit:                        ; preds = %bb.t, %middle.block, %vec.epilog.middle.block, %bb.r, %uriLowercaseMallocA.exit, %bb.p, %bb.o
  %i.fr = phi i32 [ 0, %bb.o ], [ 0, %bb.r ], [ 1, %uriLowercaseMallocA.exit ], [ 0, %bb.p ], [ 0, %middle.block ], [ 0, %vec.epilog.middle.block ], [ 0, %bb.t ] ; 11 uses
  %i.fs = and i32 %1, 4
  %.not175 = icmp eq i32 %i.fs, 0
  br i1 %.not175, label %uriContainsUglyPercentEncodingA.exit, label %bb.z

bb.z:                                             ; preds = %uriLowercaseInplaceA.exit
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !35 ; 29 uses
  %i.fw = ptrtoint ptr %i.fv to i64
  %.not176 = icmp eq ptr %i.fv, null
  br i1 %.not176, label %bb.aj, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !23
  %.not180 = icmp eq i32 %i.fy, 0
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !24 ; 7 uses
  %i.gb = ptrtoint ptr %i.ga to i64
  br i1 %.not180, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gc = icmp ugt ptr %i.ga, %i.fv
  br i1 %i.gc, label %iter.check540, label %uriLowercaseInplaceA.exit231

iter.check540:                                    ; preds = %bb.ab
  %i.gd = sub i64 %i.gb, %i.fw                    ; 7 uses
  %min.iters.check479 = icmp ult i64 %i.gd, 4
  br i1 %min.iters.check479, label %.preheader.i227.preheader, label %vector.main.loop.iter.check480

vector.main.loop.iter.check480:                   ; preds = %iter.check540
  %min.iters.check481 = icmp ult i64 %i.gd, 16
  br i1 %min.iters.check481, label %vec.epilog.ph544, label %vector.ph482

vector.ph482:                                     ; preds = %vector.main.loop.iter.check480
  %n.mod.vf483 = and i64 %i.gd, 12
  %n.vec484 = and i64 %i.gd, -16                  ; 4 uses
  %i.ge = getelementptr i8, ptr %i.fv, i64 %n.vec484
  br label %vector.body485

vector.body485:                                   ; preds = %pred.store.continue535, %vector.ph482
  %index486 = phi i64 [ 0, %vector.ph482 ], [ %index.next536, %pred.store.continue535 ] ; 17 uses
  %next.gep487 = getelementptr i8, ptr %i.fv, i64 %index486 ; 2 uses
  %i.gf = getelementptr i8, ptr %i.fv, i64 %index486
  %next.gep488 = getelementptr i8, ptr %i.gf, i64 1
  %i.gg = getelementptr i8, ptr %i.fv, i64 %index486
  %next.gep489 = getelementptr i8, ptr %i.gg, i64 2
  %i.gh = getelementptr i8, ptr %i.fv, i64 %index486
  %next.gep490 = getelementptr i8, ptr %i.gh, i64 3
  %i.gi = getelementptr i8, ptr %i.fv, i64 %index486
  %next.gep491 = getelementptr i8, ptr %i.gi, i64 4
  %i.gj = getelementptr i8, ptr %i.fv, i64 %index486
  %next.gep492 = getelementptr i8, ptr %i.gj, i64 5
  %i.gk = getelementptr i8, ptr %i.fv, i64 %index486
  %next.gep493 = getelementptr i8, ptr %i.gk, i64 6
  %i.gl = getelementptr i8, ptr %i.fv, i64 %index486
  %next.gep494 = getelementptr i8, ptr %i.gl, i64 7
  %i.gm = getelementptr i8, ptr %i.fv, i64 %index486
  %next.gep495 = getelementptr i8, ptr %i.gm, i64 8
  %i.gn = getelementptr i8, ptr %i.fv, i64 %index486
  %next.gep496 = getelementptr i8, ptr %i.gn, i64 9
  %i.go = getelementptr i8, ptr %i.fv, i64 %index486
  %next.gep497 = getelementptr i8, ptr %i.go, i64 10
  %i.gp = getelementptr i8, ptr %i.fv, i64 %index486
  %next.gep498 = getelementptr i8, ptr %i.gp, i64 11
  %i.gq = getelementptr i8, ptr %i.fv, i64 %index486
  %next.gep499 = getelementptr i8, ptr %i.gq, i64 12
  %i.gr = getelementptr i8, ptr %i.fv, i64 %index486
  %next.gep500 = getelementptr i8, ptr %i.gr, i64 13
  %i.gs = getelementptr i8, ptr %i.fv, i64 %index486
  %next.gep501 = getelementptr i8, ptr %i.gs, i64 14
  %i.gt = getelementptr i8, ptr %i.fv, i64 %index486
  %next.gep502 = getelementptr i8, ptr %i.gt, i64 15
  %wide.load503 = load <16 x i8>, ptr %next.gep487, align 1, !tbaa !17 ; 17 uses
  %i.gu = add <16 x i8> %wide.load503, splat (i8 -65)
  %i.gv = icmp ult <16 x i8> %i.gu, splat (i8 26) ; 16 uses
  %i.gw = extractelement <16 x i1> %i.gv, i64 0
  br i1 %i.gw, label %pred.store.if504, label %pred.store.continue505

pred.store.if504:                                 ; preds = %vector.body485
  %i.gx = extractelement <16 x i8> %wide.load503, i64 0
  %i.gy = or disjoint i8 %i.gx, 32
  store i8 %i.gy, ptr %next.gep487, align 1, !tbaa !17
  br label %pred.store.continue505

pred.store.continue505:                           ; preds = %pred.store.if504, %vector.body485
  %i.gz = extractelement <16 x i1> %i.gv, i64 1
  br i1 %i.gz, label %pred.store.if506, label %pred.store.continue507

pred.store.if506:                                 ; preds = %pred.store.continue505
  %i.ha = extractelement <16 x i8> %wide.load503, i64 1
  %i.hb = or disjoint i8 %i.ha, 32
  store i8 %i.hb, ptr %next.gep488, align 1, !tbaa !17
  br label %pred.store.continue507

pred.store.continue507:                           ; preds = %pred.store.if506, %pred.store.continue505
  %i.hc = extractelement <16 x i1> %i.gv, i64 2
  br i1 %i.hc, label %pred.store.if508, label %pred.store.continue509

pred.store.if508:                                 ; preds = %pred.store.continue507
  %i.hd = extractelement <16 x i8> %wide.load503, i64 2
  %i.he = or disjoint i8 %i.hd, 32
  store i8 %i.he, ptr %next.gep489, align 1, !tbaa !17
  br label %pred.store.continue509

pred.store.continue509:                           ; preds = %pred.store.if508, %pred.store.continue507
  %i.hf = extractelement <16 x i1> %i.gv, i64 3
  br i1 %i.hf, label %pred.store.if510, label %pred.store.continue511

pred.store.if510:                                 ; preds = %pred.store.continue509
  %i.hg = extractelement <16 x i8> %wide.load503, i64 3
  %i.hh = or disjoint i8 %i.hg, 32
  store i8 %i.hh, ptr %next.gep490, align 1, !tbaa !17
  br label %pred.store.continue511

pred.store.continue511:                           ; preds = %pred.store.if510, %pred.store.continue509
  %i.hi = extractelement <16 x i1> %i.gv, i64 4
  br i1 %i.hi, label %pred.store.if512, label %pred.store.continue513

pred.store.if512:                                 ; preds = %pred.store.continue511
  %i.hj = extractelement <16 x i8> %wide.load503, i64 4
  %i.hk = or disjoint i8 %i.hj, 32
  store i8 %i.hk, ptr %next.gep491, align 1, !tbaa !17
  br label %pred.store.continue513

pred.store.continue513:                           ; preds = %pred.store.if512, %pred.store.continue511
  %i.hl = extractelement <16 x i1> %i.gv, i64 5
  br i1 %i.hl, label %pred.store.if514, label %pred.store.continue515

pred.store.if514:                                 ; preds = %pred.store.continue513
  %i.hm = extractelement <16 x i8> %wide.load503, i64 5
  %i.hn = or disjoint i8 %i.hm, 32
  store i8 %i.hn, ptr %next.gep492, align 1, !tbaa !17
  br label %pred.store.continue515

pred.store.continue515:                           ; preds = %pred.store.if514, %pred.store.continue513
  %i.ho = extractelement <16 x i1> %i.gv, i64 6
  br i1 %i.ho, label %pred.store.if516, label %pred.store.continue517

pred.store.if516:                                 ; preds = %pred.store.continue515
  %i.hp = extractelement <16 x i8> %wide.load503, i64 6
  %i.hq = or disjoint i8 %i.hp, 32
  store i8 %i.hq, ptr %next.gep493, align 1, !tbaa !17
  br label %pred.store.continue517

pred.store.continue517:                           ; preds = %pred.store.if516, %pred.store.continue515
  %i.hr = extractelement <16 x i1> %i.gv, i64 7
  br i1 %i.hr, label %pred.store.if518, label %pred.store.continue519

pred.store.if518:                                 ; preds = %pred.store.continue517
  %i.hs = extractelement <16 x i8> %wide.load503, i64 7
  %i.ht = or disjoint i8 %i.hs, 32
  store i8 %i.ht, ptr %next.gep494, align 1, !tbaa !17
  br label %pred.store.continue519

pred.store.continue519:                           ; preds = %pred.store.if518, %pred.store.continue517
  %i.hu = extractelement <16 x i1> %i.gv, i64 8
  br i1 %i.hu, label %pred.store.if520, label %pred.store.continue521

pred.store.if520:                                 ; preds = %pred.store.continue519
  %i.hv = extractelement <16 x i8> %wide.load503, i64 8
  %i.hw = or disjoint i8 %i.hv, 32
  store i8 %i.hw, ptr %next.gep495, align 1, !tbaa !17
  br label %pred.store.continue521

pred.store.continue521:                           ; preds = %pred.store.if520, %pred.store.continue519
  %i.hx = extractelement <16 x i1> %i.gv, i64 9
  br i1 %i.hx, label %pred.store.if522, label %pred.store.continue523

pred.store.if522:                                 ; preds = %pred.store.continue521
  %i.hy = extractelement <16 x i8> %wide.load503, i64 9
  %i.hz = or disjoint i8 %i.hy, 32
  store i8 %i.hz, ptr %next.gep496, align 1, !tbaa !17
  br label %pred.store.continue523

pred.store.continue523:                           ; preds = %pred.store.if522, %pred.store.continue521
  %i.ia = extractelement <16 x i1> %i.gv, i64 10
  br i1 %i.ia, label %pred.store.if524, label %pred.store.continue525

pred.store.if524:                                 ; preds = %pred.store.continue523
  %i.ib = extractelement <16 x i8> %wide.load503, i64 10
  %i.ic = or disjoint i8 %i.ib, 32
  store i8 %i.ic, ptr %next.gep497, align 1, !tbaa !17
  br label %pred.store.continue525

pred.store.continue525:                           ; preds = %pred.store.if524, %pred.store.continue523
  %i.id = extractelement <16 x i1> %i.gv, i64 11
  br i1 %i.id, label %pred.store.if526, label %pred.store.continue527

pred.store.if526:                                 ; preds = %pred.store.continue525
  %i.ie = extractelement <16 x i8> %wide.load503, i64 11
  %i.if = or disjoint i8 %i.ie, 32
  store i8 %i.if, ptr %next.gep498, align 1, !tbaa !17
  br label %pred.store.continue527

pred.store.continue527:                           ; preds = %pred.store.if526, %pred.store.continue525
  %i.ig = extractelement <16 x i1> %i.gv, i64 12
  br i1 %i.ig, label %pred.store.if528, label %pred.store.continue529

pred.store.if528:                                 ; preds = %pred.store.continue527
  %i.ih = extractelement <16 x i8> %wide.load503, i64 12
  %i.ii = or disjoint i8 %i.ih, 32
  store i8 %i.ii, ptr %next.gep499, align 1, !tbaa !17
  br label %pred.store.continue529

pred.store.continue529:                           ; preds = %pred.store.if528, %pred.store.continue527
  %i.ij = extractelement <16 x i1> %i.gv, i64 13
  br i1 %i.ij, label %pred.store.if530, label %pred.store.continue531

pred.store.if530:                                 ; preds = %pred.store.continue529
  %i.ik = extractelement <16 x i8> %wide.load503, i64 13
  %i.il = or disjoint i8 %i.ik, 32
  store i8 %i.il, ptr %next.gep500, align 1, !tbaa !17
  br label %pred.store.continue531

pred.store.continue531:                           ; preds = %pred.store.if530, %pred.store.continue529
  %i.im = extractelement <16 x i1> %i.gv, i64 14
  br i1 %i.im, label %pred.store.if532, label %pred.store.continue533

pred.store.if532:                                 ; preds = %pred.store.continue531
  %i.in = extractelement <16 x i8> %wide.load503, i64 14
  %i.io = or disjoint i8 %i.in, 32
  store i8 %i.io, ptr %next.gep501, align 1, !tbaa !17
  br label %pred.store.continue533

pred.store.continue533:                           ; preds = %pred.store.if532, %pred.store.continue531
  %i.ip = extractelement <16 x i1> %i.gv, i64 15
  br i1 %i.ip, label %pred.store.if534, label %pred.store.continue535

pred.store.if534:                                 ; preds = %pred.store.continue533
  %i.iq = extractelement <16 x i8> %wide.load503, i64 15
  %i.ir = or disjoint i8 %i.iq, 32
  store i8 %i.ir, ptr %next.gep502, align 1, !tbaa !17
  br label %pred.store.continue535

pred.store.continue535:                           ; preds = %pred.store.if534, %pred.store.continue533
  %index.next536 = add nuw i64 %index486, 16      ; 2 uses
  %i.is = icmp eq i64 %index.next536, %n.vec484
  br i1 %i.is, label %middle.block537, label %vector.body485, !llvm.loop !36

middle.block537:                                  ; preds = %pred.store.continue535
  %cmp.n538 = icmp eq i64 %i.gd, %n.vec484
  br i1 %cmp.n538, label %uriLowercaseInplaceA.exit231.loopexit, label %vec.epilog.iter.check542

vec.epilog.iter.check542:                         ; preds = %middle.block537
  %min.epilog.iters.check543 = icmp eq i64 %n.mod.vf483, 0
  br i1 %min.epilog.iters.check543, label %.preheader.i227.preheader, label %vec.epilog.ph544, !prof !28

vec.epilog.ph544:                                 ; preds = %vector.main.loop.iter.check480, %vec.epilog.iter.check542
  %vec.epilog.resume.val539 = phi i64 [ %n.vec484, %vec.epilog.iter.check542 ], [ 0, %vector.main.loop.iter.check480 ]
  %n.vec546 = and i64 %i.gd, -4                   ; 3 uses
  %i.it = getelementptr i8, ptr %i.fv, i64 %n.vec546
  br label %vec.epilog.vector.body547

vec.epilog.vector.body547:                        ; preds = %pred.store.continue561, %vec.epilog.ph544
  %index548 = phi i64 [ %vec.epilog.resume.val539, %vec.epilog.ph544 ], [ %index.next562, %pred.store.continue561 ] ; 5 uses
  %next.gep549 = getelementptr i8, ptr %i.fv, i64 %index548 ; 2 uses
  %i.iu = getelementptr i8, ptr %i.fv, i64 %index548
  %next.gep550 = getelementptr i8, ptr %i.iu, i64 1
  %i.iv = getelementptr i8, ptr %i.fv, i64 %index548
  %next.gep551 = getelementptr i8, ptr %i.iv, i64 2
  %i.iw = getelementptr i8, ptr %i.fv, i64 %index548
  %next.gep552 = getelementptr i8, ptr %i.iw, i64 3
  %wide.load553 = load <4 x i8>, ptr %next.gep549, align 1, !tbaa !17 ; 5 uses
  %6 = add <4 x i8> %wide.load553, splat (i8 -65)
  %7 = icmp ult <4 x i8> %6, splat (i8 26)        ; 4 uses
  %i.ix = extractelement <4 x i1> %7, i64 0
  br i1 %i.ix, label %pred.store.if554, label %pred.store.continue555

pred.store.if554:                                 ; preds = %vec.epilog.vector.body547
  %i.iy = extractelement <4 x i8> %wide.load553, i64 0
  %i.iz = or disjoint i8 %i.iy, 32
  store i8 %i.iz, ptr %next.gep549, align 1, !tbaa !17
  br label %pred.store.continue555

pred.store.continue555:                           ; preds = %pred.store.if554, %vec.epilog.vector.body547
  %i.ja = extractelement <4 x i1> %7, i64 1
  br i1 %i.ja, label %pred.store.if556, label %pred.store.continue557

pred.store.if556:                                 ; preds = %pred.store.continue555
  %i.jb = extractelement <4 x i8> %wide.load553, i64 1
  %i.jc = or disjoint i8 %i.jb, 32
  store i8 %i.jc, ptr %next.gep550, align 1, !tbaa !17
  br label %pred.store.continue557

pred.store.continue557:                           ; preds = %pred.store.if556, %pred.store.continue555
  %i.jd = extractelement <4 x i1> %7, i64 2
  br i1 %i.jd, label %pred.store.if558, label %pred.store.continue559

pred.store.if558:                                 ; preds = %pred.store.continue557
  %i.je = extractelement <4 x i8> %wide.load553, i64 2
  %i.jf = or disjoint i8 %i.je, 32
  store i8 %i.jf, ptr %next.gep551, align 1, !tbaa !17
  br label %pred.store.continue559

pred.store.continue559:                           ; preds = %pred.store.if558, %pred.store.continue557
  %i.jg = extractelement <4 x i1> %7, i64 3
  br i1 %i.jg, label %pred.store.if560, label %pred.store.continue561

pred.store.if560:                                 ; preds = %pred.store.continue559
  %i.jh = extractelement <4 x i8> %wide.load553, i64 3
  %i.ji = or disjoint i8 %i.jh, 32
  store i8 %i.ji, ptr %next.gep552, align 1, !tbaa !17
  br label %pred.store.continue561

pred.store.continue561:                           ; preds = %pred.store.if560, %pred.store.continue559
  %index.next562 = add nuw i64 %index548, 4       ; 2 uses
  %i.jj = icmp eq i64 %index.next562, %n.vec546
  br i1 %i.jj, label %vec.epilog.middle.block563, label %vec.epilog.vector.body547, !llvm.loop !37

vec.epilog.middle.block563:                       ; preds = %pred.store.continue561
  %cmp.n564 = icmp eq i64 %i.gd, %n.vec546
  br i1 %cmp.n564, label %uriLowercaseInplaceA.exit231.loopexit, label %.preheader.i227.preheader

.preheader.i227.preheader:                        ; preds = %iter.check540, %vec.epilog.iter.check542, %vec.epilog.middle.block563
  %.018.i228.ph = phi ptr [ %i.fv, %iter.check540 ], [ %i.ge, %vec.epilog.iter.check542 ], [ %i.it, %vec.epilog.middle.block563 ]
  br label %.preheader.i227

.preheader.i227:                                  ; preds = %.preheader.i227.preheader, %bb.ad
  %.018.i228 = phi ptr [ %i.jn, %bb.ad ], [ %.018.i228.ph, %.preheader.i227.preheader ] ; 3 uses
  %i.jk = load i8, ptr %.018.i228, align 1, !tbaa !17 ; 2 uses
  %i.jl = add i8 %i.jk, -65
  %or.cond17.i229 = icmp ult i8 %i.jl, 26
  br i1 %or.cond17.i229, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.preheader.i227
  %i.jm = or disjoint i8 %i.jk, 32
  store i8 %i.jm, ptr %.018.i228, align 1, !tbaa !17
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.preheader.i227
  %i.jn = getelementptr inbounds nuw i8, ptr %.018.i228, i64 1 ; 2 uses
  %exitcond.not.i230 = icmp eq ptr %i.jn, %i.ga
  br i1 %exitcond.not.i230, label %uriLowercaseInplaceA.exit231.loopexit, label %.preheader.i227, !llvm.loop !38

bb.ae:                                            ; preds = %bb.aa
  %i.jo = icmp eq ptr %i.ga, null
  br i1 %i.jo, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jp = ptrtoint ptr %i.ga to i64
  %i.jq = ptrtoint ptr %i.fv to i64
  %i.jr = sub i64 %i.jp, %i.jq                    ; 5 uses
  %i.js = trunc i64 %i.jr to i32                  ; 2 uses
  %i.jt = icmp eq i32 %i.js, 0
  br i1 %i.jt, label %uriLowercaseMallocA.exit242, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ju = icmp slt i32 %i.js, 0
  br i1 %i.ju, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.jv = load ptr, ptr %3, align 8, !tbaa !31
  %i.jw = and i64 %i.jr, 2147483647               ; 3 uses
  %i.jx = tail call ptr %i.jv(ptr noundef nonnull %3, i64 noundef %i.jw) #7, !inline_history !33 ; 7 uses
  %i.jy = icmp eq ptr %i.jx, null
  br i1 %i.jy, label %bb.ai, label %.lr.ph.i234.preheader

.lr.ph.i234.preheader:                            ; preds = %bb.ah
  %xtraiter658 = and i64 %i.jr, 1
  %i.jz = icmp eq i64 %i.jw, 1
  br i1 %i.jz, label %.lr.ph.i234.epil.preheader, label %.lr.ph.i234.preheader.new

.lr.ph.i234.preheader.new:                        ; preds = %.lr.ph.i234.preheader
  %unroll_iter661 = and i64 %i.jr, 2147483646
  br label %.lr.ph.i234

.lr.ph.i234:                                      ; preds = %.lr.ph.i234, %.lr.ph.i234.preheader.new
  %indvars.iv.i235 = phi i64 [ 0, %.lr.ph.i234.preheader.new ], [ %indvars.iv.next.i238.1, %.lr.ph.i234 ] ; 4 uses
  %niter662 = phi i64 [ 0, %.lr.ph.i234.preheader.new ], [ %niter662.next.1, %.lr.ph.i234 ]
  %i.ka = load ptr, ptr %i.fu, align 8, !tbaa !24
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 %indvars.iv.i235
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !17  ; 3 uses
  %i.kd = add i8 %i.kc, -65
  %or.cond.i236 = icmp ult i8 %i.kd, 26
  %i.ke = or disjoint i8 %i.kc, 32
  %spec.select.i237 = select i1 %or.cond.i236, i8 %i.ke, i8 %i.kc
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jx, i64 %indvars.iv.i235
  store i8 %spec.select.i237, ptr %i.kf, align 1, !tbaa !17
  %indvars.iv.next.i238 = or disjoint i64 %indvars.iv.i235, 1 ; 2 uses
  %i.kg = load ptr, ptr %i.fu, align 8, !tbaa !24
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 %indvars.iv.next.i238
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !17  ; 3 uses
  %i.kj = add i8 %i.ki, -65
  %or.cond.i236.1 = icmp ult i8 %i.kj, 26
  %i.kk = or disjoint i8 %i.ki, 32
  %spec.select.i237.1 = select i1 %or.cond.i236.1, i8 %i.kk, i8 %i.ki
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jx, i64 %indvars.iv.next.i238
  store i8 %spec.select.i237.1, ptr %i.kl, align 1, !tbaa !17
  %indvars.iv.next.i238.1 = add nuw nsw i64 %indvars.iv.i235, 2 ; 2 uses
  %niter662.next.1 = add i64 %niter662, 2         ; 2 uses
  %niter662.ncmp.1 = icmp eq i64 %niter662.next.1, %unroll_iter661
  br i1 %niter662.ncmp.1, label %._crit_edge.i240.unr-lcssa, label %.lr.ph.i234, !llvm.loop !34

._crit_edge.i240.unr-lcssa:                       ; preds = %.lr.ph.i234
  %lcmp.mod659.not = icmp eq i64 %xtraiter658, 0
  br i1 %lcmp.mod659.not, label %._crit_edge.i240, label %.lr.ph.i234.epil.preheader

.lr.ph.i234.epil.preheader:                       ; preds = %._crit_edge.i240.unr-lcssa, %.lr.ph.i234.preheader
  %indvars.iv.i235.epil.init = phi i64 [ 0, %.lr.ph.i234.preheader ], [ %indvars.iv.next.i238.1, %._crit_edge.i240.unr-lcssa ] ; 2 uses
  %lcmp.mod660 = trunc i64 %i.jr to i1
  tail call void @llvm.assume(i1 %lcmp.mod660)
  %i.km = load ptr, ptr %i.fu, align 8, !tbaa !24
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 %indvars.iv.i235.epil.init
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !17  ; 3 uses
  %i.kp = add i8 %i.ko, -65
  %or.cond.i236.epil = icmp ult i8 %i.kp, 26
  %i.kq = or disjoint i8 %i.ko, 32
  %spec.select.i237.epil = select i1 %or.cond.i236.epil, i8 %i.kq, i8 %i.ko
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jx, i64 %indvars.iv.i235.epil.init
  store i8 %spec.select.i237.epil, ptr %i.kr, align 1, !tbaa !17
  br label %._crit_edge.i240

._crit_edge.i240:                                 ; preds = %._crit_edge.i240.unr-lcssa, %.lr.ph.i234.epil.preheader
  store ptr %i.jx, ptr %i.fu, align 8, !tbaa !24
  %i.ks = getelementptr inbounds nuw i8, ptr %i.jx, i64 %i.jw ; 2 uses
  store ptr %i.ks, ptr %i.fz, align 8, !tbaa !24
  br label %uriLowercaseMallocA.exit242

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.ae
  tail call fastcc void @uriPreventLeakageA(ptr noundef %0, i32 noundef %i.fr, ptr noundef %3)
  br label %bb.ef

uriLowercaseMallocA.exit242:                      ; preds = %._crit_edge.i240, %bb.af
  %i.kt = phi ptr [ %i.ks, %._crit_edge.i240 ], [ %i.ga, %bb.af ]
  %i.ku = phi ptr [ %i.jx, %._crit_edge.i240 ], [ %i.fv, %bb.af ]
  %i.kv = or disjoint i32 %i.fr, 4                ; 2 uses
  store i32 %i.kv, ptr %i.a, align 4, !tbaa !3
  br label %uriLowercaseInplaceA.exit231

uriLowercaseInplaceA.exit231.loopexit:            ; preds = %bb.ad, %vec.epilog.middle.block563, %middle.block537
  %.pre = load ptr, ptr %i.fu, align 8, !tbaa !35
  %.pre331 = load ptr, ptr %i.fz, align 8, !tbaa !39
  br label %uriLowercaseInplaceA.exit231

uriLowercaseInplaceA.exit231:                     ; preds = %uriLowercaseInplaceA.exit231.loopexit, %bb.ab, %uriLowercaseMallocA.exit242
  %i.kw = phi i32 [ %i.fr, %uriLowercaseInplaceA.exit231.loopexit ], [ %i.fr, %bb.ab ], [ %i.kv, %uriLowercaseMallocA.exit242 ]
  %i.kx = phi ptr [ %.pre331, %uriLowercaseInplaceA.exit231.loopexit ], [ %i.ga, %bb.ab ], [ %i.kt, %uriLowercaseMallocA.exit242 ]
  %i.ky = phi ptr [ %.pre, %uriLowercaseInplaceA.exit231.loopexit ], [ %i.fv, %bb.ab ], [ %i.ku, %uriLowercaseMallocA.exit242 ]
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ky, ptr %i.kz, align 8, !tbaa !20
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.kx, ptr %i.la, align 8, !tbaa !21
  br label %uriContainsUglyPercentEncodingA.exit

bb.aj:                                            ; preds = %bb.z
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !20 ; 2 uses
  %.not177 = icmp eq ptr %i.lc, null
  br i1 %.not177, label %uriContainsUglyPercentEncodingA.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ld = load ptr, ptr %i.ft, align 8, !tbaa !40
  %i.le = icmp eq ptr %i.ld, null
  br i1 %i.le, label %bb.al, label %uriContainsUglyPercentEncodingA.exit

bb.al:                                            ; preds = %bb.ak
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !41
  %i.lh = icmp eq ptr %i.lg, null
  br i1 %i.lh, label %bb.am, label %uriContainsUglyPercentEncodingA.exit

bb.am:                                            ; preds = %bb.al
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !23
  %.not178 = icmp eq i32 %i.lj, 0
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br i1 %.not178, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call fastcc void @uriFixPercentEncodingInplaceA(ptr noundef nonnull %i.lc, ptr noundef %i.lk)
  br label %bb.ar

bb.ao:                                            ; preds = %bb.am
  %i.ll = tail call fastcc i32 @uriFixPercentEncodingMallocA(ptr noundef %i.lb, ptr noundef %i.lk, ptr noundef %3)
  %.not179 = icmp eq i32 %i.ll, 0
  br i1 %.not179, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  tail call fastcc void @uriPreventLeakageA(ptr noundef %0, i32 noundef %i.fr, ptr noundef %3)
  br label %bb.ef

bb.aq:                                            ; preds = %bb.ao
  %i.lm = or disjoint i32 %i.fr, 4                ; 2 uses
  store i32 %i.lm, ptr %i.a, align 4, !tbaa !3
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.an
  %i.ln = phi i32 [ %i.lm, %bb.aq ], [ %i.fr, %bb.an ] ; 4 uses
  %i.lo = load ptr, ptr %i.lb, align 8, !tbaa !20 ; 26 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !21 ; 3 uses
  %i.lr = icmp ne ptr %i.lo, null
  %i.ls = icmp ugt ptr %i.lq, %i.lo
  %or.cond16.i243 = and i1 %i.lr, %i.ls
  br i1 %or.cond16.i243, label %iter.check627, label %uriContainsUglyPercentEncodingA.exit

iter.check627:                                    ; preds = %bb.ar
  %i.lt = ptrtoint ptr %i.lq to i64
  %i.lu = ptrtoint ptr %i.lo to i64
  %i.lv = sub i64 %i.lt, %i.lu                    ; 7 uses
  %min.iters.check566 = icmp ult i64 %i.lv, 4
  br i1 %min.iters.check566, label %.preheader.i244.preheader, label %vector.main.loop.iter.check567

vector.main.loop.iter.check567:                   ; preds = %iter.check627
  %min.iters.check568 = icmp ult i64 %i.lv, 16
  br i1 %min.iters.check568, label %vec.epilog.ph631, label %vector.ph569

vector.ph569:                                     ; preds = %vector.main.loop.iter.check567
  %n.mod.vf570 = and i64 %i.lv, 12
  %n.vec571 = and i64 %i.lv, -16                  ; 4 uses
  %i.lw = getelementptr i8, ptr %i.lo, i64 %n.vec571
  br label %vector.body572

vector.body572:                                   ; preds = %pred.store.continue622, %vector.ph569
  %index573 = phi i64 [ 0, %vector.ph569 ], [ %index.next623, %pred.store.continue622 ] ; 17 uses
  %next.gep574 = getelementptr i8, ptr %i.lo, i64 %index573 ; 2 uses
  %i.lx = getelementptr i8, ptr %i.lo, i64 %index573
  %next.gep575 = getelementptr i8, ptr %i.lx, i64 1
  %i.ly = getelementptr i8, ptr %i.lo, i64 %index573
  %next.gep576 = getelementptr i8, ptr %i.ly, i64 2
  %i.lz = getelementptr i8, ptr %i.lo, i64 %index573
  %next.gep577 = getelementptr i8, ptr %i.lz, i64 3
  %i.ma = getelementptr i8, ptr %i.lo, i64 %index573
  %next.gep578 = getelementptr i8, ptr %i.ma, i64 4
  %i.mb = getelementptr i8, ptr %i.lo, i64 %index573
  %next.gep579 = getelementptr i8, ptr %i.mb, i64 5
  %i.mc = getelementptr i8, ptr %i.lo, i64 %index573
  %next.gep580 = getelementptr i8, ptr %i.mc, i64 6
  %i.md = getelementptr i8, ptr %i.lo, i64 %index573
  %next.gep581 = getelementptr i8, ptr %i.md, i64 7
  %i.me = getelementptr i8, ptr %i.lo, i64 %index573
  %next.gep582 = getelementptr i8, ptr %i.me, i64 8
  %i.mf = getelementptr i8, ptr %i.lo, i64 %index573
  %next.gep583 = getelementptr i8, ptr %i.mf, i64 9
  %i.mg = getelementptr i8, ptr %i.lo, i64 %index573
  %next.gep584 = getelementptr i8, ptr %i.mg, i64 10
  %i.mh = getelementptr i8, ptr %i.lo, i64 %index573
  %next.gep585 = getelementptr i8, ptr %i.mh, i64 11
  %i.mi = getelementptr i8, ptr %i.lo, i64 %index573
  %next.gep586 = getelementptr i8, ptr %i.mi, i64 12
  %i.mj = getelementptr i8, ptr %i.lo, i64 %index573
  %next.gep587 = getelementptr i8, ptr %i.mj, i64 13
  %i.mk = getelementptr i8, ptr %i.lo, i64 %index573
  %next.gep588 = getelementptr i8, ptr %i.mk, i64 14
  %i.ml = getelementptr i8, ptr %i.lo, i64 %index573
  %next.gep589 = getelementptr i8, ptr %i.ml, i64 15
  %wide.load590 = load <16 x i8>, ptr %next.gep574, align 1, !tbaa !17 ; 17 uses
  %i.mm = add <16 x i8> %wide.load590, splat (i8 -65)
  %i.mn = icmp ult <16 x i8> %i.mm, splat (i8 26) ; 16 uses
  %i.mo = extractelement <16 x i1> %i.mn, i64 0
  br i1 %i.mo, label %pred.store.if591, label %pred.store.continue592

pred.store.if591:                                 ; preds = %vector.body572
  %i.mp = extractelement <16 x i8> %wide.load590, i64 0
  %i.mq = or disjoint i8 %i.mp, 32
  store i8 %i.mq, ptr %next.gep574, align 1, !tbaa !17
  br label %pred.store.continue592

pred.store.continue592:                           ; preds = %pred.store.if591, %vector.body572
  %i.mr = extractelement <16 x i1> %i.mn, i64 1
  br i1 %i.mr, label %pred.store.if593, label %pred.store.continue594

pred.store.if593:                                 ; preds = %pred.store.continue592
  %i.ms = extractelement <16 x i8> %wide.load590, i64 1
  %i.mt = or disjoint i8 %i.ms, 32
  store i8 %i.mt, ptr %next.gep575, align 1, !tbaa !17
  br label %pred.store.continue594

pred.store.continue594:                           ; preds = %pred.store.if593, %pred.store.continue592
  %i.mu = extractelement <16 x i1> %i.mn, i64 2
  br i1 %i.mu, label %pred.store.if595, label %pred.store.continue596

pred.store.if595:                                 ; preds = %pred.store.continue594
  %i.mv = extractelement <16 x i8> %wide.load590, i64 2
  %i.mw = or disjoint i8 %i.mv, 32
  store i8 %i.mw, ptr %next.gep576, align 1, !tbaa !17
  br label %pred.store.continue596

pred.store.continue596:                           ; preds = %pred.store.if595, %pred.store.continue594
  %i.mx = extractelement <16 x i1> %i.mn, i64 3
  br i1 %i.mx, label %pred.store.if597, label %pred.store.continue598

pred.store.if597:                                 ; preds = %pred.store.continue596
  %i.my = extractelement <16 x i8> %wide.load590, i64 3
  %i.mz = or disjoint i8 %i.my, 32
  store i8 %i.mz, ptr %next.gep577, align 1, !tbaa !17
  br label %pred.store.continue598

pred.store.continue598:                           ; preds = %pred.store.if597, %pred.store.continue596
  %i.na = extractelement <16 x i1> %i.mn, i64 4
  br i1 %i.na, label %pred.store.if599, label %pred.store.continue600

pred.store.if599:                                 ; preds = %pred.store.continue598
  %i.nb = extractelement <16 x i8> %wide.load590, i64 4
  %i.nc = or disjoint i8 %i.nb, 32
  store i8 %i.nc, ptr %next.gep578, align 1, !tbaa !17
  br label %pred.store.continue600

pred.store.continue600:                           ; preds = %pred.store.if599, %pred.store.continue598
  %i.nd = extractelement <16 x i1> %i.mn, i64 5
  br i1 %i.nd, label %pred.store.if601, label %pred.store.continue602

pred.store.if601:                                 ; preds = %pred.store.continue600
  %i.ne = extractelement <16 x i8> %wide.load590, i64 5
  %i.nf = or disjoint i8 %i.ne, 32
  store i8 %i.nf, ptr %next.gep579, align 1, !tbaa !17
  br label %pred.store.continue602

pred.store.continue602:                           ; preds = %pred.store.if601, %pred.store.continue600
  %i.ng = extractelement <16 x i1> %i.mn, i64 6
  br i1 %i.ng, label %pred.store.if603, label %pred.store.continue604

pred.store.if603:                                 ; preds = %pred.store.continue602
  %i.nh = extractelement <16 x i8> %wide.load590, i64 6
  %i.ni = or disjoint i8 %i.nh, 32
  store i8 %i.ni, ptr %next.gep580, align 1, !tbaa !17
  br label %pred.store.continue604

pred.store.continue604:                           ; preds = %pred.store.if603, %pred.store.continue602
  %i.nj = extractelement <16 x i1> %i.mn, i64 7
  br i1 %i.nj, label %pred.store.if605, label %pred.store.continue606

pred.store.if605:                                 ; preds = %pred.store.continue604
  %i.nk = extractelement <16 x i8> %wide.load590, i64 7
  %i.nl = or disjoint i8 %i.nk, 32
  store i8 %i.nl, ptr %next.gep581, align 1, !tbaa !17
  br label %pred.store.continue606

pred.store.continue606:                           ; preds = %pred.store.if605, %pred.store.continue604
  %i.nm = extractelement <16 x i1> %i.mn, i64 8
  br i1 %i.nm, label %pred.store.if607, label %pred.store.continue608

pred.store.if607:                                 ; preds = %pred.store.continue606
  %i.nn = extractelement <16 x i8> %wide.load590, i64 8
  %i.no = or disjoint i8 %i.nn, 32
  store i8 %i.no, ptr %next.gep582, align 1, !tbaa !17
  br label %pred.store.continue608

pred.store.continue608:                           ; preds = %pred.store.if607, %pred.store.continue606
  %i.np = extractelement <16 x i1> %i.mn, i64 9
  br i1 %i.np, label %pred.store.if609, label %pred.store.continue610

pred.store.if609:                                 ; preds = %pred.store.continue608
  %i.nq = extractelement <16 x i8> %wide.load590, i64 9
  %i.nr = or disjoint i8 %i.nq, 32
  store i8 %i.nr, ptr %next.gep583, align 1, !tbaa !17
  br label %pred.store.continue610

pred.store.continue610:                           ; preds = %pred.store.if609, %pred.store.continue608
  %i.ns = extractelement <16 x i1> %i.mn, i64 10
  br i1 %i.ns, label %pred.store.if611, label %pred.store.continue612

pred.store.if611:                                 ; preds = %pred.store.continue610
  %i.nt = extractelement <16 x i8> %wide.load590, i64 10
  %i.nu = or disjoint i8 %i.nt, 32
  store i8 %i.nu, ptr %next.gep584, align 1, !tbaa !17
  br label %pred.store.continue612

pred.store.continue612:                           ; preds = %pred.store.if611, %pred.store.continue610
  %i.nv = extractelement <16 x i1> %i.mn, i64 11
  br i1 %i.nv, label %pred.store.if613, label %pred.store.continue614

pred.store.if613:                                 ; preds = %pred.store.continue612
  %i.nw = extractelement <16 x i8> %wide.load590, i64 11
  %i.nx = or disjoint i8 %i.nw, 32
  store i8 %i.nx, ptr %next.gep585, align 1, !tbaa !17
  br label %pred.store.continue614

pred.store.continue614:                           ; preds = %pred.store.if613, %pred.store.continue612
  %i.ny = extractelement <16 x i1> %i.mn, i64 12
  br i1 %i.ny, label %pred.store.if615, label %pred.store.continue616

pred.store.if615:                                 ; preds = %pred.store.continue614
  %i.nz = extractelement <16 x i8> %wide.load590, i64 12
  %i.oa = or disjoint i8 %i.nz, 32
  store i8 %i.oa, ptr %next.gep586, align 1, !tbaa !17
  br label %pred.store.continue616

pred.store.continue616:                           ; preds = %pred.store.if615, %pred.store.continue614
  %i.ob = extractelement <16 x i1> %i.mn, i64 13
  br i1 %i.ob, label %pred.store.if617, label %pred.store.continue618

pred.store.if617:                                 ; preds = %pred.store.continue616
  %i.oc = extractelement <16 x i8> %wide.load590, i64 13
  %i.od = or disjoint i8 %i.oc, 32
  store i8 %i.od, ptr %next.gep587, align 1, !tbaa !17
  br label %pred.store.continue618

pred.store.continue618:                           ; preds = %pred.store.if617, %pred.store.continue616
  %i.oe = extractelement <16 x i1> %i.mn, i64 14
  br i1 %i.oe, label %pred.store.if619, label %pred.store.continue620

pred.store.if619:                                 ; preds = %pred.store.continue618
  %i.of = extractelement <16 x i8> %wide.load590, i64 14
  %i.og = or disjoint i8 %i.of, 32
  store i8 %i.og, ptr %next.gep588, align 1, !tbaa !17
  br label %pred.store.continue620

pred.store.continue620:                           ; preds = %pred.store.if619, %pred.store.continue618
  %i.oh = extractelement <16 x i1> %i.mn, i64 15
  br i1 %i.oh, label %pred.store.if621, label %pred.store.continue622

pred.store.if621:                                 ; preds = %pred.store.continue620
  %i.oi = extractelement <16 x i8> %wide.load590, i64 15
  %i.oj = or disjoint i8 %i.oi, 32
  store i8 %i.oj, ptr %next.gep589, align 1, !tbaa !17
  br label %pred.store.continue622

pred.store.continue622:                           ; preds = %pred.store.if621, %pred.store.continue620
  %index.next623 = add nuw i64 %index573, 16      ; 2 uses
  %i.ok = icmp eq i64 %index.next623, %n.vec571
  br i1 %i.ok, label %middle.block624, label %vector.body572, !llvm.loop !42

middle.block624:                                  ; preds = %pred.store.continue622
  %cmp.n625 = icmp eq i64 %i.lv, %n.vec571
  br i1 %cmp.n625, label %uriContainsUglyPercentEncodingA.exit, label %vec.epilog.iter.check629

vec.epilog.iter.check629:                         ; preds = %middle.block624
  %min.epilog.iters.check630 = icmp eq i64 %n.mod.vf570, 0
  br i1 %min.epilog.iters.check630, label %.preheader.i244.preheader, label %vec.epilog.ph631, !prof !28

vec.epilog.ph631:                                 ; preds = %vector.main.loop.iter.check567, %vec.epilog.iter.check629
  %vec.epilog.resume.val626 = phi i64 [ %n.vec571, %vec.epilog.iter.check629 ], [ 0, %vector.main.loop.iter.check567 ]
  %n.vec633 = and i64 %i.lv, -4                   ; 3 uses
  %i.ol = getelementptr i8, ptr %i.lo, i64 %n.vec633
  br label %vec.epilog.vector.body634

vec.epilog.vector.body634:                        ; preds = %pred.store.continue648, %vec.epilog.ph631
  %index635 = phi i64 [ %vec.epilog.resume.val626, %vec.epilog.ph631 ], [ %index.next649, %pred.store.continue648 ] ; 5 uses
  %next.gep636 = getelementptr i8, ptr %i.lo, i64 %index635 ; 2 uses
  %i.om = getelementptr i8, ptr %i.lo, i64 %index635
  %next.gep637 = getelementptr i8, ptr %i.om, i64 1
  %i.on = getelementptr i8, ptr %i.lo, i64 %index635
  %next.gep638 = getelementptr i8, ptr %i.on, i64 2
  %i.oo = getelementptr i8, ptr %i.lo, i64 %index635
  %next.gep639 = getelementptr i8, ptr %i.oo, i64 3
  %wide.load640 = load <4 x i8>, ptr %next.gep636, align 1, !tbaa !17 ; 5 uses
  %8 = add <4 x i8> %wide.load640, splat (i8 -65)
  %9 = icmp ult <4 x i8> %8, splat (i8 26)        ; 4 uses
  %i.op = extractelement <4 x i1> %9, i64 0
  br i1 %i.op, label %pred.store.if641, label %pred.store.continue642

pred.store.if641:                                 ; preds = %vec.epilog.vector.body634
  %i.oq = extractelement <4 x i8> %wide.load640, i64 0
  %i.or = or disjoint i8 %i.oq, 32
  store i8 %i.or, ptr %next.gep636, align 1, !tbaa !17
  br label %pred.store.continue642

pred.store.continue642:                           ; preds = %pred.store.if641, %vec.epilog.vector.body634
  %i.os = extractelement <4 x i1> %9, i64 1
  br i1 %i.os, label %pred.store.if643, label %pred.store.continue644

pred.store.if643:                                 ; preds = %pred.store.continue642
  %i.ot = extractelement <4 x i8> %wide.load640, i64 1
  %i.ou = or disjoint i8 %i.ot, 32
  store i8 %i.ou, ptr %next.gep637, align 1, !tbaa !17
  br label %pred.store.continue644

pred.store.continue644:                           ; preds = %pred.store.if643, %pred.store.continue642
  %i.ov = extractelement <4 x i1> %9, i64 2
  br i1 %i.ov, label %pred.store.if645, label %pred.store.continue646

pred.store.if645:                                 ; preds = %pred.store.continue644
  %i.ow = extractelement <4 x i8> %wide.load640, i64 2
  %i.ox = or disjoint i8 %i.ow, 32
  store i8 %i.ox, ptr %next.gep638, align 1, !tbaa !17
  br label %pred.store.continue646

pred.store.continue646:                           ; preds = %pred.store.if645, %pred.store.continue644
  %i.oy = extractelement <4 x i1> %9, i64 3
  br i1 %i.oy, label %pred.store.if647, label %pred.store.continue648

pred.store.if647:                                 ; preds = %pred.store.continue646
  %i.oz = extractelement <4 x i8> %wide.load640, i64 3
  %i.pa = or disjoint i8 %i.oz, 32
  store i8 %i.pa, ptr %next.gep639, align 1, !tbaa !17
  br label %pred.store.continue648

pred.store.continue648:                           ; preds = %pred.store.if647, %pred.store.continue646
  %index.next649 = add nuw i64 %index635, 4       ; 2 uses
  %i.pb = icmp eq i64 %index.next649, %n.vec633
  br i1 %i.pb, label %vec.epilog.middle.block650, label %vec.epilog.vector.body634, !llvm.loop !43

vec.epilog.middle.block650:                       ; preds = %pred.store.continue648
  %cmp.n651 = icmp eq i64 %i.lv, %n.vec633
  br i1 %cmp.n651, label %uriContainsUglyPercentEncodingA.exit, label %.preheader.i244.preheader

.preheader.i244.preheader:                        ; preds = %iter.check627, %vec.epilog.iter.check629, %vec.epilog.middle.block650
  %.018.i245.ph = phi ptr [ %i.lo, %iter.check627 ], [ %i.lw, %vec.epilog.iter.check629 ], [ %i.ol, %vec.epilog.middle.block650 ]
  br label %.preheader.i244

.preheader.i244:                                  ; preds = %.preheader.i244.preheader, %bb.at
  %.018.i245 = phi ptr [ %i.pf, %bb.at ], [ %.018.i245.ph, %.preheader.i244.preheader ] ; 3 uses
  %i.pc = load i8, ptr %.018.i245, align 1, !tbaa !17 ; 2 uses
  %i.pd = add i8 %i.pc, -65
  %or.cond17.i246 = icmp ult i8 %i.pd, 26
  br i1 %or.cond17.i246, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.preheader.i244
  %i.pe = or disjoint i8 %i.pc, 32
  store i8 %i.pe, ptr %.018.i245, align 1, !tbaa !17
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.preheader.i244
  %i.pf = getelementptr inbounds nuw i8, ptr %.018.i245, i64 1 ; 2 uses
  %exitcond.not.i247 = icmp eq ptr %i.pf, %i.lq
  br i1 %exitcond.not.i247, label %uriContainsUglyPercentEncodingA.exit, label %.preheader.i244, !llvm.loop !44

uriContainsUglyPercentEncodingA.exit:             ; preds = %bb.m, %bb.at, %middle.block624, %vec.epilog.middle.block650, %bb.ar, %bb.i, %uriLowercaseInplaceA.exit, %bb.aj, %bb.ak, %bb.al, %uriLowercaseInplaceA.exit231
  %i.pg = phi i32 [ %i.ln, %middle.block624 ], [ %i.kw, %uriLowercaseInplaceA.exit231 ], [ %i.ln, %bb.ar ], [ 0, %bb.i ], [ %i.fr, %uriLowercaseInplaceA.exit ], [ %i.fr, %bb.aj ], [ %i.fr, %bb.ak ], [ %i.fr, %bb.al ], [ %i.ln, %bb.at ], [ %i.ln, %vec.epilog.middle.block650 ], [ 0, %bb.m ] ; 6 uses
  br i1 %.not211, label %bb.az, label %uriContainsUglyPercentEncodingA.exit.thread295

uriContainsUglyPercentEncodingA.exit.thread295.sink.split: ; preds = %bb.h, %bb.n
  %.sink = phi i32 [ %i.ar, %bb.n ], [ %i.u, %bb.h ]
  store i32 %.sink, ptr %2, align 4, !tbaa !3
  br label %uriContainsUglyPercentEncodingA.exit.thread295

uriContainsUglyPercentEncodingA.exit.thread295:   ; preds = %uriContainsUglyPercentEncodingA.exit.thread295.sink.split, %uriContainsUglyPercentEncodingA.exit
  %i.ph = phi i32 [ %i.pg, %uriContainsUglyPercentEncodingA.exit ], [ 0, %uriContainsUglyPercentEncodingA.exit.thread295.sink.split ] ; 4 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !45 ; 4 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !46 ; 3 uses
  %i.pm = icmp ne ptr %i.pj, null
  %i.pn = icmp ugt ptr %i.pl, %i.pj
  %or.cond29.i249 = and i1 %i.pm, %i.pn
  %i.po = getelementptr inbounds nuw i8, ptr %i.pj, i64 2 ; 2 uses
  %i.pp = icmp ult ptr %i.po, %i.pl
  %or.cond.i250 = select i1 %or.cond29.i249, i1 %i.pp, i1 false
  br i1 %or.cond.i250, label %.lr.ph.i252, label %uriContainsUglyPercentEncodingA.exit257.thread301

.lr.ph.i252:                                      ; preds = %uriContainsUglyPercentEncodingA.exit.thread295, %bb.ax
  %i.pq = phi ptr [ %i.qh, %bb.ax ], [ %i.po, %uriContainsUglyPercentEncodingA.exit.thread295 ] ; 2 uses
  %.02132.i253 = phi ptr [ %i.qg, %bb.ax ], [ %i.pj, %uriContainsUglyPercentEncodingA.exit.thread295 ] ; 4 uses
  %i.pr = load i8, ptr %.02132.i253, align 1, !tbaa !17
  %i.ps = icmp eq i8 %i.pr, 37
  br i1 %i.ps, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %.lr.ph.i252
  %i.pt = getelementptr inbounds nuw i8, ptr %.02132.i253, i64 1
  %i.pu = load i8, ptr %i.pt, align 1, !tbaa !17  ; 2 uses
  %i.pv = add i8 %i.pu, -97
  %or.cond30.i254 = icmp ult i8 %i.pv, 6
  br i1 %or.cond30.i254, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.pw = load i8, ptr %i.pq, align 1, !tbaa !17
  %i.px = add i8 %i.pw, -97
  %or.cond31.i255 = icmp ult i8 %i.px, 6
  br i1 %or.cond31.i255, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.py = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.pu) #7
  %i.pz = load i8, ptr %i.pq, align 1, !tbaa !17
  %i.qa = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.pz) #7
  %i.qb = zext i8 %i.py to i32
  %i.qc = shl nuw nsw i32 %i.qb, 4
  %i.qd = zext i8 %i.qa to i32
  %i.qe = add nuw nsw i32 %i.qc, %i.qd
  %i.qf = tail call i32 @uriIsUnreserved(i32 noundef %i.qe) #7
  %.not.i256 = icmp eq i32 %i.qf, 0
  br i1 %.not.i256, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw, %.lr.ph.i252
  %i.qg = getelementptr inbounds nuw i8, ptr %.02132.i253, i64 1
  %i.qh = getelementptr inbounds nuw i8, ptr %.02132.i253, i64 3 ; 2 uses
  %i.qi = icmp ult ptr %i.qh, %i.pl
  br i1 %i.qi, label %.lr.ph.i252, label %uriContainsUglyPercentEncodingA.exit257, !llvm.loop !22

bb.ay:                                            ; preds = %bb.av, %bb.au, %bb.aw
  %i.qj = load i32, ptr %2, align 4, !tbaa !3
  %i.qk = or i32 %i.qj, 2
  store i32 %i.qk, ptr %2, align 4, !tbaa !3
  br label %uriContainsUglyPercentEncodingA.exit257.thread301

bb.az:                                            ; preds = %uriContainsUglyPercentEncodingA.exit
  %i.ql = and i32 %1, 2
  %.not185 = icmp eq i32 %i.ql, 0
  br i1 %.not185, label %uriContainsUglyPercentEncodingA.exit257.thread299, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !45 ; 2 uses
  %.not186 = icmp eq ptr %i.qn, null
  br i1 %.not186, label %uriContainsUglyPercentEncodingA.exit257.thread299, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !23
  %.not187 = icmp eq i32 %i.qp, 0
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %.not187, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  tail call fastcc void @uriFixPercentEncodingInplaceA(ptr noundef nonnull %i.qn, ptr noundef %i.qq)
  br label %uriContainsUglyPercentEncodingA.exit257.thread299

bb.bd:                                            ; preds = %bb.bb
  %i.qr = tail call fastcc i32 @uriFixPercentEncodingMallocA(ptr noundef %i.qm, ptr noundef %i.qq, ptr noundef %3)
  %.not188 = icmp eq i32 %i.qr, 0
  br i1 %.not188, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  tail call fastcc void @uriPreventLeakageA(ptr noundef %0, i32 noundef %i.pg, ptr noundef %3)
  br label %bb.ef

bb.bf:                                            ; preds = %bb.bd
  %i.qs = or i32 %i.pg, 2                         ; 2 uses
  store i32 %i.qs, ptr %i.a, align 4, !tbaa !3
  br label %uriContainsUglyPercentEncodingA.exit257.thread299

uriContainsUglyPercentEncodingA.exit257:          ; preds = %bb.ax
  br i1 %.not211, label %uriContainsUglyPercentEncodingA.exit257.thread299, label %uriContainsUglyPercentEncodingA.exit257.thread301

uriContainsUglyPercentEncodingA.exit257.thread301: ; preds = %bb.ay, %uriContainsUglyPercentEncodingA.exit.thread295, %uriContainsUglyPercentEncodingA.exit257
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.0157319 = load ptr, ptr %i.qt, align 8, !tbaa !47 ; 2 uses
  %.not197320 = icmp eq ptr %.0157319, null
  br i1 %.not197320, label %.loopexit315.thread, label %.lr.ph

.lr.ph:                                           ; preds = %uriContainsUglyPercentEncodingA.exit257.thread301, %.loopexit314
  %.0157321 = phi ptr [ %.0157, %.loopexit314 ], [ %.0157319, %uriContainsUglyPercentEncodingA.exit257.thread301 ] ; 3 uses
  %i.qu = load ptr, ptr %.0157321, align 8, !tbaa !48 ; 8 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %.0157321, i64 8
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !50 ; 4 uses
  %i.qx = icmp ne ptr %i.qu, null
  %i.qy = icmp ugt ptr %i.qw, %i.qu
  %or.cond212 = select i1 %i.qx, i1 %i.qy, i1 false
  br i1 %or.cond212, label %bb.bg, label %.loopexit314

bb.bg:                                            ; preds = %.lr.ph
  %i.qz = ptrtoint ptr %i.qw to i64
  %i.ra = ptrtoint ptr %i.qu to i64
  %i.rb = sub i64 %i.qz, %i.ra
  switch i64 %i.rb, label %bb.bk [
    i64 1, label %bb.bh
    i64 2, label %bb.bi
  ]

bb.bh:                                            ; preds = %bb.bg
  %i.rc = load i8, ptr %i.qu, align 1, !tbaa !17
  %i.rd = icmp eq i8 %i.rc, 46
  br i1 %i.rd, label %.thread308, label %bb.bk

bb.bi:                                            ; preds = %bb.bg
  %i.re = load i8, ptr %i.qu, align 1, !tbaa !17
  %i.rf = icmp eq i8 %i.re, 46
  br i1 %i.rf, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qu, i64 1
  %i.rh = load i8, ptr %i.rg, align 1, !tbaa !17
  %i.ri = icmp eq i8 %i.rh, 46
  br i1 %i.ri, label %.thread308, label %bb.bk

bb.bk:                                            ; preds = %bb.bh, %bb.bg, %bb.bj, %bb.bi
  %i.rj = getelementptr inbounds nuw i8, ptr %i.qu, i64 2 ; 2 uses
  %i.rk = icmp ult ptr %i.rj, %i.qw
  br i1 %i.rk, label %.lr.ph.i261, label %.loopexit314

.lr.ph.i261:                                      ; preds = %bb.bk, %bb.bo
  %i.rl = phi ptr [ %i.sc, %bb.bo ], [ %i.rj, %bb.bk ] ; 2 uses
  %.02132.i262 = phi ptr [ %i.sb, %bb.bo ], [ %i.qu, %bb.bk ] ; 4 uses
  %i.rm = load i8, ptr %.02132.i262, align 1, !tbaa !17
  %i.rn = icmp eq i8 %i.rm, 37
  br i1 %i.rn, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %.lr.ph.i261
  %i.ro = getelementptr inbounds nuw i8, ptr %.02132.i262, i64 1
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !17  ; 2 uses
  %i.rq = add i8 %i.rp, -97
  %or.cond30.i263 = icmp ult i8 %i.rq, 6
  br i1 %or.cond30.i263, label %.thread308, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.rr = load i8, ptr %i.rl, align 1, !tbaa !17
  %i.rs = add i8 %i.rr, -97
  %or.cond31.i264 = icmp ult i8 %i.rs, 6
  br i1 %or.cond31.i264, label %.thread308, label %bb.bn

end_hunk_0
begin_hunk_1_@uriFixPercentEncodingMallocW:bb.a
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3
  %i.aw = sext i32 %i.aq to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3
  %i.az = tail call zeroext i8 @uriHexdigToIntW(i32 noundef %i.av) #7
  %i.ba = tail call zeroext i8 @uriHexdigToIntW(i32 noundef %i.ay) #7
  %i.bb = zext i8 %i.az to i32                    ; 2 uses
  %i.bc = shl nuw nsw i32 %i.bb, 4
  %i.bd = zext i8 %i.ba to i32                    ; 2 uses
  %i.be = add nuw nsw i32 %i.bc, %i.bd            ; 2 uses
  %i.bf = tail call i32 @uriIsUnreserved(i32 noundef %i.be) #7
  %.not44.i = icmp eq i32 %i.bf, 0
  br i1 %.not44.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.be, ptr %.046.i, align 4, !tbaa !3
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store i32 37, ptr %.046.i, align 4, !tbaa !3
  %i.bg = tail call i32 @uriHexToLetterW(i32 noundef %i.bb) #7
  %i.bh = getelementptr inbounds nuw i8, ptr %.046.i, i64 4
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !3
  %i.bi = tail call i32 @uriHexToLetterW(i32 noundef %i.bd) #7
  %i.bj = getelementptr inbounds nuw i8, ptr %.046.i, i64 8
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !3
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  %.sink.i = phi i64 [ 4, %bb.i ], [ 12, %bb.j ], [ 4, %bb.g ]
  %.140.i = phi i32 [ %i.aq, %bb.i ], [ %i.aq, %bb.j ], [ %.03945.i, %bb.g ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.046.i, i64 %.sink.i ; 2 uses
  %i.bl = add nsw i32 %.140.i, 1                  ; 2 uses
  %i.bm = add nsw i32 %.140.i, 3                  ; 2 uses
  %i.bn = icmp slt i32 %i.bm, %i.v
  br i1 %i.bn, label %.lr.ph.i, label %.preheader.i, !llvm.loop !132

.lr.ph50.i:                                       ; preds = %.lr.ph50.i.prol.loopexit, %.lr.ph50.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph50.i ], [ %indvars.iv.i.unr, %.lr.ph50.i.prol.loopexit ] ; 9 uses
  %.349.i = phi ptr [ %i.cs, %.lr.ph50.i ], [ %.349.i.unr, %.lr.ph50.i.prol.loopexit ] ; 9 uses
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3
  store i32 %i.bp, ptr %.349.i, align 4, !tbaa !3
  %i.bq = getelementptr inbounds nuw i8, ptr %.349.i, i64 4
  %i.br = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.bs = getelementptr i8, ptr %i.br, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !3
  store i32 %i.bt, ptr %i.bq, align 4, !tbaa !3
  %i.bu = getelementptr inbounds nuw i8, ptr %.349.i, i64 8
  %i.bv = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.bw = getelementptr i8, ptr %i.bv, i64 8
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3
  store i32 %i.bx, ptr %i.bu, align 4, !tbaa !3
  %i.by = getelementptr inbounds nuw i8, ptr %.349.i, i64 12
  %i.bz = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.ca = getelementptr i8, ptr %i.bz, i64 12
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !3
  store i32 %i.cb, ptr %i.by, align 4, !tbaa !3
  %i.cc = getelementptr inbounds nuw i8, ptr %.349.i, i64 16
  %i.cd = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.ce = getelementptr i8, ptr %i.cd, i64 16
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !3
  store i32 %i.cf, ptr %i.cc, align 4, !tbaa !3
  %i.cg = getelementptr inbounds nuw i8, ptr %.349.i, i64 20
  %i.ch = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.ci = getelementptr i8, ptr %i.ch, i64 20
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  store i32 %i.cj, ptr %i.cg, align 4, !tbaa !3
  %i.ck = getelementptr inbounds nuw i8, ptr %.349.i, i64 24
  %i.cl = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.cm = getelementptr i8, ptr %i.cl, i64 24
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3
  store i32 %i.cn, ptr %i.ck, align 4, !tbaa !3
  %i.co = getelementptr inbounds nuw i8, ptr %.349.i, i64 28
  %i.cp = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.cq = getelementptr i8, ptr %i.cp, i64 28
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !3
  store i32 %i.cr, ptr %i.co, align 4, !tbaa !3
  %i.cs = getelementptr inbounds nuw i8, ptr %.349.i, i64 32 ; 2 uses
  %indvars.iv.next.i.7 = add nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %wide.trip.count.i
  br i1 %exitcond.not.i.7, label %uriFixPercentEncodingEngineW.exit, label %.lr.ph50.i, !llvm.loop !136

uriFixPercentEncodingEngineW.exit:                ; preds = %.lr.ph50.i.prol.loopexit, %.lr.ph50.i, %middle.block, %.preheader.i
  %.3.lcssa.i = phi ptr [ %.0.lcssa.i, %.preheader.i ], [ %i.af, %middle.block ], [ %.lcssa.unr, %.lr.ph50.i.prol.loopexit ], [ %i.cs, %.lr.ph50.i ]
  store ptr %.3.lcssa.i, ptr %1, align 8, !tbaa !80
  store ptr %i.n, ptr %0, align 8, !tbaa !80
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.a, %bb.b, %uriFixPercentEncodingEngineW.exit
  %.0 = phi i32 [ 1, %uriFixPercentEncodingEngineW.exit ], [ 0, %bb.a ], [ 1, %bb.c ], [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.e ]
  ret i32 %.0
}

declare i32 @uriRemoveDotSegmentsExW(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @uriFixEmptyTrailSegmentW(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @uriHexdigToIntW(i32 noundef) local_unnamed_addr #3

declare i32 @uriHexToLetterW(i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @uriMakeRangeOwnerW(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 0, 33) %1, ptr nofree noundef nonnull captures(none) %2, ptr noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !3
  %i.b = and i32 %i.a, %1
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !110    ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !111  ; 2 uses
  %i.g = icmp ugt ptr %i.f, %i.d
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = sub i64 %i.h, %i.i
  %sext = shl i64 %i.j, 30
  %i.k = ashr i64 %sext, 32                       ; 2 uses
  %i.l = shl i64 %i.k, 34
  %i.m = load ptr, ptr %3, align 8, !tbaa !31
  %i.n = ashr exact i64 %i.l, 32                  ; 2 uses
  %i.o = tail call ptr %i.m(ptr noundef nonnull %3, i64 noundef %i.n) #7 ; 4 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  %i.q = load ptr, ptr %2, align 8, !tbaa !110
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.q, i64 %i.n, i1 false)
  store ptr %i.o, ptr %2, align 8, !tbaa !110
  %i.r = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.k
  store ptr %i.r, ptr %i.e, align 8, !tbaa !111
  %i.s = load i32, ptr %0, align 4, !tbaa !3
  %i.t = or i32 %i.s, %1
  store i32 %i.t, ptr %0, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %.thread, %bb.d
  %.1 = phi i32 [ 0, %bb.d ], [ 1, %.thread ], [ 1, %bb.c ], [ 1, %bb.b ], [ 1, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !10, i64 0}
!8 = !{!"UriUriStructA", !9, i64 0, !9, i64 16, !9, i64 32, !12, i64 48, !9, i64 80, !15, i64 96, !15, i64 104, !9, i64 112, !9, i64 128, !4, i64 144, !4, i64 148, !11, i64 152}
!9 = !{!"UriTextRangeStructA", !10, i64 0, !10, i64 8}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"UriHostDataStructA", !13, i64 0, !14, i64 8, !9, i64 16}
!13 = !{!"p1 _ZTS12UriIp4Struct", !11, i64 0}
!14 = !{!"p1 _ZTS12UriIp6Struct", !11, i64 0}
!15 = !{!"p1 _ZTS21UriPathSegmentStructA", !11, i64 0}
!16 = !{!8, !10, i64 8}
!17 = !{!5, !5, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!8, !10, i64 32}
!21 = !{!8, !10, i64 40}
!22 = distinct !{!22, !19}
!23 = !{!8, !4, i64 148}
!24 = !{!10, !10, i64 0}
!25 = distinct !{!25, !19, !26, !27}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = !{!"branch_weights", i32 4, i32 12}
!29 = distinct !{!29, !19, !26, !27}
!30 = distinct !{!30, !19, !27, !26}
!31 = !{!32, !11, i64 0}
!32 = !{!"UriMemoryManagerStruct", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40}
!33 = distinct !{null}
!34 = distinct !{!34, !19}
!35 = !{!8, !10, i64 64}
!36 = distinct !{!36, !19, !26, !27}
!37 = distinct !{!37, !19, !26, !27}
!38 = distinct !{!38, !19, !27, !26}
!39 = !{!8, !10, i64 72}
!40 = !{!8, !13, i64 48}
!41 = !{!8, !14, i64 56}
!42 = distinct !{!42, !19, !26, !27}
!43 = distinct !{!43, !19, !26, !27}
!44 = distinct !{!44, !19, !27, !26}
!45 = !{!8, !10, i64 16}
!46 = !{!8, !10, i64 24}
!47 = !{!15, !15, i64 0}
!48 = !{!49, !10, i64 0}
!49 = !{!"UriPathSegmentStructA", !9, i64 0, !15, i64 16, !11, i64 24}
!50 = !{!49, !10, i64 8}
!51 = !{!8, !4, i64 144}
!52 = !{!8, !15, i64 96}
!53 = !{!49, !15, i64 16}
!54 = distinct !{!54, !19}
!55 = distinct !{!55, !19}
!56 = !{!8, !10, i64 112}
!57 = !{!8, !10, i64 120}
!58 = !{!8, !10, i64 128}
!59 = !{!8, !10, i64 136}
!60 = !{!9, !10, i64 0}
!61 = !{!9, !10, i64 8}
!62 = distinct !{null, ptr @uriMakeRangeOwnerA}
!63 = !{!32, !11, i64 32}
!64 = distinct !{null}
!65 = distinct !{!65, !19}
!66 = distinct !{!66, !19}
!67 = distinct !{!67, !19}
!68 = !{!69, !71, i64 0}
!69 = !{!"UriUriStructW", !70, i64 0, !70, i64 16, !70, i64 32, !72, i64 48, !70, i64 80, !73, i64 96, !73, i64 104, !70, i64 112, !70, i64 128, !4, i64 144, !4, i64 148, !11, i64 152}
!70 = !{!"UriTextRangeStructW", !71, i64 0, !71, i64 8}
!71 = !{!"p1 int", !11, i64 0}
!72 = !{!"UriHostDataStructW", !13, i64 0, !14, i64 8, !70, i64 16}
!73 = !{!"p1 _ZTS21UriPathSegmentStructW", !11, i64 0}
!74 = !{!69, !71, i64 8}
!75 = distinct !{!75, !19}
!76 = !{!69, !71, i64 32}
!77 = !{!69, !71, i64 40}
!78 = distinct !{!78, !19}
!79 = !{!69, !4, i64 148}
!80 = !{!71, !71, i64 0}
!81 = distinct !{!81, !19, !26, !27}
!82 = distinct !{!82, !19, !27, !26}
!83 = distinct !{null}
!84 = distinct !{!84, !19, !26, !27}
!85 = distinct !{!85, !19, !26}
!86 = !{!69, !71, i64 64}
!87 = distinct !{!87, !19, !26, !27}
!88 = distinct !{!88, !19, !27, !26}
!89 = distinct !{!89, !19, !26, !27}
!90 = distinct !{!90, !19, !26}
!91 = !{!69, !13, i64 48}
!92 = !{!69, !14, i64 56}
!93 = distinct !{!93, !19, !26, !27}
!94 = distinct !{!94, !19, !27, !26}
!95 = !{!69, !71, i64 16}
!96 = !{!69, !71, i64 24}
!97 = !{!73, !73, i64 0}
!98 = !{!99, !71, i64 0}
!99 = !{!"UriPathSegmentStructW", !70, i64 0, !73, i64 16, !11, i64 24}
!100 = !{!99, !71, i64 8}
!101 = !{!69, !4, i64 144}
!102 = !{!69, !73, i64 96}
!103 = !{!99, !73, i64 16}
!104 = distinct !{!104, !19}
!105 = distinct !{!105, !19}
!106 = !{!69, !71, i64 112}
!107 = !{!69, !71, i64 120}
!108 = !{!69, !71, i64 128}
!109 = !{!69, !71, i64 136}
!110 = !{!70, !71, i64 0}
!111 = !{!70, !71, i64 8}
!112 = distinct !{null, ptr @uriMakeRangeOwnerW}
!113 = distinct !{null}
!114 = distinct !{!114, !19}
!115 = distinct !{!115, !19}
!116 = distinct !{!116, !19}
!117 = distinct !{!117, !19}
!118 = distinct !{!118, !19, !26, !27}
!119 = !{!"branch_weights", i32 8, i32 24}
!120 = distinct !{!120, !19, !26, !27}
!121 = distinct !{!121, !122}
!122 = !{!"llvm.loop.unroll.disable"}
!123 = distinct !{!123, !19}
!124 = distinct !{!124, !19, !26}
!125 = distinct !{!125, !19, !26, !27}
!126 = distinct !{!126, !19, !26, !27}
!127 = distinct !{!127, !122}
!128 = distinct !{!128, !19, !26}
!129 = distinct !{!129, !19}
!130 = distinct !{!130, !19, !26, !27}
!131 = distinct !{!131, !122}
!132 = distinct !{!132, !19}
!133 = distinct !{!133, !19, !26}
!134 = distinct !{!134, !19, !26, !27}
!135 = distinct !{!135, !122}
!136 = distinct !{!136, !19, !26}
end_hunk_1
