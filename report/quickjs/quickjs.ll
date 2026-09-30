Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/quickjs?download=true
inline.NumInlined: 10959
inline.NumDeleted: 614
loop-unroll.NumCompletelyUnrolled: 89
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 180
begin_hunk_0_@js_uint8array_from_base64:bb.a

bb.s:                                             ; preds = %._crit_edge.i, %bb.m
  %i.bz = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.ay, %bb.m ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1256 ; 3 uses
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !233, !range !234, !noundef !235
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i8 1, ptr %i.ca, align 8, !tbaa !233
  %i.cd = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !238 ; 0 uses
  store i8 0, ptr %i.ca, align 8, !tbaa !233
  %.pre = load ptr, ptr %i.ax, align 8, !tbaa !232
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ce = phi ptr [ %.pre, %bb.t ], [ %i.bz, %bb.s ]
  %i.cf = getelementptr inbounds i8, ptr %i.k, i64 -28 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !191 ; 2 uses
  %i.ch = add nsw i32 %i.cg, -1
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !191
  %i.ci = icmp slt i32 %i.cg, 2
  br i1 %i.ci, label %bb.v, label %JS_FreeCString.exit

bb.v:                                             ; preds = %bb.u
  %i.cj = getelementptr inbounds i8, ptr %i.k, i64 -24
  %i.ck = ptrtoint ptr %i.cj to i64
  call fastcc void @js_free_value_rt(ptr noundef %i.ce, i64 %i.ck, i64 -7), !inline_history !104
  br label %JS_FreeCString.exit

bb.w:                                             ; preds = %bb.p, %bb.q, %bb.r
  %.011.i.i.i = phi i64 [ 8, %bb.p ], [ %i.bs, %bb.q ], [ %i.by, %bb.r ]
  %i.cl = load i64, ptr %i.ba, align 8, !tbaa !196
  %i.cm = add i64 %i.cl, %.011.i.i.i
  store i64 %i.cm, ptr %i.ba, align 8, !tbaa !196
  %i.cn = icmp eq i32 %i.z, 1
  %i.co = select i1 %i.cn, ptr @b64_flags_url, ptr @b64_flags
  %i.cp = call fastcc i64 @from_base64(ptr noundef %i.k, i64 noundef %i.at, ptr noundef nonnull %i.bh, i64 noundef %i.aw, ptr noundef nonnull %i.co, i32 noundef %i.aj, ptr noundef %i.b, ptr noundef %i.c)
  %i.cq = load ptr, ptr %i.ax, align 8, !tbaa !232
  %i.cr = getelementptr inbounds i8, ptr %i.k, i64 -28 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !191 ; 2 uses
  %i.ct = add nsw i32 %i.cs, -1
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !191
  %i.cu = icmp slt i32 %i.cs, 2
  br i1 %i.cu, label %bb.x, label %JS_FreeCString.exit71

bb.x:                                             ; preds = %bb.w
  %i.cv = getelementptr inbounds i8, ptr %i.k, i64 -24
  %i.cw = ptrtoint ptr %i.cv to i64
  call fastcc void @js_free_value_rt(ptr noundef %i.cq, i64 %i.cw, i64 -7), !inline_history !104
  br label %JS_FreeCString.exit71

JS_FreeCString.exit71:                            ; preds = %bb.w, %bb.x
  %i.cx = load i32, ptr %i.c, align 4, !tbaa !191
  %.not61 = icmp eq i32 %i.cx, 0
  br i1 %.not61, label %bb.z, label %bb.y

bb.y:                                             ; preds = %JS_FreeCString.exit71
  %i.cy = load ptr, ptr %i.ax, align 8, !tbaa !232
  call void @js_free_rt(ptr noundef %i.cy, ptr noundef nonnull %i.bh)
  %i.cz = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowSyntaxError(ptr noundef nonnull %0, ptr noundef nonnull @.str.1132) ; 0 uses
  br label %JS_FreeCString.exit

bb.z:                                             ; preds = %JS_FreeCString.exit71
  %i.da = call { i64, i64 } @JS_NewUint8ArrayCopy(ptr noundef nonnull %0, ptr noundef nonnull %i.bh, i64 noundef %i.cp) ; 2 uses
  %i.db = extractvalue { i64, i64 } %i.da, 0
  %i.dc = extractvalue { i64, i64 } %i.da, 1
  %i.dd = load ptr, ptr %i.ax, align 8, !tbaa !232
  call void @js_free_rt(ptr noundef %i.dd, ptr noundef nonnull %i.bh)
  br label %JS_FreeCString.exit

JS_FreeCString.exit:                              ; preds = %bb.v, %bb.u, %bb.l, %bb.k, %bb.i, %bb.h, %bb.g, %bb.f, %bb.c, %bb.z, %bb.y, %bb.b
  %.sroa.9.0 = phi i64 [ 0, %bb.c ], [ 0, %bb.g ], [ 0, %bb.i ], [ 0, %bb.y ], [ %i.db, %bb.z ], [ 0, %bb.l ], [ 0, %bb.b ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.k ], [ 0, %bb.u ], [ 0, %bb.v ]
  %.sroa.14.0 = phi i64 [ 6, %bb.c ], [ 6, %bb.g ], [ 6, %bb.i ], [ 6, %bb.y ], [ %i.dc, %bb.z ], [ 6, %bb.l ], [ 6, %bb.b ], [ 6, %bb.f ], [ 6, %bb.h ], [ 6, %bb.k ], [ 6, %bb.u ], [ 6, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.9.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.14.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_uint8array_from_hex(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4) #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = trunc i64 %i.c to i32
  %i.e = add i32 %i.d, 7
  %i.f = icmp ult i32 %i.e, 2
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.1131) ; 0 uses
  br label %JS_FreeCString.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load i64, ptr %4, align 8
  %i.i = call ptr @JS_ToCStringLen2(ptr noundef %0, ptr noundef nonnull %i.a, i64 %i.h, i64 %i.c, i1 noundef zeroext false), !inline_history !30 ; 6 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %JS_FreeCString.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr %i.a, align 8, !tbaa !240  ; 4 uses
  %i.k = lshr i64 %i.j, 1                         ; 2 uses
  %i.l = add nuw i64 %i.k, 1                      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !232  ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !196
  %i.r = add i64 %i.q, %i.l
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.t = load i64, ptr %i.s, align 8, !tbaa !197
  %i.u = add i64 %i.t, -1
  %i.v = icmp ugt i64 %i.r, %i.u
  br i1 %i.v, label %bb.j, label %bb.e, !prof !192

bb.e:                                             ; preds = %bb.d
  %i.w = call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.n, i64 noundef %i.l), !inline_history !237 ; 7 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %._crit_edge.i, label %bb.f

._crit_edge.i:                                    ; preds = %bb.e
  %.pre.i = load ptr, ptr %i.m, align 8, !tbaa !232
  br label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.x = load i64, ptr %i.o, align 8, !tbaa !217
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.o, align 8, !tbaa !217
  %i.z = getelementptr inbounds i8, ptr %i.w, i64 -8 ; 3 uses
  %i.aa = load i16, ptr %i.z, align 8, !tbaa !218
  %i.ab = icmp eq i16 %i.aa, -1
  br i1 %i.ab, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 1064
  %i.ad = icmp eq ptr %i.z, %i.ac
  br i1 %i.ad, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !219
  %i.ag = call i64 %i.af(ptr noundef nonnull %i.z) #49, !inline_history !5 ; 2 uses
  %.not15.i.i.i = icmp eq i64 %i.ag, 0
  %i.ah = select i1 %.not15.i.i.i, i64 8, i64 %i.ag
  br label %bb.n

bb.i:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds i8, ptr %i.w, i64 -6
  %i.aj = load i8, ptr %i.ai, align 2, !tbaa !218
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.ak
  %i.am = load i16, ptr %i.al, align 2, !tbaa !221
  %i.an = zext i16 %i.am to i64
  br label %bb.n

bb.j:                                             ; preds = %._crit_edge.i, %bb.d
  %i.ao = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.n, %bb.d ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1256 ; 3 uses
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !233, !range !234, !noundef !235
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.ap, align 8, !tbaa !233
  %i.as = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !238 ; 0 uses
  store i8 0, ptr %i.ap, align 8, !tbaa !233
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !232
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.at = phi ptr [ %.pre, %bb.k ], [ %i.ao, %bb.j ]
  %i.au = getelementptr inbounds i8, ptr %i.i, i64 -28 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !191 ; 2 uses
  %i.aw = add nsw i32 %i.av, -1
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !191
  %i.ax = icmp slt i32 %i.av, 2
  br i1 %i.ax, label %bb.m, label %JS_FreeCString.exit

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds i8, ptr %i.i, i64 -24
  %i.az = ptrtoint ptr %i.ay to i64
  call fastcc void @js_free_value_rt(ptr noundef %i.at, i64 %i.az, i64 -7), !inline_history !104
  br label %JS_FreeCString.exit

bb.n:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.011.i.i.i = phi i64 [ 8, %bb.g ], [ %i.ah, %bb.h ], [ %i.an, %bb.i ]
  %i.ba = load i64, ptr %i.p, align 8, !tbaa !196
  %i.bb = add i64 %i.ba, %.011.i.i.i
  store i64 %i.bb, ptr %i.p, align 8, !tbaa !196
  %i.bc = and i64 %i.j, 1
  %.not.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i, label %.preheader.i, label %.loopexit

.preheader.i:                                     ; preds = %bb.n
  %.not43 = icmp eq i64 %i.j, 0
  br i1 %.not43, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.w
  %.02444.i = phi i64 [ %i.cc, %bb.w ], [ 0, %.preheader.i ] ; 2 uses
  %.02543.i = phi i64 [ %i.ca, %bb.w ], [ 0, %.preheader.i ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 %.02444.i ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !218 ; 4 uses
  %i.bf = zext i8 %i.be to i32                    ; 3 uses
  %i.bg = add i8 %i.be, -48
  %or.cond.i.i = icmp ult i8 %i.bg, 10
  br i1 %or.cond.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph.i
  %i.bh = add nsw i32 %i.bf, -48
  br label %u8a_hex_nibble.exit.i

bb.p:                                             ; preds = %.lr.ph.i
  %i.bi = add i8 %i.be, -97
  %or.cond5.i.i = icmp ult i8 %i.bi, 6
  br i1 %or.cond5.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bj = add nsw i32 %i.bf, -87
  br label %u8a_hex_nibble.exit.i

bb.r:                                             ; preds = %bb.p
  %i.bk = add i8 %i.be, -65
  %or.cond8.i.i = icmp ult i8 %i.bk, 6
  %i.bl = add nsw i32 %i.bf, -55
  %spec.select.i.i = select i1 %or.cond8.i.i, i32 %i.bl, i32 -1
  br label %u8a_hex_nibble.exit.i

u8a_hex_nibble.exit.i:                            ; preds = %bb.r, %bb.q, %bb.o
  %.0.i.i = phi i32 [ %i.bh, %bb.o ], [ %i.bj, %bb.q ], [ %spec.select.i.i, %bb.r ] ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bd, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !218 ; 4 uses
  %i.bo = zext i8 %i.bn to i32                    ; 3 uses
  %i.bp = add i8 %i.bn, -48
  %or.cond.i33.i = icmp ult i8 %i.bp, 10
  br i1 %or.cond.i33.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %u8a_hex_nibble.exit.i
  %i.bq = add nsw i32 %i.bo, -48
  br label %u8a_hex_nibble.exit38.i

bb.t:                                             ; preds = %u8a_hex_nibble.exit.i
  %i.br = add i8 %i.bn, -97
  %or.cond5.i34.i = icmp ult i8 %i.br, 6
  br i1 %or.cond5.i34.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bs = add nsw i32 %i.bo, -87
  br label %u8a_hex_nibble.exit38.i

bb.v:                                             ; preds = %bb.t
  %i.bt = add i8 %i.bn, -65
  %or.cond8.i35.i = icmp ult i8 %i.bt, 6
  %i.bu = add nsw i32 %i.bo, -55
  %spec.select.i36.i = select i1 %or.cond8.i35.i, i32 %i.bu, i32 -1
  br label %u8a_hex_nibble.exit38.i

u8a_hex_nibble.exit38.i:                          ; preds = %bb.v, %bb.u, %bb.s
  %.0.i37.i = phi i32 [ %i.bq, %bb.s ], [ %i.bs, %bb.u ], [ %spec.select.i36.i, %bb.v ] ; 2 uses
  %i.bv = icmp sgt i32 %.0.i.i, -1
  %i.bw = icmp sgt i32 %.0.i37.i, -1
  %or.cond.not.i = select i1 %i.bv, i1 %i.bw, i1 false ; 3 uses
  br i1 %or.cond.not.i, label %bb.w, label %.loopexit

bb.w:                                             ; preds = %u8a_hex_nibble.exit38.i
  %i.bx = shl nuw nsw i32 %.0.i.i, 4
  %i.by = or i32 %.0.i37.i, %i.bx
  %i.bz = trunc i32 %i.by to i8
  %i.ca = add nuw i64 %.02543.i, 1                ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.w, i64 %.02543.i
  store i8 %i.bz, ptr %i.cb, align 1, !tbaa !218
  %i.cc = add i64 %.02444.i, 2                    ; 2 uses
  %5 = icmp ult i64 %i.cc, %i.j
  %6 = icmp samesign ult i64 %.02543.i, %i.k
  %7 = select i1 %5, i1 %6, i1 false
  br i1 %7, label %.lr.ph.i, label %.loopexit

.loopexit:                                        ; preds = %u8a_hex_nibble.exit38.i, %bb.w, %bb.n, %.preheader.i
  %.not35 = phi i1 [ true, %.preheader.i ], [ false, %bb.n ], [ %or.cond.not.i, %bb.w ], [ %or.cond.not.i, %u8a_hex_nibble.exit38.i ]
  %.2.i = phi i64 [ 0, %.preheader.i ], [ 0, %bb.n ], [ 0, %u8a_hex_nibble.exit38.i ], [ %i.ca, %bb.w ]
  %i.cd = load ptr, ptr %i.m, align 8, !tbaa !232
  %i.ce = getelementptr inbounds i8, ptr %i.i, i64 -28 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !191 ; 2 uses
  %i.cg = add nsw i32 %i.cf, -1
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !191
  %i.ch = icmp slt i32 %i.cf, 2
  br i1 %i.ch, label %bb.x, label %JS_FreeCString.exit39

bb.x:                                             ; preds = %.loopexit
  %i.ci = getelementptr inbounds i8, ptr %i.i, i64 -24
  %i.cj = ptrtoint ptr %i.ci to i64
  call fastcc void @js_free_value_rt(ptr noundef %i.cd, i64 %i.cj, i64 -7), !inline_history !104
  br label %JS_FreeCString.exit39

JS_FreeCString.exit39:                            ; preds = %.loopexit, %bb.x
  br i1 %.not35, label %bb.z, label %bb.y

bb.y:                                             ; preds = %JS_FreeCString.exit39
  %i.ck = load ptr, ptr %i.m, align 8, !tbaa !232
  call void @js_free_rt(ptr noundef %i.ck, ptr noundef nonnull %i.w)
  %i.cl = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowSyntaxError(ptr noundef nonnull %0, ptr noundef nonnull @.str.1144) ; 0 uses
  br label %JS_FreeCString.exit

bb.z:                                             ; preds = %JS_FreeCString.exit39
  %i.cm = call fastcc { i64, i64 } @js_array_buffer_constructor3(ptr noundef nonnull %0, i64 0, i64 3, i64 noundef %.2.i, ptr noundef null, i32 noundef 20, ptr noundef nonnull %i.w, ptr noundef nonnull @js_array_buffer_realloc, ptr noundef null, i1 noundef zeroext true) ; 2 uses
  %i.cn = extractvalue { i64, i64 } %i.cm, 0
  %i.co = extractvalue { i64, i64 } %i.cm, 1
  %i.cp = call fastcc { i64, i64 } @js_new_uint8array(ptr noundef nonnull %0, i64 %i.cn, i64 %i.co) ; 2 uses
  %i.cq = extractvalue { i64, i64 } %i.cp, 0
  %i.cr = extractvalue { i64, i64 } %i.cp, 1
  %i.cs = load ptr, ptr %i.m, align 8, !tbaa !232
  call void @js_free_rt(ptr noundef %i.cs, ptr noundef nonnull %i.w)
  br label %JS_FreeCString.exit

JS_FreeCString.exit:                              ; preds = %bb.m, %bb.l, %bb.c, %bb.z, %bb.y, %bb.b
  %.sroa.6.0 = phi i64 [ 0, %bb.y ], [ %i.cq, %bb.z ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.l ], [ 0, %bb.m ]
  %.sroa.8.0 = phi i64 [ 6, %bb.y ], [ %i.cr, %bb.z ], [ 6, %bb.c ], [ 6, %bb.b ], [ 6, %bb.l ], [ 6, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.6.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.8.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_btoa(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4) #2 {
bb.a:
  %i.a = load i64, ptr %4, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call fastcc { i64, i64 } @JS_ToStringInternal(ptr noundef %0, i64 %i.a, i64 %i.c, i32 noundef 0), !inline_history !400 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  %i.g = and i64 %i.f, 4294967295
  %i.h = icmp eq i64 %i.g, 6
  br i1 %i.h, label %JS_FreeValue.exit, label %bb.b, !prof !192

bb.b:                                             ; preds = %bb.a
  %i.i = inttoptr i64 %i.e to ptr                 ; 7 uses
  %i.j = load i64, ptr %i.i, align 8
  %.fr = freeze i64 %i.j                          ; 5 uses
  %i.k = and i64 %.fr, 2147483647                 ; 6 uses
  %i.l = and i64 %.fr, 2147483648
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.h, !prof !324

bb.c:                                             ; preds = %bb.b
  %i.m = lshr i64 %.fr, 60
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = and i32 %i.n, 3
  switch i32 %i.o, label %default.unreachable [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  br label %str8.exit

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !389
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !390
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v
  br label %str8.exit

bb.f:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !239
  br label %str8.exit

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.g:                                             ; preds = %bb.c
  tail call void @abort() #50
  unreachable

bb.h:                                             ; preds = %bb.b
  %i.z = tail call fastcc ptr @str16(ptr noundef nonnull %i.i) ; 5 uses
  %i.aa = tail call i64 @llvm.umax.i64(i64 %i.k, i64 1)
  %i.ab = tail call ptr @js_malloc(ptr noundef %0, i64 noundef %i.aa) ; 13 uses
  %.not68 = icmp eq ptr %i.ab, null
  br i1 %.not68, label %.thread78.thread, label %.preheader, !prof !192

.preheader:                                       ; preds = %bb.h
  %.not97 = icmp eq i64 %i.k, 0
  br i1 %.not97, label %str8.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %xtraiter = and i64 %.fr, 3                     ; 3 uses
  %i.ac = icmp samesign ult i64 %i.k, 4
  br i1 %i.ac, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.fr, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %.lr.ph.preheader.new
  %.06396 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ba, %bb.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %bb.i ]
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %.06396
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !221 ; 2 uses
  %i.af = icmp ult i16 %i.ae, 256
  br i1 %i.af, label %.lr.ph.1, label %.thread78.thread88, !prof !324

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.ag = trunc nuw i16 %i.ae to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.06396
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !218
  %i.ai = or disjoint i64 %.06396, 1              ; 2 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.ai
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !221 ; 2 uses
  %i.al = icmp ult i16 %i.ak, 256
  br i1 %i.al, label %.lr.ph.2, label %.thread78.thread88, !prof !324

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.am = trunc nuw i16 %i.ak to i8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ai
  store i8 %i.am, ptr %i.an, align 1, !tbaa !218
  %i.ao = or disjoint i64 %.06396, 2              ; 2 uses
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.ao
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !221 ; 2 uses
  %i.ar = icmp ult i16 %i.aq, 256
  br i1 %i.ar, label %.lr.ph.3, label %.thread78.thread88, !prof !324

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.as = trunc nuw i16 %i.aq to i8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ao
  store i8 %i.as, ptr %i.at, align 1, !tbaa !218
  %i.au = or disjoint i64 %.06396, 3              ; 2 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !221 ; 2 uses
  %i.ax = icmp ult i16 %i.aw, 256
  br i1 %i.ax, label %bb.i, label %.thread78.thread88, !prof !324

bb.i:                                             ; preds = %.lr.ph.3
  %i.ay = trunc nuw i16 %i.aw to i8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.au
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !218
  %i.ba = add nuw nsw i64 %.06396, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %str8.exit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !2279

.thread78.thread88:                               ; preds = %.lr.ph.epil, %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3
  %i.bb = tail call { i64, i64 } (ptr, ptr, ptr, ...) @JS_ThrowDOMException(ptr noundef %0, ptr noundef nonnull @.str.1080, ptr noundef nonnull @.str.1151) ; 0 uses
  br label %bb.s

str8.exit.loopexit.unr-lcssa:                     ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %str8.exit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %str8.exit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.06396.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ba, %str8.exit.loopexit.unr-lcssa ]
  %lcmp.mod109 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod109)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %bb.j, %.lr.ph.epil.preheader
  %.06396.epil = phi i64 [ %i.bh, %bb.j ], [ %.06396.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.j ], [ 0, %.lr.ph.epil.preheader ]
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %.06396.epil
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !221 ; 2 uses
  %i.be = icmp ult i16 %i.bd, 256
  br i1 %i.be, label %bb.j, label %.thread78.thread88, !prof !324

bb.j:                                             ; preds = %.lr.ph.epil
  %i.bf = trunc nuw i16 %i.bd to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.06396.epil
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !218
  %i.bh = add nuw nsw i64 %.06396.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %str8.exit, label %.lr.ph.epil, !llvm.loop !2280

end_hunk_0
