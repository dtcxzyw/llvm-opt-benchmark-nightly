Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/UriNormalize?download=true
inline.NumInlined: 64
inline.NumDeleted: 18
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@uriPreventLeakageA:bb.a

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16
  tail call void %i.k(ptr noundef %2, ptr noundef %i.g) #6
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.l = and i32 %1, 4
  %.not69 = icmp eq i32 %i.l, 0
  br i1 %.not69, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !27   ; 2 uses
  %.not70 = icmp eq ptr %i.n, null
  br i1 %.not70, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !16
  tail call void %i.p(ptr noundef %2, ptr noundef nonnull %i.n) #6
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  br label %.sink.split

bb.j:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !28   ; 3 uses
  %.not71 = icmp eq ptr %i.s, null
  br i1 %.not71, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !29
  %.not72 = icmp eq ptr %i.s, %i.u
  br i1 %.not72, label %.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !16
  tail call void %i.w(ptr noundef %2, ptr noundef nonnull %i.s) #6
  br label %.sink.split

.sink.split:                                      ; preds = %bb.k, %bb.l, %bb.i
  %.sink = phi ptr [ %i.m, %bb.i ], [ %i.r, %bb.l ], [ %i.r, %bb.k ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sink, i8 0, i64 16, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.j, %bb.g
  %i.x = and i32 %1, 8
  %.not73 = icmp eq i32 %i.x, 0
  br i1 %.not73, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !30   ; 2 uses
  %.not7479 = icmp eq ptr %i.z, null
  br i1 %.not7479, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.q
  %.080 = phi ptr [ %i.z, %.lr.ph ], [ %i.ac, %bb.q ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.080, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.080, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !33
  %i.af = load ptr, ptr %.080, align 8, !tbaa !34 ; 2 uses
  %i.ag = icmp ugt ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !16
  tail call void %i.ah(ptr noundef %2, ptr noundef %i.af) #6
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ai = load ptr, ptr %i.aa, align 8, !tbaa !16
  tail call void %i.ai(ptr noundef %2, ptr noundef nonnull %.080) #6
  %.not74 = icmp eq ptr %i.ac, null
  br i1 %.not74, label %._crit_edge, label %bb.o, !llvm.loop !75

._crit_edge:                                      ; preds = %bb.q, %bb.n
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %bb.m
  %i.aj = and i32 %1, 16
  %.not75 = icmp eq i32 %i.aj, 0
  br i1 %.not75, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !36 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !37
  %.not76 = icmp eq ptr %i.al, %i.an
  br i1 %.not76, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !16
  tail call void %i.ap(ptr noundef %2, ptr noundef %i.al) #6
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %i.aq = and i32 %1, 32
  %.not77 = icmp eq i32 %i.aq, 0
  br i1 %.not77, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !38 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !39
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden i32 @uriNormalizeSyntaxMaskRequiredA(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.UriUriStructA, align 8      ; 4 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %uriNormalizeSyntaxMaskRequiredExA.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull readonly align 8 dereferenceable(160) %0, i64 160, i1 false)
  %i.c = call fastcc i32 @uriNormalizeSyntaxEngineA(ptr noundef nonnull %1, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef null) ; 0 uses
  %.pre = load i32, ptr %i.a, align 4, !tbaa !40
  br label %uriNormalizeSyntaxMaskRequiredExA.exit

uriNormalizeSyntaxMaskRequiredExA.exit:           ; preds = %bb.a, %bb.b
  %i.d = phi i32 [ 0, %bb.a ], [ %.pre, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 3) i32 @uriNormalizeSyntaxMaskRequiredExA(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #0 {
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
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 4) i32 @uriNormalizeSyntaxEngineA(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(address_is_null) %2, ptr noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !40
  %i.b = icmp eq ptr %0, null
  %.not231 = icmp eq ptr %2, null                 ; 6 uses
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %.not231, label %bb.dz, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %2, align 4, !tbaa !40
  br label %bb.dz

bb.d:                                             ; preds = %bb.a
  br i1 %.not231, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.c = icmp eq i32 %1, 0
  br i1 %i.c, label %bb.dz, label %bb.o

bb.f:                                             ; preds = %bb.d
  store i32 0, ptr %2, align 4, !tbaa !40
  %i.d = load ptr, ptr %0, align 8, !tbaa !24     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !99   ; 2 uses
  %i.g = icmp ne ptr %i.d, null
  %i.h = icmp ugt ptr %i.f, %i.d
  %or.cond17.i = and i1 %i.g, %i.h
  br i1 %or.cond17.i, label %.preheader.i, label %uriContainsUppercaseLettersA.exit

.preheader.i:                                     ; preds = %bb.f, %.preheader.i
  %.01219.i = phi ptr [ %i.k, %.preheader.i ], [ %i.d, %bb.f ] ; 2 uses
  %i.i = load i8, ptr %.01219.i, align 1, !tbaa !41
  %i.j = add i8 %i.i, -91
  %or.cond18.i = icmp ult i8 %i.j, -26            ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.01219.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp ne ptr %i.k, %i.f
  %or.cond.not = select i1 %or.cond18.i, i1 %exitcond.not.i, i1 false
  br i1 %or.cond.not, label %.preheader.i, label %uriContainsUppercaseLettersA.exit, !llvm.loop !76

uriContainsUppercaseLettersA.exit:                ; preds = %.preheader.i, %bb.f
  %.not198 = phi i1 [ true, %bb.f ], [ %or.cond18.i, %.preheader.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !28   ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !29   ; 4 uses
  %i.p = icmp ne ptr %i.m, null
  %i.q = icmp ugt ptr %i.o, %i.m
  %or.cond17.i233 = and i1 %i.p, %i.q             ; 2 uses
  br i1 %or.cond17.i233, label %.preheader.i235, label %uriContainsUppercaseLettersA.exit239

.preheader.i235:                                  ; preds = %uriContainsUppercaseLettersA.exit, %.preheader.i235
  %.01219.i236 = phi ptr [ %i.t, %.preheader.i235 ], [ %i.m, %uriContainsUppercaseLettersA.exit ] ; 2 uses
  %i.r = load i8, ptr %.01219.i236, align 1, !tbaa !41
  %i.s = add i8 %i.r, -91
  %or.cond18.i237 = icmp ult i8 %i.s, -26         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.01219.i236, i64 1 ; 2 uses
  %exitcond.not.i238 = icmp ne ptr %i.t, %i.o
  %or.cond746.not = select i1 %or.cond18.i237, i1 %exitcond.not.i238, i1 false
  br i1 %or.cond746.not, label %.preheader.i235, label %uriContainsUppercaseLettersA.exit239, !llvm.loop !76

uriContainsUppercaseLettersA.exit239:             ; preds = %.preheader.i235, %uriContainsUppercaseLettersA.exit
  %.not199 = phi i1 [ true, %uriContainsUppercaseLettersA.exit ], [ %or.cond18.i237, %.preheader.i235 ]
  br i1 %.not198, label %bb.h, label %bb.g

bb.g:                                             ; preds = %uriContainsUppercaseLettersA.exit239
  store i32 1, ptr %2, align 4, !tbaa !40
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %uriContainsUppercaseLettersA.exit239
  %i.u = phi i32 [ 5, %bb.g ], [ 4, %uriContainsUppercaseLettersA.exit239 ]
  br i1 %.not199, label %bb.i, label %uriContainsUglyPercentEncodingA.exit.thread348.sink.split

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 2 ; 2 uses
  %i.w = icmp ult ptr %i.v, %i.o
  %or.cond.i = select i1 %or.cond17.i233, i1 %i.w, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %uriContainsUglyPercentEncodingA.exit

.lr.ph.i:                                         ; preds = %bb.i, %bb.m
  %i.x = phi ptr [ %i.ao, %bb.m ], [ %i.v, %bb.i ] ; 2 uses
  %.02132.i = phi ptr [ %i.an, %bb.m ], [ %i.m, %bb.i ] ; 4 uses
  %i.y = load i8, ptr %.02132.i, align 1, !tbaa !41
  %i.z = icmp eq i8 %i.y, 37
  br i1 %i.z, label %bb.j, label %bb.m

bb.j:                                             ; preds = %.lr.ph.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.02132.i, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !41  ; 2 uses
  %i.ac = add i8 %i.ab, -97
  %or.cond30.i = icmp ult i8 %i.ac, 6
  br i1 %or.cond30.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = load i8, ptr %i.x, align 1, !tbaa !41
  %i.ae = add i8 %i.ad, -97
  %or.cond31.i = icmp ult i8 %i.ae, 6
  br i1 %or.cond31.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.ab) #6
  %i.ag = load i8, ptr %i.x, align 1, !tbaa !41
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
  br i1 %i.ap, label %.lr.ph.i, label %uriContainsUglyPercentEncodingA.exit, !llvm.loop !77

bb.n:                                             ; preds = %bb.k, %bb.j, %bb.l
  %i.aq = load i32, ptr %2, align 4, !tbaa !40
  %i.ar = or i32 %i.aq, 4
  br label %uriContainsUglyPercentEncodingA.exit.thread348.sink.split

bb.o:                                             ; preds = %bb.e
  %i.as = and i32 %1, 1
  %.not187 = icmp eq i32 %i.as, 0
  br i1 %.not187, label %uriLowercaseInplaceA.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = load ptr, ptr %0, align 8, !tbaa !24    ; 32 uses
  %i.au = ptrtoaddr ptr %i.at to i64              ; 2 uses
  %.not188 = icmp eq ptr %i.at, null
  br i1 %.not188, label %uriLowercaseInplaceA.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !42
  %.not189 = icmp eq i32 %i.aw, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !43 ; 6 uses
  %i.az = ptrtoaddr ptr %i.ay to i64              ; 2 uses
  br i1 %.not189, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = icmp ugt ptr %i.ay, %i.at
  br i1 %i.ba, label %iter.check, label %uriLowercaseInplaceA.exit

iter.check:                                       ; preds = %bb.r
  %i.bb = sub i64 %i.az, %i.au                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.bb, 8
  br i1 %min.iters.check, label %.preheader.i240.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check476 = icmp ult i64 %i.bb, 16
  br i1 %min.iters.check476, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bc = and i64 %i.bb, 8
  %n.vec = and i64 %i.bb, -16                     ; 4 uses
  %i.bd = getelementptr i8, ptr %i.at, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %pred.store.continue521
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue521 ] ; 17 uses
  %next.gep = getelementptr i8, ptr %i.at, i64 %index ; 2 uses
  %i.be = getelementptr i8, ptr %i.at, i64 %index
  %next.gep477 = getelementptr i8, ptr %i.be, i64 1
  %i.bf = getelementptr i8, ptr %i.at, i64 %index
  %next.gep478 = getelementptr i8, ptr %i.bf, i64 2
  %i.bg = getelementptr i8, ptr %i.at, i64 %index
  %next.gep479 = getelementptr i8, ptr %i.bg, i64 3
  %i.bh = getelementptr i8, ptr %i.at, i64 %index
  %next.gep480 = getelementptr i8, ptr %i.bh, i64 4
  %i.bi = getelementptr i8, ptr %i.at, i64 %index
  %next.gep481 = getelementptr i8, ptr %i.bi, i64 5
  %i.bj = getelementptr i8, ptr %i.at, i64 %index
  %next.gep482 = getelementptr i8, ptr %i.bj, i64 6
  %i.bk = getelementptr i8, ptr %i.at, i64 %index
  %next.gep483 = getelementptr i8, ptr %i.bk, i64 7
  %i.bl = getelementptr i8, ptr %i.at, i64 %index
  %next.gep484 = getelementptr i8, ptr %i.bl, i64 8
  %i.bm = getelementptr i8, ptr %i.at, i64 %index
  %next.gep485 = getelementptr i8, ptr %i.bm, i64 9
  %i.bn = getelementptr i8, ptr %i.at, i64 %index
  %next.gep486 = getelementptr i8, ptr %i.bn, i64 10
  %i.bo = getelementptr i8, ptr %i.at, i64 %index
  %next.gep487 = getelementptr i8, ptr %i.bo, i64 11
  %i.bp = getelementptr i8, ptr %i.at, i64 %index
  %next.gep488 = getelementptr i8, ptr %i.bp, i64 12
  %i.bq = getelementptr i8, ptr %i.at, i64 %index
  %next.gep489 = getelementptr i8, ptr %i.bq, i64 13
  %i.br = getelementptr i8, ptr %i.at, i64 %index
  %next.gep490 = getelementptr i8, ptr %i.br, i64 14
  %i.bs = getelementptr i8, ptr %i.at, i64 %index
  %next.gep491 = getelementptr i8, ptr %i.bs, i64 15
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !41 ; 17 uses
  %i.bt = add <16 x i8> %wide.load, splat (i8 -65)
  %i.bu = icmp ult <16 x i8> %i.bt, splat (i8 26) ; 16 uses
  %i.bv = extractelement <16 x i1> %i.bu, i64 0
  br i1 %i.bv, label %pred.store.if, label %pred.store.continue

end_hunk_0
begin_hunk_1_@uriNormalizeSyntaxEngineA:bb.a
  %wide.load532 = load <8 x i8>, ptr %next.gep524, align 1, !tbaa !41 ; 9 uses
  %i.ea = add <8 x i8> %wide.load532, splat (i8 -65)
  %i.eb = icmp ult <8 x i8> %i.ea, splat (i8 26)  ; 8 uses
  %i.ec = extractelement <8 x i1> %i.eb, i64 0
  br i1 %i.ec, label %pred.store.if533, label %pred.store.continue534

pred.store.if533:                                 ; preds = %vec.epilog.vector.body
  %i.ed = extractelement <8 x i8> %wide.load532, i64 0
  %i.ee = or disjoint i8 %i.ed, 32
  store i8 %i.ee, ptr %next.gep524, align 1, !tbaa !41
  br label %pred.store.continue534

pred.store.continue534:                           ; preds = %pred.store.if533, %vec.epilog.vector.body
  %i.ef = extractelement <8 x i1> %i.eb, i64 1
  br i1 %i.ef, label %pred.store.if535, label %pred.store.continue536

pred.store.if535:                                 ; preds = %pred.store.continue534
  %i.eg = extractelement <8 x i8> %wide.load532, i64 1
  %i.eh = or disjoint i8 %i.eg, 32
  store i8 %i.eh, ptr %next.gep525, align 1, !tbaa !41
  br label %pred.store.continue536

pred.store.continue536:                           ; preds = %pred.store.if535, %pred.store.continue534
  %i.ei = extractelement <8 x i1> %i.eb, i64 2
  br i1 %i.ei, label %pred.store.if537, label %pred.store.continue538

pred.store.if537:                                 ; preds = %pred.store.continue536
  %i.ej = extractelement <8 x i8> %wide.load532, i64 2
  %i.ek = or disjoint i8 %i.ej, 32
  store i8 %i.ek, ptr %next.gep526, align 1, !tbaa !41
  br label %pred.store.continue538

pred.store.continue538:                           ; preds = %pred.store.if537, %pred.store.continue536
  %i.el = extractelement <8 x i1> %i.eb, i64 3
  br i1 %i.el, label %pred.store.if539, label %pred.store.continue540

pred.store.if539:                                 ; preds = %pred.store.continue538
  %i.em = extractelement <8 x i8> %wide.load532, i64 3
  %i.en = or disjoint i8 %i.em, 32
  store i8 %i.en, ptr %next.gep527, align 1, !tbaa !41
  br label %pred.store.continue540

pred.store.continue540:                           ; preds = %pred.store.if539, %pred.store.continue538
  %i.eo = extractelement <8 x i1> %i.eb, i64 4
  br i1 %i.eo, label %pred.store.if541, label %pred.store.continue542

pred.store.if541:                                 ; preds = %pred.store.continue540
  %i.ep = extractelement <8 x i8> %wide.load532, i64 4
  %i.eq = or disjoint i8 %i.ep, 32
  store i8 %i.eq, ptr %next.gep528, align 1, !tbaa !41
  br label %pred.store.continue542

pred.store.continue542:                           ; preds = %pred.store.if541, %pred.store.continue540
  %i.er = extractelement <8 x i1> %i.eb, i64 5
  br i1 %i.er, label %pred.store.if543, label %pred.store.continue544

pred.store.if543:                                 ; preds = %pred.store.continue542
  %i.es = extractelement <8 x i8> %wide.load532, i64 5
  %i.et = or disjoint i8 %i.es, 32
  store i8 %i.et, ptr %next.gep529, align 1, !tbaa !41
  br label %pred.store.continue544

pred.store.continue544:                           ; preds = %pred.store.if543, %pred.store.continue542
  %i.eu = extractelement <8 x i1> %i.eb, i64 6
  br i1 %i.eu, label %pred.store.if545, label %pred.store.continue546

pred.store.if545:                                 ; preds = %pred.store.continue544
  %i.ev = extractelement <8 x i8> %wide.load532, i64 6
  %i.ew = or disjoint i8 %i.ev, 32
  store i8 %i.ew, ptr %next.gep530, align 1, !tbaa !41
  br label %pred.store.continue546

pred.store.continue546:                           ; preds = %pred.store.if545, %pred.store.continue544
  %i.ex = extractelement <8 x i1> %i.eb, i64 7
  br i1 %i.ex, label %pred.store.if547, label %pred.store.continue548

pred.store.if547:                                 ; preds = %pred.store.continue546
  %i.ey = extractelement <8 x i8> %wide.load532, i64 7
  %i.ez = or disjoint i8 %i.ey, 32
  store i8 %i.ez, ptr %next.gep531, align 1, !tbaa !41
  br label %pred.store.continue548

pred.store.continue548:                           ; preds = %pred.store.if547, %pred.store.continue546
  %index.next549 = add nuw i64 %index523, 8       ; 2 uses
  %i.fa = icmp eq i64 %index.next549, %n.vec522
  br i1 %i.fa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !79

vec.epilog.middle.block:                          ; preds = %pred.store.continue548
  %cmp.n550 = icmp eq i64 %i.bb, %n.vec522
  br i1 %cmp.n550, label %uriLowercaseInplaceA.exit, label %.preheader.i240.preheader

.preheader.i240.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.017.i.ph = phi ptr [ %i.at, %iter.check ], [ %i.bd, %vec.epilog.iter.check ], [ %i.ds, %vec.epilog.middle.block ]
  br label %.preheader.i240

.preheader.i240:                                  ; preds = %.preheader.i240.preheader, %bb.t
  %.017.i = phi ptr [ %i.fe, %bb.t ], [ %.017.i.ph, %.preheader.i240.preheader ] ; 3 uses
  %i.fb = load i8, ptr %.017.i, align 1, !tbaa !41 ; 2 uses
  %i.fc = add i8 %i.fb, -65
  %or.cond16.i = icmp ult i8 %i.fc, 26
  br i1 %or.cond16.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.preheader.i240
  %i.fd = or disjoint i8 %i.fb, 32
  store i8 %i.fd, ptr %.017.i, align 1, !tbaa !41
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.preheader.i240
  %i.fe = getelementptr inbounds nuw i8, ptr %.017.i, i64 1 ; 2 uses
  %exitcond.not.i241 = icmp eq ptr %i.fe, %i.ay
  br i1 %exitcond.not.i241, label %uriLowercaseInplaceA.exit, label %.preheader.i240, !llvm.loop !80

bb.u:                                             ; preds = %bb.q
  %i.ff = icmp eq ptr %i.ay, null
  br i1 %i.ff, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fg = ptrtoint ptr %i.ay to i64
  %i.fh = ptrtoint ptr %i.at to i64
  %i.fi = sub i64 %i.fg, %i.fh                    ; 5 uses
  %i.fj = icmp eq ptr %i.ay, %i.at
  br i1 %i.fj, label %uriLowercaseMallocA.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fk = load ptr, ptr %3, align 8, !tbaa !46
  %i.fl = tail call ptr %i.fk(ptr noundef nonnull %3, i64 noundef %i.fi) #6, !inline_history !81 ; 6 uses
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %bb.x, label %.lr.ph.i242.preheader

.lr.ph.i242.preheader:                            ; preds = %bb.w
  %xtraiter = and i64 %i.fi, 1
  %i.fn = add i64 %i.az, -1
  %i.fo = icmp eq i64 %i.fn, %i.au
  br i1 %i.fo, label %.lr.ph.i242.epil.preheader, label %.lr.ph.i242.preheader.new

.lr.ph.i242.preheader.new:                        ; preds = %.lr.ph.i242.preheader
  %unroll_iter = and i64 %i.fi, -2
  br label %.lr.ph.i242

.lr.ph.i242:                                      ; preds = %.lr.ph.i242, %.lr.ph.i242.preheader.new
  %.040.i = phi i64 [ 0, %.lr.ph.i242.preheader.new ], [ %i.gc, %.lr.ph.i242 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i242.preheader.new ], [ %niter.next.1, %.lr.ph.i242 ]
  %i.fp = load ptr, ptr %0, align 8, !tbaa !43
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.040.i
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !41  ; 3 uses
  %i.fs = add i8 %i.fr, -65
  %or.cond.i243 = icmp ult i8 %i.fs, 26
  %i.ft = or disjoint i8 %i.fr, 32
  %spec.select.i = select i1 %or.cond.i243, i8 %i.ft, i8 %i.fr
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fl, i64 %.040.i
  store i8 %spec.select.i, ptr %i.fu, align 1, !tbaa !41
  %i.fv = or disjoint i64 %.040.i, 1              ; 2 uses
  %i.fw = load ptr, ptr %0, align 8, !tbaa !43
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fv
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !41  ; 3 uses
  %i.fz = add i8 %i.fy, -65
  %or.cond.i243.1 = icmp ult i8 %i.fz, 26
  %i.ga = or disjoint i8 %i.fy, 32
  %spec.select.i.1 = select i1 %or.cond.i243.1, i8 %i.ga, i8 %i.fy
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fv
  store i8 %spec.select.i.1, ptr %i.gb, align 1, !tbaa !41
  %i.gc = add nuw i64 %.040.i, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i242, !llvm.loop !82

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i242
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i242.epil.preheader

.lr.ph.i242.epil.preheader:                       ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i242.preheader
  %.040.i.epil.init = phi i64 [ 0, %.lr.ph.i242.preheader ], [ %i.gc, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %lcmp.mod754 = trunc i64 %i.fi to i1
  tail call void @llvm.assume(i1 %lcmp.mod754)
  %i.gd = load ptr, ptr %0, align 8, !tbaa !43
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 %.040.i.epil.init
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !41  ; 3 uses
  %i.gg = add i8 %i.gf, -65
  %or.cond.i243.epil = icmp ult i8 %i.gg, 26
  %i.gh = or disjoint i8 %i.gf, 32
  %spec.select.i.epil = select i1 %or.cond.i243.epil, i8 %i.gh, i8 %i.gf
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fl, i64 %.040.i.epil.init
  store i8 %spec.select.i.epil, ptr %i.gi, align 1, !tbaa !41
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i242.epil.preheader
  store ptr %i.fl, ptr %0, align 8, !tbaa !43
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fi
  store ptr %i.gj, ptr %i.ax, align 8, !tbaa !43
  br label %uriLowercaseMallocA.exit

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @uriPreventLeakageA(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %3)
  br label %bb.dz

uriLowercaseMallocA.exit:                         ; preds = %._crit_edge.i, %bb.v
  store i32 1, ptr %i.a, align 4, !tbaa !40
  br label %uriLowercaseInplaceA.exit

uriLowercaseInplaceA.exit:                        ; preds = %bb.t, %middle.block, %vec.epilog.middle.block, %bb.r, %uriLowercaseMallocA.exit, %bb.p, %bb.o
  %i.gk = phi i32 [ 0, %bb.o ], [ 0, %bb.r ], [ 1, %uriLowercaseMallocA.exit ], [ 0, %bb.p ], [ 0, %middle.block ], [ 0, %vec.epilog.middle.block ], [ 0, %bb.t ] ; 10 uses
  %i.gl = and i32 %1, 4
  %.not191 = icmp eq i32 %i.gl, 0
  br i1 %.not191, label %uriContainsUglyPercentEncodingA.exit, label %bb.y

bb.y:                                             ; preds = %uriLowercaseInplaceA.exit
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !27 ; 34 uses
  %i.gp = ptrtoaddr ptr %i.go to i64              ; 2 uses
  %.not192 = icmp eq ptr %i.go, null
  br i1 %.not192, label %bb.ah, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !42
  %.not196 = icmp eq i32 %i.gr, 0
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !43 ; 8 uses
  %i.gu = ptrtoaddr ptr %i.gt to i64              ; 2 uses
  br i1 %.not196, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gv = icmp ugt ptr %i.gt, %i.go
  br i1 %i.gv, label %iter.check612, label %uriLowercaseInplaceA.exit250

iter.check612:                                    ; preds = %bb.aa
  %i.gw = sub i64 %i.gu, %i.gp                    ; 7 uses
  %min.iters.check552 = icmp ult i64 %i.gw, 8
  br i1 %min.iters.check552, label %.preheader.i246.preheader, label %vector.main.loop.iter.check553

vector.main.loop.iter.check553:                   ; preds = %iter.check612
  %min.iters.check554 = icmp ult i64 %i.gw, 16
  br i1 %min.iters.check554, label %vec.epilog.ph616, label %vector.ph555

vector.ph555:                                     ; preds = %vector.main.loop.iter.check553
  %i.gx = and i64 %i.gw, 8
  %n.vec556 = and i64 %i.gw, -16                  ; 4 uses
  %i.gy = getelementptr i8, ptr %i.go, i64 %n.vec556
  br label %vector.body557

vector.body557:                                   ; preds = %vector.ph555, %pred.store.continue607
  %index558 = phi i64 [ 0, %vector.ph555 ], [ %index.next608, %pred.store.continue607 ] ; 17 uses
  %next.gep559 = getelementptr i8, ptr %i.go, i64 %index558 ; 2 uses
  %i.gz = getelementptr i8, ptr %i.go, i64 %index558
  %next.gep560 = getelementptr i8, ptr %i.gz, i64 1
  %i.ha = getelementptr i8, ptr %i.go, i64 %index558
  %next.gep561 = getelementptr i8, ptr %i.ha, i64 2
  %i.hb = getelementptr i8, ptr %i.go, i64 %index558
  %next.gep562 = getelementptr i8, ptr %i.hb, i64 3
  %i.hc = getelementptr i8, ptr %i.go, i64 %index558
  %next.gep563 = getelementptr i8, ptr %i.hc, i64 4
  %i.hd = getelementptr i8, ptr %i.go, i64 %index558
  %next.gep564 = getelementptr i8, ptr %i.hd, i64 5
  %i.he = getelementptr i8, ptr %i.go, i64 %index558
  %next.gep565 = getelementptr i8, ptr %i.he, i64 6
  %i.hf = getelementptr i8, ptr %i.go, i64 %index558
  %next.gep566 = getelementptr i8, ptr %i.hf, i64 7
  %i.hg = getelementptr i8, ptr %i.go, i64 %index558
  %next.gep567 = getelementptr i8, ptr %i.hg, i64 8
  %i.hh = getelementptr i8, ptr %i.go, i64 %index558
  %next.gep568 = getelementptr i8, ptr %i.hh, i64 9
  %i.hi = getelementptr i8, ptr %i.go, i64 %index558
  %next.gep569 = getelementptr i8, ptr %i.hi, i64 10
  %i.hj = getelementptr i8, ptr %i.go, i64 %index558
  %next.gep570 = getelementptr i8, ptr %i.hj, i64 11
  %i.hk = getelementptr i8, ptr %i.go, i64 %index558
  %next.gep571 = getelementptr i8, ptr %i.hk, i64 12
  %i.hl = getelementptr i8, ptr %i.go, i64 %index558
  %next.gep572 = getelementptr i8, ptr %i.hl, i64 13
  %i.hm = getelementptr i8, ptr %i.go, i64 %index558
  %next.gep573 = getelementptr i8, ptr %i.hm, i64 14
  %i.hn = getelementptr i8, ptr %i.go, i64 %index558
  %next.gep574 = getelementptr i8, ptr %i.hn, i64 15
  %wide.load575 = load <16 x i8>, ptr %next.gep559, align 1, !tbaa !41 ; 17 uses
  %i.ho = add <16 x i8> %wide.load575, splat (i8 -65)
  %i.hp = icmp ult <16 x i8> %i.ho, splat (i8 26) ; 16 uses
  %i.hq = extractelement <16 x i1> %i.hp, i64 0
  br i1 %i.hq, label %pred.store.if576, label %pred.store.continue577

pred.store.if576:                                 ; preds = %vector.body557
  %i.hr = extractelement <16 x i8> %wide.load575, i64 0
  %i.hs = or disjoint i8 %i.hr, 32
  store i8 %i.hs, ptr %next.gep559, align 1, !tbaa !41
  br label %pred.store.continue577

pred.store.continue577:                           ; preds = %pred.store.if576, %vector.body557
  %i.ht = extractelement <16 x i1> %i.hp, i64 1
  br i1 %i.ht, label %pred.store.if578, label %pred.store.continue579

pred.store.if578:                                 ; preds = %pred.store.continue577
  %i.hu = extractelement <16 x i8> %wide.load575, i64 1
  %i.hv = or disjoint i8 %i.hu, 32
  store i8 %i.hv, ptr %next.gep560, align 1, !tbaa !41
  br label %pred.store.continue579

pred.store.continue579:                           ; preds = %pred.store.if578, %pred.store.continue577
  %i.hw = extractelement <16 x i1> %i.hp, i64 2
  br i1 %i.hw, label %pred.store.if580, label %pred.store.continue581

pred.store.if580:                                 ; preds = %pred.store.continue579
  %i.hx = extractelement <16 x i8> %wide.load575, i64 2
  %i.hy = or disjoint i8 %i.hx, 32
  store i8 %i.hy, ptr %next.gep561, align 1, !tbaa !41
  br label %pred.store.continue581

pred.store.continue581:                           ; preds = %pred.store.if580, %pred.store.continue579
  %i.hz = extractelement <16 x i1> %i.hp, i64 3
  br i1 %i.hz, label %pred.store.if582, label %pred.store.continue583

pred.store.if582:                                 ; preds = %pred.store.continue581
  %i.ia = extractelement <16 x i8> %wide.load575, i64 3
  %i.ib = or disjoint i8 %i.ia, 32
  store i8 %i.ib, ptr %next.gep562, align 1, !tbaa !41
  br label %pred.store.continue583

pred.store.continue583:                           ; preds = %pred.store.if582, %pred.store.continue581
  %i.ic = extractelement <16 x i1> %i.hp, i64 4
  br i1 %i.ic, label %pred.store.if584, label %pred.store.continue585

pred.store.if584:                                 ; preds = %pred.store.continue583
  %i.id = extractelement <16 x i8> %wide.load575, i64 4
  %i.ie = or disjoint i8 %i.id, 32
  store i8 %i.ie, ptr %next.gep563, align 1, !tbaa !41
  br label %pred.store.continue585

pred.store.continue585:                           ; preds = %pred.store.if584, %pred.store.continue583
  %i.if = extractelement <16 x i1> %i.hp, i64 5
  br i1 %i.if, label %pred.store.if586, label %pred.store.continue587

pred.store.if586:                                 ; preds = %pred.store.continue585
  %i.ig = extractelement <16 x i8> %wide.load575, i64 5
  %i.ih = or disjoint i8 %i.ig, 32
  store i8 %i.ih, ptr %next.gep564, align 1, !tbaa !41
  br label %pred.store.continue587

pred.store.continue587:                           ; preds = %pred.store.if586, %pred.store.continue585
  %i.ii = extractelement <16 x i1> %i.hp, i64 6
  br i1 %i.ii, label %pred.store.if588, label %pred.store.continue589

pred.store.if588:                                 ; preds = %pred.store.continue587
  %i.ij = extractelement <16 x i8> %wide.load575, i64 6
  %i.ik = or disjoint i8 %i.ij, 32
  store i8 %i.ik, ptr %next.gep565, align 1, !tbaa !41
  br label %pred.store.continue589

pred.store.continue589:                           ; preds = %pred.store.if588, %pred.store.continue587
  %i.il = extractelement <16 x i1> %i.hp, i64 7
  br i1 %i.il, label %pred.store.if590, label %pred.store.continue591

pred.store.if590:                                 ; preds = %pred.store.continue589
  %i.im = extractelement <16 x i8> %wide.load575, i64 7
  %i.in = or disjoint i8 %i.im, 32
  store i8 %i.in, ptr %next.gep566, align 1, !tbaa !41
  br label %pred.store.continue591

pred.store.continue591:                           ; preds = %pred.store.if590, %pred.store.continue589
  %i.io = extractelement <16 x i1> %i.hp, i64 8
  br i1 %i.io, label %pred.store.if592, label %pred.store.continue593

pred.store.if592:                                 ; preds = %pred.store.continue591
  %i.ip = extractelement <16 x i8> %wide.load575, i64 8
  %i.iq = or disjoint i8 %i.ip, 32
  store i8 %i.iq, ptr %next.gep567, align 1, !tbaa !41
  br label %pred.store.continue593

pred.store.continue593:                           ; preds = %pred.store.if592, %pred.store.continue591
  %i.ir = extractelement <16 x i1> %i.hp, i64 9
  br i1 %i.ir, label %pred.store.if594, label %pred.store.continue595

pred.store.if594:                                 ; preds = %pred.store.continue593
  %i.is = extractelement <16 x i8> %wide.load575, i64 9
  %i.it = or disjoint i8 %i.is, 32
  store i8 %i.it, ptr %next.gep568, align 1, !tbaa !41
  br label %pred.store.continue595

pred.store.continue595:                           ; preds = %pred.store.if594, %pred.store.continue593
  %i.iu = extractelement <16 x i1> %i.hp, i64 10
  br i1 %i.iu, label %pred.store.if596, label %pred.store.continue597

pred.store.if596:                                 ; preds = %pred.store.continue595
  %i.iv = extractelement <16 x i8> %wide.load575, i64 10
  %i.iw = or disjoint i8 %i.iv, 32
  store i8 %i.iw, ptr %next.gep569, align 1, !tbaa !41
  br label %pred.store.continue597

pred.store.continue597:                           ; preds = %pred.store.if596, %pred.store.continue595
  %i.ix = extractelement <16 x i1> %i.hp, i64 11
  br i1 %i.ix, label %pred.store.if598, label %pred.store.continue599

pred.store.if598:                                 ; preds = %pred.store.continue597
  %i.iy = extractelement <16 x i8> %wide.load575, i64 11
  %i.iz = or disjoint i8 %i.iy, 32
  store i8 %i.iz, ptr %next.gep570, align 1, !tbaa !41
  br label %pred.store.continue599

pred.store.continue599:                           ; preds = %pred.store.if598, %pred.store.continue597
  %i.ja = extractelement <16 x i1> %i.hp, i64 12
  br i1 %i.ja, label %pred.store.if600, label %pred.store.continue601

pred.store.if600:                                 ; preds = %pred.store.continue599
end_hunk_1
begin_hunk_2_@uriNormalizeSyntaxEngineA:bb.a
  %i.ju = getelementptr i8, ptr %i.go, i64 %index619
  %next.gep627 = getelementptr i8, ptr %i.ju, i64 7
  %wide.load628 = load <8 x i8>, ptr %next.gep620, align 1, !tbaa !41 ; 9 uses
  %i.jv = add <8 x i8> %wide.load628, splat (i8 -65)
  %i.jw = icmp ult <8 x i8> %i.jv, splat (i8 26)  ; 8 uses
  %i.jx = extractelement <8 x i1> %i.jw, i64 0
  br i1 %i.jx, label %pred.store.if629, label %pred.store.continue630

pred.store.if629:                                 ; preds = %vec.epilog.vector.body618
  %i.jy = extractelement <8 x i8> %wide.load628, i64 0
  %i.jz = or disjoint i8 %i.jy, 32
  store i8 %i.jz, ptr %next.gep620, align 1, !tbaa !41
  br label %pred.store.continue630

pred.store.continue630:                           ; preds = %pred.store.if629, %vec.epilog.vector.body618
  %i.ka = extractelement <8 x i1> %i.jw, i64 1
  br i1 %i.ka, label %pred.store.if631, label %pred.store.continue632

pred.store.if631:                                 ; preds = %pred.store.continue630
  %i.kb = extractelement <8 x i8> %wide.load628, i64 1
  %i.kc = or disjoint i8 %i.kb, 32
  store i8 %i.kc, ptr %next.gep621, align 1, !tbaa !41
  br label %pred.store.continue632

pred.store.continue632:                           ; preds = %pred.store.if631, %pred.store.continue630
  %i.kd = extractelement <8 x i1> %i.jw, i64 2
  br i1 %i.kd, label %pred.store.if633, label %pred.store.continue634

pred.store.if633:                                 ; preds = %pred.store.continue632
  %i.ke = extractelement <8 x i8> %wide.load628, i64 2
  %i.kf = or disjoint i8 %i.ke, 32
  store i8 %i.kf, ptr %next.gep622, align 1, !tbaa !41
  br label %pred.store.continue634

pred.store.continue634:                           ; preds = %pred.store.if633, %pred.store.continue632
  %i.kg = extractelement <8 x i1> %i.jw, i64 3
  br i1 %i.kg, label %pred.store.if635, label %pred.store.continue636

pred.store.if635:                                 ; preds = %pred.store.continue634
  %i.kh = extractelement <8 x i8> %wide.load628, i64 3
  %i.ki = or disjoint i8 %i.kh, 32
  store i8 %i.ki, ptr %next.gep623, align 1, !tbaa !41
  br label %pred.store.continue636

pred.store.continue636:                           ; preds = %pred.store.if635, %pred.store.continue634
  %i.kj = extractelement <8 x i1> %i.jw, i64 4
  br i1 %i.kj, label %pred.store.if637, label %pred.store.continue638

pred.store.if637:                                 ; preds = %pred.store.continue636
  %i.kk = extractelement <8 x i8> %wide.load628, i64 4
  %i.kl = or disjoint i8 %i.kk, 32
  store i8 %i.kl, ptr %next.gep624, align 1, !tbaa !41
  br label %pred.store.continue638

pred.store.continue638:                           ; preds = %pred.store.if637, %pred.store.continue636
  %i.km = extractelement <8 x i1> %i.jw, i64 5
  br i1 %i.km, label %pred.store.if639, label %pred.store.continue640

pred.store.if639:                                 ; preds = %pred.store.continue638
  %i.kn = extractelement <8 x i8> %wide.load628, i64 5
  %i.ko = or disjoint i8 %i.kn, 32
  store i8 %i.ko, ptr %next.gep625, align 1, !tbaa !41
  br label %pred.store.continue640

pred.store.continue640:                           ; preds = %pred.store.if639, %pred.store.continue638
  %i.kp = extractelement <8 x i1> %i.jw, i64 6
  br i1 %i.kp, label %pred.store.if641, label %pred.store.continue642

pred.store.if641:                                 ; preds = %pred.store.continue640
  %i.kq = extractelement <8 x i8> %wide.load628, i64 6
  %i.kr = or disjoint i8 %i.kq, 32
  store i8 %i.kr, ptr %next.gep626, align 1, !tbaa !41
  br label %pred.store.continue642

pred.store.continue642:                           ; preds = %pred.store.if641, %pred.store.continue640
  %i.ks = extractelement <8 x i1> %i.jw, i64 7
  br i1 %i.ks, label %pred.store.if643, label %pred.store.continue644

pred.store.if643:                                 ; preds = %pred.store.continue642
  %i.kt = extractelement <8 x i8> %wide.load628, i64 7
  %i.ku = or disjoint i8 %i.kt, 32
  store i8 %i.ku, ptr %next.gep627, align 1, !tbaa !41
  br label %pred.store.continue644

pred.store.continue644:                           ; preds = %pred.store.if643, %pred.store.continue642
  %index.next645 = add nuw i64 %index619, 8       ; 2 uses
  %i.kv = icmp eq i64 %index.next645, %n.vec617
  br i1 %i.kv, label %vec.epilog.middle.block646, label %vec.epilog.vector.body618, !llvm.loop !84

vec.epilog.middle.block646:                       ; preds = %pred.store.continue644
  %cmp.n647 = icmp eq i64 %i.gw, %n.vec617
  br i1 %cmp.n647, label %uriLowercaseInplaceA.exit250.loopexit, label %.preheader.i246.preheader

.preheader.i246.preheader:                        ; preds = %iter.check612, %vec.epilog.iter.check614, %vec.epilog.middle.block646
  %.017.i247.ph = phi ptr [ %i.go, %iter.check612 ], [ %i.gy, %vec.epilog.iter.check614 ], [ %i.jn, %vec.epilog.middle.block646 ]
  br label %.preheader.i246

.preheader.i246:                                  ; preds = %.preheader.i246.preheader, %bb.ac
  %.017.i247 = phi ptr [ %i.kz, %bb.ac ], [ %.017.i247.ph, %.preheader.i246.preheader ] ; 3 uses
  %i.kw = load i8, ptr %.017.i247, align 1, !tbaa !41 ; 2 uses
  %i.kx = add i8 %i.kw, -65
  %or.cond16.i248 = icmp ult i8 %i.kx, 26
  br i1 %or.cond16.i248, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.preheader.i246
  %i.ky = or disjoint i8 %i.kw, 32
  store i8 %i.ky, ptr %.017.i247, align 1, !tbaa !41
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.preheader.i246
  %i.kz = getelementptr inbounds nuw i8, ptr %.017.i247, i64 1 ; 2 uses
  %exitcond.not.i249 = icmp eq ptr %i.kz, %i.gt
  br i1 %exitcond.not.i249, label %uriLowercaseInplaceA.exit250.loopexit, label %.preheader.i246, !llvm.loop !85

bb.ad:                                            ; preds = %bb.z
  %i.la = icmp eq ptr %i.gt, null
  br i1 %i.la, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.lb = ptrtoint ptr %i.gt to i64
  %i.lc = ptrtoint ptr %i.go to i64
  %i.ld = sub i64 %i.lb, %i.lc                    ; 5 uses
  %i.le = icmp eq ptr %i.gt, %i.go
  br i1 %i.le, label %uriLowercaseMallocA.exit258, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.lf = load ptr, ptr %3, align 8, !tbaa !46
  %i.lg = tail call ptr %i.lf(ptr noundef nonnull %3, i64 noundef %i.ld) #6, !inline_history !81 ; 7 uses
  %i.lh = icmp eq ptr %i.lg, null
  br i1 %i.lh, label %bb.ag, label %.lr.ph.i251.preheader

.lr.ph.i251.preheader:                            ; preds = %bb.af
  %xtraiter755 = and i64 %i.ld, 1
  %i.li = add i64 %i.gu, -1
  %i.lj = icmp eq i64 %i.li, %i.gp
  br i1 %i.lj, label %.lr.ph.i251.epil.preheader, label %.lr.ph.i251.preheader.new

.lr.ph.i251.preheader.new:                        ; preds = %.lr.ph.i251.preheader
  %unroll_iter758 = and i64 %i.ld, -2
  br label %.lr.ph.i251

.lr.ph.i251:                                      ; preds = %.lr.ph.i251, %.lr.ph.i251.preheader.new
  %.040.i252 = phi i64 [ 0, %.lr.ph.i251.preheader.new ], [ %i.lx, %.lr.ph.i251 ] ; 4 uses
  %niter759 = phi i64 [ 0, %.lr.ph.i251.preheader.new ], [ %niter759.next.1, %.lr.ph.i251 ]
  %i.lk = load ptr, ptr %i.gn, align 8, !tbaa !43
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 %.040.i252
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !41  ; 3 uses
  %i.ln = add i8 %i.lm, -65
  %or.cond.i253 = icmp ult i8 %i.ln, 26
  %i.lo = or disjoint i8 %i.lm, 32
  %spec.select.i254 = select i1 %or.cond.i253, i8 %i.lo, i8 %i.lm
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lg, i64 %.040.i252
  store i8 %spec.select.i254, ptr %i.lp, align 1, !tbaa !41
  %i.lq = or disjoint i64 %.040.i252, 1           ; 2 uses
  %i.lr = load ptr, ptr %i.gn, align 8, !tbaa !43
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.lq
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !41  ; 3 uses
  %i.lu = add i8 %i.lt, -65
  %or.cond.i253.1 = icmp ult i8 %i.lu, 26
  %i.lv = or disjoint i8 %i.lt, 32
  %spec.select.i254.1 = select i1 %or.cond.i253.1, i8 %i.lv, i8 %i.lt
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lg, i64 %i.lq
  store i8 %spec.select.i254.1, ptr %i.lw, align 1, !tbaa !41
  %i.lx = add nuw i64 %.040.i252, 2               ; 2 uses
  %niter759.next.1 = add i64 %niter759, 2         ; 2 uses
  %niter759.ncmp.1 = icmp eq i64 %niter759.next.1, %unroll_iter758
  br i1 %niter759.ncmp.1, label %._crit_edge.i256.unr-lcssa, label %.lr.ph.i251, !llvm.loop !82

._crit_edge.i256.unr-lcssa:                       ; preds = %.lr.ph.i251
  %lcmp.mod756.not = icmp eq i64 %xtraiter755, 0
  br i1 %lcmp.mod756.not, label %._crit_edge.i256, label %.lr.ph.i251.epil.preheader

.lr.ph.i251.epil.preheader:                       ; preds = %._crit_edge.i256.unr-lcssa, %.lr.ph.i251.preheader
  %.040.i252.epil.init = phi i64 [ 0, %.lr.ph.i251.preheader ], [ %i.lx, %._crit_edge.i256.unr-lcssa ] ; 2 uses
  %lcmp.mod757 = trunc i64 %i.ld to i1
  tail call void @llvm.assume(i1 %lcmp.mod757)
  %i.ly = load ptr, ptr %i.gn, align 8, !tbaa !43
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 %.040.i252.epil.init
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !41  ; 3 uses
  %i.mb = add i8 %i.ma, -65
  %or.cond.i253.epil = icmp ult i8 %i.mb, 26
  %i.mc = or disjoint i8 %i.ma, 32
  %spec.select.i254.epil = select i1 %or.cond.i253.epil, i8 %i.mc, i8 %i.ma
  %i.md = getelementptr inbounds nuw i8, ptr %i.lg, i64 %.040.i252.epil.init
  store i8 %spec.select.i254.epil, ptr %i.md, align 1, !tbaa !41
  br label %._crit_edge.i256

._crit_edge.i256:                                 ; preds = %._crit_edge.i256.unr-lcssa, %.lr.ph.i251.epil.preheader
  store ptr %i.lg, ptr %i.gn, align 8, !tbaa !43
  %i.me = getelementptr inbounds nuw i8, ptr %i.lg, i64 %i.ld ; 2 uses
  store ptr %i.me, ptr %i.gs, align 8, !tbaa !43
  br label %uriLowercaseMallocA.exit258

bb.ag:                                            ; preds = %bb.af, %bb.ad
  tail call void @uriPreventLeakageA(ptr noundef nonnull %0, i32 noundef %i.gk, ptr noundef %3)
  br label %bb.dz

uriLowercaseMallocA.exit258:                      ; preds = %._crit_edge.i256, %bb.ae
  %i.mf = phi ptr [ %i.me, %._crit_edge.i256 ], [ %i.gt, %bb.ae ]
  %i.mg = phi ptr [ %i.lg, %._crit_edge.i256 ], [ %i.go, %bb.ae ]
  %i.mh = or disjoint i32 %i.gk, 4                ; 2 uses
  store i32 %i.mh, ptr %i.a, align 4, !tbaa !40
  br label %uriLowercaseInplaceA.exit250

uriLowercaseInplaceA.exit250.loopexit:            ; preds = %bb.ac, %vec.epilog.middle.block646, %middle.block609
  %.pre = load ptr, ptr %i.gn, align 8, !tbaa !27
  %.pre390 = load ptr, ptr %i.gs, align 8, !tbaa !101
  br label %uriLowercaseInplaceA.exit250

uriLowercaseInplaceA.exit250:                     ; preds = %uriLowercaseInplaceA.exit250.loopexit, %bb.aa, %uriLowercaseMallocA.exit258
  %4 = phi i32 [ %i.gk, %uriLowercaseInplaceA.exit250.loopexit ], [ %i.gk, %bb.aa ], [ %i.mh, %uriLowercaseMallocA.exit258 ]
  %i.mi = phi ptr [ %.pre390, %uriLowercaseInplaceA.exit250.loopexit ], [ %i.gt, %bb.aa ], [ %i.mf, %uriLowercaseMallocA.exit258 ]
  %i.mj = phi ptr [ %.pre, %uriLowercaseInplaceA.exit250.loopexit ], [ %i.go, %bb.aa ], [ %i.mg, %uriLowercaseMallocA.exit258 ]
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.mj, ptr %i.mk, align 8, !tbaa !28
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.mi, ptr %i.ml, align 8, !tbaa !29
  br label %uriContainsUglyPercentEncodingA.exit

bb.ah:                                            ; preds = %bb.y
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !28 ; 2 uses
  %.not193 = icmp eq ptr %i.mn, null
  br i1 %.not193, label %uriContainsUglyPercentEncodingA.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.mo = load ptr, ptr %i.gm, align 8, !tbaa !102
  %i.mp = icmp eq ptr %i.mo, null
  br i1 %i.mp, label %bb.aj, label %uriContainsUglyPercentEncodingA.exit

bb.aj:                                            ; preds = %bb.ai
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !42
  %.not194 = icmp eq i32 %i.mr, 0
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br i1 %.not194, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call fastcc void @uriFixPercentEncodingInplaceA(ptr noundef nonnull %i.mn, ptr noundef %i.ms)
  br label %bb.ao

bb.al:                                            ; preds = %bb.aj
  %i.mt = tail call fastcc i32 @uriFixPercentEncodingMallocA(ptr noundef %i.mm, ptr noundef %i.ms, ptr noundef %3)
  %.not195 = icmp eq i32 %i.mt, 0
  br i1 %.not195, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  tail call void @uriPreventLeakageA(ptr noundef nonnull %0, i32 noundef %i.gk, ptr noundef %3)
  br label %bb.dz

bb.an:                                            ; preds = %bb.al
  %i.mu = or disjoint i32 %i.gk, 4                ; 2 uses
  store i32 %i.mu, ptr %i.a, align 4, !tbaa !40
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ak
  %5 = phi i32 [ %i.mu, %bb.an ], [ %i.gk, %bb.ak ] ; 3 uses
  %i.mv = load ptr, ptr %i.mm, align 8, !tbaa !28 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !29 ; 3 uses
  %i.my = icmp ne ptr %i.mv, null
  %i.mz = icmp ugt ptr %i.mx, %i.mv
  %or.cond20.i = and i1 %i.my, %i.mz
  br i1 %or.cond20.i, label %.preheader.i259, label %uriContainsUglyPercentEncodingA.exit

.preheader.i259:                                  ; preds = %bb.ao, %bb.at
  %.022.i = phi ptr [ %i.ng, %bb.at ], [ %i.mv, %bb.ao ] ; 6 uses
  %i.na = load i8, ptr %.022.i, align 1, !tbaa !41 ; 3 uses
  %i.nb = add i8 %i.na, -65
  %or.cond21.i = icmp ult i8 %i.nb, 26
  br i1 %or.cond21.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.preheader.i259
  %i.nc = or disjoint i8 %i.na, 32
  store i8 %i.nc, ptr %.022.i, align 1, !tbaa !41
  br label %bb.at

bb.aq:                                            ; preds = %.preheader.i259
  %i.nd = icmp eq i8 %i.na, 37
  br i1 %i.nd, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.ne = getelementptr inbounds nuw i8, ptr %.022.i, i64 3
  %.not.i261 = icmp ult ptr %i.ne, %i.mx
  br i1 %.not.i261, label %bb.as, label %uriContainsUglyPercentEncodingA.exit

bb.as:                                            ; preds = %bb.ar
  %i.nf = getelementptr inbounds nuw i8, ptr %.022.i, i64 2
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.aq, %bb.ap
  %.1.i260 = phi ptr [ %.022.i, %bb.ap ], [ %i.nf, %bb.as ], [ %.022.i, %bb.aq ]
  %i.ng = getelementptr inbounds nuw i8, ptr %.1.i260, i64 1 ; 2 uses
  %i.nh = icmp ult ptr %i.ng, %i.mx
  br i1 %i.nh, label %.preheader.i259, label %uriContainsUglyPercentEncodingA.exit, !llvm.loop !86

uriContainsUglyPercentEncodingA.exit:             ; preds = %bb.m, %bb.at, %bb.ar, %bb.ao, %bb.i, %uriLowercaseInplaceA.exit, %bb.ah, %bb.ai, %uriLowercaseInplaceA.exit250
  %6 = phi i32 [ %5, %bb.at ], [ %4, %uriLowercaseInplaceA.exit250 ], [ %5, %bb.ao ], [ 0, %bb.i ], [ %i.gk, %uriLowercaseInplaceA.exit ], [ %i.gk, %bb.ah ], [ %i.gk, %bb.ai ], [ %5, %bb.ar ], [ 0, %bb.m ] ; 7 uses
  br i1 %.not231, label %bb.ax, label %uriContainsUglyPercentEncodingA.exit.thread348

uriContainsUglyPercentEncodingA.exit.thread348.sink.split: ; preds = %bb.h, %bb.n
  %.sink = phi i32 [ %i.ar, %bb.n ], [ %i.u, %bb.h ]
  store i32 %.sink, ptr %2, align 4, !tbaa !40
  br label %uriContainsUglyPercentEncodingA.exit.thread348

uriContainsUglyPercentEncodingA.exit.thread348:   ; preds = %uriContainsUglyPercentEncodingA.exit.thread348.sink.split, %uriContainsUglyPercentEncodingA.exit
  %7 = phi i32 [ %6, %uriContainsUglyPercentEncodingA.exit ], [ 0, %uriContainsUglyPercentEncodingA.exit.thread348.sink.split ] ; 3 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !103 ; 3 uses
  %.not204 = icmp eq ptr %i.nj, null
  br i1 %.not204, label %uriDropLeadingZerosInplaceA.exit.thread350, label %bb.au

bb.au:                                            ; preds = %uriContainsUglyPercentEncodingA.exit.thread348
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !104
  %i.nm = ptrtoint ptr %i.nl to i64
  %i.nn = ptrtoint ptr %i.nj to i64
  %i.no = sub i64 %i.nm, %i.nn
  %i.np = icmp ugt i64 %i.no, 1
  br i1 %i.np, label %bb.av, label %uriDropLeadingZerosInplaceA.exit.thread350

bb.av:                                            ; preds = %bb.au
  %i.nq = load i8, ptr %i.nj, align 1, !tbaa !41
  %i.nr = icmp eq i8 %i.nq, 48
  br i1 %i.nr, label %bb.aw, label %uriDropLeadingZerosInplaceA.exit.thread350

bb.aw:                                            ; preds = %bb.av
  %i.ns = load i32, ptr %2, align 4, !tbaa !40
  %i.nt = or i32 %i.ns, 64
  store i32 %i.nt, ptr %2, align 4, !tbaa !40
  br label %uriDropLeadingZerosInplaceA.exit.thread350

bb.ax:                                            ; preds = %uriContainsUglyPercentEncodingA.exit
  %i.nu = and i32 %1, 64
  %.not201 = icmp eq i32 %i.nu, 0
  br i1 %.not201, label %uriDropLeadingZerosInplaceA.exit.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !103 ; 15 uses
  %.not202 = icmp eq ptr %i.nw, null
  br i1 %.not202, label %uriDropLeadingZerosInplaceA.exit.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !42
  %.not203 = icmp eq i32 %i.ny, 0
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !43 ; 10 uses
  %i.ob = icmp eq ptr %i.nw, %i.oa                ; 2 uses
  br i1 %.not203, label %bb.be, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  br i1 %i.ob, label %uriDropLeadingZerosInplaceA.exit.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.oc = icmp ult ptr %i.nw, %i.oa
  br i1 %i.oc, label %.lr.ph.preheader.i.i, label %uriPastLeadingZerosA.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.bb
  %i.od = ptrtoaddr ptr %i.oa to i64
  %i.oe = ptrtoaddr ptr %i.nw to i64
  %i.of = sub i64 %i.od, %i.oe
  %scevgep.i.i = getelementptr i8, ptr %i.nw, i64 %i.of
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bc, %.lr.ph.preheader.i.i
  %.09.i.i = phi ptr [ %i.oi, %bb.bc ], [ %i.nw, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.og = load i8, ptr %.09.i.i, align 1, !tbaa !41
  %i.oh = icmp eq i8 %i.og, 48
  br i1 %i.oh, label %bb.bc, label %uriPastLeadingZerosA.exit.i

bb.bc:                                            ; preds = %.lr.ph.i.i
  %i.oi = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 1 ; 2 uses
  %exitcond.not.i.i = icmp eq ptr %i.oi, %i.oa
  br i1 %exitcond.not.i.i, label %uriPastLeadingZerosA.exit.i, label %.lr.ph.i.i, !llvm.loop !87

uriPastLeadingZerosA.exit.i:                      ; preds = %bb.bc, %.lr.ph.i.i, %bb.bb
  %.0.lcssa.i.i = phi ptr [ %i.nw, %bb.bb ], [ %scevgep.i.i, %bb.bc ], [ %.09.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.oj = icmp eq ptr %.0.lcssa.i.i, %i.oa
  %spec.select.idx.i.i = sext i1 %i.oj to i64
  %spec.select.i.i = getelementptr inbounds i8, ptr %.0.lcssa.i.i, i64 %spec.select.idx.i.i ; 3 uses
  %i.ok = icmp ugt ptr %spec.select.i.i, %i.nw
  br i1 %i.ok, label %bb.bd, label %uriDropLeadingZerosInplaceA.exit.thread

bb.bd:                                            ; preds = %uriPastLeadingZerosA.exit.i
  %i.ol = ptrtoint ptr %i.oa to i64
  %i.om = ptrtoint ptr %spec.select.i.i to i64
  %i.on = sub i64 %i.ol, %i.om                    ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.nw, ptr nonnull align 1 %spec.select.i.i, i64 %i.on, i1 false)
  %i.oo = getelementptr inbounds nuw i8, ptr %i.nw, i64 %i.on ; 2 uses
  store i8 0, ptr %i.oo, align 1, !tbaa !41
  store ptr %i.oo, ptr %i.nz, align 8, !tbaa !43
  br label %uriDropLeadingZerosInplaceA.exit.thread

bb.be:                                            ; preds = %bb.az
  br i1 %i.ob, label %uriDropLeadingZerosInplaceA.exit.thread, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.op = icmp ult ptr %i.nw, %i.oa
  br i1 %i.op, label %.lr.ph.preheader.i.i266, label %uriPastLeadingZerosA.exit.i262

.lr.ph.preheader.i.i266:                          ; preds = %bb.bf
  %i.oq = ptrtoaddr ptr %i.oa to i64
  %i.or = ptrtoaddr ptr %i.nw to i64
  %i.os = sub i64 %i.oq, %i.or
  %scevgep.i.i267 = getelementptr i8, ptr %i.nw, i64 %i.os
  br label %.lr.ph.i.i268

.lr.ph.i.i268:                                    ; preds = %bb.bg, %.lr.ph.preheader.i.i266
  %.09.i.i269 = phi ptr [ %i.ov, %bb.bg ], [ %i.nw, %.lr.ph.preheader.i.i266 ] ; 3 uses
  %i.ot = load i8, ptr %.09.i.i269, align 1, !tbaa !41
  %i.ou = icmp eq i8 %i.ot, 48
  br i1 %i.ou, label %bb.bg, label %uriPastLeadingZerosA.exit.i262

bb.bg:                                            ; preds = %.lr.ph.i.i268
  %i.ov = getelementptr inbounds nuw i8, ptr %.09.i.i269, i64 1 ; 2 uses
  %exitcond.not.i.i270 = icmp eq ptr %i.ov, %i.oa
  br i1 %exitcond.not.i.i270, label %uriPastLeadingZerosA.exit.i262, label %.lr.ph.i.i268, !llvm.loop !87

uriPastLeadingZerosA.exit.i262:                   ; preds = %bb.bg, %.lr.ph.i.i268, %bb.bf
  %.0.lcssa.i.i263 = phi ptr [ %i.nw, %bb.bf ], [ %scevgep.i.i267, %bb.bg ], [ %.09.i.i269, %.lr.ph.i.i268 ] ; 2 uses
  %i.ow = icmp eq ptr %.0.lcssa.i.i263, %i.oa
  %spec.select.idx.i.i264 = sext i1 %i.ow to i64
  %spec.select.i.i265 = getelementptr inbounds i8, ptr %.0.lcssa.i.i263, i64 %spec.select.idx.i.i264
  store ptr %spec.select.i.i265, ptr %i.nv, align 8, !tbaa !43
  br label %uriDropLeadingZerosInplaceA.exit.thread

uriDropLeadingZerosInplaceA.exit.thread350:       ; preds = %uriContainsUglyPercentEncodingA.exit.thread348, %bb.aw, %bb.av, %bb.au
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !25 ; 4 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !26 ; 3 uses
  %i.pb = icmp ne ptr %i.oy, null
  %i.pc = icmp ugt ptr %i.pa, %i.oy
  %or.cond29.i271 = and i1 %i.pb, %i.pc
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oy, i64 2 ; 2 uses
  %i.pe = icmp ult ptr %i.pd, %i.pa
  %or.cond.i272 = select i1 %or.cond29.i271, i1 %i.pe, i1 false
  br i1 %or.cond.i272, label %.lr.ph.i274, label %uriContainsUglyPercentEncodingA.exit279.thread356

.lr.ph.i274:                                      ; preds = %uriDropLeadingZerosInplaceA.exit.thread350, %bb.bk
  %i.pf = phi ptr [ %i.pw, %bb.bk ], [ %i.pd, %uriDropLeadingZerosInplaceA.exit.thread350 ] ; 2 uses
  %.02132.i275 = phi ptr [ %i.pv, %bb.bk ], [ %i.oy, %uriDropLeadingZerosInplaceA.exit.thread350 ] ; 4 uses
  %i.pg = load i8, ptr %.02132.i275, align 1, !tbaa !41
  %i.ph = icmp eq i8 %i.pg, 37
  br i1 %i.ph, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %.lr.ph.i274
  %i.pi = getelementptr inbounds nuw i8, ptr %.02132.i275, i64 1
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !41  ; 2 uses
  %i.pk = add i8 %i.pj, -97
  %or.cond30.i276 = icmp ult i8 %i.pk, 6
  br i1 %or.cond30.i276, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.pl = load i8, ptr %i.pf, align 1, !tbaa !41
  %i.pm = add i8 %i.pl, -97
  %or.cond31.i277 = icmp ult i8 %i.pm, 6
  br i1 %or.cond31.i277, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.pn = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.pj) #6
  %i.po = load i8, ptr %i.pf, align 1, !tbaa !41
  %i.pp = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.po) #6
  %i.pq = zext i8 %i.pn to i32
  %i.pr = shl nuw nsw i32 %i.pq, 4
  %i.ps = zext i8 %i.pp to i32
  %i.pt = add nuw nsw i32 %i.pr, %i.ps
  %i.pu = tail call i32 @uriIsUnreserved(i32 noundef %i.pt) #6
  %.not.i278 = icmp eq i32 %i.pu, 0
  br i1 %.not.i278, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj, %.lr.ph.i274
  %i.pv = getelementptr inbounds nuw i8, ptr %.02132.i275, i64 1
  %i.pw = getelementptr inbounds nuw i8, ptr %.02132.i275, i64 3 ; 2 uses
  %i.px = icmp ult ptr %i.pw, %i.pa
  br i1 %i.px, label %.lr.ph.i274, label %uriContainsUglyPercentEncodingA.exit279, !llvm.loop !77

bb.bl:                                            ; preds = %bb.bi, %bb.bh, %bb.bj
  %i.py = load i32, ptr %2, align 4, !tbaa !40
  %i.pz = or i32 %i.py, 2
  store i32 %i.pz, ptr %2, align 4, !tbaa !40
  br label %uriContainsUglyPercentEncodingA.exit279.thread356

uriDropLeadingZerosInplaceA.exit.thread:          ; preds = %uriPastLeadingZerosA.exit.i, %bb.bd, %uriPastLeadingZerosA.exit.i262, %bb.ay, %bb.ax, %bb.ba, %bb.be
  %i.qa = and i32 %1, 2
  %.not205 = icmp eq i32 %i.qa, 0
  br i1 %.not205, label %uriContainsUglyPercentEncodingA.exit279.thread354, label %bb.bm

bb.bm:                                            ; preds = %uriDropLeadingZerosInplaceA.exit.thread
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !25 ; 9 uses
  %.not206 = icmp eq ptr %i.qc, null
  br i1 %.not206, label %uriContainsUglyPercentEncodingA.exit279.thread354, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !42
  %.not207 = icmp eq i32 %i.qe, 0
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br i1 %.not207, label %bb.bv, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !43 ; 2 uses
  %i.qh = icmp eq ptr %i.qg, null
  br i1 %i.qh, label %uriContainsUglyPercentEncodingA.exit279.thread354, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.qi = ptrtoint ptr %i.qg to i64               ; 2 uses
  %i.qj = ptrtoint ptr %i.qc to i64               ; 3 uses
  %i.qk = sub i64 %i.qi, %i.qj                    ; 4 uses
  %i.ql = icmp ugt i64 %i.qk, 2
  br i1 %i.ql, label %.lr.ph.i.i281, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.bu, %bb.bp
  %.039.lcssa.i.i = phi ptr [ %i.qc, %bb.bp ], [ %.241.i.i, %bb.bu ] ; 8 uses
  %.0.lcssa.i.i280 = phi i64 [ 0, %bb.bp ], [ %i.rz, %bb.bu ] ; 9 uses
  %.039.lcssa.i.i649 = ptrtoaddr ptr %.039.lcssa.i.i to i64
  %i.qm = icmp ult i64 %.0.lcssa.i.i280, %i.qk
  br i1 %i.qm, label %iter.check665, label %uriFixPercentEncodingEngineA.exit.i

iter.check665:                                    ; preds = %.preheader.i.i
  %i.qn = add i64 %.0.lcssa.i.i280, %i.qj
  %i.qo = sub i64 %i.qi, %i.qn                    ; 7 uses
  %min.iters.check650 = icmp ult i64 %i.qo, 8
  br i1 %min.iters.check650, label %.lr.ph49.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check665
  %i.qp = add i64 %.0.lcssa.i.i280, %i.qj
  %i.qq = sub i64 %i.qp, %.039.lcssa.i.i649
  %diff.check = icmp ugt i64 %i.qq, -32
  br i1 %diff.check, label %.lr.ph49.i.i.preheader, label %vector.main.loop.iter.check651

vector.main.loop.iter.check651:                   ; preds = %vector.memcheck
  %min.iters.check652 = icmp ult i64 %i.qo, 32
  br i1 %min.iters.check652, label %vec.epilog.ph669, label %vector.ph653

vector.ph653:                                     ; preds = %vector.main.loop.iter.check651
  %i.qr = and i64 %i.qo, 24
  %n.vec654 = and i64 %i.qo, -32                  ; 5 uses
  %i.qs = add i64 %.0.lcssa.i.i280, %n.vec654
  %i.qt = getelementptr i8, ptr %.039.lcssa.i.i, i64 %n.vec654 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qc, i64 %.0.lcssa.i.i280
  br label %vector.body655

vector.body655:                                   ; preds = %vector.ph653, %vector.body655
  %index656 = phi i64 [ 0, %vector.ph653 ], [ %index.next660, %vector.body655 ] ; 3 uses
  %next.gep657 = getelementptr i8, ptr %.039.lcssa.i.i, i64 %index656 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 %index656 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 16
  %wide.load658 = load <16 x i8>, ptr %i.qv, align 1, !tbaa !41
  %wide.load659 = load <16 x i8>, ptr %i.qw, align 1, !tbaa !41
  %i.qx = getelementptr i8, ptr %next.gep657, i64 16
  store <16 x i8> %wide.load658, ptr %next.gep657, align 1, !tbaa !41
  store <16 x i8> %wide.load659, ptr %i.qx, align 1, !tbaa !41
  %index.next660 = add nuw i64 %index656, 32      ; 2 uses
  %i.qy = icmp eq i64 %index.next660, %n.vec654
  br i1 %i.qy, label %middle.block661, label %vector.body655, !llvm.loop !88

middle.block661:                                  ; preds = %vector.body655
  %cmp.n662 = icmp eq i64 %i.qo, %n.vec654
  br i1 %cmp.n662, label %uriFixPercentEncodingEngineA.exit.i, label %vec.epilog.iter.check667

vec.epilog.iter.check667:                         ; preds = %middle.block661
  %min.epilog.iters.check668 = icmp eq i64 %i.qr, 0
  br i1 %min.epilog.iters.check668, label %.lr.ph49.i.i.preheader, label %vec.epilog.ph669, !prof !47

vec.epilog.ph669:                                 ; preds = %vector.main.loop.iter.check651, %vec.epilog.iter.check667
  %vec.epilog.resume.val663 = phi i64 [ %n.vec654, %vec.epilog.iter.check667 ], [ 0, %vector.main.loop.iter.check651 ]
  %n.vec670 = and i64 %i.qo, -8                   ; 4 uses
  %i.qz = add i64 %.0.lcssa.i.i280, %n.vec670
  %i.ra = getelementptr i8, ptr %.039.lcssa.i.i, i64 %n.vec670 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qc, i64 %.0.lcssa.i.i280
  br label %vec.epilog.vector.body671

vec.epilog.vector.body671:                        ; preds = %vec.epilog.vector.body671, %vec.epilog.ph669
  %index672 = phi i64 [ %vec.epilog.resume.val663, %vec.epilog.ph669 ], [ %index.next675, %vec.epilog.vector.body671 ] ; 3 uses
  %next.gep673 = getelementptr i8, ptr %.039.lcssa.i.i, i64 %index672
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 %index672
  %wide.load674 = load <8 x i8>, ptr %i.rc, align 1, !tbaa !41
  store <8 x i8> %wide.load674, ptr %next.gep673, align 1, !tbaa !41
  %index.next675 = add nuw i64 %index672, 8       ; 2 uses
  %i.rd = icmp eq i64 %index.next675, %n.vec670
  br i1 %i.rd, label %vec.epilog.middle.block676, label %vec.epilog.vector.body671, !llvm.loop !89

vec.epilog.middle.block676:                       ; preds = %vec.epilog.vector.body671
  %cmp.n677 = icmp eq i64 %i.qo, %n.vec670
  br i1 %cmp.n677, label %uriFixPercentEncodingEngineA.exit.i, label %.lr.ph49.i.i.preheader

.lr.ph49.i.i.preheader:                           ; preds = %iter.check665, %vector.memcheck, %vec.epilog.iter.check667, %vec.epilog.middle.block676
  %.248.i.i.ph = phi i64 [ %.0.lcssa.i.i280, %iter.check665 ], [ %.0.lcssa.i.i280, %vector.memcheck ], [ %i.qs, %vec.epilog.iter.check667 ], [ %i.qz, %vec.epilog.middle.block676 ]
  %.347.i.i.ph = phi ptr [ %.039.lcssa.i.i, %iter.check665 ], [ %.039.lcssa.i.i, %vector.memcheck ], [ %i.qt, %vec.epilog.iter.check667 ], [ %i.ra, %vec.epilog.middle.block676 ]
  br label %.lr.ph49.i.i

.lr.ph.i.i281:                                    ; preds = %bb.bp, %bb.bu
  %i.re = phi i64 [ %i.sa, %bb.bu ], [ 2, %bb.bp ] ; 3 uses
  %.045.i.i = phi i64 [ %i.rz, %bb.bu ], [ 0, %bb.bp ] ; 2 uses
  %.03944.i.i = phi ptr [ %.241.i.i, %bb.bu ], [ %i.qc, %bb.bp ] ; 7 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qc, i64 %.045.i.i ; 2 uses
  %i.rg = load i8, ptr %i.rf, align 1, !tbaa !41  ; 2 uses
  %.not.i.i = icmp eq i8 %i.rg, 37
  br i1 %.not.i.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph.i.i281
  store i8 %i.rg, ptr %.03944.i.i, align 1, !tbaa !41
  %i.rh = getelementptr inbounds nuw i8, ptr %.03944.i.i, i64 1
  br label %bb.bu

bb.br:                                            ; preds = %.lr.ph.i.i281
  %i.ri = getelementptr i8, ptr %i.rf, i64 1
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !41
  %i.rk = getelementptr inbounds nuw i8, ptr %i.qc, i64 %i.re
  %i.rl = load i8, ptr %i.rk, align 1, !tbaa !41
  %i.rm = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.rj) #6
  %i.rn = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.rl) #6
  %i.ro = zext i8 %i.rm to i32                    ; 2 uses
  %i.rp = shl nuw nsw i32 %i.ro, 4
  %i.rq = zext i8 %i.rn to i32                    ; 2 uses
  %i.rr = add nuw nsw i32 %i.rp, %i.rq            ; 2 uses
  %i.rs = tail call i32 @uriIsUnreserved(i32 noundef %i.rr) #6
  %.not43.i.i = icmp eq i32 %i.rs, 0
  %i.rt = getelementptr inbounds nuw i8, ptr %.03944.i.i, i64 1 ; 2 uses
  br i1 %.not43.i.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ru = trunc i32 %i.rr to i8
  store i8 %i.ru, ptr %.03944.i.i, align 1, !tbaa !41
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  store i8 37, ptr %.03944.i.i, align 1, !tbaa !41
  %i.rv = tail call signext i8 @uriHexToLetterExA(i32 noundef %i.ro, i32 noundef 1) #6
  store i8 %i.rv, ptr %i.rt, align 1, !tbaa !41
  %i.rw = tail call signext i8 @uriHexToLetterExA(i32 noundef %i.rq, i32 noundef 1) #6
  %i.rx = getelementptr inbounds nuw i8, ptr %.03944.i.i, i64 2
  store i8 %i.rw, ptr %i.rx, align 1, !tbaa !41
  %i.ry = getelementptr inbounds nuw i8, ptr %.03944.i.i, i64 3
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %bb.bq
  %.241.i.i = phi ptr [ %i.rh, %bb.bq ], [ %i.rt, %bb.bs ], [ %i.ry, %bb.bt ] ; 2 uses
  %.1.i.i = phi i64 [ %.045.i.i, %bb.bq ], [ %i.re, %bb.bs ], [ %i.re, %bb.bt ] ; 2 uses
  %i.rz = add i64 %.1.i.i, 1                      ; 2 uses
  %i.sa = add i64 %.1.i.i, 3                      ; 2 uses
  %i.sb = icmp ult i64 %i.sa, %i.qk
  br i1 %i.sb, label %.lr.ph.i.i281, label %.preheader.i.i, !llvm.loop !0

.lr.ph49.i.i:                                     ; preds = %.lr.ph49.i.i.preheader, %.lr.ph49.i.i
  %.248.i.i = phi i64 [ %i.sf, %.lr.ph49.i.i ], [ %.248.i.i.ph, %.lr.ph49.i.i.preheader ] ; 2 uses
  %.347.i.i = phi ptr [ %i.se, %.lr.ph49.i.i ], [ %.347.i.i.ph, %.lr.ph49.i.i.preheader ] ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.qc, i64 %.248.i.i
  %i.sd = load i8, ptr %i.sc, align 1, !tbaa !41
  store i8 %i.sd, ptr %.347.i.i, align 1, !tbaa !41
  %i.se = getelementptr inbounds nuw i8, ptr %.347.i.i, i64 1 ; 2 uses
  %i.sf = add nuw i64 %.248.i.i, 1                ; 2 uses
  %i.sg = icmp ult i64 %i.sf, %i.qk
  br i1 %i.sg, label %.lr.ph49.i.i, label %uriFixPercentEncodingEngineA.exit.i, !llvm.loop !90

uriFixPercentEncodingEngineA.exit.i:              ; preds = %.lr.ph49.i.i, %middle.block661, %vec.epilog.middle.block676, %.preheader.i.i
  %.3.lcssa.i.i = phi ptr [ %.039.lcssa.i.i, %.preheader.i.i ], [ %i.ra, %vec.epilog.middle.block676 ], [ %i.qt, %middle.block661 ], [ %i.se, %.lr.ph49.i.i ]
  store ptr %.3.lcssa.i.i, ptr %i.qf, align 8, !tbaa !43
  br label %uriContainsUglyPercentEncodingA.exit279

bb.bv:                                            ; preds = %bb.bn
  %i.sh = tail call fastcc i32 @uriFixPercentEncodingMallocA(ptr noundef %i.qb, ptr noundef %i.qf, ptr noundef %3)
  %.not208 = icmp eq i32 %i.sh, 0
  br i1 %.not208, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  tail call void @uriPreventLeakageA(ptr noundef nonnull %0, i32 noundef %6, ptr noundef %3)
  br label %bb.dz

bb.bx:                                            ; preds = %bb.bv
  %i.si = or i32 %6, 2                            ; 2 uses
  store i32 %i.si, ptr %i.a, align 4, !tbaa !40
  br label %uriContainsUglyPercentEncodingA.exit279.thread354

uriContainsUglyPercentEncodingA.exit279:          ; preds = %bb.bk, %uriFixPercentEncodingEngineA.exit.i
  %8 = phi i32 [ %6, %uriFixPercentEncodingEngineA.exit.i ], [ %7, %bb.bk ] ; 2 uses
  br i1 %.not231, label %uriContainsUglyPercentEncodingA.exit279.thread354, label %uriContainsUglyPercentEncodingA.exit279.thread356

uriContainsUglyPercentEncodingA.exit279.thread356: ; preds = %bb.bl, %uriDropLeadingZerosInplaceA.exit.thread350, %uriContainsUglyPercentEncodingA.exit279
  %9 = phi i32 [ %7, %bb.bl ], [ %7, %uriDropLeadingZerosInplaceA.exit.thread350 ], [ %8, %uriContainsUglyPercentEncodingA.exit279 ]
  %i.sj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.0168374 = load ptr, ptr %i.sj, align 8, !tbaa !105 ; 2 uses
  %.not217375 = icmp eq ptr %.0168374, null
  br i1 %.not217375, label %.loopexit366.thread, label %.lr.ph

.lr.ph:                                           ; preds = %uriContainsUglyPercentEncodingA.exit279.thread356, %.loopexit365
  %.0168376 = phi ptr [ %.0168, %.loopexit365 ], [ %.0168374, %uriContainsUglyPercentEncodingA.exit279.thread356 ] ; 3 uses
  %i.sk = load ptr, ptr %.0168376, align 8, !tbaa !34 ; 8 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %.0168376, i64 8
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !33 ; 4 uses
  %i.sn = icmp ne ptr %i.sk, null
  %i.so = icmp ugt ptr %i.sm, %i.sk
  %or.cond232 = select i1 %i.sn, i1 %i.so, i1 false
  br i1 %or.cond232, label %bb.by, label %.loopexit365

bb.by:                                            ; preds = %.lr.ph
  %i.sp = ptrtoint ptr %i.sm to i64
  %i.sq = ptrtoint ptr %i.sk to i64
  %i.sr = sub i64 %i.sp, %i.sq
  switch i64 %i.sr, label %bb.cc [
    i64 1, label %bb.bz
    i64 2, label %bb.ca
  ]

bb.bz:                                            ; preds = %bb.by
  %i.ss = load i8, ptr %i.sk, align 1, !tbaa !41
  %i.st = icmp eq i8 %i.ss, 46
  br i1 %i.st, label %.thread363, label %bb.cc

bb.ca:                                            ; preds = %bb.by
  %i.su = load i8, ptr %i.sk, align 1, !tbaa !41
  %i.sv = icmp eq i8 %i.su, 46
  br i1 %i.sv, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sk, i64 1
  %i.sx = load i8, ptr %i.sw, align 1, !tbaa !41
  %i.sy = icmp eq i8 %i.sx, 46
  br i1 %i.sy, label %.thread363, label %bb.cc

bb.cc:                                            ; preds = %bb.bz, %bb.by, %bb.cb, %bb.ca
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sk, i64 2 ; 2 uses
  %i.ta = icmp ult ptr %i.sz, %i.sm
  br i1 %i.ta, label %.lr.ph.i285, label %.loopexit365

.lr.ph.i285:                                      ; preds = %bb.cc, %bb.cg
  %i.tb = phi ptr [ %i.ts, %bb.cg ], [ %i.sz, %bb.cc ] ; 2 uses
  %.02132.i286 = phi ptr [ %i.tr, %bb.cg ], [ %i.sk, %bb.cc ] ; 4 uses
  %i.tc = load i8, ptr %.02132.i286, align 1, !tbaa !41
  %i.td = icmp eq i8 %i.tc, 37
  br i1 %i.td, label %bb.cd, label %bb.cg

bb.cd:                                            ; preds = %.lr.ph.i285
  %i.te = getelementptr inbounds nuw i8, ptr %.02132.i286, i64 1
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !41  ; 2 uses
  %i.tg = add i8 %i.tf, -97
  %or.cond30.i287 = icmp ult i8 %i.tg, 6
  br i1 %or.cond30.i287, label %.thread363, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.th = load i8, ptr %i.tb, align 1, !tbaa !41
  %i.ti = add i8 %i.th, -97
  %or.cond31.i288 = icmp ult i8 %i.ti, 6
  br i1 %or.cond31.i288, label %.thread363, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.tj = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.tf) #6
  %i.tk = load i8, ptr %i.tb, align 1, !tbaa !41
  %i.tl = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.tk) #6
  %i.tm = zext i8 %i.tj to i32
  %i.tn = shl nuw nsw i32 %i.tm, 4
  %i.to = zext i8 %i.tl to i32
  %i.tp = add nuw nsw i32 %i.tn, %i.to
  %i.tq = tail call i32 @uriIsUnreserved(i32 noundef %i.tp) #6
  %.not.i289 = icmp eq i32 %i.tq, 0
  br i1 %.not.i289, label %bb.cg, label %.thread363

bb.cg:                                            ; preds = %bb.cf, %.lr.ph.i285
  %i.tr = getelementptr inbounds nuw i8, ptr %.02132.i286, i64 1
  %i.ts = getelementptr inbounds nuw i8, ptr %.02132.i286, i64 3 ; 2 uses
  %i.tt = icmp ult ptr %i.ts, %i.sm
  br i1 %i.tt, label %.lr.ph.i285, label %.loopexit365, !llvm.loop !77

.thread363:                                       ; preds = %bb.cb, %bb.bz, %bb.cf, %bb.cd, %bb.ce
  %i.tu = load i32, ptr %2, align 4, !tbaa !40
  %i.tv = or i32 %i.tu, 8
  store i32 %i.tv, ptr %2, align 4, !tbaa !40
  br label %.loopexit366.thread

.loopexit365:                                     ; preds = %bb.cg, %.lr.ph, %bb.cc
  %i.tw = getelementptr inbounds nuw i8, ptr %.0168376, i64 16
  %.0168 = load ptr, ptr %i.tw, align 8, !tbaa !105 ; 2 uses
  %.not217 = icmp eq ptr %.0168, null
  br i1 %.not217, label %.loopexit366, label %.lr.ph

uriContainsUglyPercentEncodingA.exit279.thread354: ; preds = %bb.bx, %bb.bm, %uriDropLeadingZerosInplaceA.exit.thread, %bb.bo, %uriContainsUglyPercentEncodingA.exit279
  %10 = phi i32 [ %i.si, %bb.bx ], [ %6, %bb.bm ], [ %6, %uriDropLeadingZerosInplaceA.exit.thread ], [ %6, %bb.bo ], [ %8, %uriContainsUglyPercentEncodingA.exit279 ] ; 5 uses
  %i.tx = and i32 %1, 8
  %.not210 = icmp eq i32 %i.tx, 0
  br i1 %.not210, label %.thread362, label %bb.ch

bb.ch:                                            ; preds = %uriContainsUglyPercentEncodingA.exit279.thread354
  %i.ty = load ptr, ptr %0, align 8, !tbaa !24
  %i.tz = icmp eq ptr %i.ty, null
  br i1 %i.tz, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.ua = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ub = load i32, ptr %i.ua, align 8, !tbaa !106
  %.not211 = icmp eq i32 %i.ub, 0
  %i.uc = zext i1 %.not211 to i32
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.ud = phi i32 [ 0, %bb.ch ], [ %i.uc, %bb.ci ]
  %i.ue = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !30 ; 3 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.uh = load i32, ptr %i.ug, align 4, !tbaa !42
  %.not212 = icmp eq i32 %i.uh, 0
  %.not213380 = icmp eq ptr %i.uf, null           ; 2 uses
  br i1 %.not212, label %.preheader, label %.preheader364

.preheader364:                                    ; preds = %bb.cj
  br i1 %.not213380, label %.loopexit, label %.lr.ph379

.preheader:                                       ; preds = %bb.cj
  br i1 %.not213380, label %._crit_edge, label %.lr.ph382

.lr.ph379:                                        ; preds = %.preheader364, %.lr.ph379
  %.0378 = phi ptr [ %i.ul, %.lr.ph379 ], [ %i.uf, %.preheader364 ] ; 3 uses
  %i.ui = load ptr, ptr %.0378, align 8, !tbaa !34
  %i.uj = getelementptr inbounds nuw i8, ptr %.0378, i64 8
  tail call fastcc void @uriFixPercentEncodingInplaceA(ptr noundef %i.ui, ptr noundef %i.uj)
  %i.uk = getelementptr inbounds nuw i8, ptr %.0378, i64 16
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !32 ; 2 uses
  %.not215 = icmp eq ptr %i.ul, null
  br i1 %.not215, label %.loopexit, label %.lr.ph379, !llvm.loop !91

.lr.ph382:                                        ; preds = %.preheader, %bb.cl
  %.1381 = phi ptr [ %i.up, %bb.cl ], [ %i.uf, %.preheader ] ; 3 uses
  %i.um = getelementptr inbounds nuw i8, ptr %.1381, i64 8
  %i.un = tail call fastcc i32 @uriFixPercentEncodingMallocA(ptr noundef %.1381, ptr noundef %i.um, ptr noundef %3)
  %.not214 = icmp eq i32 %i.un, 0
  br i1 %.not214, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %.lr.ph382
  tail call void @uriPreventLeakageA(ptr noundef %0, i32 noundef %10, ptr noundef %3)
  br label %bb.dz

bb.cl:                                            ; preds = %.lr.ph382
  %i.uo = getelementptr inbounds nuw i8, ptr %.1381, i64 16
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !32 ; 2 uses
  %.not213 = icmp eq ptr %i.up, null
  br i1 %.not213, label %._crit_edge, label %.lr.ph382, !llvm.loop !92

._crit_edge:                                      ; preds = %bb.cl, %.preheader
  %i.uq = or i32 %10, 8                           ; 2 uses
  store i32 %i.uq, ptr %i.a, align 4, !tbaa !40
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph379, %.preheader364, %._crit_edge
  %11 = phi i32 [ %i.uq, %._crit_edge ], [ %10, %.preheader364 ], [ %10, %.lr.ph379 ] ; 3 uses
  %i.ur = load i32, ptr %i.ug, align 4, !tbaa !42
  %i.us = icmp eq i32 %i.ur, 1
  %i.ut = and i32 %11, 8
  %i.uu = icmp ne i32 %i.ut, 0
  %i.uv = select i1 %i.us, i1 true, i1 %i.uu
  %i.uw = zext i1 %i.uv to i32
  %i.ux = tail call i32 @uriRemoveDotSegmentsExA(ptr noundef %0, i32 noundef %i.ud, i32 noundef %i.uw, ptr noundef %3) #6
  %.not216 = icmp eq i32 %i.ux, 0
  br i1 %.not216, label %bb.cm, label %.critedge

bb.cm:                                            ; preds = %.loopexit
  tail call void @uriPreventLeakageA(ptr noundef nonnull %0, i32 noundef %11, ptr noundef %3)
  br label %bb.dz

.critedge:                                        ; preds = %.loopexit
  tail call void @uriFixEmptyTrailSegmentA(ptr noundef nonnull %0, ptr noundef %3) #6
  br label %.loopexit366

.loopexit366:                                     ; preds = %.loopexit365, %.critedge
  %12 = phi i32 [ %11, %.critedge ], [ %9, %.loopexit365 ]
  br i1 %.not231, label %.thread362, label %.loopexit366.thread

.loopexit366.thread:                              ; preds = %uriContainsUglyPercentEncodingA.exit279.thread356, %.thread363, %.loopexit366
  %i.uy = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !36 ; 4 uses
  %i.va = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !37 ; 3 uses
  %i.vc = icmp ne ptr %i.uz, null
  %i.vd = icmp ugt ptr %i.vb, %i.uz
  %or.cond29.i291 = and i1 %i.vc, %i.vd
  %i.ve = getelementptr inbounds nuw i8, ptr %i.uz, i64 2 ; 2 uses
  %i.vf = icmp ult ptr %i.ve, %i.vb
  %or.cond.i292 = select i1 %or.cond29.i291, i1 %i.vf, i1 false
  br i1 %or.cond.i292, label %.lr.ph.i294, label %uriContainsUglyPercentEncodingA.exit299

.lr.ph.i294:                                      ; preds = %.loopexit366.thread, %bb.cq
  %i.vg = phi ptr [ %i.vx, %bb.cq ], [ %i.ve, %.loopexit366.thread ] ; 2 uses
  %.02132.i295 = phi ptr [ %i.vw, %bb.cq ], [ %i.uz, %.loopexit366.thread ] ; 4 uses
  %i.vh = load i8, ptr %.02132.i295, align 1, !tbaa !41
  %i.vi = icmp eq i8 %i.vh, 37
  br i1 %i.vi, label %bb.cn, label %bb.cq

bb.cn:                                            ; preds = %.lr.ph.i294
  %i.vj = getelementptr inbounds nuw i8, ptr %.02132.i295, i64 1
  %i.vk = load i8, ptr %i.vj, align 1, !tbaa !41  ; 2 uses
  %i.vl = add i8 %i.vk, -97
  %or.cond30.i296 = icmp ult i8 %i.vl, 6
  br i1 %or.cond30.i296, label %uriContainsUglyPercentEncodingA.exit299, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.vm = load i8, ptr %i.vg, align 1, !tbaa !41
  %i.vn = add i8 %i.vm, -97
  %or.cond31.i297 = icmp ult i8 %i.vn, 6
  br i1 %or.cond31.i297, label %uriContainsUglyPercentEncodingA.exit299, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.vo = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.vk) #6
  %i.vp = load i8, ptr %i.vg, align 1, !tbaa !41
  %i.vq = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.vp) #6
  %i.vr = zext i8 %i.vo to i32
  %i.vs = shl nuw nsw i32 %i.vr, 4
  %i.vt = zext i8 %i.vq to i32
  %i.vu = add nuw nsw i32 %i.vs, %i.vt
  %i.vv = tail call i32 @uriIsUnreserved(i32 noundef %i.vu) #6
  %.not.i298 = icmp eq i32 %i.vv, 0
  br i1 %.not.i298, label %bb.cq, label %uriContainsUglyPercentEncodingA.exit299

bb.cq:                                            ; preds = %bb.cp, %.lr.ph.i294
  %i.vw = getelementptr inbounds nuw i8, ptr %.02132.i295, i64 1
  %i.vx = getelementptr inbounds nuw i8, ptr %.02132.i295, i64 3 ; 2 uses
  %i.vy = icmp ult ptr %i.vx, %i.vb
  br i1 %i.vy, label %.lr.ph.i294, label %uriContainsUglyPercentEncodingA.exit299, !llvm.loop !77

uriContainsUglyPercentEncodingA.exit299:          ; preds = %bb.cn, %bb.co, %bb.cp, %bb.cq, %.loopexit366.thread
  %.not227 = phi i1 [ true, %.loopexit366.thread ], [ false, %bb.cp ], [ true, %bb.cq ], [ false, %bb.cn ], [ false, %bb.co ]
  %i.vz = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !38 ; 4 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !39 ; 3 uses
  %i.wd = icmp ne ptr %i.wa, null
  %i.we = icmp ugt ptr %i.wc, %i.wa
  %or.cond29.i300 = and i1 %i.wd, %i.we
  %i.wf = getelementptr inbounds nuw i8, ptr %i.wa, i64 2 ; 2 uses
  %i.wg = icmp ult ptr %i.wf, %i.wc
  %or.cond.i301 = select i1 %or.cond29.i300, i1 %i.wg, i1 false
  br i1 %or.cond.i301, label %.lr.ph.i303, label %uriContainsUglyPercentEncodingA.exit308

.lr.ph.i303:                                      ; preds = %uriContainsUglyPercentEncodingA.exit299, %bb.cu
  %i.wh = phi ptr [ %i.wy, %bb.cu ], [ %i.wf, %uriContainsUglyPercentEncodingA.exit299 ] ; 2 uses
  %.02132.i304 = phi ptr [ %i.wx, %bb.cu ], [ %i.wa, %uriContainsUglyPercentEncodingA.exit299 ] ; 4 uses
  %i.wi = load i8, ptr %.02132.i304, align 1, !tbaa !41
  %i.wj = icmp eq i8 %i.wi, 37
  br i1 %i.wj, label %bb.cr, label %bb.cu

bb.cr:                                            ; preds = %.lr.ph.i303
  %i.wk = getelementptr inbounds nuw i8, ptr %.02132.i304, i64 1
  %i.wl = load i8, ptr %i.wk, align 1, !tbaa !41  ; 2 uses
  %i.wm = add i8 %i.wl, -97
  %or.cond30.i305 = icmp ult i8 %i.wm, 6
  br i1 %or.cond30.i305, label %uriContainsUglyPercentEncodingA.exit308, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.wn = load i8, ptr %i.wh, align 1, !tbaa !41
  %i.wo = add i8 %i.wn, -97
  %or.cond31.i306 = icmp ult i8 %i.wo, 6
  br i1 %or.cond31.i306, label %uriContainsUglyPercentEncodingA.exit308, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.wp = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.wl) #6
  %i.wq = load i8, ptr %i.wh, align 1, !tbaa !41
  %i.wr = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.wq) #6
  %i.ws = zext i8 %i.wp to i32
  %i.wt = shl nuw nsw i32 %i.ws, 4
  %i.wu = zext i8 %i.wr to i32
  %i.wv = add nuw nsw i32 %i.wt, %i.wu
  %i.ww = tail call i32 @uriIsUnreserved(i32 noundef %i.wv) #6
  %.not.i307 = icmp eq i32 %i.ww, 0
  br i1 %.not.i307, label %bb.cu, label %uriContainsUglyPercentEncodingA.exit308

bb.cu:                                            ; preds = %bb.ct, %.lr.ph.i303
  %i.wx = getelementptr inbounds nuw i8, ptr %.02132.i304, i64 1
  %i.wy = getelementptr inbounds nuw i8, ptr %.02132.i304, i64 3 ; 2 uses
  %i.wz = icmp ult ptr %i.wy, %i.wc
  br i1 %i.wz, label %.lr.ph.i303, label %uriContainsUglyPercentEncodingA.exit308, !llvm.loop !77

uriContainsUglyPercentEncodingA.exit308:          ; preds = %bb.cr, %bb.cs, %bb.ct, %bb.cu, %uriContainsUglyPercentEncodingA.exit299
  %.not228 = phi i1 [ true, %uriContainsUglyPercentEncodingA.exit299 ], [ false, %bb.ct ], [ true, %bb.cu ], [ false, %bb.cr ], [ false, %bb.cs ]
  br i1 %.not227, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %uriContainsUglyPercentEncodingA.exit308
  %i.xa = load i32, ptr %2, align 4, !tbaa !40
  %i.xb = or i32 %i.xa, 16
  store i32 %i.xb, ptr %2, align 4, !tbaa !40
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %uriContainsUglyPercentEncodingA.exit308
  br i1 %.not228, label %uriFixPercentEncodingInplaceA.exit340, label %uriFixPercentEncodingInplaceA.exit340.thread

uriFixPercentEncodingInplaceA.exit340.thread:     ; preds = %bb.cw
  %i.xc = load i32, ptr %2, align 4, !tbaa !40
  %i.xd = or i32 %i.xc, 32
  store i32 %i.xd, ptr %2, align 4, !tbaa !40
  br label %bb.dz

.thread362:                                       ; preds = %uriContainsUglyPercentEncodingA.exit279.thread354, %.loopexit366
  %13 = phi i32 [ %10, %uriContainsUglyPercentEncodingA.exit279.thread354 ], [ %12, %.loopexit366 ] ; 6 uses
  %i.xe = and i32 %1, 16
  %.not219 = icmp eq i32 %i.xe, 0
  br i1 %.not219, label %uriFixPercentEncodingInplaceA.exit324, label %bb.cx

bb.cx:                                            ; preds = %.thread362
  %i.xf = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.xg = load ptr, ptr %i.xf, align 8, !tbaa !36 ; 9 uses
  %.not220 = icmp eq ptr %i.xg, null
  br i1 %.not220, label %uriFixPercentEncodingInplaceA.exit324, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.xh = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !42
  %.not221 = icmp eq i32 %i.xi, 0
  %i.xj = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  br i1 %.not221, label %bb.dg, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !43 ; 2 uses
  %i.xl = icmp eq ptr %i.xk, null
  br i1 %i.xl, label %uriFixPercentEncodingInplaceA.exit324, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.xm = ptrtoint ptr %i.xk to i64               ; 2 uses
  %i.xn = ptrtoint ptr %i.xg to i64               ; 3 uses
  %i.xo = sub i64 %i.xm, %i.xn                    ; 4 uses
  %i.xp = icmp ugt i64 %i.xo, 2
  br i1 %i.xp, label %.lr.ph.i.i317, label %.preheader.i.i309

.preheader.i.i309:                                ; preds = %bb.df, %bb.da
  %.039.lcssa.i.i310 = phi ptr [ %i.xg, %bb.da ], [ %.241.i.i321, %bb.df ] ; 8 uses
  %.0.lcssa.i.i311 = phi i64 [ 0, %bb.da ], [ %i.zd, %bb.df ] ; 9 uses
  %.039.lcssa.i.i310681 = ptrtoaddr ptr %.039.lcssa.i.i310 to i64
  %i.xq = icmp ult i64 %.0.lcssa.i.i311, %i.xo
  br i1 %i.xq, label %iter.check698, label %uriFixPercentEncodingEngineA.exit.i312

iter.check698:                                    ; preds = %.preheader.i.i309
  %i.xr = add i64 %.0.lcssa.i.i311, %i.xn
  %i.xs = sub i64 %i.xm, %i.xr                    ; 7 uses
  %min.iters.check683 = icmp ult i64 %i.xs, 8
  br i1 %min.iters.check683, label %.lr.ph49.i.i314.preheader, label %vector.memcheck680

vector.memcheck680:                               ; preds = %iter.check698
  %i.xt = add i64 %.0.lcssa.i.i311, %i.xn
  %i.xu = sub i64 %i.xt, %.039.lcssa.i.i310681
  %diff.check682 = icmp ugt i64 %i.xu, -32
  br i1 %diff.check682, label %.lr.ph49.i.i314.preheader, label %vector.main.loop.iter.check684

vector.main.loop.iter.check684:                   ; preds = %vector.memcheck680
  %min.iters.check685 = icmp ult i64 %i.xs, 32
  br i1 %min.iters.check685, label %vec.epilog.ph702, label %vector.ph686

vector.ph686:                                     ; preds = %vector.main.loop.iter.check684
  %i.xv = and i64 %i.xs, 24
  %n.vec687 = and i64 %i.xs, -32                  ; 5 uses
  %i.xw = add i64 %.0.lcssa.i.i311, %n.vec687
  %i.xx = getelementptr i8, ptr %.039.lcssa.i.i310, i64 %n.vec687 ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xg, i64 %.0.lcssa.i.i311
  br label %vector.body688

vector.body688:                                   ; preds = %vector.ph686, %vector.body688
  %index689 = phi i64 [ 0, %vector.ph686 ], [ %index.next693, %vector.body688 ] ; 3 uses
  %next.gep690 = getelementptr i8, ptr %.039.lcssa.i.i310, i64 %index689 ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 %index689 ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 16
  %wide.load691 = load <16 x i8>, ptr %i.xz, align 1, !tbaa !41
  %wide.load692 = load <16 x i8>, ptr %i.ya, align 1, !tbaa !41
  %i.yb = getelementptr i8, ptr %next.gep690, i64 16
  store <16 x i8> %wide.load691, ptr %next.gep690, align 1, !tbaa !41
  store <16 x i8> %wide.load692, ptr %i.yb, align 1, !tbaa !41
  %index.next693 = add nuw i64 %index689, 32      ; 2 uses
  %i.yc = icmp eq i64 %index.next693, %n.vec687
  br i1 %i.yc, label %middle.block694, label %vector.body688, !llvm.loop !93

middle.block694:                                  ; preds = %vector.body688
  %cmp.n695 = icmp eq i64 %i.xs, %n.vec687
  br i1 %cmp.n695, label %uriFixPercentEncodingEngineA.exit.i312, label %vec.epilog.iter.check700

vec.epilog.iter.check700:                         ; preds = %middle.block694
  %min.epilog.iters.check701 = icmp eq i64 %i.xv, 0
  br i1 %min.epilog.iters.check701, label %.lr.ph49.i.i314.preheader, label %vec.epilog.ph702, !prof !47

vec.epilog.ph702:                                 ; preds = %vector.main.loop.iter.check684, %vec.epilog.iter.check700
  %vec.epilog.resume.val696 = phi i64 [ %n.vec687, %vec.epilog.iter.check700 ], [ 0, %vector.main.loop.iter.check684 ]
  %n.vec703 = and i64 %i.xs, -8                   ; 4 uses
  %i.yd = add i64 %.0.lcssa.i.i311, %n.vec703
  %i.ye = getelementptr i8, ptr %.039.lcssa.i.i310, i64 %n.vec703 ; 2 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %i.xg, i64 %.0.lcssa.i.i311
  br label %vec.epilog.vector.body704

vec.epilog.vector.body704:                        ; preds = %vec.epilog.vector.body704, %vec.epilog.ph702
  %index705 = phi i64 [ %vec.epilog.resume.val696, %vec.epilog.ph702 ], [ %index.next708, %vec.epilog.vector.body704 ] ; 3 uses
  %next.gep706 = getelementptr i8, ptr %.039.lcssa.i.i310, i64 %index705
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 %index705
  %wide.load707 = load <8 x i8>, ptr %i.yg, align 1, !tbaa !41
  store <8 x i8> %wide.load707, ptr %next.gep706, align 1, !tbaa !41
  %index.next708 = add nuw i64 %index705, 8       ; 2 uses
  %i.yh = icmp eq i64 %index.next708, %n.vec703
  br i1 %i.yh, label %vec.epilog.middle.block709, label %vec.epilog.vector.body704, !llvm.loop !94

vec.epilog.middle.block709:                       ; preds = %vec.epilog.vector.body704
  %cmp.n710 = icmp eq i64 %i.xs, %n.vec703
  br i1 %cmp.n710, label %uriFixPercentEncodingEngineA.exit.i312, label %.lr.ph49.i.i314.preheader

.lr.ph49.i.i314.preheader:                        ; preds = %iter.check698, %vector.memcheck680, %vec.epilog.iter.check700, %vec.epilog.middle.block709
  %.248.i.i315.ph = phi i64 [ %.0.lcssa.i.i311, %iter.check698 ], [ %.0.lcssa.i.i311, %vector.memcheck680 ], [ %i.xw, %vec.epilog.iter.check700 ], [ %i.yd, %vec.epilog.middle.block709 ]
  %.347.i.i316.ph = phi ptr [ %.039.lcssa.i.i310, %iter.check698 ], [ %.039.lcssa.i.i310, %vector.memcheck680 ], [ %i.xx, %vec.epilog.iter.check700 ], [ %i.ye, %vec.epilog.middle.block709 ]
  br label %.lr.ph49.i.i314

.lr.ph.i.i317:                                    ; preds = %bb.da, %bb.df
  %i.yi = phi i64 [ %i.ze, %bb.df ], [ 2, %bb.da ] ; 3 uses
  %.045.i.i318 = phi i64 [ %i.zd, %bb.df ], [ 0, %bb.da ] ; 2 uses
  %.03944.i.i319 = phi ptr [ %.241.i.i321, %bb.df ], [ %i.xg, %bb.da ] ; 7 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.xg, i64 %.045.i.i318 ; 2 uses
  %i.yk = load i8, ptr %i.yj, align 1, !tbaa !41  ; 2 uses
  %.not.i.i320 = icmp eq i8 %i.yk, 37
  br i1 %.not.i.i320, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %.lr.ph.i.i317
  store i8 %i.yk, ptr %.03944.i.i319, align 1, !tbaa !41
  %i.yl = getelementptr inbounds nuw i8, ptr %.03944.i.i319, i64 1
  br label %bb.df

bb.dc:                                            ; preds = %.lr.ph.i.i317
  %i.ym = getelementptr i8, ptr %i.yj, i64 1
  %i.yn = load i8, ptr %i.ym, align 1, !tbaa !41
  %i.yo = getelementptr inbounds nuw i8, ptr %i.xg, i64 %i.yi
  %i.yp = load i8, ptr %i.yo, align 1, !tbaa !41
  %i.yq = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.yn) #6
  %i.yr = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.yp) #6
  %i.ys = zext i8 %i.yq to i32                    ; 2 uses
  %i.yt = shl nuw nsw i32 %i.ys, 4
  %i.yu = zext i8 %i.yr to i32                    ; 2 uses
  %i.yv = add nuw nsw i32 %i.yt, %i.yu            ; 2 uses
  %i.yw = tail call i32 @uriIsUnreserved(i32 noundef %i.yv) #6
  %.not43.i.i323 = icmp eq i32 %i.yw, 0
  %i.yx = getelementptr inbounds nuw i8, ptr %.03944.i.i319, i64 1 ; 2 uses
  br i1 %.not43.i.i323, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.yy = trunc i32 %i.yv to i8
  store i8 %i.yy, ptr %.03944.i.i319, align 1, !tbaa !41
  br label %bb.df

bb.de:                                            ; preds = %bb.dc
  store i8 37, ptr %.03944.i.i319, align 1, !tbaa !41
  %i.yz = tail call signext i8 @uriHexToLetterExA(i32 noundef %i.ys, i32 noundef 1) #6
  store i8 %i.yz, ptr %i.yx, align 1, !tbaa !41
  %i.za = tail call signext i8 @uriHexToLetterExA(i32 noundef %i.yu, i32 noundef 1) #6
  %i.zb = getelementptr inbounds nuw i8, ptr %.03944.i.i319, i64 2
  store i8 %i.za, ptr %i.zb, align 1, !tbaa !41
  %i.zc = getelementptr inbounds nuw i8, ptr %.03944.i.i319, i64 3
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd, %bb.db
  %.241.i.i321 = phi ptr [ %i.yl, %bb.db ], [ %i.yx, %bb.dd ], [ %i.zc, %bb.de ] ; 2 uses
  %.1.i.i322 = phi i64 [ %.045.i.i318, %bb.db ], [ %i.yi, %bb.dd ], [ %i.yi, %bb.de ] ; 2 uses
  %i.zd = add i64 %.1.i.i322, 1                   ; 2 uses
  %i.ze = add i64 %.1.i.i322, 3                   ; 2 uses
  %i.zf = icmp ult i64 %i.ze, %i.xo
  br i1 %i.zf, label %.lr.ph.i.i317, label %.preheader.i.i309, !llvm.loop !0

.lr.ph49.i.i314:                                  ; preds = %.lr.ph49.i.i314.preheader, %.lr.ph49.i.i314
  %.248.i.i315 = phi i64 [ %i.zj, %.lr.ph49.i.i314 ], [ %.248.i.i315.ph, %.lr.ph49.i.i314.preheader ] ; 2 uses
  %.347.i.i316 = phi ptr [ %i.zi, %.lr.ph49.i.i314 ], [ %.347.i.i316.ph, %.lr.ph49.i.i314.preheader ] ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %i.xg, i64 %.248.i.i315
  %i.zh = load i8, ptr %i.zg, align 1, !tbaa !41
  store i8 %i.zh, ptr %.347.i.i316, align 1, !tbaa !41
  %i.zi = getelementptr inbounds nuw i8, ptr %.347.i.i316, i64 1 ; 2 uses
  %i.zj = add nuw i64 %.248.i.i315, 1             ; 2 uses
  %i.zk = icmp ult i64 %i.zj, %i.xo
  br i1 %i.zk, label %.lr.ph49.i.i314, label %uriFixPercentEncodingEngineA.exit.i312, !llvm.loop !95

uriFixPercentEncodingEngineA.exit.i312:           ; preds = %.lr.ph49.i.i314, %middle.block694, %vec.epilog.middle.block709, %.preheader.i.i309
  %.3.lcssa.i.i313 = phi ptr [ %.039.lcssa.i.i310, %.preheader.i.i309 ], [ %i.ye, %vec.epilog.middle.block709 ], [ %i.xx, %middle.block694 ], [ %i.zi, %.lr.ph49.i.i314 ]
  store ptr %.3.lcssa.i.i313, ptr %i.xj, align 8, !tbaa !43
  br label %uriFixPercentEncodingInplaceA.exit324

bb.dg:                                            ; preds = %bb.cy
  %i.zl = tail call fastcc i32 @uriFixPercentEncodingMallocA(ptr noundef %i.xf, ptr noundef %i.xj, ptr noundef %3)
  %.not222 = icmp eq i32 %i.zl, 0
  br i1 %.not222, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  tail call void @uriPreventLeakageA(ptr noundef nonnull %0, i32 noundef %13, ptr noundef %3)
  br label %bb.dz

bb.di:                                            ; preds = %bb.dg
  %i.zm = or i32 %13, 16                          ; 2 uses
  store i32 %i.zm, ptr %i.a, align 4, !tbaa !40
  br label %uriFixPercentEncodingInplaceA.exit324

uriFixPercentEncodingInplaceA.exit324:            ; preds = %uriFixPercentEncodingEngineA.exit.i312, %bb.cz, %bb.di, %bb.cx, %.thread362
  %14 = phi i32 [ %13, %uriFixPercentEncodingEngineA.exit.i312 ], [ %13, %bb.cz ], [ %i.zm, %bb.di ], [ %13, %bb.cx ], [ %13, %.thread362 ] ; 2 uses
  %i.zn = and i32 %1, 32
  %.not223 = icmp eq i32 %i.zn, 0
  br i1 %.not223, label %uriFixPercentEncodingInplaceA.exit340, label %bb.dj

bb.dj:                                            ; preds = %uriFixPercentEncodingInplaceA.exit324
  %i.zo = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !38 ; 9 uses
  %.not224 = icmp eq ptr %i.zp, null
  br i1 %.not224, label %uriFixPercentEncodingInplaceA.exit340, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.zq = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.zr = load i32, ptr %i.zq, align 4, !tbaa !42
  %.not225 = icmp eq i32 %i.zr, 0
  %i.zs = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  br i1 %.not225, label %bb.ds, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.zt = load ptr, ptr %i.zs, align 8, !tbaa !43 ; 2 uses
  %i.zu = icmp eq ptr %i.zt, null
  br i1 %i.zu, label %uriFixPercentEncodingInplaceA.exit340, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.zv = ptrtoint ptr %i.zt to i64               ; 2 uses
  %i.zw = ptrtoint ptr %i.zp to i64               ; 3 uses
  %i.zx = sub i64 %i.zv, %i.zw                    ; 4 uses
  %i.zy = icmp ugt i64 %i.zx, 2
  br i1 %i.zy, label %.lr.ph.i.i333, label %.preheader.i.i325

.preheader.i.i325:                                ; preds = %bb.dr, %bb.dm
  %.039.lcssa.i.i326 = phi ptr [ %i.zp, %bb.dm ], [ %.241.i.i337, %bb.dr ] ; 8 uses
  %.0.lcssa.i.i327 = phi i64 [ 0, %bb.dm ], [ %i.abm, %bb.dr ] ; 9 uses
  %.039.lcssa.i.i326714 = ptrtoaddr ptr %.039.lcssa.i.i326 to i64
  %i.zz = icmp ult i64 %.0.lcssa.i.i327, %i.zx
  br i1 %i.zz, label %iter.check731, label %uriFixPercentEncodingEngineA.exit.i328

iter.check731:                                    ; preds = %.preheader.i.i325
  %i.aaa = add i64 %.0.lcssa.i.i327, %i.zw
  %i.aab = sub i64 %i.zv, %i.aaa                  ; 7 uses
  %min.iters.check716 = icmp ult i64 %i.aab, 8
  br i1 %min.iters.check716, label %.lr.ph49.i.i330.preheader, label %vector.memcheck713

vector.memcheck713:                               ; preds = %iter.check731
  %i.aac = add i64 %.0.lcssa.i.i327, %i.zw
  %i.aad = sub i64 %i.aac, %.039.lcssa.i.i326714
  %diff.check715 = icmp ugt i64 %i.aad, -32
  br i1 %diff.check715, label %.lr.ph49.i.i330.preheader, label %vector.main.loop.iter.check717

vector.main.loop.iter.check717:                   ; preds = %vector.memcheck713
  %min.iters.check718 = icmp ult i64 %i.aab, 32
  br i1 %min.iters.check718, label %vec.epilog.ph735, label %vector.ph719

vector.ph719:                                     ; preds = %vector.main.loop.iter.check717
  %i.aae = and i64 %i.aab, 24
  %n.vec720 = and i64 %i.aab, -32                 ; 5 uses
  %i.aaf = add i64 %.0.lcssa.i.i327, %n.vec720
  %i.aag = getelementptr i8, ptr %.039.lcssa.i.i326, i64 %n.vec720 ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %i.zp, i64 %.0.lcssa.i.i327
  br label %vector.body721

vector.body721:                                   ; preds = %vector.ph719, %vector.body721
  %index722 = phi i64 [ 0, %vector.ph719 ], [ %index.next726, %vector.body721 ] ; 3 uses
  %next.gep723 = getelementptr i8, ptr %.039.lcssa.i.i326, i64 %index722 ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 %index722 ; 2 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 16
  %wide.load724 = load <16 x i8>, ptr %i.aai, align 1, !tbaa !41
  %wide.load725 = load <16 x i8>, ptr %i.aaj, align 1, !tbaa !41
  %i.aak = getelementptr i8, ptr %next.gep723, i64 16
  store <16 x i8> %wide.load724, ptr %next.gep723, align 1, !tbaa !41
  store <16 x i8> %wide.load725, ptr %i.aak, align 1, !tbaa !41
  %index.next726 = add nuw i64 %index722, 32      ; 2 uses
  %i.aal = icmp eq i64 %index.next726, %n.vec720
  br i1 %i.aal, label %middle.block727, label %vector.body721, !llvm.loop !96

middle.block727:                                  ; preds = %vector.body721
  %cmp.n728 = icmp eq i64 %i.aab, %n.vec720
  br i1 %cmp.n728, label %uriFixPercentEncodingEngineA.exit.i328, label %vec.epilog.iter.check733

vec.epilog.iter.check733:                         ; preds = %middle.block727
  %min.epilog.iters.check734 = icmp eq i64 %i.aae, 0
  br i1 %min.epilog.iters.check734, label %.lr.ph49.i.i330.preheader, label %vec.epilog.ph735, !prof !47

vec.epilog.ph735:                                 ; preds = %vector.main.loop.iter.check717, %vec.epilog.iter.check733
  %vec.epilog.resume.val729 = phi i64 [ %n.vec720, %vec.epilog.iter.check733 ], [ 0, %vector.main.loop.iter.check717 ]
  %n.vec736 = and i64 %i.aab, -8                  ; 4 uses
  %i.aam = add i64 %.0.lcssa.i.i327, %n.vec736
  %i.aan = getelementptr i8, ptr %.039.lcssa.i.i326, i64 %n.vec736 ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %i.zp, i64 %.0.lcssa.i.i327
  br label %vec.epilog.vector.body737

vec.epilog.vector.body737:                        ; preds = %vec.epilog.vector.body737, %vec.epilog.ph735
  %index738 = phi i64 [ %vec.epilog.resume.val729, %vec.epilog.ph735 ], [ %index.next741, %vec.epilog.vector.body737 ] ; 3 uses
  %next.gep739 = getelementptr i8, ptr %.039.lcssa.i.i326, i64 %index738
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 %index738
  %wide.load740 = load <8 x i8>, ptr %i.aap, align 1, !tbaa !41
  store <8 x i8> %wide.load740, ptr %next.gep739, align 1, !tbaa !41
  %index.next741 = add nuw i64 %index738, 8       ; 2 uses
  %i.aaq = icmp eq i64 %index.next741, %n.vec736
  br i1 %i.aaq, label %vec.epilog.middle.block742, label %vec.epilog.vector.body737, !llvm.loop !97

vec.epilog.middle.block742:                       ; preds = %vec.epilog.vector.body737
  %cmp.n743 = icmp eq i64 %i.aab, %n.vec736
  br i1 %cmp.n743, label %uriFixPercentEncodingEngineA.exit.i328, label %.lr.ph49.i.i330.preheader

.lr.ph49.i.i330.preheader:                        ; preds = %iter.check731, %vector.memcheck713, %vec.epilog.iter.check733, %vec.epilog.middle.block742
  %.248.i.i331.ph = phi i64 [ %.0.lcssa.i.i327, %iter.check731 ], [ %.0.lcssa.i.i327, %vector.memcheck713 ], [ %i.aaf, %vec.epilog.iter.check733 ], [ %i.aam, %vec.epilog.middle.block742 ]
  %.347.i.i332.ph = phi ptr [ %.039.lcssa.i.i326, %iter.check731 ], [ %.039.lcssa.i.i326, %vector.memcheck713 ], [ %i.aag, %vec.epilog.iter.check733 ], [ %i.aan, %vec.epilog.middle.block742 ]
  br label %.lr.ph49.i.i330

.lr.ph.i.i333:                                    ; preds = %bb.dm, %bb.dr
  %i.aar = phi i64 [ %i.abn, %bb.dr ], [ 2, %bb.dm ] ; 3 uses
  %.045.i.i334 = phi i64 [ %i.abm, %bb.dr ], [ 0, %bb.dm ] ; 2 uses
  %.03944.i.i335 = phi ptr [ %.241.i.i337, %bb.dr ], [ %i.zp, %bb.dm ] ; 7 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %i.zp, i64 %.045.i.i334 ; 2 uses
  %i.aat = load i8, ptr %i.aas, align 1, !tbaa !41 ; 2 uses
  %.not.i.i336 = icmp eq i8 %i.aat, 37
  br i1 %.not.i.i336, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %.lr.ph.i.i333
  store i8 %i.aat, ptr %.03944.i.i335, align 1, !tbaa !41
  %i.aau = getelementptr inbounds nuw i8, ptr %.03944.i.i335, i64 1
  br label %bb.dr

bb.do:                                            ; preds = %.lr.ph.i.i333
  %i.aav = getelementptr i8, ptr %i.aas, i64 1
  %i.aaw = load i8, ptr %i.aav, align 1, !tbaa !41
  %i.aax = getelementptr inbounds nuw i8, ptr %i.zp, i64 %i.aar
  %i.aay = load i8, ptr %i.aax, align 1, !tbaa !41
  %i.aaz = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.aaw) #6
  %i.aba = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.aay) #6
  %i.abb = zext i8 %i.aaz to i32                  ; 2 uses
  %i.abc = shl nuw nsw i32 %i.abb, 4
  %i.abd = zext i8 %i.aba to i32                  ; 2 uses
  %i.abe = add nuw nsw i32 %i.abc, %i.abd         ; 2 uses
  %i.abf = tail call i32 @uriIsUnreserved(i32 noundef %i.abe) #6
  %.not43.i.i339 = icmp eq i32 %i.abf, 0
  %i.abg = getelementptr inbounds nuw i8, ptr %.03944.i.i335, i64 1 ; 2 uses
  br i1 %.not43.i.i339, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.abh = trunc i32 %i.abe to i8
  store i8 %i.abh, ptr %.03944.i.i335, align 1, !tbaa !41
  br label %bb.dr

bb.dq:                                            ; preds = %bb.do
  store i8 37, ptr %.03944.i.i335, align 1, !tbaa !41
  %i.abi = tail call signext i8 @uriHexToLetterExA(i32 noundef %i.abb, i32 noundef 1) #6
  store i8 %i.abi, ptr %i.abg, align 1, !tbaa !41
  %i.abj = tail call signext i8 @uriHexToLetterExA(i32 noundef %i.abd, i32 noundef 1) #6
  %i.abk = getelementptr inbounds nuw i8, ptr %.03944.i.i335, i64 2
  store i8 %i.abj, ptr %i.abk, align 1, !tbaa !41
  %i.abl = getelementptr inbounds nuw i8, ptr %.03944.i.i335, i64 3
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp, %bb.dn
  %.241.i.i337 = phi ptr [ %i.aau, %bb.dn ], [ %i.abg, %bb.dp ], [ %i.abl, %bb.dq ] ; 2 uses
  %.1.i.i338 = phi i64 [ %.045.i.i334, %bb.dn ], [ %i.aar, %bb.dp ], [ %i.aar, %bb.dq ] ; 2 uses
  %i.abm = add i64 %.1.i.i338, 1                  ; 2 uses
  %i.abn = add i64 %.1.i.i338, 3                  ; 2 uses
  %i.abo = icmp ult i64 %i.abn, %i.zx
  br i1 %i.abo, label %.lr.ph.i.i333, label %.preheader.i.i325, !llvm.loop !0

.lr.ph49.i.i330:                                  ; preds = %.lr.ph49.i.i330.preheader, %.lr.ph49.i.i330
  %.248.i.i331 = phi i64 [ %i.abs, %.lr.ph49.i.i330 ], [ %.248.i.i331.ph, %.lr.ph49.i.i330.preheader ] ; 2 uses
  %.347.i.i332 = phi ptr [ %i.abr, %.lr.ph49.i.i330 ], [ %.347.i.i332.ph, %.lr.ph49.i.i330.preheader ] ; 2 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %i.zp, i64 %.248.i.i331
  %i.abq = load i8, ptr %i.abp, align 1, !tbaa !41
  store i8 %i.abq, ptr %.347.i.i332, align 1, !tbaa !41
  %i.abr = getelementptr inbounds nuw i8, ptr %.347.i.i332, i64 1 ; 2 uses
  %i.abs = add nuw i64 %.248.i.i331, 1            ; 2 uses
  %i.abt = icmp ult i64 %i.abs, %i.zx
  br i1 %i.abt, label %.lr.ph49.i.i330, label %uriFixPercentEncodingEngineA.exit.i328, !llvm.loop !98

uriFixPercentEncodingEngineA.exit.i328:           ; preds = %.lr.ph49.i.i330, %middle.block727, %vec.epilog.middle.block742, %.preheader.i.i325
  %.3.lcssa.i.i329 = phi ptr [ %.039.lcssa.i.i326, %.preheader.i.i325 ], [ %i.aan, %vec.epilog.middle.block742 ], [ %i.aag, %middle.block727 ], [ %i.abr, %.lr.ph49.i.i330 ]
  store ptr %.3.lcssa.i.i329, ptr %i.zs, align 8, !tbaa !43
  br label %uriFixPercentEncodingInplaceA.exit340

bb.ds:                                            ; preds = %bb.dk
  %i.abu = tail call fastcc i32 @uriFixPercentEncodingMallocA(ptr noundef %i.zo, ptr noundef %i.zs, ptr noundef %3)
  %.not226 = icmp eq i32 %i.abu, 0
  br i1 %.not226, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  tail call void @uriPreventLeakageA(ptr noundef nonnull %0, i32 noundef %14, ptr noundef %3)
  br label %bb.dz

bb.du:                                            ; preds = %bb.ds
  %i.abv = or i32 %14, 32
  store i32 %i.abv, ptr %i.a, align 4, !tbaa !40
  br label %uriFixPercentEncodingInplaceA.exit340

uriFixPercentEncodingInplaceA.exit340:            ; preds = %uriFixPercentEncodingEngineA.exit.i328, %bb.dl, %bb.cw, %uriFixPercentEncodingInplaceA.exit324, %bb.dj, %bb.du
  br i1 %.not231, label %bb.dv, label %bb.dz

bb.dv:                                            ; preds = %uriFixPercentEncodingInplaceA.exit340
  %i.abw = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.abx = load i32, ptr %i.abw, align 4, !tbaa !42
  %.not229 = icmp eq i32 %i.abx, 0
  br i1 %.not229, label %bb.dw, label %bb.dz

bb.dw:                                            ; preds = %bb.dv
  %i.aby = call fastcc i32 @uriMakeOwnerEngineA(ptr noundef %0, ptr noundef %i.a, ptr noundef %3)
  %.not230 = icmp eq i32 %i.aby, 0
  br i1 %.not230, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.abz = load i32, ptr %i.a, align 4, !tbaa !40
  tail call void @uriPreventLeakageA(ptr noundef nonnull %0, i32 noundef %i.abz, ptr noundef %3)
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dw
  store i32 1, ptr %i.abw, align 4, !tbaa !42
  br label %bb.dz

bb.dz:                                            ; preds = %uriFixPercentEncodingInplaceA.exit340.thread, %uriFixPercentEncodingInplaceA.exit340, %bb.dv, %bb.dy, %bb.ck, %bb.cm, %bb.e, %bb.b, %bb.dx, %bb.dt, %bb.dh, %bb.bw, %bb.am, %bb.ag, %bb.x, %bb.c
  %.1173 = phi i32 [ 0, %bb.c ], [ 2, %bb.b ], [ 3, %bb.ck ], [ 3, %bb.dx ], [ 3, %bb.dt ], [ 3, %bb.dh ], [ 0, %bb.e ], [ 3, %bb.bw ], [ 3, %bb.ag ], [ 3, %bb.am ], [ 3, %bb.x ], [ 3, %bb.cm ], [ 0, %bb.dy ], [ 0, %bb.dv ], [ 0, %uriFixPercentEncodingInplaceA.exit340 ], [ 0, %uriFixPercentEncodingInplaceA.exit340.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.1173
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 4) i32 @uriNormalizeSyntaxExA(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @uriNormalizeSyntaxEngineA(ptr noundef %0, i32 noundef %1, ptr noundef null, ptr noundef nonnull @defaultMemoryManager)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 11) i32 @uriNormalizeSyntaxExMmA(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
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
define hidden range(i32 0, 4) i32 @uriNormalizeSyntaxA(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc range(i32 0, 4) i32 @uriNormalizeSyntaxEngineA(ptr noundef %0, i32 noundef -1, ptr noundef null, ptr noundef nonnull @defaultMemoryManager)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 11) i32 @uriMakeOwnerMmA(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !40
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @uriMemoryManagerIsComplete(ptr noundef nonnull %1) #6
  %.not = icmp eq i32 %i.c, 1
  br i1 %.not, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %1, %bb.b ], [ @defaultMemoryManager, %bb.a ] ; 2 uses
  %i.d = icmp eq ptr %0, null
  br i1 %i.d, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !42
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = call fastcc i32 @uriMakeOwnerEngineA(ptr noundef %0, ptr noundef %i.a, ptr noundef nonnull %.0)
  %.not12 = icmp eq i32 %i.h, 0
  br i1 %.not12, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = load i32, ptr %i.a, align 4, !tbaa !40
  tail call void @uriPreventLeakageA(ptr noundef nonnull %0, i32 noundef %i.i, ptr noundef nonnull %.0)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i32 1, ptr %i.e, align 4, !tbaa !42
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.g, %bb.f
  %.09 = phi i32 [ 10, %bb.b ], [ 2, %bb.c ], [ 0, %bb.g ], [ 3, %bb.f ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.09
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @uriMakeOwnerEngineA(ptr noundef nonnull %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !40     ; 4 uses
  %i.d = and i32 %i.c, 1
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !48     ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !49
  %i.i = icmp ugt ptr %i.h, %i.f
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 @uriCopyRangeA(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef %2) #6
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %uriMakeRangeOwnerA.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr %1, align 4, !tbaa !40
  %i.m = or i32 %i.l, 1                           ; 2 uses
  store i32 %i.m, ptr %1, align 4, !tbaa !40
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.b, %bb.a
  %i.n = phi i32 [ %i.m, %bb.e ], [ %i.c, %bb.c ], [ %i.c, %bb.b ], [ %i.c, %bb.a ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.p = and i32 %i.n, 2
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !48   ; 2 uses
  %.not.i78 = icmp eq ptr %i.r, null
  br i1 %.not.i78, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !49
  %i.u = icmp ugt ptr %i.t, %i.r
  br i1 %i.u, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.v = tail call i32 @uriCopyRangeA(ptr noundef nonnull %i.o, ptr noundef nonnull %i.o, ptr noundef %2) #6
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %uriMakeRangeOwnerA.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = load i32, ptr %1, align 4, !tbaa !40
  %i.y = or i32 %i.x, 2                           ; 2 uses
  store i32 %i.y, ptr %1, align 4, !tbaa !40
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.g, %bb.f
  %i.z = phi i32 [ %i.y, %bb.j ], [ %i.n, %bb.h ], [ %i.n, %bb.g ], [ %i.n, %bb.f ] ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.ab = and i32 %i.z, 16
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !48 ; 2 uses
  %.not.i81 = icmp eq ptr %i.ad, null
  br i1 %.not.i81, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !49
  %i.ag = icmp ugt ptr %i.af, %i.ad
  br i1 %i.ag, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ah = tail call i32 @uriCopyRangeA(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.aa, ptr noundef %2) #6
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %uriMakeRangeOwnerA.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = load i32, ptr %1, align 4, !tbaa !40
end_hunk_2
