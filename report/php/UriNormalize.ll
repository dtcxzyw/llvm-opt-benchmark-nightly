Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/UriNormalize?download=true
inline.NumInlined: 64
inline.NumDeleted: 18
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@uriPreventLeakageW:bb.a
bb.w:                                             ; preds = %bb.v
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !68 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !69
  %.not78 = icmp eq ptr %i.as, %i.au
  br i1 %.not78, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !16
  tail call void %i.aw(ptr noundef %2, ptr noundef %i.as) #6
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @uriNormalizeSyntaxMaskRequiredW(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.UriUriStructW, align 8      ; 4 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %uriNormalizeSyntaxMaskRequiredExW.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull readonly align 8 dereferenceable(160) %0, i64 160, i1 false)
  %i.c = call fastcc i32 @uriNormalizeSyntaxEngineW(ptr noundef nonnull %1, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef null) ; 0 uses
  %.pre = load i32, ptr %i.a, align 4, !tbaa !40
  br label %uriNormalizeSyntaxMaskRequiredExW.exit

uriNormalizeSyntaxMaskRequiredExW.exit:           ; preds = %bb.a, %bb.b
  %i.d = phi i32 [ 0, %bb.a ], [ %.pre, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 3) i32 @uriNormalizeSyntaxMaskRequiredExW(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #0 {
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
  %i.a = alloca i32, align 4                      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !40
  %i.b = icmp eq ptr %0, null
  %.not231 = icmp eq ptr %2, null                 ; 6 uses
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %.not231, label %bb.eb, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %2, align 4, !tbaa !40
  br label %bb.eb

bb.d:                                             ; preds = %bb.a
  br i1 %.not231, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.c = icmp eq i32 %1, 0
  br i1 %i.c, label %bb.eb, label %bb.o

bb.f:                                             ; preds = %bb.d
  store i32 0, ptr %2, align 4, !tbaa !40
  %i.d = load ptr, ptr %0, align 8, !tbaa !55     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !135  ; 2 uses
  %i.g = icmp ne ptr %i.d, null
  %i.h = icmp ugt ptr %i.f, %i.d
  %or.cond17.i = and i1 %i.g, %i.h
  br i1 %or.cond17.i, label %.preheader.i, label %uriContainsUppercaseLettersW.exit

.preheader.i:                                     ; preds = %bb.f, %.preheader.i
  %.01219.i = phi ptr [ %i.k, %.preheader.i ], [ %i.d, %bb.f ] ; 2 uses
  %i.i = load i32, ptr %.01219.i, align 4, !tbaa !40
  %i.j = add i32 %i.i, -91
  %or.cond18.i = icmp ult i32 %i.j, -26           ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.01219.i, i64 4 ; 2 uses
  %i.l = icmp ult ptr %i.k, %i.f
  %or.cond = select i1 %or.cond18.i, i1 %i.l, i1 false
  br i1 %or.cond, label %.preheader.i, label %uriContainsUppercaseLettersW.exit, !llvm.loop !111

uriContainsUppercaseLettersW.exit:                ; preds = %.preheader.i, %bb.f
  %.not198 = phi i1 [ true, %bb.f ], [ %or.cond18.i, %.preheader.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !59   ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !60   ; 4 uses
  %i.q = icmp ne ptr %i.n, null
  %i.r = icmp ugt ptr %i.p, %i.n
  %or.cond17.i233 = and i1 %i.q, %i.r             ; 2 uses
  br i1 %or.cond17.i233, label %.preheader.i235, label %uriContainsUppercaseLettersW.exit238

.preheader.i235:                                  ; preds = %uriContainsUppercaseLettersW.exit, %.preheader.i235
  %.01219.i236 = phi ptr [ %i.u, %.preheader.i235 ], [ %i.n, %uriContainsUppercaseLettersW.exit ] ; 2 uses
  %i.s = load i32, ptr %.01219.i236, align 4, !tbaa !40
  %i.t = add i32 %i.s, -91
  %or.cond18.i237 = icmp ult i32 %i.t, -26        ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.01219.i236, i64 4 ; 2 uses
  %i.v = icmp ult ptr %i.u, %i.p
  %or.cond621 = select i1 %or.cond18.i237, i1 %i.v, i1 false
  br i1 %or.cond621, label %.preheader.i235, label %uriContainsUppercaseLettersW.exit238, !llvm.loop !111

uriContainsUppercaseLettersW.exit238:             ; preds = %.preheader.i235, %uriContainsUppercaseLettersW.exit
  %.not199 = phi i1 [ true, %uriContainsUppercaseLettersW.exit ], [ %or.cond18.i237, %.preheader.i235 ]
  br i1 %.not198, label %bb.h, label %bb.g

bb.g:                                             ; preds = %uriContainsUppercaseLettersW.exit238
  store i32 1, ptr %2, align 4, !tbaa !40
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %uriContainsUppercaseLettersW.exit238
  %i.w = phi i32 [ 5, %bb.g ], [ 4, %uriContainsUppercaseLettersW.exit238 ]
  br i1 %.not199, label %bb.i, label %uriContainsUglyPercentEncodingW.exit.thread343.sink.split

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.y = icmp ult ptr %i.x, %i.p
  %or.cond.i = select i1 %or.cond17.i233, i1 %i.y, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %uriContainsUglyPercentEncodingW.exit

.lr.ph.i:                                         ; preds = %bb.i, %bb.m
  %i.z = phi ptr [ %i.aq, %bb.m ], [ %i.x, %bb.i ] ; 2 uses
  %.02132.i = phi ptr [ %i.ap, %bb.m ], [ %i.n, %bb.i ] ; 4 uses
  %i.aa = load i32, ptr %.02132.i, align 4, !tbaa !40
  %i.ab = icmp eq i32 %i.aa, 37
  br i1 %i.ab, label %bb.j, label %bb.m

bb.j:                                             ; preds = %.lr.ph.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.02132.i, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !40 ; 2 uses
  %i.ae = add i32 %i.ad, -97
  %or.cond30.i = icmp ult i32 %i.ae, 6
  br i1 %or.cond30.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = load i32, ptr %i.z, align 4, !tbaa !40
  %i.ag = add i32 %i.af, -97
  %or.cond31.i = icmp ult i32 %i.ag, 6
  br i1 %or.cond31.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = tail call zeroext i8 @uriHexdigToIntW(i32 noundef %i.ad) #6
  %i.ai = load i32, ptr %i.z, align 4, !tbaa !40
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
  br i1 %i.ar, label %.lr.ph.i, label %uriContainsUglyPercentEncodingW.exit, !llvm.loop !112

bb.n:                                             ; preds = %bb.k, %bb.j, %bb.l
  %i.as = load i32, ptr %2, align 4, !tbaa !40
  %i.at = or i32 %i.as, 4
  br label %uriContainsUglyPercentEncodingW.exit.thread343.sink.split

bb.o:                                             ; preds = %bb.e
  %i.au = and i32 %1, 1
  %.not187 = icmp eq i32 %i.au, 0
  br i1 %.not187, label %uriLowercaseInplaceW.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = load ptr, ptr %0, align 8, !tbaa !55    ; 15 uses
  %4 = ptrtoaddr ptr %i.av to i64
  %.not188 = icmp eq ptr %i.av, null
  br i1 %.not188, label %uriLowercaseInplaceW.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !70
  %.not189 = icmp eq i32 %i.ax, 0
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !71 ; 6 uses
  %5 = ptrtoaddr ptr %i.az to i64
  br i1 %.not189, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = icmp ugt ptr %i.az, %i.av
  br i1 %i.ba, label %.preheader.i239.preheader, label %uriLowercaseInplaceW.exit

.preheader.i239.preheader:                        ; preds = %bb.r
  %i.bb = xor i64 %4, -1
  %i.bc = add i64 %i.bb, %5                       ; 2 uses
  %i.bd = lshr i64 %i.bc, 2
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bc, 28
  br i1 %min.iters.check, label %.preheader.i239.preheader639, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i239.preheader
  %n.vec = and i64 %i.be, 9223372036854775800     ; 3 uses
  %i.bf = shl i64 %n.vec, 2
  %i.bg = getelementptr i8, ptr %i.av, i64 %i.bf
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue505, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue505 ] ; 2 uses
  %i.bh = shl i64 %index, 2                       ; 8 uses
  %next.gep = getelementptr i8, ptr %i.av, i64 %i.bh ; 3 uses
  %i.bi = getelementptr i8, ptr %i.av, i64 %i.bh
  %next.gep484 = getelementptr i8, ptr %i.bi, i64 4
  %i.bj = getelementptr i8, ptr %i.av, i64 %i.bh
  %next.gep485 = getelementptr i8, ptr %i.bj, i64 8
  %i.bk = getelementptr i8, ptr %i.av, i64 %i.bh
  %next.gep486 = getelementptr i8, ptr %i.bk, i64 12
  %i.bl = getelementptr i8, ptr %i.av, i64 %i.bh
  %next.gep487 = getelementptr i8, ptr %i.bl, i64 16
  %i.bm = getelementptr i8, ptr %i.av, i64 %i.bh
  %next.gep488 = getelementptr i8, ptr %i.bm, i64 20
  %i.bn = getelementptr i8, ptr %i.av, i64 %i.bh
  %next.gep489 = getelementptr i8, ptr %i.bn, i64 24
  %i.bo = getelementptr i8, ptr %i.av, i64 %i.bh
  %next.gep490 = getelementptr i8, ptr %i.bo, i64 28
  %i.bp = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !40 ; 5 uses
  %wide.load491 = load <4 x i32>, ptr %i.bp, align 4, !tbaa !40 ; 5 uses
  %i.bq = add <4 x i32> %wide.load, splat (i32 -65)
  %i.br = add <4 x i32> %wide.load491, splat (i32 -65)
  %i.bs = icmp ult <4 x i32> %i.bq, splat (i32 26) ; 4 uses
  %i.bt = icmp ult <4 x i32> %i.br, splat (i32 26) ; 4 uses
  %i.bu = extractelement <4 x i1> %i.bs, i64 0
  br i1 %i.bu, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.bv = extractelement <4 x i32> %wide.load, i64 0
  %i.bw = or disjoint i32 %i.bv, 32
  store i32 %i.bw, ptr %next.gep, align 4, !tbaa !40
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.bx = extractelement <4 x i1> %i.bs, i64 1
  br i1 %i.bx, label %pred.store.if492, label %pred.store.continue493

pred.store.if492:                                 ; preds = %pred.store.continue
  %i.by = extractelement <4 x i32> %wide.load, i64 1
  %i.bz = or disjoint i32 %i.by, 32
  store i32 %i.bz, ptr %next.gep484, align 4, !tbaa !40
  br label %pred.store.continue493

pred.store.continue493:                           ; preds = %pred.store.if492, %pred.store.continue
  %i.ca = extractelement <4 x i1> %i.bs, i64 2
  br i1 %i.ca, label %pred.store.if494, label %pred.store.continue495

pred.store.if494:                                 ; preds = %pred.store.continue493
  %i.cb = extractelement <4 x i32> %wide.load, i64 2
  %i.cc = or disjoint i32 %i.cb, 32
  store i32 %i.cc, ptr %next.gep485, align 4, !tbaa !40
  br label %pred.store.continue495

pred.store.continue495:                           ; preds = %pred.store.if494, %pred.store.continue493
  %i.cd = extractelement <4 x i1> %i.bs, i64 3
  br i1 %i.cd, label %pred.store.if496, label %pred.store.continue497

pred.store.if496:                                 ; preds = %pred.store.continue495
  %i.ce = extractelement <4 x i32> %wide.load, i64 3
  %i.cf = or disjoint i32 %i.ce, 32
  store i32 %i.cf, ptr %next.gep486, align 4, !tbaa !40
  br label %pred.store.continue497

pred.store.continue497:                           ; preds = %pred.store.if496, %pred.store.continue495
  %i.cg = extractelement <4 x i1> %i.bt, i64 0
  br i1 %i.cg, label %pred.store.if498, label %pred.store.continue499

pred.store.if498:                                 ; preds = %pred.store.continue497
  %i.ch = extractelement <4 x i32> %wide.load491, i64 0
  %i.ci = or disjoint i32 %i.ch, 32
  store i32 %i.ci, ptr %next.gep487, align 4, !tbaa !40
  br label %pred.store.continue499

pred.store.continue499:                           ; preds = %pred.store.if498, %pred.store.continue497
  %i.cj = extractelement <4 x i1> %i.bt, i64 1
  br i1 %i.cj, label %pred.store.if500, label %pred.store.continue501

pred.store.if500:                                 ; preds = %pred.store.continue499
  %i.ck = extractelement <4 x i32> %wide.load491, i64 1
  %i.cl = or disjoint i32 %i.ck, 32
  store i32 %i.cl, ptr %next.gep488, align 4, !tbaa !40
  br label %pred.store.continue501

pred.store.continue501:                           ; preds = %pred.store.if500, %pred.store.continue499
  %i.cm = extractelement <4 x i1> %i.bt, i64 2
  br i1 %i.cm, label %pred.store.if502, label %pred.store.continue503

pred.store.if502:                                 ; preds = %pred.store.continue501
  %i.cn = extractelement <4 x i32> %wide.load491, i64 2
  %i.co = or disjoint i32 %i.cn, 32
  store i32 %i.co, ptr %next.gep489, align 4, !tbaa !40
  br label %pred.store.continue503

pred.store.continue503:                           ; preds = %pred.store.if502, %pred.store.continue501
  %i.cp = extractelement <4 x i1> %i.bt, i64 3
  br i1 %i.cp, label %pred.store.if504, label %pred.store.continue505

pred.store.if504:                                 ; preds = %pred.store.continue503
  %i.cq = extractelement <4 x i32> %wide.load491, i64 3
  %i.cr = or disjoint i32 %i.cq, 32
  store i32 %i.cr, ptr %next.gep490, align 4, !tbaa !40
  br label %pred.store.continue505

pred.store.continue505:                           ; preds = %pred.store.if504, %pred.store.continue503
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !113

middle.block:                                     ; preds = %pred.store.continue505
  %cmp.n = icmp eq i64 %i.be, %n.vec
  br i1 %cmp.n, label %uriLowercaseInplaceW.exit, label %.preheader.i239.preheader639

.preheader.i239.preheader639:                     ; preds = %.preheader.i239.preheader, %middle.block
  %.017.i.ph = phi ptr [ %i.av, %.preheader.i239.preheader ], [ %i.bg, %middle.block ]
  br label %.preheader.i239

.preheader.i239:                                  ; preds = %.preheader.i239.preheader639, %bb.t
  %.017.i = phi ptr [ %i.cw, %bb.t ], [ %.017.i.ph, %.preheader.i239.preheader639 ] ; 3 uses
  %i.ct = load i32, ptr %.017.i, align 4, !tbaa !40 ; 2 uses
  %i.cu = add i32 %i.ct, -65
  %or.cond16.i = icmp ult i32 %i.cu, 26
  br i1 %or.cond16.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.preheader.i239
  %i.cv = or disjoint i32 %i.ct, 32
  store i32 %i.cv, ptr %.017.i, align 4, !tbaa !40
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.preheader.i239
  %i.cw = getelementptr inbounds nuw i8, ptr %.017.i, i64 4 ; 2 uses
  %i.cx = icmp ult ptr %i.cw, %i.az
  br i1 %i.cx, label %.preheader.i239, label %uriLowercaseInplaceW.exit, !llvm.loop !114

bb.u:                                             ; preds = %bb.q
  %i.cy = icmp eq ptr %i.az, null
  br i1 %i.cy, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cz = ptrtoint ptr %i.az to i64
  %i.da = ptrtoint ptr %i.av to i64
  %i.db = sub i64 %i.cz, %i.da                    ; 4 uses
  %i.dc = ashr exact i64 %i.db, 2                 ; 6 uses
  %i.dd = icmp eq ptr %i.az, %i.av
  br i1 %i.dd, label %uriLowercaseMallocW.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.de = icmp ugt i64 %i.dc, 4611686018427387903
  br i1 %i.de, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.df = load ptr, ptr %3, align 8, !tbaa !46
  %i.dg = tail call ptr %i.df(ptr noundef nonnull %3, i64 noundef %i.db) #6, !inline_history !115 ; 8 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %bb.y, label %.lr.ph.i240

.lr.ph.i240:                                      ; preds = %bb.x
  %i.di = ptrtoaddr ptr %i.dg to i64
  %i.dj = load ptr, ptr %0, align 8, !tbaa !71    ; 5 uses
  %min.iters.check507 = icmp ult i64 %i.dc, 8
  %i.dk = ptrtoaddr ptr %i.dj to i64
  %i.dl = sub i64 %i.dk, %i.di
  %diff.check = icmp ugt i64 %i.dl, -32
  %or.cond623 = select i1 %min.iters.check507, i1 true, i1 %diff.check
  br i1 %or.cond623, label %scalar.ph506.preheader, label %vector.ph508

vector.ph508:                                     ; preds = %.lr.ph.i240
  %n.vec509 = and i64 %i.dc, 4611686018427387896  ; 3 uses
  br label %vector.body510

vector.body510:                                   ; preds = %vector.body510, %vector.ph508
  %index511 = phi i64 [ 0, %vector.ph508 ], [ %index.next514, %vector.body510 ] ; 3 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %index511 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %wide.load512 = load <4 x i32>, ptr %i.dm, align 4, !tbaa !40 ; 3 uses
  %wide.load513 = load <4 x i32>, ptr %i.dn, align 4, !tbaa !40 ; 3 uses
  %i.do = add <4 x i32> %wide.load512, splat (i32 -65)
  %i.dp = add <4 x i32> %wide.load513, splat (i32 -65)
  %i.dq = icmp ult <4 x i32> %i.do, splat (i32 26)
  %i.dr = icmp ult <4 x i32> %i.dp, splat (i32 26)
  %i.ds = or disjoint <4 x i32> %wide.load512, splat (i32 32)
  %i.dt = or disjoint <4 x i32> %wide.load513, splat (i32 32)
  %i.du = select <4 x i1> %i.dq, <4 x i32> %i.ds, <4 x i32> %wide.load512
  %i.dv = select <4 x i1> %i.dr, <4 x i32> %i.dt, <4 x i32> %wide.load513
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %index511 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store <4 x i32> %i.du, ptr %i.dw, align 4, !tbaa !40
  store <4 x i32> %i.dv, ptr %i.dx, align 4, !tbaa !40
  %index.next514 = add nuw i64 %index511, 8       ; 2 uses
  %i.dy = icmp eq i64 %index.next514, %n.vec509
  br i1 %i.dy, label %middle.block515, label %vector.body510, !llvm.loop !116

middle.block515:                                  ; preds = %vector.body510
  %cmp.n516 = icmp eq i64 %i.dc, %n.vec509
  br i1 %cmp.n516, label %._crit_edge.i, label %scalar.ph506.preheader

scalar.ph506.preheader:                           ; preds = %.lr.ph.i240, %middle.block515
  %.040.i.ph = phi i64 [ 0, %.lr.ph.i240 ], [ %n.vec509, %middle.block515 ] ; 5 uses
  %.neg = or disjoint i64 %.040.i.ph, 1
  %i.dz = and i64 %i.db, 4
  %lcmp.mod.not = icmp eq i64 %i.dz, 0
  br i1 %lcmp.mod.not, label %scalar.ph506.prol.loopexit, label %scalar.ph506.prol

scalar.ph506.prol:                                ; preds = %scalar.ph506.preheader
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %.040.i.ph
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !40 ; 3 uses
  %i.ec = add i32 %i.eb, -65
  %or.cond.i241.prol = icmp ult i32 %i.ec, 26
  %i.ed = or disjoint i32 %i.eb, 32
  %spec.select.i.prol = select i1 %or.cond.i241.prol, i32 %i.ed, i32 %i.eb
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %.040.i.ph
  store i32 %spec.select.i.prol, ptr %i.ee, align 4, !tbaa !40
  %i.ef = or disjoint i64 %.040.i.ph, 1
  br label %scalar.ph506.prol.loopexit

scalar.ph506.prol.loopexit:                       ; preds = %scalar.ph506.prol, %scalar.ph506.preheader
  %.040.i.unr = phi i64 [ %.040.i.ph, %scalar.ph506.preheader ], [ %i.ef, %scalar.ph506.prol ]
  %i.eg = icmp eq i64 %i.dc, %.neg
  br i1 %i.eg, label %._crit_edge.i, label %scalar.ph506

scalar.ph506:                                     ; preds = %scalar.ph506.prol.loopexit, %scalar.ph506
  %.040.i = phi i64 [ %i.es, %scalar.ph506 ], [ %.040.i.unr, %scalar.ph506.prol.loopexit ] ; 4 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %.040.i
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !40 ; 3 uses
  %i.ej = add i32 %i.ei, -65
  %or.cond.i241 = icmp ult i32 %i.ej, 26
  %i.ek = or disjoint i32 %i.ei, 32
  %spec.select.i = select i1 %or.cond.i241, i32 %i.ek, i32 %i.ei
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %.040.i
  store i32 %spec.select.i, ptr %i.el, align 4, !tbaa !40
  %i.em = add nuw nsw i64 %.040.i, 1              ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !40 ; 3 uses
  %i.ep = add i32 %i.eo, -65
  %or.cond.i241.1 = icmp ult i32 %i.ep, 26
  %i.eq = or disjoint i32 %i.eo, 32
  %spec.select.i.1 = select i1 %or.cond.i241.1, i32 %i.eq, i32 %i.eo
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.em
  store i32 %spec.select.i.1, ptr %i.er, align 4, !tbaa !40
  %i.es = add nuw nsw i64 %.040.i, 2              ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.es, %i.dc
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph506, !llvm.loop !117

._crit_edge.i:                                    ; preds = %scalar.ph506.prol.loopexit, %scalar.ph506, %middle.block515
  store ptr %i.dg, ptr %0, align 8, !tbaa !71
  %i.et = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.db
  store ptr %i.et, ptr %i.ay, align 8, !tbaa !71
  br label %uriLowercaseMallocW.exit

bb.y:                                             ; preds = %bb.x, %bb.u, %bb.w
  tail call void @uriPreventLeakageW(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %3)
  br label %bb.eb

uriLowercaseMallocW.exit:                         ; preds = %._crit_edge.i, %bb.v
  store i32 1, ptr %i.a, align 4, !tbaa !40
  br label %uriLowercaseInplaceW.exit

uriLowercaseInplaceW.exit:                        ; preds = %bb.t, %middle.block, %bb.r, %uriLowercaseMallocW.exit, %bb.p, %bb.o
  %i.eu = phi i32 [ 0, %bb.o ], [ 0, %bb.r ], [ 1, %uriLowercaseMallocW.exit ], [ 0, %bb.p ], [ 0, %middle.block ], [ 0, %bb.t ] ; 11 uses
  %i.ev = and i32 %1, 4
  %.not191 = icmp eq i32 %i.ev, 0
  br i1 %.not191, label %uriContainsUglyPercentEncodingW.exit, label %bb.z

bb.z:                                             ; preds = %uriLowercaseInplaceW.exit
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !58 ; 19 uses
  %6 = ptrtoaddr ptr %i.ey to i64
  %.not192 = icmp eq ptr %i.ey, null
  br i1 %.not192, label %bb.aj, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !70
  %.not196 = icmp eq i32 %i.fa, 0
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !71 ; 10 uses
  %7 = ptrtoaddr ptr %i.fc to i64
  br i1 %.not196, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fd = icmp ugt ptr %i.fc, %i.ey
  br i1 %i.fd, label %.preheader.i243.preheader, label %uriLowercaseInplaceW.exit246

.preheader.i243.preheader:                        ; preds = %bb.ab
  %i.fe = xor i64 %6, -1
  %i.ff = add i64 %i.fe, %7                       ; 2 uses
  %i.fg = lshr i64 %i.ff, 2
  %i.fh = add nuw nsw i64 %i.fg, 1                ; 2 uses
  %min.iters.check519 = icmp ult i64 %i.ff, 28
  br i1 %min.iters.check519, label %.preheader.i243.preheader638, label %vector.ph520

vector.ph520:                                     ; preds = %.preheader.i243.preheader
  %n.vec521 = and i64 %i.fh, 9223372036854775800  ; 3 uses
  %i.fi = shl i64 %n.vec521, 2
  %i.fj = getelementptr i8, ptr %i.ey, i64 %i.fi
  br label %vector.body522

vector.body522:                                   ; preds = %pred.store.continue549, %vector.ph520
  %index523 = phi i64 [ 0, %vector.ph520 ], [ %index.next550, %pred.store.continue549 ] ; 2 uses
  %i.fk = shl i64 %index523, 2                    ; 8 uses
  %next.gep524 = getelementptr i8, ptr %i.ey, i64 %i.fk ; 3 uses
  %i.fl = getelementptr i8, ptr %i.ey, i64 %i.fk
  %next.gep525 = getelementptr i8, ptr %i.fl, i64 4
  %i.fm = getelementptr i8, ptr %i.ey, i64 %i.fk
  %next.gep526 = getelementptr i8, ptr %i.fm, i64 8
  %i.fn = getelementptr i8, ptr %i.ey, i64 %i.fk
  %next.gep527 = getelementptr i8, ptr %i.fn, i64 12
  %i.fo = getelementptr i8, ptr %i.ey, i64 %i.fk
  %next.gep528 = getelementptr i8, ptr %i.fo, i64 16
  %i.fp = getelementptr i8, ptr %i.ey, i64 %i.fk
  %next.gep529 = getelementptr i8, ptr %i.fp, i64 20
  %i.fq = getelementptr i8, ptr %i.ey, i64 %i.fk
  %next.gep530 = getelementptr i8, ptr %i.fq, i64 24
  %i.fr = getelementptr i8, ptr %i.ey, i64 %i.fk
  %next.gep531 = getelementptr i8, ptr %i.fr, i64 28
  %i.fs = getelementptr i8, ptr %next.gep524, i64 16
  %wide.load532 = load <4 x i32>, ptr %next.gep524, align 4, !tbaa !40 ; 5 uses
  %wide.load533 = load <4 x i32>, ptr %i.fs, align 4, !tbaa !40 ; 5 uses
  %i.ft = add <4 x i32> %wide.load532, splat (i32 -65)
  %i.fu = add <4 x i32> %wide.load533, splat (i32 -65)
  %i.fv = icmp ult <4 x i32> %i.ft, splat (i32 26) ; 4 uses
  %i.fw = icmp ult <4 x i32> %i.fu, splat (i32 26) ; 4 uses
  %i.fx = extractelement <4 x i1> %i.fv, i64 0
  br i1 %i.fx, label %pred.store.if534, label %pred.store.continue535

pred.store.if534:                                 ; preds = %vector.body522
  %i.fy = extractelement <4 x i32> %wide.load532, i64 0
  %i.fz = or disjoint i32 %i.fy, 32
  store i32 %i.fz, ptr %next.gep524, align 4, !tbaa !40
  br label %pred.store.continue535

pred.store.continue535:                           ; preds = %pred.store.if534, %vector.body522
  %i.ga = extractelement <4 x i1> %i.fv, i64 1
  br i1 %i.ga, label %pred.store.if536, label %pred.store.continue537

pred.store.if536:                                 ; preds = %pred.store.continue535
  %i.gb = extractelement <4 x i32> %wide.load532, i64 1
  %i.gc = or disjoint i32 %i.gb, 32
  store i32 %i.gc, ptr %next.gep525, align 4, !tbaa !40
  br label %pred.store.continue537

pred.store.continue537:                           ; preds = %pred.store.if536, %pred.store.continue535
  %i.gd = extractelement <4 x i1> %i.fv, i64 2
  br i1 %i.gd, label %pred.store.if538, label %pred.store.continue539

pred.store.if538:                                 ; preds = %pred.store.continue537
  %i.ge = extractelement <4 x i32> %wide.load532, i64 2
  %i.gf = or disjoint i32 %i.ge, 32
  store i32 %i.gf, ptr %next.gep526, align 4, !tbaa !40
  br label %pred.store.continue539

pred.store.continue539:                           ; preds = %pred.store.if538, %pred.store.continue537
  %i.gg = extractelement <4 x i1> %i.fv, i64 3
  br i1 %i.gg, label %pred.store.if540, label %pred.store.continue541

pred.store.if540:                                 ; preds = %pred.store.continue539
  %i.gh = extractelement <4 x i32> %wide.load532, i64 3
  %i.gi = or disjoint i32 %i.gh, 32
  store i32 %i.gi, ptr %next.gep527, align 4, !tbaa !40
  br label %pred.store.continue541

pred.store.continue541:                           ; preds = %pred.store.if540, %pred.store.continue539
  %i.gj = extractelement <4 x i1> %i.fw, i64 0
  br i1 %i.gj, label %pred.store.if542, label %pred.store.continue543

pred.store.if542:                                 ; preds = %pred.store.continue541
  %i.gk = extractelement <4 x i32> %wide.load533, i64 0
  %i.gl = or disjoint i32 %i.gk, 32
  store i32 %i.gl, ptr %next.gep528, align 4, !tbaa !40
  br label %pred.store.continue543

pred.store.continue543:                           ; preds = %pred.store.if542, %pred.store.continue541
  %i.gm = extractelement <4 x i1> %i.fw, i64 1
  br i1 %i.gm, label %pred.store.if544, label %pred.store.continue545

pred.store.if544:                                 ; preds = %pred.store.continue543
  %i.gn = extractelement <4 x i32> %wide.load533, i64 1
  %i.go = or disjoint i32 %i.gn, 32
  store i32 %i.go, ptr %next.gep529, align 4, !tbaa !40
  br label %pred.store.continue545

pred.store.continue545:                           ; preds = %pred.store.if544, %pred.store.continue543
  %i.gp = extractelement <4 x i1> %i.fw, i64 2
  br i1 %i.gp, label %pred.store.if546, label %pred.store.continue547

pred.store.if546:                                 ; preds = %pred.store.continue545
  %i.gq = extractelement <4 x i32> %wide.load533, i64 2
  %i.gr = or disjoint i32 %i.gq, 32
  store i32 %i.gr, ptr %next.gep530, align 4, !tbaa !40
  br label %pred.store.continue547

pred.store.continue547:                           ; preds = %pred.store.if546, %pred.store.continue545
  %i.gs = extractelement <4 x i1> %i.fw, i64 3
  br i1 %i.gs, label %pred.store.if548, label %pred.store.continue549

pred.store.if548:                                 ; preds = %pred.store.continue547
  %i.gt = extractelement <4 x i32> %wide.load533, i64 3
  %i.gu = or disjoint i32 %i.gt, 32
  store i32 %i.gu, ptr %next.gep531, align 4, !tbaa !40
  br label %pred.store.continue549

pred.store.continue549:                           ; preds = %pred.store.if548, %pred.store.continue547
  %index.next550 = add nuw i64 %index523, 8       ; 2 uses
  %i.gv = icmp eq i64 %index.next550, %n.vec521
  br i1 %i.gv, label %middle.block551, label %vector.body522, !llvm.loop !118

middle.block551:                                  ; preds = %pred.store.continue549
  %cmp.n552 = icmp eq i64 %i.fh, %n.vec521
  br i1 %cmp.n552, label %uriLowercaseInplaceW.exit246, label %.preheader.i243.preheader638

.preheader.i243.preheader638:                     ; preds = %.preheader.i243.preheader, %middle.block551
  %.017.i244.ph = phi ptr [ %i.ey, %.preheader.i243.preheader ], [ %i.fj, %middle.block551 ]
  br label %.preheader.i243

.preheader.i243:                                  ; preds = %.preheader.i243.preheader638, %bb.ad
  %.017.i244 = phi ptr [ %i.gz, %bb.ad ], [ %.017.i244.ph, %.preheader.i243.preheader638 ] ; 3 uses
  %i.gw = load i32, ptr %.017.i244, align 4, !tbaa !40 ; 2 uses
  %i.gx = add i32 %i.gw, -65
  %or.cond16.i245 = icmp ult i32 %i.gx, 26
  br i1 %or.cond16.i245, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.preheader.i243
  %i.gy = or disjoint i32 %i.gw, 32
  store i32 %i.gy, ptr %.017.i244, align 4, !tbaa !40
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.preheader.i243
  %i.gz = getelementptr inbounds nuw i8, ptr %.017.i244, i64 4 ; 2 uses
  %i.ha = icmp ult ptr %i.gz, %i.fc
  br i1 %i.ha, label %.preheader.i243, label %uriLowercaseInplaceW.exit246, !llvm.loop !119

bb.ae:                                            ; preds = %bb.aa
  %i.hb = icmp eq ptr %i.fc, null
  br i1 %i.hb, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hc = ptrtoint ptr %i.fc to i64
  %i.hd = ptrtoint ptr %i.ey to i64
  %i.he = sub i64 %i.hc, %i.hd                    ; 4 uses
  %i.hf = ashr exact i64 %i.he, 2                 ; 6 uses
  %i.hg = icmp eq ptr %i.fc, %i.ey
  br i1 %i.hg, label %uriLowercaseMallocW.exit254, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hh = icmp ugt i64 %i.hf, 4611686018427387903
  br i1 %i.hh, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hi = load ptr, ptr %3, align 8, !tbaa !46
  %i.hj = tail call ptr %i.hi(ptr noundef nonnull %3, i64 noundef %i.he) #6, !inline_history !115 ; 9 uses
  %i.hk = icmp eq ptr %i.hj, null
  br i1 %i.hk, label %bb.ai, label %.lr.ph.i247

.lr.ph.i247:                                      ; preds = %bb.ah
  %i.hl = ptrtoaddr ptr %i.hj to i64
  %i.hm = load ptr, ptr %i.ex, align 8, !tbaa !71 ; 5 uses
  %min.iters.check557 = icmp ult i64 %i.hf, 8
  %i.hn = ptrtoaddr ptr %i.hm to i64
  %i.ho = sub i64 %i.hn, %i.hl
  %diff.check555 = icmp ugt i64 %i.ho, -32
  %or.cond625 = select i1 %min.iters.check557, i1 true, i1 %diff.check555
  br i1 %or.cond625, label %scalar.ph556.preheader, label %vector.ph558

vector.ph558:                                     ; preds = %.lr.ph.i247
  %n.vec559 = and i64 %i.hf, 4611686018427387896  ; 3 uses
  br label %vector.body560

vector.body560:                                   ; preds = %vector.body560, %vector.ph558
  %index561 = phi i64 [ 0, %vector.ph558 ], [ %index.next564, %vector.body560 ] ; 3 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %index561 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %wide.load562 = load <4 x i32>, ptr %i.hp, align 4, !tbaa !40 ; 3 uses
  %wide.load563 = load <4 x i32>, ptr %i.hq, align 4, !tbaa !40 ; 3 uses
  %i.hr = add <4 x i32> %wide.load562, splat (i32 -65)
  %i.hs = add <4 x i32> %wide.load563, splat (i32 -65)
  %i.ht = icmp ult <4 x i32> %i.hr, splat (i32 26)
  %i.hu = icmp ult <4 x i32> %i.hs, splat (i32 26)
  %i.hv = or disjoint <4 x i32> %wide.load562, splat (i32 32)
  %i.hw = or disjoint <4 x i32> %wide.load563, splat (i32 32)
  %i.hx = select <4 x i1> %i.ht, <4 x i32> %i.hv, <4 x i32> %wide.load562
  %i.hy = select <4 x i1> %i.hu, <4 x i32> %i.hw, <4 x i32> %wide.load563
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %index561 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  store <4 x i32> %i.hx, ptr %i.hz, align 4, !tbaa !40
  store <4 x i32> %i.hy, ptr %i.ia, align 4, !tbaa !40
  %index.next564 = add nuw i64 %index561, 8       ; 2 uses
end_hunk_0
