Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/UriNormalize?download=true
inline.NumInlined: 48
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %uriNormalizeSyntaxMaskRequiredExA.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull readonly align 8 dereferenceable(160) %0, i64 160, i1 false)
  %i.c = call fastcc i32 @uriNormalizeSyntaxEngineA(ptr noundef nonnull %1, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef null) ; 0 uses
  %.pre = load i32, ptr %i.a, align 4, !tbaa !3
  br label %uriNormalizeSyntaxMaskRequiredExA.exit

uriNormalizeSyntaxMaskRequiredExA.exit:           ; preds = %bb.a, %bb.b
  %i.d = phi i32 [ 0, %bb.a ], [ %.pre, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 0, 3) i32 @uriNormalizeSyntaxMaskRequiredExA(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.UriUriStructA, align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
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
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.b = icmp eq ptr %0, null
  %.not212 = icmp eq ptr %2, null                 ; 6 uses
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %.not212, label %bb.ef, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %2, align 4, !tbaa !3
  br label %bb.ef

bb.d:                                             ; preds = %bb.a
  br i1 %.not212, label %bb.e, label %bb.f

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
  %.not183 = phi i1 [ true, %bb.f ], [ %or.cond18.i, %.preheader.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20   ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !21   ; 4 uses
  %i.p = icmp ne ptr %i.m, null
  %i.q = icmp ugt ptr %i.o, %i.m
  %or.cond17.i214 = and i1 %i.p, %i.q             ; 2 uses
  br i1 %or.cond17.i214, label %.preheader.i216, label %uriContainsUppercaseLettersA.exit220

.preheader.i216:                                  ; preds = %uriContainsUppercaseLettersA.exit, %.preheader.i216
  %.01219.i217 = phi ptr [ %i.t, %.preheader.i216 ], [ %i.m, %uriContainsUppercaseLettersA.exit ] ; 2 uses
  %i.r = load i8, ptr %.01219.i217, align 1, !tbaa !17
  %i.s = add i8 %i.r, -91
  %or.cond18.i218 = icmp ult i8 %i.s, -26         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.01219.i217, i64 1 ; 2 uses
  %exitcond.not.i219 = icmp ne ptr %i.t, %i.o
  %or.cond648.not = select i1 %or.cond18.i218, i1 %exitcond.not.i219, i1 false
  br i1 %or.cond648.not, label %.preheader.i216, label %uriContainsUppercaseLettersA.exit220, !llvm.loop !18

uriContainsUppercaseLettersA.exit220:             ; preds = %.preheader.i216, %uriContainsUppercaseLettersA.exit
  %.not184 = phi i1 [ true, %uriContainsUppercaseLettersA.exit ], [ %or.cond18.i218, %.preheader.i216 ]
  br i1 %.not183, label %bb.h, label %bb.g

bb.g:                                             ; preds = %uriContainsUppercaseLettersA.exit220
  store i32 1, ptr %2, align 4, !tbaa !3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %uriContainsUppercaseLettersA.exit220
  %i.u = phi i32 [ 5, %bb.g ], [ 4, %uriContainsUppercaseLettersA.exit220 ]
  br i1 %.not184, label %bb.i, label %uriContainsUglyPercentEncodingA.exit.thread296.sink.split

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 2 ; 2 uses
  %i.w = icmp ult ptr %i.v, %i.o
  %or.cond.i = select i1 %or.cond17.i214, i1 %i.w, i1 false
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
  %i.af = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.ab) #6
  %i.ag = load i8, ptr %i.x, align 1, !tbaa !17
  %i.ah = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.ag) #6
  %i.ai = zext i8 %i.af to i32
  %i.aj = shl nuw nsw i32 %i.ai, 4
  %i.ak = zext i8 %i.ah to i32
  %i.al = add nuw nsw i32 %i.aj, %i.ak
  %i.am = tail call i32 @uriIsUnreserved(i32 noundef %i.al) #6
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
  br label %uriContainsUglyPercentEncodingA.exit.thread296.sink.split

bb.o:                                             ; preds = %bb.e
  %i.as = and i32 %1, 1
  %.not172 = icmp eq i32 %i.as, 0
  br i1 %.not172, label %uriLowercaseInplaceA.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = load ptr, ptr %0, align 8, !tbaa !7     ; 27 uses
  %i.au = ptrtoaddr ptr %i.at to i64
  %.not173 = icmp eq ptr %i.at, null
  br i1 %.not173, label %uriLowercaseInplaceA.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !23
  %.not174 = icmp eq i32 %i.aw, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !24 ; 5 uses
  %i.az = ptrtoaddr ptr %i.ay to i64
  br i1 %.not174, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = icmp ugt ptr %i.ay, %i.at
  br i1 %i.ba, label %iter.check, label %uriLowercaseInplaceA.exit

iter.check:                                       ; preds = %bb.r
  %i.bb = sub i64 %i.az, %i.au                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.bb, 4
  br i1 %min.iters.check, label %.preheader.i221.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check414 = icmp ult i64 %i.bb, 16
  br i1 %min.iters.check414, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bc = and i64 %i.bb, 12
  %n.vec = and i64 %i.bb, -16                     ; 4 uses
  %i.bd = getelementptr i8, ptr %i.at, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue459, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue459 ] ; 17 uses
  %next.gep = getelementptr i8, ptr %i.at, i64 %index ; 2 uses
  %i.be = getelementptr i8, ptr %i.at, i64 %index
  %next.gep415 = getelementptr i8, ptr %i.be, i64 1
  %i.bf = getelementptr i8, ptr %i.at, i64 %index
  %next.gep416 = getelementptr i8, ptr %i.bf, i64 2
  %i.bg = getelementptr i8, ptr %i.at, i64 %index
  %next.gep417 = getelementptr i8, ptr %i.bg, i64 3
  %i.bh = getelementptr i8, ptr %i.at, i64 %index
  %next.gep418 = getelementptr i8, ptr %i.bh, i64 4
  %i.bi = getelementptr i8, ptr %i.at, i64 %index
  %next.gep419 = getelementptr i8, ptr %i.bi, i64 5
  %i.bj = getelementptr i8, ptr %i.at, i64 %index
  %next.gep420 = getelementptr i8, ptr %i.bj, i64 6
  %i.bk = getelementptr i8, ptr %i.at, i64 %index
  %next.gep421 = getelementptr i8, ptr %i.bk, i64 7
  %i.bl = getelementptr i8, ptr %i.at, i64 %index
  %next.gep422 = getelementptr i8, ptr %i.bl, i64 8
  %i.bm = getelementptr i8, ptr %i.at, i64 %index
  %next.gep423 = getelementptr i8, ptr %i.bm, i64 9
  %i.bn = getelementptr i8, ptr %i.at, i64 %index
  %next.gep424 = getelementptr i8, ptr %i.bn, i64 10
  %i.bo = getelementptr i8, ptr %i.at, i64 %index
  %next.gep425 = getelementptr i8, ptr %i.bo, i64 11
  %i.bp = getelementptr i8, ptr %i.at, i64 %index
  %next.gep426 = getelementptr i8, ptr %i.bp, i64 12
  %i.bq = getelementptr i8, ptr %i.at, i64 %index
  %next.gep427 = getelementptr i8, ptr %i.bq, i64 13
  %i.br = getelementptr i8, ptr %i.at, i64 %index
  %next.gep428 = getelementptr i8, ptr %i.br, i64 14
  %i.bs = getelementptr i8, ptr %i.at, i64 %index
  %next.gep429 = getelementptr i8, ptr %i.bs, i64 15
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !17 ; 17 uses
  %i.bt = add <16 x i8> %wide.load, splat (i8 -65)
  %i.bu = icmp ult <16 x i8> %i.bt, splat (i8 26) ; 16 uses
  %i.bv = extractelement <16 x i1> %i.bu, i64 0
  br i1 %i.bv, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.bw = extractelement <16 x i8> %wide.load, i64 0
  %i.bx = or disjoint i8 %i.bw, 32
  store i8 %i.bx, ptr %next.gep, align 1, !tbaa !17
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.by = extractelement <16 x i1> %i.bu, i64 1
  br i1 %i.by, label %pred.store.if430, label %pred.store.continue431

pred.store.if430:                                 ; preds = %pred.store.continue
  %i.bz = extractelement <16 x i8> %wide.load, i64 1
  %i.ca = or disjoint i8 %i.bz, 32
  store i8 %i.ca, ptr %next.gep415, align 1, !tbaa !17
  br label %pred.store.continue431

pred.store.continue431:                           ; preds = %pred.store.if430, %pred.store.continue
  %i.cb = extractelement <16 x i1> %i.bu, i64 2
  br i1 %i.cb, label %pred.store.if432, label %pred.store.continue433

pred.store.if432:                                 ; preds = %pred.store.continue431
  %i.cc = extractelement <16 x i8> %wide.load, i64 2
  %i.cd = or disjoint i8 %i.cc, 32
  store i8 %i.cd, ptr %next.gep416, align 1, !tbaa !17
  br label %pred.store.continue433

pred.store.continue433:                           ; preds = %pred.store.if432, %pred.store.continue431
  %i.ce = extractelement <16 x i1> %i.bu, i64 3
  br i1 %i.ce, label %pred.store.if434, label %pred.store.continue435

pred.store.if434:                                 ; preds = %pred.store.continue433
  %i.cf = extractelement <16 x i8> %wide.load, i64 3
  %i.cg = or disjoint i8 %i.cf, 32
  store i8 %i.cg, ptr %next.gep417, align 1, !tbaa !17
  br label %pred.store.continue435

pred.store.continue435:                           ; preds = %pred.store.if434, %pred.store.continue433
  %i.ch = extractelement <16 x i1> %i.bu, i64 4
  br i1 %i.ch, label %pred.store.if436, label %pred.store.continue437

pred.store.if436:                                 ; preds = %pred.store.continue435
  %i.ci = extractelement <16 x i8> %wide.load, i64 4
  %i.cj = or disjoint i8 %i.ci, 32
  store i8 %i.cj, ptr %next.gep418, align 1, !tbaa !17
  br label %pred.store.continue437

pred.store.continue437:                           ; preds = %pred.store.if436, %pred.store.continue435
  %i.ck = extractelement <16 x i1> %i.bu, i64 5
  br i1 %i.ck, label %pred.store.if438, label %pred.store.continue439

pred.store.if438:                                 ; preds = %pred.store.continue437
  %i.cl = extractelement <16 x i8> %wide.load, i64 5
  %i.cm = or disjoint i8 %i.cl, 32
  store i8 %i.cm, ptr %next.gep419, align 1, !tbaa !17
  br label %pred.store.continue439

pred.store.continue439:                           ; preds = %pred.store.if438, %pred.store.continue437
  %i.cn = extractelement <16 x i1> %i.bu, i64 6
  br i1 %i.cn, label %pred.store.if440, label %pred.store.continue441

pred.store.if440:                                 ; preds = %pred.store.continue439
  %i.co = extractelement <16 x i8> %wide.load, i64 6
  %i.cp = or disjoint i8 %i.co, 32
  store i8 %i.cp, ptr %next.gep420, align 1, !tbaa !17
  br label %pred.store.continue441

pred.store.continue441:                           ; preds = %pred.store.if440, %pred.store.continue439
  %i.cq = extractelement <16 x i1> %i.bu, i64 7
  br i1 %i.cq, label %pred.store.if442, label %pred.store.continue443

pred.store.if442:                                 ; preds = %pred.store.continue441
  %i.cr = extractelement <16 x i8> %wide.load, i64 7
  %i.cs = or disjoint i8 %i.cr, 32
  store i8 %i.cs, ptr %next.gep421, align 1, !tbaa !17
  br label %pred.store.continue443

pred.store.continue443:                           ; preds = %pred.store.if442, %pred.store.continue441
  %i.ct = extractelement <16 x i1> %i.bu, i64 8
  br i1 %i.ct, label %pred.store.if444, label %pred.store.continue445

pred.store.if444:                                 ; preds = %pred.store.continue443
  %i.cu = extractelement <16 x i8> %wide.load, i64 8
  %i.cv = or disjoint i8 %i.cu, 32
  store i8 %i.cv, ptr %next.gep422, align 1, !tbaa !17
  br label %pred.store.continue445

pred.store.continue445:                           ; preds = %pred.store.if444, %pred.store.continue443
  %i.cw = extractelement <16 x i1> %i.bu, i64 9
  br i1 %i.cw, label %pred.store.if446, label %pred.store.continue447

pred.store.if446:                                 ; preds = %pred.store.continue445
  %i.cx = extractelement <16 x i8> %wide.load, i64 9
  %i.cy = or disjoint i8 %i.cx, 32
  store i8 %i.cy, ptr %next.gep423, align 1, !tbaa !17
  br label %pred.store.continue447

pred.store.continue447:                           ; preds = %pred.store.if446, %pred.store.continue445
  %i.cz = extractelement <16 x i1> %i.bu, i64 10
  br i1 %i.cz, label %pred.store.if448, label %pred.store.continue449

pred.store.if448:                                 ; preds = %pred.store.continue447
  %i.da = extractelement <16 x i8> %wide.load, i64 10
  %i.db = or disjoint i8 %i.da, 32
  store i8 %i.db, ptr %next.gep424, align 1, !tbaa !17
  br label %pred.store.continue449

pred.store.continue449:                           ; preds = %pred.store.if448, %pred.store.continue447
  %i.dc = extractelement <16 x i1> %i.bu, i64 11
  br i1 %i.dc, label %pred.store.if450, label %pred.store.continue451

pred.store.if450:                                 ; preds = %pred.store.continue449
  %i.dd = extractelement <16 x i8> %wide.load, i64 11
  %i.de = or disjoint i8 %i.dd, 32
  store i8 %i.de, ptr %next.gep425, align 1, !tbaa !17
  br label %pred.store.continue451

pred.store.continue451:                           ; preds = %pred.store.if450, %pred.store.continue449
  %i.df = extractelement <16 x i1> %i.bu, i64 12
  br i1 %i.df, label %pred.store.if452, label %pred.store.continue453

pred.store.if452:                                 ; preds = %pred.store.continue451
  %i.dg = extractelement <16 x i8> %wide.load, i64 12
  %i.dh = or disjoint i8 %i.dg, 32
  store i8 %i.dh, ptr %next.gep426, align 1, !tbaa !17
  br label %pred.store.continue453

pred.store.continue453:                           ; preds = %pred.store.if452, %pred.store.continue451
  %i.di = extractelement <16 x i1> %i.bu, i64 13
  br i1 %i.di, label %pred.store.if454, label %pred.store.continue455

pred.store.if454:                                 ; preds = %pred.store.continue453
  %i.dj = extractelement <16 x i8> %wide.load, i64 13
  %i.dk = or disjoint i8 %i.dj, 32
  store i8 %i.dk, ptr %next.gep427, align 1, !tbaa !17
  br label %pred.store.continue455

pred.store.continue455:                           ; preds = %pred.store.if454, %pred.store.continue453
  %i.dl = extractelement <16 x i1> %i.bu, i64 14
  br i1 %i.dl, label %pred.store.if456, label %pred.store.continue457

pred.store.if456:                                 ; preds = %pred.store.continue455
  %i.dm = extractelement <16 x i8> %wide.load, i64 14
  %i.dn = or disjoint i8 %i.dm, 32
  store i8 %i.dn, ptr %next.gep428, align 1, !tbaa !17
  br label %pred.store.continue457

pred.store.continue457:                           ; preds = %pred.store.if456, %pred.store.continue455
  %i.do = extractelement <16 x i1> %i.bu, i64 15
  br i1 %i.do, label %pred.store.if458, label %pred.store.continue459

pred.store.if458:                                 ; preds = %pred.store.continue457
  %i.dp = extractelement <16 x i8> %wide.load, i64 15
  %i.dq = or disjoint i8 %i.dp, 32
  store i8 %i.dq, ptr %next.gep429, align 1, !tbaa !17
  br label %pred.store.continue459

pred.store.continue459:                           ; preds = %pred.store.if458, %pred.store.continue457
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dr = icmp eq i64 %index.next, %n.vec
  br i1 %i.dr, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %pred.store.continue459
  %cmp.n = icmp eq i64 %i.bb, %n.vec
  br i1 %cmp.n, label %uriLowercaseInplaceA.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bc, 0
  br i1 %min.epilog.iters.check, label %.preheader.i221.preheader, label %vec.epilog.ph, !prof !28

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec460 = and i64 %i.bb, -4                   ; 3 uses
  %i.ds = getelementptr i8, ptr %i.at, i64 %n.vec460
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue474, %vec.epilog.ph
  %index461 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next475, %pred.store.continue474 ] ; 5 uses
  %next.gep462 = getelementptr i8, ptr %i.at, i64 %index461 ; 2 uses
  %i.dt = getelementptr i8, ptr %i.at, i64 %index461
  %next.gep463 = getelementptr i8, ptr %i.dt, i64 1
  %i.du = getelementptr i8, ptr %i.at, i64 %index461
  %next.gep464 = getelementptr i8, ptr %i.du, i64 2
  %i.dv = getelementptr i8, ptr %i.at, i64 %index461
  %next.gep465 = getelementptr i8, ptr %i.dv, i64 3
  %wide.load466 = load <4 x i8>, ptr %next.gep462, align 1, !tbaa !17 ; 5 uses
  %i.dw = add <4 x i8> %wide.load466, splat (i8 -65)
  %i.dx = icmp ult <4 x i8> %i.dw, splat (i8 26)  ; 4 uses
  %i.dy = extractelement <4 x i1> %i.dx, i64 0
  br i1 %i.dy, label %pred.store.if467, label %pred.store.continue468

pred.store.if467:                                 ; preds = %vec.epilog.vector.body
  %i.dz = extractelement <4 x i8> %wide.load466, i64 0
  %i.ea = or disjoint i8 %i.dz, 32
  store i8 %i.ea, ptr %next.gep462, align 1, !tbaa !17
  br label %pred.store.continue468

pred.store.continue468:                           ; preds = %pred.store.if467, %vec.epilog.vector.body
  %i.eb = extractelement <4 x i1> %i.dx, i64 1
  br i1 %i.eb, label %pred.store.if469, label %pred.store.continue470

pred.store.if469:                                 ; preds = %pred.store.continue468
  %i.ec = extractelement <4 x i8> %wide.load466, i64 1
  %i.ed = or disjoint i8 %i.ec, 32
  store i8 %i.ed, ptr %next.gep463, align 1, !tbaa !17
  br label %pred.store.continue470

pred.store.continue470:                           ; preds = %pred.store.if469, %pred.store.continue468
  %i.ee = extractelement <4 x i1> %i.dx, i64 2
  br i1 %i.ee, label %pred.store.if471, label %pred.store.continue472

pred.store.if471:                                 ; preds = %pred.store.continue470
  %i.ef = extractelement <4 x i8> %wide.load466, i64 2
  %i.eg = or disjoint i8 %i.ef, 32
  store i8 %i.eg, ptr %next.gep464, align 1, !tbaa !17
  br label %pred.store.continue472

pred.store.continue472:                           ; preds = %pred.store.if471, %pred.store.continue470
  %i.eh = extractelement <4 x i1> %i.dx, i64 3
  br i1 %i.eh, label %pred.store.if473, label %pred.store.continue474

pred.store.if473:                                 ; preds = %pred.store.continue472
  %i.ei = extractelement <4 x i8> %wide.load466, i64 3
  %i.ej = or disjoint i8 %i.ei, 32
  store i8 %i.ej, ptr %next.gep465, align 1, !tbaa !17
  br label %pred.store.continue474

pred.store.continue474:                           ; preds = %pred.store.if473, %pred.store.continue472
  %index.next475 = add nuw i64 %index461, 4       ; 2 uses
  %i.ek = icmp eq i64 %index.next475, %n.vec460
  br i1 %i.ek, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !29

vec.epilog.middle.block:                          ; preds = %pred.store.continue474
  %cmp.n476 = icmp eq i64 %i.bb, %n.vec460
  br i1 %cmp.n476, label %uriLowercaseInplaceA.exit, label %.preheader.i221.preheader

.preheader.i221.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.018.i.ph = phi ptr [ %i.at, %iter.check ], [ %i.bd, %vec.epilog.iter.check ], [ %i.ds, %vec.epilog.middle.block ]
  br label %.preheader.i221

.preheader.i221:                                  ; preds = %.preheader.i221.preheader, %bb.t
  %.018.i = phi ptr [ %i.eo, %bb.t ], [ %.018.i.ph, %.preheader.i221.preheader ] ; 3 uses
  %i.el = load i8, ptr %.018.i, align 1, !tbaa !17 ; 2 uses
  %i.em = add i8 %i.el, -65
  %or.cond17.i222 = icmp ult i8 %i.em, 26
  br i1 %or.cond17.i222, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.preheader.i221
  %i.en = or disjoint i8 %i.el, 32
  store i8 %i.en, ptr %.018.i, align 1, !tbaa !17
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.preheader.i221
  %i.eo = getelementptr inbounds nuw i8, ptr %.018.i, i64 1 ; 2 uses
  %exitcond.not.i223 = icmp eq ptr %i.eo, %i.ay
  br i1 %exitcond.not.i223, label %uriLowercaseInplaceA.exit, label %.preheader.i221, !llvm.loop !30

bb.u:                                             ; preds = %bb.q
  %i.ep = icmp eq ptr %i.ay, null
  br i1 %i.ep, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eq = ptrtoint ptr %i.ay to i64
  %i.er = ptrtoint ptr %i.at to i64
  %i.es = sub i64 %i.eq, %i.er                    ; 5 uses
  %i.et = trunc i64 %i.es to i32                  ; 2 uses
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %uriLowercaseMallocA.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ev = icmp slt i32 %i.et, 0
  br i1 %i.ev, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ew = load ptr, ptr %3, align 8, !tbaa !31
  %i.ex = and i64 %i.es, 2147483647               ; 3 uses
  %i.ey = tail call ptr %i.ew(ptr noundef nonnull %3, i64 noundef %i.ex) #6, !inline_history !33 ; 6 uses
  %i.ez = icmp eq ptr %i.ey, null
  br i1 %i.ez, label %bb.y, label %.lr.ph.i224.preheader

.lr.ph.i224.preheader:                            ; preds = %bb.x
  %xtraiter = and i64 %i.es, 1
  %i.fa = icmp eq i64 %i.ex, 1
  br i1 %i.fa, label %.lr.ph.i224.epil.preheader, label %.lr.ph.i224.preheader.new

.lr.ph.i224.preheader.new:                        ; preds = %.lr.ph.i224.preheader
  %unroll_iter = and i64 %i.es, 2147483646
  br label %.lr.ph.i224

.lr.ph.i224:                                      ; preds = %.lr.ph.i224, %.lr.ph.i224.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i224.preheader.new ], [ %indvars.iv.next.i.1, %.lr.ph.i224 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i224.preheader.new ], [ %niter.next.1, %.lr.ph.i224 ]
  %i.fb = load ptr, ptr %0, align 8, !tbaa !24
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %indvars.iv.i
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !17  ; 3 uses
  %i.fe = add i8 %i.fd, -65
  %or.cond.i225 = icmp ult i8 %i.fe, 26
  %i.ff = or disjoint i8 %i.fd, 32
  %spec.select.i = select i1 %or.cond.i225, i8 %i.ff, i8 %i.fd
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ey, i64 %indvars.iv.i
  store i8 %spec.select.i, ptr %i.fg, align 1, !tbaa !17
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.fh = load ptr, ptr %0, align 8, !tbaa !24
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %indvars.iv.next.i
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !17  ; 3 uses
  %i.fk = add i8 %i.fj, -65
  %or.cond.i225.1 = icmp ult i8 %i.fk, 26
  %i.fl = or disjoint i8 %i.fj, 32
  %spec.select.i.1 = select i1 %or.cond.i225.1, i8 %i.fl, i8 %i.fj
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ey, i64 %indvars.iv.next.i
  store i8 %spec.select.i.1, ptr %i.fm, align 1, !tbaa !17
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i224, !llvm.loop !34

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i224
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i224.epil.preheader

.lr.ph.i224.epil.preheader:                       ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i224.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i224.preheader ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %lcmp.mod652 = trunc i64 %i.es to i1
  tail call void @llvm.assume(i1 %lcmp.mod652)
  %i.fn = load ptr, ptr %0, align 8, !tbaa !24
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %indvars.iv.i.epil.init
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !17  ; 3 uses
  %i.fq = add i8 %i.fp, -65
  %or.cond.i225.epil = icmp ult i8 %i.fq, 26
  %i.fr = or disjoint i8 %i.fp, 32
  %spec.select.i.epil = select i1 %or.cond.i225.epil, i8 %i.fr, i8 %i.fp
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ey, i64 %indvars.iv.i.epil.init
  store i8 %spec.select.i.epil, ptr %i.fs, align 1, !tbaa !17
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i224.epil.preheader
  store ptr %i.ey, ptr %0, align 8, !tbaa !24
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ex
  store ptr %i.ft, ptr %i.ax, align 8, !tbaa !24
  br label %uriLowercaseMallocA.exit

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.u
  tail call fastcc void @uriPreventLeakageA(ptr noundef %0, i32 noundef 0, ptr noundef %3)
  br label %bb.ef

uriLowercaseMallocA.exit:                         ; preds = %._crit_edge.i, %bb.v
  store i32 1, ptr %i.a, align 4, !tbaa !3
  br label %uriLowercaseInplaceA.exit

uriLowercaseInplaceA.exit:                        ; preds = %bb.t, %middle.block, %vec.epilog.middle.block, %bb.r, %uriLowercaseMallocA.exit, %bb.p, %bb.o
  %i.fu = phi i32 [ 0, %bb.o ], [ 0, %bb.r ], [ 1, %uriLowercaseMallocA.exit ], [ 0, %bb.p ], [ 0, %middle.block ], [ 0, %vec.epilog.middle.block ], [ 0, %bb.t ] ; 11 uses
  %i.fv = and i32 %1, 4
  %.not176 = icmp eq i32 %i.fv, 0
  br i1 %.not176, label %uriContainsUglyPercentEncodingA.exit, label %bb.z

bb.z:                                             ; preds = %uriLowercaseInplaceA.exit
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !35 ; 29 uses
  %i.fz = ptrtoaddr ptr %i.fy to i64
  %.not177 = icmp eq ptr %i.fy, null
  br i1 %.not177, label %bb.aj, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !23
  %.not181 = icmp eq i32 %i.gb, 0
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !24 ; 7 uses
  %i.ge = ptrtoaddr ptr %i.gd to i64
  br i1 %.not181, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gf = icmp ugt ptr %i.gd, %i.fy
  br i1 %i.gf, label %iter.check538, label %uriLowercaseInplaceA.exit232

iter.check538:                                    ; preds = %bb.ab
  %i.gg = sub i64 %i.ge, %i.fz                    ; 7 uses
  %min.iters.check478 = icmp ult i64 %i.gg, 4
  br i1 %min.iters.check478, label %.preheader.i228.preheader, label %vector.main.loop.iter.check479

vector.main.loop.iter.check479:                   ; preds = %iter.check538
  %min.iters.check480 = icmp ult i64 %i.gg, 16
  br i1 %min.iters.check480, label %vec.epilog.ph542, label %vector.ph481

vector.ph481:                                     ; preds = %vector.main.loop.iter.check479
  %i.gh = and i64 %i.gg, 12
  %n.vec482 = and i64 %i.gg, -16                  ; 4 uses
  %i.gi = getelementptr i8, ptr %i.fy, i64 %n.vec482
  br label %vector.body483

vector.body483:                                   ; preds = %pred.store.continue533, %vector.ph481
  %index484 = phi i64 [ 0, %vector.ph481 ], [ %index.next534, %pred.store.continue533 ] ; 17 uses
  %next.gep485 = getelementptr i8, ptr %i.fy, i64 %index484 ; 2 uses
  %i.gj = getelementptr i8, ptr %i.fy, i64 %index484
  %next.gep486 = getelementptr i8, ptr %i.gj, i64 1
  %i.gk = getelementptr i8, ptr %i.fy, i64 %index484
  %next.gep487 = getelementptr i8, ptr %i.gk, i64 2
  %i.gl = getelementptr i8, ptr %i.fy, i64 %index484
  %next.gep488 = getelementptr i8, ptr %i.gl, i64 3
  %i.gm = getelementptr i8, ptr %i.fy, i64 %index484
  %next.gep489 = getelementptr i8, ptr %i.gm, i64 4
  %i.gn = getelementptr i8, ptr %i.fy, i64 %index484
  %next.gep490 = getelementptr i8, ptr %i.gn, i64 5
  %i.go = getelementptr i8, ptr %i.fy, i64 %index484
  %next.gep491 = getelementptr i8, ptr %i.go, i64 6
  %i.gp = getelementptr i8, ptr %i.fy, i64 %index484
  %next.gep492 = getelementptr i8, ptr %i.gp, i64 7
  %i.gq = getelementptr i8, ptr %i.fy, i64 %index484
  %next.gep493 = getelementptr i8, ptr %i.gq, i64 8
  %i.gr = getelementptr i8, ptr %i.fy, i64 %index484
  %next.gep494 = getelementptr i8, ptr %i.gr, i64 9
  %i.gs = getelementptr i8, ptr %i.fy, i64 %index484
  %next.gep495 = getelementptr i8, ptr %i.gs, i64 10
  %i.gt = getelementptr i8, ptr %i.fy, i64 %index484
  %next.gep496 = getelementptr i8, ptr %i.gt, i64 11
  %i.gu = getelementptr i8, ptr %i.fy, i64 %index484
  %next.gep497 = getelementptr i8, ptr %i.gu, i64 12
  %i.gv = getelementptr i8, ptr %i.fy, i64 %index484
  %next.gep498 = getelementptr i8, ptr %i.gv, i64 13
  %i.gw = getelementptr i8, ptr %i.fy, i64 %index484
  %next.gep499 = getelementptr i8, ptr %i.gw, i64 14
  %i.gx = getelementptr i8, ptr %i.fy, i64 %index484
  %next.gep500 = getelementptr i8, ptr %i.gx, i64 15
  %wide.load501 = load <16 x i8>, ptr %next.gep485, align 1, !tbaa !17 ; 17 uses
  %i.gy = add <16 x i8> %wide.load501, splat (i8 -65)
  %i.gz = icmp ult <16 x i8> %i.gy, splat (i8 26) ; 16 uses
  %i.ha = extractelement <16 x i1> %i.gz, i64 0
  br i1 %i.ha, label %pred.store.if502, label %pred.store.continue503

pred.store.if502:                                 ; preds = %vector.body483
  %i.hb = extractelement <16 x i8> %wide.load501, i64 0
  %i.hc = or disjoint i8 %i.hb, 32
  store i8 %i.hc, ptr %next.gep485, align 1, !tbaa !17
  br label %pred.store.continue503

pred.store.continue503:                           ; preds = %pred.store.if502, %vector.body483
  %i.hd = extractelement <16 x i1> %i.gz, i64 1
  br i1 %i.hd, label %pred.store.if504, label %pred.store.continue505

pred.store.if504:                                 ; preds = %pred.store.continue503
  %i.he = extractelement <16 x i8> %wide.load501, i64 1
  %i.hf = or disjoint i8 %i.he, 32
  store i8 %i.hf, ptr %next.gep486, align 1, !tbaa !17
  br label %pred.store.continue505

pred.store.continue505:                           ; preds = %pred.store.if504, %pred.store.continue503
  %i.hg = extractelement <16 x i1> %i.gz, i64 2
  br i1 %i.hg, label %pred.store.if506, label %pred.store.continue507

pred.store.if506:                                 ; preds = %pred.store.continue505
  %i.hh = extractelement <16 x i8> %wide.load501, i64 2
  %i.hi = or disjoint i8 %i.hh, 32
  store i8 %i.hi, ptr %next.gep487, align 1, !tbaa !17
  br label %pred.store.continue507

pred.store.continue507:                           ; preds = %pred.store.if506, %pred.store.continue505
  %i.hj = extractelement <16 x i1> %i.gz, i64 3
  br i1 %i.hj, label %pred.store.if508, label %pred.store.continue509

pred.store.if508:                                 ; preds = %pred.store.continue507
  %i.hk = extractelement <16 x i8> %wide.load501, i64 3
  %i.hl = or disjoint i8 %i.hk, 32
  store i8 %i.hl, ptr %next.gep488, align 1, !tbaa !17
  br label %pred.store.continue509

pred.store.continue509:                           ; preds = %pred.store.if508, %pred.store.continue507
  %i.hm = extractelement <16 x i1> %i.gz, i64 4
  br i1 %i.hm, label %pred.store.if510, label %pred.store.continue511

pred.store.if510:                                 ; preds = %pred.store.continue509
  %i.hn = extractelement <16 x i8> %wide.load501, i64 4
  %i.ho = or disjoint i8 %i.hn, 32
  store i8 %i.ho, ptr %next.gep489, align 1, !tbaa !17
  br label %pred.store.continue511

pred.store.continue511:                           ; preds = %pred.store.if510, %pred.store.continue509
end_hunk_0
begin_hunk_1_@uriNormalizeSyntaxEngineA:bb.a

pred.store.continue517:                           ; preds = %pred.store.if516, %pred.store.continue515
  %i.hy = extractelement <16 x i1> %i.gz, i64 8
  br i1 %i.hy, label %pred.store.if518, label %pred.store.continue519

pred.store.if518:                                 ; preds = %pred.store.continue517
  %i.hz = extractelement <16 x i8> %wide.load501, i64 8
  %i.ia = or disjoint i8 %i.hz, 32
  store i8 %i.ia, ptr %next.gep493, align 1, !tbaa !17
  br label %pred.store.continue519

pred.store.continue519:                           ; preds = %pred.store.if518, %pred.store.continue517
  %i.ib = extractelement <16 x i1> %i.gz, i64 9
  br i1 %i.ib, label %pred.store.if520, label %pred.store.continue521

pred.store.if520:                                 ; preds = %pred.store.continue519
  %i.ic = extractelement <16 x i8> %wide.load501, i64 9
  %i.id = or disjoint i8 %i.ic, 32
  store i8 %i.id, ptr %next.gep494, align 1, !tbaa !17
  br label %pred.store.continue521

pred.store.continue521:                           ; preds = %pred.store.if520, %pred.store.continue519
  %i.ie = extractelement <16 x i1> %i.gz, i64 10
  br i1 %i.ie, label %pred.store.if522, label %pred.store.continue523

pred.store.if522:                                 ; preds = %pred.store.continue521
  %i.if = extractelement <16 x i8> %wide.load501, i64 10
  %i.ig = or disjoint i8 %i.if, 32
  store i8 %i.ig, ptr %next.gep495, align 1, !tbaa !17
  br label %pred.store.continue523

pred.store.continue523:                           ; preds = %pred.store.if522, %pred.store.continue521
  %i.ih = extractelement <16 x i1> %i.gz, i64 11
  br i1 %i.ih, label %pred.store.if524, label %pred.store.continue525

pred.store.if524:                                 ; preds = %pred.store.continue523
  %i.ii = extractelement <16 x i8> %wide.load501, i64 11
  %i.ij = or disjoint i8 %i.ii, 32
  store i8 %i.ij, ptr %next.gep496, align 1, !tbaa !17
  br label %pred.store.continue525

pred.store.continue525:                           ; preds = %pred.store.if524, %pred.store.continue523
  %i.ik = extractelement <16 x i1> %i.gz, i64 12
  br i1 %i.ik, label %pred.store.if526, label %pred.store.continue527

pred.store.if526:                                 ; preds = %pred.store.continue525
  %i.il = extractelement <16 x i8> %wide.load501, i64 12
  %i.im = or disjoint i8 %i.il, 32
  store i8 %i.im, ptr %next.gep497, align 1, !tbaa !17
  br label %pred.store.continue527

pred.store.continue527:                           ; preds = %pred.store.if526, %pred.store.continue525
  %i.in = extractelement <16 x i1> %i.gz, i64 13
  br i1 %i.in, label %pred.store.if528, label %pred.store.continue529

pred.store.if528:                                 ; preds = %pred.store.continue527
  %i.io = extractelement <16 x i8> %wide.load501, i64 13
  %i.ip = or disjoint i8 %i.io, 32
  store i8 %i.ip, ptr %next.gep498, align 1, !tbaa !17
  br label %pred.store.continue529

pred.store.continue529:                           ; preds = %pred.store.if528, %pred.store.continue527
  %i.iq = extractelement <16 x i1> %i.gz, i64 14
  br i1 %i.iq, label %pred.store.if530, label %pred.store.continue531

pred.store.if530:                                 ; preds = %pred.store.continue529
  %i.ir = extractelement <16 x i8> %wide.load501, i64 14
  %i.is = or disjoint i8 %i.ir, 32
  store i8 %i.is, ptr %next.gep499, align 1, !tbaa !17
  br label %pred.store.continue531

pred.store.continue531:                           ; preds = %pred.store.if530, %pred.store.continue529
  %i.it = extractelement <16 x i1> %i.gz, i64 15
  br i1 %i.it, label %pred.store.if532, label %pred.store.continue533

pred.store.if532:                                 ; preds = %pred.store.continue531
  %i.iu = extractelement <16 x i8> %wide.load501, i64 15
  %i.iv = or disjoint i8 %i.iu, 32
  store i8 %i.iv, ptr %next.gep500, align 1, !tbaa !17
  br label %pred.store.continue533

pred.store.continue533:                           ; preds = %pred.store.if532, %pred.store.continue531
  %index.next534 = add nuw i64 %index484, 16      ; 2 uses
  %i.iw = icmp eq i64 %index.next534, %n.vec482
  br i1 %i.iw, label %middle.block535, label %vector.body483, !llvm.loop !36

middle.block535:                                  ; preds = %pred.store.continue533
  %cmp.n536 = icmp eq i64 %i.gg, %n.vec482
  br i1 %cmp.n536, label %uriLowercaseInplaceA.exit232.loopexit, label %vec.epilog.iter.check540

vec.epilog.iter.check540:                         ; preds = %middle.block535
  %min.epilog.iters.check541 = icmp eq i64 %i.gh, 0
  br i1 %min.epilog.iters.check541, label %.preheader.i228.preheader, label %vec.epilog.ph542, !prof !28

vec.epilog.ph542:                                 ; preds = %vector.main.loop.iter.check479, %vec.epilog.iter.check540
  %vec.epilog.resume.val537 = phi i64 [ %n.vec482, %vec.epilog.iter.check540 ], [ 0, %vector.main.loop.iter.check479 ]
  %n.vec543 = and i64 %i.gg, -4                   ; 3 uses
  %i.ix = getelementptr i8, ptr %i.fy, i64 %n.vec543
  br label %vec.epilog.vector.body544

vec.epilog.vector.body544:                        ; preds = %pred.store.continue558, %vec.epilog.ph542
  %index545 = phi i64 [ %vec.epilog.resume.val537, %vec.epilog.ph542 ], [ %index.next559, %pred.store.continue558 ] ; 5 uses
  %next.gep546 = getelementptr i8, ptr %i.fy, i64 %index545 ; 2 uses
  %i.iy = getelementptr i8, ptr %i.fy, i64 %index545
  %next.gep547 = getelementptr i8, ptr %i.iy, i64 1
  %i.iz = getelementptr i8, ptr %i.fy, i64 %index545
  %next.gep548 = getelementptr i8, ptr %i.iz, i64 2
  %i.ja = getelementptr i8, ptr %i.fy, i64 %index545
  %next.gep549 = getelementptr i8, ptr %i.ja, i64 3
  %wide.load550 = load <4 x i8>, ptr %next.gep546, align 1, !tbaa !17 ; 5 uses
  %i.jb = add <4 x i8> %wide.load550, splat (i8 -65)
  %i.jc = icmp ult <4 x i8> %i.jb, splat (i8 26)  ; 4 uses
  %i.jd = extractelement <4 x i1> %i.jc, i64 0
  br i1 %i.jd, label %pred.store.if551, label %pred.store.continue552

pred.store.if551:                                 ; preds = %vec.epilog.vector.body544
  %i.je = extractelement <4 x i8> %wide.load550, i64 0
  %i.jf = or disjoint i8 %i.je, 32
  store i8 %i.jf, ptr %next.gep546, align 1, !tbaa !17
  br label %pred.store.continue552

pred.store.continue552:                           ; preds = %pred.store.if551, %vec.epilog.vector.body544
  %i.jg = extractelement <4 x i1> %i.jc, i64 1
  br i1 %i.jg, label %pred.store.if553, label %pred.store.continue554

pred.store.if553:                                 ; preds = %pred.store.continue552
  %i.jh = extractelement <4 x i8> %wide.load550, i64 1
  %i.ji = or disjoint i8 %i.jh, 32
  store i8 %i.ji, ptr %next.gep547, align 1, !tbaa !17
  br label %pred.store.continue554

pred.store.continue554:                           ; preds = %pred.store.if553, %pred.store.continue552
  %i.jj = extractelement <4 x i1> %i.jc, i64 2
  br i1 %i.jj, label %pred.store.if555, label %pred.store.continue556

pred.store.if555:                                 ; preds = %pred.store.continue554
  %i.jk = extractelement <4 x i8> %wide.load550, i64 2
  %i.jl = or disjoint i8 %i.jk, 32
  store i8 %i.jl, ptr %next.gep548, align 1, !tbaa !17
  br label %pred.store.continue556

pred.store.continue556:                           ; preds = %pred.store.if555, %pred.store.continue554
  %i.jm = extractelement <4 x i1> %i.jc, i64 3
  br i1 %i.jm, label %pred.store.if557, label %pred.store.continue558

pred.store.if557:                                 ; preds = %pred.store.continue556
  %i.jn = extractelement <4 x i8> %wide.load550, i64 3
  %i.jo = or disjoint i8 %i.jn, 32
  store i8 %i.jo, ptr %next.gep549, align 1, !tbaa !17
  br label %pred.store.continue558

pred.store.continue558:                           ; preds = %pred.store.if557, %pred.store.continue556
  %index.next559 = add nuw i64 %index545, 4       ; 2 uses
  %i.jp = icmp eq i64 %index.next559, %n.vec543
  br i1 %i.jp, label %vec.epilog.middle.block560, label %vec.epilog.vector.body544, !llvm.loop !37

vec.epilog.middle.block560:                       ; preds = %pred.store.continue558
  %cmp.n561 = icmp eq i64 %i.gg, %n.vec543
  br i1 %cmp.n561, label %uriLowercaseInplaceA.exit232.loopexit, label %.preheader.i228.preheader

.preheader.i228.preheader:                        ; preds = %iter.check538, %vec.epilog.iter.check540, %vec.epilog.middle.block560
  %.018.i229.ph = phi ptr [ %i.fy, %iter.check538 ], [ %i.gi, %vec.epilog.iter.check540 ], [ %i.ix, %vec.epilog.middle.block560 ]
  br label %.preheader.i228

.preheader.i228:                                  ; preds = %.preheader.i228.preheader, %bb.ad
  %.018.i229 = phi ptr [ %i.jt, %bb.ad ], [ %.018.i229.ph, %.preheader.i228.preheader ] ; 3 uses
  %i.jq = load i8, ptr %.018.i229, align 1, !tbaa !17 ; 2 uses
  %i.jr = add i8 %i.jq, -65
  %or.cond17.i230 = icmp ult i8 %i.jr, 26
  br i1 %or.cond17.i230, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.preheader.i228
  %i.js = or disjoint i8 %i.jq, 32
  store i8 %i.js, ptr %.018.i229, align 1, !tbaa !17
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.preheader.i228
  %i.jt = getelementptr inbounds nuw i8, ptr %.018.i229, i64 1 ; 2 uses
  %exitcond.not.i231 = icmp eq ptr %i.jt, %i.gd
  br i1 %exitcond.not.i231, label %uriLowercaseInplaceA.exit232.loopexit, label %.preheader.i228, !llvm.loop !38

bb.ae:                                            ; preds = %bb.aa
  %i.ju = icmp eq ptr %i.gd, null
  br i1 %i.ju, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jv = ptrtoint ptr %i.gd to i64
  %i.jw = ptrtoint ptr %i.fy to i64
  %i.jx = sub i64 %i.jv, %i.jw                    ; 5 uses
  %i.jy = trunc i64 %i.jx to i32                  ; 2 uses
  %i.jz = icmp eq i32 %i.jy, 0
  br i1 %i.jz, label %uriLowercaseMallocA.exit243, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ka = icmp slt i32 %i.jy, 0
  br i1 %i.ka, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.kb = load ptr, ptr %3, align 8, !tbaa !31
  %i.kc = and i64 %i.jx, 2147483647               ; 3 uses
  %i.kd = tail call ptr %i.kb(ptr noundef nonnull %3, i64 noundef %i.kc) #6, !inline_history !33 ; 7 uses
  %i.ke = icmp eq ptr %i.kd, null
  br i1 %i.ke, label %bb.ai, label %.lr.ph.i235.preheader

.lr.ph.i235.preheader:                            ; preds = %bb.ah
  %xtraiter653 = and i64 %i.jx, 1
  %i.kf = icmp eq i64 %i.kc, 1
  br i1 %i.kf, label %.lr.ph.i235.epil.preheader, label %.lr.ph.i235.preheader.new

.lr.ph.i235.preheader.new:                        ; preds = %.lr.ph.i235.preheader
  %unroll_iter656 = and i64 %i.jx, 2147483646
  br label %.lr.ph.i235

.lr.ph.i235:                                      ; preds = %.lr.ph.i235, %.lr.ph.i235.preheader.new
  %indvars.iv.i236 = phi i64 [ 0, %.lr.ph.i235.preheader.new ], [ %indvars.iv.next.i239.1, %.lr.ph.i235 ] ; 4 uses
  %niter657 = phi i64 [ 0, %.lr.ph.i235.preheader.new ], [ %niter657.next.1, %.lr.ph.i235 ]
  %i.kg = load ptr, ptr %i.fx, align 8, !tbaa !24
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 %indvars.iv.i236
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !17  ; 3 uses
  %i.kj = add i8 %i.ki, -65
  %or.cond.i237 = icmp ult i8 %i.kj, 26
  %i.kk = or disjoint i8 %i.ki, 32
  %spec.select.i238 = select i1 %or.cond.i237, i8 %i.kk, i8 %i.ki
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kd, i64 %indvars.iv.i236
  store i8 %spec.select.i238, ptr %i.kl, align 1, !tbaa !17
  %indvars.iv.next.i239 = or disjoint i64 %indvars.iv.i236, 1 ; 2 uses
  %i.km = load ptr, ptr %i.fx, align 8, !tbaa !24
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 %indvars.iv.next.i239
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !17  ; 3 uses
  %i.kp = add i8 %i.ko, -65
  %or.cond.i237.1 = icmp ult i8 %i.kp, 26
  %i.kq = or disjoint i8 %i.ko, 32
  %spec.select.i238.1 = select i1 %or.cond.i237.1, i8 %i.kq, i8 %i.ko
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kd, i64 %indvars.iv.next.i239
  store i8 %spec.select.i238.1, ptr %i.kr, align 1, !tbaa !17
  %indvars.iv.next.i239.1 = add nuw nsw i64 %indvars.iv.i236, 2 ; 2 uses
  %niter657.next.1 = add i64 %niter657, 2         ; 2 uses
  %niter657.ncmp.1 = icmp eq i64 %niter657.next.1, %unroll_iter656
  br i1 %niter657.ncmp.1, label %._crit_edge.i241.unr-lcssa, label %.lr.ph.i235, !llvm.loop !34

._crit_edge.i241.unr-lcssa:                       ; preds = %.lr.ph.i235
  %lcmp.mod654.not = icmp eq i64 %xtraiter653, 0
  br i1 %lcmp.mod654.not, label %._crit_edge.i241, label %.lr.ph.i235.epil.preheader

.lr.ph.i235.epil.preheader:                       ; preds = %._crit_edge.i241.unr-lcssa, %.lr.ph.i235.preheader
  %indvars.iv.i236.epil.init = phi i64 [ 0, %.lr.ph.i235.preheader ], [ %indvars.iv.next.i239.1, %._crit_edge.i241.unr-lcssa ] ; 2 uses
  %lcmp.mod655 = trunc i64 %i.jx to i1
  tail call void @llvm.assume(i1 %lcmp.mod655)
  %i.ks = load ptr, ptr %i.fx, align 8, !tbaa !24
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 %indvars.iv.i236.epil.init
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !17  ; 3 uses
  %i.kv = add i8 %i.ku, -65
  %or.cond.i237.epil = icmp ult i8 %i.kv, 26
  %i.kw = or disjoint i8 %i.ku, 32
  %spec.select.i238.epil = select i1 %or.cond.i237.epil, i8 %i.kw, i8 %i.ku
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kd, i64 %indvars.iv.i236.epil.init
  store i8 %spec.select.i238.epil, ptr %i.kx, align 1, !tbaa !17
  br label %._crit_edge.i241

._crit_edge.i241:                                 ; preds = %._crit_edge.i241.unr-lcssa, %.lr.ph.i235.epil.preheader
  store ptr %i.kd, ptr %i.fx, align 8, !tbaa !24
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.kc ; 2 uses
  store ptr %i.ky, ptr %i.gc, align 8, !tbaa !24
  br label %uriLowercaseMallocA.exit243

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.ae
  tail call fastcc void @uriPreventLeakageA(ptr noundef %0, i32 noundef %i.fu, ptr noundef %3)
  br label %bb.ef

uriLowercaseMallocA.exit243:                      ; preds = %._crit_edge.i241, %bb.af
  %i.kz = phi ptr [ %i.ky, %._crit_edge.i241 ], [ %i.gd, %bb.af ]
  %i.la = phi ptr [ %i.kd, %._crit_edge.i241 ], [ %i.fy, %bb.af ]
  %i.lb = or disjoint i32 %i.fu, 4                ; 2 uses
  store i32 %i.lb, ptr %i.a, align 4, !tbaa !3
  br label %uriLowercaseInplaceA.exit232

uriLowercaseInplaceA.exit232.loopexit:            ; preds = %bb.ad, %vec.epilog.middle.block560, %middle.block535
  %.pre = load ptr, ptr %i.fx, align 8, !tbaa !35
  %.pre332 = load ptr, ptr %i.gc, align 8, !tbaa !39
  br label %uriLowercaseInplaceA.exit232

uriLowercaseInplaceA.exit232:                     ; preds = %uriLowercaseInplaceA.exit232.loopexit, %bb.ab, %uriLowercaseMallocA.exit243
  %i.lc = phi i32 [ %i.fu, %uriLowercaseInplaceA.exit232.loopexit ], [ %i.fu, %bb.ab ], [ %i.lb, %uriLowercaseMallocA.exit243 ]
  %i.ld = phi ptr [ %.pre332, %uriLowercaseInplaceA.exit232.loopexit ], [ %i.gd, %bb.ab ], [ %i.kz, %uriLowercaseMallocA.exit243 ]
  %i.le = phi ptr [ %.pre, %uriLowercaseInplaceA.exit232.loopexit ], [ %i.fy, %bb.ab ], [ %i.la, %uriLowercaseMallocA.exit243 ]
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.le, ptr %i.lf, align 8, !tbaa !20
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ld, ptr %i.lg, align 8, !tbaa !21
  br label %uriContainsUglyPercentEncodingA.exit

bb.aj:                                            ; preds = %bb.z
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !20 ; 2 uses
  %.not178 = icmp eq ptr %i.li, null
  br i1 %.not178, label %uriContainsUglyPercentEncodingA.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.lj = load ptr, ptr %i.fw, align 8, !tbaa !40
  %i.lk = icmp eq ptr %i.lj, null
  br i1 %i.lk, label %bb.al, label %uriContainsUglyPercentEncodingA.exit

bb.al:                                            ; preds = %bb.ak
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !41
  %i.ln = icmp eq ptr %i.lm, null
  br i1 %i.ln, label %bb.am, label %uriContainsUglyPercentEncodingA.exit

bb.am:                                            ; preds = %bb.al
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !23
  %.not179 = icmp eq i32 %i.lp, 0
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br i1 %.not179, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call fastcc void @uriFixPercentEncodingInplaceA(ptr noundef nonnull %i.li, ptr noundef %i.lq)
  br label %bb.ar

bb.ao:                                            ; preds = %bb.am
  %i.lr = tail call fastcc i32 @uriFixPercentEncodingMallocA(ptr noundef %i.lh, ptr noundef %i.lq, ptr noundef %3)
  %.not180 = icmp eq i32 %i.lr, 0
  br i1 %.not180, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  tail call fastcc void @uriPreventLeakageA(ptr noundef %0, i32 noundef %i.fu, ptr noundef %3)
  br label %bb.ef

bb.aq:                                            ; preds = %bb.ao
  %i.ls = or disjoint i32 %i.fu, 4                ; 2 uses
  store i32 %i.ls, ptr %i.a, align 4, !tbaa !3
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.an
  %i.lt = phi i32 [ %i.ls, %bb.aq ], [ %i.fu, %bb.an ] ; 4 uses
  %i.lu = load ptr, ptr %i.lh, align 8, !tbaa !20 ; 26 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !21 ; 3 uses
  %i.lx = icmp ne ptr %i.lu, null
  %i.ly = icmp ugt ptr %i.lw, %i.lu
  %or.cond16.i244 = and i1 %i.lx, %i.ly
  br i1 %or.cond16.i244, label %iter.check623, label %uriContainsUglyPercentEncodingA.exit

iter.check623:                                    ; preds = %bb.ar
  %i.lz = ptrtoaddr ptr %i.lw to i64
  %i.ma = ptrtoaddr ptr %i.lu to i64
  %i.mb = sub i64 %i.lz, %i.ma                    ; 7 uses
  %min.iters.check563 = icmp ult i64 %i.mb, 4
  br i1 %min.iters.check563, label %.preheader.i245.preheader, label %vector.main.loop.iter.check564

vector.main.loop.iter.check564:                   ; preds = %iter.check623
  %min.iters.check565 = icmp ult i64 %i.mb, 16
  br i1 %min.iters.check565, label %vec.epilog.ph627, label %vector.ph566

vector.ph566:                                     ; preds = %vector.main.loop.iter.check564
  %i.mc = and i64 %i.mb, 12
  %n.vec567 = and i64 %i.mb, -16                  ; 4 uses
  %i.md = getelementptr i8, ptr %i.lu, i64 %n.vec567
  br label %vector.body568

vector.body568:                                   ; preds = %pred.store.continue618, %vector.ph566
  %index569 = phi i64 [ 0, %vector.ph566 ], [ %index.next619, %pred.store.continue618 ] ; 17 uses
  %next.gep570 = getelementptr i8, ptr %i.lu, i64 %index569 ; 2 uses
  %i.me = getelementptr i8, ptr %i.lu, i64 %index569
  %next.gep571 = getelementptr i8, ptr %i.me, i64 1
  %i.mf = getelementptr i8, ptr %i.lu, i64 %index569
  %next.gep572 = getelementptr i8, ptr %i.mf, i64 2
  %i.mg = getelementptr i8, ptr %i.lu, i64 %index569
  %next.gep573 = getelementptr i8, ptr %i.mg, i64 3
  %i.mh = getelementptr i8, ptr %i.lu, i64 %index569
  %next.gep574 = getelementptr i8, ptr %i.mh, i64 4
  %i.mi = getelementptr i8, ptr %i.lu, i64 %index569
  %next.gep575 = getelementptr i8, ptr %i.mi, i64 5
  %i.mj = getelementptr i8, ptr %i.lu, i64 %index569
  %next.gep576 = getelementptr i8, ptr %i.mj, i64 6
  %i.mk = getelementptr i8, ptr %i.lu, i64 %index569
  %next.gep577 = getelementptr i8, ptr %i.mk, i64 7
  %i.ml = getelementptr i8, ptr %i.lu, i64 %index569
  %next.gep578 = getelementptr i8, ptr %i.ml, i64 8
  %i.mm = getelementptr i8, ptr %i.lu, i64 %index569
  %next.gep579 = getelementptr i8, ptr %i.mm, i64 9
  %i.mn = getelementptr i8, ptr %i.lu, i64 %index569
  %next.gep580 = getelementptr i8, ptr %i.mn, i64 10
  %i.mo = getelementptr i8, ptr %i.lu, i64 %index569
  %next.gep581 = getelementptr i8, ptr %i.mo, i64 11
  %i.mp = getelementptr i8, ptr %i.lu, i64 %index569
  %next.gep582 = getelementptr i8, ptr %i.mp, i64 12
  %i.mq = getelementptr i8, ptr %i.lu, i64 %index569
  %next.gep583 = getelementptr i8, ptr %i.mq, i64 13
  %i.mr = getelementptr i8, ptr %i.lu, i64 %index569
  %next.gep584 = getelementptr i8, ptr %i.mr, i64 14
  %i.ms = getelementptr i8, ptr %i.lu, i64 %index569
  %next.gep585 = getelementptr i8, ptr %i.ms, i64 15
  %wide.load586 = load <16 x i8>, ptr %next.gep570, align 1, !tbaa !17 ; 17 uses
  %i.mt = add <16 x i8> %wide.load586, splat (i8 -65)
  %i.mu = icmp ult <16 x i8> %i.mt, splat (i8 26) ; 16 uses
  %i.mv = extractelement <16 x i1> %i.mu, i64 0
  br i1 %i.mv, label %pred.store.if587, label %pred.store.continue588

pred.store.if587:                                 ; preds = %vector.body568
  %i.mw = extractelement <16 x i8> %wide.load586, i64 0
end_hunk_1
begin_hunk_2_@uriNormalizeSyntaxEngineA:bb.a
pred.store.if607:                                 ; preds = %pred.store.continue606
  %i.oa = extractelement <16 x i8> %wide.load586, i64 10
  %i.ob = or disjoint i8 %i.oa, 32
  store i8 %i.ob, ptr %next.gep580, align 1, !tbaa !17
  br label %pred.store.continue608

pred.store.continue608:                           ; preds = %pred.store.if607, %pred.store.continue606
  %i.oc = extractelement <16 x i1> %i.mu, i64 11
  br i1 %i.oc, label %pred.store.if609, label %pred.store.continue610

pred.store.if609:                                 ; preds = %pred.store.continue608
  %i.od = extractelement <16 x i8> %wide.load586, i64 11
  %i.oe = or disjoint i8 %i.od, 32
  store i8 %i.oe, ptr %next.gep581, align 1, !tbaa !17
  br label %pred.store.continue610

pred.store.continue610:                           ; preds = %pred.store.if609, %pred.store.continue608
  %i.of = extractelement <16 x i1> %i.mu, i64 12
  br i1 %i.of, label %pred.store.if611, label %pred.store.continue612

pred.store.if611:                                 ; preds = %pred.store.continue610
  %i.og = extractelement <16 x i8> %wide.load586, i64 12
  %i.oh = or disjoint i8 %i.og, 32
  store i8 %i.oh, ptr %next.gep582, align 1, !tbaa !17
  br label %pred.store.continue612

pred.store.continue612:                           ; preds = %pred.store.if611, %pred.store.continue610
  %i.oi = extractelement <16 x i1> %i.mu, i64 13
  br i1 %i.oi, label %pred.store.if613, label %pred.store.continue614

pred.store.if613:                                 ; preds = %pred.store.continue612
  %i.oj = extractelement <16 x i8> %wide.load586, i64 13
  %i.ok = or disjoint i8 %i.oj, 32
  store i8 %i.ok, ptr %next.gep583, align 1, !tbaa !17
  br label %pred.store.continue614

pred.store.continue614:                           ; preds = %pred.store.if613, %pred.store.continue612
  %i.ol = extractelement <16 x i1> %i.mu, i64 14
  br i1 %i.ol, label %pred.store.if615, label %pred.store.continue616

pred.store.if615:                                 ; preds = %pred.store.continue614
  %i.om = extractelement <16 x i8> %wide.load586, i64 14
  %i.on = or disjoint i8 %i.om, 32
  store i8 %i.on, ptr %next.gep584, align 1, !tbaa !17
  br label %pred.store.continue616

pred.store.continue616:                           ; preds = %pred.store.if615, %pred.store.continue614
  %i.oo = extractelement <16 x i1> %i.mu, i64 15
  br i1 %i.oo, label %pred.store.if617, label %pred.store.continue618

pred.store.if617:                                 ; preds = %pred.store.continue616
  %i.op = extractelement <16 x i8> %wide.load586, i64 15
  %i.oq = or disjoint i8 %i.op, 32
  store i8 %i.oq, ptr %next.gep585, align 1, !tbaa !17
  br label %pred.store.continue618

pred.store.continue618:                           ; preds = %pred.store.if617, %pred.store.continue616
  %index.next619 = add nuw i64 %index569, 16      ; 2 uses
  %i.or = icmp eq i64 %index.next619, %n.vec567
  br i1 %i.or, label %middle.block620, label %vector.body568, !llvm.loop !42

middle.block620:                                  ; preds = %pred.store.continue618
  %cmp.n621 = icmp eq i64 %i.mb, %n.vec567
  br i1 %cmp.n621, label %uriContainsUglyPercentEncodingA.exit, label %vec.epilog.iter.check625

vec.epilog.iter.check625:                         ; preds = %middle.block620
  %min.epilog.iters.check626 = icmp eq i64 %i.mc, 0
  br i1 %min.epilog.iters.check626, label %.preheader.i245.preheader, label %vec.epilog.ph627, !prof !28

vec.epilog.ph627:                                 ; preds = %vector.main.loop.iter.check564, %vec.epilog.iter.check625
  %vec.epilog.resume.val622 = phi i64 [ %n.vec567, %vec.epilog.iter.check625 ], [ 0, %vector.main.loop.iter.check564 ]
  %n.vec628 = and i64 %i.mb, -4                   ; 3 uses
  %i.os = getelementptr i8, ptr %i.lu, i64 %n.vec628
  br label %vec.epilog.vector.body629

vec.epilog.vector.body629:                        ; preds = %pred.store.continue643, %vec.epilog.ph627
  %index630 = phi i64 [ %vec.epilog.resume.val622, %vec.epilog.ph627 ], [ %index.next644, %pred.store.continue643 ] ; 5 uses
  %next.gep631 = getelementptr i8, ptr %i.lu, i64 %index630 ; 2 uses
  %i.ot = getelementptr i8, ptr %i.lu, i64 %index630
  %next.gep632 = getelementptr i8, ptr %i.ot, i64 1
  %i.ou = getelementptr i8, ptr %i.lu, i64 %index630
  %next.gep633 = getelementptr i8, ptr %i.ou, i64 2
  %i.ov = getelementptr i8, ptr %i.lu, i64 %index630
  %next.gep634 = getelementptr i8, ptr %i.ov, i64 3
  %wide.load635 = load <4 x i8>, ptr %next.gep631, align 1, !tbaa !17 ; 5 uses
  %i.ow = add <4 x i8> %wide.load635, splat (i8 -65)
  %i.ox = icmp ult <4 x i8> %i.ow, splat (i8 26)  ; 4 uses
  %i.oy = extractelement <4 x i1> %i.ox, i64 0
  br i1 %i.oy, label %pred.store.if636, label %pred.store.continue637

pred.store.if636:                                 ; preds = %vec.epilog.vector.body629
  %i.oz = extractelement <4 x i8> %wide.load635, i64 0
  %i.pa = or disjoint i8 %i.oz, 32
  store i8 %i.pa, ptr %next.gep631, align 1, !tbaa !17
  br label %pred.store.continue637

pred.store.continue637:                           ; preds = %pred.store.if636, %vec.epilog.vector.body629
  %i.pb = extractelement <4 x i1> %i.ox, i64 1
  br i1 %i.pb, label %pred.store.if638, label %pred.store.continue639

pred.store.if638:                                 ; preds = %pred.store.continue637
  %i.pc = extractelement <4 x i8> %wide.load635, i64 1
  %i.pd = or disjoint i8 %i.pc, 32
  store i8 %i.pd, ptr %next.gep632, align 1, !tbaa !17
  br label %pred.store.continue639

pred.store.continue639:                           ; preds = %pred.store.if638, %pred.store.continue637
  %i.pe = extractelement <4 x i1> %i.ox, i64 2
  br i1 %i.pe, label %pred.store.if640, label %pred.store.continue641

pred.store.if640:                                 ; preds = %pred.store.continue639
  %i.pf = extractelement <4 x i8> %wide.load635, i64 2
  %i.pg = or disjoint i8 %i.pf, 32
  store i8 %i.pg, ptr %next.gep633, align 1, !tbaa !17
  br label %pred.store.continue641

pred.store.continue641:                           ; preds = %pred.store.if640, %pred.store.continue639
  %i.ph = extractelement <4 x i1> %i.ox, i64 3
  br i1 %i.ph, label %pred.store.if642, label %pred.store.continue643

pred.store.if642:                                 ; preds = %pred.store.continue641
  %i.pi = extractelement <4 x i8> %wide.load635, i64 3
  %i.pj = or disjoint i8 %i.pi, 32
  store i8 %i.pj, ptr %next.gep634, align 1, !tbaa !17
  br label %pred.store.continue643

pred.store.continue643:                           ; preds = %pred.store.if642, %pred.store.continue641
  %index.next644 = add nuw i64 %index630, 4       ; 2 uses
  %i.pk = icmp eq i64 %index.next644, %n.vec628
  br i1 %i.pk, label %vec.epilog.middle.block645, label %vec.epilog.vector.body629, !llvm.loop !43

vec.epilog.middle.block645:                       ; preds = %pred.store.continue643
  %cmp.n646 = icmp eq i64 %i.mb, %n.vec628
  br i1 %cmp.n646, label %uriContainsUglyPercentEncodingA.exit, label %.preheader.i245.preheader

.preheader.i245.preheader:                        ; preds = %iter.check623, %vec.epilog.iter.check625, %vec.epilog.middle.block645
  %.018.i246.ph = phi ptr [ %i.lu, %iter.check623 ], [ %i.md, %vec.epilog.iter.check625 ], [ %i.os, %vec.epilog.middle.block645 ]
  br label %.preheader.i245

.preheader.i245:                                  ; preds = %.preheader.i245.preheader, %bb.at
  %.018.i246 = phi ptr [ %i.po, %bb.at ], [ %.018.i246.ph, %.preheader.i245.preheader ] ; 3 uses
  %i.pl = load i8, ptr %.018.i246, align 1, !tbaa !17 ; 2 uses
  %i.pm = add i8 %i.pl, -65
  %or.cond17.i247 = icmp ult i8 %i.pm, 26
  br i1 %or.cond17.i247, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.preheader.i245
  %i.pn = or disjoint i8 %i.pl, 32
  store i8 %i.pn, ptr %.018.i246, align 1, !tbaa !17
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.preheader.i245
  %i.po = getelementptr inbounds nuw i8, ptr %.018.i246, i64 1 ; 2 uses
  %exitcond.not.i248 = icmp eq ptr %i.po, %i.lw
  br i1 %exitcond.not.i248, label %uriContainsUglyPercentEncodingA.exit, label %.preheader.i245, !llvm.loop !44

uriContainsUglyPercentEncodingA.exit:             ; preds = %bb.m, %bb.at, %middle.block620, %vec.epilog.middle.block645, %bb.ar, %bb.i, %uriLowercaseInplaceA.exit, %bb.aj, %bb.ak, %bb.al, %uriLowercaseInplaceA.exit232
  %i.pp = phi i32 [ %i.lt, %middle.block620 ], [ %i.lc, %uriLowercaseInplaceA.exit232 ], [ %i.lt, %bb.ar ], [ 0, %bb.i ], [ %i.fu, %uriLowercaseInplaceA.exit ], [ %i.fu, %bb.aj ], [ %i.fu, %bb.ak ], [ %i.fu, %bb.al ], [ %i.lt, %bb.at ], [ %i.lt, %vec.epilog.middle.block645 ], [ 0, %bb.m ] ; 6 uses
  br i1 %.not212, label %bb.az, label %uriContainsUglyPercentEncodingA.exit.thread296

uriContainsUglyPercentEncodingA.exit.thread296.sink.split: ; preds = %bb.h, %bb.n
  %.sink = phi i32 [ %i.ar, %bb.n ], [ %i.u, %bb.h ]
  store i32 %.sink, ptr %2, align 4, !tbaa !3
  br label %uriContainsUglyPercentEncodingA.exit.thread296

uriContainsUglyPercentEncodingA.exit.thread296:   ; preds = %uriContainsUglyPercentEncodingA.exit.thread296.sink.split, %uriContainsUglyPercentEncodingA.exit
  %i.pq = phi i32 [ %i.pp, %uriContainsUglyPercentEncodingA.exit ], [ 0, %uriContainsUglyPercentEncodingA.exit.thread296.sink.split ] ; 4 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !45 ; 4 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !46 ; 3 uses
  %i.pv = icmp ne ptr %i.ps, null
  %i.pw = icmp ugt ptr %i.pu, %i.ps
  %or.cond29.i250 = and i1 %i.pv, %i.pw
  %i.px = getelementptr inbounds nuw i8, ptr %i.ps, i64 2 ; 2 uses
  %i.py = icmp ult ptr %i.px, %i.pu
  %or.cond.i251 = select i1 %or.cond29.i250, i1 %i.py, i1 false
  br i1 %or.cond.i251, label %.lr.ph.i253, label %uriContainsUglyPercentEncodingA.exit258.thread302

.lr.ph.i253:                                      ; preds = %uriContainsUglyPercentEncodingA.exit.thread296, %bb.ax
  %i.pz = phi ptr [ %i.qq, %bb.ax ], [ %i.px, %uriContainsUglyPercentEncodingA.exit.thread296 ] ; 2 uses
  %.02132.i254 = phi ptr [ %i.qp, %bb.ax ], [ %i.ps, %uriContainsUglyPercentEncodingA.exit.thread296 ] ; 4 uses
  %i.qa = load i8, ptr %.02132.i254, align 1, !tbaa !17
  %i.qb = icmp eq i8 %i.qa, 37
  br i1 %i.qb, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %.lr.ph.i253
  %i.qc = getelementptr inbounds nuw i8, ptr %.02132.i254, i64 1
  %i.qd = load i8, ptr %i.qc, align 1, !tbaa !17  ; 2 uses
  %i.qe = add i8 %i.qd, -97
  %or.cond30.i255 = icmp ult i8 %i.qe, 6
  br i1 %or.cond30.i255, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.qf = load i8, ptr %i.pz, align 1, !tbaa !17
  %i.qg = add i8 %i.qf, -97
  %or.cond31.i256 = icmp ult i8 %i.qg, 6
  br i1 %or.cond31.i256, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.qh = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.qd) #6
  %i.qi = load i8, ptr %i.pz, align 1, !tbaa !17
  %i.qj = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.qi) #6
  %i.qk = zext i8 %i.qh to i32
  %i.ql = shl nuw nsw i32 %i.qk, 4
  %i.qm = zext i8 %i.qj to i32
  %i.qn = add nuw nsw i32 %i.ql, %i.qm
  %i.qo = tail call i32 @uriIsUnreserved(i32 noundef %i.qn) #6
  %.not.i257 = icmp eq i32 %i.qo, 0
  br i1 %.not.i257, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw, %.lr.ph.i253
  %i.qp = getelementptr inbounds nuw i8, ptr %.02132.i254, i64 1
  %i.qq = getelementptr inbounds nuw i8, ptr %.02132.i254, i64 3 ; 2 uses
  %i.qr = icmp ult ptr %i.qq, %i.pu
  br i1 %i.qr, label %.lr.ph.i253, label %uriContainsUglyPercentEncodingA.exit258, !llvm.loop !22

bb.ay:                                            ; preds = %bb.av, %bb.au, %bb.aw
  %i.qs = load i32, ptr %2, align 4, !tbaa !3
  %i.qt = or i32 %i.qs, 2
  store i32 %i.qt, ptr %2, align 4, !tbaa !3
  br label %uriContainsUglyPercentEncodingA.exit258.thread302

bb.az:                                            ; preds = %uriContainsUglyPercentEncodingA.exit
  %i.qu = and i32 %1, 2
  %.not186 = icmp eq i32 %i.qu, 0
  br i1 %.not186, label %uriContainsUglyPercentEncodingA.exit258.thread300, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !45 ; 2 uses
  %.not187 = icmp eq ptr %i.qw, null
  br i1 %.not187, label %uriContainsUglyPercentEncodingA.exit258.thread300, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !23
  %.not188 = icmp eq i32 %i.qy, 0
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %.not188, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  tail call fastcc void @uriFixPercentEncodingInplaceA(ptr noundef nonnull %i.qw, ptr noundef %i.qz)
  br label %uriContainsUglyPercentEncodingA.exit258.thread300

bb.bd:                                            ; preds = %bb.bb
  %i.ra = tail call fastcc i32 @uriFixPercentEncodingMallocA(ptr noundef %i.qv, ptr noundef %i.qz, ptr noundef %3)
  %.not189 = icmp eq i32 %i.ra, 0
  br i1 %.not189, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  tail call fastcc void @uriPreventLeakageA(ptr noundef %0, i32 noundef %i.pp, ptr noundef %3)
  br label %bb.ef

bb.bf:                                            ; preds = %bb.bd
  %i.rb = or i32 %i.pp, 2                         ; 2 uses
  store i32 %i.rb, ptr %i.a, align 4, !tbaa !3
  br label %uriContainsUglyPercentEncodingA.exit258.thread300

uriContainsUglyPercentEncodingA.exit258:          ; preds = %bb.ax
  br i1 %.not212, label %uriContainsUglyPercentEncodingA.exit258.thread300, label %uriContainsUglyPercentEncodingA.exit258.thread302

uriContainsUglyPercentEncodingA.exit258.thread302: ; preds = %bb.ay, %uriContainsUglyPercentEncodingA.exit.thread296, %uriContainsUglyPercentEncodingA.exit258
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.0155320 = load ptr, ptr %i.rc, align 8, !tbaa !47 ; 2 uses
  %.not198321 = icmp eq ptr %.0155320, null
  br i1 %.not198321, label %.loopexit316.thread, label %.lr.ph

.lr.ph:                                           ; preds = %uriContainsUglyPercentEncodingA.exit258.thread302, %.loopexit315
  %.0155322 = phi ptr [ %.0155, %.loopexit315 ], [ %.0155320, %uriContainsUglyPercentEncodingA.exit258.thread302 ] ; 3 uses
  %i.rd = load ptr, ptr %.0155322, align 8, !tbaa !48 ; 8 uses
  %i.re = getelementptr inbounds nuw i8, ptr %.0155322, i64 8
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !50 ; 4 uses
  %i.rg = icmp ne ptr %i.rd, null
  %i.rh = icmp ugt ptr %i.rf, %i.rd
  %or.cond213 = select i1 %i.rg, i1 %i.rh, i1 false
  br i1 %or.cond213, label %bb.bg, label %.loopexit315

bb.bg:                                            ; preds = %.lr.ph
  %i.ri = ptrtoint ptr %i.rf to i64
  %i.rj = ptrtoint ptr %i.rd to i64
  %i.rk = sub i64 %i.ri, %i.rj
  switch i64 %i.rk, label %bb.bk [
    i64 1, label %bb.bh
    i64 2, label %bb.bi
  ]

bb.bh:                                            ; preds = %bb.bg
  %i.rl = load i8, ptr %i.rd, align 1, !tbaa !17
  %i.rm = icmp eq i8 %i.rl, 46
  br i1 %i.rm, label %.thread309, label %bb.bk

bb.bi:                                            ; preds = %bb.bg
  %i.rn = load i8, ptr %i.rd, align 1, !tbaa !17
  %i.ro = icmp eq i8 %i.rn, 46
  br i1 %i.ro, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rd, i64 1
  %i.rq = load i8, ptr %i.rp, align 1, !tbaa !17
  %i.rr = icmp eq i8 %i.rq, 46
  br i1 %i.rr, label %.thread309, label %bb.bk

bb.bk:                                            ; preds = %bb.bh, %bb.bg, %bb.bj, %bb.bi
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rd, i64 2 ; 2 uses
  %i.rt = icmp ult ptr %i.rs, %i.rf
  br i1 %i.rt, label %.lr.ph.i262, label %.loopexit315

.lr.ph.i262:                                      ; preds = %bb.bk, %bb.bo
  %i.ru = phi ptr [ %i.sl, %bb.bo ], [ %i.rs, %bb.bk ] ; 2 uses
  %.02132.i263 = phi ptr [ %i.sk, %bb.bo ], [ %i.rd, %bb.bk ] ; 4 uses
  %i.rv = load i8, ptr %.02132.i263, align 1, !tbaa !17
  %i.rw = icmp eq i8 %i.rv, 37
  br i1 %i.rw, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %.lr.ph.i262
  %i.rx = getelementptr inbounds nuw i8, ptr %.02132.i263, i64 1
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !17  ; 2 uses
  %i.rz = add i8 %i.ry, -97
  %or.cond30.i264 = icmp ult i8 %i.rz, 6
  br i1 %or.cond30.i264, label %.thread309, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.sa = load i8, ptr %i.ru, align 1, !tbaa !17
  %i.sb = add i8 %i.sa, -97
  %or.cond31.i265 = icmp ult i8 %i.sb, 6
  br i1 %or.cond31.i265, label %.thread309, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.sc = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.ry) #6
  %i.sd = load i8, ptr %i.ru, align 1, !tbaa !17
  %i.se = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.sd) #6
  %i.sf = zext i8 %i.sc to i32
  %i.sg = shl nuw nsw i32 %i.sf, 4
  %i.sh = zext i8 %i.se to i32
  %i.si = add nuw nsw i32 %i.sg, %i.sh
  %i.sj = tail call i32 @uriIsUnreserved(i32 noundef %i.si) #6
  %.not.i266 = icmp eq i32 %i.sj, 0
  br i1 %.not.i266, label %bb.bo, label %.thread309

bb.bo:                                            ; preds = %bb.bn, %.lr.ph.i262
  %i.sk = getelementptr inbounds nuw i8, ptr %.02132.i263, i64 1
  %i.sl = getelementptr inbounds nuw i8, ptr %.02132.i263, i64 3 ; 2 uses
  %i.sm = icmp ult ptr %i.sl, %i.rf
  br i1 %i.sm, label %.lr.ph.i262, label %.loopexit315, !llvm.loop !22

.thread309:                                       ; preds = %bb.bj, %bb.bh, %bb.bn, %bb.bl, %bb.bm
  %i.sn = load i32, ptr %2, align 4, !tbaa !3
  %i.so = or i32 %i.sn, 8
  store i32 %i.so, ptr %2, align 4, !tbaa !3
  br label %.loopexit316.thread

.loopexit315:                                     ; preds = %bb.bo, %.lr.ph, %bb.bk
  %i.sp = getelementptr inbounds nuw i8, ptr %.0155322, i64 16
  %.0155 = load ptr, ptr %i.sp, align 8, !tbaa !47 ; 2 uses
  %.not198 = icmp eq ptr %.0155, null
  br i1 %.not198, label %.loopexit316, label %.lr.ph

uriContainsUglyPercentEncodingA.exit258.thread300: ; preds = %bb.bc, %bb.bf, %bb.ba, %bb.az, %uriContainsUglyPercentEncodingA.exit258
  %i.sq = phi i32 [ %i.pp, %bb.bc ], [ %i.rb, %bb.bf ], [ %i.pp, %bb.ba ], [ %i.pp, %bb.az ], [ %i.pq, %uriContainsUglyPercentEncodingA.exit258 ] ; 5 uses
  %i.sr = and i32 %1, 8
  %.not191 = icmp eq i32 %i.sr, 0
  br i1 %.not191, label %.thread308, label %bb.bp

bb.bp:                                            ; preds = %uriContainsUglyPercentEncodingA.exit258.thread300
  %i.ss = load ptr, ptr %0, align 8, !tbaa !7
  %i.st = icmp eq ptr %i.ss, null
  br i1 %i.st, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.sv = load i32, ptr %i.su, align 8, !tbaa !51
  %.not192 = icmp eq i32 %i.sv, 0
  %i.sw = zext i1 %.not192 to i32
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.sx = phi i32 [ 0, %bb.bp ], [ %i.sw, %bb.bq ]
  %i.sy = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !52 ; 3 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !23
  %.not193 = icmp eq i32 %i.tb, 0
  %.not194326 = icmp eq ptr %i.sz, null           ; 2 uses
  br i1 %.not193, label %.preheader, label %.preheader314

.preheader314:                                    ; preds = %bb.br
  br i1 %.not194326, label %.loopexit, label %.lr.ph325

.preheader:                                       ; preds = %bb.br
  br i1 %.not194326, label %._crit_edge, label %.lr.ph328

.lr.ph325:                                        ; preds = %.preheader314, %.lr.ph325
  %.0324 = phi ptr [ %i.tf, %.lr.ph325 ], [ %i.sz, %.preheader314 ] ; 3 uses
  %i.tc = load ptr, ptr %.0324, align 8, !tbaa !48
  %i.td = getelementptr inbounds nuw i8, ptr %.0324, i64 8
  tail call fastcc void @uriFixPercentEncodingInplaceA(ptr noundef %i.tc, ptr noundef %i.td)
  %i.te = getelementptr inbounds nuw i8, ptr %.0324, i64 16
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !53 ; 2 uses
  %.not196 = icmp eq ptr %i.tf, null
  br i1 %.not196, label %.loopexit, label %.lr.ph325, !llvm.loop !54

.lr.ph328:                                        ; preds = %.preheader, %bb.bt
  %.1327 = phi ptr [ %i.tj, %bb.bt ], [ %i.sz, %.preheader ] ; 3 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %.1327, i64 8
  %i.th = tail call fastcc i32 @uriFixPercentEncodingMallocA(ptr noundef %.1327, ptr noundef %i.tg, ptr noundef %3)
  %.not195 = icmp eq i32 %i.th, 0
  br i1 %.not195, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %.lr.ph328
  tail call fastcc void @uriPreventLeakageA(ptr noundef %0, i32 noundef %i.sq, ptr noundef %3)
  br label %bb.ef

bb.bt:                                            ; preds = %.lr.ph328
  %i.ti = getelementptr inbounds nuw i8, ptr %.1327, i64 16
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !53 ; 2 uses
  %.not194 = icmp eq ptr %i.tj, null
  br i1 %.not194, label %._crit_edge, label %.lr.ph328, !llvm.loop !55

._crit_edge:                                      ; preds = %bb.bt, %.preheader
  %i.tk = or i32 %i.sq, 8                         ; 2 uses
  store i32 %i.tk, ptr %i.a, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph325, %.preheader314, %._crit_edge
  %i.tl = phi i32 [ %i.tk, %._crit_edge ], [ %i.sq, %.preheader314 ], [ %i.sq, %.lr.ph325 ] ; 3 uses
  %i.tm = load i32, ptr %i.ta, align 4, !tbaa !23
  %i.tn = icmp eq i32 %i.tm, 1
  %i.to = and i32 %i.tl, 8
  %i.tp = icmp ne i32 %i.to, 0
  %i.tq = select i1 %i.tn, i1 true, i1 %i.tp
  %i.tr = zext i1 %i.tq to i32
  %i.ts = tail call i32 @uriRemoveDotSegmentsExA(ptr noundef %0, i32 noundef %i.sx, i32 noundef %i.tr, ptr noundef %3) #6
  %.not197 = icmp eq i32 %i.ts, 0
  br i1 %.not197, label %bb.bu, label %.critedge

bb.bu:                                            ; preds = %.loopexit
  tail call fastcc void @uriPreventLeakageA(ptr noundef %0, i32 noundef %i.tl, ptr noundef %3)
  br label %bb.ef

.critedge:                                        ; preds = %.loopexit
  tail call void @uriFixEmptyTrailSegmentA(ptr noundef nonnull %0, ptr noundef %3) #6
  br label %.loopexit316

.loopexit316:                                     ; preds = %.loopexit315, %.critedge
  %i.tt = phi i32 [ %i.tl, %.critedge ], [ %i.pq, %.loopexit315 ] ; 2 uses
  br i1 %.not212, label %.thread308, label %.loopexit316.thread

.loopexit316.thread:                              ; preds = %uriContainsUglyPercentEncodingA.exit258.thread302, %.thread309, %.loopexit316
  %i.tu = phi i32 [ %i.pq, %.thread309 ], [ %i.tt, %.loopexit316 ], [ %i.pq, %uriContainsUglyPercentEncodingA.exit258.thread302 ]
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !56 ; 4 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !57 ; 3 uses
  %i.tz = icmp ne ptr %i.tw, null
  %i.ua = icmp ugt ptr %i.ty, %i.tw
  %or.cond29.i268 = and i1 %i.tz, %i.ua
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tw, i64 2 ; 2 uses
  %i.uc = icmp ult ptr %i.ub, %i.ty
  %or.cond.i269 = select i1 %or.cond29.i268, i1 %i.uc, i1 false
  br i1 %or.cond.i269, label %.lr.ph.i271, label %uriContainsUglyPercentEncodingA.exit276

.lr.ph.i271:                                      ; preds = %.loopexit316.thread, %bb.by
  %i.ud = phi ptr [ %i.uu, %bb.by ], [ %i.ub, %.loopexit316.thread ] ; 2 uses
  %.02132.i272 = phi ptr [ %i.ut, %bb.by ], [ %i.tw, %.loopexit316.thread ] ; 4 uses
  %i.ue = load i8, ptr %.02132.i272, align 1, !tbaa !17
  %i.uf = icmp eq i8 %i.ue, 37
  br i1 %i.uf, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %.lr.ph.i271
  %i.ug = getelementptr inbounds nuw i8, ptr %.02132.i272, i64 1
  %i.uh = load i8, ptr %i.ug, align 1, !tbaa !17  ; 2 uses
  %i.ui = add i8 %i.uh, -97
  %or.cond30.i273 = icmp ult i8 %i.ui, 6
  br i1 %or.cond30.i273, label %uriContainsUglyPercentEncodingA.exit276, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.uj = load i8, ptr %i.ud, align 1, !tbaa !17
  %i.uk = add i8 %i.uj, -97
  %or.cond31.i274 = icmp ult i8 %i.uk, 6
  br i1 %or.cond31.i274, label %uriContainsUglyPercentEncodingA.exit276, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ul = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.uh) #6
  %i.um = load i8, ptr %i.ud, align 1, !tbaa !17
  %i.un = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.um) #6
  %i.uo = zext i8 %i.ul to i32
  %i.up = shl nuw nsw i32 %i.uo, 4
  %i.uq = zext i8 %i.un to i32
  %i.ur = add nuw nsw i32 %i.up, %i.uq
  %i.us = tail call i32 @uriIsUnreserved(i32 noundef %i.ur) #6
  %.not.i275 = icmp eq i32 %i.us, 0
  br i1 %.not.i275, label %bb.by, label %uriContainsUglyPercentEncodingA.exit276

bb.by:                                            ; preds = %bb.bx, %.lr.ph.i271
  %i.ut = getelementptr inbounds nuw i8, ptr %.02132.i272, i64 1
  %i.uu = getelementptr inbounds nuw i8, ptr %.02132.i272, i64 3 ; 2 uses
  %i.uv = icmp ult ptr %i.uu, %i.ty
  br i1 %i.uv, label %.lr.ph.i271, label %uriContainsUglyPercentEncodingA.exit276, !llvm.loop !22

uriContainsUglyPercentEncodingA.exit276:          ; preds = %bb.bv, %bb.bw, %bb.bx, %bb.by, %.loopexit316.thread
  %.not208 = phi i1 [ true, %.loopexit316.thread ], [ false, %bb.bx ], [ true, %bb.by ], [ false, %bb.bv ], [ false, %bb.bw ]
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !58 ; 4 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !59 ; 3 uses
  %i.va = icmp ne ptr %i.ux, null
  %i.vb = icmp ugt ptr %i.uz, %i.ux
  %or.cond29.i277 = and i1 %i.va, %i.vb
  %i.vc = getelementptr inbounds nuw i8, ptr %i.ux, i64 2 ; 2 uses
  %i.vd = icmp ult ptr %i.vc, %i.uz
  %or.cond.i278 = select i1 %or.cond29.i277, i1 %i.vd, i1 false
  br i1 %or.cond.i278, label %.lr.ph.i280, label %uriContainsUglyPercentEncodingA.exit285

.lr.ph.i280:                                      ; preds = %uriContainsUglyPercentEncodingA.exit276, %bb.cc
  %i.ve = phi ptr [ %i.vv, %bb.cc ], [ %i.vc, %uriContainsUglyPercentEncodingA.exit276 ] ; 2 uses
  %.02132.i281 = phi ptr [ %i.vu, %bb.cc ], [ %i.ux, %uriContainsUglyPercentEncodingA.exit276 ] ; 4 uses
  %i.vf = load i8, ptr %.02132.i281, align 1, !tbaa !17
  %i.vg = icmp eq i8 %i.vf, 37
  br i1 %i.vg, label %bb.bz, label %bb.cc

bb.bz:                                            ; preds = %.lr.ph.i280
  %i.vh = getelementptr inbounds nuw i8, ptr %.02132.i281, i64 1
  %i.vi = load i8, ptr %i.vh, align 1, !tbaa !17  ; 2 uses
  %i.vj = add i8 %i.vi, -97
  %or.cond30.i282 = icmp ult i8 %i.vj, 6
  br i1 %or.cond30.i282, label %uriContainsUglyPercentEncodingA.exit285, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.vk = load i8, ptr %i.ve, align 1, !tbaa !17
  %i.vl = add i8 %i.vk, -97
  %or.cond31.i283 = icmp ult i8 %i.vl, 6
  br i1 %or.cond31.i283, label %uriContainsUglyPercentEncodingA.exit285, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.vm = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.vi) #6
  %i.vn = load i8, ptr %i.ve, align 1, !tbaa !17
  %i.vo = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.vn) #6
  %i.vp = zext i8 %i.vm to i32
  %i.vq = shl nuw nsw i32 %i.vp, 4
  %i.vr = zext i8 %i.vo to i32
  %i.vs = add nuw nsw i32 %i.vq, %i.vr
  %i.vt = tail call i32 @uriIsUnreserved(i32 noundef %i.vs) #6
  %.not.i284 = icmp eq i32 %i.vt, 0
  br i1 %.not.i284, label %bb.cc, label %uriContainsUglyPercentEncodingA.exit285

bb.cc:                                            ; preds = %bb.cb, %.lr.ph.i280
  %i.vu = getelementptr inbounds nuw i8, ptr %.02132.i281, i64 1
  %i.vv = getelementptr inbounds nuw i8, ptr %.02132.i281, i64 3 ; 2 uses
  %i.vw = icmp ult ptr %i.vv, %i.uz
  br i1 %i.vw, label %.lr.ph.i280, label %uriContainsUglyPercentEncodingA.exit285, !llvm.loop !22

uriContainsUglyPercentEncodingA.exit285:          ; preds = %bb.bz, %bb.ca, %bb.cb, %bb.cc, %uriContainsUglyPercentEncodingA.exit276
  %.not209 = phi i1 [ true, %uriContainsUglyPercentEncodingA.exit276 ], [ false, %bb.cb ], [ true, %bb.cc ], [ false, %bb.bz ], [ false, %bb.ca ]
  br i1 %.not208, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %uriContainsUglyPercentEncodingA.exit285
  %i.vx = load i32, ptr %2, align 4, !tbaa !3
  %i.vy = or i32 %i.vx, 16
  store i32 %i.vy, ptr %2, align 4, !tbaa !3
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %uriContainsUglyPercentEncodingA.exit285
  br i1 %.not209, label %bb.cs, label %.thread311

.thread311:                                       ; preds = %bb.ce
  %i.vz = load i32, ptr %2, align 4, !tbaa !3
  %i.wa = or i32 %i.vz, 32
  store i32 %i.wa, ptr %2, align 4, !tbaa !3
  br label %bb.ef

.thread308:                                       ; preds = %uriContainsUglyPercentEncodingA.exit258.thread300, %.loopexit316
  %i.wb = phi i32 [ %i.sq, %uriContainsUglyPercentEncodingA.exit258.thread300 ], [ %i.tt, %.loopexit316 ] ; 5 uses
  %i.wc = and i32 %1, 16
  %.not200 = icmp eq i32 %i.wc, 0
  br i1 %.not200, label %bb.cl, label %bb.cf

bb.cf:                                            ; preds = %.thread308
  %i.wd = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.we = load ptr, ptr %i.wd, align 8, !tbaa !56 ; 2 uses
  %.not201 = icmp eq ptr %i.we, null
  br i1 %.not201, label %bb.cl, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.wf = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !23
  %.not202 = icmp eq i32 %i.wg, 0
  %i.wh = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  br i1 %.not202, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  tail call fastcc void @uriFixPercentEncodingInplaceA(ptr noundef nonnull %i.we, ptr noundef %i.wh)
  br label %bb.cl

bb.ci:                                            ; preds = %bb.cg
  %i.wi = tail call fastcc i32 @uriFixPercentEncodingMallocA(ptr noundef %i.wd, ptr noundef %i.wh, ptr noundef %3)
  %.not203 = icmp eq i32 %i.wi, 0
  br i1 %.not203, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  tail call fastcc void @uriPreventLeakageA(ptr noundef %0, i32 noundef %i.wb, ptr noundef %3)
  br label %bb.ef

bb.ck:                                            ; preds = %bb.ci
  %i.wj = or i32 %i.wb, 16                        ; 2 uses
  store i32 %i.wj, ptr %i.a, align 4, !tbaa !3
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ch, %bb.ck, %bb.cf, %.thread308
  %i.wk = phi i32 [ %i.wb, %bb.ch ], [ %i.wj, %bb.ck ], [ %i.wb, %bb.cf ], [ %i.wb, %.thread308 ] ; 5 uses
  %i.wl = and i32 %1, 32
  %.not204 = icmp eq i32 %i.wl, 0
  br i1 %.not204, label %.thread310, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.wm = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !58 ; 2 uses
  %.not205 = icmp eq ptr %i.wn, null
  br i1 %.not205, label %.thread310, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.wo = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.wp = load i32, ptr %i.wo, align 4, !tbaa !23
  %.not206 = icmp eq i32 %i.wp, 0
  %i.wq = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  br i1 %.not206, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  tail call fastcc void @uriFixPercentEncodingInplaceA(ptr noundef nonnull %i.wn, ptr noundef %i.wq)
  br label %.thread310

bb.cp:                                            ; preds = %bb.cn
  %i.wr = tail call fastcc i32 @uriFixPercentEncodingMallocA(ptr noundef %i.wm, ptr noundef %i.wq, ptr noundef %3)
  %.not207 = icmp eq i32 %i.wr, 0
  br i1 %.not207, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  tail call fastcc void @uriPreventLeakageA(ptr noundef %0, i32 noundef %i.wk, ptr noundef %3)
  br label %bb.ef

bb.cr:                                            ; preds = %bb.cp
  %i.ws = or i32 %i.wk, 32                        ; 2 uses
  store i32 %i.ws, ptr %i.a, align 4, !tbaa !3
  br label %.thread310

bb.cs:                                            ; preds = %bb.ce
  br i1 %.not212, label %.thread310, label %bb.ef

.thread310:                                       ; preds = %bb.co, %bb.cr, %bb.cm, %bb.cl, %bb.cs
  %i.wt = phi i32 [ %i.wk, %bb.co ], [ %i.ws, %bb.cr ], [ %i.wk, %bb.cm ], [ %i.wk, %bb.cl ], [ %i.tu, %bb.cs ] ; 5 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.wv = load i32, ptr %i.wu, align 4, !tbaa !23
  %.not210 = icmp eq i32 %i.wv, 0
  br i1 %.not210, label %bb.ct, label %bb.ef

bb.ct:                                            ; preds = %.thread310
  %i.ww = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.wx = load ptr, ptr %i.ww, align 8, !tbaa !52 ; 2 uses
  %i.wy = and i32 %i.wt, 1
  %i.wz = icmp eq i32 %i.wy, 0
  br i1 %i.wz, label %bb.cu, label %bb.cx

bb.cu:                                            ; preds = %bb.ct
  %i.xa = load ptr, ptr %0, align 8, !tbaa !60    ; 3 uses
  %.not.i.i = icmp eq ptr %i.xa, null
  br i1 %.not.i.i, label %bb.cx, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.xb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.xc = load ptr, ptr %i.xb, align 8, !tbaa !61 ; 2 uses
  %i.xd = icmp ugt ptr %i.xc, %i.xa
  br i1 %i.xd, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.xe = ptrtoint ptr %i.xc to i64
  %i.xf = ptrtoint ptr %i.xa to i64
  %i.xg = sub i64 %i.xe, %i.xf
  %sext.i.i = shl i64 %i.xg, 32
  %i.xh = ashr exact i64 %sext.i.i, 32            ; 3 uses
  %i.xi = load ptr, ptr %3, align 8, !tbaa !31
  %i.xj = tail call ptr %i.xi(ptr noundef nonnull %3, i64 noundef %i.xh) #6, !inline_history !62 ; 4 uses
  %i.xk = icmp eq ptr %i.xj, null
  br i1 %i.xk, label %bb.ee, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.cw
  %i.xl = load ptr, ptr %0, align 8, !tbaa !60
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.xj, ptr align 1 %i.xl, i64 %i.xh, i1 false)
  store ptr %i.xj, ptr %0, align 8, !tbaa !60
  %i.xm = getelementptr inbounds i8, ptr %i.xj, i64 %i.xh
  store ptr %i.xm, ptr %i.xb, align 8, !tbaa !61
  %i.xn = or disjoint i32 %i.wt, 1                ; 2 uses
  store i32 %i.xn, ptr %i.a, align 4, !tbaa !3
  br label %bb.cx

bb.cx:                                            ; preds = %.thread.i.i, %bb.cv, %bb.cu, %bb.ct
  %i.xo = phi i32 [ %i.xn, %.thread.i.i ], [ %i.wt, %bb.cv ], [ %i.wt, %bb.cu ], [ %i.wt, %bb.ct ] ; 5 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.xq = and i32 %i.xo, 2
  %i.xr = icmp eq i32 %i.xq, 0
  br i1 %i.xr, label %bb.cy, label %bb.db

bb.cy:                                            ; preds = %bb.cx
  %i.xs = load ptr, ptr %i.xp, align 8, !tbaa !60 ; 3 uses
  %.not.i80.i = icmp eq ptr %i.xs, null
  br i1 %.not.i80.i, label %bb.db, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.xt = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !61 ; 2 uses
  %i.xv = icmp ugt ptr %i.xu, %i.xs
  br i1 %i.xv, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.xw = ptrtoint ptr %i.xu to i64
  %i.xx = ptrtoint ptr %i.xs to i64
  %i.xy = sub i64 %i.xw, %i.xx
  %sext.i81.i = shl i64 %i.xy, 32
  %i.xz = ashr exact i64 %sext.i81.i, 32          ; 3 uses
  %i.ya = load ptr, ptr %3, align 8, !tbaa !31
  %i.yb = tail call ptr %i.ya(ptr noundef nonnull %3, i64 noundef %i.xz) #6, !inline_history !62 ; 4 uses
  %i.yc = icmp eq ptr %i.yb, null
  br i1 %i.yc, label %bb.ee, label %.thread.i82.i

.thread.i82.i:                                    ; preds = %bb.da
  %i.yd = load ptr, ptr %i.xp, align 8, !tbaa !60
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.yb, ptr align 1 %i.yd, i64 %i.xz, i1 false)
  store ptr %i.yb, ptr %i.xp, align 8, !tbaa !60
  %i.ye = getelementptr inbounds i8, ptr %i.yb, i64 %i.xz
  store ptr %i.ye, ptr %i.xt, align 8, !tbaa !61
  %i.yf = or disjoint i32 %i.xo, 2                ; 2 uses
  store i32 %i.yf, ptr %i.a, align 4, !tbaa !3
  br label %bb.db

bb.db:                                            ; preds = %.thread.i82.i, %bb.cz, %bb.cy, %bb.cx
  %i.yg = phi i32 [ %i.yf, %.thread.i82.i ], [ %i.xo, %bb.cz ], [ %i.xo, %bb.cy ], [ %i.xo, %bb.cx ] ; 5 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.yi = and i32 %i.yg, 16
  %i.yj = icmp eq i32 %i.yi, 0
  br i1 %i.yj, label %bb.dc, label %bb.df

bb.dc:                                            ; preds = %bb.db
  %i.yk = load ptr, ptr %i.yh, align 8, !tbaa !60 ; 3 uses
  %.not.i85.i = icmp eq ptr %i.yk, null
  br i1 %.not.i85.i, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.yl = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ym = load ptr, ptr %i.yl, align 8, !tbaa !61 ; 2 uses
  %i.yn = icmp ugt ptr %i.ym, %i.yk
  br i1 %i.yn, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.yo = ptrtoint ptr %i.ym to i64
  %i.yp = ptrtoint ptr %i.yk to i64
  %i.yq = sub i64 %i.yo, %i.yp
  %sext.i86.i = shl i64 %i.yq, 32
  %i.yr = ashr exact i64 %sext.i86.i, 32          ; 3 uses
  %i.ys = load ptr, ptr %3, align 8, !tbaa !31
  %i.yt = tail call ptr %i.ys(ptr noundef nonnull %3, i64 noundef %i.yr) #6, !inline_history !62 ; 4 uses
  %i.yu = icmp eq ptr %i.yt, null
  br i1 %i.yu, label %bb.ee, label %.thread.i87.i

.thread.i87.i:                                    ; preds = %bb.de
  %i.yv = load ptr, ptr %i.yh, align 8, !tbaa !60
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.yt, ptr align 1 %i.yv, i64 %i.yr, i1 false)
  store ptr %i.yt, ptr %i.yh, align 8, !tbaa !60
  %i.yw = getelementptr inbounds i8, ptr %i.yt, i64 %i.yr
  store ptr %i.yw, ptr %i.yl, align 8, !tbaa !61
  %i.yx = or disjoint i32 %i.yg, 16               ; 2 uses
  store i32 %i.yx, ptr %i.a, align 4, !tbaa !3
  br label %bb.df

bb.df:                                            ; preds = %.thread.i87.i, %bb.dd, %bb.dc, %bb.db
  %i.yy = phi i32 [ %i.yx, %.thread.i87.i ], [ %i.yg, %bb.dd ], [ %i.yg, %bb.dc ], [ %i.yg, %bb.db ] ; 5 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.za = and i32 %i.yy, 32
  %i.zb = icmp eq i32 %i.za, 0
  br i1 %i.zb, label %bb.dg, label %bb.dj

bb.dg:                                            ; preds = %bb.df
  %i.zc = load ptr, ptr %i.yz, align 8, !tbaa !60 ; 3 uses
  %.not.i90.i = icmp eq ptr %i.zc, null
  br i1 %.not.i90.i, label %bb.dj, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.zd = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ze = load ptr, ptr %i.zd, align 8, !tbaa !61 ; 2 uses
  %i.zf = icmp ugt ptr %i.ze, %i.zc
  br i1 %i.zf, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.zg = ptrtoint ptr %i.ze to i64
  %i.zh = ptrtoint ptr %i.zc to i64
  %i.zi = sub i64 %i.zg, %i.zh
  %sext.i91.i = shl i64 %i.zi, 32
  %i.zj = ashr exact i64 %sext.i91.i, 32          ; 3 uses
  %i.zk = load ptr, ptr %3, align 8, !tbaa !31
  %i.zl = tail call ptr %i.zk(ptr noundef nonnull %3, i64 noundef %i.zj) #6, !inline_history !62 ; 4 uses
  %i.zm = icmp eq ptr %i.zl, null
  br i1 %i.zm, label %bb.ee, label %.thread.i92.i

.thread.i92.i:                                    ; preds = %bb.di
  %i.zn = load ptr, ptr %i.yz, align 8, !tbaa !60
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.zl, ptr align 1 %i.zn, i64 %i.zj, i1 false)
  store ptr %i.zl, ptr %i.yz, align 8, !tbaa !60
  %i.zo = getelementptr inbounds i8, ptr %i.zl, i64 %i.zj
  store ptr %i.zo, ptr %i.zd, align 8, !tbaa !61
  %i.zp = or disjoint i32 %i.yy, 32               ; 2 uses
  store i32 %i.zp, ptr %i.a, align 4, !tbaa !3
  br label %bb.dj

bb.dj:                                            ; preds = %.thread.i92.i, %bb.dh, %bb.dg, %bb.df
  %i.zq = phi i32 [ %i.zp, %.thread.i92.i ], [ %i.yy, %bb.dh ], [ %i.yy, %bb.dg ], [ %i.yy, %bb.df ]
  %i.zr = and i32 %i.zq, 4
  %i.zs = icmp eq i32 %i.zr, 0
  br i1 %i.zs, label %bb.dk, label %bb.dr

bb.dk:                                            ; preds = %bb.dj
  %i.zt = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.zu = load ptr, ptr %i.zt, align 8, !tbaa !40
  %i.zv = icmp eq ptr %i.zu, null
  br i1 %i.zv, label %bb.dl, label %bb.dr

bb.dl:                                            ; preds = %bb.dk
  %i.zw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !41
  %i.zy = icmp eq ptr %i.zx, null
  br i1 %i.zy, label %bb.dm, label %bb.dr

bb.dm:                                            ; preds = %bb.dl
  %i.zz = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.aaa = load ptr, ptr %i.zz, align 8, !tbaa !35
  %.not68.i = icmp eq ptr %i.aaa, null
  br i1 %.not68.i, label %bb.dp, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.aab = call fastcc i32 @uriMakeRangeOwnerA(ptr noundef nonnull %i.a, i32 noundef 4, ptr noundef %i.zz, ptr noundef %3)
  %.not71.i = icmp eq i32 %i.aab, 0
  br i1 %.not71.i, label %bb.ee, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.aac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aad = load <2 x ptr>, ptr %i.zz, align 8, !tbaa !24
  store <2 x ptr> %i.aad, ptr %i.aac, align 8, !tbaa !24
  br label %bb.dr

bb.dp:                                            ; preds = %bb.dm
  %i.aae = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !20
  %.not69.i = icmp eq ptr %i.aaf, null
  br i1 %.not69.i, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.aag = call fastcc i32 @uriMakeRangeOwnerA(ptr noundef nonnull %i.a, i32 noundef 4, ptr noundef %i.aae, ptr noundef %3)
  %.not70.i = icmp eq i32 %i.aag, 0
  br i1 %.not70.i, label %bb.ee, label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp, %bb.do, %bb.dl, %bb.dk, %bb.dj
  %i.aah = load i32, ptr %i.a, align 4, !tbaa !3  ; 2 uses
  %i.aai = and i32 %i.aah, 8
  %i.aaj = icmp eq i32 %i.aai, 0
  br i1 %i.aaj, label %.preheader116.i, label %bb.eb

.preheader116.i:                                  ; preds = %bb.dr
  %.not72118.i = icmp eq ptr %i.wx, null
  br i1 %.not72118.i, label %._crit_edge.i287, label %.lr.ph.i286

.lr.ph.i286:                                      ; preds = %.preheader116.i, %bb.ea
  %.062119.i = phi ptr [ %i.abm, %bb.ea ], [ %i.wx, %.preheader116.i ] ; 8 uses
  %i.aak = load ptr, ptr %.062119.i, align 8, !tbaa !60 ; 3 uses
  %.not.i95.i = icmp eq ptr %i.aak, null
  br i1 %.not.i95.i, label %bb.ea, label %bb.ds

bb.ds:                                            ; preds = %.lr.ph.i286
  %i.aal = getelementptr inbounds nuw i8, ptr %.062119.i, i64 8 ; 2 uses
  %i.aam = load ptr, ptr %i.aal, align 8, !tbaa !61 ; 2 uses
  %i.aan = icmp ugt ptr %i.aam, %i.aak
  br i1 %i.aan, label %bb.dt, label %bb.ea

bb.dt:                                            ; preds = %bb.ds
  %i.aao = ptrtoint ptr %i.aam to i64
  %i.aap = ptrtoint ptr %i.aak to i64
  %i.aaq = sub i64 %i.aao, %i.aap
  %sext.i96.i = shl i64 %i.aaq, 32
  %i.aar = ashr exact i64 %sext.i96.i, 32         ; 3 uses
  %i.aas = load ptr, ptr %3, align 8, !tbaa !31
  %i.aat = tail call ptr %i.aas(ptr noundef nonnull %3, i64 noundef %i.aar) #6, !inline_history !62 ; 4 uses
  %i.aau = icmp eq ptr %i.aat, null
  br i1 %i.aau, label %uriMakeRangeOwnerA.exit98.i, label %.thread.i97.i

.thread.i97.i:                                    ; preds = %bb.dt
  %i.aav = load ptr, ptr %.062119.i, align 8, !tbaa !60
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aat, ptr align 1 %i.aav, i64 %i.aar, i1 false)
  store ptr %i.aat, ptr %.062119.i, align 8, !tbaa !60
  %i.aaw = getelementptr inbounds i8, ptr %i.aat, i64 %i.aar
  store ptr %i.aaw, ptr %i.aal, align 8, !tbaa !61
  br label %bb.ea

uriMakeRangeOwnerA.exit98.i:                      ; preds = %bb.dt
  %i.aax = load ptr, ptr %i.ww, align 8, !tbaa !52 ; 2 uses
  %.not75120.i = icmp eq ptr %i.aax, %.062119.i
  br i1 %.not75120.i, label %.preheader.i288, label %.lr.ph122.i

.lr.ph122.i:                                      ; preds = %uriMakeRangeOwnerA.exit98.i
  %i.aay = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  br label %bb.du

.preheader.i288:                                  ; preds = %bb.dx, %uriMakeRangeOwnerA.exit98.i
  %i.aaz = getelementptr inbounds nuw i8, ptr %3, i64 32
  br label %bb.dy

bb.du:                                            ; preds = %bb.dx, %.lr.ph122.i
  %.061121.i = phi ptr [ %i.aax, %.lr.ph122.i ], [ %i.abb, %bb.dx ] ; 4 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %.061121.i, i64 16
  %i.abb = load ptr, ptr %i.aba, align 8, !tbaa !53 ; 2 uses
  %i.abc = load ptr, ptr %.061121.i, align 8, !tbaa !48 ; 3 uses
  %.not77.i = icmp eq ptr %i.abc, null
  br i1 %.not77.i, label %bb.dx, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.abd = getelementptr inbounds nuw i8, ptr %.061121.i, i64 8
  %i.abe = load ptr, ptr %i.abd, align 8, !tbaa !50
  %i.abf = icmp ugt ptr %i.abe, %i.abc
  br i1 %i.abf, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.abg = load ptr, ptr %i.aay, align 8, !tbaa !63
  tail call void %i.abg(ptr noundef nonnull %3, ptr noundef nonnull %i.abc) #6, !inline_history !64
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv, %bb.du
  %i.abh = load ptr, ptr %i.aay, align 8, !tbaa !63
  tail call void %i.abh(ptr noundef nonnull %3, ptr noundef nonnull %.061121.i) #6, !inline_history !64
  %.not75.i = icmp eq ptr %i.abb, %.062119.i
  br i1 %.not75.i, label %.preheader.i288, label %bb.du, !llvm.loop !65

bb.dy:                                            ; preds = %bb.dy, %.preheader.i288
  %.1123.i = phi ptr [ %.062119.i, %.preheader.i288 ], [ %i.abj, %bb.dy ] ; 2 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %.1123.i, i64 16
  %i.abj = load ptr, ptr %i.abi, align 8, !tbaa !53 ; 2 uses
  %i.abk = load ptr, ptr %i.aaz, align 8, !tbaa !63
  tail call void %i.abk(ptr noundef nonnull %3, ptr noundef nonnull %.1123.i) #6, !inline_history !64
  %.not76.i = icmp eq ptr %i.abj, null
  br i1 %.not76.i, label %bb.dz, label %bb.dy, !llvm.loop !66

bb.dz:                                            ; preds = %bb.dy
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ww, i8 0, i64 16, i1 false)
  br label %bb.ee

bb.ea:                                            ; preds = %.thread.i97.i, %bb.ds, %.lr.ph.i286
  %i.abl = getelementptr inbounds nuw i8, ptr %.062119.i, i64 16
  %i.abm = load ptr, ptr %i.abl, align 8, !tbaa !53 ; 2 uses
  %.not72.i = icmp eq ptr %i.abm, null
  br i1 %.not72.i, label %._crit_edge.i287, label %.lr.ph.i286, !llvm.loop !67

._crit_edge.i287:                                 ; preds = %bb.ea, %.preheader116.i
  %i.abn = or disjoint i32 %i.aah, 8
  store i32 %i.abn, ptr %i.a, align 4, !tbaa !3
  br label %bb.eb

bb.eb:                                            ; preds = %._crit_edge.i287, %bb.dr
  %i.abo = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.abp = load ptr, ptr %i.abo, align 8, !tbaa !60 ; 3 uses
  %.not.i100.i = icmp eq ptr %i.abp, null
  br i1 %.not.i100.i, label %uriMakeOwnerA.exit, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.abq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !61 ; 2 uses
  %i.abs = icmp ugt ptr %i.abr, %i.abp
  br i1 %i.abs, label %bb.ed, label %uriMakeOwnerA.exit

bb.ed:                                            ; preds = %bb.ec
  %i.abt = ptrtoint ptr %i.abr to i64
  %i.abu = ptrtoint ptr %i.abp to i64
  %i.abv = sub i64 %i.abt, %i.abu
  %sext.i101.i = shl i64 %i.abv, 32
  %i.abw = ashr exact i64 %sext.i101.i, 32        ; 3 uses
  %i.abx = load ptr, ptr %3, align 8, !tbaa !31
  %i.aby = tail call ptr %i.abx(ptr noundef nonnull %3, i64 noundef %i.abw) #6, !inline_history !62 ; 4 uses
  %i.abz = icmp eq ptr %i.aby, null
  br i1 %i.abz, label %bb.ee, label %.thread.i102.i

.thread.i102.i:                                   ; preds = %bb.ed
  %i.aca = load ptr, ptr %i.abo, align 8, !tbaa !60
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aby, ptr align 1 %i.aca, i64 %i.abw, i1 false)
  store ptr %i.aby, ptr %i.abo, align 8, !tbaa !60
  %i.acb = getelementptr inbounds i8, ptr %i.aby, i64 %i.abw
  store ptr %i.acb, ptr %i.abq, align 8, !tbaa !61
  br label %uriMakeOwnerA.exit

bb.ee:                                            ; preds = %bb.dz, %bb.dq, %bb.di, %bb.cw, %bb.dn, %bb.de, %bb.da, %bb.ed
  %i.acc = load i32, ptr %i.a, align 4, !tbaa !3
  tail call fastcc void @uriPreventLeakageA(ptr noundef %0, i32 noundef %i.acc, ptr noundef %3)
  br label %bb.ef

uriMakeOwnerA.exit:                               ; preds = %.thread.i102.i, %bb.ec, %bb.eb
  store i32 1, ptr %i.wu, align 4, !tbaa !23
  br label %bb.ef

bb.ef:                                            ; preds = %.thread311, %bb.cs, %.thread310, %uriMakeOwnerA.exit, %bb.bs, %bb.bu, %bb.e, %bb.b, %bb.ee, %bb.cq, %bb.cj, %bb.be, %bb.ap, %bb.ai, %bb.y, %bb.c
  %.1160 = phi i32 [ 0, %bb.c ], [ 2, %bb.b ], [ 3, %bb.bs ], [ 3, %bb.ee ], [ 3, %bb.cq ], [ 3, %bb.cj ], [ 0, %bb.e ], [ 3, %bb.be ], [ 3, %bb.ai ], [ 3, %bb.ap ], [ 3, %bb.y ], [ 3, %bb.bu ], [ 0, %uriMakeOwnerA.exit ], [ 0, %.thread310 ], [ 0, %bb.cs ], [ 0, %.thread311 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.1160
}

; Function Attrs: nounwind uwtable
define range(i32 0, 4) i32 @uriNormalizeSyntaxExA(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @uriNormalizeSyntaxEngineA(ptr noundef %0, i32 noundef %1, ptr noundef null, ptr noundef nonnull @defaultMemoryManager)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define range(i32 0, 11) i32 @uriNormalizeSyntaxExMmA(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @uriMemoryManagerIsComplete(ptr noundef nonnull %2) #6
  %.not = icmp eq i32 %i.b, 1
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %2, %bb.b ], [ @defaultMemoryManager, %bb.a ]
  %i.c = tail call fastcc i32 @uriNormalizeSyntaxEngineA(ptr noundef %0, i32 noundef %1, ptr noundef null, ptr noundef nonnull %.0)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.05 = phi i32 [ %i.c, %bb.c ], [ 10, %bb.b ]
  ret i32 %.05
}

declare i32 @uriMemoryManagerIsComplete(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 0, 4) i32 @uriNormalizeSyntaxA(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc range(i32 0, 4) i32 @uriNormalizeSyntaxEngineA(ptr noundef %0, i32 noundef -1, ptr noundef null, ptr noundef nonnull @defaultMemoryManager)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define i32 @uriNormalizeSyntaxMaskRequiredW(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.UriUriStructW, align 8      ; 4 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %uriNormalizeSyntaxMaskRequiredExW.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull readonly align 8 dereferenceable(160) %0, i64 160, i1 false)
  %i.c = call fastcc i32 @uriNormalizeSyntaxEngineW(ptr noundef nonnull %1, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef null) ; 0 uses
  %.pre = load i32, ptr %i.a, align 4, !tbaa !3
  br label %uriNormalizeSyntaxMaskRequiredExW.exit

uriNormalizeSyntaxMaskRequiredExW.exit:           ; preds = %bb.a, %bb.b
  %i.d = phi i32 [ 0, %bb.a ], [ %.pre, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define range(i32 0, 3) i32 @uriNormalizeSyntaxMaskRequiredExW(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.UriUriStructW, align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull align 8 dereferenceable(160) %0, i64 160, i1 false)
  %i.c = call fastcc i32 @uriNormalizeSyntaxEngineW(ptr noundef nonnull %2, i32 noundef 0, ptr noundef nonnull %1, ptr noundef null) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 2, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret i32 %.0
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 4) i32 @uriNormalizeSyntaxEngineW(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(address_is_null) %2, ptr noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.b = icmp eq ptr %0, null
  %.not212 = icmp eq ptr %2, null                 ; 6 uses
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %.not212, label %bb.ef, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %2, align 4, !tbaa !3
  br label %bb.ef

bb.d:                                             ; preds = %bb.a
  br i1 %.not212, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.c = icmp eq i32 %1, 0
  br i1 %i.c, label %bb.ef, label %bb.o

bb.f:                                             ; preds = %bb.d
  store i32 0, ptr %2, align 4, !tbaa !3
  %i.d = load ptr, ptr %0, align 8, !tbaa !68     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !74   ; 2 uses
  %i.g = icmp ne ptr %i.d, null
  %i.h = icmp ugt ptr %i.f, %i.d
  %or.cond17.i = and i1 %i.g, %i.h
  br i1 %or.cond17.i, label %.preheader.i, label %uriContainsUppercaseLettersW.exit

.preheader.i:                                     ; preds = %bb.f, %.preheader.i
  %.01219.i = phi ptr [ %i.k, %.preheader.i ], [ %i.d, %bb.f ] ; 2 uses
  %i.i = load i32, ptr %.01219.i, align 4, !tbaa !3
  %i.j = add i32 %i.i, -91
  %or.cond18.i = icmp ult i32 %i.j, -26           ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.01219.i, i64 4 ; 2 uses
  %i.l = icmp ult ptr %i.k, %i.f
  %or.cond = select i1 %or.cond18.i, i1 %i.l, i1 false
  br i1 %or.cond, label %.preheader.i, label %uriContainsUppercaseLettersW.exit, !llvm.loop !75

uriContainsUppercaseLettersW.exit:                ; preds = %.preheader.i, %bb.f
  %.not183 = phi i1 [ true, %bb.f ], [ %or.cond18.i, %.preheader.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !76   ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !77   ; 4 uses
  %i.q = icmp ne ptr %i.n, null
  %i.r = icmp ugt ptr %i.p, %i.n
  %or.cond17.i214 = and i1 %i.q, %i.r             ; 2 uses
  br i1 %or.cond17.i214, label %.preheader.i216, label %uriContainsUppercaseLettersW.exit219

.preheader.i216:                                  ; preds = %uriContainsUppercaseLettersW.exit, %.preheader.i216
  %.01219.i217 = phi ptr [ %i.u, %.preheader.i216 ], [ %i.n, %uriContainsUppercaseLettersW.exit ] ; 2 uses
  %i.s = load i32, ptr %.01219.i217, align 4, !tbaa !3
  %i.t = add i32 %i.s, -91
  %or.cond18.i218 = icmp ult i32 %i.t, -26        ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.01219.i217, i64 4 ; 2 uses
  %i.v = icmp ult ptr %i.u, %i.p
  %or.cond529 = select i1 %or.cond18.i218, i1 %i.v, i1 false
  br i1 %or.cond529, label %.preheader.i216, label %uriContainsUppercaseLettersW.exit219, !llvm.loop !75

uriContainsUppercaseLettersW.exit219:             ; preds = %.preheader.i216, %uriContainsUppercaseLettersW.exit
  %.not184 = phi i1 [ true, %uriContainsUppercaseLettersW.exit ], [ %or.cond18.i218, %.preheader.i216 ]
  br i1 %.not183, label %bb.h, label %bb.g

bb.g:                                             ; preds = %uriContainsUppercaseLettersW.exit219
  store i32 1, ptr %2, align 4, !tbaa !3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %uriContainsUppercaseLettersW.exit219
  %i.w = phi i32 [ 5, %bb.g ], [ 4, %uriContainsUppercaseLettersW.exit219 ]
  br i1 %.not184, label %bb.i, label %uriContainsUglyPercentEncodingW.exit.thread290.sink.split

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.y = icmp ult ptr %i.x, %i.p
  %or.cond.i = select i1 %or.cond17.i214, i1 %i.y, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %uriContainsUglyPercentEncodingW.exit

.lr.ph.i:                                         ; preds = %bb.i, %bb.m
  %i.z = phi ptr [ %i.aq, %bb.m ], [ %i.x, %bb.i ] ; 2 uses
  %.02132.i = phi ptr [ %i.ap, %bb.m ], [ %i.n, %bb.i ] ; 4 uses
  %i.aa = load i32, ptr %.02132.i, align 4, !tbaa !3
  %i.ab = icmp eq i32 %i.aa, 37
  br i1 %i.ab, label %bb.j, label %bb.m

bb.j:                                             ; preds = %.lr.ph.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.02132.i, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3  ; 2 uses
  %i.ae = add i32 %i.ad, -97
  %or.cond30.i = icmp ult i32 %i.ae, 6
  br i1 %or.cond30.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = load i32, ptr %i.z, align 4, !tbaa !3
  %i.ag = add i32 %i.af, -97
  %or.cond31.i = icmp ult i32 %i.ag, 6
  br i1 %or.cond31.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = tail call zeroext i8 @uriHexdigToIntW(i32 noundef %i.ad) #6
  %i.ai = load i32, ptr %i.z, align 4, !tbaa !3
  %i.aj = tail call zeroext i8 @uriHexdigToIntW(i32 noundef %i.ai) #6
  %i.ak = zext i8 %i.ah to i32
  %i.al = shl nuw nsw i32 %i.ak, 4
  %i.am = zext i8 %i.aj to i32
  %i.an = add nuw nsw i32 %i.al, %i.am
  %i.ao = tail call i32 @uriIsUnreserved(i32 noundef %i.an) #6
  %.not.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %.lr.ph.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.02132.i, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %.02132.i, i64 12 ; 2 uses
  %i.ar = icmp ult ptr %i.aq, %i.p
  br i1 %i.ar, label %.lr.ph.i, label %uriContainsUglyPercentEncodingW.exit, !llvm.loop !78

bb.n:                                             ; preds = %bb.k, %bb.j, %bb.l
  %i.as = load i32, ptr %2, align 4, !tbaa !3
  %i.at = or i32 %i.as, 4
  br label %uriContainsUglyPercentEncodingW.exit.thread290.sink.split

bb.o:                                             ; preds = %bb.e
  %i.au = and i32 %1, 1
  %.not172 = icmp eq i32 %i.au, 0
  br i1 %.not172, label %uriLowercaseInplaceW.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = load ptr, ptr %0, align 8, !tbaa !68    ; 14 uses
  %.not173 = icmp eq ptr %i.av, null
  br i1 %.not173, label %uriLowercaseInplaceW.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !79
  %.not174 = icmp eq i32 %i.ax, 0
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !80 ; 5 uses
  br i1 %.not174, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = icmp ugt ptr %i.az, %i.av
  br i1 %i.ba, label %.preheader.i220.preheader, label %uriLowercaseInplaceW.exit

.preheader.i220.preheader:                        ; preds = %bb.r
  %i.bb = ptrtoaddr ptr %i.az to i64
  %i.bc = ptrtoaddr ptr %i.av to i64
  %i.bd = xor i64 %i.bc, -1
  %i.be = add i64 %i.bd, %i.bb                    ; 2 uses
  %i.bf = lshr i64 %i.be, 2
  %i.bg = add nuw nsw i64 %i.bf, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.be, 28
  br i1 %min.iters.check, label %.preheader.i220.preheader538, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i220.preheader
  %n.vec = and i64 %i.bg, 9223372036854775800     ; 3 uses
  %i.bh = shl i64 %n.vec, 2
  %i.bi = getelementptr i8, ptr %i.av, i64 %i.bh
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue428, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue428 ] ; 2 uses
  %i.bj = shl i64 %index, 2                       ; 8 uses
  %next.gep = getelementptr i8, ptr %i.av, i64 %i.bj ; 3 uses
  %i.bk = getelementptr i8, ptr %i.av, i64 %i.bj
  %next.gep407 = getelementptr i8, ptr %i.bk, i64 4
  %i.bl = getelementptr i8, ptr %i.av, i64 %i.bj
  %next.gep408 = getelementptr i8, ptr %i.bl, i64 8
  %i.bm = getelementptr i8, ptr %i.av, i64 %i.bj
  %next.gep409 = getelementptr i8, ptr %i.bm, i64 12
  %i.bn = getelementptr i8, ptr %i.av, i64 %i.bj
  %next.gep410 = getelementptr i8, ptr %i.bn, i64 16
  %i.bo = getelementptr i8, ptr %i.av, i64 %i.bj
  %next.gep411 = getelementptr i8, ptr %i.bo, i64 20
  %i.bp = getelementptr i8, ptr %i.av, i64 %i.bj
  %next.gep412 = getelementptr i8, ptr %i.bp, i64 24
  %i.bq = getelementptr i8, ptr %i.av, i64 %i.bj
  %next.gep413 = getelementptr i8, ptr %i.bq, i64 28
  %i.br = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !3 ; 5 uses
  %wide.load414 = load <4 x i32>, ptr %i.br, align 4, !tbaa !3 ; 5 uses
  %i.bs = add <4 x i32> %wide.load, splat (i32 -65)
  %i.bt = add <4 x i32> %wide.load414, splat (i32 -65)
  %i.bu = icmp ult <4 x i32> %i.bs, splat (i32 26) ; 4 uses
  %i.bv = icmp ult <4 x i32> %i.bt, splat (i32 26) ; 4 uses
  %i.bw = extractelement <4 x i1> %i.bu, i64 0
  br i1 %i.bw, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.bx = extractelement <4 x i32> %wide.load, i64 0
  %i.by = or disjoint i32 %i.bx, 32
  store i32 %i.by, ptr %next.gep, align 4, !tbaa !3
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.bz = extractelement <4 x i1> %i.bu, i64 1
  br i1 %i.bz, label %pred.store.if415, label %pred.store.continue416

pred.store.if415:                                 ; preds = %pred.store.continue
  %i.ca = extractelement <4 x i32> %wide.load, i64 1
  %i.cb = or disjoint i32 %i.ca, 32
  store i32 %i.cb, ptr %next.gep407, align 4, !tbaa !3
  br label %pred.store.continue416

pred.store.continue416:                           ; preds = %pred.store.if415, %pred.store.continue
  %i.cc = extractelement <4 x i1> %i.bu, i64 2
  br i1 %i.cc, label %pred.store.if417, label %pred.store.continue418

pred.store.if417:                                 ; preds = %pred.store.continue416
  %i.cd = extractelement <4 x i32> %wide.load, i64 2
  %i.ce = or disjoint i32 %i.cd, 32
  store i32 %i.ce, ptr %next.gep408, align 4, !tbaa !3
  br label %pred.store.continue418

pred.store.continue418:                           ; preds = %pred.store.if417, %pred.store.continue416
  %i.cf = extractelement <4 x i1> %i.bu, i64 3
  br i1 %i.cf, label %pred.store.if419, label %pred.store.continue420

pred.store.if419:                                 ; preds = %pred.store.continue418
  %i.cg = extractelement <4 x i32> %wide.load, i64 3
  %i.ch = or disjoint i32 %i.cg, 32
  store i32 %i.ch, ptr %next.gep409, align 4, !tbaa !3
  br label %pred.store.continue420

pred.store.continue420:                           ; preds = %pred.store.if419, %pred.store.continue418
  %i.ci = extractelement <4 x i1> %i.bv, i64 0
  br i1 %i.ci, label %pred.store.if421, label %pred.store.continue422

pred.store.if421:                                 ; preds = %pred.store.continue420
  %i.cj = extractelement <4 x i32> %wide.load414, i64 0
  %i.ck = or disjoint i32 %i.cj, 32
  store i32 %i.ck, ptr %next.gep410, align 4, !tbaa !3
  br label %pred.store.continue422

pred.store.continue422:                           ; preds = %pred.store.if421, %pred.store.continue420
  %i.cl = extractelement <4 x i1> %i.bv, i64 1
  br i1 %i.cl, label %pred.store.if423, label %pred.store.continue424

pred.store.if423:                                 ; preds = %pred.store.continue422
  %i.cm = extractelement <4 x i32> %wide.load414, i64 1
  %i.cn = or disjoint i32 %i.cm, 32
  store i32 %i.cn, ptr %next.gep411, align 4, !tbaa !3
  br label %pred.store.continue424

pred.store.continue424:                           ; preds = %pred.store.if423, %pred.store.continue422
  %i.co = extractelement <4 x i1> %i.bv, i64 2
  br i1 %i.co, label %pred.store.if425, label %pred.store.continue426

pred.store.if425:                                 ; preds = %pred.store.continue424
  %i.cp = extractelement <4 x i32> %wide.load414, i64 2
  %i.cq = or disjoint i32 %i.cp, 32
  store i32 %i.cq, ptr %next.gep412, align 4, !tbaa !3
  br label %pred.store.continue426

pred.store.continue426:                           ; preds = %pred.store.if425, %pred.store.continue424
  %i.cr = extractelement <4 x i1> %i.bv, i64 3
  br i1 %i.cr, label %pred.store.if427, label %pred.store.continue428

pred.store.if427:                                 ; preds = %pred.store.continue426
  %i.cs = extractelement <4 x i32> %wide.load414, i64 3
  %i.ct = or disjoint i32 %i.cs, 32
  store i32 %i.ct, ptr %next.gep413, align 4, !tbaa !3
  br label %pred.store.continue428

pred.store.continue428:                           ; preds = %pred.store.if427, %pred.store.continue426
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !81

middle.block:                                     ; preds = %pred.store.continue428
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br i1 %cmp.n, label %uriLowercaseInplaceW.exit, label %.preheader.i220.preheader538

.preheader.i220.preheader538:                     ; preds = %.preheader.i220.preheader, %middle.block
  %.018.i.ph = phi ptr [ %i.av, %.preheader.i220.preheader ], [ %i.bi, %middle.block ]
  br label %.preheader.i220

.preheader.i220:                                  ; preds = %.preheader.i220.preheader538, %bb.t
  %.018.i = phi ptr [ %i.cy, %bb.t ], [ %.018.i.ph, %.preheader.i220.preheader538 ] ; 3 uses
  %i.cv = load i32, ptr %.018.i, align 4, !tbaa !3 ; 2 uses
  %i.cw = add i32 %i.cv, -65
  %or.cond17.i221 = icmp ult i32 %i.cw, 26
  br i1 %or.cond17.i221, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.preheader.i220
  %i.cx = or disjoint i32 %i.cv, 32
  store i32 %i.cx, ptr %.018.i, align 4, !tbaa !3
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.preheader.i220
  %i.cy = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.cz = icmp ult ptr %i.cy, %i.az
  br i1 %i.cz, label %.preheader.i220, label %uriLowercaseInplaceW.exit, !llvm.loop !82

bb.u:                                             ; preds = %bb.q
  %i.da = icmp eq ptr %i.az, null
  br i1 %i.da, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.db = ptrtoint ptr %i.az to i64
  %i.dc = ptrtoint ptr %i.av to i64
  %i.dd = sub i64 %i.db, %i.dc                    ; 2 uses
  %i.de = lshr exact i64 %i.dd, 2                 ; 3 uses
  %i.df = trunc i64 %i.de to i32                  ; 2 uses
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %uriLowercaseMallocW.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dh = icmp slt i32 %i.df, 0
  br i1 %i.dh, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.di = load ptr, ptr %3, align 8, !tbaa !31
  %i.dj = and i64 %i.de, 2147483647               ; 6 uses
  %i.dk = shl nuw nsw i64 %i.dj, 2
  %i.dl = tail call ptr %i.di(ptr noundef nonnull %3, i64 noundef %i.dk) #6, !inline_history !83 ; 8 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %bb.y, label %.lr.ph.i222

.lr.ph.i222:                                      ; preds = %bb.x
  %i.dn = ptrtoaddr ptr %i.dl to i64
  %i.do = load ptr, ptr %0, align 8, !tbaa !80    ; 5 uses
  %min.iters.check430 = icmp samesign ult i64 %i.dj, 8
  %i.dp = ptrtoaddr ptr %i.do to i64
  %i.dq = sub i64 %i.dp, %i.dn
  %diff.check = icmp ugt i64 %i.dq, -32
  %or.cond531 = select i1 %min.iters.check430, i1 true, i1 %diff.check
  br i1 %or.cond531, label %scalar.ph429.preheader, label %vector.ph431

vector.ph431:                                     ; preds = %.lr.ph.i222
  %n.vec432 = and i64 %i.de, 2147483640           ; 3 uses
  br label %vector.body433

vector.body433:                                   ; preds = %vector.body433, %vector.ph431
  %index434 = phi i64 [ 0, %vector.ph431 ], [ %index.next437, %vector.body433 ] ; 3 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %index434 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %wide.load435 = load <4 x i32>, ptr %i.dr, align 4, !tbaa !3 ; 3 uses
  %wide.load436 = load <4 x i32>, ptr %i.ds, align 4, !tbaa !3 ; 3 uses
  %i.dt = add <4 x i32> %wide.load435, splat (i32 -65)
  %i.du = add <4 x i32> %wide.load436, splat (i32 -65)
  %i.dv = icmp ult <4 x i32> %i.dt, splat (i32 26)
  %i.dw = icmp ult <4 x i32> %i.du, splat (i32 26)
  %i.dx = or disjoint <4 x i32> %wide.load435, splat (i32 32)
  %i.dy = or disjoint <4 x i32> %wide.load436, splat (i32 32)
  %i.dz = select <4 x i1> %i.dv, <4 x i32> %i.dx, <4 x i32> %wide.load435
  %i.ea = select <4 x i1> %i.dw, <4 x i32> %i.dy, <4 x i32> %wide.load436
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %index434 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store <4 x i32> %i.dz, ptr %i.eb, align 4, !tbaa !3
  store <4 x i32> %i.ea, ptr %i.ec, align 4, !tbaa !3
  %index.next437 = add nuw i64 %index434, 8       ; 2 uses
  %i.ed = icmp eq i64 %index.next437, %n.vec432
  br i1 %i.ed, label %middle.block438, label %vector.body433, !llvm.loop !84

middle.block438:                                  ; preds = %vector.body433
  %cmp.n439 = icmp eq i64 %i.dj, %n.vec432
  br i1 %cmp.n439, label %._crit_edge.i, label %scalar.ph429.preheader

scalar.ph429.preheader:                           ; preds = %.lr.ph.i222, %middle.block438
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i222 ], [ %n.vec432, %middle.block438 ] ; 5 uses
  %.neg = or disjoint i64 %indvars.iv.i.ph, 1
  %i.ee = and i64 %i.dd, 4
  %lcmp.mod.not = icmp eq i64 %i.ee, 0
  br i1 %lcmp.mod.not, label %scalar.ph429.prol.loopexit, label %scalar.ph429.prol

scalar.ph429.prol:                                ; preds = %scalar.ph429.preheader
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv.i.ph
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !3  ; 3 uses
  %i.eh = add i32 %i.eg, -65
  %or.cond.i223.prol = icmp ult i32 %i.eh, 26
  %i.ei = or disjoint i32 %i.eg, 32
  %spec.select.i.prol = select i1 %or.cond.i223.prol, i32 %i.ei, i32 %i.eg
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv.i.ph
  store i32 %spec.select.i.prol, ptr %i.ej, align 4, !tbaa !3
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %scalar.ph429.prol.loopexit

scalar.ph429.prol.loopexit:                       ; preds = %scalar.ph429.prol, %scalar.ph429.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph429.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph429.prol ]
  %i.ek = icmp eq i64 %i.dj, %.neg
  br i1 %i.ek, label %._crit_edge.i, label %scalar.ph429

scalar.ph429:                                     ; preds = %scalar.ph429.prol.loopexit, %scalar.ph429
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph429 ], [ %indvars.iv.i.unr, %scalar.ph429.prol.loopexit ] ; 4 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv.i
  %i.em = load i32, ptr %i.el, align 4, !tbaa !3  ; 3 uses
  %i.en = add i32 %i.em, -65
  %or.cond.i223 = icmp ult i32 %i.en, 26
  %i.eo = or disjoint i32 %i.em, 32
  %spec.select.i = select i1 %or.cond.i223, i32 %i.eo, i32 %i.em
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv.i
  store i32 %spec.select.i, ptr %i.ep, align 4, !tbaa !3
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv.next.i
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !3  ; 3 uses
  %i.es = add i32 %i.er, -65
  %or.cond.i223.1 = icmp ult i32 %i.es, 26
  %i.et = or disjoint i32 %i.er, 32
  %spec.select.i.1 = select i1 %or.cond.i223.1, i32 %i.et, i32 %i.er
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv.next.i
  store i32 %spec.select.i.1, ptr %i.eu, align 4, !tbaa !3
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %i.dj
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph429, !llvm.loop !85

._crit_edge.i:                                    ; preds = %scalar.ph429.prol.loopexit, %scalar.ph429, %middle.block438
  store ptr %i.dl, ptr %0, align 8, !tbaa !80
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.dj
  store ptr %i.ev, ptr %i.ay, align 8, !tbaa !80
  br label %uriLowercaseMallocW.exit

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.u
  tail call fastcc void @uriPreventLeakageW(ptr noundef %0, i32 noundef 0, ptr noundef %3)
  br label %bb.ef

uriLowercaseMallocW.exit:                         ; preds = %._crit_edge.i, %bb.v
  store i32 1, ptr %i.a, align 4, !tbaa !3
  br label %uriLowercaseInplaceW.exit

uriLowercaseInplaceW.exit:                        ; preds = %bb.t, %middle.block, %bb.r, %uriLowercaseMallocW.exit, %bb.p, %bb.o
  %i.ew = phi i32 [ 0, %bb.o ], [ 0, %bb.r ], [ 1, %uriLowercaseMallocW.exit ], [ 0, %bb.p ], [ 0, %middle.block ], [ 0, %bb.t ] ; 12 uses
  %i.ex = and i32 %1, 4
  %.not176 = icmp eq i32 %i.ex, 0
  br i1 %.not176, label %uriContainsUglyPercentEncodingW.exit, label %bb.z

bb.z:                                             ; preds = %uriLowercaseInplaceW.exit
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !86 ; 18 uses
  %.not177 = icmp eq ptr %i.fa, null
  br i1 %.not177, label %bb.aj, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !79
  %.not181 = icmp eq i32 %i.fc, 0
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !80 ; 9 uses
  br i1 %.not181, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ff = icmp ugt ptr %i.fe, %i.fa
  br i1 %i.ff, label %.preheader.i225.preheader, label %uriLowercaseInplaceW.exit228

.preheader.i225.preheader:                        ; preds = %bb.ab
  %i.fg = ptrtoaddr ptr %i.fe to i64
  %i.fh = ptrtoaddr ptr %i.fa to i64
  %i.fi = xor i64 %i.fh, -1
  %i.fj = add i64 %i.fi, %i.fg                    ; 2 uses
  %i.fk = lshr i64 %i.fj, 2
  %i.fl = add nuw nsw i64 %i.fk, 1                ; 2 uses
  %min.iters.check442 = icmp ult i64 %i.fj, 28
  br i1 %min.iters.check442, label %.preheader.i225.preheader537, label %vector.ph443

vector.ph443:                                     ; preds = %.preheader.i225.preheader
  %n.vec444 = and i64 %i.fl, 9223372036854775800  ; 3 uses
  %i.fm = shl i64 %n.vec444, 2
  %i.fn = getelementptr i8, ptr %i.fa, i64 %i.fm
  br label %vector.body445

vector.body445:                                   ; preds = %pred.store.continue472, %vector.ph443
  %index446 = phi i64 [ 0, %vector.ph443 ], [ %index.next473, %pred.store.continue472 ] ; 2 uses
  %i.fo = shl i64 %index446, 2                    ; 8 uses
  %next.gep447 = getelementptr i8, ptr %i.fa, i64 %i.fo ; 3 uses
  %i.fp = getelementptr i8, ptr %i.fa, i64 %i.fo
  %next.gep448 = getelementptr i8, ptr %i.fp, i64 4
  %i.fq = getelementptr i8, ptr %i.fa, i64 %i.fo
  %next.gep449 = getelementptr i8, ptr %i.fq, i64 8
  %i.fr = getelementptr i8, ptr %i.fa, i64 %i.fo
  %next.gep450 = getelementptr i8, ptr %i.fr, i64 12
  %i.fs = getelementptr i8, ptr %i.fa, i64 %i.fo
  %next.gep451 = getelementptr i8, ptr %i.fs, i64 16
  %i.ft = getelementptr i8, ptr %i.fa, i64 %i.fo
  %next.gep452 = getelementptr i8, ptr %i.ft, i64 20
  %i.fu = getelementptr i8, ptr %i.fa, i64 %i.fo
  %next.gep453 = getelementptr i8, ptr %i.fu, i64 24
  %i.fv = getelementptr i8, ptr %i.fa, i64 %i.fo
  %next.gep454 = getelementptr i8, ptr %i.fv, i64 28
  %i.fw = getelementptr i8, ptr %next.gep447, i64 16
  %wide.load455 = load <4 x i32>, ptr %next.gep447, align 4, !tbaa !3 ; 5 uses
  %wide.load456 = load <4 x i32>, ptr %i.fw, align 4, !tbaa !3 ; 5 uses
  %i.fx = add <4 x i32> %wide.load455, splat (i32 -65)
  %i.fy = add <4 x i32> %wide.load456, splat (i32 -65)
  %i.fz = icmp ult <4 x i32> %i.fx, splat (i32 26) ; 4 uses
  %i.ga = icmp ult <4 x i32> %i.fy, splat (i32 26) ; 4 uses
  %i.gb = extractelement <4 x i1> %i.fz, i64 0
  br i1 %i.gb, label %pred.store.if457, label %pred.store.continue458

pred.store.if457:                                 ; preds = %vector.body445
  %i.gc = extractelement <4 x i32> %wide.load455, i64 0
  %i.gd = or disjoint i32 %i.gc, 32
  store i32 %i.gd, ptr %next.gep447, align 4, !tbaa !3
  br label %pred.store.continue458

pred.store.continue458:                           ; preds = %pred.store.if457, %vector.body445
  %i.ge = extractelement <4 x i1> %i.fz, i64 1
  br i1 %i.ge, label %pred.store.if459, label %pred.store.continue460

pred.store.if459:                                 ; preds = %pred.store.continue458
  %i.gf = extractelement <4 x i32> %wide.load455, i64 1
  %i.gg = or disjoint i32 %i.gf, 32
  store i32 %i.gg, ptr %next.gep448, align 4, !tbaa !3
  br label %pred.store.continue460

pred.store.continue460:                           ; preds = %pred.store.if459, %pred.store.continue458
  %i.gh = extractelement <4 x i1> %i.fz, i64 2
  br i1 %i.gh, label %pred.store.if461, label %pred.store.continue462

pred.store.if461:                                 ; preds = %pred.store.continue460
  %i.gi = extractelement <4 x i32> %wide.load455, i64 2
  %i.gj = or disjoint i32 %i.gi, 32
  store i32 %i.gj, ptr %next.gep449, align 4, !tbaa !3
  br label %pred.store.continue462

pred.store.continue462:                           ; preds = %pred.store.if461, %pred.store.continue460
  %i.gk = extractelement <4 x i1> %i.fz, i64 3
  br i1 %i.gk, label %pred.store.if463, label %pred.store.continue464

pred.store.if463:                                 ; preds = %pred.store.continue462
  %i.gl = extractelement <4 x i32> %wide.load455, i64 3
  %i.gm = or disjoint i32 %i.gl, 32
  store i32 %i.gm, ptr %next.gep450, align 4, !tbaa !3
  br label %pred.store.continue464

pred.store.continue464:                           ; preds = %pred.store.if463, %pred.store.continue462
  %i.gn = extractelement <4 x i1> %i.ga, i64 0
  br i1 %i.gn, label %pred.store.if465, label %pred.store.continue466

pred.store.if465:                                 ; preds = %pred.store.continue464
  %i.go = extractelement <4 x i32> %wide.load456, i64 0
  %i.gp = or disjoint i32 %i.go, 32
  store i32 %i.gp, ptr %next.gep451, align 4, !tbaa !3
  br label %pred.store.continue466

pred.store.continue466:                           ; preds = %pred.store.if465, %pred.store.continue464
  %i.gq = extractelement <4 x i1> %i.ga, i64 1
  br i1 %i.gq, label %pred.store.if467, label %pred.store.continue468

pred.store.if467:                                 ; preds = %pred.store.continue466
  %i.gr = extractelement <4 x i32> %wide.load456, i64 1
  %i.gs = or disjoint i32 %i.gr, 32
  store i32 %i.gs, ptr %next.gep452, align 4, !tbaa !3
  br label %pred.store.continue468

pred.store.continue468:                           ; preds = %pred.store.if467, %pred.store.continue466
  %i.gt = extractelement <4 x i1> %i.ga, i64 2
  br i1 %i.gt, label %pred.store.if469, label %pred.store.continue470

pred.store.if469:                                 ; preds = %pred.store.continue468
  %i.gu = extractelement <4 x i32> %wide.load456, i64 2
  %i.gv = or disjoint i32 %i.gu, 32
  store i32 %i.gv, ptr %next.gep453, align 4, !tbaa !3
  br label %pred.store.continue470

pred.store.continue470:                           ; preds = %pred.store.if469, %pred.store.continue468
  %i.gw = extractelement <4 x i1> %i.ga, i64 3
  br i1 %i.gw, label %pred.store.if471, label %pred.store.continue472

pred.store.if471:                                 ; preds = %pred.store.continue470
  %i.gx = extractelement <4 x i32> %wide.load456, i64 3
  %i.gy = or disjoint i32 %i.gx, 32
  store i32 %i.gy, ptr %next.gep454, align 4, !tbaa !3
  br label %pred.store.continue472

pred.store.continue472:                           ; preds = %pred.store.if471, %pred.store.continue470
  %index.next473 = add nuw i64 %index446, 8       ; 2 uses
  %i.gz = icmp eq i64 %index.next473, %n.vec444
  br i1 %i.gz, label %middle.block474, label %vector.body445, !llvm.loop !87

middle.block474:                                  ; preds = %pred.store.continue472
  %cmp.n475 = icmp eq i64 %i.fl, %n.vec444
  br i1 %cmp.n475, label %uriLowercaseInplaceW.exit228, label %.preheader.i225.preheader537

.preheader.i225.preheader537:                     ; preds = %.preheader.i225.preheader, %middle.block474
  %.018.i226.ph = phi ptr [ %i.fa, %.preheader.i225.preheader ], [ %i.fn, %middle.block474 ]
  br label %.preheader.i225

.preheader.i225:                                  ; preds = %.preheader.i225.preheader537, %bb.ad
  %.018.i226 = phi ptr [ %i.hd, %bb.ad ], [ %.018.i226.ph, %.preheader.i225.preheader537 ] ; 3 uses
  %i.ha = load i32, ptr %.018.i226, align 4, !tbaa !3 ; 2 uses
  %i.hb = add i32 %i.ha, -65
  %or.cond17.i227 = icmp ult i32 %i.hb, 26
  br i1 %or.cond17.i227, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.preheader.i225
  %i.hc = or disjoint i32 %i.ha, 32
  store i32 %i.hc, ptr %.018.i226, align 4, !tbaa !3
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.preheader.i225
  %i.hd = getelementptr inbounds nuw i8, ptr %.018.i226, i64 4 ; 2 uses
  %i.he = icmp ult ptr %i.hd, %i.fe
  br i1 %i.he, label %.preheader.i225, label %uriLowercaseInplaceW.exit228, !llvm.loop !88

bb.ae:                                            ; preds = %bb.aa
  %i.hf = icmp eq ptr %i.fe, null
  br i1 %i.hf, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hg = ptrtoint ptr %i.fe to i64
  %i.hh = ptrtoint ptr %i.fa to i64
  %i.hi = sub i64 %i.hg, %i.hh                    ; 2 uses
  %i.hj = lshr exact i64 %i.hi, 2                 ; 3 uses
  %i.hk = trunc i64 %i.hj to i32                  ; 2 uses
  %i.hl = icmp eq i32 %i.hk, 0
  br i1 %i.hl, label %uriLowercaseMallocW.exit238, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hm = icmp slt i32 %i.hk, 0
  br i1 %i.hm, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hn = load ptr, ptr %3, align 8, !tbaa !31
  %i.ho = and i64 %i.hj, 2147483647               ; 6 uses
  %i.hp = shl nuw nsw i64 %i.ho, 2
  %i.hq = tail call ptr %i.hn(ptr noundef nonnull %3, i64 noundef %i.hp) #6, !inline_history !83 ; 9 uses
  %i.hr = icmp eq ptr %i.hq, null
  br i1 %i.hr, label %bb.ai, label %.lr.ph.i229

.lr.ph.i229:                                      ; preds = %bb.ah
  %i.hs = ptrtoaddr ptr %i.hq to i64
  %i.ht = load ptr, ptr %i.ez, align 8, !tbaa !80 ; 5 uses
  %min.iters.check480 = icmp samesign ult i64 %i.ho, 8
  %i.hu = ptrtoaddr ptr %i.ht to i64
  %i.hv = sub i64 %i.hu, %i.hs
  %diff.check478 = icmp ugt i64 %i.hv, -32
  %or.cond533 = select i1 %min.iters.check480, i1 true, i1 %diff.check478
  br i1 %or.cond533, label %scalar.ph479.preheader, label %vector.ph481

vector.ph481:                                     ; preds = %.lr.ph.i229
  %n.vec482 = and i64 %i.hj, 2147483640           ; 3 uses
  br label %vector.body483

vector.body483:                                   ; preds = %vector.body483, %vector.ph481
  %index484 = phi i64 [ 0, %vector.ph481 ], [ %index.next487, %vector.body483 ] ; 3 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %index484 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %wide.load485 = load <4 x i32>, ptr %i.hw, align 4, !tbaa !3 ; 3 uses
  %wide.load486 = load <4 x i32>, ptr %i.hx, align 4, !tbaa !3 ; 3 uses
  %i.hy = add <4 x i32> %wide.load485, splat (i32 -65)
  %i.hz = add <4 x i32> %wide.load486, splat (i32 -65)
  %i.ia = icmp ult <4 x i32> %i.hy, splat (i32 26)
  %i.ib = icmp ult <4 x i32> %i.hz, splat (i32 26)
  %i.ic = or disjoint <4 x i32> %wide.load485, splat (i32 32)
  %i.id = or disjoint <4 x i32> %wide.load486, splat (i32 32)
  %i.ie = select <4 x i1> %i.ia, <4 x i32> %i.ic, <4 x i32> %wide.load485
  %i.if = select <4 x i1> %i.ib, <4 x i32> %i.id, <4 x i32> %wide.load486
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %index484 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  store <4 x i32> %i.ie, ptr %i.ig, align 4, !tbaa !3
  store <4 x i32> %i.if, ptr %i.ih, align 4, !tbaa !3
  %index.next487 = add nuw i64 %index484, 8       ; 2 uses
  %i.ii = icmp eq i64 %index.next487, %n.vec482
  br i1 %i.ii, label %middle.block488, label %vector.body483, !llvm.loop !89

middle.block488:                                  ; preds = %vector.body483
  %cmp.n489 = icmp eq i64 %i.ho, %n.vec482
  br i1 %cmp.n489, label %._crit_edge.i236, label %scalar.ph479.preheader

scalar.ph479.preheader:                           ; preds = %.lr.ph.i229, %middle.block488
  %indvars.iv.i231.ph = phi i64 [ 0, %.lr.ph.i229 ], [ %n.vec482, %middle.block488 ] ; 5 uses
  %.neg542 = or disjoint i64 %indvars.iv.i231.ph, 1
  %i.ij = and i64 %i.hi, 4
  %lcmp.mod541.not = icmp eq i64 %i.ij, 0
  br i1 %lcmp.mod541.not, label %scalar.ph479.prol.loopexit, label %scalar.ph479.prol

scalar.ph479.prol:                                ; preds = %scalar.ph479.preheader
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %indvars.iv.i231.ph
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !3  ; 3 uses
  %i.im = add i32 %i.il, -65
  %or.cond.i232.prol = icmp ult i32 %i.im, 26
  %i.in = or disjoint i32 %i.il, 32
  %spec.select.i233.prol = select i1 %or.cond.i232.prol, i32 %i.in, i32 %i.il
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %indvars.iv.i231.ph
  store i32 %spec.select.i233.prol, ptr %i.io, align 4, !tbaa !3
  %indvars.iv.next.i234.prol = or disjoint i64 %indvars.iv.i231.ph, 1
  br label %scalar.ph479.prol.loopexit

scalar.ph479.prol.loopexit:                       ; preds = %scalar.ph479.prol, %scalar.ph479.preheader
  %indvars.iv.i231.unr = phi i64 [ %indvars.iv.i231.ph, %scalar.ph479.preheader ], [ %indvars.iv.next.i234.prol, %scalar.ph479.prol ]
  %i.ip = icmp eq i64 %i.ho, %.neg542
  br i1 %i.ip, label %._crit_edge.i236, label %scalar.ph479

scalar.ph479:                                     ; preds = %scalar.ph479.prol.loopexit, %scalar.ph479
  %indvars.iv.i231 = phi i64 [ %indvars.iv.next.i234.1, %scalar.ph479 ], [ %indvars.iv.i231.unr, %scalar.ph479.prol.loopexit ] ; 4 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %indvars.iv.i231
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !3  ; 3 uses
  %i.is = add i32 %i.ir, -65
  %or.cond.i232 = icmp ult i32 %i.is, 26
  %i.it = or disjoint i32 %i.ir, 32
  %spec.select.i233 = select i1 %or.cond.i232, i32 %i.it, i32 %i.ir
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %indvars.iv.i231
  store i32 %spec.select.i233, ptr %i.iu, align 4, !tbaa !3
  %indvars.iv.next.i234 = add nuw nsw i64 %indvars.iv.i231, 1 ; 2 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %indvars.iv.next.i234
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !3  ; 3 uses
  %i.ix = add i32 %i.iw, -65
  %or.cond.i232.1 = icmp ult i32 %i.ix, 26
  %i.iy = or disjoint i32 %i.iw, 32
  %spec.select.i233.1 = select i1 %or.cond.i232.1, i32 %i.iy, i32 %i.iw
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %indvars.iv.next.i234
  store i32 %spec.select.i233.1, ptr %i.iz, align 4, !tbaa !3
  %indvars.iv.next.i234.1 = add nuw nsw i64 %indvars.iv.i231, 2 ; 2 uses
  %exitcond.not.i235.1 = icmp eq i64 %indvars.iv.next.i234.1, %i.ho
  br i1 %exitcond.not.i235.1, label %._crit_edge.i236, label %scalar.ph479, !llvm.loop !90

._crit_edge.i236:                                 ; preds = %scalar.ph479.prol.loopexit, %scalar.ph479, %middle.block488
  store ptr %i.hq, ptr %i.ez, align 8, !tbaa !80
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %i.ho ; 2 uses
  store ptr %i.ja, ptr %i.fd, align 8, !tbaa !80
  br label %uriLowercaseMallocW.exit238

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.ae
  tail call fastcc void @uriPreventLeakageW(ptr noundef %0, i32 noundef %i.ew, ptr noundef %3)
  br label %bb.ef

uriLowercaseMallocW.exit238:                      ; preds = %._crit_edge.i236, %bb.af
  %i.jb = phi ptr [ %i.ja, %._crit_edge.i236 ], [ %i.fe, %bb.af ]
  %i.jc = phi ptr [ %i.hq, %._crit_edge.i236 ], [ %i.fa, %bb.af ]
  %i.jd = or disjoint i32 %i.ew, 4                ; 2 uses
  store i32 %i.jd, ptr %i.a, align 4, !tbaa !3
  br label %uriLowercaseInplaceW.exit228

uriLowercaseInplaceW.exit228:                     ; preds = %bb.ad, %middle.block474, %bb.ab, %uriLowercaseMallocW.exit238
  %i.je = phi i32 [ %i.jd, %uriLowercaseMallocW.exit238 ], [ %i.ew, %bb.ab ], [ %i.ew, %middle.block474 ], [ %i.ew, %bb.ad ]
  %i.jf = phi ptr [ %i.jb, %uriLowercaseMallocW.exit238 ], [ %i.fe, %bb.ab ], [ %i.fe, %middle.block474 ], [ %i.fe, %bb.ad ]
  %i.jg = phi ptr [ %i.jc, %uriLowercaseMallocW.exit238 ], [ %i.fa, %bb.ab ], [ %i.fa, %middle.block474 ], [ %i.fa, %bb.ad ]
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.jg, ptr %i.jh, align 8, !tbaa !76
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.jf, ptr %i.ji, align 8, !tbaa !77
  br label %uriContainsUglyPercentEncodingW.exit

bb.aj:                                            ; preds = %bb.z
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !76 ; 2 uses
  %.not178 = icmp eq ptr %i.jk, null
  br i1 %.not178, label %uriContainsUglyPercentEncodingW.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.jl = load ptr, ptr %i.ey, align 8, !tbaa !91
  %i.jm = icmp eq ptr %i.jl, null
  br i1 %i.jm, label %bb.al, label %uriContainsUglyPercentEncodingW.exit

bb.al:                                            ; preds = %bb.ak
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !92
  %i.jp = icmp eq ptr %i.jo, null
  br i1 %i.jp, label %bb.am, label %uriContainsUglyPercentEncodingW.exit

bb.am:                                            ; preds = %bb.al
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !79
  %.not179 = icmp eq i32 %i.jr, 0
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br i1 %.not179, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call fastcc void @uriFixPercentEncodingInplaceW(ptr noundef nonnull %i.jk, ptr noundef %i.js)
  br label %bb.ar

bb.ao:                                            ; preds = %bb.am
  %i.jt = tail call fastcc i32 @uriFixPercentEncodingMallocW(ptr noundef %i.jj, ptr noundef %i.js, ptr noundef %3)
  %.not180 = icmp eq i32 %i.jt, 0
  br i1 %.not180, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  tail call fastcc void @uriPreventLeakageW(ptr noundef %0, i32 noundef %i.ew, ptr noundef %3)
  br label %bb.ef

bb.aq:                                            ; preds = %bb.ao
  %i.ju = or disjoint i32 %i.ew, 4                ; 2 uses
  store i32 %i.ju, ptr %i.a, align 4, !tbaa !3
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.an
  %i.jv = phi i32 [ %i.ju, %bb.aq ], [ %i.ew, %bb.an ] ; 3 uses
  %i.jw = load ptr, ptr %i.jj, align 8, !tbaa !76 ; 13 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !77 ; 3 uses
  %i.jz = icmp ne ptr %i.jw, null
  %i.ka = icmp ugt ptr %i.jy, %i.jw
  %or.cond16.i239 = and i1 %i.jz, %i.ka
  br i1 %or.cond16.i239, label %.preheader.i240.preheader, label %uriContainsUglyPercentEncodingW.exit

.preheader.i240.preheader:                        ; preds = %bb.ar
  %i.kb = ptrtoaddr ptr %i.jy to i64
  %i.kc = ptrtoaddr ptr %i.jw to i64
  %i.kd = xor i64 %i.kc, -1
  %i.ke = add i64 %i.kd, %i.kb                    ; 2 uses
  %i.kf = lshr i64 %i.ke, 2
  %i.kg = add nuw nsw i64 %i.kf, 1                ; 2 uses
  %min.iters.check492 = icmp ult i64 %i.ke, 28
  br i1 %min.iters.check492, label %.preheader.i240.preheader536, label %vector.ph493

vector.ph493:                                     ; preds = %.preheader.i240.preheader
  %n.vec494 = and i64 %i.kg, 9223372036854775800  ; 3 uses
  %i.kh = shl i64 %n.vec494, 2
  %i.ki = getelementptr i8, ptr %i.jw, i64 %i.kh
  br label %vector.body495

vector.body495:                                   ; preds = %pred.store.continue522, %vector.ph493
  %index496 = phi i64 [ 0, %vector.ph493 ], [ %index.next523, %pred.store.continue522 ] ; 2 uses
  %i.kj = shl i64 %index496, 2                    ; 8 uses
  %next.gep497 = getelementptr i8, ptr %i.jw, i64 %i.kj ; 3 uses
  %i.kk = getelementptr i8, ptr %i.jw, i64 %i.kj
  %next.gep498 = getelementptr i8, ptr %i.kk, i64 4
  %i.kl = getelementptr i8, ptr %i.jw, i64 %i.kj
  %next.gep499 = getelementptr i8, ptr %i.kl, i64 8
  %i.km = getelementptr i8, ptr %i.jw, i64 %i.kj
  %next.gep500 = getelementptr i8, ptr %i.km, i64 12
  %i.kn = getelementptr i8, ptr %i.jw, i64 %i.kj
  %next.gep501 = getelementptr i8, ptr %i.kn, i64 16
  %i.ko = getelementptr i8, ptr %i.jw, i64 %i.kj
  %next.gep502 = getelementptr i8, ptr %i.ko, i64 20
  %i.kp = getelementptr i8, ptr %i.jw, i64 %i.kj
  %next.gep503 = getelementptr i8, ptr %i.kp, i64 24
  %i.kq = getelementptr i8, ptr %i.jw, i64 %i.kj
  %next.gep504 = getelementptr i8, ptr %i.kq, i64 28
  %i.kr = getelementptr i8, ptr %next.gep497, i64 16
  %wide.load505 = load <4 x i32>, ptr %next.gep497, align 4, !tbaa !3 ; 5 uses
  %wide.load506 = load <4 x i32>, ptr %i.kr, align 4, !tbaa !3 ; 5 uses
  %i.ks = add <4 x i32> %wide.load505, splat (i32 -65)
  %i.kt = add <4 x i32> %wide.load506, splat (i32 -65)
  %i.ku = icmp ult <4 x i32> %i.ks, splat (i32 26) ; 4 uses
  %i.kv = icmp ult <4 x i32> %i.kt, splat (i32 26) ; 4 uses
  %i.kw = extractelement <4 x i1> %i.ku, i64 0
  br i1 %i.kw, label %pred.store.if507, label %pred.store.continue508

pred.store.if507:                                 ; preds = %vector.body495
  %i.kx = extractelement <4 x i32> %wide.load505, i64 0
  %i.ky = or disjoint i32 %i.kx, 32
  store i32 %i.ky, ptr %next.gep497, align 4, !tbaa !3
  br label %pred.store.continue508

pred.store.continue508:                           ; preds = %pred.store.if507, %vector.body495
  %i.kz = extractelement <4 x i1> %i.ku, i64 1
  br i1 %i.kz, label %pred.store.if509, label %pred.store.continue510

pred.store.if509:                                 ; preds = %pred.store.continue508
  %i.la = extractelement <4 x i32> %wide.load505, i64 1
  %i.lb = or disjoint i32 %i.la, 32
  store i32 %i.lb, ptr %next.gep498, align 4, !tbaa !3
  br label %pred.store.continue510

pred.store.continue510:                           ; preds = %pred.store.if509, %pred.store.continue508
  %i.lc = extractelement <4 x i1> %i.ku, i64 2
  br i1 %i.lc, label %pred.store.if511, label %pred.store.continue512

pred.store.if511:                                 ; preds = %pred.store.continue510
  %i.ld = extractelement <4 x i32> %wide.load505, i64 2
  %i.le = or disjoint i32 %i.ld, 32
  store i32 %i.le, ptr %next.gep499, align 4, !tbaa !3
  br label %pred.store.continue512

pred.store.continue512:                           ; preds = %pred.store.if511, %pred.store.continue510
  %i.lf = extractelement <4 x i1> %i.ku, i64 3
  br i1 %i.lf, label %pred.store.if513, label %pred.store.continue514

pred.store.if513:                                 ; preds = %pred.store.continue512
  %i.lg = extractelement <4 x i32> %wide.load505, i64 3
  %i.lh = or disjoint i32 %i.lg, 32
  store i32 %i.lh, ptr %next.gep500, align 4, !tbaa !3
  br label %pred.store.continue514

pred.store.continue514:                           ; preds = %pred.store.if513, %pred.store.continue512
  %i.li = extractelement <4 x i1> %i.kv, i64 0
  br i1 %i.li, label %pred.store.if515, label %pred.store.continue516

pred.store.if515:                                 ; preds = %pred.store.continue514
  %i.lj = extractelement <4 x i32> %wide.load506, i64 0
  %i.lk = or disjoint i32 %i.lj, 32
  store i32 %i.lk, ptr %next.gep501, align 4, !tbaa !3
  br label %pred.store.continue516

pred.store.continue516:                           ; preds = %pred.store.if515, %pred.store.continue514
  %i.ll = extractelement <4 x i1> %i.kv, i64 1
  br i1 %i.ll, label %pred.store.if517, label %pred.store.continue518

pred.store.if517:                                 ; preds = %pred.store.continue516
  %i.lm = extractelement <4 x i32> %wide.load506, i64 1
  %i.ln = or disjoint i32 %i.lm, 32
  store i32 %i.ln, ptr %next.gep502, align 4, !tbaa !3
  br label %pred.store.continue518

pred.store.continue518:                           ; preds = %pred.store.if517, %pred.store.continue516
  %i.lo = extractelement <4 x i1> %i.kv, i64 2
  br i1 %i.lo, label %pred.store.if519, label %pred.store.continue520

pred.store.if519:                                 ; preds = %pred.store.continue518
  %i.lp = extractelement <4 x i32> %wide.load506, i64 2
  %i.lq = or disjoint i32 %i.lp, 32
  store i32 %i.lq, ptr %next.gep503, align 4, !tbaa !3
  br label %pred.store.continue520

pred.store.continue520:                           ; preds = %pred.store.if519, %pred.store.continue518
  %i.lr = extractelement <4 x i1> %i.kv, i64 3
  br i1 %i.lr, label %pred.store.if521, label %pred.store.continue522

pred.store.if521:                                 ; preds = %pred.store.continue520
  %i.ls = extractelement <4 x i32> %wide.load506, i64 3
  %i.lt = or disjoint i32 %i.ls, 32
  store i32 %i.lt, ptr %next.gep504, align 4, !tbaa !3
  br label %pred.store.continue522

pred.store.continue522:                           ; preds = %pred.store.if521, %pred.store.continue520
  %index.next523 = add nuw i64 %index496, 8       ; 2 uses
  %i.lu = icmp eq i64 %index.next523, %n.vec494
  br i1 %i.lu, label %middle.block524, label %vector.body495, !llvm.loop !93

middle.block524:                                  ; preds = %pred.store.continue522
  %cmp.n525 = icmp eq i64 %i.kg, %n.vec494
  br i1 %cmp.n525, label %uriContainsUglyPercentEncodingW.exit, label %.preheader.i240.preheader536

.preheader.i240.preheader536:                     ; preds = %.preheader.i240.preheader, %middle.block524
  %.018.i241.ph = phi ptr [ %i.jw, %.preheader.i240.preheader ], [ %i.ki, %middle.block524 ]
  br label %.preheader.i240

.preheader.i240:                                  ; preds = %.preheader.i240.preheader536, %bb.at
  %.018.i241 = phi ptr [ %i.ly, %bb.at ], [ %.018.i241.ph, %.preheader.i240.preheader536 ] ; 3 uses
  %i.lv = load i32, ptr %.018.i241, align 4, !tbaa !3 ; 2 uses
  %i.lw = add i32 %i.lv, -65
  %or.cond17.i242 = icmp ult i32 %i.lw, 26
  br i1 %or.cond17.i242, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.preheader.i240
  %i.lx = or disjoint i32 %i.lv, 32
  store i32 %i.lx, ptr %.018.i241, align 4, !tbaa !3
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.preheader.i240
  %i.ly = getelementptr inbounds nuw i8, ptr %.018.i241, i64 4 ; 2 uses
  %i.lz = icmp ult ptr %i.ly, %i.jy
  br i1 %i.lz, label %.preheader.i240, label %uriContainsUglyPercentEncodingW.exit, !llvm.loop !94

uriContainsUglyPercentEncodingW.exit:             ; preds = %bb.m, %bb.at, %middle.block524, %bb.ar, %bb.i, %uriLowercaseInplaceW.exit, %bb.aj, %bb.ak, %bb.al, %uriLowercaseInplaceW.exit228
  %i.ma = phi i32 [ %i.jv, %middle.block524 ], [ %i.je, %uriLowercaseInplaceW.exit228 ], [ %i.jv, %bb.ar ], [ 0, %bb.i ], [ %i.ew, %uriLowercaseInplaceW.exit ], [ %i.ew, %bb.aj ], [ %i.ew, %bb.ak ], [ %i.ew, %bb.al ], [ %i.jv, %bb.at ], [ 0, %bb.m ] ; 6 uses
  br i1 %.not212, label %bb.az, label %uriContainsUglyPercentEncodingW.exit.thread290

uriContainsUglyPercentEncodingW.exit.thread290.sink.split: ; preds = %bb.h, %bb.n
  %.sink = phi i32 [ %i.at, %bb.n ], [ %i.w, %bb.h ]
  store i32 %.sink, ptr %2, align 4, !tbaa !3
  br label %uriContainsUglyPercentEncodingW.exit.thread290

uriContainsUglyPercentEncodingW.exit.thread290:   ; preds = %uriContainsUglyPercentEncodingW.exit.thread290.sink.split, %uriContainsUglyPercentEncodingW.exit
  %i.mb = phi i32 [ %i.ma, %uriContainsUglyPercentEncodingW.exit ], [ 0, %uriContainsUglyPercentEncodingW.exit.thread290.sink.split ] ; 4 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !95 ; 4 uses
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !96 ; 3 uses
  %i.mg = icmp ne ptr %i.md, null
  %i.mh = icmp ugt ptr %i.mf, %i.md
  %or.cond29.i244 = and i1 %i.mg, %i.mh
  %i.mi = getelementptr inbounds nuw i8, ptr %i.md, i64 8 ; 2 uses
  %i.mj = icmp ult ptr %i.mi, %i.mf
  %or.cond.i245 = select i1 %or.cond29.i244, i1 %i.mj, i1 false
  br i1 %or.cond.i245, label %.lr.ph.i247, label %uriContainsUglyPercentEncodingW.exit252.thread296

.lr.ph.i247:                                      ; preds = %uriContainsUglyPercentEncodingW.exit.thread290, %bb.ax
  %i.mk = phi ptr [ %i.nb, %bb.ax ], [ %i.mi, %uriContainsUglyPercentEncodingW.exit.thread290 ] ; 2 uses
  %.02132.i248 = phi ptr [ %i.na, %bb.ax ], [ %i.md, %uriContainsUglyPercentEncodingW.exit.thread290 ] ; 4 uses
  %i.ml = load i32, ptr %.02132.i248, align 4, !tbaa !3
  %i.mm = icmp eq i32 %i.ml, 37
  br i1 %i.mm, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %.lr.ph.i247
  %i.mn = getelementptr inbounds nuw i8, ptr %.02132.i248, i64 4
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !3  ; 2 uses
  %i.mp = add i32 %i.mo, -97
  %or.cond30.i249 = icmp ult i32 %i.mp, 6
  br i1 %or.cond30.i249, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.mq = load i32, ptr %i.mk, align 4, !tbaa !3
  %i.mr = add i32 %i.mq, -97
  %or.cond31.i250 = icmp ult i32 %i.mr, 6
  br i1 %or.cond31.i250, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ms = tail call zeroext i8 @uriHexdigToIntW(i32 noundef %i.mo) #6
  %i.mt = load i32, ptr %i.mk, align 4, !tbaa !3
  %i.mu = tail call zeroext i8 @uriHexdigToIntW(i32 noundef %i.mt) #6
  %i.mv = zext i8 %i.ms to i32
  %i.mw = shl nuw nsw i32 %i.mv, 4
  %i.mx = zext i8 %i.mu to i32
  %i.my = add nuw nsw i32 %i.mw, %i.mx
  %i.mz = tail call i32 @uriIsUnreserved(i32 noundef %i.my) #6
  %.not.i251 = icmp eq i32 %i.mz, 0
  br i1 %.not.i251, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw, %.lr.ph.i247
  %i.na = getelementptr inbounds nuw i8, ptr %.02132.i248, i64 4
  %i.nb = getelementptr inbounds nuw i8, ptr %.02132.i248, i64 12 ; 2 uses
  %i.nc = icmp ult ptr %i.nb, %i.mf
  br i1 %i.nc, label %.lr.ph.i247, label %uriContainsUglyPercentEncodingW.exit252, !llvm.loop !78

bb.ay:                                            ; preds = %bb.av, %bb.au, %bb.aw
  %i.nd = load i32, ptr %2, align 4, !tbaa !3
  %i.ne = or i32 %i.nd, 2
  store i32 %i.ne, ptr %2, align 4, !tbaa !3
  br label %uriContainsUglyPercentEncodingW.exit252.thread296

bb.az:                                            ; preds = %uriContainsUglyPercentEncodingW.exit
  %i.nf = and i32 %1, 2
  %.not186 = icmp eq i32 %i.nf, 0
  br i1 %.not186, label %uriContainsUglyPercentEncodingW.exit252.thread294, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !95 ; 2 uses
  %.not187 = icmp eq ptr %i.nh, null
  br i1 %.not187, label %uriContainsUglyPercentEncodingW.exit252.thread294, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !79
  %.not188 = icmp eq i32 %i.nj, 0
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %.not188, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  tail call fastcc void @uriFixPercentEncodingInplaceW(ptr noundef nonnull %i.nh, ptr noundef %i.nk)
  br label %uriContainsUglyPercentEncodingW.exit252.thread294

bb.bd:                                            ; preds = %bb.bb
  %i.nl = tail call fastcc i32 @uriFixPercentEncodingMallocW(ptr noundef %i.ng, ptr noundef %i.nk, ptr noundef %3)
  %.not189 = icmp eq i32 %i.nl, 0
  br i1 %.not189, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  tail call fastcc void @uriPreventLeakageW(ptr noundef %0, i32 noundef %i.ma, ptr noundef %3)
  br label %bb.ef

bb.bf:                                            ; preds = %bb.bd
  %i.nm = or i32 %i.ma, 2                         ; 2 uses
  store i32 %i.nm, ptr %i.a, align 4, !tbaa !3
  br label %uriContainsUglyPercentEncodingW.exit252.thread294

uriContainsUglyPercentEncodingW.exit252:          ; preds = %bb.ax
  br i1 %.not212, label %uriContainsUglyPercentEncodingW.exit252.thread294, label %uriContainsUglyPercentEncodingW.exit252.thread296

uriContainsUglyPercentEncodingW.exit252.thread296: ; preds = %bb.ay, %uriContainsUglyPercentEncodingW.exit.thread290, %uriContainsUglyPercentEncodingW.exit252
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.0155314 = load ptr, ptr %i.nn, align 8, !tbaa !97 ; 2 uses
  %.not198315 = icmp eq ptr %.0155314, null
  br i1 %.not198315, label %.loopexit310.thread, label %.lr.ph

.lr.ph:                                           ; preds = %uriContainsUglyPercentEncodingW.exit252.thread296, %.loopexit309
  %.0155316 = phi ptr [ %.0155, %.loopexit309 ], [ %.0155314, %uriContainsUglyPercentEncodingW.exit252.thread296 ] ; 3 uses
  %i.no = load ptr, ptr %.0155316, align 8, !tbaa !98 ; 8 uses
  %i.np = getelementptr inbounds nuw i8, ptr %.0155316, i64 8
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !100 ; 4 uses
  %i.nr = icmp ne ptr %i.no, null
  %i.ns = icmp ugt ptr %i.nq, %i.no
  %or.cond213 = select i1 %i.nr, i1 %i.ns, i1 false
  br i1 %or.cond213, label %bb.bg, label %.loopexit309

bb.bg:                                            ; preds = %.lr.ph
  %i.nt = ptrtoint ptr %i.nq to i64
  %i.nu = ptrtoint ptr %i.no to i64
  %i.nv = sub i64 %i.nt, %i.nu
  switch i64 %i.nv, label %bb.bk [
    i64 4, label %bb.bh
    i64 8, label %bb.bi
  ]

bb.bh:                                            ; preds = %bb.bg
  %i.nw = load i32, ptr %i.no, align 4, !tbaa !3
  %i.nx = icmp eq i32 %i.nw, 46
  br i1 %i.nx, label %.thread303, label %bb.bk

bb.bi:                                            ; preds = %bb.bg
  %i.ny = load i32, ptr %i.no, align 4, !tbaa !3
  %i.nz = icmp eq i32 %i.ny, 46
  br i1 %i.nz, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.oa = getelementptr inbounds nuw i8, ptr %i.no, i64 4
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !3
  %i.oc = icmp eq i32 %i.ob, 46
  br i1 %i.oc, label %.thread303, label %bb.bk

bb.bk:                                            ; preds = %bb.bh, %bb.bg, %bb.bj, %bb.bi
  %i.od = getelementptr inbounds nuw i8, ptr %i.no, i64 8 ; 2 uses
  %i.oe = icmp ult ptr %i.od, %i.nq
  br i1 %i.oe, label %.lr.ph.i256, label %.loopexit309

.lr.ph.i256:                                      ; preds = %bb.bk, %bb.bo
  %i.of = phi ptr [ %i.ow, %bb.bo ], [ %i.od, %bb.bk ] ; 2 uses
  %.02132.i257 = phi ptr [ %i.ov, %bb.bo ], [ %i.no, %bb.bk ] ; 4 uses
  %i.og = load i32, ptr %.02132.i257, align 4, !tbaa !3
  %i.oh = icmp eq i32 %i.og, 37
  br i1 %i.oh, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %.lr.ph.i256
  %i.oi = getelementptr inbounds nuw i8, ptr %.02132.i257, i64 4
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !3  ; 2 uses
  %i.ok = add i32 %i.oj, -97
  %or.cond30.i258 = icmp ult i32 %i.ok, 6
  br i1 %or.cond30.i258, label %.thread303, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ol = load i32, ptr %i.of, align 4, !tbaa !3
  %i.om = add i32 %i.ol, -97
  %or.cond31.i259 = icmp ult i32 %i.om, 6
  br i1 %or.cond31.i259, label %.thread303, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.on = tail call zeroext i8 @uriHexdigToIntW(i32 noundef %i.oj) #6
  %i.oo = load i32, ptr %i.of, align 4, !tbaa !3
  %i.op = tail call zeroext i8 @uriHexdigToIntW(i32 noundef %i.oo) #6
  %i.oq = zext i8 %i.on to i32
  %i.or = shl nuw nsw i32 %i.oq, 4
  %i.os = zext i8 %i.op to i32
  %i.ot = add nuw nsw i32 %i.or, %i.os
  %i.ou = tail call i32 @uriIsUnreserved(i32 noundef %i.ot) #6
  %.not.i260 = icmp eq i32 %i.ou, 0
  br i1 %.not.i260, label %bb.bo, label %.thread303

bb.bo:                                            ; preds = %bb.bn, %.lr.ph.i256
  %i.ov = getelementptr inbounds nuw i8, ptr %.02132.i257, i64 4
  %i.ow = getelementptr inbounds nuw i8, ptr %.02132.i257, i64 12 ; 2 uses
  %i.ox = icmp ult ptr %i.ow, %i.nq
  br i1 %i.ox, label %.lr.ph.i256, label %.loopexit309, !llvm.loop !78

.thread303:                                       ; preds = %bb.bj, %bb.bh, %bb.bn, %bb.bl, %bb.bm
  %i.oy = load i32, ptr %2, align 4, !tbaa !3
  %i.oz = or i32 %i.oy, 8
  store i32 %i.oz, ptr %2, align 4, !tbaa !3
  br label %.loopexit310.thread

.loopexit309:                                     ; preds = %bb.bo, %.lr.ph, %bb.bk
  %i.pa = getelementptr inbounds nuw i8, ptr %.0155316, i64 16
  %.0155 = load ptr, ptr %i.pa, align 8, !tbaa !97 ; 2 uses
  %.not198 = icmp eq ptr %.0155, null
  br i1 %.not198, label %.loopexit310, label %.lr.ph

uriContainsUglyPercentEncodingW.exit252.thread294: ; preds = %bb.bc, %bb.bf, %bb.ba, %bb.az, %uriContainsUglyPercentEncodingW.exit252
  %i.pb = phi i32 [ %i.ma, %bb.bc ], [ %i.nm, %bb.bf ], [ %i.ma, %bb.ba ], [ %i.ma, %bb.az ], [ %i.mb, %uriContainsUglyPercentEncodingW.exit252 ] ; 5 uses
  %i.pc = and i32 %1, 8
  %.not191 = icmp eq i32 %i.pc, 0
  br i1 %.not191, label %.thread302, label %bb.bp

bb.bp:                                            ; preds = %uriContainsUglyPercentEncodingW.exit252.thread294
  %i.pd = load ptr, ptr %0, align 8, !tbaa !68
  %i.pe = icmp eq ptr %i.pd, null
  br i1 %i.pe, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.pg = load i32, ptr %i.pf, align 8, !tbaa !101
  %.not192 = icmp eq i32 %i.pg, 0
  %i.ph = zext i1 %.not192 to i32
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.pi = phi i32 [ 0, %bb.bp ], [ %i.ph, %bb.bq ]
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !102 ; 3 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !79
  %.not193 = icmp eq i32 %i.pm, 0
  %.not194320 = icmp eq ptr %i.pk, null           ; 2 uses
  br i1 %.not193, label %.preheader, label %.preheader308

.preheader308:                                    ; preds = %bb.br
  br i1 %.not194320, label %.loopexit, label %.lr.ph319

.preheader:                                       ; preds = %bb.br
  br i1 %.not194320, label %._crit_edge, label %.lr.ph322

.lr.ph319:                                        ; preds = %.preheader308, %.lr.ph319
  %.0318 = phi ptr [ %i.pq, %.lr.ph319 ], [ %i.pk, %.preheader308 ] ; 3 uses
  %i.pn = load ptr, ptr %.0318, align 8, !tbaa !98
  %i.po = getelementptr inbounds nuw i8, ptr %.0318, i64 8
  tail call fastcc void @uriFixPercentEncodingInplaceW(ptr noundef %i.pn, ptr noundef %i.po)
  %i.pp = getelementptr inbounds nuw i8, ptr %.0318, i64 16
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !103 ; 2 uses
  %.not196 = icmp eq ptr %i.pq, null
  br i1 %.not196, label %.loopexit, label %.lr.ph319, !llvm.loop !104

.lr.ph322:                                        ; preds = %.preheader, %bb.bt
  %.1321 = phi ptr [ %i.pu, %bb.bt ], [ %i.pk, %.preheader ] ; 3 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %.1321, i64 8
  %i.ps = tail call fastcc i32 @uriFixPercentEncodingMallocW(ptr noundef %.1321, ptr noundef %i.pr, ptr noundef %3)
  %.not195 = icmp eq i32 %i.ps, 0
  br i1 %.not195, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %.lr.ph322
  tail call fastcc void @uriPreventLeakageW(ptr noundef %0, i32 noundef %i.pb, ptr noundef %3)
  br label %bb.ef

bb.bt:                                            ; preds = %.lr.ph322
  %i.pt = getelementptr inbounds nuw i8, ptr %.1321, i64 16
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !103 ; 2 uses
  %.not194 = icmp eq ptr %i.pu, null
  br i1 %.not194, label %._crit_edge, label %.lr.ph322, !llvm.loop !105

._crit_edge:                                      ; preds = %bb.bt, %.preheader
  %i.pv = or i32 %i.pb, 8                         ; 2 uses
  store i32 %i.pv, ptr %i.a, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph319, %.preheader308, %._crit_edge
  %i.pw = phi i32 [ %i.pv, %._crit_edge ], [ %i.pb, %.preheader308 ], [ %i.pb, %.lr.ph319 ] ; 3 uses
  %i.px = load i32, ptr %i.pl, align 4, !tbaa !79
  %i.py = icmp eq i32 %i.px, 1
  %i.pz = and i32 %i.pw, 8
  %i.qa = icmp ne i32 %i.pz, 0
  %i.qb = select i1 %i.py, i1 true, i1 %i.qa
  %i.qc = zext i1 %i.qb to i32
  %i.qd = tail call i32 @uriRemoveDotSegmentsExW(ptr noundef %0, i32 noundef %i.pi, i32 noundef %i.qc, ptr noundef %3) #6
  %.not197 = icmp eq i32 %i.qd, 0
  br i1 %.not197, label %bb.bu, label %.critedge

bb.bu:                                            ; preds = %.loopexit
  tail call fastcc void @uriPreventLeakageW(ptr noundef %0, i32 noundef %i.pw, ptr noundef %3)
  br label %bb.ef

.critedge:                                        ; preds = %.loopexit
  tail call void @uriFixEmptyTrailSegmentW(ptr noundef nonnull %0, ptr noundef %3) #6
  br label %.loopexit310

.loopexit310:                                     ; preds = %.loopexit309, %.critedge
  %i.qe = phi i32 [ %i.pw, %.critedge ], [ %i.mb, %.loopexit309 ] ; 2 uses
  br i1 %.not212, label %.thread302, label %.loopexit310.thread

.loopexit310.thread:                              ; preds = %uriContainsUglyPercentEncodingW.exit252.thread296, %.thread303, %.loopexit310
  %i.qf = phi i32 [ %i.mb, %.thread303 ], [ %i.qe, %.loopexit310 ], [ %i.mb, %uriContainsUglyPercentEncodingW.exit252.thread296 ]
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !106 ; 4 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !107 ; 3 uses
  %i.qk = icmp ne ptr %i.qh, null
  %i.ql = icmp ugt ptr %i.qj, %i.qh
  %or.cond29.i262 = and i1 %i.qk, %i.ql
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qh, i64 8 ; 2 uses
  %i.qn = icmp ult ptr %i.qm, %i.qj
  %or.cond.i263 = select i1 %or.cond29.i262, i1 %i.qn, i1 false
  br i1 %or.cond.i263, label %.lr.ph.i265, label %uriContainsUglyPercentEncodingW.exit270

.lr.ph.i265:                                      ; preds = %.loopexit310.thread, %bb.by
  %i.qo = phi ptr [ %i.rf, %bb.by ], [ %i.qm, %.loopexit310.thread ] ; 2 uses
  %.02132.i266 = phi ptr [ %i.re, %bb.by ], [ %i.qh, %.loopexit310.thread ] ; 4 uses
  %i.qp = load i32, ptr %.02132.i266, align 4, !tbaa !3
  %i.qq = icmp eq i32 %i.qp, 37
  br i1 %i.qq, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %.lr.ph.i265
  %i.qr = getelementptr inbounds nuw i8, ptr %.02132.i266, i64 4
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !3  ; 2 uses
  %i.qt = add i32 %i.qs, -97
  %or.cond30.i267 = icmp ult i32 %i.qt, 6
  br i1 %or.cond30.i267, label %uriContainsUglyPercentEncodingW.exit270, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.qu = load i32, ptr %i.qo, align 4, !tbaa !3
  %i.qv = add i32 %i.qu, -97
  %or.cond31.i268 = icmp ult i32 %i.qv, 6
  br i1 %or.cond31.i268, label %uriContainsUglyPercentEncodingW.exit270, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.qw = tail call zeroext i8 @uriHexdigToIntW(i32 noundef %i.qs) #6
  %i.qx = load i32, ptr %i.qo, align 4, !tbaa !3
  %i.qy = tail call zeroext i8 @uriHexdigToIntW(i32 noundef %i.qx) #6
  %i.qz = zext i8 %i.qw to i32
  %i.ra = shl nuw nsw i32 %i.qz, 4
  %i.rb = zext i8 %i.qy to i32
  %i.rc = add nuw nsw i32 %i.ra, %i.rb
  %i.rd = tail call i32 @uriIsUnreserved(i32 noundef %i.rc) #6
  %.not.i269 = icmp eq i32 %i.rd, 0
  br i1 %.not.i269, label %bb.by, label %uriContainsUglyPercentEncodingW.exit270

bb.by:                                            ; preds = %bb.bx, %.lr.ph.i265
  %i.re = getelementptr inbounds nuw i8, ptr %.02132.i266, i64 4
  %i.rf = getelementptr inbounds nuw i8, ptr %.02132.i266, i64 12 ; 2 uses
  %i.rg = icmp ult ptr %i.rf, %i.qj
  br i1 %i.rg, label %.lr.ph.i265, label %uriContainsUglyPercentEncodingW.exit270, !llvm.loop !78

uriContainsUglyPercentEncodingW.exit270:          ; preds = %bb.bv, %bb.bw, %bb.bx, %bb.by, %.loopexit310.thread
  %.not208 = phi i1 [ true, %.loopexit310.thread ], [ false, %bb.bx ], [ true, %bb.by ], [ false, %bb.bv ], [ false, %bb.bw ]
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !108 ; 4 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !109 ; 3 uses
  %i.rl = icmp ne ptr %i.ri, null
  %i.rm = icmp ugt ptr %i.rk, %i.ri
  %or.cond29.i271 = and i1 %i.rl, %i.rm
  %i.rn = getelementptr inbounds nuw i8, ptr %i.ri, i64 8 ; 2 uses
  %i.ro = icmp ult ptr %i.rn, %i.rk
  %or.cond.i272 = select i1 %or.cond29.i271, i1 %i.ro, i1 false
  br i1 %or.cond.i272, label %.lr.ph.i274, label %uriContainsUglyPercentEncodingW.exit279

.lr.ph.i274:                                      ; preds = %uriContainsUglyPercentEncodingW.exit270, %bb.cc
  %i.rp = phi ptr [ %i.sg, %bb.cc ], [ %i.rn, %uriContainsUglyPercentEncodingW.exit270 ] ; 2 uses
  %.02132.i275 = phi ptr [ %i.sf, %bb.cc ], [ %i.ri, %uriContainsUglyPercentEncodingW.exit270 ] ; 4 uses
  %i.rq = load i32, ptr %.02132.i275, align 4, !tbaa !3
  %i.rr = icmp eq i32 %i.rq, 37
  br i1 %i.rr, label %bb.bz, label %bb.cc

bb.bz:                                            ; preds = %.lr.ph.i274
  %i.rs = getelementptr inbounds nuw i8, ptr %.02132.i275, i64 4
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !3  ; 2 uses
  %i.ru = add i32 %i.rt, -97
  %or.cond30.i276 = icmp ult i32 %i.ru, 6
  br i1 %or.cond30.i276, label %uriContainsUglyPercentEncodingW.exit279, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.rv = load i32, ptr %i.rp, align 4, !tbaa !3
  %i.rw = add i32 %i.rv, -97
  %or.cond31.i277 = icmp ult i32 %i.rw, 6
  br i1 %or.cond31.i277, label %uriContainsUglyPercentEncodingW.exit279, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.rx = tail call zeroext i8 @uriHexdigToIntW(i32 noundef %i.rt) #6
  %i.ry = load i32, ptr %i.rp, align 4, !tbaa !3
  %i.rz = tail call zeroext i8 @uriHexdigToIntW(i32 noundef %i.ry) #6
  %i.sa = zext i8 %i.rx to i32
  %i.sb = shl nuw nsw i32 %i.sa, 4
  %i.sc = zext i8 %i.rz to i32
  %i.sd = add nuw nsw i32 %i.sb, %i.sc
  %i.se = tail call i32 @uriIsUnreserved(i32 noundef %i.sd) #6
  %.not.i278 = icmp eq i32 %i.se, 0
  br i1 %.not.i278, label %bb.cc, label %uriContainsUglyPercentEncodingW.exit279

bb.cc:                                            ; preds = %bb.cb, %.lr.ph.i274
  %i.sf = getelementptr inbounds nuw i8, ptr %.02132.i275, i64 4
  %i.sg = getelementptr inbounds nuw i8, ptr %.02132.i275, i64 12 ; 2 uses
  %i.sh = icmp ult ptr %i.sg, %i.rk
  br i1 %i.sh, label %.lr.ph.i274, label %uriContainsUglyPercentEncodingW.exit279, !llvm.loop !78

uriContainsUglyPercentEncodingW.exit279:          ; preds = %bb.bz, %bb.ca, %bb.cb, %bb.cc, %uriContainsUglyPercentEncodingW.exit270
  %.not209 = phi i1 [ true, %uriContainsUglyPercentEncodingW.exit270 ], [ false, %bb.cb ], [ true, %bb.cc ], [ false, %bb.bz ], [ false, %bb.ca ]
  br i1 %.not208, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %uriContainsUglyPercentEncodingW.exit279
  %i.si = load i32, ptr %2, align 4, !tbaa !3
  %i.sj = or i32 %i.si, 16
  store i32 %i.sj, ptr %2, align 4, !tbaa !3
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %uriContainsUglyPercentEncodingW.exit279
  br i1 %.not209, label %bb.cs, label %.thread305

.thread305:                                       ; preds = %bb.ce
  %i.sk = load i32, ptr %2, align 4, !tbaa !3
  %i.sl = or i32 %i.sk, 32
  store i32 %i.sl, ptr %2, align 4, !tbaa !3
  br label %bb.ef

.thread302:                                       ; preds = %uriContainsUglyPercentEncodingW.exit252.thread294, %.loopexit310
  %i.sm = phi i32 [ %i.pb, %uriContainsUglyPercentEncodingW.exit252.thread294 ], [ %i.qe, %.loopexit310 ] ; 5 uses
  %i.sn = and i32 %1, 16
  %.not200 = icmp eq i32 %i.sn, 0
  br i1 %.not200, label %bb.cl, label %bb.cf

bb.cf:                                            ; preds = %.thread302
  %i.so = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !106 ; 2 uses
  %.not201 = icmp eq ptr %i.sp, null
  br i1 %.not201, label %bb.cl, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.sq = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !79
  %.not202 = icmp eq i32 %i.sr, 0
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  br i1 %.not202, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  tail call fastcc void @uriFixPercentEncodingInplaceW(ptr noundef nonnull %i.sp, ptr noundef %i.ss)
  br label %bb.cl

bb.ci:                                            ; preds = %bb.cg
  %i.st = tail call fastcc i32 @uriFixPercentEncodingMallocW(ptr noundef %i.so, ptr noundef %i.ss, ptr noundef %3)
  %.not203 = icmp eq i32 %i.st, 0
  br i1 %.not203, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  tail call fastcc void @uriPreventLeakageW(ptr noundef %0, i32 noundef %i.sm, ptr noundef %3)
  br label %bb.ef

bb.ck:                                            ; preds = %bb.ci
  %i.su = or i32 %i.sm, 16                        ; 2 uses
  store i32 %i.su, ptr %i.a, align 4, !tbaa !3
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ch, %bb.ck, %bb.cf, %.thread302
  %i.sv = phi i32 [ %i.sm, %bb.ch ], [ %i.su, %bb.ck ], [ %i.sm, %bb.cf ], [ %i.sm, %.thread302 ] ; 5 uses
  %i.sw = and i32 %1, 32
  %.not204 = icmp eq i32 %i.sw, 0
  br i1 %.not204, label %.thread304, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.sx = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !108 ; 2 uses
  %.not205 = icmp eq ptr %i.sy, null
  br i1 %.not205, label %.thread304, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.sz = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.ta = load i32, ptr %i.sz, align 4, !tbaa !79
  %.not206 = icmp eq i32 %i.ta, 0
  %i.tb = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  br i1 %.not206, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  tail call fastcc void @uriFixPercentEncodingInplaceW(ptr noundef nonnull %i.sy, ptr noundef %i.tb)
  br label %.thread304

bb.cp:                                            ; preds = %bb.cn
  %i.tc = tail call fastcc i32 @uriFixPercentEncodingMallocW(ptr noundef %i.sx, ptr noundef %i.tb, ptr noundef %3)
  %.not207 = icmp eq i32 %i.tc, 0
  br i1 %.not207, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  tail call fastcc void @uriPreventLeakageW(ptr noundef %0, i32 noundef %i.sv, ptr noundef %3)
  br label %bb.ef

bb.cr:                                            ; preds = %bb.cp
  %i.td = or i32 %i.sv, 32                        ; 2 uses
  store i32 %i.td, ptr %i.a, align 4, !tbaa !3
  br label %.thread304

bb.cs:                                            ; preds = %bb.ce
  br i1 %.not212, label %.thread304, label %bb.ef

.thread304:                                       ; preds = %bb.co, %bb.cr, %bb.cm, %bb.cl, %bb.cs
  %i.te = phi i32 [ %i.sv, %bb.co ], [ %i.td, %bb.cr ], [ %i.sv, %bb.cm ], [ %i.sv, %bb.cl ], [ %i.qf, %bb.cs ] ; 5 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.tg = load i32, ptr %i.tf, align 4, !tbaa !79
  %.not210 = icmp eq i32 %i.tg, 0
  br i1 %.not210, label %bb.ct, label %bb.ef

bb.ct:                                            ; preds = %.thread304
  %i.th = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !102 ; 2 uses
  %i.tj = and i32 %i.te, 1
  %i.tk = icmp eq i32 %i.tj, 0
  br i1 %i.tk, label %bb.cu, label %bb.cx

bb.cu:                                            ; preds = %bb.ct
  %i.tl = load ptr, ptr %0, align 8, !tbaa !110   ; 3 uses
  %.not.i.i = icmp eq ptr %i.tl, null
  br i1 %.not.i.i, label %bb.cx, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.tm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !111 ; 2 uses
  %i.to = icmp ugt ptr %i.tn, %i.tl
  br i1 %i.to, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.tp = ptrtoint ptr %i.tn to i64
  %i.tq = ptrtoint ptr %i.tl to i64
  %i.tr = sub i64 %i.tp, %i.tq
  %sext.i.i = shl i64 %i.tr, 30
  %i.ts = ashr i64 %sext.i.i, 32                  ; 2 uses
  %i.tt = shl i64 %i.ts, 34
  %i.tu = load ptr, ptr %3, align 8, !tbaa !31
  %i.tv = ashr exact i64 %i.tt, 32                ; 2 uses
  %i.tw = tail call ptr %i.tu(ptr noundef nonnull %3, i64 noundef %i.tv) #6, !inline_history !112 ; 4 uses
  %i.tx = icmp eq ptr %i.tw, null
  br i1 %i.tx, label %bb.ee, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.cw
  %i.ty = load ptr, ptr %0, align 8, !tbaa !110
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.tw, ptr align 4 %i.ty, i64 %i.tv, i1 false)
  store ptr %i.tw, ptr %0, align 8, !tbaa !110
  %i.tz = getelementptr inbounds [4 x i8], ptr %i.tw, i64 %i.ts
  store ptr %i.tz, ptr %i.tm, align 8, !tbaa !111
  %i.ua = or disjoint i32 %i.te, 1                ; 2 uses
  store i32 %i.ua, ptr %i.a, align 4, !tbaa !3
  br label %bb.cx

bb.cx:                                            ; preds = %.thread.i.i, %bb.cv, %bb.cu, %bb.ct
  %i.ub = phi i32 [ %i.ua, %.thread.i.i ], [ %i.te, %bb.cv ], [ %i.te, %bb.cu ], [ %i.te, %bb.ct ] ; 5 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ud = and i32 %i.ub, 2
  %i.ue = icmp eq i32 %i.ud, 0
  br i1 %i.ue, label %bb.cy, label %bb.db

bb.cy:                                            ; preds = %bb.cx
  %i.uf = load ptr, ptr %i.uc, align 8, !tbaa !110 ; 3 uses
  %.not.i80.i = icmp eq ptr %i.uf, null
  br i1 %.not.i80.i, label %bb.db, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ug = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !111 ; 2 uses
  %i.ui = icmp ugt ptr %i.uh, %i.uf
  br i1 %i.ui, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.uj = ptrtoint ptr %i.uh to i64
  %i.uk = ptrtoint ptr %i.uf to i64
  %i.ul = sub i64 %i.uj, %i.uk
  %sext.i81.i = shl i64 %i.ul, 30
  %i.um = ashr i64 %sext.i81.i, 32                ; 2 uses
  %i.un = shl i64 %i.um, 34
  %i.uo = load ptr, ptr %3, align 8, !tbaa !31
  %i.up = ashr exact i64 %i.un, 32                ; 2 uses
  %i.uq = tail call ptr %i.uo(ptr noundef nonnull %3, i64 noundef %i.up) #6, !inline_history !112 ; 4 uses
  %i.ur = icmp eq ptr %i.uq, null
  br i1 %i.ur, label %bb.ee, label %.thread.i82.i

.thread.i82.i:                                    ; preds = %bb.da
  %i.us = load ptr, ptr %i.uc, align 8, !tbaa !110
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.uq, ptr align 4 %i.us, i64 %i.up, i1 false)
  store ptr %i.uq, ptr %i.uc, align 8, !tbaa !110
  %i.ut = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %i.um
  store ptr %i.ut, ptr %i.ug, align 8, !tbaa !111
  %i.uu = or disjoint i32 %i.ub, 2                ; 2 uses
  store i32 %i.uu, ptr %i.a, align 4, !tbaa !3
  br label %bb.db

bb.db:                                            ; preds = %.thread.i82.i, %bb.cz, %bb.cy, %bb.cx
  %i.uv = phi i32 [ %i.uu, %.thread.i82.i ], [ %i.ub, %bb.cz ], [ %i.ub, %bb.cy ], [ %i.ub, %bb.cx ] ; 5 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.ux = and i32 %i.uv, 16
  %i.uy = icmp eq i32 %i.ux, 0
  br i1 %i.uy, label %bb.dc, label %bb.df

bb.dc:                                            ; preds = %bb.db
  %i.uz = load ptr, ptr %i.uw, align 8, !tbaa !110 ; 3 uses
  %.not.i85.i = icmp eq ptr %i.uz, null
  br i1 %.not.i85.i, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.va = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !111 ; 2 uses
  %i.vc = icmp ugt ptr %i.vb, %i.uz
  br i1 %i.vc, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.vd = ptrtoint ptr %i.vb to i64
  %i.ve = ptrtoint ptr %i.uz to i64
  %i.vf = sub i64 %i.vd, %i.ve
  %sext.i86.i = shl i64 %i.vf, 30
  %i.vg = ashr i64 %sext.i86.i, 32                ; 2 uses
  %i.vh = shl i64 %i.vg, 34
  %i.vi = load ptr, ptr %3, align 8, !tbaa !31
  %i.vj = ashr exact i64 %i.vh, 32                ; 2 uses
  %i.vk = tail call ptr %i.vi(ptr noundef nonnull %3, i64 noundef %i.vj) #6, !inline_history !112 ; 4 uses
  %i.vl = icmp eq ptr %i.vk, null
  br i1 %i.vl, label %bb.ee, label %.thread.i87.i

.thread.i87.i:                                    ; preds = %bb.de
  %i.vm = load ptr, ptr %i.uw, align 8, !tbaa !110
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.vk, ptr align 4 %i.vm, i64 %i.vj, i1 false)
  store ptr %i.vk, ptr %i.uw, align 8, !tbaa !110
  %i.vn = getelementptr inbounds [4 x i8], ptr %i.vk, i64 %i.vg
  store ptr %i.vn, ptr %i.va, align 8, !tbaa !111
  %i.vo = or disjoint i32 %i.uv, 16               ; 2 uses
  store i32 %i.vo, ptr %i.a, align 4, !tbaa !3
  br label %bb.df

bb.df:                                            ; preds = %.thread.i87.i, %bb.dd, %bb.dc, %bb.db
  %i.vp = phi i32 [ %i.vo, %.thread.i87.i ], [ %i.uv, %bb.dd ], [ %i.uv, %bb.dc ], [ %i.uv, %bb.db ] ; 5 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.vr = and i32 %i.vp, 32
  %i.vs = icmp eq i32 %i.vr, 0
  br i1 %i.vs, label %bb.dg, label %bb.dj

bb.dg:                                            ; preds = %bb.df
  %i.vt = load ptr, ptr %i.vq, align 8, !tbaa !110 ; 3 uses
  %.not.i90.i = icmp eq ptr %i.vt, null
  br i1 %.not.i90.i, label %bb.dj, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.vu = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !111 ; 2 uses
  %i.vw = icmp ugt ptr %i.vv, %i.vt
  br i1 %i.vw, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.vx = ptrtoint ptr %i.vv to i64
  %i.vy = ptrtoint ptr %i.vt to i64
  %i.vz = sub i64 %i.vx, %i.vy
  %sext.i91.i = shl i64 %i.vz, 30
  %i.wa = ashr i64 %sext.i91.i, 32                ; 2 uses
  %i.wb = shl i64 %i.wa, 34
  %i.wc = load ptr, ptr %3, align 8, !tbaa !31
  %i.wd = ashr exact i64 %i.wb, 32                ; 2 uses
  %i.we = tail call ptr %i.wc(ptr noundef nonnull %3, i64 noundef %i.wd) #6, !inline_history !112 ; 4 uses
  %i.wf = icmp eq ptr %i.we, null
  br i1 %i.wf, label %bb.ee, label %.thread.i92.i

.thread.i92.i:                                    ; preds = %bb.di
  %i.wg = load ptr, ptr %i.vq, align 8, !tbaa !110
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.we, ptr align 4 %i.wg, i64 %i.wd, i1 false)
  store ptr %i.we, ptr %i.vq, align 8, !tbaa !110
  %i.wh = getelementptr inbounds [4 x i8], ptr %i.we, i64 %i.wa
  store ptr %i.wh, ptr %i.vu, align 8, !tbaa !111
  %i.wi = or disjoint i32 %i.vp, 32               ; 2 uses
  store i32 %i.wi, ptr %i.a, align 4, !tbaa !3
  br label %bb.dj

bb.dj:                                            ; preds = %.thread.i92.i, %bb.dh, %bb.dg, %bb.df
  %i.wj = phi i32 [ %i.wi, %.thread.i92.i ], [ %i.vp, %bb.dh ], [ %i.vp, %bb.dg ], [ %i.vp, %bb.df ]
  %i.wk = and i32 %i.wj, 4
  %i.wl = icmp eq i32 %i.wk, 0
  br i1 %i.wl, label %bb.dk, label %bb.dr

bb.dk:                                            ; preds = %bb.dj
  %i.wm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !91
  %i.wo = icmp eq ptr %i.wn, null
  br i1 %i.wo, label %bb.dl, label %bb.dr

bb.dl:                                            ; preds = %bb.dk
  %i.wp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.wq = load ptr, ptr %i.wp, align 8, !tbaa !92
  %i.wr = icmp eq ptr %i.wq, null
  br i1 %i.wr, label %bb.dm, label %bb.dr

bb.dm:                                            ; preds = %bb.dl
  %i.ws = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !86
  %.not68.i = icmp eq ptr %i.wt, null
  br i1 %.not68.i, label %bb.dp, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.wu = call fastcc i32 @uriMakeRangeOwnerW(ptr noundef nonnull %i.a, i32 noundef 4, ptr noundef %i.ws, ptr noundef %3)
  %.not71.i = icmp eq i32 %i.wu, 0
  br i1 %.not71.i, label %bb.ee, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.wv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ww = load <2 x ptr>, ptr %i.ws, align 8, !tbaa !80
  store <2 x ptr> %i.ww, ptr %i.wv, align 8, !tbaa !80
  br label %bb.dr

bb.dp:                                            ; preds = %bb.dm
  %i.wx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !76
  %.not69.i = icmp eq ptr %i.wy, null
  br i1 %.not69.i, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.wz = call fastcc i32 @uriMakeRangeOwnerW(ptr noundef nonnull %i.a, i32 noundef 4, ptr noundef %i.wx, ptr noundef %3)
  %.not70.i = icmp eq i32 %i.wz, 0
  br i1 %.not70.i, label %bb.ee, label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp, %bb.do, %bb.dl, %bb.dk, %bb.dj
  %i.xa = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %i.xb = and i32 %i.xa, 8
  %i.xc = icmp eq i32 %i.xb, 0
  br i1 %i.xc, label %.preheader116.i, label %bb.eb

.preheader116.i:                                  ; preds = %bb.dr
  %.not72118.i = icmp eq ptr %i.ti, null
  br i1 %.not72118.i, label %._crit_edge.i281, label %.lr.ph.i280

.lr.ph.i280:                                      ; preds = %.preheader116.i, %bb.ea
  %.062119.i = phi ptr [ %i.yh, %bb.ea ], [ %i.ti, %.preheader116.i ] ; 8 uses
  %i.xd = load ptr, ptr %.062119.i, align 8, !tbaa !110 ; 3 uses
  %.not.i95.i = icmp eq ptr %i.xd, null
  br i1 %.not.i95.i, label %bb.ea, label %bb.ds

bb.ds:                                            ; preds = %.lr.ph.i280
  %i.xe = getelementptr inbounds nuw i8, ptr %.062119.i, i64 8 ; 2 uses
  %i.xf = load ptr, ptr %i.xe, align 8, !tbaa !111 ; 2 uses
  %i.xg = icmp ugt ptr %i.xf, %i.xd
  br i1 %i.xg, label %bb.dt, label %bb.ea

bb.dt:                                            ; preds = %bb.ds
  %i.xh = ptrtoint ptr %i.xf to i64
  %i.xi = ptrtoint ptr %i.xd to i64
  %i.xj = sub i64 %i.xh, %i.xi
  %sext.i96.i = shl i64 %i.xj, 30
  %i.xk = ashr i64 %sext.i96.i, 32                ; 2 uses
  %i.xl = shl i64 %i.xk, 34
  %i.xm = load ptr, ptr %3, align 8, !tbaa !31
  %i.xn = ashr exact i64 %i.xl, 32                ; 2 uses
  %i.xo = tail call ptr %i.xm(ptr noundef nonnull %3, i64 noundef %i.xn) #6, !inline_history !112 ; 4 uses
  %i.xp = icmp eq ptr %i.xo, null
  br i1 %i.xp, label %uriMakeRangeOwnerW.exit98.i, label %.thread.i97.i

.thread.i97.i:                                    ; preds = %bb.dt
  %i.xq = load ptr, ptr %.062119.i, align 8, !tbaa !110
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.xo, ptr align 4 %i.xq, i64 %i.xn, i1 false)
  store ptr %i.xo, ptr %.062119.i, align 8, !tbaa !110
  %i.xr = getelementptr inbounds [4 x i8], ptr %i.xo, i64 %i.xk
  store ptr %i.xr, ptr %i.xe, align 8, !tbaa !111
  br label %bb.ea

uriMakeRangeOwnerW.exit98.i:                      ; preds = %bb.dt
  %i.xs = load ptr, ptr %i.th, align 8, !tbaa !102 ; 2 uses
  %.not75120.i = icmp eq ptr %i.xs, %.062119.i
  br i1 %.not75120.i, label %.preheader.i282, label %.lr.ph122.i

.lr.ph122.i:                                      ; preds = %uriMakeRangeOwnerW.exit98.i
  %i.xt = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  br label %bb.du

.preheader.i282:                                  ; preds = %bb.dx, %uriMakeRangeOwnerW.exit98.i
  %i.xu = getelementptr inbounds nuw i8, ptr %3, i64 32
  br label %bb.dy

bb.du:                                            ; preds = %bb.dx, %.lr.ph122.i
  %.061121.i = phi ptr [ %i.xs, %.lr.ph122.i ], [ %i.xw, %bb.dx ] ; 4 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %.061121.i, i64 16
  %i.xw = load ptr, ptr %i.xv, align 8, !tbaa !103 ; 2 uses
  %i.xx = load ptr, ptr %.061121.i, align 8, !tbaa !98 ; 3 uses
  %.not77.i = icmp eq ptr %i.xx, null
  br i1 %.not77.i, label %bb.dx, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.xy = getelementptr inbounds nuw i8, ptr %.061121.i, i64 8
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !100
  %i.ya = icmp ugt ptr %i.xz, %i.xx
  br i1 %i.ya, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.yb = load ptr, ptr %i.xt, align 8, !tbaa !63
  tail call void %i.yb(ptr noundef nonnull %3, ptr noundef nonnull %i.xx) #6, !inline_history !113
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv, %bb.du
  %i.yc = load ptr, ptr %i.xt, align 8, !tbaa !63
  tail call void %i.yc(ptr noundef nonnull %3, ptr noundef nonnull %.061121.i) #6, !inline_history !113
  %.not75.i = icmp eq ptr %i.xw, %.062119.i
  br i1 %.not75.i, label %.preheader.i282, label %bb.du, !llvm.loop !114

bb.dy:                                            ; preds = %bb.dy, %.preheader.i282
  %.1123.i = phi ptr [ %.062119.i, %.preheader.i282 ], [ %i.ye, %bb.dy ] ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %.1123.i, i64 16
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !103 ; 2 uses
  %i.yf = load ptr, ptr %i.xu, align 8, !tbaa !63
  tail call void %i.yf(ptr noundef nonnull %3, ptr noundef nonnull %.1123.i) #6, !inline_history !113
  %.not76.i = icmp eq ptr %i.ye, null
  br i1 %.not76.i, label %bb.dz, label %bb.dy, !llvm.loop !115

bb.dz:                                            ; preds = %bb.dy
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.th, i8 0, i64 16, i1 false)
  br label %bb.ee

bb.ea:                                            ; preds = %.thread.i97.i, %bb.ds, %.lr.ph.i280
  %i.yg = getelementptr inbounds nuw i8, ptr %.062119.i, i64 16
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !103 ; 2 uses
  %.not72.i = icmp eq ptr %i.yh, null
  br i1 %.not72.i, label %._crit_edge.i281, label %.lr.ph.i280, !llvm.loop !116

._crit_edge.i281:                                 ; preds = %bb.ea, %.preheader116.i
  %i.yi = or disjoint i32 %i.xa, 8
  store i32 %i.yi, ptr %i.a, align 4, !tbaa !3
  br label %bb.eb

bb.eb:                                            ; preds = %._crit_edge.i281, %bb.dr
  %i.yj = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.yk = load ptr, ptr %i.yj, align 8, !tbaa !110 ; 3 uses
  %.not.i100.i = icmp eq ptr %i.yk, null
  br i1 %.not.i100.i, label %uriMakeOwnerW.exit, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.yl = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ym = load ptr, ptr %i.yl, align 8, !tbaa !111 ; 2 uses
  %i.yn = icmp ugt ptr %i.ym, %i.yk
  br i1 %i.yn, label %bb.ed, label %uriMakeOwnerW.exit

bb.ed:                                            ; preds = %bb.ec
  %i.yo = ptrtoint ptr %i.ym to i64
  %i.yp = ptrtoint ptr %i.yk to i64
  %i.yq = sub i64 %i.yo, %i.yp
  %sext.i101.i = shl i64 %i.yq, 30
  %i.yr = ashr i64 %sext.i101.i, 32               ; 2 uses
  %i.ys = shl i64 %i.yr, 34
  %i.yt = load ptr, ptr %3, align 8, !tbaa !31
  %i.yu = ashr exact i64 %i.ys, 32                ; 2 uses
  %i.yv = tail call ptr %i.yt(ptr noundef nonnull %3, i64 noundef %i.yu) #6, !inline_history !112 ; 4 uses
  %i.yw = icmp eq ptr %i.yv, null
  br i1 %i.yw, label %bb.ee, label %.thread.i102.i

.thread.i102.i:                                   ; preds = %bb.ed
  %i.yx = load ptr, ptr %i.yj, align 8, !tbaa !110
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.yv, ptr align 4 %i.yx, i64 %i.yu, i1 false)
  store ptr %i.yv, ptr %i.yj, align 8, !tbaa !110
  %i.yy = getelementptr inbounds [4 x i8], ptr %i.yv, i64 %i.yr
  store ptr %i.yy, ptr %i.yl, align 8, !tbaa !111
  br label %uriMakeOwnerW.exit

bb.ee:                                            ; preds = %bb.dz, %bb.dq, %bb.di, %bb.cw, %bb.dn, %bb.de, %bb.da, %bb.ed
  %i.yz = load i32, ptr %i.a, align 4, !tbaa !3
  tail call fastcc void @uriPreventLeakageW(ptr noundef %0, i32 noundef %i.yz, ptr noundef %3)
  br label %bb.ef

uriMakeOwnerW.exit:                               ; preds = %.thread.i102.i, %bb.ec, %bb.eb
  store i32 1, ptr %i.tf, align 4, !tbaa !79
  br label %bb.ef

bb.ef:                                            ; preds = %.thread305, %bb.cs, %.thread304, %uriMakeOwnerW.exit, %bb.bs, %bb.bu, %bb.e, %bb.b, %bb.ee, %bb.cq, %bb.cj, %bb.be, %bb.ap, %bb.ai, %bb.y, %bb.c
  %.1160 = phi i32 [ 0, %bb.c ], [ 2, %bb.b ], [ 3, %bb.bs ], [ 3, %bb.ee ], [ 3, %bb.cq ], [ 3, %bb.cj ], [ 0, %bb.e ], [ 3, %bb.be ], [ 3, %bb.ai ], [ 3, %bb.ap ], [ 3, %bb.y ], [ 3, %bb.bu ], [ 0, %uriMakeOwnerW.exit ], [ 0, %.thread304 ], [ 0, %bb.cs ], [ 0, %.thread305 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.1160
}

; Function Attrs: nounwind uwtable
define range(i32 0, 4) i32 @uriNormalizeSyntaxExW(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @uriNormalizeSyntaxEngineW(ptr noundef %0, i32 noundef %1, ptr noundef null, ptr noundef nonnull @defaultMemoryManager)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define range(i32 0, 11) i32 @uriNormalizeSyntaxExMmW(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @uriMemoryManagerIsComplete(ptr noundef nonnull %2) #6
  %.not = icmp eq i32 %i.b, 1
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %2, %bb.b ], [ @defaultMemoryManager, %bb.a ]
  %i.c = tail call fastcc i32 @uriNormalizeSyntaxEngineW(ptr noundef %0, i32 noundef %1, ptr noundef null, ptr noundef nonnull %.0)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.05 = phi i32 [ %i.c, %bb.c ], [ 10, %bb.b ]
  ret i32 %.05
}

; Function Attrs: nounwind uwtable
define range(i32 0, 4) i32 @uriNormalizeSyntaxW(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc range(i32 0, 4) i32 @uriNormalizeSyntaxEngineW(ptr noundef %0, i32 noundef -1, ptr noundef null, ptr noundef nonnull @defaultMemoryManager)
  ret i32 %i.a
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @uriPreventLeakageA(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = and i32 %1, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.d = load ptr, ptr %0, align 8, !tbaa !7
  tail call void %i.c(ptr noundef %2, ptr noundef %i.d) #6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = and i32 %1, 2
  %.not58 = icmp eq i32 %i.e, 0
  br i1 %.not58, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !63
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !45
  tail call void %i.g(ptr noundef %2, ptr noundef %i.i) #6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = and i32 %1, 4
  %.not59 = icmp eq i32 %i.j, 0
  br i1 %.not59, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !35   ; 2 uses
  %.not60 = icmp eq ptr %i.m, null
  br i1 %.not60, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !63
  tail call void %i.o(ptr noundef %2, ptr noundef nonnull %i.m) #6
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  br label %.sink.split

bb.h:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !20   ; 2 uses
  %.not61 = icmp eq ptr %i.r, null
  br i1 %.not61, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !40
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !41
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !63
  tail call void %i.y(ptr noundef %2, ptr noundef nonnull %i.r) #6
  br label %.sink.split

.sink.split:                                      ; preds = %bb.k, %bb.g
  %.sink = phi ptr [ %i.l, %bb.g ], [ %i.q, %bb.k ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sink, i8 0, i64 16, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.j, %bb.i, %bb.h, %bb.e
  %i.z = and i32 %1, 8
  %.not62 = icmp eq i32 %i.z, 0
  br i1 %.not62, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !52 ; 2 uses
  %.not6366 = icmp eq ptr %i.ab, null
  br i1 %.not6366, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.p
  %.067 = phi ptr [ %i.ab, %.lr.ph ], [ %i.ae, %bb.p ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.067, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !53 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.067, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !50
  %i.ah = load ptr, ptr %.067, align 8, !tbaa !48 ; 2 uses
  %i.ai = icmp ugt ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aj = load ptr, ptr %i.ac, align 8, !tbaa !63
  tail call void %i.aj(ptr noundef %2, ptr noundef %i.ah) #6
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ak = load ptr, ptr %i.ac, align 8, !tbaa !63
  tail call void %i.ak(ptr noundef %2, ptr noundef nonnull %.067) #6
  %.not63 = icmp eq ptr %i.ae, null
  br i1 %.not63, label %._crit_edge, label %bb.n, !llvm.loop !117

._crit_edge:                                      ; preds = %bb.p, %bb.m
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.l
  %i.al = and i32 %1, 16
  %.not64 = icmp eq i32 %i.al, 0
  br i1 %.not64, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !63
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !56
  tail call void %i.an(ptr noundef %2, ptr noundef %i.ap) #6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.aq = and i32 %1, 32
  %.not65 = icmp eq i32 %i.aq, 0
  br i1 %.not65, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !63
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !58
  tail call void %i.as(ptr noundef %2, ptr noundef %i.au) #6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @uriFixPercentEncodingInplaceA(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !24     ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = trunc i64 %i.f to i32                    ; 3 uses
  %i.h = icmp sgt i32 %i.g, 2
  br i1 %i.h, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h, %bb.c
  %.039.lcssa.i = phi ptr [ %0, %bb.c ], [ %.241.i, %bb.h ] ; 8 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.ba, %bb.h ] ; 2 uses
  %.039.lcssa.i18 = ptrtoaddr ptr %.039.lcssa.i to i64
  %i.i = icmp slt i32 %.0.lcssa.i, %i.g
  br i1 %i.i, label %iter.check, label %uriFixPercentEncodingEngineA.exit

iter.check:                                       ; preds = %.preheader.i
  %i.j = sext i32 %.0.lcssa.i to i64              ; 8 uses
  %sext.i = shl i64 %i.f, 32
  %i.k = ashr exact i64 %sext.i, 32               ; 3 uses
  %i.l = sub nsw i64 %i.k, %i.j                   ; 7 uses
  %min.iters.check = icmp ult i64 %i.l, 8
  br i1 %min.iters.check, label %.lr.ph49.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.m = add i64 %i.e, %i.j
  %i.n = sub i64 %i.m, %.039.lcssa.i18
  %diff.check = icmp ugt i64 %i.n, -32
  br i1 %diff.check, label %.lr.ph49.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check19 = icmp ult i64 %i.l, 32
  br i1 %min.iters.check19, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.o = and i64 %i.l, 24
  %n.vec = and i64 %i.l, -32                      ; 5 uses
  %i.p = add nsw i64 %n.vec, %i.j
  %i.q = getelementptr i8, ptr %.039.lcssa.i, i64 %n.vec ; 2 uses
  %invariant.gep = getelementptr i8, ptr %0, i64 %i.j
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.039.lcssa.i, i64 %index ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <16 x i8>, ptr %gep, align 1, !tbaa !17
  %wide.load20 = load <16 x i8>, ptr %i.r, align 1, !tbaa !17
  %i.s = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !17
  store <16 x i8> %wide.load20, ptr %i.s, align 1, !tbaa !17
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !118

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %uriFixPercentEncodingEngineA.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check, label %.lr.ph49.i.preheader, label %vec.epilog.ph, !prof !119

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec22 = and i64 %i.l, -8                     ; 4 uses
  %i.u = add nsw i64 %n.vec22, %i.j
  %i.v = getelementptr i8, ptr %.039.lcssa.i, i64 %n.vec22 ; 2 uses
  %invariant.gep34 = getelementptr i8, ptr %0, i64 %i.j
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index23 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next26, %vec.epilog.vector.body ] ; 3 uses
  %next.gep24 = getelementptr i8, ptr %.039.lcssa.i, i64 %index23
  %gep35 = getelementptr i8, ptr %invariant.gep34, i64 %index23
  %wide.load25 = load <8 x i8>, ptr %gep35, align 1, !tbaa !17
  store <8 x i8> %wide.load25, ptr %next.gep24, align 1, !tbaa !17
  %index.next26 = add nuw i64 %index23, 8         ; 2 uses
  %i.w = icmp eq i64 %index.next26, %n.vec22
  br i1 %i.w, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !120

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n27 = icmp eq i64 %i.l, %n.vec22
  br i1 %cmp.n27, label %uriFixPercentEncodingEngineA.exit, label %.lr.ph49.i.preheader

.lr.ph49.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ %i.j, %iter.check ], [ %i.j, %vector.memcheck ], [ %i.p, %vec.epilog.iter.check ], [ %i.u, %vec.epilog.middle.block ] ; 4 uses
  %.347.i.ph = phi ptr [ %.039.lcssa.i, %iter.check ], [ %.039.lcssa.i, %vector.memcheck ], [ %i.q, %vec.epilog.iter.check ], [ %i.v, %vec.epilog.middle.block ] ; 2 uses
  %i.x = sub i64 %i.f, %indvars.iv.i.ph
  %xtraiter = and i64 %i.x, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph49.i.prol.loopexit, label %.lr.ph49.i.prol

.lr.ph49.i.prol:                                  ; preds = %.lr.ph49.i.preheader, %.lr.ph49.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph49.i.prol ], [ %indvars.iv.i.ph, %.lr.ph49.i.preheader ] ; 2 uses
  %.347.i.prol = phi ptr [ %i.aa, %.lr.ph49.i.prol ], [ %.347.i.ph, %.lr.ph49.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph49.i.prol ], [ 0, %.lr.ph49.i.preheader ]
  %i.y = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.i.prol
  %i.z = load i8, ptr %i.y, align 1, !tbaa !17
  store i8 %i.z, ptr %.347.i.prol, align 1, !tbaa !17
  %i.aa = getelementptr inbounds nuw i8, ptr %.347.i.prol, i64 1 ; 3 uses
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph49.i.prol.loopexit, label %.lr.ph49.i.prol, !llvm.loop !121

.lr.ph49.i.prol.loopexit:                         ; preds = %.lr.ph49.i.prol, %.lr.ph49.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph49.i.preheader ], [ %i.aa, %.lr.ph49.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph49.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph49.i.prol ]
  %.347.i.unr = phi ptr [ %.347.i.ph, %.lr.ph49.i.preheader ], [ %i.aa, %.lr.ph49.i.prol ]
  %i.ab = sub nsw i64 %indvars.iv.i.ph, %i.k
  %i.ac = icmp ugt i64 %i.ab, -8
  br i1 %i.ac, label %uriFixPercentEncodingEngineA.exit, label %.lr.ph49.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.h
  %i.ad = phi i32 [ %i.bb, %bb.h ], [ 2, %bb.c ]  ; 3 uses
  %.045.i = phi i32 [ %i.ba, %bb.h ], [ 0, %bb.c ] ; 2 uses
  %.03944.i = phi ptr [ %.241.i, %bb.h ], [ %0, %bb.c ] ; 7 uses
  %i.ae = sext i32 %.045.i to i64
  %i.af = getelementptr inbounds i8, ptr %0, i64 %i.ae ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !17  ; 2 uses
  %.not.i = icmp eq i8 %i.ag, 37
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  store i8 %i.ag, ptr %.03944.i, align 1, !tbaa !17
  %i.ah = getelementptr inbounds nuw i8, ptr %.03944.i, i64 1
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph.i
  %i.ai = getelementptr i8, ptr %i.af, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !17
  %i.ak = sext i32 %i.ad to i64
  %i.al = getelementptr inbounds i8, ptr %0, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !17
  %i.an = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.aj) #6
  %i.ao = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.am) #6
  %i.ap = zext i8 %i.an to i32                    ; 2 uses
  %i.aq = shl nuw nsw i32 %i.ap, 4
  %i.ar = zext i8 %i.ao to i32                    ; 2 uses
  %i.as = add nuw nsw i32 %i.aq, %i.ar            ; 2 uses
  %i.at = tail call i32 @uriIsUnreserved(i32 noundef %i.as) #6
  %.not43.i = icmp eq i32 %i.at, 0
  %i.au = getelementptr inbounds nuw i8, ptr %.03944.i, i64 1 ; 2 uses
  br i1 %.not43.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = trunc i32 %i.as to i8
  store i8 %i.av, ptr %.03944.i, align 1, !tbaa !17
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i8 37, ptr %.03944.i, align 1, !tbaa !17
  %i.aw = tail call signext i8 @uriHexToLetterA(i32 noundef %i.ap) #6
  store i8 %i.aw, ptr %i.au, align 1, !tbaa !17
  %i.ax = tail call signext i8 @uriHexToLetterA(i32 noundef %i.ar) #6
  %i.ay = getelementptr inbounds nuw i8, ptr %.03944.i, i64 2
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !17
  %i.az = getelementptr inbounds nuw i8, ptr %.03944.i, i64 3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %.241.i = phi ptr [ %i.ah, %bb.d ], [ %i.au, %bb.f ], [ %i.az, %bb.g ] ; 2 uses
  %.1.i = phi i32 [ %.045.i, %bb.d ], [ %i.ad, %bb.f ], [ %i.ad, %bb.g ] ; 2 uses
  %i.ba = add nsw i32 %.1.i, 1                    ; 2 uses
  %i.bb = add nsw i32 %.1.i, 3                    ; 2 uses
  %i.bc = icmp slt i32 %i.bb, %i.g
  br i1 %i.bc, label %.lr.ph.i, label %.preheader.i, !llvm.loop !123

.lr.ph49.i:                                       ; preds = %.lr.ph49.i.prol.loopexit, %.lr.ph49.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph49.i ], [ %indvars.iv.i.unr, %.lr.ph49.i.prol.loopexit ] ; 9 uses
  %.347.i = phi ptr [ %i.ch, %.lr.ph49.i ], [ %.347.i.unr, %.lr.ph49.i.prol.loopexit ] ; 9 uses
  %i.bd = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.i
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !17
  store i8 %i.be, ptr %.347.i, align 1, !tbaa !17
  %i.bf = getelementptr inbounds nuw i8, ptr %.347.i, i64 1
  %i.bg = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.bh = getelementptr i8, ptr %i.bg, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !17
  store i8 %i.bi, ptr %i.bf, align 1, !tbaa !17
  %i.bj = getelementptr inbounds nuw i8, ptr %.347.i, i64 2
  %i.bk = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.bl = getelementptr i8, ptr %i.bk, i64 2
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !17
  store i8 %i.bm, ptr %i.bj, align 1, !tbaa !17
  %i.bn = getelementptr inbounds nuw i8, ptr %.347.i, i64 3
  %i.bo = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.bp = getelementptr i8, ptr %i.bo, i64 3
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !17
  store i8 %i.bq, ptr %i.bn, align 1, !tbaa !17
  %i.br = getelementptr inbounds nuw i8, ptr %.347.i, i64 4
  %i.bs = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.bt = getelementptr i8, ptr %i.bs, i64 4
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !17
  store i8 %i.bu, ptr %i.br, align 1, !tbaa !17
  %i.bv = getelementptr inbounds nuw i8, ptr %.347.i, i64 5
  %i.bw = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.bx = getelementptr i8, ptr %i.bw, i64 5
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !17
  store i8 %i.by, ptr %i.bv, align 1, !tbaa !17
  %i.bz = getelementptr inbounds nuw i8, ptr %.347.i, i64 6
  %i.ca = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.cb = getelementptr i8, ptr %i.ca, i64 6
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !17
  store i8 %i.cc, ptr %i.bz, align 1, !tbaa !17
  %i.cd = getelementptr inbounds nuw i8, ptr %.347.i, i64 7
  %i.ce = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.cf = getelementptr i8, ptr %i.ce, i64 7
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !17
  store i8 %i.cg, ptr %i.cd, align 1, !tbaa !17
  %i.ch = getelementptr inbounds nuw i8, ptr %.347.i, i64 8 ; 2 uses
  %indvars.iv.next.i.7 = add nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.i.7, %i.k
  br i1 %exitcond.not.7, label %uriFixPercentEncodingEngineA.exit, label %.lr.ph49.i, !llvm.loop !124

uriFixPercentEncodingEngineA.exit:                ; preds = %.lr.ph49.i.prol.loopexit, %.lr.ph49.i, %middle.block, %vec.epilog.middle.block, %.preheader.i
  %.3.lcssa.i = phi ptr [ %.039.lcssa.i, %.preheader.i ], [ %i.v, %vec.epilog.middle.block ], [ %i.q, %middle.block ], [ %.lcssa.unr, %.lr.ph49.i.prol.loopexit ], [ %i.ch, %.lr.ph49.i ]
  store ptr %.3.lcssa.i, ptr %1, align 8, !tbaa !24
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.b, %uriFixPercentEncodingEngineA.exit
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @uriFixPercentEncodingMallocA(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !24     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !24     ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp slt i32 %i.h, 0
  br i1 %i.j, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %2, align 8, !tbaa !31
  %i.l = and i64 %i.g, 2147483647
  %i.m = tail call ptr %i.k(ptr noundef nonnull %2, i64 noundef %i.l) #6 ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %0, align 8, !tbaa !24     ; 14 uses
  %i.p = load ptr, ptr %1, align 8, !tbaa !24
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r                       ; 3 uses
  %i.t = trunc i64 %i.s to i32                    ; 3 uses
  %i.u = icmp sgt i32 %i.t, 2
  br i1 %i.u, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.k, %bb.f
  %.039.lcssa.i = phi ptr [ %i.m, %bb.f ], [ %.241.i, %bb.k ] ; 8 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.f ], [ %i.bn, %bb.k ] ; 2 uses
  %.039.lcssa.i36 = ptrtoaddr ptr %.039.lcssa.i to i64
  %i.v = icmp slt i32 %.0.lcssa.i, %i.t
  br i1 %i.v, label %iter.check, label %uriFixPercentEncodingEngineA.exit

iter.check:                                       ; preds = %.preheader.i
  %i.w = sext i32 %.0.lcssa.i to i64              ; 8 uses
  %sext.i = shl i64 %i.s, 32
  %i.x = ashr exact i64 %sext.i, 32               ; 3 uses
  %i.y = sub nsw i64 %i.x, %i.w                   ; 7 uses
  %min.iters.check = icmp ult i64 %i.y, 8
  br i1 %min.iters.check, label %.lr.ph49.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.z = add i64 %i.r, %i.w
  %i.aa = sub i64 %i.z, %.039.lcssa.i36
  %diff.check = icmp ugt i64 %i.aa, -32
  br i1 %diff.check, label %.lr.ph49.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check37 = icmp ult i64 %i.y, 32
  br i1 %min.iters.check37, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ab = and i64 %i.y, 24
  %n.vec = and i64 %i.y, -32                      ; 5 uses
  %i.ac = add nsw i64 %n.vec, %i.w
  %i.ad = getelementptr i8, ptr %.039.lcssa.i, i64 %n.vec ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.o, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.039.lcssa.i, i64 %index ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <16 x i8>, ptr %gep, align 1, !tbaa !17
  %wide.load38 = load <16 x i8>, ptr %i.ae, align 1, !tbaa !17
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !17
  store <16 x i8> %wide.load38, ptr %i.af, align 1, !tbaa !17
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !125

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %uriFixPercentEncodingEngineA.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ab, 0
  br i1 %min.epilog.iters.check, label %.lr.ph49.i.preheader, label %vec.epilog.ph, !prof !119

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec40 = and i64 %i.y, -8                     ; 4 uses
  %i.ah = add nsw i64 %n.vec40, %i.w
  %i.ai = getelementptr i8, ptr %.039.lcssa.i, i64 %n.vec40 ; 2 uses
  %invariant.gep52 = getelementptr i8, ptr %i.o, i64 %i.w
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index41 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next44, %vec.epilog.vector.body ] ; 3 uses
  %next.gep42 = getelementptr i8, ptr %.039.lcssa.i, i64 %index41
  %gep53 = getelementptr i8, ptr %invariant.gep52, i64 %index41
  %wide.load43 = load <8 x i8>, ptr %gep53, align 1, !tbaa !17
  store <8 x i8> %wide.load43, ptr %next.gep42, align 1, !tbaa !17
  %index.next44 = add nuw i64 %index41, 8         ; 2 uses
  %i.aj = icmp eq i64 %index.next44, %n.vec40
  br i1 %i.aj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !126

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n45 = icmp eq i64 %i.y, %n.vec40
  br i1 %cmp.n45, label %uriFixPercentEncodingEngineA.exit, label %.lr.ph49.i.preheader

.lr.ph49.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ %i.w, %iter.check ], [ %i.w, %vector.memcheck ], [ %i.ac, %vec.epilog.iter.check ], [ %i.ah, %vec.epilog.middle.block ] ; 4 uses
  %.347.i.ph = phi ptr [ %.039.lcssa.i, %iter.check ], [ %.039.lcssa.i, %vector.memcheck ], [ %i.ad, %vec.epilog.iter.check ], [ %i.ai, %vec.epilog.middle.block ] ; 2 uses
  %i.ak = sub i64 %i.s, %indvars.iv.i.ph
  %xtraiter = and i64 %i.ak, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph49.i.prol.loopexit, label %.lr.ph49.i.prol

.lr.ph49.i.prol:                                  ; preds = %.lr.ph49.i.preheader, %.lr.ph49.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph49.i.prol ], [ %indvars.iv.i.ph, %.lr.ph49.i.preheader ] ; 2 uses
  %.347.i.prol = phi ptr [ %i.an, %.lr.ph49.i.prol ], [ %.347.i.ph, %.lr.ph49.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph49.i.prol ], [ 0, %.lr.ph49.i.preheader ]
  %i.al = getelementptr inbounds i8, ptr %i.o, i64 %indvars.iv.i.prol
  %i.am = load i8, ptr %i.al, align 1, !tbaa !17
  store i8 %i.am, ptr %.347.i.prol, align 1, !tbaa !17
  %i.an = getelementptr inbounds nuw i8, ptr %.347.i.prol, i64 1 ; 3 uses
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph49.i.prol.loopexit, label %.lr.ph49.i.prol, !llvm.loop !127

.lr.ph49.i.prol.loopexit:                         ; preds = %.lr.ph49.i.prol, %.lr.ph49.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph49.i.preheader ], [ %i.an, %.lr.ph49.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph49.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph49.i.prol ]
  %.347.i.unr = phi ptr [ %.347.i.ph, %.lr.ph49.i.preheader ], [ %i.an, %.lr.ph49.i.prol ]
  %i.ao = sub nsw i64 %indvars.iv.i.ph, %i.x
  %i.ap = icmp ugt i64 %i.ao, -8
  br i1 %i.ap, label %uriFixPercentEncodingEngineA.exit, label %.lr.ph49.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.k
  %i.aq = phi i32 [ %i.bo, %bb.k ], [ 2, %bb.f ]  ; 3 uses
  %.045.i = phi i32 [ %i.bn, %bb.k ], [ 0, %bb.f ] ; 2 uses
  %.03944.i = phi ptr [ %.241.i, %bb.k ], [ %i.m, %bb.f ] ; 7 uses
  %i.ar = sext i32 %.045.i to i64
  %i.as = getelementptr inbounds i8, ptr %i.o, i64 %i.ar ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !17  ; 2 uses
  %.not.i = icmp eq i8 %i.at, 37
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  store i8 %i.at, ptr %.03944.i, align 1, !tbaa !17
  %i.au = getelementptr inbounds nuw i8, ptr %.03944.i, i64 1
  br label %bb.k

bb.h:                                             ; preds = %.lr.ph.i
  %i.av = getelementptr i8, ptr %i.as, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !17
  %i.ax = sext i32 %i.aq to i64
  %i.ay = getelementptr inbounds i8, ptr %i.o, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !17
  %i.ba = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.aw) #6
  %i.bb = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.az) #6
  %i.bc = zext i8 %i.ba to i32                    ; 2 uses
  %i.bd = shl nuw nsw i32 %i.bc, 4
  %i.be = zext i8 %i.bb to i32                    ; 2 uses
  %i.bf = add nuw nsw i32 %i.bd, %i.be            ; 2 uses
  %i.bg = tail call i32 @uriIsUnreserved(i32 noundef %i.bf) #6
  %.not43.i = icmp eq i32 %i.bg, 0
  %i.bh = getelementptr inbounds nuw i8, ptr %.03944.i, i64 1 ; 2 uses
  br i1 %.not43.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bi = trunc i32 %i.bf to i8
  store i8 %i.bi, ptr %.03944.i, align 1, !tbaa !17
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store i8 37, ptr %.03944.i, align 1, !tbaa !17
  %i.bj = tail call signext i8 @uriHexToLetterA(i32 noundef %i.bc) #6
  store i8 %i.bj, ptr %i.bh, align 1, !tbaa !17
  %i.bk = tail call signext i8 @uriHexToLetterA(i32 noundef %i.be) #6
  %i.bl = getelementptr inbounds nuw i8, ptr %.03944.i, i64 2
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %.03944.i, i64 3
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  %.241.i = phi ptr [ %i.au, %bb.g ], [ %i.bh, %bb.i ], [ %i.bm, %bb.j ] ; 2 uses
  %.1.i = phi i32 [ %.045.i, %bb.g ], [ %i.aq, %bb.i ], [ %i.aq, %bb.j ] ; 2 uses
  %i.bn = add nsw i32 %.1.i, 1                    ; 2 uses
  %i.bo = add nsw i32 %.1.i, 3                    ; 2 uses
  %i.bp = icmp slt i32 %i.bo, %i.t
  br i1 %i.bp, label %.lr.ph.i, label %.preheader.i, !llvm.loop !123

.lr.ph49.i:                                       ; preds = %.lr.ph49.i.prol.loopexit, %.lr.ph49.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph49.i ], [ %indvars.iv.i.unr, %.lr.ph49.i.prol.loopexit ] ; 9 uses
  %.347.i = phi ptr [ %i.cu, %.lr.ph49.i ], [ %.347.i.unr, %.lr.ph49.i.prol.loopexit ] ; 9 uses
  %i.bq = getelementptr inbounds i8, ptr %i.o, i64 %indvars.iv.i
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !17
  store i8 %i.br, ptr %.347.i, align 1, !tbaa !17
  %i.bs = getelementptr inbounds nuw i8, ptr %.347.i, i64 1
  %i.bt = getelementptr i8, ptr %i.o, i64 %indvars.iv.i
  %i.bu = getelementptr i8, ptr %i.bt, i64 1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !17
  store i8 %i.bv, ptr %i.bs, align 1, !tbaa !17
  %i.bw = getelementptr inbounds nuw i8, ptr %.347.i, i64 2
  %i.bx = getelementptr i8, ptr %i.o, i64 %indvars.iv.i
  %i.by = getelementptr i8, ptr %i.bx, i64 2
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !17
  store i8 %i.bz, ptr %i.bw, align 1, !tbaa !17
  %i.ca = getelementptr inbounds nuw i8, ptr %.347.i, i64 3
  %i.cb = getelementptr i8, ptr %i.o, i64 %indvars.iv.i
  %i.cc = getelementptr i8, ptr %i.cb, i64 3
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !17
  store i8 %i.cd, ptr %i.ca, align 1, !tbaa !17
  %i.ce = getelementptr inbounds nuw i8, ptr %.347.i, i64 4
  %i.cf = getelementptr i8, ptr %i.o, i64 %indvars.iv.i
  %i.cg = getelementptr i8, ptr %i.cf, i64 4
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !17
  store i8 %i.ch, ptr %i.ce, align 1, !tbaa !17
  %i.ci = getelementptr inbounds nuw i8, ptr %.347.i, i64 5
  %i.cj = getelementptr i8, ptr %i.o, i64 %indvars.iv.i
  %i.ck = getelementptr i8, ptr %i.cj, i64 5
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !17
  store i8 %i.cl, ptr %i.ci, align 1, !tbaa !17
  %i.cm = getelementptr inbounds nuw i8, ptr %.347.i, i64 6
  %i.cn = getelementptr i8, ptr %i.o, i64 %indvars.iv.i
  %i.co = getelementptr i8, ptr %i.cn, i64 6
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !17
  store i8 %i.cp, ptr %i.cm, align 1, !tbaa !17
  %i.cq = getelementptr inbounds nuw i8, ptr %.347.i, i64 7
  %i.cr = getelementptr i8, ptr %i.o, i64 %indvars.iv.i
  %i.cs = getelementptr i8, ptr %i.cr, i64 7
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !17
  store i8 %i.ct, ptr %i.cq, align 1, !tbaa !17
  %i.cu = getelementptr inbounds nuw i8, ptr %.347.i, i64 8 ; 2 uses
  %indvars.iv.next.i.7 = add nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.i.7, %i.x
  br i1 %exitcond.not.7, label %uriFixPercentEncodingEngineA.exit, label %.lr.ph49.i, !llvm.loop !128

uriFixPercentEncodingEngineA.exit:                ; preds = %.lr.ph49.i.prol.loopexit, %.lr.ph49.i, %middle.block, %vec.epilog.middle.block, %.preheader.i
  %.3.lcssa.i = phi ptr [ %.039.lcssa.i, %.preheader.i ], [ %i.ai, %vec.epilog.middle.block ], [ %i.ad, %middle.block ], [ %.lcssa.unr, %.lr.ph49.i.prol.loopexit ], [ %i.cu, %.lr.ph49.i ]
  store ptr %.3.lcssa.i, ptr %1, align 8, !tbaa !24
  store ptr %i.m, ptr %0, align 8, !tbaa !24
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.a, %bb.b, %uriFixPercentEncodingEngineA.exit
  %.0 = phi i32 [ 1, %uriFixPercentEncodingEngineA.exit ], [ 0, %bb.a ], [ 1, %bb.c ], [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.e ]
  ret i32 %.0
}

declare i32 @uriRemoveDotSegmentsExA(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @uriFixEmptyTrailSegmentA(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @uriHexdigToIntA(i8 noundef signext) local_unnamed_addr #3

declare i32 @uriIsUnreserved(i32 noundef) local_unnamed_addr #3

declare signext i8 @uriHexToLetterA(i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @uriMakeRangeOwnerA(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 0, 33) %1, ptr nofree noundef nonnull captures(none) %2, ptr noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !3
  %i.b = and i32 %i.a, %1
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !60     ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !61   ; 2 uses
  %i.g = icmp ugt ptr %i.f, %i.d
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = sub i64 %i.h, %i.i
  %sext = shl i64 %i.j, 32
  %i.k = ashr exact i64 %sext, 32                 ; 3 uses
  %i.l = load ptr, ptr %3, align 8, !tbaa !31
  %i.m = tail call ptr %i.l(ptr noundef nonnull %3, i64 noundef %i.k) #6 ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  %i.o = load ptr, ptr %2, align 8, !tbaa !60
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr align 1 %i.o, i64 %i.k, i1 false)
  store ptr %i.m, ptr %2, align 8, !tbaa !60
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 %i.k
  store ptr %i.p, ptr %i.e, align 8, !tbaa !61
  %i.q = load i32, ptr %0, align 4, !tbaa !3
  %i.r = or i32 %i.q, %1
  store i32 %i.r, ptr %0, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %.thread, %bb.d
  %.1 = phi i32 [ 0, %bb.d ], [ 1, %.thread ], [ 1, %bb.c ], [ 1, %bb.b ], [ 1, %bb.a ]
  ret i32 %.1
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @uriPreventLeakageW(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = and i32 %1, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.d = load ptr, ptr %0, align 8, !tbaa !68
  tail call void %i.c(ptr noundef %2, ptr noundef %i.d) #6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = and i32 %1, 2
  %.not58 = icmp eq i32 %i.e, 0
  br i1 %.not58, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !63
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !95
  tail call void %i.g(ptr noundef %2, ptr noundef %i.i) #6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = and i32 %1, 4
  %.not59 = icmp eq i32 %i.j, 0
  br i1 %.not59, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !86   ; 2 uses
  %.not60 = icmp eq ptr %i.m, null
  br i1 %.not60, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !63
  tail call void %i.o(ptr noundef %2, ptr noundef nonnull %i.m) #6
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  br label %.sink.split

bb.h:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !76   ; 2 uses
  %.not61 = icmp eq ptr %i.r, null
  br i1 %.not61, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !91
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !92
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !63
  tail call void %i.y(ptr noundef %2, ptr noundef nonnull %i.r) #6
  br label %.sink.split

.sink.split:                                      ; preds = %bb.k, %bb.g
  %.sink = phi ptr [ %i.l, %bb.g ], [ %i.q, %bb.k ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sink, i8 0, i64 16, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.j, %bb.i, %bb.h, %bb.e
  %i.z = and i32 %1, 8
  %.not62 = icmp eq i32 %i.z, 0
  br i1 %.not62, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !102 ; 2 uses
  %.not6366 = icmp eq ptr %i.ab, null
  br i1 %.not6366, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.p
  %.067 = phi ptr [ %i.ab, %.lr.ph ], [ %i.ae, %bb.p ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.067, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !103 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.067, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !100
  %i.ah = load ptr, ptr %.067, align 8, !tbaa !98 ; 2 uses
  %i.ai = icmp ugt ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aj = load ptr, ptr %i.ac, align 8, !tbaa !63
  tail call void %i.aj(ptr noundef %2, ptr noundef %i.ah) #6
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ak = load ptr, ptr %i.ac, align 8, !tbaa !63
  tail call void %i.ak(ptr noundef %2, ptr noundef nonnull %.067) #6
  %.not63 = icmp eq ptr %i.ae, null
  br i1 %.not63, label %._crit_edge, label %bb.n, !llvm.loop !129

._crit_edge:                                      ; preds = %bb.p, %bb.m
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.l
  %i.al = and i32 %1, 16
  %.not64 = icmp eq i32 %i.al, 0
  br i1 %.not64, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !63
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !106
  tail call void %i.an(ptr noundef %2, ptr noundef %i.ap) #6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.aq = and i32 %1, 32
  %.not65 = icmp eq i32 %i.aq, 0
  br i1 %.not65, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !63
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !108
  tail call void %i.as(ptr noundef %2, ptr noundef %i.au) #6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @uriFixPercentEncodingInplaceW(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !80     ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = lshr exact i64 %i.f, 2
  %i.h = trunc i64 %i.g to i32                    ; 3 uses
  %i.i = icmp sgt i32 %i.h, 2
  br i1 %i.i, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h, %bb.c
  %.039.lcssa.i = phi ptr [ %0, %bb.c ], [ %i.aw, %bb.h ] ; 6 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.ax, %bb.h ] ; 2 uses
  %.039.lcssa.i22 = ptrtoaddr ptr %.039.lcssa.i to i64
  %i.j = icmp slt i32 %.0.lcssa.i, %i.h
  br i1 %i.j, label %.lr.ph50.preheader.i, label %uriFixPercentEncodingEngineW.exit

.lr.ph50.preheader.i:                             ; preds = %.preheader.i
  %i.k = sext i32 %.0.lcssa.i to i64              ; 6 uses
  %sext.i = shl i64 %i.f, 30
  %wide.trip.count.i = ashr i64 %sext.i, 32       ; 4 uses
  %i.l = sub nsw i64 %wide.trip.count.i, %i.k     ; 3 uses
  %min.iters.check = icmp ult i64 %i.l, 16
  br i1 %min.iters.check, label %.lr.ph50.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph50.preheader.i
  %i.m = shl nsw i64 %i.k, 2
  %i.n = add i64 %i.m, %i.e
  %i.o = sub i64 %i.n, %.039.lcssa.i22
  %diff.check = icmp ugt i64 %i.o, -32
  br i1 %diff.check, label %.lr.ph50.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.l, -8                       ; 4 uses
  %i.p = add nsw i64 %n.vec, %i.k
  %i.q = shl nsw i64 %n.vec, 2
  %i.r = getelementptr i8, ptr %.039.lcssa.i, i64 %i.q ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.k
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.039.lcssa.i, i64 %i.s ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !3
  %wide.load23 = load <4 x i32>, ptr %i.t, align 4, !tbaa !3
  %i.u = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> %wide.load23, ptr %i.u, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !130

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %uriFixPercentEncodingEngineW.exit, label %.lr.ph50.i.preheader

.lr.ph50.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph50.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph50.preheader.i ], [ %i.p, %middle.block ] ; 4 uses
  %.348.i.ph = phi ptr [ %.039.lcssa.i, %vector.memcheck ], [ %.039.lcssa.i, %.lr.ph50.preheader.i ], [ %i.r, %middle.block ] ; 2 uses
  %i.w = sub nsw i64 %wide.trip.count.i, %indvars.iv.i.ph
  %xtraiter = and i64 %i.w, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph50.i.prol.loopexit, label %.lr.ph50.i.prol

.lr.ph50.i.prol:                                  ; preds = %.lr.ph50.i.preheader, %.lr.ph50.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph50.i.prol ], [ %indvars.iv.i.ph, %.lr.ph50.i.preheader ] ; 2 uses
  %.348.i.prol = phi ptr [ %i.z, %.lr.ph50.i.prol ], [ %.348.i.ph, %.lr.ph50.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph50.i.prol ], [ 0, %.lr.ph50.i.preheader ]
  %i.x = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.i.prol
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  store i32 %i.y, ptr %.348.i.prol, align 4, !tbaa !3
  %i.z = getelementptr inbounds nuw i8, ptr %.348.i.prol, i64 4 ; 3 uses
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph50.i.prol.loopexit, label %.lr.ph50.i.prol, !llvm.loop !131

.lr.ph50.i.prol.loopexit:                         ; preds = %.lr.ph50.i.prol, %.lr.ph50.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph50.i.preheader ], [ %i.z, %.lr.ph50.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph50.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph50.i.prol ]
  %.348.i.unr = phi ptr [ %.348.i.ph, %.lr.ph50.i.preheader ], [ %i.z, %.lr.ph50.i.prol ]
  %i.aa = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.ab = icmp ugt i64 %i.aa, -8
  br i1 %i.ab, label %uriFixPercentEncodingEngineW.exit, label %.lr.ph50.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.h
  %i.ac = phi i32 [ %i.ay, %bb.h ], [ 2, %bb.c ]  ; 3 uses
  %.046.i = phi i32 [ %i.ax, %bb.h ], [ 0, %bb.c ] ; 2 uses
  %.03945.i = phi ptr [ %i.aw, %bb.h ], [ %0, %bb.c ] ; 6 uses
  %i.ad = sext i32 %.046.i to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ad ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3  ; 2 uses
  %.not.i = icmp eq i32 %i.af, 37
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  store i32 %i.af, ptr %.03945.i, align 4, !tbaa !3
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph.i
  %i.ag = getelementptr i8, ptr %i.ae, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3
  %i.ai = sext i32 %i.ac to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.al = tail call zeroext i8 @uriHexdigToIntW(i32 noundef %i.ah) #6
  %i.am = tail call zeroext i8 @uriHexdigToIntW(i32 noundef %i.ak) #6
  %i.an = zext i8 %i.al to i32                    ; 2 uses
  %i.ao = shl nuw nsw i32 %i.an, 4
  %i.ap = zext i8 %i.am to i32                    ; 2 uses
  %i.aq = add nuw nsw i32 %i.ao, %i.ap            ; 2 uses
  %i.ar = tail call i32 @uriIsUnreserved(i32 noundef %i.aq) #6
  %.not44.i = icmp eq i32 %i.ar, 0
  br i1 %.not44.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.aq, ptr %.03945.i, align 4, !tbaa !3
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i32 37, ptr %.03945.i, align 4, !tbaa !3
  %i.as = tail call i32 @uriHexToLetterW(i32 noundef %i.an) #6
  %i.at = getelementptr inbounds nuw i8, ptr %.03945.i, i64 4
  store i32 %i.as, ptr %i.at, align 4, !tbaa !3
  %i.au = tail call i32 @uriHexToLetterW(i32 noundef %i.ap) #6
  %i.av = getelementptr inbounds nuw i8, ptr %.03945.i, i64 8
  store i32 %i.au, ptr %i.av, align 4, !tbaa !3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %.sink.i = phi i64 [ 4, %bb.f ], [ 12, %bb.g ], [ 4, %bb.d ]
  %.1.i = phi i32 [ %i.ac, %bb.f ], [ %i.ac, %bb.g ], [ %.046.i, %bb.d ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.03945.i, i64 %.sink.i ; 2 uses
  %i.ax = add nsw i32 %.1.i, 1                    ; 2 uses
  %i.ay = add nsw i32 %.1.i, 3                    ; 2 uses
  %i.az = icmp slt i32 %i.ay, %i.h
  br i1 %i.az, label %.lr.ph.i, label %.preheader.i, !llvm.loop !132

.lr.ph50.i:                                       ; preds = %.lr.ph50.i.prol.loopexit, %.lr.ph50.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph50.i ], [ %indvars.iv.i.unr, %.lr.ph50.i.prol.loopexit ] ; 9 uses
  %.348.i = phi ptr [ %i.ce, %.lr.ph50.i ], [ %.348.i.unr, %.lr.ph50.i.prol.loopexit ] ; 9 uses
  %i.ba = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3
  store i32 %i.bb, ptr %.348.i, align 4, !tbaa !3
  %i.bc = getelementptr inbounds nuw i8, ptr %.348.i, i64 4
  %i.bd = getelementptr [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.be = getelementptr i8, ptr %i.bd, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !3
  store i32 %i.bf, ptr %i.bc, align 4, !tbaa !3
  %i.bg = getelementptr inbounds nuw i8, ptr %.348.i, i64 8
  %i.bh = getelementptr [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.bi = getelementptr i8, ptr %i.bh, i64 8
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !3
  store i32 %i.bj, ptr %i.bg, align 4, !tbaa !3
  %i.bk = getelementptr inbounds nuw i8, ptr %.348.i, i64 12
  %i.bl = getelementptr [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.bm = getelementptr i8, ptr %i.bl, i64 12
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !3
  store i32 %i.bn, ptr %i.bk, align 4, !tbaa !3
  %i.bo = getelementptr inbounds nuw i8, ptr %.348.i, i64 16
  %i.bp = getelementptr [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.bq = getelementptr i8, ptr %i.bp, i64 16
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !3
  store i32 %i.br, ptr %i.bo, align 4, !tbaa !3
  %i.bs = getelementptr inbounds nuw i8, ptr %.348.i, i64 20
  %i.bt = getelementptr [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.bu = getelementptr i8, ptr %i.bt, i64 20
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !3
  store i32 %i.bv, ptr %i.bs, align 4, !tbaa !3
  %i.bw = getelementptr inbounds nuw i8, ptr %.348.i, i64 24
  %i.bx = getelementptr [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.by = getelementptr i8, ptr %i.bx, i64 24
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3
  store i32 %i.bz, ptr %i.bw, align 4, !tbaa !3
  %i.ca = getelementptr inbounds nuw i8, ptr %.348.i, i64 28
  %i.cb = getelementptr [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.cc = getelementptr i8, ptr %i.cb, i64 28
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !3
  store i32 %i.cd, ptr %i.ca, align 4, !tbaa !3
  %i.ce = getelementptr inbounds nuw i8, ptr %.348.i, i64 32 ; 2 uses
  %indvars.iv.next.i.7 = add nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %wide.trip.count.i
  br i1 %exitcond.not.i.7, label %uriFixPercentEncodingEngineW.exit, label %.lr.ph50.i, !llvm.loop !133

uriFixPercentEncodingEngineW.exit:                ; preds = %.lr.ph50.i.prol.loopexit, %.lr.ph50.i, %middle.block, %.preheader.i
  %.3.lcssa.i = phi ptr [ %.039.lcssa.i, %.preheader.i ], [ %i.r, %middle.block ], [ %.lcssa.unr, %.lr.ph50.i.prol.loopexit ], [ %i.ce, %.lr.ph50.i ]
  store ptr %.3.lcssa.i, ptr %1, align 8, !tbaa !80
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.b, %uriFixPercentEncodingEngineW.exit
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @uriFixPercentEncodingMallocW(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !80     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !80     ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = lshr exact i64 %i.g, 2
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp slt i32 %i.i, 0
  br i1 %i.k, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %2, align 8, !tbaa !31
  %i.m = and i64 %i.g, 8589934588
  %i.n = tail call ptr %i.l(ptr noundef nonnull %2, i64 noundef %i.m) #6 ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %0, align 8, !tbaa !80     ; 13 uses
  %i.q = load ptr, ptr %1, align 8, !tbaa !80
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.t = sub i64 %i.r, %i.s                       ; 2 uses
  %i.u = lshr exact i64 %i.t, 2
  %i.v = trunc i64 %i.u to i32                    ; 3 uses
  %i.w = icmp sgt i32 %i.v, 2
  br i1 %i.w, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.k, %bb.f
  %.039.lcssa.i = phi ptr [ %i.n, %bb.f ], [ %i.bk, %bb.k ] ; 6 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.f ], [ %i.bl, %bb.k ] ; 2 uses
  %.039.lcssa.i40 = ptrtoaddr ptr %.039.lcssa.i to i64
  %i.x = icmp slt i32 %.0.lcssa.i, %i.v
  br i1 %i.x, label %.lr.ph50.preheader.i, label %uriFixPercentEncodingEngineW.exit

.lr.ph50.preheader.i:                             ; preds = %.preheader.i
  %i.y = sext i32 %.0.lcssa.i to i64              ; 6 uses
  %sext.i = shl i64 %i.t, 30
  %wide.trip.count.i = ashr i64 %sext.i, 32       ; 4 uses
  %i.z = sub nsw i64 %wide.trip.count.i, %i.y     ; 3 uses
  %min.iters.check = icmp ult i64 %i.z, 16
  br i1 %min.iters.check, label %.lr.ph50.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph50.preheader.i
  %i.aa = shl nsw i64 %i.y, 2
  %i.ab = add i64 %i.aa, %i.s
  %i.ac = sub i64 %i.ab, %.039.lcssa.i40
  %diff.check = icmp ugt i64 %i.ac, -32
  br i1 %diff.check, label %.lr.ph50.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, -8                       ; 4 uses
  %i.ad = add nsw i64 %n.vec, %i.y
  %i.ae = shl nsw i64 %n.vec, 2
  %i.af = getelementptr i8, ptr %.039.lcssa.i, i64 %i.ae ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.p, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ag = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.039.lcssa.i, i64 %i.ag ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !3
  %wide.load41 = load <4 x i32>, ptr %i.ah, align 4, !tbaa !3
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> %wide.load41, ptr %i.ai, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !134

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %uriFixPercentEncodingEngineW.exit, label %.lr.ph50.i.preheader

.lr.ph50.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph50.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph50.preheader.i ], [ %i.ad, %middle.block ] ; 4 uses
  %.348.i.ph = phi ptr [ %.039.lcssa.i, %vector.memcheck ], [ %.039.lcssa.i, %.lr.ph50.preheader.i ], [ %i.af, %middle.block ] ; 2 uses
  %i.ak = sub nsw i64 %wide.trip.count.i, %indvars.iv.i.ph
  %xtraiter = and i64 %i.ak, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph50.i.prol.loopexit, label %.lr.ph50.i.prol

.lr.ph50.i.prol:                                  ; preds = %.lr.ph50.i.preheader, %.lr.ph50.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph50.i.prol ], [ %indvars.iv.i.ph, %.lr.ph50.i.preheader ] ; 2 uses
  %.348.i.prol = phi ptr [ %i.an, %.lr.ph50.i.prol ], [ %.348.i.ph, %.lr.ph50.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph50.i.prol ], [ 0, %.lr.ph50.i.preheader ]
  %i.al = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.i.prol
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  store i32 %i.am, ptr %.348.i.prol, align 4, !tbaa !3
  %i.an = getelementptr inbounds nuw i8, ptr %.348.i.prol, i64 4 ; 3 uses
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph50.i.prol.loopexit, label %.lr.ph50.i.prol, !llvm.loop !135

.lr.ph50.i.prol.loopexit:                         ; preds = %.lr.ph50.i.prol, %.lr.ph50.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph50.i.preheader ], [ %i.an, %.lr.ph50.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph50.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph50.i.prol ]
  %.348.i.unr = phi ptr [ %.348.i.ph, %.lr.ph50.i.preheader ], [ %i.an, %.lr.ph50.i.prol ]
  %i.ao = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.ap = icmp ugt i64 %i.ao, -8
  br i1 %i.ap, label %uriFixPercentEncodingEngineW.exit, label %.lr.ph50.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.k
  %i.aq = phi i32 [ %i.bm, %bb.k ], [ 2, %bb.f ]  ; 3 uses
  %.046.i = phi i32 [ %i.bl, %bb.k ], [ 0, %bb.f ] ; 2 uses
  %.03945.i = phi ptr [ %i.bk, %bb.k ], [ %i.n, %bb.f ] ; 6 uses
  %i.ar = sext i32 %.046.i to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ar ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3  ; 2 uses
  %.not.i = icmp eq i32 %i.at, 37
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  store i32 %i.at, ptr %.03945.i, align 4, !tbaa !3
  br label %bb.k

bb.h:                                             ; preds = %.lr.ph.i
  %i.au = getelementptr i8, ptr %i.as, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3
  %i.aw = sext i32 %i.aq to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3
  %i.az = tail call zeroext i8 @uriHexdigToIntW(i32 noundef %i.av) #6
  %i.ba = tail call zeroext i8 @uriHexdigToIntW(i32 noundef %i.ay) #6
  %i.bb = zext i8 %i.az to i32                    ; 2 uses
  %i.bc = shl nuw nsw i32 %i.bb, 4
  %i.bd = zext i8 %i.ba to i32                    ; 2 uses
  %i.be = add nuw nsw i32 %i.bc, %i.bd            ; 2 uses
  %i.bf = tail call i32 @uriIsUnreserved(i32 noundef %i.be) #6
  %.not44.i = icmp eq i32 %i.bf, 0
  br i1 %.not44.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.be, ptr %.03945.i, align 4, !tbaa !3
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store i32 37, ptr %.03945.i, align 4, !tbaa !3
  %i.bg = tail call i32 @uriHexToLetterW(i32 noundef %i.bb) #6
  %i.bh = getelementptr inbounds nuw i8, ptr %.03945.i, i64 4
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !3
  %i.bi = tail call i32 @uriHexToLetterW(i32 noundef %i.bd) #6
  %i.bj = getelementptr inbounds nuw i8, ptr %.03945.i, i64 8
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !3
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  %.sink.i = phi i64 [ 4, %bb.i ], [ 12, %bb.j ], [ 4, %bb.g ]
  %.1.i = phi i32 [ %i.aq, %bb.i ], [ %i.aq, %bb.j ], [ %.046.i, %bb.g ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.03945.i, i64 %.sink.i ; 2 uses
  %i.bl = add nsw i32 %.1.i, 1                    ; 2 uses
  %i.bm = add nsw i32 %.1.i, 3                    ; 2 uses
  %i.bn = icmp slt i32 %i.bm, %i.v
  br i1 %i.bn, label %.lr.ph.i, label %.preheader.i, !llvm.loop !132

.lr.ph50.i:                                       ; preds = %.lr.ph50.i.prol.loopexit, %.lr.ph50.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph50.i ], [ %indvars.iv.i.unr, %.lr.ph50.i.prol.loopexit ] ; 9 uses
  %.348.i = phi ptr [ %i.cs, %.lr.ph50.i ], [ %.348.i.unr, %.lr.ph50.i.prol.loopexit ] ; 9 uses
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3
  store i32 %i.bp, ptr %.348.i, align 4, !tbaa !3
  %i.bq = getelementptr inbounds nuw i8, ptr %.348.i, i64 4
  %i.br = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.bs = getelementptr i8, ptr %i.br, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !3
  store i32 %i.bt, ptr %i.bq, align 4, !tbaa !3
  %i.bu = getelementptr inbounds nuw i8, ptr %.348.i, i64 8
  %i.bv = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.bw = getelementptr i8, ptr %i.bv, i64 8
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3
  store i32 %i.bx, ptr %i.bu, align 4, !tbaa !3
  %i.by = getelementptr inbounds nuw i8, ptr %.348.i, i64 12
  %i.bz = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.ca = getelementptr i8, ptr %i.bz, i64 12
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !3
  store i32 %i.cb, ptr %i.by, align 4, !tbaa !3
  %i.cc = getelementptr inbounds nuw i8, ptr %.348.i, i64 16
  %i.cd = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.ce = getelementptr i8, ptr %i.cd, i64 16
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !3
  store i32 %i.cf, ptr %i.cc, align 4, !tbaa !3
  %i.cg = getelementptr inbounds nuw i8, ptr %.348.i, i64 20
  %i.ch = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.ci = getelementptr i8, ptr %i.ch, i64 20
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  store i32 %i.cj, ptr %i.cg, align 4, !tbaa !3
  %i.ck = getelementptr inbounds nuw i8, ptr %.348.i, i64 24
  %i.cl = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.cm = getelementptr i8, ptr %i.cl, i64 24
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3
  store i32 %i.cn, ptr %i.ck, align 4, !tbaa !3
  %i.co = getelementptr inbounds nuw i8, ptr %.348.i, i64 28
  %i.cp = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.cq = getelementptr i8, ptr %i.cp, i64 28
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !3
  store i32 %i.cr, ptr %i.co, align 4, !tbaa !3
  %i.cs = getelementptr inbounds nuw i8, ptr %.348.i, i64 32 ; 2 uses
  %indvars.iv.next.i.7 = add nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %wide.trip.count.i
  br i1 %exitcond.not.i.7, label %uriFixPercentEncodingEngineW.exit, label %.lr.ph50.i, !llvm.loop !136

uriFixPercentEncodingEngineW.exit:                ; preds = %.lr.ph50.i.prol.loopexit, %.lr.ph50.i, %middle.block, %.preheader.i
  %.3.lcssa.i = phi ptr [ %.039.lcssa.i, %.preheader.i ], [ %i.af, %middle.block ], [ %.lcssa.unr, %.lr.ph50.i.prol.loopexit ], [ %i.cs, %.lr.ph50.i ]
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
  %i.o = tail call ptr %i.m(ptr noundef nonnull %3, i64 noundef %i.n) #6 ; 4 uses
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

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

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
end_hunk_2
