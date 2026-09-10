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
  store i32 0, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %uriNormalizeSyntaxMaskRequiredExA.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull readonly align 8 dereferenceable(160) %0, i64 160, i1 false)
  %i.c = call fastcc i32 @uriNormalizeSyntaxEngineA(ptr noundef nonnull %1, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef null) ; 0 uses
  %.pre = load i32, ptr %i.a, align 4, !tbaa !8
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
  store i32 0, ptr %i.a, align 4, !tbaa !8
  %i.b = icmp eq ptr %0, null
  %.not212 = icmp eq ptr %2, null                 ; 6 uses
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %.not212, label %bb.ef, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %2, align 4, !tbaa !8
  br label %bb.ef

bb.d:                                             ; preds = %bb.a
  br i1 %.not212, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.c = icmp eq i32 %1, 0
  br i1 %i.c, label %bb.ef, label %bb.o

bb.f:                                             ; preds = %bb.d
  store i32 0, ptr %2, align 4, !tbaa !8
  %i.d = load ptr, ptr %0, align 8, !tbaa !17     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !83   ; 2 uses
  %i.g = icmp ne ptr %i.d, null
  %i.h = icmp ugt ptr %i.f, %i.d
  %or.cond17.i = and i1 %i.g, %i.h
  br i1 %or.cond17.i, label %.preheader.i, label %uriContainsUppercaseLettersA.exit

.preheader.i:                                     ; preds = %bb.f, %.preheader.i
  %.01219.i = phi ptr [ %i.k, %.preheader.i ], [ %i.d, %bb.f ] ; 2 uses
  %i.i = load i8, ptr %.01219.i, align 1, !tbaa !18
  %i.j = add i8 %i.i, -91
  %or.cond18.i = icmp ult i8 %i.j, -26            ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.01219.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp ne ptr %i.k, %i.f
  %or.cond.not = select i1 %or.cond18.i, i1 %exitcond.not.i, i1 false
  br i1 %or.cond.not, label %.preheader.i, label %uriContainsUppercaseLettersA.exit, !llvm.loop !63

uriContainsUppercaseLettersA.exit:                ; preds = %.preheader.i, %bb.f
  %.not183 = phi i1 [ true, %bb.f ], [ %or.cond18.i, %.preheader.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20   ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !84   ; 4 uses
  %i.p = icmp ne ptr %i.m, null
  %i.q = icmp ugt ptr %i.o, %i.m
  %or.cond17.i214 = and i1 %i.p, %i.q             ; 2 uses
  br i1 %or.cond17.i214, label %.preheader.i216, label %uriContainsUppercaseLettersA.exit220

.preheader.i216:                                  ; preds = %uriContainsUppercaseLettersA.exit, %.preheader.i216
  %.01219.i217 = phi ptr [ %i.t, %.preheader.i216 ], [ %i.m, %uriContainsUppercaseLettersA.exit ] ; 2 uses
  %i.r = load i8, ptr %.01219.i217, align 1, !tbaa !18
  %i.s = add i8 %i.r, -91
  %or.cond18.i218 = icmp ult i8 %i.s, -26         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.01219.i217, i64 1 ; 2 uses
  %exitcond.not.i219 = icmp ne ptr %i.t, %i.o
  %or.cond684.not = select i1 %or.cond18.i218, i1 %exitcond.not.i219, i1 false
  br i1 %or.cond684.not, label %.preheader.i216, label %uriContainsUppercaseLettersA.exit220, !llvm.loop !63

uriContainsUppercaseLettersA.exit220:             ; preds = %.preheader.i216, %uriContainsUppercaseLettersA.exit
  %.not184 = phi i1 [ true, %uriContainsUppercaseLettersA.exit ], [ %or.cond18.i218, %.preheader.i216 ]
  br i1 %.not183, label %bb.h, label %bb.g

bb.g:                                             ; preds = %uriContainsUppercaseLettersA.exit220
  store i32 1, ptr %2, align 4, !tbaa !8
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
  %i.y = load i8, ptr %.02132.i, align 1, !tbaa !18
  %i.z = icmp eq i8 %i.y, 37
  br i1 %i.z, label %bb.j, label %bb.m

bb.j:                                             ; preds = %.lr.ph.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.02132.i, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !18  ; 2 uses
  %i.ac = add i8 %i.ab, -97
  %or.cond30.i = icmp ult i8 %i.ac, 6
  br i1 %or.cond30.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = load i8, ptr %i.x, align 1, !tbaa !18
  %i.ae = add i8 %i.ad, -97
  %or.cond31.i = icmp ult i8 %i.ae, 6
  br i1 %or.cond31.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.ab) #6
  %i.ag = load i8, ptr %i.x, align 1, !tbaa !18
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
  br i1 %i.ap, label %.lr.ph.i, label %uriContainsUglyPercentEncodingA.exit, !llvm.loop !64

bb.n:                                             ; preds = %bb.k, %bb.j, %bb.l
  %i.aq = load i32, ptr %2, align 4, !tbaa !8
  %i.ar = or i32 %i.aq, 4
  br label %uriContainsUglyPercentEncodingA.exit.thread296.sink.split

bb.o:                                             ; preds = %bb.e
  %i.as = and i32 %1, 1
  %.not172 = icmp eq i32 %i.as, 0
  br i1 %.not172, label %uriLowercaseInplaceA.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = load ptr, ptr %0, align 8, !tbaa !17    ; 31 uses
  %i.au = ptrtoaddr ptr %i.at to i64
  %.not173 = icmp eq ptr %i.at, null
  br i1 %.not173, label %uriLowercaseInplaceA.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !85
  %.not174 = icmp eq i32 %i.aw, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !21 ; 5 uses
  %i.az = ptrtoaddr ptr %i.ay to i64
  br i1 %.not174, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = icmp ugt ptr %i.ay, %i.at
  br i1 %i.ba, label %iter.check, label %uriLowercaseInplaceA.exit

iter.check:                                       ; preds = %bb.r
  %i.bb = sub i64 %i.az, %i.au                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.bb, 8
  br i1 %min.iters.check, label %.preheader.i221.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check414 = icmp ult i64 %i.bb, 16
  br i1 %min.iters.check414, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bc = and i64 %i.bb, 8
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
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !18 ; 17 uses
  %i.bt = add <16 x i8> %wide.load, splat (i8 -65)
  %i.bu = icmp ult <16 x i8> %i.bt, splat (i8 26) ; 16 uses
  %i.bv = extractelement <16 x i1> %i.bu, i64 0
  br i1 %i.bv, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.bw = extractelement <16 x i8> %wide.load, i64 0
  %i.bx = or disjoint i8 %i.bw, 32
  store i8 %i.bx, ptr %next.gep, align 1, !tbaa !18
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.by = extractelement <16 x i1> %i.bu, i64 1
  br i1 %i.by, label %pred.store.if430, label %pred.store.continue431

pred.store.if430:                                 ; preds = %pred.store.continue
  %i.bz = extractelement <16 x i8> %wide.load, i64 1
  %i.ca = or disjoint i8 %i.bz, 32
  store i8 %i.ca, ptr %next.gep415, align 1, !tbaa !18
  br label %pred.store.continue431

pred.store.continue431:                           ; preds = %pred.store.if430, %pred.store.continue
  %i.cb = extractelement <16 x i1> %i.bu, i64 2
  br i1 %i.cb, label %pred.store.if432, label %pred.store.continue433

pred.store.if432:                                 ; preds = %pred.store.continue431
  %i.cc = extractelement <16 x i8> %wide.load, i64 2
  %i.cd = or disjoint i8 %i.cc, 32
  store i8 %i.cd, ptr %next.gep416, align 1, !tbaa !18
  br label %pred.store.continue433

pred.store.continue433:                           ; preds = %pred.store.if432, %pred.store.continue431
  %i.ce = extractelement <16 x i1> %i.bu, i64 3
  br i1 %i.ce, label %pred.store.if434, label %pred.store.continue435

pred.store.if434:                                 ; preds = %pred.store.continue433
  %i.cf = extractelement <16 x i8> %wide.load, i64 3
  %i.cg = or disjoint i8 %i.cf, 32
  store i8 %i.cg, ptr %next.gep417, align 1, !tbaa !18
  br label %pred.store.continue435

pred.store.continue435:                           ; preds = %pred.store.if434, %pred.store.continue433
  %i.ch = extractelement <16 x i1> %i.bu, i64 4
  br i1 %i.ch, label %pred.store.if436, label %pred.store.continue437

pred.store.if436:                                 ; preds = %pred.store.continue435
  %i.ci = extractelement <16 x i8> %wide.load, i64 4
  %i.cj = or disjoint i8 %i.ci, 32
  store i8 %i.cj, ptr %next.gep418, align 1, !tbaa !18
  br label %pred.store.continue437

pred.store.continue437:                           ; preds = %pred.store.if436, %pred.store.continue435
  %i.ck = extractelement <16 x i1> %i.bu, i64 5
  br i1 %i.ck, label %pred.store.if438, label %pred.store.continue439

pred.store.if438:                                 ; preds = %pred.store.continue437
  %i.cl = extractelement <16 x i8> %wide.load, i64 5
  %i.cm = or disjoint i8 %i.cl, 32
  store i8 %i.cm, ptr %next.gep419, align 1, !tbaa !18
  br label %pred.store.continue439

pred.store.continue439:                           ; preds = %pred.store.if438, %pred.store.continue437
  %i.cn = extractelement <16 x i1> %i.bu, i64 6
  br i1 %i.cn, label %pred.store.if440, label %pred.store.continue441

pred.store.if440:                                 ; preds = %pred.store.continue439
  %i.co = extractelement <16 x i8> %wide.load, i64 6
  %i.cp = or disjoint i8 %i.co, 32
  store i8 %i.cp, ptr %next.gep420, align 1, !tbaa !18
  br label %pred.store.continue441

pred.store.continue441:                           ; preds = %pred.store.if440, %pred.store.continue439
  %i.cq = extractelement <16 x i1> %i.bu, i64 7
  br i1 %i.cq, label %pred.store.if442, label %pred.store.continue443

pred.store.if442:                                 ; preds = %pred.store.continue441
  %i.cr = extractelement <16 x i8> %wide.load, i64 7
  %i.cs = or disjoint i8 %i.cr, 32
  store i8 %i.cs, ptr %next.gep421, align 1, !tbaa !18
  br label %pred.store.continue443

pred.store.continue443:                           ; preds = %pred.store.if442, %pred.store.continue441
  %i.ct = extractelement <16 x i1> %i.bu, i64 8
  br i1 %i.ct, label %pred.store.if444, label %pred.store.continue445

pred.store.if444:                                 ; preds = %pred.store.continue443
  %i.cu = extractelement <16 x i8> %wide.load, i64 8
  %i.cv = or disjoint i8 %i.cu, 32
  store i8 %i.cv, ptr %next.gep422, align 1, !tbaa !18
  br label %pred.store.continue445

pred.store.continue445:                           ; preds = %pred.store.if444, %pred.store.continue443
  %i.cw = extractelement <16 x i1> %i.bu, i64 9
  br i1 %i.cw, label %pred.store.if446, label %pred.store.continue447

pred.store.if446:                                 ; preds = %pred.store.continue445
  %i.cx = extractelement <16 x i8> %wide.load, i64 9
  %i.cy = or disjoint i8 %i.cx, 32
  store i8 %i.cy, ptr %next.gep423, align 1, !tbaa !18
  br label %pred.store.continue447

pred.store.continue447:                           ; preds = %pred.store.if446, %pred.store.continue445
  %i.cz = extractelement <16 x i1> %i.bu, i64 10
  br i1 %i.cz, label %pred.store.if448, label %pred.store.continue449

pred.store.if448:                                 ; preds = %pred.store.continue447
  %i.da = extractelement <16 x i8> %wide.load, i64 10
  %i.db = or disjoint i8 %i.da, 32
  store i8 %i.db, ptr %next.gep424, align 1, !tbaa !18
  br label %pred.store.continue449

pred.store.continue449:                           ; preds = %pred.store.if448, %pred.store.continue447
  %i.dc = extractelement <16 x i1> %i.bu, i64 11
end_hunk_0
begin_hunk_1_@uriNormalizeSyntaxEngineA:bb.a
  store i8 %i.dh, ptr %next.gep426, align 1, !tbaa !18
  br label %pred.store.continue453

pred.store.continue453:                           ; preds = %pred.store.if452, %pred.store.continue451
  %i.di = extractelement <16 x i1> %i.bu, i64 13
  br i1 %i.di, label %pred.store.if454, label %pred.store.continue455

pred.store.if454:                                 ; preds = %pred.store.continue453
  %i.dj = extractelement <16 x i8> %wide.load, i64 13
  %i.dk = or disjoint i8 %i.dj, 32
  store i8 %i.dk, ptr %next.gep427, align 1, !tbaa !18
  br label %pred.store.continue455

pred.store.continue455:                           ; preds = %pred.store.if454, %pred.store.continue453
  %i.dl = extractelement <16 x i1> %i.bu, i64 14
  br i1 %i.dl, label %pred.store.if456, label %pred.store.continue457

pred.store.if456:                                 ; preds = %pred.store.continue455
  %i.dm = extractelement <16 x i8> %wide.load, i64 14
  %i.dn = or disjoint i8 %i.dm, 32
  store i8 %i.dn, ptr %next.gep428, align 1, !tbaa !18
  br label %pred.store.continue457

pred.store.continue457:                           ; preds = %pred.store.if456, %pred.store.continue455
  %i.do = extractelement <16 x i1> %i.bu, i64 15
  br i1 %i.do, label %pred.store.if458, label %pred.store.continue459

pred.store.if458:                                 ; preds = %pred.store.continue457
  %i.dp = extractelement <16 x i8> %wide.load, i64 15
  %i.dq = or disjoint i8 %i.dp, 32
  store i8 %i.dq, ptr %next.gep429, align 1, !tbaa !18
  br label %pred.store.continue459

pred.store.continue459:                           ; preds = %pred.store.if458, %pred.store.continue457
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dr = icmp eq i64 %index.next, %n.vec
  br i1 %i.dr, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %pred.store.continue459
  %cmp.n = icmp eq i64 %i.bb, %n.vec
  br i1 %cmp.n, label %uriLowercaseInplaceA.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.bc, 0
  br i1 %min.epilog.iters.check.not.not, label %.preheader.i221.preheader, label %vec.epilog.ph, !prof !86

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec460 = and i64 %i.bb, -8                   ; 3 uses
  %i.ds = getelementptr i8, ptr %i.at, i64 %n.vec460
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue486, %vec.epilog.ph
  %index461 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next487, %pred.store.continue486 ] ; 9 uses
  %next.gep462 = getelementptr i8, ptr %i.at, i64 %index461 ; 2 uses
  %i.dt = getelementptr i8, ptr %i.at, i64 %index461
  %next.gep463 = getelementptr i8, ptr %i.dt, i64 1
  %i.du = getelementptr i8, ptr %i.at, i64 %index461
  %next.gep464 = getelementptr i8, ptr %i.du, i64 2
  %i.dv = getelementptr i8, ptr %i.at, i64 %index461
  %next.gep465 = getelementptr i8, ptr %i.dv, i64 3
  %i.dw = getelementptr i8, ptr %i.at, i64 %index461
  %next.gep466 = getelementptr i8, ptr %i.dw, i64 4
  %i.dx = getelementptr i8, ptr %i.at, i64 %index461
  %next.gep467 = getelementptr i8, ptr %i.dx, i64 5
  %i.dy = getelementptr i8, ptr %i.at, i64 %index461
  %next.gep468 = getelementptr i8, ptr %i.dy, i64 6
  %i.dz = getelementptr i8, ptr %i.at, i64 %index461
  %next.gep469 = getelementptr i8, ptr %i.dz, i64 7
  %wide.load470 = load <8 x i8>, ptr %next.gep462, align 1, !tbaa !18 ; 9 uses
  %i.ea = add <8 x i8> %wide.load470, splat (i8 -65)
  %i.eb = icmp ult <8 x i8> %i.ea, splat (i8 26)  ; 8 uses
  %i.ec = extractelement <8 x i1> %i.eb, i64 0
  br i1 %i.ec, label %pred.store.if471, label %pred.store.continue472

pred.store.if471:                                 ; preds = %vec.epilog.vector.body
  %i.ed = extractelement <8 x i8> %wide.load470, i64 0
  %i.ee = or disjoint i8 %i.ed, 32
  store i8 %i.ee, ptr %next.gep462, align 1, !tbaa !18
  br label %pred.store.continue472

pred.store.continue472:                           ; preds = %pred.store.if471, %vec.epilog.vector.body
  %i.ef = extractelement <8 x i1> %i.eb, i64 1
  br i1 %i.ef, label %pred.store.if473, label %pred.store.continue474

pred.store.if473:                                 ; preds = %pred.store.continue472
  %i.eg = extractelement <8 x i8> %wide.load470, i64 1
  %i.eh = or disjoint i8 %i.eg, 32
  store i8 %i.eh, ptr %next.gep463, align 1, !tbaa !18
  br label %pred.store.continue474

pred.store.continue474:                           ; preds = %pred.store.if473, %pred.store.continue472
  %i.ei = extractelement <8 x i1> %i.eb, i64 2
  br i1 %i.ei, label %pred.store.if475, label %pred.store.continue476

pred.store.if475:                                 ; preds = %pred.store.continue474
  %i.ej = extractelement <8 x i8> %wide.load470, i64 2
  %i.ek = or disjoint i8 %i.ej, 32
  store i8 %i.ek, ptr %next.gep464, align 1, !tbaa !18
  br label %pred.store.continue476

pred.store.continue476:                           ; preds = %pred.store.if475, %pred.store.continue474
  %i.el = extractelement <8 x i1> %i.eb, i64 3
  br i1 %i.el, label %pred.store.if477, label %pred.store.continue478

pred.store.if477:                                 ; preds = %pred.store.continue476
  %i.em = extractelement <8 x i8> %wide.load470, i64 3
  %i.en = or disjoint i8 %i.em, 32
  store i8 %i.en, ptr %next.gep465, align 1, !tbaa !18
  br label %pred.store.continue478

pred.store.continue478:                           ; preds = %pred.store.if477, %pred.store.continue476
  %i.eo = extractelement <8 x i1> %i.eb, i64 4
  br i1 %i.eo, label %pred.store.if479, label %pred.store.continue480

pred.store.if479:                                 ; preds = %pred.store.continue478
  %i.ep = extractelement <8 x i8> %wide.load470, i64 4
  %i.eq = or disjoint i8 %i.ep, 32
  store i8 %i.eq, ptr %next.gep466, align 1, !tbaa !18
  br label %pred.store.continue480

pred.store.continue480:                           ; preds = %pred.store.if479, %pred.store.continue478
  %i.er = extractelement <8 x i1> %i.eb, i64 5
  br i1 %i.er, label %pred.store.if481, label %pred.store.continue482

pred.store.if481:                                 ; preds = %pred.store.continue480
  %i.es = extractelement <8 x i8> %wide.load470, i64 5
  %i.et = or disjoint i8 %i.es, 32
  store i8 %i.et, ptr %next.gep467, align 1, !tbaa !18
  br label %pred.store.continue482

pred.store.continue482:                           ; preds = %pred.store.if481, %pred.store.continue480
  %i.eu = extractelement <8 x i1> %i.eb, i64 6
  br i1 %i.eu, label %pred.store.if483, label %pred.store.continue484

pred.store.if483:                                 ; preds = %pred.store.continue482
  %i.ev = extractelement <8 x i8> %wide.load470, i64 6
  %i.ew = or disjoint i8 %i.ev, 32
  store i8 %i.ew, ptr %next.gep468, align 1, !tbaa !18
  br label %pred.store.continue484

pred.store.continue484:                           ; preds = %pred.store.if483, %pred.store.continue482
  %i.ex = extractelement <8 x i1> %i.eb, i64 7
  br i1 %i.ex, label %pred.store.if485, label %pred.store.continue486

pred.store.if485:                                 ; preds = %pred.store.continue484
  %i.ey = extractelement <8 x i8> %wide.load470, i64 7
  %i.ez = or disjoint i8 %i.ey, 32
  store i8 %i.ez, ptr %next.gep469, align 1, !tbaa !18
  br label %pred.store.continue486

pred.store.continue486:                           ; preds = %pred.store.if485, %pred.store.continue484
  %index.next487 = add nuw i64 %index461, 8       ; 2 uses
  %i.fa = icmp eq i64 %index.next487, %n.vec460
  br i1 %i.fa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !66

vec.epilog.middle.block:                          ; preds = %pred.store.continue486
  %cmp.n488 = icmp eq i64 %i.bb, %n.vec460
  br i1 %cmp.n488, label %uriLowercaseInplaceA.exit, label %.preheader.i221.preheader

.preheader.i221.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.018.i.ph = phi ptr [ %i.at, %iter.check ], [ %i.bd, %vec.epilog.iter.check ], [ %i.ds, %vec.epilog.middle.block ]
  br label %.preheader.i221

.preheader.i221:                                  ; preds = %.preheader.i221.preheader, %bb.t
  %.018.i = phi ptr [ %i.fe, %bb.t ], [ %.018.i.ph, %.preheader.i221.preheader ] ; 3 uses
  %i.fb = load i8, ptr %.018.i, align 1, !tbaa !18 ; 2 uses
  %i.fc = add i8 %i.fb, -65
  %or.cond17.i222 = icmp ult i8 %i.fc, 26
  br i1 %or.cond17.i222, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.preheader.i221
  %i.fd = or disjoint i8 %i.fb, 32
  store i8 %i.fd, ptr %.018.i, align 1, !tbaa !18
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.preheader.i221
  %i.fe = getelementptr inbounds nuw i8, ptr %.018.i, i64 1 ; 2 uses
  %exitcond.not.i223 = icmp eq ptr %i.fe, %i.ay
  br i1 %exitcond.not.i223, label %uriLowercaseInplaceA.exit, label %.preheader.i221, !llvm.loop !67

bb.u:                                             ; preds = %bb.q
  %i.ff = icmp eq ptr %i.ay, null
  br i1 %i.ff, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fg = ptrtoint ptr %i.ay to i64
  %i.fh = ptrtoint ptr %i.at to i64
  %i.fi = sub i64 %i.fg, %i.fh                    ; 5 uses
  %i.fj = trunc i64 %i.fi to i32                  ; 2 uses
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %uriLowercaseMallocA.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fl = icmp slt i32 %i.fj, 0
  br i1 %i.fl, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fm = load ptr, ptr %3, align 8, !tbaa !25
  %i.fn = and i64 %i.fi, 2147483647               ; 3 uses
  %i.fo = tail call ptr %i.fm(ptr noundef nonnull %3, i64 noundef %i.fn) #6, !inline_history !68 ; 6 uses
  %i.fp = icmp eq ptr %i.fo, null
  br i1 %i.fp, label %bb.y, label %.lr.ph.i224.preheader

.lr.ph.i224.preheader:                            ; preds = %bb.x
  %xtraiter = and i64 %i.fi, 1
  %i.fq = icmp eq i64 %i.fn, 1
  br i1 %i.fq, label %.lr.ph.i224.epil.preheader, label %.lr.ph.i224.preheader.new

.lr.ph.i224.preheader.new:                        ; preds = %.lr.ph.i224.preheader
  %unroll_iter = and i64 %i.fi, 2147483646
  br label %.lr.ph.i224

.lr.ph.i224:                                      ; preds = %.lr.ph.i224, %.lr.ph.i224.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i224.preheader.new ], [ %indvars.iv.next.i.1, %.lr.ph.i224 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i224.preheader.new ], [ %niter.next.1, %.lr.ph.i224 ]
  %i.fr = load ptr, ptr %0, align 8, !tbaa !21
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %indvars.iv.i
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !18  ; 3 uses
  %i.fu = add i8 %i.ft, -65
  %or.cond.i225 = icmp ult i8 %i.fu, 26
  %i.fv = or disjoint i8 %i.ft, 32
  %spec.select.i = select i1 %or.cond.i225, i8 %i.fv, i8 %i.ft
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fo, i64 %indvars.iv.i
  store i8 %spec.select.i, ptr %i.fw, align 1, !tbaa !18
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.fx = load ptr, ptr %0, align 8, !tbaa !21
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 %indvars.iv.next.i
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !18  ; 3 uses
  %i.ga = add i8 %i.fz, -65
  %or.cond.i225.1 = icmp ult i8 %i.ga, 26
  %i.gb = or disjoint i8 %i.fz, 32
  %spec.select.i.1 = select i1 %or.cond.i225.1, i8 %i.gb, i8 %i.fz
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fo, i64 %indvars.iv.next.i
  store i8 %spec.select.i.1, ptr %i.gc, align 1, !tbaa !18
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i224, !llvm.loop !69

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i224
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i224.epil.preheader

.lr.ph.i224.epil.preheader:                       ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i224.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i224.preheader ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %lcmp.mod688 = trunc i64 %i.fi to i1
  tail call void @llvm.assume(i1 %lcmp.mod688)
  %i.gd = load ptr, ptr %0, align 8, !tbaa !21
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 %indvars.iv.i.epil.init
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !18  ; 3 uses
  %i.gg = add i8 %i.gf, -65
  %or.cond.i225.epil = icmp ult i8 %i.gg, 26
  %i.gh = or disjoint i8 %i.gf, 32
  %spec.select.i.epil = select i1 %or.cond.i225.epil, i8 %i.gh, i8 %i.gf
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fo, i64 %indvars.iv.i.epil.init
  store i8 %spec.select.i.epil, ptr %i.gi, align 1, !tbaa !18
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i224.epil.preheader
  store ptr %i.fo, ptr %0, align 8, !tbaa !21
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fn
  store ptr %i.gj, ptr %i.ax, align 8, !tbaa !21
  br label %uriLowercaseMallocA.exit

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.u
  tail call fastcc void @uriPreventLeakageA(ptr noundef %0, i32 noundef 0, ptr noundef %3)
  br label %bb.ef

uriLowercaseMallocA.exit:                         ; preds = %._crit_edge.i, %bb.v
  store i32 1, ptr %i.a, align 4, !tbaa !8
  br label %uriLowercaseInplaceA.exit

uriLowercaseInplaceA.exit:                        ; preds = %bb.t, %middle.block, %vec.epilog.middle.block, %bb.r, %uriLowercaseMallocA.exit, %bb.p, %bb.o
  %i.gk = phi i32 [ 0, %bb.o ], [ 0, %bb.r ], [ 1, %uriLowercaseMallocA.exit ], [ 0, %bb.p ], [ 0, %middle.block ], [ 0, %vec.epilog.middle.block ], [ 0, %bb.t ] ; 11 uses
  %i.gl = and i32 %1, 4
  %.not176 = icmp eq i32 %i.gl, 0
  br i1 %.not176, label %uriContainsUglyPercentEncodingA.exit, label %bb.z

bb.z:                                             ; preds = %uriLowercaseInplaceA.exit
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !26 ; 33 uses
  %i.gp = ptrtoaddr ptr %i.go to i64
  %.not177 = icmp eq ptr %i.go, null
  br i1 %.not177, label %bb.aj, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !85
  %.not181 = icmp eq i32 %i.gr, 0
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !21 ; 7 uses
  %i.gu = ptrtoaddr ptr %i.gt to i64
  br i1 %.not181, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gv = icmp ugt ptr %i.gt, %i.go
  br i1 %i.gv, label %iter.check550, label %uriLowercaseInplaceA.exit232

iter.check550:                                    ; preds = %bb.ab
  %i.gw = sub i64 %i.gu, %i.gp                    ; 7 uses
  %min.iters.check490 = icmp ult i64 %i.gw, 8
  br i1 %min.iters.check490, label %.preheader.i228.preheader, label %vector.main.loop.iter.check491

vector.main.loop.iter.check491:                   ; preds = %iter.check550
  %min.iters.check492 = icmp ult i64 %i.gw, 16
  br i1 %min.iters.check492, label %vec.epilog.ph554, label %vector.ph493

vector.ph493:                                     ; preds = %vector.main.loop.iter.check491
  %i.gx = and i64 %i.gw, 8
  %n.vec494 = and i64 %i.gw, -16                  ; 4 uses
  %i.gy = getelementptr i8, ptr %i.go, i64 %n.vec494
  br label %vector.body495

vector.body495:                                   ; preds = %pred.store.continue545, %vector.ph493
  %index496 = phi i64 [ 0, %vector.ph493 ], [ %index.next546, %pred.store.continue545 ] ; 17 uses
  %next.gep497 = getelementptr i8, ptr %i.go, i64 %index496 ; 2 uses
  %i.gz = getelementptr i8, ptr %i.go, i64 %index496
  %next.gep498 = getelementptr i8, ptr %i.gz, i64 1
  %i.ha = getelementptr i8, ptr %i.go, i64 %index496
  %next.gep499 = getelementptr i8, ptr %i.ha, i64 2
  %i.hb = getelementptr i8, ptr %i.go, i64 %index496
  %next.gep500 = getelementptr i8, ptr %i.hb, i64 3
  %i.hc = getelementptr i8, ptr %i.go, i64 %index496
  %next.gep501 = getelementptr i8, ptr %i.hc, i64 4
  %i.hd = getelementptr i8, ptr %i.go, i64 %index496
  %next.gep502 = getelementptr i8, ptr %i.hd, i64 5
  %i.he = getelementptr i8, ptr %i.go, i64 %index496
  %next.gep503 = getelementptr i8, ptr %i.he, i64 6
  %i.hf = getelementptr i8, ptr %i.go, i64 %index496
  %next.gep504 = getelementptr i8, ptr %i.hf, i64 7
  %i.hg = getelementptr i8, ptr %i.go, i64 %index496
  %next.gep505 = getelementptr i8, ptr %i.hg, i64 8
  %i.hh = getelementptr i8, ptr %i.go, i64 %index496
  %next.gep506 = getelementptr i8, ptr %i.hh, i64 9
  %i.hi = getelementptr i8, ptr %i.go, i64 %index496
  %next.gep507 = getelementptr i8, ptr %i.hi, i64 10
  %i.hj = getelementptr i8, ptr %i.go, i64 %index496
  %next.gep508 = getelementptr i8, ptr %i.hj, i64 11
  %i.hk = getelementptr i8, ptr %i.go, i64 %index496
  %next.gep509 = getelementptr i8, ptr %i.hk, i64 12
  %i.hl = getelementptr i8, ptr %i.go, i64 %index496
  %next.gep510 = getelementptr i8, ptr %i.hl, i64 13
  %i.hm = getelementptr i8, ptr %i.go, i64 %index496
  %next.gep511 = getelementptr i8, ptr %i.hm, i64 14
  %i.hn = getelementptr i8, ptr %i.go, i64 %index496
  %next.gep512 = getelementptr i8, ptr %i.hn, i64 15
  %wide.load513 = load <16 x i8>, ptr %next.gep497, align 1, !tbaa !18 ; 17 uses
  %i.ho = add <16 x i8> %wide.load513, splat (i8 -65)
  %i.hp = icmp ult <16 x i8> %i.ho, splat (i8 26) ; 16 uses
  %i.hq = extractelement <16 x i1> %i.hp, i64 0
  br i1 %i.hq, label %pred.store.if514, label %pred.store.continue515

pred.store.if514:                                 ; preds = %vector.body495
  %i.hr = extractelement <16 x i8> %wide.load513, i64 0
  %i.hs = or disjoint i8 %i.hr, 32
  store i8 %i.hs, ptr %next.gep497, align 1, !tbaa !18
  br label %pred.store.continue515

pred.store.continue515:                           ; preds = %pred.store.if514, %vector.body495
  %i.ht = extractelement <16 x i1> %i.hp, i64 1
  br i1 %i.ht, label %pred.store.if516, label %pred.store.continue517

pred.store.if516:                                 ; preds = %pred.store.continue515
  %i.hu = extractelement <16 x i8> %wide.load513, i64 1
  %i.hv = or disjoint i8 %i.hu, 32
  store i8 %i.hv, ptr %next.gep498, align 1, !tbaa !18
  br label %pred.store.continue517

pred.store.continue517:                           ; preds = %pred.store.if516, %pred.store.continue515
  %i.hw = extractelement <16 x i1> %i.hp, i64 2
  br i1 %i.hw, label %pred.store.if518, label %pred.store.continue519

pred.store.if518:                                 ; preds = %pred.store.continue517
  %i.hx = extractelement <16 x i8> %wide.load513, i64 2
  %i.hy = or disjoint i8 %i.hx, 32
  store i8 %i.hy, ptr %next.gep499, align 1, !tbaa !18
  br label %pred.store.continue519

pred.store.continue519:                           ; preds = %pred.store.if518, %pred.store.continue517
  %i.hz = extractelement <16 x i1> %i.hp, i64 3
  br i1 %i.hz, label %pred.store.if520, label %pred.store.continue521

pred.store.if520:                                 ; preds = %pred.store.continue519
  %i.ia = extractelement <16 x i8> %wide.load513, i64 3
  %i.ib = or disjoint i8 %i.ia, 32
  store i8 %i.ib, ptr %next.gep500, align 1, !tbaa !18
  br label %pred.store.continue521

pred.store.continue521:                           ; preds = %pred.store.if520, %pred.store.continue519
  %i.ic = extractelement <16 x i1> %i.hp, i64 4
  br i1 %i.ic, label %pred.store.if522, label %pred.store.continue523

pred.store.if522:                                 ; preds = %pred.store.continue521
  %i.id = extractelement <16 x i8> %wide.load513, i64 4
  %i.ie = or disjoint i8 %i.id, 32
  store i8 %i.ie, ptr %next.gep501, align 1, !tbaa !18
  br label %pred.store.continue523

pred.store.continue523:                           ; preds = %pred.store.if522, %pred.store.continue521
end_hunk_1
begin_hunk_2_@uriNormalizeSyntaxEngineA:bb.a
  store i8 %i.jc, ptr %next.gep509, align 1, !tbaa !18
  br label %pred.store.continue539

pred.store.continue539:                           ; preds = %pred.store.if538, %pred.store.continue537
  %i.jd = extractelement <16 x i1> %i.hp, i64 13
  br i1 %i.jd, label %pred.store.if540, label %pred.store.continue541

pred.store.if540:                                 ; preds = %pred.store.continue539
  %i.je = extractelement <16 x i8> %wide.load513, i64 13
  %i.jf = or disjoint i8 %i.je, 32
  store i8 %i.jf, ptr %next.gep510, align 1, !tbaa !18
  br label %pred.store.continue541

pred.store.continue541:                           ; preds = %pred.store.if540, %pred.store.continue539
  %i.jg = extractelement <16 x i1> %i.hp, i64 14
  br i1 %i.jg, label %pred.store.if542, label %pred.store.continue543

pred.store.if542:                                 ; preds = %pred.store.continue541
  %i.jh = extractelement <16 x i8> %wide.load513, i64 14
  %i.ji = or disjoint i8 %i.jh, 32
  store i8 %i.ji, ptr %next.gep511, align 1, !tbaa !18
  br label %pred.store.continue543

pred.store.continue543:                           ; preds = %pred.store.if542, %pred.store.continue541
  %i.jj = extractelement <16 x i1> %i.hp, i64 15
  br i1 %i.jj, label %pred.store.if544, label %pred.store.continue545

pred.store.if544:                                 ; preds = %pred.store.continue543
  %i.jk = extractelement <16 x i8> %wide.load513, i64 15
  %i.jl = or disjoint i8 %i.jk, 32
  store i8 %i.jl, ptr %next.gep512, align 1, !tbaa !18
  br label %pred.store.continue545

pred.store.continue545:                           ; preds = %pred.store.if544, %pred.store.continue543
  %index.next546 = add nuw i64 %index496, 16      ; 2 uses
  %i.jm = icmp eq i64 %index.next546, %n.vec494
  br i1 %i.jm, label %middle.block547, label %vector.body495, !llvm.loop !70

middle.block547:                                  ; preds = %pred.store.continue545
  %cmp.n548 = icmp eq i64 %i.gw, %n.vec494
  br i1 %cmp.n548, label %uriLowercaseInplaceA.exit232.loopexit, label %vec.epilog.iter.check552

vec.epilog.iter.check552:                         ; preds = %middle.block547
  %min.epilog.iters.check553.not.not = icmp eq i64 %i.gx, 0
  br i1 %min.epilog.iters.check553.not.not, label %.preheader.i228.preheader, label %vec.epilog.ph554, !prof !86

vec.epilog.ph554:                                 ; preds = %vector.main.loop.iter.check491, %vec.epilog.iter.check552
  %vec.epilog.resume.val549 = phi i64 [ %n.vec494, %vec.epilog.iter.check552 ], [ 0, %vector.main.loop.iter.check491 ]
  %n.vec555 = and i64 %i.gw, -8                   ; 3 uses
  %i.jn = getelementptr i8, ptr %i.go, i64 %n.vec555
  br label %vec.epilog.vector.body556

vec.epilog.vector.body556:                        ; preds = %pred.store.continue582, %vec.epilog.ph554
  %index557 = phi i64 [ %vec.epilog.resume.val549, %vec.epilog.ph554 ], [ %index.next583, %pred.store.continue582 ] ; 9 uses
  %next.gep558 = getelementptr i8, ptr %i.go, i64 %index557 ; 2 uses
  %i.jo = getelementptr i8, ptr %i.go, i64 %index557
  %next.gep559 = getelementptr i8, ptr %i.jo, i64 1
  %i.jp = getelementptr i8, ptr %i.go, i64 %index557
  %next.gep560 = getelementptr i8, ptr %i.jp, i64 2
  %i.jq = getelementptr i8, ptr %i.go, i64 %index557
  %next.gep561 = getelementptr i8, ptr %i.jq, i64 3
  %i.jr = getelementptr i8, ptr %i.go, i64 %index557
  %next.gep562 = getelementptr i8, ptr %i.jr, i64 4
  %i.js = getelementptr i8, ptr %i.go, i64 %index557
  %next.gep563 = getelementptr i8, ptr %i.js, i64 5
  %i.jt = getelementptr i8, ptr %i.go, i64 %index557
  %next.gep564 = getelementptr i8, ptr %i.jt, i64 6
  %i.ju = getelementptr i8, ptr %i.go, i64 %index557
  %next.gep565 = getelementptr i8, ptr %i.ju, i64 7
  %wide.load566 = load <8 x i8>, ptr %next.gep558, align 1, !tbaa !18 ; 9 uses
  %i.jv = add <8 x i8> %wide.load566, splat (i8 -65)
  %i.jw = icmp ult <8 x i8> %i.jv, splat (i8 26)  ; 8 uses
  %i.jx = extractelement <8 x i1> %i.jw, i64 0
  br i1 %i.jx, label %pred.store.if567, label %pred.store.continue568

pred.store.if567:                                 ; preds = %vec.epilog.vector.body556
  %i.jy = extractelement <8 x i8> %wide.load566, i64 0
  %i.jz = or disjoint i8 %i.jy, 32
  store i8 %i.jz, ptr %next.gep558, align 1, !tbaa !18
  br label %pred.store.continue568

pred.store.continue568:                           ; preds = %pred.store.if567, %vec.epilog.vector.body556
  %i.ka = extractelement <8 x i1> %i.jw, i64 1
  br i1 %i.ka, label %pred.store.if569, label %pred.store.continue570

pred.store.if569:                                 ; preds = %pred.store.continue568
  %i.kb = extractelement <8 x i8> %wide.load566, i64 1
  %i.kc = or disjoint i8 %i.kb, 32
  store i8 %i.kc, ptr %next.gep559, align 1, !tbaa !18
  br label %pred.store.continue570

pred.store.continue570:                           ; preds = %pred.store.if569, %pred.store.continue568
  %i.kd = extractelement <8 x i1> %i.jw, i64 2
  br i1 %i.kd, label %pred.store.if571, label %pred.store.continue572

pred.store.if571:                                 ; preds = %pred.store.continue570
  %i.ke = extractelement <8 x i8> %wide.load566, i64 2
  %i.kf = or disjoint i8 %i.ke, 32
  store i8 %i.kf, ptr %next.gep560, align 1, !tbaa !18
  br label %pred.store.continue572

pred.store.continue572:                           ; preds = %pred.store.if571, %pred.store.continue570
  %i.kg = extractelement <8 x i1> %i.jw, i64 3
  br i1 %i.kg, label %pred.store.if573, label %pred.store.continue574

pred.store.if573:                                 ; preds = %pred.store.continue572
  %i.kh = extractelement <8 x i8> %wide.load566, i64 3
  %i.ki = or disjoint i8 %i.kh, 32
  store i8 %i.ki, ptr %next.gep561, align 1, !tbaa !18
  br label %pred.store.continue574

pred.store.continue574:                           ; preds = %pred.store.if573, %pred.store.continue572
  %i.kj = extractelement <8 x i1> %i.jw, i64 4
  br i1 %i.kj, label %pred.store.if575, label %pred.store.continue576

pred.store.if575:                                 ; preds = %pred.store.continue574
  %i.kk = extractelement <8 x i8> %wide.load566, i64 4
  %i.kl = or disjoint i8 %i.kk, 32
  store i8 %i.kl, ptr %next.gep562, align 1, !tbaa !18
  br label %pred.store.continue576

pred.store.continue576:                           ; preds = %pred.store.if575, %pred.store.continue574
  %i.km = extractelement <8 x i1> %i.jw, i64 5
  br i1 %i.km, label %pred.store.if577, label %pred.store.continue578

pred.store.if577:                                 ; preds = %pred.store.continue576
  %i.kn = extractelement <8 x i8> %wide.load566, i64 5
  %i.ko = or disjoint i8 %i.kn, 32
  store i8 %i.ko, ptr %next.gep563, align 1, !tbaa !18
  br label %pred.store.continue578

pred.store.continue578:                           ; preds = %pred.store.if577, %pred.store.continue576
  %i.kp = extractelement <8 x i1> %i.jw, i64 6
  br i1 %i.kp, label %pred.store.if579, label %pred.store.continue580

pred.store.if579:                                 ; preds = %pred.store.continue578
  %i.kq = extractelement <8 x i8> %wide.load566, i64 6
  %i.kr = or disjoint i8 %i.kq, 32
  store i8 %i.kr, ptr %next.gep564, align 1, !tbaa !18
  br label %pred.store.continue580

pred.store.continue580:                           ; preds = %pred.store.if579, %pred.store.continue578
  %i.ks = extractelement <8 x i1> %i.jw, i64 7
  br i1 %i.ks, label %pred.store.if581, label %pred.store.continue582

pred.store.if581:                                 ; preds = %pred.store.continue580
  %i.kt = extractelement <8 x i8> %wide.load566, i64 7
  %i.ku = or disjoint i8 %i.kt, 32
  store i8 %i.ku, ptr %next.gep565, align 1, !tbaa !18
  br label %pred.store.continue582

pred.store.continue582:                           ; preds = %pred.store.if581, %pred.store.continue580
  %index.next583 = add nuw i64 %index557, 8       ; 2 uses
  %i.kv = icmp eq i64 %index.next583, %n.vec555
  br i1 %i.kv, label %vec.epilog.middle.block584, label %vec.epilog.vector.body556, !llvm.loop !71

vec.epilog.middle.block584:                       ; preds = %pred.store.continue582
  %cmp.n585 = icmp eq i64 %i.gw, %n.vec555
  br i1 %cmp.n585, label %uriLowercaseInplaceA.exit232.loopexit, label %.preheader.i228.preheader

.preheader.i228.preheader:                        ; preds = %iter.check550, %vec.epilog.iter.check552, %vec.epilog.middle.block584
  %.018.i229.ph = phi ptr [ %i.go, %iter.check550 ], [ %i.gy, %vec.epilog.iter.check552 ], [ %i.jn, %vec.epilog.middle.block584 ]
  br label %.preheader.i228

.preheader.i228:                                  ; preds = %.preheader.i228.preheader, %bb.ad
  %.018.i229 = phi ptr [ %i.kz, %bb.ad ], [ %.018.i229.ph, %.preheader.i228.preheader ] ; 3 uses
  %i.kw = load i8, ptr %.018.i229, align 1, !tbaa !18 ; 2 uses
  %i.kx = add i8 %i.kw, -65
  %or.cond17.i230 = icmp ult i8 %i.kx, 26
  br i1 %or.cond17.i230, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.preheader.i228
  %i.ky = or disjoint i8 %i.kw, 32
  store i8 %i.ky, ptr %.018.i229, align 1, !tbaa !18
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.preheader.i228
  %i.kz = getelementptr inbounds nuw i8, ptr %.018.i229, i64 1 ; 2 uses
  %exitcond.not.i231 = icmp eq ptr %i.kz, %i.gt
  br i1 %exitcond.not.i231, label %uriLowercaseInplaceA.exit232.loopexit, label %.preheader.i228, !llvm.loop !72

bb.ae:                                            ; preds = %bb.aa
  %i.la = icmp eq ptr %i.gt, null
  br i1 %i.la, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.lb = ptrtoint ptr %i.gt to i64
  %i.lc = ptrtoint ptr %i.go to i64
  %i.ld = sub i64 %i.lb, %i.lc                    ; 5 uses
  %i.le = trunc i64 %i.ld to i32                  ; 2 uses
  %i.lf = icmp eq i32 %i.le, 0
  br i1 %i.lf, label %uriLowercaseMallocA.exit243, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.lg = icmp slt i32 %i.le, 0
  br i1 %i.lg, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.lh = load ptr, ptr %3, align 8, !tbaa !25
  %i.li = and i64 %i.ld, 2147483647               ; 3 uses
  %i.lj = tail call ptr %i.lh(ptr noundef nonnull %3, i64 noundef %i.li) #6, !inline_history !68 ; 7 uses
  %i.lk = icmp eq ptr %i.lj, null
  br i1 %i.lk, label %bb.ai, label %.lr.ph.i235.preheader

.lr.ph.i235.preheader:                            ; preds = %bb.ah
  %xtraiter689 = and i64 %i.ld, 1
  %i.ll = icmp eq i64 %i.li, 1
  br i1 %i.ll, label %.lr.ph.i235.epil.preheader, label %.lr.ph.i235.preheader.new

.lr.ph.i235.preheader.new:                        ; preds = %.lr.ph.i235.preheader
  %unroll_iter692 = and i64 %i.ld, 2147483646
  br label %.lr.ph.i235

.lr.ph.i235:                                      ; preds = %.lr.ph.i235, %.lr.ph.i235.preheader.new
  %indvars.iv.i236 = phi i64 [ 0, %.lr.ph.i235.preheader.new ], [ %indvars.iv.next.i239.1, %.lr.ph.i235 ] ; 4 uses
  %niter693 = phi i64 [ 0, %.lr.ph.i235.preheader.new ], [ %niter693.next.1, %.lr.ph.i235 ]
  %i.lm = load ptr, ptr %i.gn, align 8, !tbaa !21
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 %indvars.iv.i236
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !18  ; 3 uses
  %i.lp = add i8 %i.lo, -65
  %or.cond.i237 = icmp ult i8 %i.lp, 26
  %i.lq = or disjoint i8 %i.lo, 32
  %spec.select.i238 = select i1 %or.cond.i237, i8 %i.lq, i8 %i.lo
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lj, i64 %indvars.iv.i236
  store i8 %spec.select.i238, ptr %i.lr, align 1, !tbaa !18
  %indvars.iv.next.i239 = or disjoint i64 %indvars.iv.i236, 1 ; 2 uses
  %i.ls = load ptr, ptr %i.gn, align 8, !tbaa !21
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 %indvars.iv.next.i239
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !18  ; 3 uses
  %i.lv = add i8 %i.lu, -65
  %or.cond.i237.1 = icmp ult i8 %i.lv, 26
  %i.lw = or disjoint i8 %i.lu, 32
  %spec.select.i238.1 = select i1 %or.cond.i237.1, i8 %i.lw, i8 %i.lu
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lj, i64 %indvars.iv.next.i239
  store i8 %spec.select.i238.1, ptr %i.lx, align 1, !tbaa !18
  %indvars.iv.next.i239.1 = add nuw nsw i64 %indvars.iv.i236, 2 ; 2 uses
  %niter693.next.1 = add i64 %niter693, 2         ; 2 uses
  %niter693.ncmp.1 = icmp eq i64 %niter693.next.1, %unroll_iter692
  br i1 %niter693.ncmp.1, label %._crit_edge.i241.unr-lcssa, label %.lr.ph.i235, !llvm.loop !69

._crit_edge.i241.unr-lcssa:                       ; preds = %.lr.ph.i235
  %lcmp.mod690.not = icmp eq i64 %xtraiter689, 0
  br i1 %lcmp.mod690.not, label %._crit_edge.i241, label %.lr.ph.i235.epil.preheader

.lr.ph.i235.epil.preheader:                       ; preds = %._crit_edge.i241.unr-lcssa, %.lr.ph.i235.preheader
  %indvars.iv.i236.epil.init = phi i64 [ 0, %.lr.ph.i235.preheader ], [ %indvars.iv.next.i239.1, %._crit_edge.i241.unr-lcssa ] ; 2 uses
  %lcmp.mod691 = trunc i64 %i.ld to i1
  tail call void @llvm.assume(i1 %lcmp.mod691)
  %i.ly = load ptr, ptr %i.gn, align 8, !tbaa !21
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 %indvars.iv.i236.epil.init
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !18  ; 3 uses
  %i.mb = add i8 %i.ma, -65
  %or.cond.i237.epil = icmp ult i8 %i.mb, 26
  %i.mc = or disjoint i8 %i.ma, 32
  %spec.select.i238.epil = select i1 %or.cond.i237.epil, i8 %i.mc, i8 %i.ma
  %i.md = getelementptr inbounds nuw i8, ptr %i.lj, i64 %indvars.iv.i236.epil.init
  store i8 %spec.select.i238.epil, ptr %i.md, align 1, !tbaa !18
  br label %._crit_edge.i241

._crit_edge.i241:                                 ; preds = %._crit_edge.i241.unr-lcssa, %.lr.ph.i235.epil.preheader
  store ptr %i.lj, ptr %i.gn, align 8, !tbaa !21
  %i.me = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.li ; 2 uses
  store ptr %i.me, ptr %i.gs, align 8, !tbaa !21
  br label %uriLowercaseMallocA.exit243

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.ae
  tail call fastcc void @uriPreventLeakageA(ptr noundef %0, i32 noundef %i.gk, ptr noundef %3)
  br label %bb.ef

uriLowercaseMallocA.exit243:                      ; preds = %._crit_edge.i241, %bb.af
  %i.mf = phi ptr [ %i.me, %._crit_edge.i241 ], [ %i.gt, %bb.af ]
  %i.mg = phi ptr [ %i.lj, %._crit_edge.i241 ], [ %i.go, %bb.af ]
  %i.mh = or disjoint i32 %i.gk, 4                ; 2 uses
  store i32 %i.mh, ptr %i.a, align 4, !tbaa !8
  br label %uriLowercaseInplaceA.exit232

uriLowercaseInplaceA.exit232.loopexit:            ; preds = %bb.ad, %vec.epilog.middle.block584, %middle.block547
  %.pre = load ptr, ptr %i.gn, align 8, !tbaa !26
  %.pre332 = load ptr, ptr %i.gs, align 8, !tbaa !87
  br label %uriLowercaseInplaceA.exit232

uriLowercaseInplaceA.exit232:                     ; preds = %uriLowercaseInplaceA.exit232.loopexit, %bb.ab, %uriLowercaseMallocA.exit243
  %i.mi = phi i32 [ %i.gk, %uriLowercaseInplaceA.exit232.loopexit ], [ %i.gk, %bb.ab ], [ %i.mh, %uriLowercaseMallocA.exit243 ]
  %i.mj = phi ptr [ %.pre332, %uriLowercaseInplaceA.exit232.loopexit ], [ %i.gt, %bb.ab ], [ %i.mf, %uriLowercaseMallocA.exit243 ]
  %i.mk = phi ptr [ %.pre, %uriLowercaseInplaceA.exit232.loopexit ], [ %i.go, %bb.ab ], [ %i.mg, %uriLowercaseMallocA.exit243 ]
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.mk, ptr %i.ml, align 8, !tbaa !20
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.mj, ptr %i.mm, align 8, !tbaa !84
  br label %uriContainsUglyPercentEncodingA.exit

bb.aj:                                            ; preds = %bb.z
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !20 ; 2 uses
  %.not178 = icmp eq ptr %i.mo, null
  br i1 %.not178, label %uriContainsUglyPercentEncodingA.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.mp = load ptr, ptr %i.gm, align 8, !tbaa !27
  %i.mq = icmp eq ptr %i.mp, null
  br i1 %i.mq, label %bb.al, label %uriContainsUglyPercentEncodingA.exit

bb.al:                                            ; preds = %bb.ak
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !28
  %i.mt = icmp eq ptr %i.ms, null
  br i1 %i.mt, label %bb.am, label %uriContainsUglyPercentEncodingA.exit

bb.am:                                            ; preds = %bb.al
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !85
  %.not179 = icmp eq i32 %i.mv, 0
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br i1 %.not179, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call fastcc void @uriFixPercentEncodingInplaceA(ptr noundef nonnull %i.mo, ptr noundef %i.mw)
  br label %bb.ar

bb.ao:                                            ; preds = %bb.am
  %i.mx = tail call fastcc i32 @uriFixPercentEncodingMallocA(ptr noundef %i.mn, ptr noundef %i.mw, ptr noundef %3)
  %.not180 = icmp eq i32 %i.mx, 0
  br i1 %.not180, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  tail call fastcc void @uriPreventLeakageA(ptr noundef %0, i32 noundef %i.gk, ptr noundef %3)
  br label %bb.ef

bb.aq:                                            ; preds = %bb.ao
  %i.my = or disjoint i32 %i.gk, 4                ; 2 uses
  store i32 %i.my, ptr %i.a, align 4, !tbaa !8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.an
  %i.mz = phi i32 [ %i.my, %bb.aq ], [ %i.gk, %bb.an ] ; 4 uses
  %i.na = load ptr, ptr %i.mn, align 8, !tbaa !20 ; 30 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !84 ; 3 uses
  %i.nd = icmp ne ptr %i.na, null
  %i.ne = icmp ugt ptr %i.nc, %i.na
  %or.cond16.i244 = and i1 %i.nd, %i.ne
  br i1 %or.cond16.i244, label %iter.check647, label %uriContainsUglyPercentEncodingA.exit

iter.check647:                                    ; preds = %bb.ar
  %i.nf = ptrtoaddr ptr %i.nc to i64
  %i.ng = ptrtoaddr ptr %i.na to i64
  %i.nh = sub i64 %i.nf, %i.ng                    ; 7 uses
  %min.iters.check587 = icmp ult i64 %i.nh, 8
  br i1 %min.iters.check587, label %.preheader.i245.preheader, label %vector.main.loop.iter.check588

vector.main.loop.iter.check588:                   ; preds = %iter.check647
  %min.iters.check589 = icmp ult i64 %i.nh, 16
  br i1 %min.iters.check589, label %vec.epilog.ph651, label %vector.ph590

vector.ph590:                                     ; preds = %vector.main.loop.iter.check588
  %i.ni = and i64 %i.nh, 8
  %n.vec591 = and i64 %i.nh, -16                  ; 4 uses
  %i.nj = getelementptr i8, ptr %i.na, i64 %n.vec591
  br label %vector.body592

vector.body592:                                   ; preds = %pred.store.continue642, %vector.ph590
  %index593 = phi i64 [ 0, %vector.ph590 ], [ %index.next643, %pred.store.continue642 ] ; 17 uses
  %next.gep594 = getelementptr i8, ptr %i.na, i64 %index593 ; 2 uses
  %i.nk = getelementptr i8, ptr %i.na, i64 %index593
  %next.gep595 = getelementptr i8, ptr %i.nk, i64 1
  %i.nl = getelementptr i8, ptr %i.na, i64 %index593
  %next.gep596 = getelementptr i8, ptr %i.nl, i64 2
  %i.nm = getelementptr i8, ptr %i.na, i64 %index593
  %next.gep597 = getelementptr i8, ptr %i.nm, i64 3
  %i.nn = getelementptr i8, ptr %i.na, i64 %index593
  %next.gep598 = getelementptr i8, ptr %i.nn, i64 4
  %i.no = getelementptr i8, ptr %i.na, i64 %index593
  %next.gep599 = getelementptr i8, ptr %i.no, i64 5
  %i.np = getelementptr i8, ptr %i.na, i64 %index593
  %next.gep600 = getelementptr i8, ptr %i.np, i64 6
  %i.nq = getelementptr i8, ptr %i.na, i64 %index593
  %next.gep601 = getelementptr i8, ptr %i.nq, i64 7
  %i.nr = getelementptr i8, ptr %i.na, i64 %index593
  %next.gep602 = getelementptr i8, ptr %i.nr, i64 8
  %i.ns = getelementptr i8, ptr %i.na, i64 %index593
  %next.gep603 = getelementptr i8, ptr %i.ns, i64 9
  %i.nt = getelementptr i8, ptr %i.na, i64 %index593
  %next.gep604 = getelementptr i8, ptr %i.nt, i64 10
  %i.nu = getelementptr i8, ptr %i.na, i64 %index593
  %next.gep605 = getelementptr i8, ptr %i.nu, i64 11
  %i.nv = getelementptr i8, ptr %i.na, i64 %index593
  %next.gep606 = getelementptr i8, ptr %i.nv, i64 12
  %i.nw = getelementptr i8, ptr %i.na, i64 %index593
  %next.gep607 = getelementptr i8, ptr %i.nw, i64 13
  %i.nx = getelementptr i8, ptr %i.na, i64 %index593
  %next.gep608 = getelementptr i8, ptr %i.nx, i64 14
  %i.ny = getelementptr i8, ptr %i.na, i64 %index593
  %next.gep609 = getelementptr i8, ptr %i.ny, i64 15
  %wide.load610 = load <16 x i8>, ptr %next.gep594, align 1, !tbaa !18 ; 17 uses
  %i.nz = add <16 x i8> %wide.load610, splat (i8 -65)
  %i.oa = icmp ult <16 x i8> %i.nz, splat (i8 26) ; 16 uses
  %i.ob = extractelement <16 x i1> %i.oa, i64 0
  br i1 %i.ob, label %pred.store.if611, label %pred.store.continue612

pred.store.if611:                                 ; preds = %vector.body592
  %i.oc = extractelement <16 x i8> %wide.load610, i64 0
end_hunk_2
begin_hunk_3_@uriNormalizeSyntaxEngineA:bb.a
  br i1 %i.pu, label %pred.store.if641, label %pred.store.continue642

pred.store.if641:                                 ; preds = %pred.store.continue640
  %i.pv = extractelement <16 x i8> %wide.load610, i64 15
  %i.pw = or disjoint i8 %i.pv, 32
  store i8 %i.pw, ptr %next.gep609, align 1, !tbaa !18
  br label %pred.store.continue642

pred.store.continue642:                           ; preds = %pred.store.if641, %pred.store.continue640
  %index.next643 = add nuw i64 %index593, 16      ; 2 uses
  %i.px = icmp eq i64 %index.next643, %n.vec591
  br i1 %i.px, label %middle.block644, label %vector.body592, !llvm.loop !73

middle.block644:                                  ; preds = %pred.store.continue642
  %cmp.n645 = icmp eq i64 %i.nh, %n.vec591
  br i1 %cmp.n645, label %uriContainsUglyPercentEncodingA.exit, label %vec.epilog.iter.check649

vec.epilog.iter.check649:                         ; preds = %middle.block644
  %min.epilog.iters.check650.not.not = icmp eq i64 %i.ni, 0
  br i1 %min.epilog.iters.check650.not.not, label %.preheader.i245.preheader, label %vec.epilog.ph651, !prof !86

vec.epilog.ph651:                                 ; preds = %vector.main.loop.iter.check588, %vec.epilog.iter.check649
  %vec.epilog.resume.val646 = phi i64 [ %n.vec591, %vec.epilog.iter.check649 ], [ 0, %vector.main.loop.iter.check588 ]
  %n.vec652 = and i64 %i.nh, -8                   ; 3 uses
  %i.py = getelementptr i8, ptr %i.na, i64 %n.vec652
  br label %vec.epilog.vector.body653

vec.epilog.vector.body653:                        ; preds = %pred.store.continue679, %vec.epilog.ph651
  %index654 = phi i64 [ %vec.epilog.resume.val646, %vec.epilog.ph651 ], [ %index.next680, %pred.store.continue679 ] ; 9 uses
  %next.gep655 = getelementptr i8, ptr %i.na, i64 %index654 ; 2 uses
  %i.pz = getelementptr i8, ptr %i.na, i64 %index654
  %next.gep656 = getelementptr i8, ptr %i.pz, i64 1
  %i.qa = getelementptr i8, ptr %i.na, i64 %index654
  %next.gep657 = getelementptr i8, ptr %i.qa, i64 2
  %i.qb = getelementptr i8, ptr %i.na, i64 %index654
  %next.gep658 = getelementptr i8, ptr %i.qb, i64 3
  %i.qc = getelementptr i8, ptr %i.na, i64 %index654
  %next.gep659 = getelementptr i8, ptr %i.qc, i64 4
  %i.qd = getelementptr i8, ptr %i.na, i64 %index654
  %next.gep660 = getelementptr i8, ptr %i.qd, i64 5
  %i.qe = getelementptr i8, ptr %i.na, i64 %index654
  %next.gep661 = getelementptr i8, ptr %i.qe, i64 6
  %i.qf = getelementptr i8, ptr %i.na, i64 %index654
  %next.gep662 = getelementptr i8, ptr %i.qf, i64 7
  %wide.load663 = load <8 x i8>, ptr %next.gep655, align 1, !tbaa !18 ; 9 uses
  %i.qg = add <8 x i8> %wide.load663, splat (i8 -65)
  %i.qh = icmp ult <8 x i8> %i.qg, splat (i8 26)  ; 8 uses
  %i.qi = extractelement <8 x i1> %i.qh, i64 0
  br i1 %i.qi, label %pred.store.if664, label %pred.store.continue665

pred.store.if664:                                 ; preds = %vec.epilog.vector.body653
  %i.qj = extractelement <8 x i8> %wide.load663, i64 0
  %i.qk = or disjoint i8 %i.qj, 32
  store i8 %i.qk, ptr %next.gep655, align 1, !tbaa !18
  br label %pred.store.continue665

pred.store.continue665:                           ; preds = %pred.store.if664, %vec.epilog.vector.body653
  %i.ql = extractelement <8 x i1> %i.qh, i64 1
  br i1 %i.ql, label %pred.store.if666, label %pred.store.continue667

pred.store.if666:                                 ; preds = %pred.store.continue665
  %i.qm = extractelement <8 x i8> %wide.load663, i64 1
  %i.qn = or disjoint i8 %i.qm, 32
  store i8 %i.qn, ptr %next.gep656, align 1, !tbaa !18
  br label %pred.store.continue667

pred.store.continue667:                           ; preds = %pred.store.if666, %pred.store.continue665
  %i.qo = extractelement <8 x i1> %i.qh, i64 2
  br i1 %i.qo, label %pred.store.if668, label %pred.store.continue669

pred.store.if668:                                 ; preds = %pred.store.continue667
  %i.qp = extractelement <8 x i8> %wide.load663, i64 2
  %i.qq = or disjoint i8 %i.qp, 32
  store i8 %i.qq, ptr %next.gep657, align 1, !tbaa !18
  br label %pred.store.continue669

pred.store.continue669:                           ; preds = %pred.store.if668, %pred.store.continue667
  %i.qr = extractelement <8 x i1> %i.qh, i64 3
  br i1 %i.qr, label %pred.store.if670, label %pred.store.continue671

pred.store.if670:                                 ; preds = %pred.store.continue669
  %i.qs = extractelement <8 x i8> %wide.load663, i64 3
  %i.qt = or disjoint i8 %i.qs, 32
  store i8 %i.qt, ptr %next.gep658, align 1, !tbaa !18
  br label %pred.store.continue671

pred.store.continue671:                           ; preds = %pred.store.if670, %pred.store.continue669
  %i.qu = extractelement <8 x i1> %i.qh, i64 4
  br i1 %i.qu, label %pred.store.if672, label %pred.store.continue673

pred.store.if672:                                 ; preds = %pred.store.continue671
  %i.qv = extractelement <8 x i8> %wide.load663, i64 4
  %i.qw = or disjoint i8 %i.qv, 32
  store i8 %i.qw, ptr %next.gep659, align 1, !tbaa !18
  br label %pred.store.continue673

pred.store.continue673:                           ; preds = %pred.store.if672, %pred.store.continue671
  %i.qx = extractelement <8 x i1> %i.qh, i64 5
  br i1 %i.qx, label %pred.store.if674, label %pred.store.continue675

pred.store.if674:                                 ; preds = %pred.store.continue673
  %i.qy = extractelement <8 x i8> %wide.load663, i64 5
  %i.qz = or disjoint i8 %i.qy, 32
  store i8 %i.qz, ptr %next.gep660, align 1, !tbaa !18
  br label %pred.store.continue675

pred.store.continue675:                           ; preds = %pred.store.if674, %pred.store.continue673
  %i.ra = extractelement <8 x i1> %i.qh, i64 6
  br i1 %i.ra, label %pred.store.if676, label %pred.store.continue677

pred.store.if676:                                 ; preds = %pred.store.continue675
  %i.rb = extractelement <8 x i8> %wide.load663, i64 6
  %i.rc = or disjoint i8 %i.rb, 32
  store i8 %i.rc, ptr %next.gep661, align 1, !tbaa !18
  br label %pred.store.continue677

pred.store.continue677:                           ; preds = %pred.store.if676, %pred.store.continue675
  %i.rd = extractelement <8 x i1> %i.qh, i64 7
  br i1 %i.rd, label %pred.store.if678, label %pred.store.continue679

pred.store.if678:                                 ; preds = %pred.store.continue677
  %i.re = extractelement <8 x i8> %wide.load663, i64 7
  %i.rf = or disjoint i8 %i.re, 32
  store i8 %i.rf, ptr %next.gep662, align 1, !tbaa !18
  br label %pred.store.continue679

pred.store.continue679:                           ; preds = %pred.store.if678, %pred.store.continue677
  %index.next680 = add nuw i64 %index654, 8       ; 2 uses
  %i.rg = icmp eq i64 %index.next680, %n.vec652
  br i1 %i.rg, label %vec.epilog.middle.block681, label %vec.epilog.vector.body653, !llvm.loop !74

vec.epilog.middle.block681:                       ; preds = %pred.store.continue679
  %cmp.n682 = icmp eq i64 %i.nh, %n.vec652
  br i1 %cmp.n682, label %uriContainsUglyPercentEncodingA.exit, label %.preheader.i245.preheader

.preheader.i245.preheader:                        ; preds = %iter.check647, %vec.epilog.iter.check649, %vec.epilog.middle.block681
  %.018.i246.ph = phi ptr [ %i.na, %iter.check647 ], [ %i.nj, %vec.epilog.iter.check649 ], [ %i.py, %vec.epilog.middle.block681 ]
  br label %.preheader.i245

.preheader.i245:                                  ; preds = %.preheader.i245.preheader, %bb.at
  %.018.i246 = phi ptr [ %i.rk, %bb.at ], [ %.018.i246.ph, %.preheader.i245.preheader ] ; 3 uses
  %i.rh = load i8, ptr %.018.i246, align 1, !tbaa !18 ; 2 uses
  %i.ri = add i8 %i.rh, -65
  %or.cond17.i247 = icmp ult i8 %i.ri, 26
  br i1 %or.cond17.i247, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.preheader.i245
  %i.rj = or disjoint i8 %i.rh, 32
  store i8 %i.rj, ptr %.018.i246, align 1, !tbaa !18
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.preheader.i245
  %i.rk = getelementptr inbounds nuw i8, ptr %.018.i246, i64 1 ; 2 uses
  %exitcond.not.i248 = icmp eq ptr %i.rk, %i.nc
  br i1 %exitcond.not.i248, label %uriContainsUglyPercentEncodingA.exit, label %.preheader.i245, !llvm.loop !75

uriContainsUglyPercentEncodingA.exit:             ; preds = %bb.m, %bb.at, %middle.block644, %vec.epilog.middle.block681, %bb.ar, %bb.i, %uriLowercaseInplaceA.exit, %bb.aj, %bb.ak, %bb.al, %uriLowercaseInplaceA.exit232
  %i.rl = phi i32 [ %i.mz, %middle.block644 ], [ %i.mi, %uriLowercaseInplaceA.exit232 ], [ %i.mz, %bb.ar ], [ 0, %bb.i ], [ %i.gk, %uriLowercaseInplaceA.exit ], [ %i.gk, %bb.aj ], [ %i.gk, %bb.ak ], [ %i.gk, %bb.al ], [ %i.mz, %bb.at ], [ %i.mz, %vec.epilog.middle.block681 ], [ 0, %bb.m ] ; 6 uses
  br i1 %.not212, label %bb.az, label %uriContainsUglyPercentEncodingA.exit.thread296

uriContainsUglyPercentEncodingA.exit.thread296.sink.split: ; preds = %bb.h, %bb.n
  %.sink = phi i32 [ %i.ar, %bb.n ], [ %i.u, %bb.h ]
  store i32 %.sink, ptr %2, align 4, !tbaa !8
  br label %uriContainsUglyPercentEncodingA.exit.thread296

uriContainsUglyPercentEncodingA.exit.thread296:   ; preds = %uriContainsUglyPercentEncodingA.exit.thread296.sink.split, %uriContainsUglyPercentEncodingA.exit
  %i.rm = phi i32 [ %i.rl, %uriContainsUglyPercentEncodingA.exit ], [ 0, %uriContainsUglyPercentEncodingA.exit.thread296.sink.split ] ; 4 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !29 ; 4 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !88 ; 3 uses
  %i.rr = icmp ne ptr %i.ro, null
  %i.rs = icmp ugt ptr %i.rq, %i.ro
  %or.cond29.i250 = and i1 %i.rr, %i.rs
  %i.rt = getelementptr inbounds nuw i8, ptr %i.ro, i64 2 ; 2 uses
  %i.ru = icmp ult ptr %i.rt, %i.rq
  %or.cond.i251 = select i1 %or.cond29.i250, i1 %i.ru, i1 false
  br i1 %or.cond.i251, label %.lr.ph.i253, label %uriContainsUglyPercentEncodingA.exit258.thread302

.lr.ph.i253:                                      ; preds = %uriContainsUglyPercentEncodingA.exit.thread296, %bb.ax
  %i.rv = phi ptr [ %i.sm, %bb.ax ], [ %i.rt, %uriContainsUglyPercentEncodingA.exit.thread296 ] ; 2 uses
  %.02132.i254 = phi ptr [ %i.sl, %bb.ax ], [ %i.ro, %uriContainsUglyPercentEncodingA.exit.thread296 ] ; 4 uses
  %i.rw = load i8, ptr %.02132.i254, align 1, !tbaa !18
  %i.rx = icmp eq i8 %i.rw, 37
  br i1 %i.rx, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %.lr.ph.i253
  %i.ry = getelementptr inbounds nuw i8, ptr %.02132.i254, i64 1
  %i.rz = load i8, ptr %i.ry, align 1, !tbaa !18  ; 2 uses
  %i.sa = add i8 %i.rz, -97
  %or.cond30.i255 = icmp ult i8 %i.sa, 6
  br i1 %or.cond30.i255, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.sb = load i8, ptr %i.rv, align 1, !tbaa !18
  %i.sc = add i8 %i.sb, -97
  %or.cond31.i256 = icmp ult i8 %i.sc, 6
  br i1 %or.cond31.i256, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.sd = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.rz) #6
  %i.se = load i8, ptr %i.rv, align 1, !tbaa !18
  %i.sf = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.se) #6
  %i.sg = zext i8 %i.sd to i32
  %i.sh = shl nuw nsw i32 %i.sg, 4
  %i.si = zext i8 %i.sf to i32
  %i.sj = add nuw nsw i32 %i.sh, %i.si
  %i.sk = tail call i32 @uriIsUnreserved(i32 noundef %i.sj) #6
  %.not.i257 = icmp eq i32 %i.sk, 0
  br i1 %.not.i257, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw, %.lr.ph.i253
  %i.sl = getelementptr inbounds nuw i8, ptr %.02132.i254, i64 1
  %i.sm = getelementptr inbounds nuw i8, ptr %.02132.i254, i64 3 ; 2 uses
  %i.sn = icmp ult ptr %i.sm, %i.rq
  br i1 %i.sn, label %.lr.ph.i253, label %uriContainsUglyPercentEncodingA.exit258, !llvm.loop !64

bb.ay:                                            ; preds = %bb.av, %bb.au, %bb.aw
  %i.so = load i32, ptr %2, align 4, !tbaa !8
  %i.sp = or i32 %i.so, 2
  store i32 %i.sp, ptr %2, align 4, !tbaa !8
  br label %uriContainsUglyPercentEncodingA.exit258.thread302

bb.az:                                            ; preds = %uriContainsUglyPercentEncodingA.exit
  %i.sq = and i32 %1, 2
  %.not186 = icmp eq i32 %i.sq, 0
  br i1 %.not186, label %uriContainsUglyPercentEncodingA.exit258.thread300, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.sr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !29 ; 2 uses
  %.not187 = icmp eq ptr %i.ss, null
  br i1 %.not187, label %uriContainsUglyPercentEncodingA.exit258.thread300, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.su = load i32, ptr %i.st, align 4, !tbaa !85
  %.not188 = icmp eq i32 %i.su, 0
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %.not188, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  tail call fastcc void @uriFixPercentEncodingInplaceA(ptr noundef nonnull %i.ss, ptr noundef %i.sv)
  br label %uriContainsUglyPercentEncodingA.exit258.thread300

bb.bd:                                            ; preds = %bb.bb
  %i.sw = tail call fastcc i32 @uriFixPercentEncodingMallocA(ptr noundef %i.sr, ptr noundef %i.sv, ptr noundef %3)
  %.not189 = icmp eq i32 %i.sw, 0
  br i1 %.not189, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  tail call fastcc void @uriPreventLeakageA(ptr noundef %0, i32 noundef %i.rl, ptr noundef %3)
  br label %bb.ef

bb.bf:                                            ; preds = %bb.bd
  %i.sx = or i32 %i.rl, 2                         ; 2 uses
  store i32 %i.sx, ptr %i.a, align 4, !tbaa !8
  br label %uriContainsUglyPercentEncodingA.exit258.thread300

uriContainsUglyPercentEncodingA.exit258:          ; preds = %bb.ax
  br i1 %.not212, label %uriContainsUglyPercentEncodingA.exit258.thread300, label %uriContainsUglyPercentEncodingA.exit258.thread302

uriContainsUglyPercentEncodingA.exit258.thread302: ; preds = %bb.ay, %uriContainsUglyPercentEncodingA.exit.thread296, %uriContainsUglyPercentEncodingA.exit258
  %i.sy = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.0155320 = load ptr, ptr %i.sy, align 8, !tbaa !89 ; 2 uses
  %.not198321 = icmp eq ptr %.0155320, null
  br i1 %.not198321, label %.loopexit316.thread, label %.lr.ph

.lr.ph:                                           ; preds = %uriContainsUglyPercentEncodingA.exit258.thread302, %.loopexit315
  %.0155322 = phi ptr [ %.0155, %.loopexit315 ], [ %.0155320, %uriContainsUglyPercentEncodingA.exit258.thread302 ] ; 3 uses
  %i.sz = load ptr, ptr %.0155322, align 8, !tbaa !31 ; 8 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %.0155322, i64 8
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !32 ; 4 uses
  %i.tc = icmp ne ptr %i.sz, null
  %i.td = icmp ugt ptr %i.tb, %i.sz
  %or.cond213 = select i1 %i.tc, i1 %i.td, i1 false
  br i1 %or.cond213, label %bb.bg, label %.loopexit315

bb.bg:                                            ; preds = %.lr.ph
  %i.te = ptrtoint ptr %i.tb to i64
  %i.tf = ptrtoint ptr %i.sz to i64
  %i.tg = sub i64 %i.te, %i.tf
  switch i64 %i.tg, label %bb.bk [
    i64 1, label %bb.bh
    i64 2, label %bb.bi
  ]

bb.bh:                                            ; preds = %bb.bg
  %i.th = load i8, ptr %i.sz, align 1, !tbaa !18
  %i.ti = icmp eq i8 %i.th, 46
  br i1 %i.ti, label %.thread309, label %bb.bk

bb.bi:                                            ; preds = %bb.bg
  %i.tj = load i8, ptr %i.sz, align 1, !tbaa !18
  %i.tk = icmp eq i8 %i.tj, 46
  br i1 %i.tk, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.tl = getelementptr inbounds nuw i8, ptr %i.sz, i64 1
  %i.tm = load i8, ptr %i.tl, align 1, !tbaa !18
  %i.tn = icmp eq i8 %i.tm, 46
  br i1 %i.tn, label %.thread309, label %bb.bk

bb.bk:                                            ; preds = %bb.bh, %bb.bg, %bb.bj, %bb.bi
  %i.to = getelementptr inbounds nuw i8, ptr %i.sz, i64 2 ; 2 uses
  %i.tp = icmp ult ptr %i.to, %i.tb
  br i1 %i.tp, label %.lr.ph.i262, label %.loopexit315

.lr.ph.i262:                                      ; preds = %bb.bk, %bb.bo
  %i.tq = phi ptr [ %i.uh, %bb.bo ], [ %i.to, %bb.bk ] ; 2 uses
  %.02132.i263 = phi ptr [ %i.ug, %bb.bo ], [ %i.sz, %bb.bk ] ; 4 uses
  %i.tr = load i8, ptr %.02132.i263, align 1, !tbaa !18
  %i.ts = icmp eq i8 %i.tr, 37
  br i1 %i.ts, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %.lr.ph.i262
  %i.tt = getelementptr inbounds nuw i8, ptr %.02132.i263, i64 1
  %i.tu = load i8, ptr %i.tt, align 1, !tbaa !18  ; 2 uses
  %i.tv = add i8 %i.tu, -97
  %or.cond30.i264 = icmp ult i8 %i.tv, 6
  br i1 %or.cond30.i264, label %.thread309, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.tw = load i8, ptr %i.tq, align 1, !tbaa !18
  %i.tx = add i8 %i.tw, -97
  %or.cond31.i265 = icmp ult i8 %i.tx, 6
  br i1 %or.cond31.i265, label %.thread309, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ty = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.tu) #6
  %i.tz = load i8, ptr %i.tq, align 1, !tbaa !18
  %i.ua = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.tz) #6
  %i.ub = zext i8 %i.ty to i32
  %i.uc = shl nuw nsw i32 %i.ub, 4
  %i.ud = zext i8 %i.ua to i32
  %i.ue = add nuw nsw i32 %i.uc, %i.ud
  %i.uf = tail call i32 @uriIsUnreserved(i32 noundef %i.ue) #6
  %.not.i266 = icmp eq i32 %i.uf, 0
  br i1 %.not.i266, label %bb.bo, label %.thread309

bb.bo:                                            ; preds = %bb.bn, %.lr.ph.i262
  %i.ug = getelementptr inbounds nuw i8, ptr %.02132.i263, i64 1
  %i.uh = getelementptr inbounds nuw i8, ptr %.02132.i263, i64 3 ; 2 uses
  %i.ui = icmp ult ptr %i.uh, %i.tb
  br i1 %i.ui, label %.lr.ph.i262, label %.loopexit315, !llvm.loop !64

.thread309:                                       ; preds = %bb.bj, %bb.bh, %bb.bn, %bb.bl, %bb.bm
  %i.uj = load i32, ptr %2, align 4, !tbaa !8
  %i.uk = or i32 %i.uj, 8
  store i32 %i.uk, ptr %2, align 4, !tbaa !8
  br label %.loopexit316.thread

.loopexit315:                                     ; preds = %bb.bo, %.lr.ph, %bb.bk
  %i.ul = getelementptr inbounds nuw i8, ptr %.0155322, i64 16
  %.0155 = load ptr, ptr %i.ul, align 8, !tbaa !89 ; 2 uses
  %.not198 = icmp eq ptr %.0155, null
  br i1 %.not198, label %.loopexit316, label %.lr.ph

uriContainsUglyPercentEncodingA.exit258.thread300: ; preds = %bb.bc, %bb.bf, %bb.ba, %bb.az, %uriContainsUglyPercentEncodingA.exit258
  %i.um = phi i32 [ %i.rl, %bb.bc ], [ %i.sx, %bb.bf ], [ %i.rl, %bb.ba ], [ %i.rl, %bb.az ], [ %i.rm, %uriContainsUglyPercentEncodingA.exit258 ] ; 5 uses
  %i.un = and i32 %1, 8
  %.not191 = icmp eq i32 %i.un, 0
  br i1 %.not191, label %.thread308, label %bb.bp

bb.bp:                                            ; preds = %uriContainsUglyPercentEncodingA.exit258.thread300
  %i.uo = load ptr, ptr %0, align 8, !tbaa !17
  %i.up = icmp eq ptr %i.uo, null
  br i1 %i.up, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ur = load i32, ptr %i.uq, align 8, !tbaa !90
  %.not192 = icmp eq i32 %i.ur, 0
  %i.us = zext i1 %.not192 to i32
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.ut = phi i32 [ 0, %bb.bp ], [ %i.us, %bb.bq ]
  %i.uu = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !33 ; 3 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !85
  %.not193 = icmp eq i32 %i.ux, 0
  %.not194326 = icmp eq ptr %i.uv, null           ; 2 uses
  br i1 %.not193, label %.preheader, label %.preheader314

.preheader314:                                    ; preds = %bb.br
  br i1 %.not194326, label %.loopexit, label %.lr.ph325

.preheader:                                       ; preds = %bb.br
  br i1 %.not194326, label %._crit_edge, label %.lr.ph328

.lr.ph325:                                        ; preds = %.preheader314, %.lr.ph325
  %.0324 = phi ptr [ %i.vb, %.lr.ph325 ], [ %i.uv, %.preheader314 ] ; 3 uses
  %i.uy = load ptr, ptr %.0324, align 8, !tbaa !31
  %i.uz = getelementptr inbounds nuw i8, ptr %.0324, i64 8
  tail call fastcc void @uriFixPercentEncodingInplaceA(ptr noundef %i.uy, ptr noundef %i.uz)
  %i.va = getelementptr inbounds nuw i8, ptr %.0324, i64 16
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !34 ; 2 uses
  %.not196 = icmp eq ptr %i.vb, null
  br i1 %.not196, label %.loopexit, label %.lr.ph325, !llvm.loop !76

.lr.ph328:                                        ; preds = %.preheader, %bb.bt
  %.1327 = phi ptr [ %i.vf, %bb.bt ], [ %i.uv, %.preheader ] ; 3 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %.1327, i64 8
  %i.vd = tail call fastcc i32 @uriFixPercentEncodingMallocA(ptr noundef %.1327, ptr noundef %i.vc, ptr noundef %3)
  %.not195 = icmp eq i32 %i.vd, 0
  br i1 %.not195, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %.lr.ph328
  tail call fastcc void @uriPreventLeakageA(ptr noundef %0, i32 noundef %i.um, ptr noundef %3)
  br label %bb.ef

bb.bt:                                            ; preds = %.lr.ph328
  %i.ve = getelementptr inbounds nuw i8, ptr %.1327, i64 16
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !34 ; 2 uses
  %.not194 = icmp eq ptr %i.vf, null
  br i1 %.not194, label %._crit_edge, label %.lr.ph328, !llvm.loop !77

._crit_edge:                                      ; preds = %bb.bt, %.preheader
  %i.vg = or i32 %i.um, 8                         ; 2 uses
  store i32 %i.vg, ptr %i.a, align 4, !tbaa !8
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph325, %.preheader314, %._crit_edge
  %i.vh = phi i32 [ %i.vg, %._crit_edge ], [ %i.um, %.preheader314 ], [ %i.um, %.lr.ph325 ] ; 3 uses
  %i.vi = load i32, ptr %i.uw, align 4, !tbaa !85
  %i.vj = icmp eq i32 %i.vi, 1
  %i.vk = and i32 %i.vh, 8
  %i.vl = icmp ne i32 %i.vk, 0
  %i.vm = select i1 %i.vj, i1 true, i1 %i.vl
  %i.vn = zext i1 %i.vm to i32
  %i.vo = tail call i32 @uriRemoveDotSegmentsExA(ptr noundef %0, i32 noundef %i.ut, i32 noundef %i.vn, ptr noundef %3) #6
  %.not197 = icmp eq i32 %i.vo, 0
  br i1 %.not197, label %bb.bu, label %.critedge

bb.bu:                                            ; preds = %.loopexit
  tail call fastcc void @uriPreventLeakageA(ptr noundef %0, i32 noundef %i.vh, ptr noundef %3)
  br label %bb.ef

.critedge:                                        ; preds = %.loopexit
  tail call void @uriFixEmptyTrailSegmentA(ptr noundef nonnull %0, ptr noundef %3) #6
  br label %.loopexit316

.loopexit316:                                     ; preds = %.loopexit315, %.critedge
  %i.vp = phi i32 [ %i.vh, %.critedge ], [ %i.rm, %.loopexit315 ] ; 2 uses
  br i1 %.not212, label %.thread308, label %.loopexit316.thread

.loopexit316.thread:                              ; preds = %uriContainsUglyPercentEncodingA.exit258.thread302, %.thread309, %.loopexit316
  %i.vq = phi i32 [ %i.rm, %.thread309 ], [ %i.vp, %.loopexit316 ], [ %i.rm, %uriContainsUglyPercentEncodingA.exit258.thread302 ]
  %i.vr = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !35 ; 4 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.vu = load ptr, ptr %i.vt, align 8, !tbaa !91 ; 3 uses
  %i.vv = icmp ne ptr %i.vs, null
  %i.vw = icmp ugt ptr %i.vu, %i.vs
  %or.cond29.i268 = and i1 %i.vv, %i.vw
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vs, i64 2 ; 2 uses
  %i.vy = icmp ult ptr %i.vx, %i.vu
  %or.cond.i269 = select i1 %or.cond29.i268, i1 %i.vy, i1 false
  br i1 %or.cond.i269, label %.lr.ph.i271, label %uriContainsUglyPercentEncodingA.exit276

.lr.ph.i271:                                      ; preds = %.loopexit316.thread, %bb.by
  %i.vz = phi ptr [ %i.wq, %bb.by ], [ %i.vx, %.loopexit316.thread ] ; 2 uses
  %.02132.i272 = phi ptr [ %i.wp, %bb.by ], [ %i.vs, %.loopexit316.thread ] ; 4 uses
  %i.wa = load i8, ptr %.02132.i272, align 1, !tbaa !18
  %i.wb = icmp eq i8 %i.wa, 37
  br i1 %i.wb, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %.lr.ph.i271
  %i.wc = getelementptr inbounds nuw i8, ptr %.02132.i272, i64 1
  %i.wd = load i8, ptr %i.wc, align 1, !tbaa !18  ; 2 uses
  %i.we = add i8 %i.wd, -97
  %or.cond30.i273 = icmp ult i8 %i.we, 6
  br i1 %or.cond30.i273, label %uriContainsUglyPercentEncodingA.exit276, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.wf = load i8, ptr %i.vz, align 1, !tbaa !18
  %i.wg = add i8 %i.wf, -97
  %or.cond31.i274 = icmp ult i8 %i.wg, 6
  br i1 %or.cond31.i274, label %uriContainsUglyPercentEncodingA.exit276, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.wh = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.wd) #6
  %i.wi = load i8, ptr %i.vz, align 1, !tbaa !18
  %i.wj = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.wi) #6
  %i.wk = zext i8 %i.wh to i32
  %i.wl = shl nuw nsw i32 %i.wk, 4
  %i.wm = zext i8 %i.wj to i32
  %i.wn = add nuw nsw i32 %i.wl, %i.wm
  %i.wo = tail call i32 @uriIsUnreserved(i32 noundef %i.wn) #6
  %.not.i275 = icmp eq i32 %i.wo, 0
  br i1 %.not.i275, label %bb.by, label %uriContainsUglyPercentEncodingA.exit276

bb.by:                                            ; preds = %bb.bx, %.lr.ph.i271
  %i.wp = getelementptr inbounds nuw i8, ptr %.02132.i272, i64 1
  %i.wq = getelementptr inbounds nuw i8, ptr %.02132.i272, i64 3 ; 2 uses
  %i.wr = icmp ult ptr %i.wq, %i.vu
  br i1 %i.wr, label %.lr.ph.i271, label %uriContainsUglyPercentEncodingA.exit276, !llvm.loop !64

uriContainsUglyPercentEncodingA.exit276:          ; preds = %bb.bv, %bb.bw, %bb.bx, %bb.by, %.loopexit316.thread
  %.not208 = phi i1 [ true, %.loopexit316.thread ], [ false, %bb.bx ], [ true, %bb.by ], [ false, %bb.bv ], [ false, %bb.bw ]
  %i.ws = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !36 ; 4 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !92 ; 3 uses
  %i.ww = icmp ne ptr %i.wt, null
  %i.wx = icmp ugt ptr %i.wv, %i.wt
  %or.cond29.i277 = and i1 %i.ww, %i.wx
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wt, i64 2 ; 2 uses
  %i.wz = icmp ult ptr %i.wy, %i.wv
  %or.cond.i278 = select i1 %or.cond29.i277, i1 %i.wz, i1 false
  br i1 %or.cond.i278, label %.lr.ph.i280, label %uriContainsUglyPercentEncodingA.exit285

.lr.ph.i280:                                      ; preds = %uriContainsUglyPercentEncodingA.exit276, %bb.cc
  %i.xa = phi ptr [ %i.xr, %bb.cc ], [ %i.wy, %uriContainsUglyPercentEncodingA.exit276 ] ; 2 uses
  %.02132.i281 = phi ptr [ %i.xq, %bb.cc ], [ %i.wt, %uriContainsUglyPercentEncodingA.exit276 ] ; 4 uses
  %i.xb = load i8, ptr %.02132.i281, align 1, !tbaa !18
  %i.xc = icmp eq i8 %i.xb, 37
  br i1 %i.xc, label %bb.bz, label %bb.cc

bb.bz:                                            ; preds = %.lr.ph.i280
  %i.xd = getelementptr inbounds nuw i8, ptr %.02132.i281, i64 1
  %i.xe = load i8, ptr %i.xd, align 1, !tbaa !18  ; 2 uses
  %i.xf = add i8 %i.xe, -97
  %or.cond30.i282 = icmp ult i8 %i.xf, 6
  br i1 %or.cond30.i282, label %uriContainsUglyPercentEncodingA.exit285, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.xg = load i8, ptr %i.xa, align 1, !tbaa !18
  %i.xh = add i8 %i.xg, -97
  %or.cond31.i283 = icmp ult i8 %i.xh, 6
  br i1 %or.cond31.i283, label %uriContainsUglyPercentEncodingA.exit285, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.xi = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.xe) #6
  %i.xj = load i8, ptr %i.xa, align 1, !tbaa !18
  %i.xk = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.xj) #6
  %i.xl = zext i8 %i.xi to i32
  %i.xm = shl nuw nsw i32 %i.xl, 4
  %i.xn = zext i8 %i.xk to i32
  %i.xo = add nuw nsw i32 %i.xm, %i.xn
  %i.xp = tail call i32 @uriIsUnreserved(i32 noundef %i.xo) #6
  %.not.i284 = icmp eq i32 %i.xp, 0
  br i1 %.not.i284, label %bb.cc, label %uriContainsUglyPercentEncodingA.exit285

bb.cc:                                            ; preds = %bb.cb, %.lr.ph.i280
  %i.xq = getelementptr inbounds nuw i8, ptr %.02132.i281, i64 1
  %i.xr = getelementptr inbounds nuw i8, ptr %.02132.i281, i64 3 ; 2 uses
  %i.xs = icmp ult ptr %i.xr, %i.wv
  br i1 %i.xs, label %.lr.ph.i280, label %uriContainsUglyPercentEncodingA.exit285, !llvm.loop !64

uriContainsUglyPercentEncodingA.exit285:          ; preds = %bb.bz, %bb.ca, %bb.cb, %bb.cc, %uriContainsUglyPercentEncodingA.exit276
  %.not209 = phi i1 [ true, %uriContainsUglyPercentEncodingA.exit276 ], [ false, %bb.cb ], [ true, %bb.cc ], [ false, %bb.bz ], [ false, %bb.ca ]
  br i1 %.not208, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %uriContainsUglyPercentEncodingA.exit285
  %i.xt = load i32, ptr %2, align 4, !tbaa !8
  %i.xu = or i32 %i.xt, 16
  store i32 %i.xu, ptr %2, align 4, !tbaa !8
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %uriContainsUglyPercentEncodingA.exit285
  br i1 %.not209, label %bb.cs, label %.thread311

.thread311:                                       ; preds = %bb.ce
  %i.xv = load i32, ptr %2, align 4, !tbaa !8
  %i.xw = or i32 %i.xv, 32
  store i32 %i.xw, ptr %2, align 4, !tbaa !8
  br label %bb.ef

.thread308:                                       ; preds = %uriContainsUglyPercentEncodingA.exit258.thread300, %.loopexit316
  %i.xx = phi i32 [ %i.um, %uriContainsUglyPercentEncodingA.exit258.thread300 ], [ %i.vp, %.loopexit316 ] ; 5 uses
  %i.xy = and i32 %1, 16
  %.not200 = icmp eq i32 %i.xy, 0
  br i1 %.not200, label %bb.cl, label %bb.cf

bb.cf:                                            ; preds = %.thread308
  %i.xz = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ya = load ptr, ptr %i.xz, align 8, !tbaa !35 ; 2 uses
  %.not201 = icmp eq ptr %i.ya, null
  br i1 %.not201, label %bb.cl, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.yb = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.yc = load i32, ptr %i.yb, align 4, !tbaa !85
  %.not202 = icmp eq i32 %i.yc, 0
  %i.yd = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  br i1 %.not202, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  tail call fastcc void @uriFixPercentEncodingInplaceA(ptr noundef nonnull %i.ya, ptr noundef %i.yd)
  br label %bb.cl

bb.ci:                                            ; preds = %bb.cg
  %i.ye = tail call fastcc i32 @uriFixPercentEncodingMallocA(ptr noundef %i.xz, ptr noundef %i.yd, ptr noundef %3)
  %.not203 = icmp eq i32 %i.ye, 0
  br i1 %.not203, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  tail call fastcc void @uriPreventLeakageA(ptr noundef %0, i32 noundef %i.xx, ptr noundef %3)
  br label %bb.ef

bb.ck:                                            ; preds = %bb.ci
  %i.yf = or i32 %i.xx, 16                        ; 2 uses
  store i32 %i.yf, ptr %i.a, align 4, !tbaa !8
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ch, %bb.ck, %bb.cf, %.thread308
  %i.yg = phi i32 [ %i.xx, %bb.ch ], [ %i.yf, %bb.ck ], [ %i.xx, %bb.cf ], [ %i.xx, %.thread308 ] ; 5 uses
  %i.yh = and i32 %1, 32
  %.not204 = icmp eq i32 %i.yh, 0
  br i1 %.not204, label %.thread310, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.yi = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.yj = load ptr, ptr %i.yi, align 8, !tbaa !36 ; 2 uses
  %.not205 = icmp eq ptr %i.yj, null
  br i1 %.not205, label %.thread310, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.yk = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.yl = load i32, ptr %i.yk, align 4, !tbaa !85
  %.not206 = icmp eq i32 %i.yl, 0
  %i.ym = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  br i1 %.not206, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  tail call fastcc void @uriFixPercentEncodingInplaceA(ptr noundef nonnull %i.yj, ptr noundef %i.ym)
  br label %.thread310

bb.cp:                                            ; preds = %bb.cn
  %i.yn = tail call fastcc i32 @uriFixPercentEncodingMallocA(ptr noundef %i.yi, ptr noundef %i.ym, ptr noundef %3)
  %.not207 = icmp eq i32 %i.yn, 0
  br i1 %.not207, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  tail call fastcc void @uriPreventLeakageA(ptr noundef %0, i32 noundef %i.yg, ptr noundef %3)
  br label %bb.ef

bb.cr:                                            ; preds = %bb.cp
  %i.yo = or i32 %i.yg, 32                        ; 2 uses
  store i32 %i.yo, ptr %i.a, align 4, !tbaa !8
  br label %.thread310

bb.cs:                                            ; preds = %bb.ce
  br i1 %.not212, label %.thread310, label %bb.ef

.thread310:                                       ; preds = %bb.co, %bb.cr, %bb.cm, %bb.cl, %bb.cs
  %i.yp = phi i32 [ %i.yg, %bb.co ], [ %i.yo, %bb.cr ], [ %i.yg, %bb.cm ], [ %i.yg, %bb.cl ], [ %i.vq, %bb.cs ] ; 5 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.yr = load i32, ptr %i.yq, align 4, !tbaa !85
  %.not210 = icmp eq i32 %i.yr, 0
  br i1 %.not210, label %bb.ct, label %bb.ef

bb.ct:                                            ; preds = %.thread310
  %i.ys = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !33 ; 2 uses
  %i.yu = and i32 %i.yp, 1
  %i.yv = icmp eq i32 %i.yu, 0
  br i1 %i.yv, label %bb.cu, label %bb.cx

bb.cu:                                            ; preds = %bb.ct
  %i.yw = load ptr, ptr %0, align 8, !tbaa !37    ; 3 uses
  %.not.i.i = icmp eq ptr %i.yw, null
  br i1 %.not.i.i, label %bb.cx, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.yx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.yy = load ptr, ptr %i.yx, align 8, !tbaa !38 ; 2 uses
  %i.yz = icmp ugt ptr %i.yy, %i.yw
  br i1 %i.yz, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.za = ptrtoint ptr %i.yy to i64
  %i.zb = ptrtoint ptr %i.yw to i64
  %i.zc = sub i64 %i.za, %i.zb
  %sext.i.i = shl i64 %i.zc, 32
  %i.zd = ashr exact i64 %sext.i.i, 32            ; 3 uses
  %i.ze = load ptr, ptr %3, align 8, !tbaa !25
  %i.zf = tail call ptr %i.ze(ptr noundef nonnull %3, i64 noundef %i.zd) #6, !inline_history !78 ; 4 uses
  %i.zg = icmp eq ptr %i.zf, null
  br i1 %i.zg, label %bb.ee, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.cw
  %i.zh = load ptr, ptr %0, align 8, !tbaa !37
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.zf, ptr align 1 %i.zh, i64 %i.zd, i1 false)
  store ptr %i.zf, ptr %0, align 8, !tbaa !37
  %i.zi = getelementptr inbounds i8, ptr %i.zf, i64 %i.zd
  store ptr %i.zi, ptr %i.yx, align 8, !tbaa !38
  %i.zj = or disjoint i32 %i.yp, 1                ; 2 uses
  store i32 %i.zj, ptr %i.a, align 4, !tbaa !8
  br label %bb.cx

bb.cx:                                            ; preds = %.thread.i.i, %bb.cv, %bb.cu, %bb.ct
  %i.zk = phi i32 [ %i.zj, %.thread.i.i ], [ %i.yp, %bb.cv ], [ %i.yp, %bb.cu ], [ %i.yp, %bb.ct ] ; 5 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.zm = and i32 %i.zk, 2
  %i.zn = icmp eq i32 %i.zm, 0
  br i1 %i.zn, label %bb.cy, label %bb.db

bb.cy:                                            ; preds = %bb.cx
  %i.zo = load ptr, ptr %i.zl, align 8, !tbaa !37 ; 3 uses
  %.not.i80.i = icmp eq ptr %i.zo, null
  br i1 %.not.i80.i, label %bb.db, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.zp = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.zq = load ptr, ptr %i.zp, align 8, !tbaa !38 ; 2 uses
  %i.zr = icmp ugt ptr %i.zq, %i.zo
  br i1 %i.zr, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.zs = ptrtoint ptr %i.zq to i64
  %i.zt = ptrtoint ptr %i.zo to i64
  %i.zu = sub i64 %i.zs, %i.zt
  %sext.i81.i = shl i64 %i.zu, 32
  %i.zv = ashr exact i64 %sext.i81.i, 32          ; 3 uses
  %i.zw = load ptr, ptr %3, align 8, !tbaa !25
  %i.zx = tail call ptr %i.zw(ptr noundef nonnull %3, i64 noundef %i.zv) #6, !inline_history !78 ; 4 uses
  %i.zy = icmp eq ptr %i.zx, null
  br i1 %i.zy, label %bb.ee, label %.thread.i82.i

.thread.i82.i:                                    ; preds = %bb.da
  %i.zz = load ptr, ptr %i.zl, align 8, !tbaa !37
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.zx, ptr align 1 %i.zz, i64 %i.zv, i1 false)
  store ptr %i.zx, ptr %i.zl, align 8, !tbaa !37
  %i.aaa = getelementptr inbounds i8, ptr %i.zx, i64 %i.zv
  store ptr %i.aaa, ptr %i.zp, align 8, !tbaa !38
  %i.aab = or disjoint i32 %i.zk, 2               ; 2 uses
  store i32 %i.aab, ptr %i.a, align 4, !tbaa !8
  br label %bb.db

bb.db:                                            ; preds = %.thread.i82.i, %bb.cz, %bb.cy, %bb.cx
  %i.aac = phi i32 [ %i.aab, %.thread.i82.i ], [ %i.zk, %bb.cz ], [ %i.zk, %bb.cy ], [ %i.zk, %bb.cx ] ; 5 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.aae = and i32 %i.aac, 16
  %i.aaf = icmp eq i32 %i.aae, 0
  br i1 %i.aaf, label %bb.dc, label %bb.df

bb.dc:                                            ; preds = %bb.db
  %i.aag = load ptr, ptr %i.aad, align 8, !tbaa !37 ; 3 uses
  %.not.i85.i = icmp eq ptr %i.aag, null
  br i1 %.not.i85.i, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.aah = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.aai = load ptr, ptr %i.aah, align 8, !tbaa !38 ; 2 uses
  %i.aaj = icmp ugt ptr %i.aai, %i.aag
  br i1 %i.aaj, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.aak = ptrtoint ptr %i.aai to i64
  %i.aal = ptrtoint ptr %i.aag to i64
  %i.aam = sub i64 %i.aak, %i.aal
  %sext.i86.i = shl i64 %i.aam, 32
  %i.aan = ashr exact i64 %sext.i86.i, 32         ; 3 uses
  %i.aao = load ptr, ptr %3, align 8, !tbaa !25
  %i.aap = tail call ptr %i.aao(ptr noundef nonnull %3, i64 noundef %i.aan) #6, !inline_history !78 ; 4 uses
  %i.aaq = icmp eq ptr %i.aap, null
  br i1 %i.aaq, label %bb.ee, label %.thread.i87.i

.thread.i87.i:                                    ; preds = %bb.de
  %i.aar = load ptr, ptr %i.aad, align 8, !tbaa !37
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aap, ptr align 1 %i.aar, i64 %i.aan, i1 false)
  store ptr %i.aap, ptr %i.aad, align 8, !tbaa !37
  %i.aas = getelementptr inbounds i8, ptr %i.aap, i64 %i.aan
  store ptr %i.aas, ptr %i.aah, align 8, !tbaa !38
  %i.aat = or disjoint i32 %i.aac, 16             ; 2 uses
  store i32 %i.aat, ptr %i.a, align 4, !tbaa !8
  br label %bb.df

bb.df:                                            ; preds = %.thread.i87.i, %bb.dd, %bb.dc, %bb.db
  %i.aau = phi i32 [ %i.aat, %.thread.i87.i ], [ %i.aac, %bb.dd ], [ %i.aac, %bb.dc ], [ %i.aac, %bb.db ] ; 5 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.aaw = and i32 %i.aau, 32
  %i.aax = icmp eq i32 %i.aaw, 0
  br i1 %i.aax, label %bb.dg, label %bb.dj

bb.dg:                                            ; preds = %bb.df
  %i.aay = load ptr, ptr %i.aav, align 8, !tbaa !37 ; 3 uses
  %.not.i90.i = icmp eq ptr %i.aay, null
  br i1 %.not.i90.i, label %bb.dj, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.aaz = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.aba = load ptr, ptr %i.aaz, align 8, !tbaa !38 ; 2 uses
  %i.abb = icmp ugt ptr %i.aba, %i.aay
  br i1 %i.abb, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.abc = ptrtoint ptr %i.aba to i64
  %i.abd = ptrtoint ptr %i.aay to i64
  %i.abe = sub i64 %i.abc, %i.abd
  %sext.i91.i = shl i64 %i.abe, 32
  %i.abf = ashr exact i64 %sext.i91.i, 32         ; 3 uses
  %i.abg = load ptr, ptr %3, align 8, !tbaa !25
  %i.abh = tail call ptr %i.abg(ptr noundef nonnull %3, i64 noundef %i.abf) #6, !inline_history !78 ; 4 uses
  %i.abi = icmp eq ptr %i.abh, null
  br i1 %i.abi, label %bb.ee, label %.thread.i92.i

.thread.i92.i:                                    ; preds = %bb.di
  %i.abj = load ptr, ptr %i.aav, align 8, !tbaa !37
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.abh, ptr align 1 %i.abj, i64 %i.abf, i1 false)
  store ptr %i.abh, ptr %i.aav, align 8, !tbaa !37
  %i.abk = getelementptr inbounds i8, ptr %i.abh, i64 %i.abf
  store ptr %i.abk, ptr %i.aaz, align 8, !tbaa !38
  %i.abl = or disjoint i32 %i.aau, 32             ; 2 uses
  store i32 %i.abl, ptr %i.a, align 4, !tbaa !8
  br label %bb.dj

bb.dj:                                            ; preds = %.thread.i92.i, %bb.dh, %bb.dg, %bb.df
  %i.abm = phi i32 [ %i.abl, %.thread.i92.i ], [ %i.aau, %bb.dh ], [ %i.aau, %bb.dg ], [ %i.aau, %bb.df ]
  %i.abn = and i32 %i.abm, 4
  %i.abo = icmp eq i32 %i.abn, 0
  br i1 %i.abo, label %bb.dk, label %bb.dr

bb.dk:                                            ; preds = %bb.dj
  %i.abp = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.abq = load ptr, ptr %i.abp, align 8, !tbaa !27
  %i.abr = icmp eq ptr %i.abq, null
  br i1 %i.abr, label %bb.dl, label %bb.dr

bb.dl:                                            ; preds = %bb.dk
  %i.abs = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.abt = load ptr, ptr %i.abs, align 8, !tbaa !28
  %i.abu = icmp eq ptr %i.abt, null
  br i1 %i.abu, label %bb.dm, label %bb.dr

bb.dm:                                            ; preds = %bb.dl
  %i.abv = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.abw = load ptr, ptr %i.abv, align 8, !tbaa !26
  %.not68.i = icmp eq ptr %i.abw, null
  br i1 %.not68.i, label %bb.dp, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.abx = call fastcc i32 @uriMakeRangeOwnerA(ptr noundef nonnull %i.a, i32 noundef 4, ptr noundef %i.abv, ptr noundef %3)
  %.not71.i = icmp eq i32 %i.abx, 0
  br i1 %.not71.i, label %bb.ee, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.aby = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.abz = load <2 x ptr>, ptr %i.abv, align 8, !tbaa !21
  store <2 x ptr> %i.abz, ptr %i.aby, align 8, !tbaa !21
  br label %bb.dr

bb.dp:                                            ; preds = %bb.dm
  %i.aca = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.acb = load ptr, ptr %i.aca, align 8, !tbaa !20
  %.not69.i = icmp eq ptr %i.acb, null
  br i1 %.not69.i, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.acc = call fastcc i32 @uriMakeRangeOwnerA(ptr noundef nonnull %i.a, i32 noundef 4, ptr noundef %i.aca, ptr noundef %3)
  %.not70.i = icmp eq i32 %i.acc, 0
  br i1 %.not70.i, label %bb.ee, label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp, %bb.do, %bb.dl, %bb.dk, %bb.dj
  %i.acd = load i32, ptr %i.a, align 4, !tbaa !8  ; 2 uses
  %i.ace = and i32 %i.acd, 8
  %i.acf = icmp eq i32 %i.ace, 0
  br i1 %i.acf, label %.preheader116.i, label %bb.eb

.preheader116.i:                                  ; preds = %bb.dr
  %.not72118.i = icmp eq ptr %i.yt, null
  br i1 %.not72118.i, label %._crit_edge.i287, label %.lr.ph.i286

.lr.ph.i286:                                      ; preds = %.preheader116.i, %bb.ea
  %.062119.i = phi ptr [ %i.adi, %bb.ea ], [ %i.yt, %.preheader116.i ] ; 8 uses
  %i.acg = load ptr, ptr %.062119.i, align 8, !tbaa !37 ; 3 uses
  %.not.i95.i = icmp eq ptr %i.acg, null
  br i1 %.not.i95.i, label %bb.ea, label %bb.ds

bb.ds:                                            ; preds = %.lr.ph.i286
  %i.ach = getelementptr inbounds nuw i8, ptr %.062119.i, i64 8 ; 2 uses
  %i.aci = load ptr, ptr %i.ach, align 8, !tbaa !38 ; 2 uses
  %i.acj = icmp ugt ptr %i.aci, %i.acg
  br i1 %i.acj, label %bb.dt, label %bb.ea

bb.dt:                                            ; preds = %bb.ds
  %i.ack = ptrtoint ptr %i.aci to i64
  %i.acl = ptrtoint ptr %i.acg to i64
  %i.acm = sub i64 %i.ack, %i.acl
  %sext.i96.i = shl i64 %i.acm, 32
  %i.acn = ashr exact i64 %sext.i96.i, 32         ; 3 uses
  %i.aco = load ptr, ptr %3, align 8, !tbaa !25
  %i.acp = tail call ptr %i.aco(ptr noundef nonnull %3, i64 noundef %i.acn) #6, !inline_history !78 ; 4 uses
  %i.acq = icmp eq ptr %i.acp, null
  br i1 %i.acq, label %uriMakeRangeOwnerA.exit98.i, label %.thread.i97.i

.thread.i97.i:                                    ; preds = %bb.dt
  %i.acr = load ptr, ptr %.062119.i, align 8, !tbaa !37
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.acp, ptr align 1 %i.acr, i64 %i.acn, i1 false)
  store ptr %i.acp, ptr %.062119.i, align 8, !tbaa !37
  %i.acs = getelementptr inbounds i8, ptr %i.acp, i64 %i.acn
  store ptr %i.acs, ptr %i.ach, align 8, !tbaa !38
  br label %bb.ea

uriMakeRangeOwnerA.exit98.i:                      ; preds = %bb.dt
  %i.act = load ptr, ptr %i.ys, align 8, !tbaa !33 ; 2 uses
  %.not75120.i = icmp eq ptr %i.act, %.062119.i
  br i1 %.not75120.i, label %.preheader.i288, label %.lr.ph122.i

.lr.ph122.i:                                      ; preds = %uriMakeRangeOwnerA.exit98.i
  %i.acu = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  br label %bb.du

.preheader.i288:                                  ; preds = %bb.dx, %uriMakeRangeOwnerA.exit98.i
  %i.acv = getelementptr inbounds nuw i8, ptr %3, i64 32
  br label %bb.dy

bb.du:                                            ; preds = %bb.dx, %.lr.ph122.i
  %.061121.i = phi ptr [ %i.act, %.lr.ph122.i ], [ %i.acx, %bb.dx ] ; 4 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %.061121.i, i64 16
  %i.acx = load ptr, ptr %i.acw, align 8, !tbaa !34 ; 2 uses
  %i.acy = load ptr, ptr %.061121.i, align 8, !tbaa !31 ; 3 uses
  %.not77.i = icmp eq ptr %i.acy, null
  br i1 %.not77.i, label %bb.dx, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.acz = getelementptr inbounds nuw i8, ptr %.061121.i, i64 8
  %i.ada = load ptr, ptr %i.acz, align 8, !tbaa !32
  %i.adb = icmp ugt ptr %i.ada, %i.acy
  br i1 %i.adb, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.adc = load ptr, ptr %i.acu, align 8, !tbaa !39
  tail call void %i.adc(ptr noundef nonnull %3, ptr noundef nonnull %i.acy) #6, !inline_history !79
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv, %bb.du
  %i.add = load ptr, ptr %i.acu, align 8, !tbaa !39
  tail call void %i.add(ptr noundef nonnull %3, ptr noundef nonnull %.061121.i) #6, !inline_history !79
  %.not75.i = icmp eq ptr %i.acx, %.062119.i
  br i1 %.not75.i, label %.preheader.i288, label %bb.du, !llvm.loop !80

bb.dy:                                            ; preds = %bb.dy, %.preheader.i288
  %.1123.i = phi ptr [ %.062119.i, %.preheader.i288 ], [ %i.adf, %bb.dy ] ; 2 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %.1123.i, i64 16
  %i.adf = load ptr, ptr %i.ade, align 8, !tbaa !34 ; 2 uses
  %i.adg = load ptr, ptr %i.acv, align 8, !tbaa !39
  tail call void %i.adg(ptr noundef nonnull %3, ptr noundef nonnull %.1123.i) #6, !inline_history !79
  %.not76.i = icmp eq ptr %i.adf, null
  br i1 %.not76.i, label %bb.dz, label %bb.dy, !llvm.loop !81

bb.dz:                                            ; preds = %bb.dy
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ys, i8 0, i64 16, i1 false)
  br label %bb.ee

bb.ea:                                            ; preds = %.thread.i97.i, %bb.ds, %.lr.ph.i286
  %i.adh = getelementptr inbounds nuw i8, ptr %.062119.i, i64 16
  %i.adi = load ptr, ptr %i.adh, align 8, !tbaa !34 ; 2 uses
  %.not72.i = icmp eq ptr %i.adi, null
  br i1 %.not72.i, label %._crit_edge.i287, label %.lr.ph.i286, !llvm.loop !82

._crit_edge.i287:                                 ; preds = %bb.ea, %.preheader116.i
  %i.adj = or disjoint i32 %i.acd, 8
  store i32 %i.adj, ptr %i.a, align 4, !tbaa !8
  br label %bb.eb

bb.eb:                                            ; preds = %._crit_edge.i287, %bb.dr
  %i.adk = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.adl = load ptr, ptr %i.adk, align 8, !tbaa !37 ; 3 uses
  %.not.i100.i = icmp eq ptr %i.adl, null
  br i1 %.not.i100.i, label %uriMakeOwnerA.exit, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.adm = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.adn = load ptr, ptr %i.adm, align 8, !tbaa !38 ; 2 uses
  %i.ado = icmp ugt ptr %i.adn, %i.adl
  br i1 %i.ado, label %bb.ed, label %uriMakeOwnerA.exit

bb.ed:                                            ; preds = %bb.ec
  %i.adp = ptrtoint ptr %i.adn to i64
  %i.adq = ptrtoint ptr %i.adl to i64
  %i.adr = sub i64 %i.adp, %i.adq
  %sext.i101.i = shl i64 %i.adr, 32
  %i.ads = ashr exact i64 %sext.i101.i, 32        ; 3 uses
  %i.adt = load ptr, ptr %3, align 8, !tbaa !25
  %i.adu = tail call ptr %i.adt(ptr noundef nonnull %3, i64 noundef %i.ads) #6, !inline_history !78 ; 4 uses
  %i.adv = icmp eq ptr %i.adu, null
  br i1 %i.adv, label %bb.ee, label %.thread.i102.i

.thread.i102.i:                                   ; preds = %bb.ed
  %i.adw = load ptr, ptr %i.adk, align 8, !tbaa !37
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.adu, ptr align 1 %i.adw, i64 %i.ads, i1 false)
  store ptr %i.adu, ptr %i.adk, align 8, !tbaa !37
  %i.adx = getelementptr inbounds i8, ptr %i.adu, i64 %i.ads
  store ptr %i.adx, ptr %i.adm, align 8, !tbaa !38
  br label %uriMakeOwnerA.exit

bb.ee:                                            ; preds = %bb.dz, %bb.dq, %bb.di, %bb.cw, %bb.dn, %bb.de, %bb.da, %bb.ed
  %i.ady = load i32, ptr %i.a, align 4, !tbaa !8
  tail call fastcc void @uriPreventLeakageA(ptr noundef %0, i32 noundef %i.ady, ptr noundef %3)
  br label %bb.ef

uriMakeOwnerA.exit:                               ; preds = %.thread.i102.i, %bb.ec, %bb.eb
  store i32 1, ptr %i.yq, align 4, !tbaa !85
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
  store i32 0, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %uriNormalizeSyntaxMaskRequiredExW.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull readonly align 8 dereferenceable(160) %0, i64 160, i1 false)
  %i.c = call fastcc i32 @uriNormalizeSyntaxEngineW(ptr noundef nonnull %1, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef null) ; 0 uses
  %.pre = load i32, ptr %i.a, align 4, !tbaa !8
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
  store i32 0, ptr %i.a, align 4, !tbaa !8
  %i.b = icmp eq ptr %0, null
  %.not212 = icmp eq ptr %2, null                 ; 6 uses
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %.not212, label %bb.ef, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %2, align 4, !tbaa !8
  br label %bb.ef

bb.d:                                             ; preds = %bb.a
  br i1 %.not212, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.c = icmp eq i32 %1, 0
  br i1 %i.c, label %bb.ef, label %bb.o

bb.f:                                             ; preds = %bb.d
  store i32 0, ptr %2, align 4, !tbaa !8
  %i.d = load ptr, ptr %0, align 8, !tbaa !45     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !113  ; 2 uses
  %i.g = icmp ne ptr %i.d, null
  %i.h = icmp ugt ptr %i.f, %i.d
  %or.cond17.i = and i1 %i.g, %i.h
  br i1 %or.cond17.i, label %.preheader.i, label %uriContainsUppercaseLettersW.exit

.preheader.i:                                     ; preds = %bb.f, %.preheader.i
  %.01219.i = phi ptr [ %i.k, %.preheader.i ], [ %i.d, %bb.f ] ; 2 uses
  %i.i = load i32, ptr %.01219.i, align 4, !tbaa !8
  %i.j = add i32 %i.i, -91
  %or.cond18.i = icmp ult i32 %i.j, -26           ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.01219.i, i64 4 ; 2 uses
  %i.l = icmp ult ptr %i.k, %i.f
  %or.cond = select i1 %or.cond18.i, i1 %i.l, i1 false
  br i1 %or.cond, label %.preheader.i, label %uriContainsUppercaseLettersW.exit, !llvm.loop !93

uriContainsUppercaseLettersW.exit:                ; preds = %.preheader.i, %bb.f
  %.not183 = phi i1 [ true, %bb.f ], [ %or.cond18.i, %.preheader.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !46   ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !114  ; 4 uses
  %i.q = icmp ne ptr %i.n, null
  %i.r = icmp ugt ptr %i.p, %i.n
  %or.cond17.i214 = and i1 %i.q, %i.r             ; 2 uses
  br i1 %or.cond17.i214, label %.preheader.i216, label %uriContainsUppercaseLettersW.exit219

.preheader.i216:                                  ; preds = %uriContainsUppercaseLettersW.exit, %.preheader.i216
  %.01219.i217 = phi ptr [ %i.u, %.preheader.i216 ], [ %i.n, %uriContainsUppercaseLettersW.exit ] ; 2 uses
  %i.s = load i32, ptr %.01219.i217, align 4, !tbaa !8
  %i.t = add i32 %i.s, -91
  %or.cond18.i218 = icmp ult i32 %i.t, -26        ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.01219.i217, i64 4 ; 2 uses
  %i.v = icmp ult ptr %i.u, %i.p
  %or.cond529 = select i1 %or.cond18.i218, i1 %i.v, i1 false
  br i1 %or.cond529, label %.preheader.i216, label %uriContainsUppercaseLettersW.exit219, !llvm.loop !93

uriContainsUppercaseLettersW.exit219:             ; preds = %.preheader.i216, %uriContainsUppercaseLettersW.exit
  %.not184 = phi i1 [ true, %uriContainsUppercaseLettersW.exit ], [ %or.cond18.i218, %.preheader.i216 ]
  br i1 %.not183, label %bb.h, label %bb.g

bb.g:                                             ; preds = %uriContainsUppercaseLettersW.exit219
  store i32 1, ptr %2, align 4, !tbaa !8
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
  %i.aa = load i32, ptr %.02132.i, align 4, !tbaa !8
  %i.ab = icmp eq i32 %i.aa, 37
  br i1 %i.ab, label %bb.j, label %bb.m

bb.j:                                             ; preds = %.lr.ph.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.02132.i, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !8  ; 2 uses
  %i.ae = add i32 %i.ad, -97
  %or.cond30.i = icmp ult i32 %i.ae, 6
  br i1 %or.cond30.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = load i32, ptr %i.z, align 4, !tbaa !8
  %i.ag = add i32 %i.af, -97
  %or.cond31.i = icmp ult i32 %i.ag, 6
  br i1 %or.cond31.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = tail call zeroext i8 @uriHexdigToIntW(i32 noundef %i.ad) #6
  %i.ai = load i32, ptr %i.z, align 4, !tbaa !8
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
  br i1 %i.ar, label %.lr.ph.i, label %uriContainsUglyPercentEncodingW.exit, !llvm.loop !94

bb.n:                                             ; preds = %bb.k, %bb.j, %bb.l
  %i.as = load i32, ptr %2, align 4, !tbaa !8
  %i.at = or i32 %i.as, 4
  br label %uriContainsUglyPercentEncodingW.exit.thread290.sink.split

bb.o:                                             ; preds = %bb.e
  %i.au = and i32 %1, 1
  %.not172 = icmp eq i32 %i.au, 0
  br i1 %.not172, label %uriLowercaseInplaceW.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = load ptr, ptr %0, align 8, !tbaa !45    ; 14 uses
  %.not173 = icmp eq ptr %i.av, null
  br i1 %.not173, label %uriLowercaseInplaceW.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !115
  %.not174 = icmp eq i32 %i.ax, 0
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !47 ; 5 uses
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
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !8 ; 5 uses
  %wide.load414 = load <4 x i32>, ptr %i.br, align 4, !tbaa !8 ; 5 uses
  %i.bs = add <4 x i32> %wide.load, splat (i32 -65)
  %i.bt = add <4 x i32> %wide.load414, splat (i32 -65)
  %i.bu = icmp ult <4 x i32> %i.bs, splat (i32 26) ; 4 uses
  %i.bv = icmp ult <4 x i32> %i.bt, splat (i32 26) ; 4 uses
  %i.bw = extractelement <4 x i1> %i.bu, i64 0
  br i1 %i.bw, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.bx = extractelement <4 x i32> %wide.load, i64 0
  %i.by = or disjoint i32 %i.bx, 32
  store i32 %i.by, ptr %next.gep, align 4, !tbaa !8
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.bz = extractelement <4 x i1> %i.bu, i64 1
  br i1 %i.bz, label %pred.store.if415, label %pred.store.continue416

pred.store.if415:                                 ; preds = %pred.store.continue
  %i.ca = extractelement <4 x i32> %wide.load, i64 1
  %i.cb = or disjoint i32 %i.ca, 32
  store i32 %i.cb, ptr %next.gep407, align 4, !tbaa !8
  br label %pred.store.continue416

pred.store.continue416:                           ; preds = %pred.store.if415, %pred.store.continue
  %i.cc = extractelement <4 x i1> %i.bu, i64 2
  br i1 %i.cc, label %pred.store.if417, label %pred.store.continue418

pred.store.if417:                                 ; preds = %pred.store.continue416
  %i.cd = extractelement <4 x i32> %wide.load, i64 2
  %i.ce = or disjoint i32 %i.cd, 32
  store i32 %i.ce, ptr %next.gep408, align 4, !tbaa !8
  br label %pred.store.continue418

pred.store.continue418:                           ; preds = %pred.store.if417, %pred.store.continue416
  %i.cf = extractelement <4 x i1> %i.bu, i64 3
  br i1 %i.cf, label %pred.store.if419, label %pred.store.continue420

pred.store.if419:                                 ; preds = %pred.store.continue418
  %i.cg = extractelement <4 x i32> %wide.load, i64 3
  %i.ch = or disjoint i32 %i.cg, 32
  store i32 %i.ch, ptr %next.gep409, align 4, !tbaa !8
  br label %pred.store.continue420

pred.store.continue420:                           ; preds = %pred.store.if419, %pred.store.continue418
  %i.ci = extractelement <4 x i1> %i.bv, i64 0
  br i1 %i.ci, label %pred.store.if421, label %pred.store.continue422

pred.store.if421:                                 ; preds = %pred.store.continue420
  %i.cj = extractelement <4 x i32> %wide.load414, i64 0
  %i.ck = or disjoint i32 %i.cj, 32
  store i32 %i.ck, ptr %next.gep410, align 4, !tbaa !8
  br label %pred.store.continue422

pred.store.continue422:                           ; preds = %pred.store.if421, %pred.store.continue420
  %i.cl = extractelement <4 x i1> %i.bv, i64 1
  br i1 %i.cl, label %pred.store.if423, label %pred.store.continue424

pred.store.if423:                                 ; preds = %pred.store.continue422
  %i.cm = extractelement <4 x i32> %wide.load414, i64 1
  %i.cn = or disjoint i32 %i.cm, 32
  store i32 %i.cn, ptr %next.gep411, align 4, !tbaa !8
  br label %pred.store.continue424

pred.store.continue424:                           ; preds = %pred.store.if423, %pred.store.continue422
  %i.co = extractelement <4 x i1> %i.bv, i64 2
  br i1 %i.co, label %pred.store.if425, label %pred.store.continue426

pred.store.if425:                                 ; preds = %pred.store.continue424
  %i.cp = extractelement <4 x i32> %wide.load414, i64 2
  %i.cq = or disjoint i32 %i.cp, 32
  store i32 %i.cq, ptr %next.gep412, align 4, !tbaa !8
  br label %pred.store.continue426

pred.store.continue426:                           ; preds = %pred.store.if425, %pred.store.continue424
  %i.cr = extractelement <4 x i1> %i.bv, i64 3
  br i1 %i.cr, label %pred.store.if427, label %pred.store.continue428

pred.store.if427:                                 ; preds = %pred.store.continue426
  %i.cs = extractelement <4 x i32> %wide.load414, i64 3
  %i.ct = or disjoint i32 %i.cs, 32
  store i32 %i.ct, ptr %next.gep413, align 4, !tbaa !8
  br label %pred.store.continue428

pred.store.continue428:                           ; preds = %pred.store.if427, %pred.store.continue426
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !95

middle.block:                                     ; preds = %pred.store.continue428
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br i1 %cmp.n, label %uriLowercaseInplaceW.exit, label %.preheader.i220.preheader538

.preheader.i220.preheader538:                     ; preds = %.preheader.i220.preheader, %middle.block
  %.018.i.ph = phi ptr [ %i.av, %.preheader.i220.preheader ], [ %i.bi, %middle.block ]
  br label %.preheader.i220

.preheader.i220:                                  ; preds = %.preheader.i220.preheader538, %bb.t
  %.018.i = phi ptr [ %i.cy, %bb.t ], [ %.018.i.ph, %.preheader.i220.preheader538 ] ; 3 uses
  %i.cv = load i32, ptr %.018.i, align 4, !tbaa !8 ; 2 uses
  %i.cw = add i32 %i.cv, -65
  %or.cond17.i221 = icmp ult i32 %i.cw, 26
  br i1 %or.cond17.i221, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.preheader.i220
  %i.cx = or disjoint i32 %i.cv, 32
  store i32 %i.cx, ptr %.018.i, align 4, !tbaa !8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.preheader.i220
  %i.cy = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.cz = icmp ult ptr %i.cy, %i.az
  br i1 %i.cz, label %.preheader.i220, label %uriLowercaseInplaceW.exit, !llvm.loop !96

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
  %i.di = load ptr, ptr %3, align 8, !tbaa !25
  %i.dj = and i64 %i.de, 2147483647               ; 6 uses
  %i.dk = shl nuw nsw i64 %i.dj, 2
  %i.dl = tail call ptr %i.di(ptr noundef nonnull %3, i64 noundef %i.dk) #6, !inline_history !97 ; 8 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %bb.y, label %.lr.ph.i222

.lr.ph.i222:                                      ; preds = %bb.x
  %i.dn = ptrtoaddr ptr %i.dl to i64
  %i.do = load ptr, ptr %0, align 8, !tbaa !47    ; 5 uses
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
  %wide.load435 = load <4 x i32>, ptr %i.dr, align 4, !tbaa !8 ; 3 uses
  %wide.load436 = load <4 x i32>, ptr %i.ds, align 4, !tbaa !8 ; 3 uses
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
  store <4 x i32> %i.dz, ptr %i.eb, align 4, !tbaa !8
  store <4 x i32> %i.ea, ptr %i.ec, align 4, !tbaa !8
  %index.next437 = add nuw i64 %index434, 8       ; 2 uses
  %i.ed = icmp eq i64 %index.next437, %n.vec432
  br i1 %i.ed, label %middle.block438, label %vector.body433, !llvm.loop !98

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
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !8  ; 3 uses
  %i.eh = add i32 %i.eg, -65
  %or.cond.i223.prol = icmp ult i32 %i.eh, 26
  %i.ei = or disjoint i32 %i.eg, 32
  %spec.select.i.prol = select i1 %or.cond.i223.prol, i32 %i.ei, i32 %i.eg
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv.i.ph
  store i32 %spec.select.i.prol, ptr %i.ej, align 4, !tbaa !8
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %scalar.ph429.prol.loopexit

scalar.ph429.prol.loopexit:                       ; preds = %scalar.ph429.prol, %scalar.ph429.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph429.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph429.prol ]
  %i.ek = icmp eq i64 %i.dj, %.neg
  br i1 %i.ek, label %._crit_edge.i, label %scalar.ph429

scalar.ph429:                                     ; preds = %scalar.ph429.prol.loopexit, %scalar.ph429
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph429 ], [ %indvars.iv.i.unr, %scalar.ph429.prol.loopexit ] ; 4 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv.i
  %i.em = load i32, ptr %i.el, align 4, !tbaa !8  ; 3 uses
  %i.en = add i32 %i.em, -65
  %or.cond.i223 = icmp ult i32 %i.en, 26
  %i.eo = or disjoint i32 %i.em, 32
  %spec.select.i = select i1 %or.cond.i223, i32 %i.eo, i32 %i.em
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv.i
  store i32 %spec.select.i, ptr %i.ep, align 4, !tbaa !8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv.next.i
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !8  ; 3 uses
  %i.es = add i32 %i.er, -65
  %or.cond.i223.1 = icmp ult i32 %i.es, 26
  %i.et = or disjoint i32 %i.er, 32
  %spec.select.i.1 = select i1 %or.cond.i223.1, i32 %i.et, i32 %i.er
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv.next.i
  store i32 %spec.select.i.1, ptr %i.eu, align 4, !tbaa !8
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %i.dj
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph429, !llvm.loop !99

._crit_edge.i:                                    ; preds = %scalar.ph429.prol.loopexit, %scalar.ph429, %middle.block438
  store ptr %i.dl, ptr %0, align 8, !tbaa !47
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.dj
  store ptr %i.ev, ptr %i.ay, align 8, !tbaa !47
  br label %uriLowercaseMallocW.exit

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.u
  tail call fastcc void @uriPreventLeakageW(ptr noundef %0, i32 noundef 0, ptr noundef %3)
  br label %bb.ef

uriLowercaseMallocW.exit:                         ; preds = %._crit_edge.i, %bb.v
  store i32 1, ptr %i.a, align 4, !tbaa !8
  br label %uriLowercaseInplaceW.exit

uriLowercaseInplaceW.exit:                        ; preds = %bb.t, %middle.block, %bb.r, %uriLowercaseMallocW.exit, %bb.p, %bb.o
  %i.ew = phi i32 [ 0, %bb.o ], [ 0, %bb.r ], [ 1, %uriLowercaseMallocW.exit ], [ 0, %bb.p ], [ 0, %middle.block ], [ 0, %bb.t ] ; 12 uses
  %i.ex = and i32 %1, 4
  %.not176 = icmp eq i32 %i.ex, 0
  br i1 %.not176, label %uriContainsUglyPercentEncodingW.exit, label %bb.z

bb.z:                                             ; preds = %uriLowercaseInplaceW.exit
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !48 ; 18 uses
  %.not177 = icmp eq ptr %i.fa, null
  br i1 %.not177, label %bb.aj, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !115
  %.not181 = icmp eq i32 %i.fc, 0
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !47 ; 9 uses
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
  %wide.load455 = load <4 x i32>, ptr %next.gep447, align 4, !tbaa !8 ; 5 uses
  %wide.load456 = load <4 x i32>, ptr %i.fw, align 4, !tbaa !8 ; 5 uses
  %i.fx = add <4 x i32> %wide.load455, splat (i32 -65)
  %i.fy = add <4 x i32> %wide.load456, splat (i32 -65)
  %i.fz = icmp ult <4 x i32> %i.fx, splat (i32 26) ; 4 uses
  %i.ga = icmp ult <4 x i32> %i.fy, splat (i32 26) ; 4 uses
  %i.gb = extractelement <4 x i1> %i.fz, i64 0
  br i1 %i.gb, label %pred.store.if457, label %pred.store.continue458

pred.store.if457:                                 ; preds = %vector.body445
  %i.gc = extractelement <4 x i32> %wide.load455, i64 0
  %i.gd = or disjoint i32 %i.gc, 32
  store i32 %i.gd, ptr %next.gep447, align 4, !tbaa !8
  br label %pred.store.continue458

pred.store.continue458:                           ; preds = %pred.store.if457, %vector.body445
  %i.ge = extractelement <4 x i1> %i.fz, i64 1
  br i1 %i.ge, label %pred.store.if459, label %pred.store.continue460

pred.store.if459:                                 ; preds = %pred.store.continue458
  %i.gf = extractelement <4 x i32> %wide.load455, i64 1
  %i.gg = or disjoint i32 %i.gf, 32
  store i32 %i.gg, ptr %next.gep448, align 4, !tbaa !8
  br label %pred.store.continue460

pred.store.continue460:                           ; preds = %pred.store.if459, %pred.store.continue458
  %i.gh = extractelement <4 x i1> %i.fz, i64 2
  br i1 %i.gh, label %pred.store.if461, label %pred.store.continue462

pred.store.if461:                                 ; preds = %pred.store.continue460
  %i.gi = extractelement <4 x i32> %wide.load455, i64 2
  %i.gj = or disjoint i32 %i.gi, 32
  store i32 %i.gj, ptr %next.gep449, align 4, !tbaa !8
  br label %pred.store.continue462

pred.store.continue462:                           ; preds = %pred.store.if461, %pred.store.continue460
  %i.gk = extractelement <4 x i1> %i.fz, i64 3
  br i1 %i.gk, label %pred.store.if463, label %pred.store.continue464

pred.store.if463:                                 ; preds = %pred.store.continue462
  %i.gl = extractelement <4 x i32> %wide.load455, i64 3
  %i.gm = or disjoint i32 %i.gl, 32
  store i32 %i.gm, ptr %next.gep450, align 4, !tbaa !8
  br label %pred.store.continue464

pred.store.continue464:                           ; preds = %pred.store.if463, %pred.store.continue462
  %i.gn = extractelement <4 x i1> %i.ga, i64 0
  br i1 %i.gn, label %pred.store.if465, label %pred.store.continue466

pred.store.if465:                                 ; preds = %pred.store.continue464
  %i.go = extractelement <4 x i32> %wide.load456, i64 0
  %i.gp = or disjoint i32 %i.go, 32
  store i32 %i.gp, ptr %next.gep451, align 4, !tbaa !8
  br label %pred.store.continue466

pred.store.continue466:                           ; preds = %pred.store.if465, %pred.store.continue464
  %i.gq = extractelement <4 x i1> %i.ga, i64 1
  br i1 %i.gq, label %pred.store.if467, label %pred.store.continue468

pred.store.if467:                                 ; preds = %pred.store.continue466
  %i.gr = extractelement <4 x i32> %wide.load456, i64 1
  %i.gs = or disjoint i32 %i.gr, 32
  store i32 %i.gs, ptr %next.gep452, align 4, !tbaa !8
  br label %pred.store.continue468

pred.store.continue468:                           ; preds = %pred.store.if467, %pred.store.continue466
  %i.gt = extractelement <4 x i1> %i.ga, i64 2
  br i1 %i.gt, label %pred.store.if469, label %pred.store.continue470

pred.store.if469:                                 ; preds = %pred.store.continue468
  %i.gu = extractelement <4 x i32> %wide.load456, i64 2
  %i.gv = or disjoint i32 %i.gu, 32
  store i32 %i.gv, ptr %next.gep453, align 4, !tbaa !8
  br label %pred.store.continue470

pred.store.continue470:                           ; preds = %pred.store.if469, %pred.store.continue468
  %i.gw = extractelement <4 x i1> %i.ga, i64 3
  br i1 %i.gw, label %pred.store.if471, label %pred.store.continue472

pred.store.if471:                                 ; preds = %pred.store.continue470
  %i.gx = extractelement <4 x i32> %wide.load456, i64 3
  %i.gy = or disjoint i32 %i.gx, 32
  store i32 %i.gy, ptr %next.gep454, align 4, !tbaa !8
  br label %pred.store.continue472

pred.store.continue472:                           ; preds = %pred.store.if471, %pred.store.continue470
  %index.next473 = add nuw i64 %index446, 8       ; 2 uses
  %i.gz = icmp eq i64 %index.next473, %n.vec444
  br i1 %i.gz, label %middle.block474, label %vector.body445, !llvm.loop !100

middle.block474:                                  ; preds = %pred.store.continue472
  %cmp.n475 = icmp eq i64 %i.fl, %n.vec444
  br i1 %cmp.n475, label %uriLowercaseInplaceW.exit228, label %.preheader.i225.preheader537

.preheader.i225.preheader537:                     ; preds = %.preheader.i225.preheader, %middle.block474
  %.018.i226.ph = phi ptr [ %i.fa, %.preheader.i225.preheader ], [ %i.fn, %middle.block474 ]
  br label %.preheader.i225

.preheader.i225:                                  ; preds = %.preheader.i225.preheader537, %bb.ad
  %.018.i226 = phi ptr [ %i.hd, %bb.ad ], [ %.018.i226.ph, %.preheader.i225.preheader537 ] ; 3 uses
  %i.ha = load i32, ptr %.018.i226, align 4, !tbaa !8 ; 2 uses
  %i.hb = add i32 %i.ha, -65
  %or.cond17.i227 = icmp ult i32 %i.hb, 26
  br i1 %or.cond17.i227, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.preheader.i225
  %i.hc = or disjoint i32 %i.ha, 32
  store i32 %i.hc, ptr %.018.i226, align 4, !tbaa !8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.preheader.i225
  %i.hd = getelementptr inbounds nuw i8, ptr %.018.i226, i64 4 ; 2 uses
  %i.he = icmp ult ptr %i.hd, %i.fe
  br i1 %i.he, label %.preheader.i225, label %uriLowercaseInplaceW.exit228, !llvm.loop !101

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
  %i.hn = load ptr, ptr %3, align 8, !tbaa !25
  %i.ho = and i64 %i.hj, 2147483647               ; 6 uses
  %i.hp = shl nuw nsw i64 %i.ho, 2
  %i.hq = tail call ptr %i.hn(ptr noundef nonnull %3, i64 noundef %i.hp) #6, !inline_history !97 ; 9 uses
  %i.hr = icmp eq ptr %i.hq, null
  br i1 %i.hr, label %bb.ai, label %.lr.ph.i229

.lr.ph.i229:                                      ; preds = %bb.ah
  %i.hs = ptrtoaddr ptr %i.hq to i64
  %i.ht = load ptr, ptr %i.ez, align 8, !tbaa !47 ; 5 uses
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
  %wide.load485 = load <4 x i32>, ptr %i.hw, align 4, !tbaa !8 ; 3 uses
  %wide.load486 = load <4 x i32>, ptr %i.hx, align 4, !tbaa !8 ; 3 uses
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
  store <4 x i32> %i.ie, ptr %i.ig, align 4, !tbaa !8
  store <4 x i32> %i.if, ptr %i.ih, align 4, !tbaa !8
  %index.next487 = add nuw i64 %index484, 8       ; 2 uses
  %i.ii = icmp eq i64 %index.next487, %n.vec482
  br i1 %i.ii, label %middle.block488, label %vector.body483, !llvm.loop !102

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
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !8  ; 3 uses
  %i.im = add i32 %i.il, -65
  %or.cond.i232.prol = icmp ult i32 %i.im, 26
  %i.in = or disjoint i32 %i.il, 32
  %spec.select.i233.prol = select i1 %or.cond.i232.prol, i32 %i.in, i32 %i.il
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %indvars.iv.i231.ph
  store i32 %spec.select.i233.prol, ptr %i.io, align 4, !tbaa !8
  %indvars.iv.next.i234.prol = or disjoint i64 %indvars.iv.i231.ph, 1
  br label %scalar.ph479.prol.loopexit

scalar.ph479.prol.loopexit:                       ; preds = %scalar.ph479.prol, %scalar.ph479.preheader
  %indvars.iv.i231.unr = phi i64 [ %indvars.iv.i231.ph, %scalar.ph479.preheader ], [ %indvars.iv.next.i234.prol, %scalar.ph479.prol ]
  %i.ip = icmp eq i64 %i.ho, %.neg542
  br i1 %i.ip, label %._crit_edge.i236, label %scalar.ph479

scalar.ph479:                                     ; preds = %scalar.ph479.prol.loopexit, %scalar.ph479
  %indvars.iv.i231 = phi i64 [ %indvars.iv.next.i234.1, %scalar.ph479 ], [ %indvars.iv.i231.unr, %scalar.ph479.prol.loopexit ] ; 4 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %indvars.iv.i231
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !8  ; 3 uses
  %i.is = add i32 %i.ir, -65
  %or.cond.i232 = icmp ult i32 %i.is, 26
  %i.it = or disjoint i32 %i.ir, 32
  %spec.select.i233 = select i1 %or.cond.i232, i32 %i.it, i32 %i.ir
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %indvars.iv.i231
  store i32 %spec.select.i233, ptr %i.iu, align 4, !tbaa !8
  %indvars.iv.next.i234 = add nuw nsw i64 %indvars.iv.i231, 1 ; 2 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %indvars.iv.next.i234
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !8  ; 3 uses
  %i.ix = add i32 %i.iw, -65
  %or.cond.i232.1 = icmp ult i32 %i.ix, 26
  %i.iy = or disjoint i32 %i.iw, 32
  %spec.select.i233.1 = select i1 %or.cond.i232.1, i32 %i.iy, i32 %i.iw
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %indvars.iv.next.i234
  store i32 %spec.select.i233.1, ptr %i.iz, align 4, !tbaa !8
  %indvars.iv.next.i234.1 = add nuw nsw i64 %indvars.iv.i231, 2 ; 2 uses
  %exitcond.not.i235.1 = icmp eq i64 %indvars.iv.next.i234.1, %i.ho
  br i1 %exitcond.not.i235.1, label %._crit_edge.i236, label %scalar.ph479, !llvm.loop !103

._crit_edge.i236:                                 ; preds = %scalar.ph479.prol.loopexit, %scalar.ph479, %middle.block488
  store ptr %i.hq, ptr %i.ez, align 8, !tbaa !47
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %i.ho ; 2 uses
  store ptr %i.ja, ptr %i.fd, align 8, !tbaa !47
  br label %uriLowercaseMallocW.exit238

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.ae
  tail call fastcc void @uriPreventLeakageW(ptr noundef %0, i32 noundef %i.ew, ptr noundef %3)
  br label %bb.ef

uriLowercaseMallocW.exit238:                      ; preds = %._crit_edge.i236, %bb.af
  %i.jb = phi ptr [ %i.ja, %._crit_edge.i236 ], [ %i.fe, %bb.af ]
  %i.jc = phi ptr [ %i.hq, %._crit_edge.i236 ], [ %i.fa, %bb.af ]
  %i.jd = or disjoint i32 %i.ew, 4                ; 2 uses
  store i32 %i.jd, ptr %i.a, align 4, !tbaa !8
  br label %uriLowercaseInplaceW.exit228

uriLowercaseInplaceW.exit228:                     ; preds = %bb.ad, %middle.block474, %bb.ab, %uriLowercaseMallocW.exit238
  %i.je = phi i32 [ %i.jd, %uriLowercaseMallocW.exit238 ], [ %i.ew, %bb.ab ], [ %i.ew, %middle.block474 ], [ %i.ew, %bb.ad ]
  %i.jf = phi ptr [ %i.jb, %uriLowercaseMallocW.exit238 ], [ %i.fe, %bb.ab ], [ %i.fe, %middle.block474 ], [ %i.fe, %bb.ad ]
  %i.jg = phi ptr [ %i.jc, %uriLowercaseMallocW.exit238 ], [ %i.fa, %bb.ab ], [ %i.fa, %middle.block474 ], [ %i.fa, %bb.ad ]
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.jg, ptr %i.jh, align 8, !tbaa !46
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.jf, ptr %i.ji, align 8, !tbaa !114
  br label %uriContainsUglyPercentEncodingW.exit

bb.aj:                                            ; preds = %bb.z
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !46 ; 2 uses
  %.not178 = icmp eq ptr %i.jk, null
  br i1 %.not178, label %uriContainsUglyPercentEncodingW.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.jl = load ptr, ptr %i.ey, align 8, !tbaa !49
  %i.jm = icmp eq ptr %i.jl, null
  br i1 %i.jm, label %bb.al, label %uriContainsUglyPercentEncodingW.exit

bb.al:                                            ; preds = %bb.ak
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !50
  %i.jp = icmp eq ptr %i.jo, null
  br i1 %i.jp, label %bb.am, label %uriContainsUglyPercentEncodingW.exit

bb.am:                                            ; preds = %bb.al
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !115
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
  store i32 %i.ju, ptr %i.a, align 4, !tbaa !8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.an
  %i.jv = phi i32 [ %i.ju, %bb.aq ], [ %i.ew, %bb.an ] ; 3 uses
  %i.jw = load ptr, ptr %i.jj, align 8, !tbaa !46 ; 13 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !114 ; 3 uses
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
  %wide.load505 = load <4 x i32>, ptr %next.gep497, align 4, !tbaa !8 ; 5 uses
  %wide.load506 = load <4 x i32>, ptr %i.kr, align 4, !tbaa !8 ; 5 uses
  %i.ks = add <4 x i32> %wide.load505, splat (i32 -65)
  %i.kt = add <4 x i32> %wide.load506, splat (i32 -65)
  %i.ku = icmp ult <4 x i32> %i.ks, splat (i32 26) ; 4 uses
  %i.kv = icmp ult <4 x i32> %i.kt, splat (i32 26) ; 4 uses
  %i.kw = extractelement <4 x i1> %i.ku, i64 0
  br i1 %i.kw, label %pred.store.if507, label %pred.store.continue508

pred.store.if507:                                 ; preds = %vector.body495
  %i.kx = extractelement <4 x i32> %wide.load505, i64 0
  %i.ky = or disjoint i32 %i.kx, 32
  store i32 %i.ky, ptr %next.gep497, align 4, !tbaa !8
  br label %pred.store.continue508

pred.store.continue508:                           ; preds = %pred.store.if507, %vector.body495
  %i.kz = extractelement <4 x i1> %i.ku, i64 1
  br i1 %i.kz, label %pred.store.if509, label %pred.store.continue510

pred.store.if509:                                 ; preds = %pred.store.continue508
  %i.la = extractelement <4 x i32> %wide.load505, i64 1
  %i.lb = or disjoint i32 %i.la, 32
  store i32 %i.lb, ptr %next.gep498, align 4, !tbaa !8
  br label %pred.store.continue510

pred.store.continue510:                           ; preds = %pred.store.if509, %pred.store.continue508
  %i.lc = extractelement <4 x i1> %i.ku, i64 2
  br i1 %i.lc, label %pred.store.if511, label %pred.store.continue512

pred.store.if511:                                 ; preds = %pred.store.continue510
  %i.ld = extractelement <4 x i32> %wide.load505, i64 2
  %i.le = or disjoint i32 %i.ld, 32
  store i32 %i.le, ptr %next.gep499, align 4, !tbaa !8
  br label %pred.store.continue512

pred.store.continue512:                           ; preds = %pred.store.if511, %pred.store.continue510
  %i.lf = extractelement <4 x i1> %i.ku, i64 3
  br i1 %i.lf, label %pred.store.if513, label %pred.store.continue514

pred.store.if513:                                 ; preds = %pred.store.continue512
  %i.lg = extractelement <4 x i32> %wide.load505, i64 3
  %i.lh = or disjoint i32 %i.lg, 32
  store i32 %i.lh, ptr %next.gep500, align 4, !tbaa !8
  br label %pred.store.continue514

pred.store.continue514:                           ; preds = %pred.store.if513, %pred.store.continue512
  %i.li = extractelement <4 x i1> %i.kv, i64 0
  br i1 %i.li, label %pred.store.if515, label %pred.store.continue516

pred.store.if515:                                 ; preds = %pred.store.continue514
  %i.lj = extractelement <4 x i32> %wide.load506, i64 0
  %i.lk = or disjoint i32 %i.lj, 32
  store i32 %i.lk, ptr %next.gep501, align 4, !tbaa !8
  br label %pred.store.continue516

pred.store.continue516:                           ; preds = %pred.store.if515, %pred.store.continue514
  %i.ll = extractelement <4 x i1> %i.kv, i64 1
  br i1 %i.ll, label %pred.store.if517, label %pred.store.continue518

pred.store.if517:                                 ; preds = %pred.store.continue516
  %i.lm = extractelement <4 x i32> %wide.load506, i64 1
  %i.ln = or disjoint i32 %i.lm, 32
  store i32 %i.ln, ptr %next.gep502, align 4, !tbaa !8
  br label %pred.store.continue518

pred.store.continue518:                           ; preds = %pred.store.if517, %pred.store.continue516
  %i.lo = extractelement <4 x i1> %i.kv, i64 2
  br i1 %i.lo, label %pred.store.if519, label %pred.store.continue520

pred.store.if519:                                 ; preds = %pred.store.continue518
  %i.lp = extractelement <4 x i32> %wide.load506, i64 2
  %i.lq = or disjoint i32 %i.lp, 32
  store i32 %i.lq, ptr %next.gep503, align 4, !tbaa !8
  br label %pred.store.continue520

pred.store.continue520:                           ; preds = %pred.store.if519, %pred.store.continue518
  %i.lr = extractelement <4 x i1> %i.kv, i64 3
  br i1 %i.lr, label %pred.store.if521, label %pred.store.continue522

pred.store.if521:                                 ; preds = %pred.store.continue520
  %i.ls = extractelement <4 x i32> %wide.load506, i64 3
  %i.lt = or disjoint i32 %i.ls, 32
  store i32 %i.lt, ptr %next.gep504, align 4, !tbaa !8
  br label %pred.store.continue522

pred.store.continue522:                           ; preds = %pred.store.if521, %pred.store.continue520
  %index.next523 = add nuw i64 %index496, 8       ; 2 uses
  %i.lu = icmp eq i64 %index.next523, %n.vec494
  br i1 %i.lu, label %middle.block524, label %vector.body495, !llvm.loop !104

middle.block524:                                  ; preds = %pred.store.continue522
  %cmp.n525 = icmp eq i64 %i.kg, %n.vec494
  br i1 %cmp.n525, label %uriContainsUglyPercentEncodingW.exit, label %.preheader.i240.preheader536

.preheader.i240.preheader536:                     ; preds = %.preheader.i240.preheader, %middle.block524
  %.018.i241.ph = phi ptr [ %i.jw, %.preheader.i240.preheader ], [ %i.ki, %middle.block524 ]
  br label %.preheader.i240

.preheader.i240:                                  ; preds = %.preheader.i240.preheader536, %bb.at
  %.018.i241 = phi ptr [ %i.ly, %bb.at ], [ %.018.i241.ph, %.preheader.i240.preheader536 ] ; 3 uses
  %i.lv = load i32, ptr %.018.i241, align 4, !tbaa !8 ; 2 uses
  %i.lw = add i32 %i.lv, -65
  %or.cond17.i242 = icmp ult i32 %i.lw, 26
  br i1 %or.cond17.i242, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.preheader.i240
  %i.lx = or disjoint i32 %i.lv, 32
  store i32 %i.lx, ptr %.018.i241, align 4, !tbaa !8
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.preheader.i240
  %i.ly = getelementptr inbounds nuw i8, ptr %.018.i241, i64 4 ; 2 uses
  %i.lz = icmp ult ptr %i.ly, %i.jy
  br i1 %i.lz, label %.preheader.i240, label %uriContainsUglyPercentEncodingW.exit, !llvm.loop !105

uriContainsUglyPercentEncodingW.exit:             ; preds = %bb.m, %bb.at, %middle.block524, %bb.ar, %bb.i, %uriLowercaseInplaceW.exit, %bb.aj, %bb.ak, %bb.al, %uriLowercaseInplaceW.exit228
  %i.ma = phi i32 [ %i.jv, %middle.block524 ], [ %i.je, %uriLowercaseInplaceW.exit228 ], [ %i.jv, %bb.ar ], [ 0, %bb.i ], [ %i.ew, %uriLowercaseInplaceW.exit ], [ %i.ew, %bb.aj ], [ %i.ew, %bb.ak ], [ %i.ew, %bb.al ], [ %i.jv, %bb.at ], [ 0, %bb.m ] ; 6 uses
  br i1 %.not212, label %bb.az, label %uriContainsUglyPercentEncodingW.exit.thread290

uriContainsUglyPercentEncodingW.exit.thread290.sink.split: ; preds = %bb.h, %bb.n
  %.sink = phi i32 [ %i.at, %bb.n ], [ %i.w, %bb.h ]
  store i32 %.sink, ptr %2, align 4, !tbaa !8
  br label %uriContainsUglyPercentEncodingW.exit.thread290

uriContainsUglyPercentEncodingW.exit.thread290:   ; preds = %uriContainsUglyPercentEncodingW.exit.thread290.sink.split, %uriContainsUglyPercentEncodingW.exit
  %i.mb = phi i32 [ %i.ma, %uriContainsUglyPercentEncodingW.exit ], [ 0, %uriContainsUglyPercentEncodingW.exit.thread290.sink.split ] ; 4 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !51 ; 4 uses
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !116 ; 3 uses
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
  %i.ml = load i32, ptr %.02132.i248, align 4, !tbaa !8
  %i.mm = icmp eq i32 %i.ml, 37
  br i1 %i.mm, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %.lr.ph.i247
  %i.mn = getelementptr inbounds nuw i8, ptr %.02132.i248, i64 4
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !8  ; 2 uses
  %i.mp = add i32 %i.mo, -97
  %or.cond30.i249 = icmp ult i32 %i.mp, 6
  br i1 %or.cond30.i249, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.mq = load i32, ptr %i.mk, align 4, !tbaa !8
  %i.mr = add i32 %i.mq, -97
  %or.cond31.i250 = icmp ult i32 %i.mr, 6
  br i1 %or.cond31.i250, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ms = tail call zeroext i8 @uriHexdigToIntW(i32 noundef %i.mo) #6
  %i.mt = load i32, ptr %i.mk, align 4, !tbaa !8
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
  br i1 %i.nc, label %.lr.ph.i247, label %uriContainsUglyPercentEncodingW.exit252, !llvm.loop !94

bb.ay:                                            ; preds = %bb.av, %bb.au, %bb.aw
  %i.nd = load i32, ptr %2, align 4, !tbaa !8
  %i.ne = or i32 %i.nd, 2
  store i32 %i.ne, ptr %2, align 4, !tbaa !8
  br label %uriContainsUglyPercentEncodingW.exit252.thread296

bb.az:                                            ; preds = %uriContainsUglyPercentEncodingW.exit
  %i.nf = and i32 %1, 2
  %.not186 = icmp eq i32 %i.nf, 0
  br i1 %.not186, label %uriContainsUglyPercentEncodingW.exit252.thread294, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !51 ; 2 uses
  %.not187 = icmp eq ptr %i.nh, null
  br i1 %.not187, label %uriContainsUglyPercentEncodingW.exit252.thread294, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !115
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
  store i32 %i.nm, ptr %i.a, align 4, !tbaa !8
  br label %uriContainsUglyPercentEncodingW.exit252.thread294

uriContainsUglyPercentEncodingW.exit252:          ; preds = %bb.ax
  br i1 %.not212, label %uriContainsUglyPercentEncodingW.exit252.thread294, label %uriContainsUglyPercentEncodingW.exit252.thread296

uriContainsUglyPercentEncodingW.exit252.thread296: ; preds = %bb.ay, %uriContainsUglyPercentEncodingW.exit.thread290, %uriContainsUglyPercentEncodingW.exit252
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.0155314 = load ptr, ptr %i.nn, align 8, !tbaa !117 ; 2 uses
  %.not198315 = icmp eq ptr %.0155314, null
  br i1 %.not198315, label %.loopexit310.thread, label %.lr.ph

.lr.ph:                                           ; preds = %uriContainsUglyPercentEncodingW.exit252.thread296, %.loopexit309
  %.0155316 = phi ptr [ %.0155, %.loopexit309 ], [ %.0155314, %uriContainsUglyPercentEncodingW.exit252.thread296 ] ; 3 uses
  %i.no = load ptr, ptr %.0155316, align 8, !tbaa !53 ; 8 uses
  %i.np = getelementptr inbounds nuw i8, ptr %.0155316, i64 8
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !54 ; 4 uses
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
  %i.nw = load i32, ptr %i.no, align 4, !tbaa !8
  %i.nx = icmp eq i32 %i.nw, 46
  br i1 %i.nx, label %.thread303, label %bb.bk

bb.bi:                                            ; preds = %bb.bg
  %i.ny = load i32, ptr %i.no, align 4, !tbaa !8
  %i.nz = icmp eq i32 %i.ny, 46
  br i1 %i.nz, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.oa = getelementptr inbounds nuw i8, ptr %i.no, i64 4
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !8
  %i.oc = icmp eq i32 %i.ob, 46
  br i1 %i.oc, label %.thread303, label %bb.bk

bb.bk:                                            ; preds = %bb.bh, %bb.bg, %bb.bj, %bb.bi
  %i.od = getelementptr inbounds nuw i8, ptr %i.no, i64 8 ; 2 uses
  %i.oe = icmp ult ptr %i.od, %i.nq
  br i1 %i.oe, label %.lr.ph.i256, label %.loopexit309

.lr.ph.i256:                                      ; preds = %bb.bk, %bb.bo
  %i.of = phi ptr [ %i.ow, %bb.bo ], [ %i.od, %bb.bk ] ; 2 uses
  %.02132.i257 = phi ptr [ %i.ov, %bb.bo ], [ %i.no, %bb.bk ] ; 4 uses
  %i.og = load i32, ptr %.02132.i257, align 4, !tbaa !8
  %i.oh = icmp eq i32 %i.og, 37
  br i1 %i.oh, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %.lr.ph.i256
  %i.oi = getelementptr inbounds nuw i8, ptr %.02132.i257, i64 4
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !8  ; 2 uses
  %i.ok = add i32 %i.oj, -97
  %or.cond30.i258 = icmp ult i32 %i.ok, 6
  br i1 %or.cond30.i258, label %.thread303, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ol = load i32, ptr %i.of, align 4, !tbaa !8
  %i.om = add i32 %i.ol, -97
  %or.cond31.i259 = icmp ult i32 %i.om, 6
  br i1 %or.cond31.i259, label %.thread303, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.on = tail call zeroext i8 @uriHexdigToIntW(i32 noundef %i.oj) #6
  %i.oo = load i32, ptr %i.of, align 4, !tbaa !8
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
  br i1 %i.ox, label %.lr.ph.i256, label %.loopexit309, !llvm.loop !94

.thread303:                                       ; preds = %bb.bj, %bb.bh, %bb.bn, %bb.bl, %bb.bm
  %i.oy = load i32, ptr %2, align 4, !tbaa !8
  %i.oz = or i32 %i.oy, 8
  store i32 %i.oz, ptr %2, align 4, !tbaa !8
  br label %.loopexit310.thread

.loopexit309:                                     ; preds = %bb.bo, %.lr.ph, %bb.bk
  %i.pa = getelementptr inbounds nuw i8, ptr %.0155316, i64 16
  %.0155 = load ptr, ptr %i.pa, align 8, !tbaa !117 ; 2 uses
  %.not198 = icmp eq ptr %.0155, null
  br i1 %.not198, label %.loopexit310, label %.lr.ph

uriContainsUglyPercentEncodingW.exit252.thread294: ; preds = %bb.bc, %bb.bf, %bb.ba, %bb.az, %uriContainsUglyPercentEncodingW.exit252
  %i.pb = phi i32 [ %i.ma, %bb.bc ], [ %i.nm, %bb.bf ], [ %i.ma, %bb.ba ], [ %i.ma, %bb.az ], [ %i.mb, %uriContainsUglyPercentEncodingW.exit252 ] ; 5 uses
  %i.pc = and i32 %1, 8
  %.not191 = icmp eq i32 %i.pc, 0
  br i1 %.not191, label %.thread302, label %bb.bp

bb.bp:                                            ; preds = %uriContainsUglyPercentEncodingW.exit252.thread294
  %i.pd = load ptr, ptr %0, align 8, !tbaa !45
  %i.pe = icmp eq ptr %i.pd, null
  br i1 %i.pe, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.pg = load i32, ptr %i.pf, align 8, !tbaa !118
  %.not192 = icmp eq i32 %i.pg, 0
  %i.ph = zext i1 %.not192 to i32
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.pi = phi i32 [ 0, %bb.bp ], [ %i.ph, %bb.bq ]
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !55 ; 3 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !115
  %.not193 = icmp eq i32 %i.pm, 0
  %.not194320 = icmp eq ptr %i.pk, null           ; 2 uses
  br i1 %.not193, label %.preheader, label %.preheader308

.preheader308:                                    ; preds = %bb.br
  br i1 %.not194320, label %.loopexit, label %.lr.ph319

.preheader:                                       ; preds = %bb.br
  br i1 %.not194320, label %._crit_edge, label %.lr.ph322

.lr.ph319:                                        ; preds = %.preheader308, %.lr.ph319
  %.0318 = phi ptr [ %i.pq, %.lr.ph319 ], [ %i.pk, %.preheader308 ] ; 3 uses
  %i.pn = load ptr, ptr %.0318, align 8, !tbaa !53
  %i.po = getelementptr inbounds nuw i8, ptr %.0318, i64 8
  tail call fastcc void @uriFixPercentEncodingInplaceW(ptr noundef %i.pn, ptr noundef %i.po)
  %i.pp = getelementptr inbounds nuw i8, ptr %.0318, i64 16
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !56 ; 2 uses
  %.not196 = icmp eq ptr %i.pq, null
  br i1 %.not196, label %.loopexit, label %.lr.ph319, !llvm.loop !106

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
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !56 ; 2 uses
  %.not194 = icmp eq ptr %i.pu, null
  br i1 %.not194, label %._crit_edge, label %.lr.ph322, !llvm.loop !107

._crit_edge:                                      ; preds = %bb.bt, %.preheader
  %i.pv = or i32 %i.pb, 8                         ; 2 uses
  store i32 %i.pv, ptr %i.a, align 4, !tbaa !8
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph319, %.preheader308, %._crit_edge
  %i.pw = phi i32 [ %i.pv, %._crit_edge ], [ %i.pb, %.preheader308 ], [ %i.pb, %.lr.ph319 ] ; 3 uses
  %i.px = load i32, ptr %i.pl, align 4, !tbaa !115
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
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !57 ; 4 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !119 ; 3 uses
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
  %i.qp = load i32, ptr %.02132.i266, align 4, !tbaa !8
  %i.qq = icmp eq i32 %i.qp, 37
  br i1 %i.qq, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %.lr.ph.i265
  %i.qr = getelementptr inbounds nuw i8, ptr %.02132.i266, i64 4
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !8  ; 2 uses
  %i.qt = add i32 %i.qs, -97
  %or.cond30.i267 = icmp ult i32 %i.qt, 6
  br i1 %or.cond30.i267, label %uriContainsUglyPercentEncodingW.exit270, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.qu = load i32, ptr %i.qo, align 4, !tbaa !8
  %i.qv = add i32 %i.qu, -97
  %or.cond31.i268 = icmp ult i32 %i.qv, 6
  br i1 %or.cond31.i268, label %uriContainsUglyPercentEncodingW.exit270, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.qw = tail call zeroext i8 @uriHexdigToIntW(i32 noundef %i.qs) #6
  %i.qx = load i32, ptr %i.qo, align 4, !tbaa !8
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
  br i1 %i.rg, label %.lr.ph.i265, label %uriContainsUglyPercentEncodingW.exit270, !llvm.loop !94

uriContainsUglyPercentEncodingW.exit270:          ; preds = %bb.bv, %bb.bw, %bb.bx, %bb.by, %.loopexit310.thread
  %.not208 = phi i1 [ true, %.loopexit310.thread ], [ false, %bb.bx ], [ true, %bb.by ], [ false, %bb.bv ], [ false, %bb.bw ]
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !58 ; 4 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !120 ; 3 uses
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
  %i.rq = load i32, ptr %.02132.i275, align 4, !tbaa !8
  %i.rr = icmp eq i32 %i.rq, 37
  br i1 %i.rr, label %bb.bz, label %bb.cc

bb.bz:                                            ; preds = %.lr.ph.i274
  %i.rs = getelementptr inbounds nuw i8, ptr %.02132.i275, i64 4
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !8  ; 2 uses
  %i.ru = add i32 %i.rt, -97
  %or.cond30.i276 = icmp ult i32 %i.ru, 6
  br i1 %or.cond30.i276, label %uriContainsUglyPercentEncodingW.exit279, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.rv = load i32, ptr %i.rp, align 4, !tbaa !8
  %i.rw = add i32 %i.rv, -97
  %or.cond31.i277 = icmp ult i32 %i.rw, 6
  br i1 %or.cond31.i277, label %uriContainsUglyPercentEncodingW.exit279, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.rx = tail call zeroext i8 @uriHexdigToIntW(i32 noundef %i.rt) #6
  %i.ry = load i32, ptr %i.rp, align 4, !tbaa !8
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
  br i1 %i.sh, label %.lr.ph.i274, label %uriContainsUglyPercentEncodingW.exit279, !llvm.loop !94

uriContainsUglyPercentEncodingW.exit279:          ; preds = %bb.bz, %bb.ca, %bb.cb, %bb.cc, %uriContainsUglyPercentEncodingW.exit270
  %.not209 = phi i1 [ true, %uriContainsUglyPercentEncodingW.exit270 ], [ false, %bb.cb ], [ true, %bb.cc ], [ false, %bb.bz ], [ false, %bb.ca ]
  br i1 %.not208, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %uriContainsUglyPercentEncodingW.exit279
  %i.si = load i32, ptr %2, align 4, !tbaa !8
  %i.sj = or i32 %i.si, 16
  store i32 %i.sj, ptr %2, align 4, !tbaa !8
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %uriContainsUglyPercentEncodingW.exit279
  br i1 %.not209, label %bb.cs, label %.thread305

.thread305:                                       ; preds = %bb.ce
  %i.sk = load i32, ptr %2, align 4, !tbaa !8
  %i.sl = or i32 %i.sk, 32
  store i32 %i.sl, ptr %2, align 4, !tbaa !8
  br label %bb.ef

.thread302:                                       ; preds = %uriContainsUglyPercentEncodingW.exit252.thread294, %.loopexit310
  %i.sm = phi i32 [ %i.pb, %uriContainsUglyPercentEncodingW.exit252.thread294 ], [ %i.qe, %.loopexit310 ] ; 5 uses
  %i.sn = and i32 %1, 16
  %.not200 = icmp eq i32 %i.sn, 0
  br i1 %.not200, label %bb.cl, label %bb.cf

bb.cf:                                            ; preds = %.thread302
  %i.so = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !57 ; 2 uses
  %.not201 = icmp eq ptr %i.sp, null
  br i1 %.not201, label %bb.cl, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.sq = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !115
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
  store i32 %i.su, ptr %i.a, align 4, !tbaa !8
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ch, %bb.ck, %bb.cf, %.thread302
  %i.sv = phi i32 [ %i.sm, %bb.ch ], [ %i.su, %bb.ck ], [ %i.sm, %bb.cf ], [ %i.sm, %.thread302 ] ; 5 uses
  %i.sw = and i32 %1, 32
  %.not204 = icmp eq i32 %i.sw, 0
  br i1 %.not204, label %.thread304, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.sx = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !58 ; 2 uses
  %.not205 = icmp eq ptr %i.sy, null
  br i1 %.not205, label %.thread304, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.sz = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.ta = load i32, ptr %i.sz, align 4, !tbaa !115
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
  store i32 %i.td, ptr %i.a, align 4, !tbaa !8
  br label %.thread304

bb.cs:                                            ; preds = %bb.ce
  br i1 %.not212, label %.thread304, label %bb.ef

.thread304:                                       ; preds = %bb.co, %bb.cr, %bb.cm, %bb.cl, %bb.cs
  %i.te = phi i32 [ %i.sv, %bb.co ], [ %i.td, %bb.cr ], [ %i.sv, %bb.cm ], [ %i.sv, %bb.cl ], [ %i.qf, %bb.cs ] ; 5 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.tg = load i32, ptr %i.tf, align 4, !tbaa !115
  %.not210 = icmp eq i32 %i.tg, 0
  br i1 %.not210, label %bb.ct, label %bb.ef

bb.ct:                                            ; preds = %.thread304
  %i.th = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !55 ; 2 uses
  %i.tj = and i32 %i.te, 1
  %i.tk = icmp eq i32 %i.tj, 0
  br i1 %i.tk, label %bb.cu, label %bb.cx

bb.cu:                                            ; preds = %bb.ct
  %i.tl = load ptr, ptr %0, align 8, !tbaa !59    ; 3 uses
  %.not.i.i = icmp eq ptr %i.tl, null
  br i1 %.not.i.i, label %bb.cx, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.tm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !60 ; 2 uses
  %i.to = icmp ugt ptr %i.tn, %i.tl
  br i1 %i.to, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.tp = ptrtoint ptr %i.tn to i64
  %i.tq = ptrtoint ptr %i.tl to i64
  %i.tr = sub i64 %i.tp, %i.tq
  %sext.i.i = shl i64 %i.tr, 30
  %i.ts = ashr i64 %sext.i.i, 32                  ; 2 uses
  %i.tt = shl i64 %i.ts, 34
  %i.tu = load ptr, ptr %3, align 8, !tbaa !25
  %i.tv = ashr exact i64 %i.tt, 32                ; 2 uses
  %i.tw = tail call ptr %i.tu(ptr noundef nonnull %3, i64 noundef %i.tv) #6, !inline_history !108 ; 4 uses
  %i.tx = icmp eq ptr %i.tw, null
  br i1 %i.tx, label %bb.ee, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.cw
  %i.ty = load ptr, ptr %0, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.tw, ptr align 4 %i.ty, i64 %i.tv, i1 false)
  store ptr %i.tw, ptr %0, align 8, !tbaa !59
  %i.tz = getelementptr inbounds [4 x i8], ptr %i.tw, i64 %i.ts
  store ptr %i.tz, ptr %i.tm, align 8, !tbaa !60
  %i.ua = or disjoint i32 %i.te, 1                ; 2 uses
  store i32 %i.ua, ptr %i.a, align 4, !tbaa !8
  br label %bb.cx

bb.cx:                                            ; preds = %.thread.i.i, %bb.cv, %bb.cu, %bb.ct
  %i.ub = phi i32 [ %i.ua, %.thread.i.i ], [ %i.te, %bb.cv ], [ %i.te, %bb.cu ], [ %i.te, %bb.ct ] ; 5 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ud = and i32 %i.ub, 2
  %i.ue = icmp eq i32 %i.ud, 0
  br i1 %i.ue, label %bb.cy, label %bb.db

bb.cy:                                            ; preds = %bb.cx
  %i.uf = load ptr, ptr %i.uc, align 8, !tbaa !59 ; 3 uses
  %.not.i80.i = icmp eq ptr %i.uf, null
  br i1 %.not.i80.i, label %bb.db, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ug = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !60 ; 2 uses
  %i.ui = icmp ugt ptr %i.uh, %i.uf
  br i1 %i.ui, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.uj = ptrtoint ptr %i.uh to i64
  %i.uk = ptrtoint ptr %i.uf to i64
  %i.ul = sub i64 %i.uj, %i.uk
  %sext.i81.i = shl i64 %i.ul, 30
  %i.um = ashr i64 %sext.i81.i, 32                ; 2 uses
  %i.un = shl i64 %i.um, 34
  %i.uo = load ptr, ptr %3, align 8, !tbaa !25
  %i.up = ashr exact i64 %i.un, 32                ; 2 uses
  %i.uq = tail call ptr %i.uo(ptr noundef nonnull %3, i64 noundef %i.up) #6, !inline_history !108 ; 4 uses
  %i.ur = icmp eq ptr %i.uq, null
  br i1 %i.ur, label %bb.ee, label %.thread.i82.i

.thread.i82.i:                                    ; preds = %bb.da
  %i.us = load ptr, ptr %i.uc, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.uq, ptr align 4 %i.us, i64 %i.up, i1 false)
  store ptr %i.uq, ptr %i.uc, align 8, !tbaa !59
  %i.ut = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %i.um
  store ptr %i.ut, ptr %i.ug, align 8, !tbaa !60
  %i.uu = or disjoint i32 %i.ub, 2                ; 2 uses
  store i32 %i.uu, ptr %i.a, align 4, !tbaa !8
  br label %bb.db

bb.db:                                            ; preds = %.thread.i82.i, %bb.cz, %bb.cy, %bb.cx
  %i.uv = phi i32 [ %i.uu, %.thread.i82.i ], [ %i.ub, %bb.cz ], [ %i.ub, %bb.cy ], [ %i.ub, %bb.cx ] ; 5 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.ux = and i32 %i.uv, 16
  %i.uy = icmp eq i32 %i.ux, 0
  br i1 %i.uy, label %bb.dc, label %bb.df

bb.dc:                                            ; preds = %bb.db
  %i.uz = load ptr, ptr %i.uw, align 8, !tbaa !59 ; 3 uses
  %.not.i85.i = icmp eq ptr %i.uz, null
  br i1 %.not.i85.i, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.va = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !60 ; 2 uses
  %i.vc = icmp ugt ptr %i.vb, %i.uz
  br i1 %i.vc, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.vd = ptrtoint ptr %i.vb to i64
  %i.ve = ptrtoint ptr %i.uz to i64
  %i.vf = sub i64 %i.vd, %i.ve
  %sext.i86.i = shl i64 %i.vf, 30
  %i.vg = ashr i64 %sext.i86.i, 32                ; 2 uses
  %i.vh = shl i64 %i.vg, 34
  %i.vi = load ptr, ptr %3, align 8, !tbaa !25
  %i.vj = ashr exact i64 %i.vh, 32                ; 2 uses
  %i.vk = tail call ptr %i.vi(ptr noundef nonnull %3, i64 noundef %i.vj) #6, !inline_history !108 ; 4 uses
  %i.vl = icmp eq ptr %i.vk, null
  br i1 %i.vl, label %bb.ee, label %.thread.i87.i

.thread.i87.i:                                    ; preds = %bb.de
  %i.vm = load ptr, ptr %i.uw, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.vk, ptr align 4 %i.vm, i64 %i.vj, i1 false)
  store ptr %i.vk, ptr %i.uw, align 8, !tbaa !59
  %i.vn = getelementptr inbounds [4 x i8], ptr %i.vk, i64 %i.vg
  store ptr %i.vn, ptr %i.va, align 8, !tbaa !60
  %i.vo = or disjoint i32 %i.uv, 16               ; 2 uses
  store i32 %i.vo, ptr %i.a, align 4, !tbaa !8
  br label %bb.df

bb.df:                                            ; preds = %.thread.i87.i, %bb.dd, %bb.dc, %bb.db
  %i.vp = phi i32 [ %i.vo, %.thread.i87.i ], [ %i.uv, %bb.dd ], [ %i.uv, %bb.dc ], [ %i.uv, %bb.db ] ; 5 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.vr = and i32 %i.vp, 32
  %i.vs = icmp eq i32 %i.vr, 0
  br i1 %i.vs, label %bb.dg, label %bb.dj

bb.dg:                                            ; preds = %bb.df
  %i.vt = load ptr, ptr %i.vq, align 8, !tbaa !59 ; 3 uses
  %.not.i90.i = icmp eq ptr %i.vt, null
  br i1 %.not.i90.i, label %bb.dj, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.vu = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !60 ; 2 uses
  %i.vw = icmp ugt ptr %i.vv, %i.vt
  br i1 %i.vw, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.vx = ptrtoint ptr %i.vv to i64
  %i.vy = ptrtoint ptr %i.vt to i64
  %i.vz = sub i64 %i.vx, %i.vy
  %sext.i91.i = shl i64 %i.vz, 30
  %i.wa = ashr i64 %sext.i91.i, 32                ; 2 uses
  %i.wb = shl i64 %i.wa, 34
  %i.wc = load ptr, ptr %3, align 8, !tbaa !25
  %i.wd = ashr exact i64 %i.wb, 32                ; 2 uses
  %i.we = tail call ptr %i.wc(ptr noundef nonnull %3, i64 noundef %i.wd) #6, !inline_history !108 ; 4 uses
  %i.wf = icmp eq ptr %i.we, null
  br i1 %i.wf, label %bb.ee, label %.thread.i92.i

.thread.i92.i:                                    ; preds = %bb.di
  %i.wg = load ptr, ptr %i.vq, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.we, ptr align 4 %i.wg, i64 %i.wd, i1 false)
  store ptr %i.we, ptr %i.vq, align 8, !tbaa !59
  %i.wh = getelementptr inbounds [4 x i8], ptr %i.we, i64 %i.wa
  store ptr %i.wh, ptr %i.vu, align 8, !tbaa !60
  %i.wi = or disjoint i32 %i.vp, 32               ; 2 uses
  store i32 %i.wi, ptr %i.a, align 4, !tbaa !8
  br label %bb.dj

bb.dj:                                            ; preds = %.thread.i92.i, %bb.dh, %bb.dg, %bb.df
  %i.wj = phi i32 [ %i.wi, %.thread.i92.i ], [ %i.vp, %bb.dh ], [ %i.vp, %bb.dg ], [ %i.vp, %bb.df ]
  %i.wk = and i32 %i.wj, 4
  %i.wl = icmp eq i32 %i.wk, 0
  br i1 %i.wl, label %bb.dk, label %bb.dr

bb.dk:                                            ; preds = %bb.dj
  %i.wm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !49
  %i.wo = icmp eq ptr %i.wn, null
  br i1 %i.wo, label %bb.dl, label %bb.dr

bb.dl:                                            ; preds = %bb.dk
  %i.wp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.wq = load ptr, ptr %i.wp, align 8, !tbaa !50
  %i.wr = icmp eq ptr %i.wq, null
  br i1 %i.wr, label %bb.dm, label %bb.dr

bb.dm:                                            ; preds = %bb.dl
  %i.ws = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !48
  %.not68.i = icmp eq ptr %i.wt, null
  br i1 %.not68.i, label %bb.dp, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.wu = call fastcc i32 @uriMakeRangeOwnerW(ptr noundef nonnull %i.a, i32 noundef 4, ptr noundef %i.ws, ptr noundef %3)
  %.not71.i = icmp eq i32 %i.wu, 0
  br i1 %.not71.i, label %bb.ee, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.wv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ww = load <2 x ptr>, ptr %i.ws, align 8, !tbaa !47
  store <2 x ptr> %i.ww, ptr %i.wv, align 8, !tbaa !47
  br label %bb.dr

bb.dp:                                            ; preds = %bb.dm
  %i.wx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !46
  %.not69.i = icmp eq ptr %i.wy, null
  br i1 %.not69.i, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.wz = call fastcc i32 @uriMakeRangeOwnerW(ptr noundef nonnull %i.a, i32 noundef 4, ptr noundef %i.wx, ptr noundef %3)
  %.not70.i = icmp eq i32 %i.wz, 0
  br i1 %.not70.i, label %bb.ee, label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp, %bb.do, %bb.dl, %bb.dk, %bb.dj
  %i.xa = load i32, ptr %i.a, align 4, !tbaa !8   ; 2 uses
  %i.xb = and i32 %i.xa, 8
  %i.xc = icmp eq i32 %i.xb, 0
  br i1 %i.xc, label %.preheader116.i, label %bb.eb

.preheader116.i:                                  ; preds = %bb.dr
  %.not72118.i = icmp eq ptr %i.ti, null
  br i1 %.not72118.i, label %._crit_edge.i281, label %.lr.ph.i280

.lr.ph.i280:                                      ; preds = %.preheader116.i, %bb.ea
  %.062119.i = phi ptr [ %i.yh, %bb.ea ], [ %i.ti, %.preheader116.i ] ; 8 uses
  %i.xd = load ptr, ptr %.062119.i, align 8, !tbaa !59 ; 3 uses
  %.not.i95.i = icmp eq ptr %i.xd, null
  br i1 %.not.i95.i, label %bb.ea, label %bb.ds

bb.ds:                                            ; preds = %.lr.ph.i280
  %i.xe = getelementptr inbounds nuw i8, ptr %.062119.i, i64 8 ; 2 uses
  %i.xf = load ptr, ptr %i.xe, align 8, !tbaa !60 ; 2 uses
  %i.xg = icmp ugt ptr %i.xf, %i.xd
  br i1 %i.xg, label %bb.dt, label %bb.ea

bb.dt:                                            ; preds = %bb.ds
  %i.xh = ptrtoint ptr %i.xf to i64
  %i.xi = ptrtoint ptr %i.xd to i64
  %i.xj = sub i64 %i.xh, %i.xi
  %sext.i96.i = shl i64 %i.xj, 30
  %i.xk = ashr i64 %sext.i96.i, 32                ; 2 uses
  %i.xl = shl i64 %i.xk, 34
  %i.xm = load ptr, ptr %3, align 8, !tbaa !25
  %i.xn = ashr exact i64 %i.xl, 32                ; 2 uses
  %i.xo = tail call ptr %i.xm(ptr noundef nonnull %3, i64 noundef %i.xn) #6, !inline_history !108 ; 4 uses
  %i.xp = icmp eq ptr %i.xo, null
  br i1 %i.xp, label %uriMakeRangeOwnerW.exit98.i, label %.thread.i97.i

.thread.i97.i:                                    ; preds = %bb.dt
  %i.xq = load ptr, ptr %.062119.i, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.xo, ptr align 4 %i.xq, i64 %i.xn, i1 false)
  store ptr %i.xo, ptr %.062119.i, align 8, !tbaa !59
  %i.xr = getelementptr inbounds [4 x i8], ptr %i.xo, i64 %i.xk
  store ptr %i.xr, ptr %i.xe, align 8, !tbaa !60
  br label %bb.ea

uriMakeRangeOwnerW.exit98.i:                      ; preds = %bb.dt
  %i.xs = load ptr, ptr %i.th, align 8, !tbaa !55 ; 2 uses
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
  %i.xw = load ptr, ptr %i.xv, align 8, !tbaa !56 ; 2 uses
  %i.xx = load ptr, ptr %.061121.i, align 8, !tbaa !53 ; 3 uses
  %.not77.i = icmp eq ptr %i.xx, null
  br i1 %.not77.i, label %bb.dx, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.xy = getelementptr inbounds nuw i8, ptr %.061121.i, i64 8
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !54
  %i.ya = icmp ugt ptr %i.xz, %i.xx
  br i1 %i.ya, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.yb = load ptr, ptr %i.xt, align 8, !tbaa !39
  tail call void %i.yb(ptr noundef nonnull %3, ptr noundef nonnull %i.xx) #6, !inline_history !109
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv, %bb.du
  %i.yc = load ptr, ptr %i.xt, align 8, !tbaa !39
  tail call void %i.yc(ptr noundef nonnull %3, ptr noundef nonnull %.061121.i) #6, !inline_history !109
  %.not75.i = icmp eq ptr %i.xw, %.062119.i
  br i1 %.not75.i, label %.preheader.i282, label %bb.du, !llvm.loop !110

bb.dy:                                            ; preds = %bb.dy, %.preheader.i282
  %.1123.i = phi ptr [ %.062119.i, %.preheader.i282 ], [ %i.ye, %bb.dy ] ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %.1123.i, i64 16
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !56 ; 2 uses
  %i.yf = load ptr, ptr %i.xu, align 8, !tbaa !39
  tail call void %i.yf(ptr noundef nonnull %3, ptr noundef nonnull %.1123.i) #6, !inline_history !109
  %.not76.i = icmp eq ptr %i.ye, null
  br i1 %.not76.i, label %bb.dz, label %bb.dy, !llvm.loop !111

bb.dz:                                            ; preds = %bb.dy
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.th, i8 0, i64 16, i1 false)
  br label %bb.ee

bb.ea:                                            ; preds = %.thread.i97.i, %bb.ds, %.lr.ph.i280
  %i.yg = getelementptr inbounds nuw i8, ptr %.062119.i, i64 16
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !56 ; 2 uses
  %.not72.i = icmp eq ptr %i.yh, null
  br i1 %.not72.i, label %._crit_edge.i281, label %.lr.ph.i280, !llvm.loop !112

._crit_edge.i281:                                 ; preds = %bb.ea, %.preheader116.i
  %i.yi = or disjoint i32 %i.xa, 8
  store i32 %i.yi, ptr %i.a, align 4, !tbaa !8
  br label %bb.eb

bb.eb:                                            ; preds = %._crit_edge.i281, %bb.dr
  %i.yj = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.yk = load ptr, ptr %i.yj, align 8, !tbaa !59 ; 3 uses
  %.not.i100.i = icmp eq ptr %i.yk, null
  br i1 %.not.i100.i, label %uriMakeOwnerW.exit, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.yl = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ym = load ptr, ptr %i.yl, align 8, !tbaa !60 ; 2 uses
  %i.yn = icmp ugt ptr %i.ym, %i.yk
  br i1 %i.yn, label %bb.ed, label %uriMakeOwnerW.exit

bb.ed:                                            ; preds = %bb.ec
  %i.yo = ptrtoint ptr %i.ym to i64
  %i.yp = ptrtoint ptr %i.yk to i64
  %i.yq = sub i64 %i.yo, %i.yp
  %sext.i101.i = shl i64 %i.yq, 30
  %i.yr = ashr i64 %sext.i101.i, 32               ; 2 uses
  %i.ys = shl i64 %i.yr, 34
  %i.yt = load ptr, ptr %3, align 8, !tbaa !25
  %i.yu = ashr exact i64 %i.ys, 32                ; 2 uses
  %i.yv = tail call ptr %i.yt(ptr noundef nonnull %3, i64 noundef %i.yu) #6, !inline_history !108 ; 4 uses
  %i.yw = icmp eq ptr %i.yv, null
  br i1 %i.yw, label %bb.ee, label %.thread.i102.i

.thread.i102.i:                                   ; preds = %bb.ed
  %i.yx = load ptr, ptr %i.yj, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.yv, ptr align 4 %i.yx, i64 %i.yu, i1 false)
  store ptr %i.yv, ptr %i.yj, align 8, !tbaa !59
  %i.yy = getelementptr inbounds [4 x i8], ptr %i.yv, i64 %i.yr
  store ptr %i.yy, ptr %i.yl, align 8, !tbaa !60
  br label %uriMakeOwnerW.exit

bb.ee:                                            ; preds = %bb.dz, %bb.dq, %bb.di, %bb.cw, %bb.dn, %bb.de, %bb.da, %bb.ed
  %i.yz = load i32, ptr %i.a, align 4, !tbaa !8
  tail call fastcc void @uriPreventLeakageW(ptr noundef %0, i32 noundef %i.yz, ptr noundef %3)
  br label %bb.ef

uriMakeOwnerW.exit:                               ; preds = %.thread.i102.i, %bb.ec, %bb.eb
  store i32 1, ptr %i.tf, align 4, !tbaa !115
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.d = load ptr, ptr %0, align 8, !tbaa !17
  tail call void %i.c(ptr noundef %2, ptr noundef %i.d) #6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = and i32 %1, 2
  %.not58 = icmp eq i32 %i.e, 0
  br i1 %.not58, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !39
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29
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
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !26   ; 2 uses
  %.not60 = icmp eq ptr %i.m, null
  br i1 %.not60, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !39
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
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !27
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !28
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !39
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
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !33 ; 2 uses
  %.not6366 = icmp eq ptr %i.ab, null
  br i1 %.not6366, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.p
  %.067 = phi ptr [ %i.ab, %.lr.ph ], [ %i.ae, %bb.p ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.067, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !34 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.067, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !32
  %i.ah = load ptr, ptr %.067, align 8, !tbaa !31 ; 2 uses
  %i.ai = icmp ugt ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aj = load ptr, ptr %i.ac, align 8, !tbaa !39
  tail call void %i.aj(ptr noundef %2, ptr noundef %i.ah) #6
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ak = load ptr, ptr %i.ac, align 8, !tbaa !39
  tail call void %i.ak(ptr noundef %2, ptr noundef nonnull %.067) #6
  %.not63 = icmp eq ptr %i.ae, null
  br i1 %.not63, label %._crit_edge, label %bb.n, !llvm.loop !121

._crit_edge:                                      ; preds = %bb.p, %bb.m
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.l
  %i.al = and i32 %1, 16
  %.not64 = icmp eq i32 %i.al, 0
  br i1 %.not64, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !39
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !35
  tail call void %i.an(ptr noundef %2, ptr noundef %i.ap) #6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.aq = and i32 %1, 32
  %.not65 = icmp eq i32 %i.aq, 0
  br i1 %.not65, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !39
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !36
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
  %i.b = load ptr, ptr %1, align 8, !tbaa !21     ; 2 uses
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
  %wide.load = load <16 x i8>, ptr %gep, align 1, !tbaa !18
  %wide.load20 = load <16 x i8>, ptr %i.r, align 1, !tbaa !18
  %i.s = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !18
  store <16 x i8> %wide.load20, ptr %i.s, align 1, !tbaa !18
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !122

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %uriFixPercentEncodingEngineA.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check, label %.lr.ph49.i.preheader, label %vec.epilog.ph, !prof !61

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
  %wide.load25 = load <8 x i8>, ptr %gep35, align 1, !tbaa !18
  store <8 x i8> %wide.load25, ptr %next.gep24, align 1, !tbaa !18
  %index.next26 = add nuw i64 %index23, 8         ; 2 uses
  %i.w = icmp eq i64 %index.next26, %n.vec22
  br i1 %i.w, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !123

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
  %i.z = load i8, ptr %i.y, align 1, !tbaa !18
  store i8 %i.z, ptr %.347.i.prol, align 1, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %.347.i.prol, i64 1 ; 3 uses
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph49.i.prol.loopexit, label %.lr.ph49.i.prol, !llvm.loop !124

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
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !18  ; 2 uses
  %.not.i = icmp eq i8 %i.ag, 37
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  store i8 %i.ag, ptr %.03944.i, align 1, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %.03944.i, i64 1
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph.i
  %i.ai = getelementptr i8, ptr %i.af, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !18
  %i.ak = sext i32 %i.ad to i64
  %i.al = getelementptr inbounds i8, ptr %0, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !18
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
  store i8 %i.av, ptr %.03944.i, align 1, !tbaa !18
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i8 37, ptr %.03944.i, align 1, !tbaa !18
  %i.aw = tail call signext i8 @uriHexToLetterA(i32 noundef %i.ap) #6
  store i8 %i.aw, ptr %i.au, align 1, !tbaa !18
  %i.ax = tail call signext i8 @uriHexToLetterA(i32 noundef %i.ar) #6
  %i.ay = getelementptr inbounds nuw i8, ptr %.03944.i, i64 2
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %.03944.i, i64 3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %.241.i = phi ptr [ %i.ah, %bb.d ], [ %i.au, %bb.f ], [ %i.az, %bb.g ] ; 2 uses
  %.1.i = phi i32 [ %.045.i, %bb.d ], [ %i.ad, %bb.f ], [ %i.ad, %bb.g ] ; 2 uses
  %i.ba = add nsw i32 %.1.i, 1                    ; 2 uses
  %i.bb = add nsw i32 %.1.i, 3                    ; 2 uses
  %i.bc = icmp slt i32 %i.bb, %i.g
  br i1 %i.bc, label %.lr.ph.i, label %.preheader.i, !llvm.loop !0

.lr.ph49.i:                                       ; preds = %.lr.ph49.i.prol.loopexit, %.lr.ph49.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph49.i ], [ %indvars.iv.i.unr, %.lr.ph49.i.prol.loopexit ] ; 9 uses
  %.347.i = phi ptr [ %i.ch, %.lr.ph49.i ], [ %.347.i.unr, %.lr.ph49.i.prol.loopexit ] ; 9 uses
  %i.bd = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.i
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !18
  store i8 %i.be, ptr %.347.i, align 1, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %.347.i, i64 1
  %i.bg = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.bh = getelementptr i8, ptr %i.bg, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !18
  store i8 %i.bi, ptr %i.bf, align 1, !tbaa !18
  %i.bj = getelementptr inbounds nuw i8, ptr %.347.i, i64 2
  %i.bk = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.bl = getelementptr i8, ptr %i.bk, i64 2
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !18
  store i8 %i.bm, ptr %i.bj, align 1, !tbaa !18
  %i.bn = getelementptr inbounds nuw i8, ptr %.347.i, i64 3
  %i.bo = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.bp = getelementptr i8, ptr %i.bo, i64 3
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !18
  store i8 %i.bq, ptr %i.bn, align 1, !tbaa !18
  %i.br = getelementptr inbounds nuw i8, ptr %.347.i, i64 4
  %i.bs = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.bt = getelementptr i8, ptr %i.bs, i64 4
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !18
  store i8 %i.bu, ptr %i.br, align 1, !tbaa !18
  %i.bv = getelementptr inbounds nuw i8, ptr %.347.i, i64 5
  %i.bw = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.bx = getelementptr i8, ptr %i.bw, i64 5
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !18
  store i8 %i.by, ptr %i.bv, align 1, !tbaa !18
  %i.bz = getelementptr inbounds nuw i8, ptr %.347.i, i64 6
  %i.ca = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.cb = getelementptr i8, ptr %i.ca, i64 6
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !18
  store i8 %i.cc, ptr %i.bz, align 1, !tbaa !18
  %i.cd = getelementptr inbounds nuw i8, ptr %.347.i, i64 7
  %i.ce = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.cf = getelementptr i8, ptr %i.ce, i64 7
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !18
  store i8 %i.cg, ptr %i.cd, align 1, !tbaa !18
  %i.ch = getelementptr inbounds nuw i8, ptr %.347.i, i64 8 ; 2 uses
  %indvars.iv.next.i.7 = add nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.i.7, %i.k
  br i1 %exitcond.not.7, label %uriFixPercentEncodingEngineA.exit, label %.lr.ph49.i, !llvm.loop !125

uriFixPercentEncodingEngineA.exit:                ; preds = %.lr.ph49.i.prol.loopexit, %.lr.ph49.i, %middle.block, %vec.epilog.middle.block, %.preheader.i
  %.3.lcssa.i = phi ptr [ %.039.lcssa.i, %.preheader.i ], [ %i.v, %vec.epilog.middle.block ], [ %i.q, %middle.block ], [ %.lcssa.unr, %.lr.ph49.i.prol.loopexit ], [ %i.ch, %.lr.ph49.i ]
  store ptr %.3.lcssa.i, ptr %1, align 8, !tbaa !21
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.b, %uriFixPercentEncodingEngineA.exit
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @uriFixPercentEncodingMallocA(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !21     ; 2 uses
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
  %i.k = load ptr, ptr %2, align 8, !tbaa !25
  %i.l = and i64 %i.g, 2147483647
  %i.m = tail call ptr %i.k(ptr noundef nonnull %2, i64 noundef %i.l) #6 ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %0, align 8, !tbaa !21     ; 14 uses
  %i.p = load ptr, ptr %1, align 8, !tbaa !21
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
  %wide.load = load <16 x i8>, ptr %gep, align 1, !tbaa !18
  %wide.load38 = load <16 x i8>, ptr %i.ae, align 1, !tbaa !18
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !18
  store <16 x i8> %wide.load38, ptr %i.af, align 1, !tbaa !18
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !126

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %uriFixPercentEncodingEngineA.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ab, 0
  br i1 %min.epilog.iters.check, label %.lr.ph49.i.preheader, label %vec.epilog.ph, !prof !61

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
  %wide.load43 = load <8 x i8>, ptr %gep53, align 1, !tbaa !18
  store <8 x i8> %wide.load43, ptr %next.gep42, align 1, !tbaa !18
  %index.next44 = add nuw i64 %index41, 8         ; 2 uses
  %i.aj = icmp eq i64 %index.next44, %n.vec40
  br i1 %i.aj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !127

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
  %i.am = load i8, ptr %i.al, align 1, !tbaa !18
  store i8 %i.am, ptr %.347.i.prol, align 1, !tbaa !18
  %i.an = getelementptr inbounds nuw i8, ptr %.347.i.prol, i64 1 ; 3 uses
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph49.i.prol.loopexit, label %.lr.ph49.i.prol, !llvm.loop !128

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
  %i.at = load i8, ptr %i.as, align 1, !tbaa !18  ; 2 uses
  %.not.i = icmp eq i8 %i.at, 37
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  store i8 %i.at, ptr %.03944.i, align 1, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %.03944.i, i64 1
  br label %bb.k

bb.h:                                             ; preds = %.lr.ph.i
  %i.av = getelementptr i8, ptr %i.as, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !18
  %i.ax = sext i32 %i.aq to i64
  %i.ay = getelementptr inbounds i8, ptr %i.o, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !18
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
  store i8 %i.bi, ptr %.03944.i, align 1, !tbaa !18
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store i8 37, ptr %.03944.i, align 1, !tbaa !18
  %i.bj = tail call signext i8 @uriHexToLetterA(i32 noundef %i.bc) #6
  store i8 %i.bj, ptr %i.bh, align 1, !tbaa !18
  %i.bk = tail call signext i8 @uriHexToLetterA(i32 noundef %i.be) #6
  %i.bl = getelementptr inbounds nuw i8, ptr %.03944.i, i64 2
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !18
  %i.bm = getelementptr inbounds nuw i8, ptr %.03944.i, i64 3
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  %.241.i = phi ptr [ %i.au, %bb.g ], [ %i.bh, %bb.i ], [ %i.bm, %bb.j ] ; 2 uses
  %.1.i = phi i32 [ %.045.i, %bb.g ], [ %i.aq, %bb.i ], [ %i.aq, %bb.j ] ; 2 uses
  %i.bn = add nsw i32 %.1.i, 1                    ; 2 uses
  %i.bo = add nsw i32 %.1.i, 3                    ; 2 uses
  %i.bp = icmp slt i32 %i.bo, %i.t
  br i1 %i.bp, label %.lr.ph.i, label %.preheader.i, !llvm.loop !0

.lr.ph49.i:                                       ; preds = %.lr.ph49.i.prol.loopexit, %.lr.ph49.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph49.i ], [ %indvars.iv.i.unr, %.lr.ph49.i.prol.loopexit ] ; 9 uses
  %.347.i = phi ptr [ %i.cu, %.lr.ph49.i ], [ %.347.i.unr, %.lr.ph49.i.prol.loopexit ] ; 9 uses
  %i.bq = getelementptr inbounds i8, ptr %i.o, i64 %indvars.iv.i
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !18
  store i8 %i.br, ptr %.347.i, align 1, !tbaa !18
  %i.bs = getelementptr inbounds nuw i8, ptr %.347.i, i64 1
  %i.bt = getelementptr i8, ptr %i.o, i64 %indvars.iv.i
  %i.bu = getelementptr i8, ptr %i.bt, i64 1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !18
  store i8 %i.bv, ptr %i.bs, align 1, !tbaa !18
  %i.bw = getelementptr inbounds nuw i8, ptr %.347.i, i64 2
  %i.bx = getelementptr i8, ptr %i.o, i64 %indvars.iv.i
  %i.by = getelementptr i8, ptr %i.bx, i64 2
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !18
  store i8 %i.bz, ptr %i.bw, align 1, !tbaa !18
  %i.ca = getelementptr inbounds nuw i8, ptr %.347.i, i64 3
  %i.cb = getelementptr i8, ptr %i.o, i64 %indvars.iv.i
  %i.cc = getelementptr i8, ptr %i.cb, i64 3
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !18
  store i8 %i.cd, ptr %i.ca, align 1, !tbaa !18
  %i.ce = getelementptr inbounds nuw i8, ptr %.347.i, i64 4
  %i.cf = getelementptr i8, ptr %i.o, i64 %indvars.iv.i
  %i.cg = getelementptr i8, ptr %i.cf, i64 4
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !18
  store i8 %i.ch, ptr %i.ce, align 1, !tbaa !18
  %i.ci = getelementptr inbounds nuw i8, ptr %.347.i, i64 5
  %i.cj = getelementptr i8, ptr %i.o, i64 %indvars.iv.i
  %i.ck = getelementptr i8, ptr %i.cj, i64 5
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !18
  store i8 %i.cl, ptr %i.ci, align 1, !tbaa !18
  %i.cm = getelementptr inbounds nuw i8, ptr %.347.i, i64 6
  %i.cn = getelementptr i8, ptr %i.o, i64 %indvars.iv.i
  %i.co = getelementptr i8, ptr %i.cn, i64 6
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !18
  store i8 %i.cp, ptr %i.cm, align 1, !tbaa !18
  %i.cq = getelementptr inbounds nuw i8, ptr %.347.i, i64 7
  %i.cr = getelementptr i8, ptr %i.o, i64 %indvars.iv.i
  %i.cs = getelementptr i8, ptr %i.cr, i64 7
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !18
  store i8 %i.ct, ptr %i.cq, align 1, !tbaa !18
  %i.cu = getelementptr inbounds nuw i8, ptr %.347.i, i64 8 ; 2 uses
  %indvars.iv.next.i.7 = add nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.i.7, %i.x
  br i1 %exitcond.not.7, label %uriFixPercentEncodingEngineA.exit, label %.lr.ph49.i, !llvm.loop !129

uriFixPercentEncodingEngineA.exit:                ; preds = %.lr.ph49.i.prol.loopexit, %.lr.ph49.i, %middle.block, %vec.epilog.middle.block, %.preheader.i
  %.3.lcssa.i = phi ptr [ %.039.lcssa.i, %.preheader.i ], [ %i.ai, %vec.epilog.middle.block ], [ %i.ad, %middle.block ], [ %.lcssa.unr, %.lr.ph49.i.prol.loopexit ], [ %i.cu, %.lr.ph49.i ]
  store ptr %.3.lcssa.i, ptr %1, align 8, !tbaa !21
  store ptr %i.m, ptr %0, align 8, !tbaa !21
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
  %i.a = load i32, ptr %0, align 4, !tbaa !8
  %i.b = and i32 %i.a, %1
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !37     ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38   ; 2 uses
  %i.g = icmp ugt ptr %i.f, %i.d
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = sub i64 %i.h, %i.i
  %sext = shl i64 %i.j, 32
  %i.k = ashr exact i64 %sext, 32                 ; 3 uses
  %i.l = load ptr, ptr %3, align 8, !tbaa !25
  %i.m = tail call ptr %i.l(ptr noundef nonnull %3, i64 noundef %i.k) #6 ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  %i.o = load ptr, ptr %2, align 8, !tbaa !37
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr align 1 %i.o, i64 %i.k, i1 false)
  store ptr %i.m, ptr %2, align 8, !tbaa !37
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 %i.k
  store ptr %i.p, ptr %i.e, align 8, !tbaa !38
  %i.q = load i32, ptr %0, align 4, !tbaa !8
  %i.r = or i32 %i.q, %1
  store i32 %i.r, ptr %0, align 4, !tbaa !8
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.d = load ptr, ptr %0, align 8, !tbaa !45
  tail call void %i.c(ptr noundef %2, ptr noundef %i.d) #6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = and i32 %1, 2
  %.not58 = icmp eq i32 %i.e, 0
  br i1 %.not58, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !39
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !51
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
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !48   ; 2 uses
  %.not60 = icmp eq ptr %i.m, null
  br i1 %.not60, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !39
  tail call void %i.o(ptr noundef %2, ptr noundef nonnull %i.m) #6
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  br label %.sink.split

bb.h:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !46   ; 2 uses
  %.not61 = icmp eq ptr %i.r, null
  br i1 %.not61, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !49
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !50
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !39
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
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !55 ; 2 uses
  %.not6366 = icmp eq ptr %i.ab, null
  br i1 %.not6366, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.p
  %.067 = phi ptr [ %i.ab, %.lr.ph ], [ %i.ae, %bb.p ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.067, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !56 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.067, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !54
  %i.ah = load ptr, ptr %.067, align 8, !tbaa !53 ; 2 uses
  %i.ai = icmp ugt ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aj = load ptr, ptr %i.ac, align 8, !tbaa !39
  tail call void %i.aj(ptr noundef %2, ptr noundef %i.ah) #6
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ak = load ptr, ptr %i.ac, align 8, !tbaa !39
  tail call void %i.ak(ptr noundef %2, ptr noundef nonnull %.067) #6
  %.not63 = icmp eq ptr %i.ae, null
  br i1 %.not63, label %._crit_edge, label %bb.n, !llvm.loop !130

._crit_edge:                                      ; preds = %bb.p, %bb.m
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.l
  %i.al = and i32 %1, 16
  %.not64 = icmp eq i32 %i.al, 0
  br i1 %.not64, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !39
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !57
  tail call void %i.an(ptr noundef %2, ptr noundef %i.ap) #6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.aq = and i32 %1, 32
  %.not65 = icmp eq i32 %i.aq, 0
  br i1 %.not65, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !39
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !58
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
  %i.b = load ptr, ptr %1, align 8, !tbaa !47     ; 2 uses
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
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !8
  %wide.load23 = load <4 x i32>, ptr %i.t, align 4, !tbaa !8
  %i.u = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !8
  store <4 x i32> %wide.load23, ptr %i.u, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !131

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
  %i.y = load i32, ptr %i.x, align 4, !tbaa !8
  store i32 %i.y, ptr %.348.i.prol, align 4, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %.348.i.prol, i64 4 ; 3 uses
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph50.i.prol.loopexit, label %.lr.ph50.i.prol, !llvm.loop !132

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
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !8  ; 2 uses
  %.not.i = icmp eq i32 %i.af, 37
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  store i32 %i.af, ptr %.03945.i, align 4, !tbaa !8
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph.i
  %i.ag = getelementptr i8, ptr %i.ae, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !8
  %i.ai = sext i32 %i.ac to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !8
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
  store i32 %i.aq, ptr %.03945.i, align 4, !tbaa !8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i32 37, ptr %.03945.i, align 4, !tbaa !8
  %i.as = tail call i32 @uriHexToLetterW(i32 noundef %i.an) #6
  %i.at = getelementptr inbounds nuw i8, ptr %.03945.i, i64 4
  store i32 %i.as, ptr %i.at, align 4, !tbaa !8
  %i.au = tail call i32 @uriHexToLetterW(i32 noundef %i.ap) #6
  %i.av = getelementptr inbounds nuw i8, ptr %.03945.i, i64 8
  store i32 %i.au, ptr %i.av, align 4, !tbaa !8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %.sink.i = phi i64 [ 4, %bb.f ], [ 12, %bb.g ], [ 4, %bb.d ]
  %.1.i = phi i32 [ %i.ac, %bb.f ], [ %i.ac, %bb.g ], [ %.046.i, %bb.d ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.03945.i, i64 %.sink.i ; 2 uses
  %i.ax = add nsw i32 %.1.i, 1                    ; 2 uses
  %i.ay = add nsw i32 %.1.i, 3                    ; 2 uses
  %i.az = icmp slt i32 %i.ay, %i.h
  br i1 %i.az, label %.lr.ph.i, label %.preheader.i, !llvm.loop !1

.lr.ph50.i:                                       ; preds = %.lr.ph50.i.prol.loopexit, %.lr.ph50.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph50.i ], [ %indvars.iv.i.unr, %.lr.ph50.i.prol.loopexit ] ; 9 uses
  %.348.i = phi ptr [ %i.ce, %.lr.ph50.i ], [ %.348.i.unr, %.lr.ph50.i.prol.loopexit ] ; 9 uses
  %i.ba = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !8
  store i32 %i.bb, ptr %.348.i, align 4, !tbaa !8
  %i.bc = getelementptr inbounds nuw i8, ptr %.348.i, i64 4
  %i.bd = getelementptr [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.be = getelementptr i8, ptr %i.bd, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !8
  store i32 %i.bf, ptr %i.bc, align 4, !tbaa !8
  %i.bg = getelementptr inbounds nuw i8, ptr %.348.i, i64 8
  %i.bh = getelementptr [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.bi = getelementptr i8, ptr %i.bh, i64 8
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !8
  store i32 %i.bj, ptr %i.bg, align 4, !tbaa !8
  %i.bk = getelementptr inbounds nuw i8, ptr %.348.i, i64 12
  %i.bl = getelementptr [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.bm = getelementptr i8, ptr %i.bl, i64 12
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !8
  store i32 %i.bn, ptr %i.bk, align 4, !tbaa !8
  %i.bo = getelementptr inbounds nuw i8, ptr %.348.i, i64 16
  %i.bp = getelementptr [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.bq = getelementptr i8, ptr %i.bp, i64 16
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !8
  store i32 %i.br, ptr %i.bo, align 4, !tbaa !8
  %i.bs = getelementptr inbounds nuw i8, ptr %.348.i, i64 20
  %i.bt = getelementptr [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.bu = getelementptr i8, ptr %i.bt, i64 20
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !8
  store i32 %i.bv, ptr %i.bs, align 4, !tbaa !8
  %i.bw = getelementptr inbounds nuw i8, ptr %.348.i, i64 24
  %i.bx = getelementptr [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.by = getelementptr i8, ptr %i.bx, i64 24
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !8
  store i32 %i.bz, ptr %i.bw, align 4, !tbaa !8
  %i.ca = getelementptr inbounds nuw i8, ptr %.348.i, i64 28
  %i.cb = getelementptr [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.cc = getelementptr i8, ptr %i.cb, i64 28
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !8
  store i32 %i.cd, ptr %i.ca, align 4, !tbaa !8
  %i.ce = getelementptr inbounds nuw i8, ptr %.348.i, i64 32 ; 2 uses
  %indvars.iv.next.i.7 = add nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %wide.trip.count.i
  br i1 %exitcond.not.i.7, label %uriFixPercentEncodingEngineW.exit, label %.lr.ph50.i, !llvm.loop !133

uriFixPercentEncodingEngineW.exit:                ; preds = %.lr.ph50.i.prol.loopexit, %.lr.ph50.i, %middle.block, %.preheader.i
  %.3.lcssa.i = phi ptr [ %.039.lcssa.i, %.preheader.i ], [ %i.r, %middle.block ], [ %.lcssa.unr, %.lr.ph50.i.prol.loopexit ], [ %i.ce, %.lr.ph50.i ]
  store ptr %.3.lcssa.i, ptr %1, align 8, !tbaa !47
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.b, %uriFixPercentEncodingEngineW.exit
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @uriFixPercentEncodingMallocW(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !47     ; 2 uses
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
  %i.l = load ptr, ptr %2, align 8, !tbaa !25
  %i.m = and i64 %i.g, 8589934588
  %i.n = tail call ptr %i.l(ptr noundef nonnull %2, i64 noundef %i.m) #6 ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %0, align 8, !tbaa !47     ; 13 uses
  %i.q = load ptr, ptr %1, align 8, !tbaa !47
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
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !8
  %wide.load41 = load <4 x i32>, ptr %i.ah, align 4, !tbaa !8
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !8
  store <4 x i32> %wide.load41, ptr %i.ai, align 4, !tbaa !8
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
  %i.am = load i32, ptr %i.al, align 4, !tbaa !8
  store i32 %i.am, ptr %.348.i.prol, align 4, !tbaa !8
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
  %i.at = load i32, ptr %i.as, align 4, !tbaa !8  ; 2 uses
  %.not.i = icmp eq i32 %i.at, 37
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  store i32 %i.at, ptr %.03945.i, align 4, !tbaa !8
  br label %bb.k

bb.h:                                             ; preds = %.lr.ph.i
  %i.au = getelementptr i8, ptr %i.as, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !8
  %i.aw = sext i32 %i.aq to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !8
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
  store i32 %i.be, ptr %.03945.i, align 4, !tbaa !8
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store i32 37, ptr %.03945.i, align 4, !tbaa !8
  %i.bg = tail call i32 @uriHexToLetterW(i32 noundef %i.bb) #6
  %i.bh = getelementptr inbounds nuw i8, ptr %.03945.i, i64 4
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !8
  %i.bi = tail call i32 @uriHexToLetterW(i32 noundef %i.bd) #6
  %i.bj = getelementptr inbounds nuw i8, ptr %.03945.i, i64 8
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  %.sink.i = phi i64 [ 4, %bb.i ], [ 12, %bb.j ], [ 4, %bb.g ]
  %.1.i = phi i32 [ %i.aq, %bb.i ], [ %i.aq, %bb.j ], [ %.046.i, %bb.g ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.03945.i, i64 %.sink.i ; 2 uses
  %i.bl = add nsw i32 %.1.i, 1                    ; 2 uses
  %i.bm = add nsw i32 %.1.i, 3                    ; 2 uses
  %i.bn = icmp slt i32 %i.bm, %i.v
  br i1 %i.bn, label %.lr.ph.i, label %.preheader.i, !llvm.loop !1

.lr.ph50.i:                                       ; preds = %.lr.ph50.i.prol.loopexit, %.lr.ph50.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph50.i ], [ %indvars.iv.i.unr, %.lr.ph50.i.prol.loopexit ] ; 9 uses
  %.348.i = phi ptr [ %i.cs, %.lr.ph50.i ], [ %.348.i.unr, %.lr.ph50.i.prol.loopexit ] ; 9 uses
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !8
  store i32 %i.bp, ptr %.348.i, align 4, !tbaa !8
  %i.bq = getelementptr inbounds nuw i8, ptr %.348.i, i64 4
  %i.br = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.bs = getelementptr i8, ptr %i.br, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !8
  store i32 %i.bt, ptr %i.bq, align 4, !tbaa !8
  %i.bu = getelementptr inbounds nuw i8, ptr %.348.i, i64 8
  %i.bv = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.bw = getelementptr i8, ptr %i.bv, i64 8
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !8
  store i32 %i.bx, ptr %i.bu, align 4, !tbaa !8
  %i.by = getelementptr inbounds nuw i8, ptr %.348.i, i64 12
  %i.bz = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.ca = getelementptr i8, ptr %i.bz, i64 12
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !8
  store i32 %i.cb, ptr %i.by, align 4, !tbaa !8
  %i.cc = getelementptr inbounds nuw i8, ptr %.348.i, i64 16
  %i.cd = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.ce = getelementptr i8, ptr %i.cd, i64 16
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !8
  store i32 %i.cf, ptr %i.cc, align 4, !tbaa !8
  %i.cg = getelementptr inbounds nuw i8, ptr %.348.i, i64 20
  %i.ch = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.ci = getelementptr i8, ptr %i.ch, i64 20
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !8
  store i32 %i.cj, ptr %i.cg, align 4, !tbaa !8
  %i.ck = getelementptr inbounds nuw i8, ptr %.348.i, i64 24
  %i.cl = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.cm = getelementptr i8, ptr %i.cl, i64 24
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !8
  store i32 %i.cn, ptr %i.ck, align 4, !tbaa !8
  %i.co = getelementptr inbounds nuw i8, ptr %.348.i, i64 28
  %i.cp = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.cq = getelementptr i8, ptr %i.cp, i64 28
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !8
  store i32 %i.cr, ptr %i.co, align 4, !tbaa !8
  %i.cs = getelementptr inbounds nuw i8, ptr %.348.i, i64 32 ; 2 uses
  %indvars.iv.next.i.7 = add nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %wide.trip.count.i
  br i1 %exitcond.not.i.7, label %uriFixPercentEncodingEngineW.exit, label %.lr.ph50.i, !llvm.loop !136

uriFixPercentEncodingEngineW.exit:                ; preds = %.lr.ph50.i.prol.loopexit, %.lr.ph50.i, %middle.block, %.preheader.i
  %.3.lcssa.i = phi ptr [ %.039.lcssa.i, %.preheader.i ], [ %i.af, %middle.block ], [ %.lcssa.unr, %.lr.ph50.i.prol.loopexit ], [ %i.cs, %.lr.ph50.i ]
  store ptr %.3.lcssa.i, ptr %1, align 8, !tbaa !47
  store ptr %i.n, ptr %0, align 8, !tbaa !47
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
  %i.a = load i32, ptr %0, align 4, !tbaa !8
  %i.b = and i32 %i.a, %1
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !59     ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !60   ; 2 uses
  %i.g = icmp ugt ptr %i.f, %i.d
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = sub i64 %i.h, %i.i
  %sext = shl i64 %i.j, 30
  %i.k = ashr i64 %sext, 32                       ; 2 uses
  %i.l = shl i64 %i.k, 34
  %i.m = load ptr, ptr %3, align 8, !tbaa !25
  %i.n = ashr exact i64 %i.l, 32                  ; 2 uses
  %i.o = tail call ptr %i.m(ptr noundef nonnull %3, i64 noundef %i.n) #6 ; 4 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  %i.q = load ptr, ptr %2, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.q, i64 %i.n, i1 false)
  store ptr %i.o, ptr %2, align 8, !tbaa !59
  %i.r = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.k
  store ptr %i.r, ptr %i.e, align 8, !tbaa !60
  %i.s = load i32, ptr %0, align 4, !tbaa !8
  %i.t = or i32 %i.s, %1
  store i32 %i.t, ptr %0, align 4, !tbaa !8
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

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !19}
!1 = distinct !{!1, !19}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!7, !7, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"UriTextRangeStructA", !10, i64 0, !10, i64 8}
!12 = !{!"p1 _ZTS12UriIp4Struct", !9, i64 0}
!13 = !{!"p1 _ZTS12UriIp6Struct", !9, i64 0}
!14 = !{!"UriHostDataStructA", !12, i64 0, !13, i64 8, !11, i64 16}
!15 = !{!"p1 _ZTS21UriPathSegmentStructA", !9, i64 0}
!16 = !{!"UriUriStructA", !11, i64 0, !11, i64 16, !11, i64 32, !14, i64 48, !11, i64 80, !15, i64 96, !15, i64 104, !11, i64 112, !11, i64 128, !7, i64 144, !7, i64 148, !9, i64 152}
!17 = !{!16, !10, i64 0}
!18 = !{!6, !6, i64 0}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!16, !10, i64 32}
!21 = !{!10, !10, i64 0}
!22 = !{!"llvm.loop.isvectorized", i32 1}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = !{!"UriMemoryManagerStruct", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40}
!25 = !{!24, !9, i64 0}
!26 = !{!16, !10, i64 64}
!27 = !{!16, !12, i64 48}
!28 = !{!16, !13, i64 56}
!29 = !{!16, !10, i64 16}
!30 = !{!"UriPathSegmentStructA", !11, i64 0, !15, i64 16, !9, i64 24}
!31 = !{!30, !10, i64 0}
!32 = !{!30, !10, i64 8}
!33 = !{!16, !15, i64 96}
!34 = !{!30, !15, i64 16}
!35 = !{!16, !10, i64 112}
!36 = !{!16, !10, i64 128}
!37 = !{!11, !10, i64 0}
!38 = !{!11, !10, i64 8}
!39 = !{!24, !9, i64 32}
!40 = !{!"p1 int", !9, i64 0}
!41 = !{!"UriTextRangeStructW", !40, i64 0, !40, i64 8}
!42 = !{!"UriHostDataStructW", !12, i64 0, !13, i64 8, !41, i64 16}
!43 = !{!"p1 _ZTS21UriPathSegmentStructW", !9, i64 0}
!44 = !{!"UriUriStructW", !41, i64 0, !41, i64 16, !41, i64 32, !42, i64 48, !41, i64 80, !43, i64 96, !43, i64 104, !41, i64 112, !41, i64 128, !7, i64 144, !7, i64 148, !9, i64 152}
!45 = !{!44, !40, i64 0}
!46 = !{!44, !40, i64 32}
!47 = !{!40, !40, i64 0}
!48 = !{!44, !40, i64 64}
!49 = !{!44, !12, i64 48}
!50 = !{!44, !13, i64 56}
!51 = !{!44, !40, i64 16}
!52 = !{!"UriPathSegmentStructW", !41, i64 0, !43, i64 16, !9, i64 24}
!53 = !{!52, !40, i64 0}
!54 = !{!52, !40, i64 8}
!55 = !{!44, !43, i64 96}
!56 = !{!52, !43, i64 16}
!57 = !{!44, !40, i64 112}
!58 = !{!44, !40, i64 128}
!59 = !{!41, !40, i64 0}
!60 = !{!41, !40, i64 8}
!61 = !{!"branch_weights", i32 8, i32 24}
!62 = !{!"llvm.loop.unroll.disable"}
!63 = distinct !{!63, !19}
!64 = distinct !{!64, !19}
!65 = distinct !{!65, !19, !22, !23}
!66 = distinct !{!66, !19, !22, !23}
!67 = distinct !{!67, !19, !23, !22}
!68 = distinct !{null}
!69 = distinct !{!69, !19}
!70 = distinct !{!70, !19, !22, !23}
!71 = distinct !{!71, !19, !22, !23}
!72 = distinct !{!72, !19, !23, !22}
!73 = distinct !{!73, !19, !22, !23}
!74 = distinct !{!74, !19, !22, !23}
!75 = distinct !{!75, !19, !23, !22}
!76 = distinct !{!76, !19}
!77 = distinct !{!77, !19}
!78 = distinct !{null, ptr @uriMakeRangeOwnerA}
!79 = distinct !{null}
!80 = distinct !{!80, !19}
!81 = distinct !{!81, !19}
!82 = distinct !{!82, !19}
!83 = !{!16, !10, i64 8}
!84 = !{!16, !10, i64 40}
!85 = !{!16, !7, i64 148}
!86 = !{!"branch_weights", i32 8, i32 8}
!87 = !{!16, !10, i64 72}
!88 = !{!16, !10, i64 24}
!89 = !{!15, !15, i64 0}
!90 = !{!16, !7, i64 144}
!91 = !{!16, !10, i64 120}
!92 = !{!16, !10, i64 136}
!93 = distinct !{!93, !19}
!94 = distinct !{!94, !19}
!95 = distinct !{!95, !19, !22, !23}
!96 = distinct !{!96, !19, !23, !22}
!97 = distinct !{null}
!98 = distinct !{!98, !19, !22, !23}
!99 = distinct !{!99, !19, !22}
!100 = distinct !{!100, !19, !22, !23}
!101 = distinct !{!101, !19, !23, !22}
!102 = distinct !{!102, !19, !22, !23}
!103 = distinct !{!103, !19, !22}
!104 = distinct !{!104, !19, !22, !23}
!105 = distinct !{!105, !19, !23, !22}
!106 = distinct !{!106, !19}
!107 = distinct !{!107, !19}
!108 = distinct !{null, ptr @uriMakeRangeOwnerW}
!109 = distinct !{null}
!110 = distinct !{!110, !19}
!111 = distinct !{!111, !19}
!112 = distinct !{!112, !19}
!113 = !{!44, !40, i64 8}
!114 = !{!44, !40, i64 40}
!115 = !{!44, !7, i64 148}
!116 = !{!44, !40, i64 24}
!117 = !{!43, !43, i64 0}
!118 = !{!44, !7, i64 144}
!119 = !{!44, !40, i64 120}
!120 = !{!44, !40, i64 136}
!121 = distinct !{!121, !19}
!122 = distinct !{!122, !19, !22, !23}
!123 = distinct !{!123, !19, !22, !23}
!124 = distinct !{!124, !62}
!125 = distinct !{!125, !19, !22}
!126 = distinct !{!126, !19, !22, !23}
!127 = distinct !{!127, !19, !22, !23}
!128 = distinct !{!128, !62}
!129 = distinct !{!129, !19, !22}
!130 = distinct !{!130, !19}
!131 = distinct !{!131, !19, !22, !23}
!132 = distinct !{!132, !62}
!133 = distinct !{!133, !19, !22}
!134 = distinct !{!134, !19, !22, !23}
!135 = distinct !{!135, !62}
!136 = distinct !{!136, !19, !22}
end_hunk_3
