inline.NumInlined: 48
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@uriNormalizeSyntaxExMmA:bb.a
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %uriNormalizeSyntaxMaskRequiredExW.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull readonly align 8 dereferenceable(160) %0, i64 160, i1 false)
  %i.c = call fastcc i32 @uriNormalizeSyntaxEngineW(ptr noundef nonnull %1, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef null) ; 0 uses
  %.pre = load i32, ptr %i.a, align 4, !tbaa !3
  br label %uriNormalizeSyntaxMaskRequiredExW.exit

uriNormalizeSyntaxMaskRequiredExW.exit:           ; preds = %bb.a, %bb.b
  %i.d = phi i32 [ 0, %bb.a ], [ %.pre, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define range(i32 0, 3) i32 @uriNormalizeSyntaxMaskRequiredExW(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.UriUriStructW, align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
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
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret i32 %.0
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 4) i32 @uriNormalizeSyntaxEngineW(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(address_is_null) %2, ptr noundef %3) unnamed_addr #2 {
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
  %.not182 = phi i1 [ true, %bb.f ], [ %or.cond18.i, %.preheader.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !76   ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !77   ; 4 uses
  %i.q = icmp ne ptr %i.n, null
  %i.r = icmp ugt ptr %i.p, %i.n
  %or.cond17.i213 = and i1 %i.q, %i.r             ; 2 uses
  br i1 %or.cond17.i213, label %.preheader.i215, label %uriContainsUppercaseLettersW.exit218

.preheader.i215:                                  ; preds = %uriContainsUppercaseLettersW.exit, %.preheader.i215
  %.01219.i216 = phi ptr [ %i.u, %.preheader.i215 ], [ %i.n, %uriContainsUppercaseLettersW.exit ] ; 2 uses
  %i.s = load i32, ptr %.01219.i216, align 4, !tbaa !3
  %i.t = add i32 %i.s, -91
  %or.cond18.i217 = icmp ult i32 %i.t, -26        ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.01219.i216, i64 4 ; 2 uses
  %i.v = icmp ult ptr %i.u, %i.p
  %or.cond535.a = select i1 %or.cond18.i217, i1 %i.v, i1 false
  br i1 %or.cond535.a, label %.preheader.i215, label %uriContainsUppercaseLettersW.exit218, !llvm.loop !75

uriContainsUppercaseLettersW.exit218:             ; preds = %.preheader.i215, %uriContainsUppercaseLettersW.exit
  %.not183 = phi i1 [ true, %uriContainsUppercaseLettersW.exit ], [ %or.cond18.i217, %.preheader.i215 ]
  br i1 %.not182, label %bb.h, label %bb.g

bb.g:                                             ; preds = %uriContainsUppercaseLettersW.exit218
  store i32 1, ptr %2, align 4, !tbaa !3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %uriContainsUppercaseLettersW.exit218
  %i.w = phi i32 [ 5, %bb.g ], [ 4, %uriContainsUppercaseLettersW.exit218 ]
  br i1 %.not183, label %bb.i, label %uriContainsUglyPercentEncodingW.exit.thread289.sink.split

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.y = icmp ult ptr %i.x, %i.p
  %or.cond.i = select i1 %or.cond17.i213, i1 %i.y, i1 false
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
  %i.ah = tail call zeroext i8 @uriHexdigToIntW(i32 noundef %i.ad) #7
  %i.ai = load i32, ptr %i.z, align 4, !tbaa !3
  %i.aj = tail call zeroext i8 @uriHexdigToIntW(i32 noundef %i.ai) #7
  %i.ak = zext i8 %i.ah to i32
  %i.al = shl nuw nsw i32 %i.ak, 4
  %i.am = zext i8 %i.aj to i32
  %i.an = add nuw nsw i32 %i.al, %i.am
  %i.ao = tail call i32 @uriIsUnreserved(i32 noundef %i.an) #7
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
  br label %uriContainsUglyPercentEncodingW.exit.thread289.sink.split

bb.o:                                             ; preds = %bb.e
  %i.au = and i32 %1, 1
  %.not171 = icmp eq i32 %i.au, 0
  br i1 %.not171, label %uriLowercaseInplaceW.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = load ptr, ptr %0, align 8, !tbaa !68    ; 14 uses
  %.not172 = icmp eq ptr %i.av, null
  br i1 %.not172, label %uriLowercaseInplaceW.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !79
  %.not173 = icmp eq i32 %i.ax, 0
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !80 ; 5 uses
  br i1 %.not173, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = icmp ugt ptr %i.az, %i.av
  br i1 %i.ba, label %.preheader.i219.preheader, label %uriLowercaseInplaceW.exit

.preheader.i219.preheader:                        ; preds = %bb.r
  %4 = ptrtoint ptr %i.az to i64
  %5 = ptrtoint ptr %i.av to i64                  ; 2 uses
  %i.bb = add i64 %5, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %4, i64 %i.bb)
  %i.bc = xor i64 %5, -1
  %i.bd = add i64 %umax, %i.bc                    ; 2 uses
  %i.be = lshr i64 %i.bd, 2
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bd, 28
  br i1 %min.iters.check, label %.preheader.i219.preheader544, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i219.preheader
  %n.vec = and i64 %i.bf, 9223372036854775800     ; 3 uses
  %i.bg = shl i64 %n.vec, 2
  %i.bh = getelementptr i8, ptr %i.av, i64 %i.bg
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue428, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue428 ] ; 2 uses
  %i.bi = shl i64 %index, 2                       ; 8 uses
  %next.gep = getelementptr i8, ptr %i.av, i64 %i.bi ; 3 uses
  %i.bj = getelementptr i8, ptr %i.av, i64 %i.bi
  %next.gep407 = getelementptr i8, ptr %i.bj, i64 4
  %i.bk = getelementptr i8, ptr %i.av, i64 %i.bi
  %next.gep408 = getelementptr i8, ptr %i.bk, i64 8
  %i.bl = getelementptr i8, ptr %i.av, i64 %i.bi
  %next.gep409 = getelementptr i8, ptr %i.bl, i64 12
  %i.bm = getelementptr i8, ptr %i.av, i64 %i.bi
  %next.gep410 = getelementptr i8, ptr %i.bm, i64 16
  %i.bn = getelementptr i8, ptr %i.av, i64 %i.bi
  %next.gep411 = getelementptr i8, ptr %i.bn, i64 20
  %i.bo = getelementptr i8, ptr %i.av, i64 %i.bi
  %next.gep412 = getelementptr i8, ptr %i.bo, i64 24
  %i.bp = getelementptr i8, ptr %i.av, i64 %i.bi
  %next.gep413 = getelementptr i8, ptr %i.bp, i64 28
  %i.bq = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !3 ; 5 uses
  %wide.load414 = load <4 x i32>, ptr %i.bq, align 4, !tbaa !3 ; 5 uses
  %i.br = add <4 x i32> %wide.load, splat (i32 -65)
  %i.bs = add <4 x i32> %wide.load414, splat (i32 -65)
  %i.bt = icmp ult <4 x i32> %i.br, splat (i32 26) ; 4 uses
  %i.bu = icmp ult <4 x i32> %i.bs, splat (i32 26) ; 4 uses
  %i.bv = extractelement <4 x i1> %i.bt, i64 0
  br i1 %i.bv, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.bw = extractelement <4 x i32> %wide.load, i64 0
  %i.bx = or disjoint i32 %i.bw, 32
  store i32 %i.bx, ptr %next.gep, align 4, !tbaa !3
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.by = extractelement <4 x i1> %i.bt, i64 1
  br i1 %i.by, label %pred.store.if415, label %pred.store.continue416

pred.store.if415:                                 ; preds = %pred.store.continue
  %i.bz = extractelement <4 x i32> %wide.load, i64 1
  %i.ca = or disjoint i32 %i.bz, 32
  store i32 %i.ca, ptr %next.gep407, align 4, !tbaa !3
  br label %pred.store.continue416

pred.store.continue416:                           ; preds = %pred.store.if415, %pred.store.continue
  %i.cb = extractelement <4 x i1> %i.bt, i64 2
  br i1 %i.cb, label %pred.store.if417, label %pred.store.continue418

pred.store.if417:                                 ; preds = %pred.store.continue416
  %i.cc = extractelement <4 x i32> %wide.load, i64 2
  %i.cd = or disjoint i32 %i.cc, 32
  store i32 %i.cd, ptr %next.gep408, align 4, !tbaa !3
  br label %pred.store.continue418

pred.store.continue418:                           ; preds = %pred.store.if417, %pred.store.continue416
  %i.ce = extractelement <4 x i1> %i.bt, i64 3
  br i1 %i.ce, label %pred.store.if419, label %pred.store.continue420

pred.store.if419:                                 ; preds = %pred.store.continue418
  %i.cf = extractelement <4 x i32> %wide.load, i64 3
  %i.cg = or disjoint i32 %i.cf, 32
  store i32 %i.cg, ptr %next.gep409, align 4, !tbaa !3
  br label %pred.store.continue420

pred.store.continue420:                           ; preds = %pred.store.if419, %pred.store.continue418
  %i.ch = extractelement <4 x i1> %i.bu, i64 0
  br i1 %i.ch, label %pred.store.if421, label %pred.store.continue422

pred.store.if421:                                 ; preds = %pred.store.continue420
  %i.ci = extractelement <4 x i32> %wide.load414, i64 0
  %i.cj = or disjoint i32 %i.ci, 32
  store i32 %i.cj, ptr %next.gep410, align 4, !tbaa !3
  br label %pred.store.continue422

pred.store.continue422:                           ; preds = %pred.store.if421, %pred.store.continue420
  %i.ck = extractelement <4 x i1> %i.bu, i64 1
  br i1 %i.ck, label %pred.store.if423, label %pred.store.continue424

pred.store.if423:                                 ; preds = %pred.store.continue422
  %i.cl = extractelement <4 x i32> %wide.load414, i64 1
  %i.cm = or disjoint i32 %i.cl, 32
  store i32 %i.cm, ptr %next.gep411, align 4, !tbaa !3
  br label %pred.store.continue424

pred.store.continue424:                           ; preds = %pred.store.if423, %pred.store.continue422
  %i.cn = extractelement <4 x i1> %i.bu, i64 2
  br i1 %i.cn, label %pred.store.if425, label %pred.store.continue426

pred.store.if425:                                 ; preds = %pred.store.continue424
  %i.co = extractelement <4 x i32> %wide.load414, i64 2
  %i.cp = or disjoint i32 %i.co, 32
  store i32 %i.cp, ptr %next.gep412, align 4, !tbaa !3
  br label %pred.store.continue426

pred.store.continue426:                           ; preds = %pred.store.if425, %pred.store.continue424
  %i.cq = extractelement <4 x i1> %i.bu, i64 3
  br i1 %i.cq, label %pred.store.if427, label %pred.store.continue428

pred.store.if427:                                 ; preds = %pred.store.continue426
  %i.cr = extractelement <4 x i32> %wide.load414, i64 3
  %i.cs = or disjoint i32 %i.cr, 32
  store i32 %i.cs, ptr %next.gep413, align 4, !tbaa !3
  br label %pred.store.continue428

pred.store.continue428:                           ; preds = %pred.store.if427, %pred.store.continue426
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ct = icmp eq i64 %index.next, %n.vec
  br i1 %i.ct, label %middle.block, label %vector.body, !llvm.loop !81

middle.block:                                     ; preds = %pred.store.continue428
  %cmp.n = icmp eq i64 %i.bf, %n.vec
  br i1 %cmp.n, label %uriLowercaseInplaceW.exit, label %.preheader.i219.preheader544

.preheader.i219.preheader544:                     ; preds = %.preheader.i219.preheader, %middle.block
  %.018.i.ph = phi ptr [ %i.av, %.preheader.i219.preheader ], [ %i.bh, %middle.block ]
  br label %.preheader.i219

.preheader.i219:                                  ; preds = %.preheader.i219.preheader544, %bb.t
  %.018.i = phi ptr [ %i.cx, %bb.t ], [ %.018.i.ph, %.preheader.i219.preheader544 ] ; 3 uses
  %i.cu = load i32, ptr %.018.i, align 4, !tbaa !3 ; 2 uses
  %i.cv = add i32 %i.cu, -65
  %or.cond17.i220 = icmp ult i32 %i.cv, 26
  br i1 %or.cond17.i220, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.preheader.i219
  %i.cw = or disjoint i32 %i.cu, 32
  store i32 %i.cw, ptr %.018.i, align 4, !tbaa !3
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.preheader.i219
  %i.cx = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.cy = icmp ult ptr %i.cx, %i.az
  br i1 %i.cy, label %.preheader.i219, label %uriLowercaseInplaceW.exit, !llvm.loop !82

bb.u:                                             ; preds = %bb.q
  %i.cz = icmp eq ptr %i.az, null
  br i1 %i.cz, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.da = ptrtoint ptr %i.az to i64
  %i.db = ptrtoint ptr %i.av to i64
  %i.dc = sub i64 %i.da, %i.db                    ; 2 uses
  %i.dd = lshr exact i64 %i.dc, 2                 ; 3 uses
  %i.de = trunc i64 %i.dd to i32                  ; 2 uses
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %uriLowercaseMallocW.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dg = icmp slt i32 %i.de, 0
  br i1 %i.dg, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dh = load ptr, ptr %3, align 8, !tbaa !31
  %i.di = and i64 %i.dd, 2147483647               ; 6 uses
  %i.dj = shl nuw nsw i64 %i.di, 2
  %i.dk = tail call ptr %i.dh(ptr noundef nonnull %3, i64 noundef %i.dj) #7, !inline_history !83 ; 8 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %bb.y, label %.lr.ph.i221

.lr.ph.i221:                                      ; preds = %bb.x
  %i.dm = ptrtoaddr ptr %i.dk to i64
  %i.dn = load ptr, ptr %0, align 8, !tbaa !80    ; 5 uses
  %min.iters.check430 = icmp samesign ult i64 %i.di, 8
  %i.do = ptrtoaddr ptr %i.dn to i64
  %i.dp = sub i64 %i.do, %i.dm
  %diff.check = icmp ugt i64 %i.dp, -32
  %or.cond537.a = select i1 %min.iters.check430, i1 true, i1 %diff.check
  br i1 %or.cond537.a, label %scalar.ph429.preheader, label %vector.ph431

vector.ph431:                                     ; preds = %.lr.ph.i221
  %n.vec433 = and i64 %i.dd, 2147483640           ; 3 uses
  br label %vector.body434

vector.body434:                                   ; preds = %vector.body434, %vector.ph431
  %index435 = phi i64 [ 0, %vector.ph431 ], [ %index.next438, %vector.body434 ] ; 3 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %index435 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %wide.load436 = load <4 x i32>, ptr %i.dq, align 4, !tbaa !3 ; 3 uses
  %wide.load437 = load <4 x i32>, ptr %i.dr, align 4, !tbaa !3 ; 3 uses
  %i.ds = add <4 x i32> %wide.load436, splat (i32 -65)
  %i.dt = add <4 x i32> %wide.load437, splat (i32 -65)
  %i.du = icmp ult <4 x i32> %i.ds, splat (i32 26)
  %i.dv = icmp ult <4 x i32> %i.dt, splat (i32 26)
  %i.dw = or disjoint <4 x i32> %wide.load436, splat (i32 32)
  %i.dx = or disjoint <4 x i32> %wide.load437, splat (i32 32)
  %i.dy = select <4 x i1> %i.du, <4 x i32> %i.dw, <4 x i32> %wide.load436
  %i.dz = select <4 x i1> %i.dv, <4 x i32> %i.dx, <4 x i32> %wide.load437
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %index435 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store <4 x i32> %i.dy, ptr %i.ea, align 4, !tbaa !3
  store <4 x i32> %i.dz, ptr %i.eb, align 4, !tbaa !3
  %index.next438 = add nuw i64 %index435, 8       ; 2 uses
  %i.ec = icmp eq i64 %index.next438, %n.vec433
  br i1 %i.ec, label %middle.block439, label %vector.body434, !llvm.loop !84

middle.block439:                                  ; preds = %vector.body434
  %cmp.n440 = icmp eq i64 %i.di, %n.vec433
  br i1 %cmp.n440, label %._crit_edge.i, label %scalar.ph429.preheader

scalar.ph429.preheader:                           ; preds = %.lr.ph.i221, %middle.block439
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i221 ], [ %n.vec433, %middle.block439 ] ; 5 uses
  %.neg = or disjoint i64 %indvars.iv.i.ph, 1
  %i.ed = and i64 %i.dc, 4
  %lcmp.mod.not = icmp eq i64 %i.ed, 0
  br i1 %lcmp.mod.not, label %scalar.ph429.prol.loopexit, label %scalar.ph429.prol

scalar.ph429.prol:                                ; preds = %scalar.ph429.preheader
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv.i.ph
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !3  ; 3 uses
  %i.eg = add i32 %i.ef, -65
  %or.cond.i222.prol = icmp ult i32 %i.eg, 26
  %i.eh = or disjoint i32 %i.ef, 32
  %spec.select.i.prol = select i1 %or.cond.i222.prol, i32 %i.eh, i32 %i.ef
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv.i.ph
  store i32 %spec.select.i.prol, ptr %i.ei, align 4, !tbaa !3
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %scalar.ph429.prol.loopexit

scalar.ph429.prol.loopexit:                       ; preds = %scalar.ph429.prol, %scalar.ph429.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph429.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph429.prol ]
  %i.ej = icmp eq i64 %i.di, %.neg
  br i1 %i.ej, label %._crit_edge.i, label %scalar.ph429

scalar.ph429:                                     ; preds = %scalar.ph429.prol.loopexit, %scalar.ph429
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph429 ], [ %indvars.iv.i.unr, %scalar.ph429.prol.loopexit ] ; 4 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv.i
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !3  ; 3 uses
  %i.em = add i32 %i.el, -65
  %or.cond.i222 = icmp ult i32 %i.em, 26
  %i.en = or disjoint i32 %i.el, 32
  %spec.select.i = select i1 %or.cond.i222, i32 %i.en, i32 %i.el
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv.i
  store i32 %spec.select.i, ptr %i.eo, align 4, !tbaa !3
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv.next.i
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !3  ; 3 uses
  %i.er = add i32 %i.eq, -65
  %or.cond.i222.1 = icmp ult i32 %i.er, 26
  %i.es = or disjoint i32 %i.eq, 32
  %spec.select.i.1 = select i1 %or.cond.i222.1, i32 %i.es, i32 %i.eq
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv.next.i
  store i32 %spec.select.i.1, ptr %i.et, align 4, !tbaa !3
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %i.di
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph429, !llvm.loop !85

._crit_edge.i:                                    ; preds = %scalar.ph429.prol.loopexit, %scalar.ph429, %middle.block439
  store ptr %i.dk, ptr %0, align 8, !tbaa !80
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.di
  store ptr %i.eu, ptr %i.ay, align 8, !tbaa !80
  br label %uriLowercaseMallocW.exit

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.u
  tail call fastcc void @uriPreventLeakageW(ptr noundef %0, i32 noundef 0, ptr noundef %3)
  br label %bb.ef

uriLowercaseMallocW.exit:                         ; preds = %._crit_edge.i, %bb.v
  store i32 1, ptr %i.a, align 4, !tbaa !3
  br label %uriLowercaseInplaceW.exit

uriLowercaseInplaceW.exit:                        ; preds = %bb.t, %middle.block, %bb.r, %uriLowercaseMallocW.exit, %bb.p, %bb.o
  %i.ev = phi i32 [ 0, %bb.o ], [ 0, %bb.r ], [ 1, %uriLowercaseMallocW.exit ], [ 0, %bb.p ], [ 0, %middle.block ], [ 0, %bb.t ] ; 12 uses
  %i.ew = and i32 %1, 4
  %.not175 = icmp eq i32 %i.ew, 0
  br i1 %.not175, label %uriContainsUglyPercentEncodingW.exit, label %bb.z

bb.z:                                             ; preds = %uriLowercaseInplaceW.exit
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !86 ; 18 uses
  %.not176 = icmp eq ptr %i.ez, null
  br i1 %.not176, label %bb.aj, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !79
  %.not180 = icmp eq i32 %i.fb, 0
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !80 ; 9 uses
  br i1 %.not180, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fe = icmp ugt ptr %i.fd, %i.ez
  br i1 %i.fe, label %.preheader.i224.preheader, label %uriLowercaseInplaceW.exit227

.preheader.i224.preheader:                        ; preds = %bb.ab
  %6 = ptrtoint ptr %i.fd to i64
  %7 = ptrtoint ptr %i.ez to i64                  ; 2 uses
  %i.ff = add i64 %7, 4
  %umax442 = tail call i64 @llvm.umax.i64(i64 %6, i64 %i.ff)
  %i.fg = xor i64 %7, -1
  %i.fh = add i64 %umax442, %i.fg                 ; 2 uses
  %i.fi = lshr i64 %i.fh, 2
  %i.fj = add nuw nsw i64 %i.fi, 1                ; 2 uses
  %min.iters.check444 = icmp ult i64 %i.fh, 28
  br i1 %min.iters.check444, label %.preheader.i224.preheader543, label %vector.ph445

vector.ph445:                                     ; preds = %.preheader.i224.preheader
  %n.vec447 = and i64 %i.fj, 9223372036854775800  ; 3 uses
  %i.fk = shl i64 %n.vec447, 2
  %i.fl = getelementptr i8, ptr %i.ez, i64 %i.fk
  br label %vector.body448

vector.body448:                                   ; preds = %pred.store.continue475, %vector.ph445
  %index449 = phi i64 [ 0, %vector.ph445 ], [ %index.next476, %pred.store.continue475 ] ; 2 uses
  %i.fm = shl i64 %index449, 2                    ; 8 uses
  %next.gep450.a = getelementptr i8, ptr %i.ez, i64 %i.fm ; 3 uses
  %i.fn = getelementptr i8, ptr %i.ez, i64 %i.fm
  %next.gep451.a = getelementptr i8, ptr %i.fn, i64 4
  %i.fo = getelementptr i8, ptr %i.ez, i64 %i.fm
  %next.gep452.a = getelementptr i8, ptr %i.fo, i64 8
  %i.fp = getelementptr i8, ptr %i.ez, i64 %i.fm
  %next.gep453.a = getelementptr i8, ptr %i.fp, i64 12
  %i.fq = getelementptr i8, ptr %i.ez, i64 %i.fm
  %next.gep454.a = getelementptr i8, ptr %i.fq, i64 16
  %i.fr = getelementptr i8, ptr %i.ez, i64 %i.fm
  %next.gep455.a = getelementptr i8, ptr %i.fr, i64 20
  %i.fs = getelementptr i8, ptr %i.ez, i64 %i.fm
  %next.gep456.a = getelementptr i8, ptr %i.fs, i64 24
  %i.ft = getelementptr i8, ptr %i.ez, i64 %i.fm
  %next.gep457 = getelementptr i8, ptr %i.ft, i64 28
  %i.fu = getelementptr i8, ptr %next.gep450.a, i64 16
  %wide.load458.a = load <4 x i32>, ptr %next.gep450.a, align 4, !tbaa !3 ; 5 uses
  %wide.load459 = load <4 x i32>, ptr %i.fu, align 4, !tbaa !3 ; 5 uses
  %i.fv = add <4 x i32> %wide.load458.a, splat (i32 -65)
  %i.fw = add <4 x i32> %wide.load459, splat (i32 -65)
  %i.fx = icmp ult <4 x i32> %i.fv, splat (i32 26) ; 4 uses
  %i.fy = icmp ult <4 x i32> %i.fw, splat (i32 26) ; 4 uses
  %i.fz = extractelement <4 x i1> %i.fx, i64 0
  br i1 %i.fz, label %pred.store.if460, label %pred.store.continue461

pred.store.if460:                                 ; preds = %vector.body448
  %i.ga = extractelement <4 x i32> %wide.load458.a, i64 0
  %i.gb = or disjoint i32 %i.ga, 32
  store i32 %i.gb, ptr %next.gep450.a, align 4, !tbaa !3
  br label %pred.store.continue461

pred.store.continue461:                           ; preds = %pred.store.if460, %vector.body448
  %i.gc = extractelement <4 x i1> %i.fx, i64 1
  br i1 %i.gc, label %pred.store.if462, label %pred.store.continue463

pred.store.if462:                                 ; preds = %pred.store.continue461
  %i.gd = extractelement <4 x i32> %wide.load458.a, i64 1
  %i.ge = or disjoint i32 %i.gd, 32
  store i32 %i.ge, ptr %next.gep451.a, align 4, !tbaa !3
  br label %pred.store.continue463

pred.store.continue463:                           ; preds = %pred.store.if462, %pred.store.continue461
  %i.gf = extractelement <4 x i1> %i.fx, i64 2
  br i1 %i.gf, label %pred.store.if464, label %pred.store.continue465

pred.store.if464:                                 ; preds = %pred.store.continue463
  %i.gg = extractelement <4 x i32> %wide.load458.a, i64 2
  %i.gh = or disjoint i32 %i.gg, 32
  store i32 %i.gh, ptr %next.gep452.a, align 4, !tbaa !3
  br label %pred.store.continue465

pred.store.continue465:                           ; preds = %pred.store.if464, %pred.store.continue463
  %i.gi = extractelement <4 x i1> %i.fx, i64 3
  br i1 %i.gi, label %pred.store.if466, label %pred.store.continue467

pred.store.if466:                                 ; preds = %pred.store.continue465
  %i.gj = extractelement <4 x i32> %wide.load458.a, i64 3
  %i.gk = or disjoint i32 %i.gj, 32
  store i32 %i.gk, ptr %next.gep453.a, align 4, !tbaa !3
  br label %pred.store.continue467

pred.store.continue467:                           ; preds = %pred.store.if466, %pred.store.continue465
  %i.gl = extractelement <4 x i1> %i.fy, i64 0
  br i1 %i.gl, label %pred.store.if468, label %pred.store.continue469

pred.store.if468:                                 ; preds = %pred.store.continue467
  %i.gm = extractelement <4 x i32> %wide.load459, i64 0
  %i.gn = or disjoint i32 %i.gm, 32
  store i32 %i.gn, ptr %next.gep454.a, align 4, !tbaa !3
  br label %pred.store.continue469

pred.store.continue469:                           ; preds = %pred.store.if468, %pred.store.continue467
  %i.go = extractelement <4 x i1> %i.fy, i64 1
  br i1 %i.go, label %pred.store.if470, label %pred.store.continue471

pred.store.if470:                                 ; preds = %pred.store.continue469
  %i.gp = extractelement <4 x i32> %wide.load459, i64 1
  %i.gq = or disjoint i32 %i.gp, 32
  store i32 %i.gq, ptr %next.gep455.a, align 4, !tbaa !3
  br label %pred.store.continue471

pred.store.continue471:                           ; preds = %pred.store.if470, %pred.store.continue469
  %i.gr = extractelement <4 x i1> %i.fy, i64 2
  br i1 %i.gr, label %pred.store.if472, label %pred.store.continue473

pred.store.if472:                                 ; preds = %pred.store.continue471
  %i.gs = extractelement <4 x i32> %wide.load459, i64 2
  %i.gt = or disjoint i32 %i.gs, 32
  store i32 %i.gt, ptr %next.gep456.a, align 4, !tbaa !3
  br label %pred.store.continue473

pred.store.continue473:                           ; preds = %pred.store.if472, %pred.store.continue471
  %i.gu = extractelement <4 x i1> %i.fy, i64 3
  br i1 %i.gu, label %pred.store.if474, label %pred.store.continue475

pred.store.if474:                                 ; preds = %pred.store.continue473
  %i.gv = extractelement <4 x i32> %wide.load459, i64 3
  %i.gw = or disjoint i32 %i.gv, 32
  store i32 %i.gw, ptr %next.gep457, align 4, !tbaa !3
  br label %pred.store.continue475

pred.store.continue475:                           ; preds = %pred.store.if474, %pred.store.continue473
  %index.next476 = add nuw i64 %index449, 8       ; 2 uses
  %i.gx = icmp eq i64 %index.next476, %n.vec447
  br i1 %i.gx, label %middle.block477, label %vector.body448, !llvm.loop !87

middle.block477:                                  ; preds = %pred.store.continue475
  %cmp.n478 = icmp eq i64 %i.fj, %n.vec447
  br i1 %cmp.n478, label %uriLowercaseInplaceW.exit227, label %.preheader.i224.preheader543

.preheader.i224.preheader543:                     ; preds = %.preheader.i224.preheader, %middle.block477
  %.018.i225.ph = phi ptr [ %i.ez, %.preheader.i224.preheader ], [ %i.fl, %middle.block477 ]
  br label %.preheader.i224

.preheader.i224:                                  ; preds = %.preheader.i224.preheader543, %bb.ad
  %.018.i225 = phi ptr [ %i.hb, %bb.ad ], [ %.018.i225.ph, %.preheader.i224.preheader543 ] ; 3 uses
  %i.gy = load i32, ptr %.018.i225, align 4, !tbaa !3 ; 2 uses
  %i.gz = add i32 %i.gy, -65
  %or.cond17.i226 = icmp ult i32 %i.gz, 26
  br i1 %or.cond17.i226, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.preheader.i224
  %i.ha = or disjoint i32 %i.gy, 32
  store i32 %i.ha, ptr %.018.i225, align 4, !tbaa !3
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.preheader.i224
  %i.hb = getelementptr inbounds nuw i8, ptr %.018.i225, i64 4 ; 2 uses
  %i.hc = icmp ult ptr %i.hb, %i.fd
  br i1 %i.hc, label %.preheader.i224, label %uriLowercaseInplaceW.exit227, !llvm.loop !88

bb.ae:                                            ; preds = %bb.aa
  %i.hd = icmp eq ptr %i.fd, null
  br i1 %i.hd, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.he = ptrtoint ptr %i.fd to i64
  %i.hf = ptrtoint ptr %i.ez to i64
  %i.hg = sub i64 %i.he, %i.hf                    ; 2 uses
  %i.hh = lshr exact i64 %i.hg, 2                 ; 3 uses
  %i.hi = trunc i64 %i.hh to i32                  ; 2 uses
  %i.hj = icmp eq i32 %i.hi, 0
  br i1 %i.hj, label %uriLowercaseMallocW.exit237, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hk = icmp slt i32 %i.hi, 0
  br i1 %i.hk, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hl = load ptr, ptr %3, align 8, !tbaa !31
  %i.hm = and i64 %i.hh, 2147483647               ; 6 uses
  %i.hn = shl nuw nsw i64 %i.hm, 2
  %i.ho = tail call ptr %i.hl(ptr noundef nonnull %3, i64 noundef %i.hn) #7, !inline_history !83 ; 9 uses
  %i.hp = icmp eq ptr %i.ho, null
  br i1 %i.hp, label %bb.ai, label %.lr.ph.i228

.lr.ph.i228:                                      ; preds = %bb.ah
  %i.hq = ptrtoaddr ptr %i.ho to i64
  %i.hr = load ptr, ptr %i.ey, align 8, !tbaa !80 ; 5 uses
  %min.iters.check483 = icmp samesign ult i64 %i.hm, 8
  %i.hs = ptrtoaddr ptr %i.hr to i64
  %i.ht = sub i64 %i.hs, %i.hq
  %diff.check481 = icmp ugt i64 %i.ht, -32
  %or.cond539 = select i1 %min.iters.check483, i1 true, i1 %diff.check481
  br i1 %or.cond539, label %scalar.ph482.preheader, label %vector.ph484

vector.ph484:                                     ; preds = %.lr.ph.i228
  %n.vec486 = and i64 %i.hh, 2147483640           ; 3 uses
  br label %vector.body487

vector.body487:                                   ; preds = %vector.body487, %vector.ph484
  %index488 = phi i64 [ 0, %vector.ph484 ], [ %index.next491, %vector.body487 ] ; 3 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %index488 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %wide.load489.a = load <4 x i32>, ptr %i.hu, align 4, !tbaa !3 ; 3 uses
  %wide.load490 = load <4 x i32>, ptr %i.hv, align 4, !tbaa !3 ; 3 uses
  %i.hw = add <4 x i32> %wide.load489.a, splat (i32 -65)
  %i.hx = add <4 x i32> %wide.load490, splat (i32 -65)
  %i.hy = icmp ult <4 x i32> %i.hw, splat (i32 26)
  %i.hz = icmp ult <4 x i32> %i.hx, splat (i32 26)
  %i.ia = or disjoint <4 x i32> %wide.load489.a, splat (i32 32)
  %i.ib = or disjoint <4 x i32> %wide.load490, splat (i32 32)
  %i.ic = select <4 x i1> %i.hy, <4 x i32> %i.ia, <4 x i32> %wide.load489.a
  %i.id = select <4 x i1> %i.hz, <4 x i32> %i.ib, <4 x i32> %wide.load490
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %index488 ; 2 uses
end_hunk_0
