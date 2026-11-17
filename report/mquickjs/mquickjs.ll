Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mquickjs/original/mquickjs?download=true
inline.NumInlined: 1970
inline.NumDeleted: 206
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@re_parse_alternative:bb.a
}

; Function Attrs: nounwind optsize uwtable
define internal range(i32 255, 2562) i32 @re_parse_disjunction(ptr noundef %0, i32 noundef %1, i32 %2) #4 {
bb.a:
  switch i32 %1, label %bb.b [
    i32 254, label %bb.c
    i32 0, label %bb.e
    i32 1, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i32, ptr %i.a, align 8, !tbaa !128
  %i.c = shl i32 %i.b, 1
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !42   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !42
  %.not.i = icmp ugt ptr %i.g, %i.i
  br i1 %.not.i, label %js_parse_push_val.exit, label %bb.d, !prof !69

bb.d:                                             ; preds = %bb.c
  %i.j = tail call fastcc i64 @parse_stack_alloc(ptr noundef nonnull %0, i64 noundef %i.d) #28
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !42
  br label %js_parse_push_val.exit

js_parse_push_val.exit:                           ; preds = %bb.c, %bb.d
  %i.k = phi ptr [ %.pre.i, %bb.d ], [ %i.g, %bb.c ]
  %.0.i = phi i64 [ %i.j, %bb.d ], [ %i.d, %bb.c ]
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -8 ; 2 uses
  store ptr %i.l, ptr %i.f, align 8, !tbaa !42
  store i64 %.0.i, ptr %i.l, align 8, !tbaa !46
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %.val33 = load ptr, ptr %0, align 8, !tbaa !109 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val33, i64 32 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !42   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.o, ptr %i.m, align 8, !tbaa !42
  %i.p = load i64, ptr %i.n, align 8, !tbaa !46   ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.n, i64 -120 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val33, i64 24 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !42
  %i.t = icmp ugt ptr %i.q, %i.s
  br i1 %i.t, label %bb.f, label %js_parse_pop_val.exit, !prof !67

bb.f:                                             ; preds = %bb.e
  store ptr %i.q, ptr %i.r, align 8, !tbaa !42
  br label %js_parse_pop_val.exit

js_parse_pop_val.exit:                            ; preds = %bb.f, %bb.e, %js_parse_pop_val.exit43
  %.0.in.in = phi i64 [ %i.cf, %js_parse_pop_val.exit43 ], [ %i.p, %bb.e ], [ %i.p, %bb.f ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !114
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !116  ; 2 uses
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !51
  %i.ab = icmp eq i8 %i.aa, 124
  br i1 %i.ab, label %bb.g, label %bb.k

bb.g:                                             ; preds = %js_parse_pop_val.exit
  %.0.in = trunc i64 %.0.in.in to i32
  %.0 = ashr i32 %.0.in, 1                        ; 3 uses
  %i.ac = add i32 %i.x, 1
  store i32 %i.ac, ptr %i.w, align 8, !tbaa !116
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !128
  tail call fastcc void @emit_claim_size(ptr noundef nonnull %0, i32 noundef 5) #28
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !121
  %i.ah = add i64 %i.ag, -1
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = sext i32 %.0 to i64                     ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 5
  %i.an = load i32, ptr %i.ad, align 8, !tbaa !128
  %i.ao = sub i32 %i.an, %.0
  %i.ap = zext i32 %i.ao to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.am, ptr nonnull align 1 %i.al, i64 %i.ap, i1 false)
  %i.aq = load i32, ptr %i.ad, align 8, !tbaa !128
  %i.ar = add i32 %i.aq, 5
  store i32 %i.ar, ptr %i.ad, align 8, !tbaa !128
  %i.as = load i64, ptr %i.af, align 8, !tbaa !121
  %i.at = add i64 %i.as, -1
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 %i.ak ; 2 uses
  store i8 15, ptr %i.aw, align 1, !tbaa !51
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %reass.sub45 = sub i32 %i.ae, %.0
  %i.ay = add i32 %reass.sub45, 5
  store i32 %i.ay, ptr %i.ax, align 1, !tbaa !91
  %i.az = tail call fastcc i32 @re_emit_op_u32(ptr noundef nonnull %0, i32 noundef 13, i32 noundef 0) #28
  %i.ba = shl i64 %.0.in.in, 32
  %sext = ashr exact i64 %i.ba, 32
  %i.bb = and i64 %sext, -2                       ; 2 uses
  %i.bc = load ptr, ptr %0, align 8, !tbaa !109   ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !42 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !42
  %.not.i34 = icmp ugt ptr %i.be, %i.bg
  br i1 %.not.i34, label %js_parse_push_val.exit37, label %bb.h, !prof !69

bb.h:                                             ; preds = %bb.g
  %i.bh = tail call fastcc i64 @parse_stack_alloc(ptr noundef nonnull %0, i64 noundef %i.bb) #28
  %.pre.i35 = load ptr, ptr %i.bd, align 8, !tbaa !42
  %.pre = load ptr, ptr %0, align 8, !tbaa !109
  br label %js_parse_push_val.exit37

js_parse_push_val.exit37:                         ; preds = %bb.g, %bb.h
  %i.bi = phi ptr [ %.pre, %bb.h ], [ %i.bc, %bb.g ] ; 2 uses
  %i.bj = phi ptr [ %.pre.i35, %bb.h ], [ %i.be, %bb.g ]
  %.0.i36 = phi i64 [ %i.bh, %bb.h ], [ %i.bb, %bb.g ]
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -8 ; 2 uses
  store ptr %i.bk, ptr %i.bd, align 8, !tbaa !42
  store i64 %.0.i36, ptr %i.bk, align 8, !tbaa !46
  %i.bl = shl i32 %i.az, 1
  %i.bm = sext i32 %i.bl to i64                   ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 32 ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !42 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !42
  %.not.i38 = icmp ugt ptr %i.bo, %i.bq
  br i1 %.not.i38, label %js_parse_push_val.exit41, label %bb.i, !prof !69

bb.i:                                             ; preds = %js_parse_push_val.exit37
  %i.br = tail call fastcc i64 @parse_stack_alloc(ptr noundef nonnull %0, i64 noundef %i.bm) #28
  %.pre.i39 = load ptr, ptr %i.bn, align 8, !tbaa !42
  br label %js_parse_push_val.exit41

js_parse_push_val.exit41:                         ; preds = %js_parse_push_val.exit37, %bb.i
  %i.bs = phi ptr [ %.pre.i39, %bb.i ], [ %i.bo, %js_parse_push_val.exit37 ]
  %.0.i40 = phi i64 [ %i.br, %bb.i ], [ %i.bm, %js_parse_push_val.exit37 ]
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -8 ; 2 uses
  store ptr %i.bt, ptr %i.bn, align 8, !tbaa !42
  store i64 %.0.i40, ptr %i.bt, align 8, !tbaa !46
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  %.val32 = load ptr, ptr %0, align 8, !tbaa !109 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.val32, i64 32 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !42 ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !46
  %i.by = getelementptr inbounds i8, ptr %i.bv, i64 -120
  %i.bz = getelementptr inbounds nuw i8, ptr %.val32, i64 24 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !42 ; 2 uses
  %i.cb = icmp ugt ptr %i.by, %i.ca
  %i.cc = trunc i64 %i.bx to i32
  %i.cd = ashr i32 %i.cc, 1                       ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store ptr %i.ce, ptr %i.bu, align 8, !tbaa !42
  %i.cf = load i64, ptr %i.bw, align 8, !tbaa !46
  %i.cg = getelementptr inbounds i8, ptr %i.bv, i64 -112 ; 2 uses
  %i.ch = icmp ugt ptr %i.cg, %i.ca
  %or.cond = select i1 %i.cb, i1 true, i1 %i.ch, !prof !130
  br i1 %or.cond, label %js_parse_pop_val.exit42.thread, label %js_parse_pop_val.exit43, !prof !130

js_parse_pop_val.exit42.thread:                   ; preds = %bb.j
  store ptr %i.cg, ptr %i.bz, align 8, !tbaa !42
  br label %js_parse_pop_val.exit43

js_parse_pop_val.exit43:                          ; preds = %bb.j, %js_parse_pop_val.exit42.thread
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !128
  %reass.sub = sub i32 %i.cj, %i.cd
  %i.ck = add i32 %reass.sub, -4
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !121
  %i.cn = add i64 %i.cm, -1
  %i.co = inttoptr i64 %i.cn to ptr
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = sext i32 %i.cd to i64
  %i.cr = getelementptr inbounds i8, ptr %i.cp, i64 %i.cq
  store i32 %i.ck, ptr %i.cr, align 1, !tbaa !91
  br label %js_parse_pop_val.exit, !llvm.loop !396

bb.k:                                             ; preds = %js_parse_pop_val.exit, %js_parse_push_val.exit41, %js_parse_push_val.exit
  %.031 = phi i32 [ 2560, %js_parse_push_val.exit ], [ 2561, %js_parse_push_val.exit41 ], [ 255, %js_parse_pop_val.exit ]
  ret i32 %.031
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @next_token(ptr noundef initializes((12, 16), (24, 32)) %0) unnamed_addr #4 {
bb.a:
  %1 = alloca %struct.JSGCRef, align 8            ; 6 uses
  %2 = alloca %struct.StringBuffer, align 8       ; 9 uses
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !116  ; 2 uses
  store i32 %i.d, ptr %i.a, align 4, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, -256                       ; 2 uses
  store i64 %i.g, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 34 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store i64 7, ptr %i.i, align 8, !tbaa !117
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 7 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !114  ; 31 uses
  %i.l = zext i32 %i.d to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l ; 2 uses
  store ptr %i.m, ptr %i.b, align 8, !tbaa !44
  %i.n = ptrtoaddr ptr %i.k to i64                ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %.backedge.outer

.backedge.outer:                                  ; preds = %.backedge.sink.split, %bb.a
  %.ph451 = phi i64 [ %.ph, %.backedge.sink.split ], [ %i.g, %bb.a ] ; 3 uses
  %storemerge86233.ph = phi ptr [ %.sink, %.backedge.sink.split ], [ %i.m, %bb.a ]
  br label %.backedge

.backedge.loopexit:                               ; preds = %bb.n, %bb.n
  br label %.backedge

.backedge:                                        ; preds = %.backedge.outer, %.backedge.loopexit
  %storemerge86233 = phi ptr [ %storemerge, %.backedge.loopexit ], [ %storemerge86233.ph, %.backedge.outer ] ; 51 uses
  %i.p = ptrtoaddr ptr %storemerge86233 to i64
  %i.q = sub i64 %i.p, %i.n                       ; 2 uses
  %i.r = trunc i64 %i.q to i32
  store i32 %i.r, ptr %i.o, align 4, !tbaa !168
  %i.s = load i8, ptr %storemerge86233, align 1, !tbaa !51 ; 5 uses
  switch i8 %i.s, label %bb.cb [
    i8 0, label %bb.b
    i8 34, label %bb.c
    i8 39, label %bb.c
    i8 10, label %bb.d
    i8 32, label %bb.e
    i8 9, label %bb.e
    i8 12, label %bb.e
    i8 11, label %bb.e
    i8 13, label %bb.e
    i8 47, label %bb.f
    i8 95, label %bb.u
    i8 36, label %bb.u
    i8 65, label %bb.u
    i8 66, label %bb.u
    i8 67, label %bb.u
    i8 68, label %bb.u
    i8 69, label %bb.u
    i8 70, label %bb.u
    i8 71, label %bb.u
    i8 72, label %bb.u
    i8 73, label %bb.u
    i8 74, label %bb.u
    i8 75, label %bb.u
    i8 76, label %bb.u
    i8 77, label %bb.u
    i8 78, label %bb.u
    i8 79, label %bb.u
    i8 80, label %bb.u
    i8 81, label %bb.u
    i8 82, label %bb.u
    i8 83, label %bb.u
    i8 84, label %bb.u
    i8 85, label %bb.u
    i8 86, label %bb.u
    i8 87, label %bb.u
    i8 88, label %bb.u
    i8 89, label %bb.u
    i8 90, label %bb.u
    i8 97, label %bb.u
    i8 98, label %bb.u
    i8 99, label %bb.u
    i8 100, label %bb.u
    i8 101, label %bb.u
    i8 102, label %bb.u
    i8 103, label %bb.u
    i8 104, label %bb.u
    i8 105, label %bb.u
    i8 106, label %bb.u
    i8 107, label %bb.u
    i8 108, label %bb.u
    i8 109, label %bb.u
    i8 110, label %bb.u
    i8 111, label %bb.u
    i8 112, label %bb.u
    i8 113, label %bb.u
    i8 114, label %bb.u
    i8 115, label %bb.u
    i8 116, label %bb.u
    i8 117, label %bb.u
    i8 118, label %bb.u
    i8 119, label %bb.u
    i8 120, label %bb.u
    i8 121, label %bb.u
    i8 122, label %bb.u
    i8 46, label %bb.af
    i8 48, label %bb.ag
    i8 49, label %.loopexit
    i8 50, label %.loopexit
    i8 51, label %.loopexit
    i8 52, label %.loopexit
    i8 53, label %.loopexit
    i8 54, label %.loopexit
    i8 55, label %.loopexit
    i8 56, label %.loopexit
    i8 57, label %.loopexit
    i8 42, label %bb.al
    i8 37, label %bb.aq
    i8 43, label %bb.as
    i8 45, label %bb.av
    i8 60, label %bb.ay
    i8 62, label %bb.bd
    i8 61, label %bb.bl
    i8 33, label %bb.bp
    i8 38, label %bb.bt
    i8 94, label %bb.bw
    i8 124, label %bb.by
  ]

bb.b:                                             ; preds = %.backedge
  store i32 160, ptr %i.h, align 8, !tbaa !119
  br label %bb.ce

bb.c:                                             ; preds = %.backedge, %.backedge
  %i.t = zext nneg i8 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 1
  %i.v = ptrtoaddr ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.n
  %i.x = trunc i64 %i.w to i32
  store i32 %i.x, ptr %i.a, align 4, !tbaa !45
  %i.y = call fastcc i64 @js_parse_string(ptr noundef nonnull %0, ptr noundef %i.a, i32 noundef %i.t) #28
  store i64 %i.y, ptr %i.i, align 8, !tbaa !117
  store i32 129, ptr %i.h, align 8, !tbaa !119
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !114  ; 2 uses
  %i.aa = load i32, ptr %i.a, align 4, !tbaa !45
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ab
  br label %bb.ce

bb.d:                                             ; preds = %.backedge
  %3 = and i64 %.ph451, -256
  %4 = or disjoint i64 %3, 1                      ; 2 uses
  store i64 %4, ptr %i.e, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 1
  br label %.backedge.sink.split

.backedge.sink.split:                             ; preds = %bb.k, %bb.e, %bb.d
  %.sink = phi ptr [ %i.ad, %bb.d ], [ %5, %bb.e ], [ %i.al, %bb.k ] ; 2 uses
  %.ph = phi i64 [ %4, %bb.d ], [ %.ph451, %bb.e ], [ %.ph451, %bb.k ]
  store ptr %.sink, ptr %i.b, align 8, !tbaa !44
  br label %.backedge.outer

bb.e:                                             ; preds = %.backedge, %.backedge, %.backedge, %.backedge, %.backedge
  %5 = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 1
  br label %.backedge.sink.split

bb.f:                                             ; preds = %.backedge
  %i.ae = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !51  ; 2 uses
  switch i8 %i.af, label %bb.p [
    i8 42, label %bb.g
    i8 47, label %bb.m
  ]

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 2
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %bb.g
  %storemerge86 = phi ptr [ %i.ag, %bb.g ], [ %i.am, %bb.l ] ; 5 uses
  store ptr %storemerge86, ptr %i.b, align 8, !tbaa !44
  %i.ah = load i8, ptr %storemerge86, align 1, !tbaa !51
  switch i8 %i.ah, label %bb.l [
    i8 0, label %bb.i
    i8 42, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ptr, ...) @js_parse_error(ptr noundef %0, ptr noundef nonnull @.str.158) #34
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %storemerge86, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !51
  %i.ak = icmp eq i8 %i.aj, 47
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %storemerge86, i64 2
  br label %.backedge.sink.split

bb.l:                                             ; preds = %bb.h, %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %storemerge86, i64 1
  br label %bb.h

bb.m:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 2
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m
  %storemerge = phi ptr [ %i.an, %bb.m ], [ %i.ap, %bb.o ] ; 4 uses
  store ptr %storemerge, ptr %i.b, align 8, !tbaa !44
  %i.ao = load i8, ptr %storemerge, align 1, !tbaa !51
  switch i8 %i.ao, label %bb.o [
    i8 0, label %.backedge.loopexit
    i8 10, label %.backedge.loopexit
  ]

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %storemerge, i64 1
  br label %bb.n

bb.p:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 1 ; 2 uses
  %i.ar = load i32, ptr %i.h, align 8, !tbaa !119
  %i.as = tail call fastcc i32 @is_regexp_allowed(i32 noundef %i.ar) #28
  %.not85 = icmp eq i32 %i.as, 0
  br i1 %.not85, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = ptrtoaddr ptr %i.aq to i64
  %i.au = sub i64 %i.at, %i.n
  %i.av = trunc i64 %i.au to i32
  store i32 %i.av, ptr %i.a, align 4, !tbaa !45
  call fastcc void @js_parse_regexp_token(ptr noundef nonnull %0, ptr noundef %i.a) #28
  %i.aw = load ptr, ptr %i.j, align 8, !tbaa !114 ; 2 uses
  %i.ax = load i32, ptr %i.a, align 4, !tbaa !45
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ay
  br label %bb.ce

bb.r:                                             ; preds = %bb.p
  %i.ba = icmp eq i8 %i.af, 61
  br i1 %i.ba, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bb = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 2
  store i32 133, ptr %i.h, align 8, !tbaa !119
  br label %bb.ce

bb.t:                                             ; preds = %bb.r
  store i32 47, ptr %i.h, align 8, !tbaa !119
  br label %bb.ce

bb.u:                                             ; preds = %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge
  %i.bc = load ptr, ptr %0, align 8, !tbaa !109   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <2 x i32> <i32 0, i32 1>, ptr %i.bd, align 8, !tbaa !45
  %i.be = tail call fastcc ptr @js_malloc(ptr noundef %i.bc, i32 noundef 24, i32 noundef 6) #32, !inline_history !21 ; 4 uses
  %.not.i61.i = icmp eq ptr %i.be, null
  br i1 %.not.i61.i, label %string_buffer_push.exit.i, label %string_buffer_push.exit.thread.i

string_buffer_push.exit.thread.i:                 ; preds = %bb.u
  %i.bf = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 1
  %i.bg = ptrtoaddr ptr %i.bf to i64
  %i.bh = sub i64 %i.bg, %i.n
  %i.bi = zext nneg i8 %i.s to i64
  %i.bj = load i64, ptr %i.be, align 8
  %i.bk = and i64 %i.bj, 15
  %i.bl = or disjoint i64 %i.bk, 256
  store i64 %i.bl, ptr %i.be, align 8
  %storemerge.in.i.i = ptrtoint ptr %i.be to i64
  %storemerge.i.i = add i64 %storemerge.in.i.i, 1
  store i64 %storemerge.i.i, ptr %2, align 8, !tbaa !151
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 80 ; 5 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !36
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !152
  store ptr %2, ptr %i.bm, align 8, !tbaa !36
  %i.bp = shl nuw nsw i64 %i.bi, 5
  %i.bq = or disjoint i64 %i.bp, 27
  %i.br = call fastcc range(i32 -1, 1) i32 @string_buffer_concat_str(ptr noundef %i.bc, ptr noundef nonnull %2, i64 noundef %i.bq) #28 ; 0 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.bt = and i64 %i.bh, 4294967295
  br label %bb.v

string_buffer_push.exit.i:                        ; preds = %bb.u
  tail call void (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.218) #34
  unreachable

bb.v:                                             ; preds = %is_ident_next.exit.thread.i, %string_buffer_push.exit.thread.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %is_ident_next.exit.thread.i ], [ %i.bt, %string_buffer_push.exit.thread.i ] ; 5 uses
  %i.bu = load i32, ptr %i.bs, align 4, !tbaa !113
  %i.bv = zext i32 %i.bu to i64
  %i.bw = icmp samesign ult i64 %indvars.iv.i, %i.bv
  br i1 %i.bw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %.0.i = load ptr, ptr %i.j, align 8, !tbaa !114
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i, i64 %indvars.iv.i
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !51  ; 3 uses
  %i.bz = zext i8 %i.by to i32                    ; 2 uses
  %i.ca = and i32 %i.bz, 223
  %i.cb = add nsw i32 %i.ca, -65
  %or.cond.i.i = icmp ult i32 %i.cb, 26
  br i1 %or.cond.i.i, label %is_ident_next.exit.thread.i, label %switch.early.test.i.i

switch.early.test.i.i:                            ; preds = %bb.w
  switch i8 %i.by, label %is_ident_next.exit.i [
    i8 95, label %is_ident_next.exit.thread.i
    i8 36, label %is_ident_next.exit.thread.i
  ]

is_ident_next.exit.i:                             ; preds = %switch.early.test.i.i
  %i.cc = add i8 %i.by, -58
  %i.cd = icmp ult i8 %i.cc, -10
  br i1 %i.cd, label %bb.x, label %is_ident_next.exit.thread.i

is_ident_next.exit.thread.i:                      ; preds = %is_ident_next.exit.i, %switch.early.test.i.i, %switch.early.test.i.i, %bb.w
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ce = shl nuw nsw i32 %i.bz, 5
  %i.cf = or disjoint i32 %i.ce, 27
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = call fastcc range(i32 -1, 1) i32 @string_buffer_concat_str(ptr noundef %i.bc, ptr noundef nonnull %2, i64 noundef %i.cg) #28
  %.not53.i = icmp eq i32 %i.ch, 0
  br i1 %.not53.i, label %bb.v, label %bb.x, !llvm.loop !397

bb.x:                                             ; preds = %is_ident_next.exit.thread.i, %is_ident_next.exit.i, %bb.v
  %.1.in.i = phi i64 [ %indvars.iv.next.i, %is_ident_next.exit.thread.i ], [ %indvars.iv.i, %is_ident_next.exit.i ], [ %indvars.iv.i, %bb.v ]
  store i32 130, ptr %i.h, align 8, !tbaa !398
  %i.ci = call fastcc i64 @string_buffer_pop(ptr noundef %i.bc, ptr noundef %2) #28 ; 2 uses
  %i.cj = load ptr, ptr %i.bm, align 8, !tbaa !36
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !39
  store ptr %1, ptr %i.bm, align 8, !tbaa !36
  store i64 %i.ci, ptr %1, align 8, !tbaa !40
  %i.cl = call fastcc i64 @JS_MakeUniqueString(ptr noundef %i.bc, i64 noundef %i.ci) #28 ; 5 uses
  %i.cm = load i64, ptr %1, align 8, !tbaa !40    ; 2 uses
  %i.cn = load ptr, ptr %i.ck, align 8, !tbaa !39
  store ptr %i.cn, ptr %i.bm, align 8, !tbaa !36
  %.not.i = icmp eq i64 %i.cl, 15
  br i1 %.not.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.218) #34
  unreachable

bb.z:                                             ; preds = %bb.x
  %.not55.i = icmp eq i64 %i.cl, %i.cm
  br i1 %.not55.i, label %js_free.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.co = add i64 %i.cm, -1                       ; 2 uses
  %i.cp = inttoptr i64 %i.co to ptr               ; 3 uses
  %.not.i60.i = icmp eq i64 %i.co, 0
  br i1 %.not.i60.i, label %js_free.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.val.i.i = load i64, ptr %i.cp, align 8
  %i.cq = call fastcc i32 @get_mblock_size(i64 %.val.i.i) #28
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds i8, ptr %i.cp, i64 %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !44
  %i.cv = icmp eq ptr %i.cs, %i.cu
  br i1 %i.cv, label %bb.ac, label %js_free.exit.i

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.cp, ptr %i.ct, align 8, !tbaa !44
  br label %js_free.exit.i

js_free.exit.i:                                   ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z
  store i64 %i.cl, ptr %i.i, align 8, !tbaa !399
  %i.cw = and i64 %i.cl, 7
  %.not67.i = icmp eq i64 %i.cw, 1
  br i1 %.not67.i, label %bb.ad, label %js_parse_ident.exit

bb.ad:                                            ; preds = %js_free.exit.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bc, i64 96
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !42 ; 3 uses
  %i.cz = add nsw i64 %i.cl, -1                   ; 2 uses
  %i.da = inttoptr i64 %i.cz to ptr               ; 2 uses
  %.not57.i = icmp ugt ptr %i.cy, %i.da
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 760
  %.not58.i = icmp ult ptr %i.db, %i.da
  %or.cond.i = select i1 %.not57.i, i1 true, i1 %.not58.i
  br i1 %or.cond.i, label %js_parse_ident.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dc = ptrtoaddr ptr %i.cy to i64
  %i.dd = sub i64 %i.cz, %i.dc
  %i.de = lshr exact i64 %i.dd, 3
  %i.df = trunc i64 %i.de to i32
  %i.dg = add i32 %i.df, 161
  store i32 %i.dg, ptr %i.h, align 8, !tbaa !398
  br label %js_parse_ident.exit

js_parse_ident.exit:                              ; preds = %js_free.exit.i, %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  %i.dh = load ptr, ptr %i.j, align 8, !tbaa !114 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.1.in.i
  br label %bb.ce

bb.af:                                            ; preds = %.backedge
  %i.dj = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 1
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !51
  %i.dl = add i8 %i.dk, -58
  %i.dm = icmp ult i8 %i.dl, -10
  br i1 %i.dm, label %bb.cd, label %.loopexit

bb.ag:                                            ; preds = %.backedge
  %i.dn = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 1
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !51
  %i.dp = add i8 %i.do, -58
  %i.dq = icmp ult i8 %i.dp, -10
  br i1 %i.dq, label %.loopexit, label %bb.aj

.loopexit:                                        ; preds = %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %bb.ag, %bb.af
  %i.dr = load ptr, ptr %0, align 8, !tbaa !109
  %i.ds = tail call fastcc ptr @js_malloc(ptr noundef %i.dr, i32 noundef 224, i32 noundef 6) #32, !inline_history !175 ; 7 uses
  %.not.i87 = icmp eq ptr %i.ds, null
  br i1 %.not.i87, label %bb.ah, label %js_alloc_byte_array.exit

js_alloc_byte_array.exit:                         ; preds = %.loopexit
  %i.dt = load i64, ptr %i.ds, align 8
  %i.du = and i64 %i.dt, 15
  %i.dv = or disjoint i64 %i.du, 3456
  store i64 %i.dv, ptr %i.ds, align 8
  %i.dw = load ptr, ptr %i.j, align 8, !tbaa !114
  %i.dx = and i64 %i.q, 4294967295
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dx ; 2 uses
  store ptr %i.dy, ptr %i.b, align 8, !tbaa !44
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.ea = call double @js_atod(ptr noundef %i.dy, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 10, ptr noundef nonnull %i.dz) #31 ; 2 uses
  %i.eb = load ptr, ptr %0, align 8, !tbaa !109
  %.val.i = load i64, ptr %i.ds, align 8
  %i.ec = call fastcc i32 @get_mblock_size(i64 %.val.i) #28
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds i8, ptr %i.ds, i64 %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !44
  %i.eh = icmp eq ptr %i.ee, %i.eg
  br i1 %i.eh, label %bb.ai, label %js_free.exit

bb.ah:                                            ; preds = %.loopexit
  tail call void (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.218) #34
  unreachable

bb.ai:                                            ; preds = %js_alloc_byte_array.exit
  store ptr %i.ds, ptr %i.ef, align 8, !tbaa !44
  br label %js_free.exit

js_free.exit:                                     ; preds = %js_alloc_byte_array.exit, %bb.ai
  %i.ei = fcmp uno double %i.ea, 0.000000e+00
  br i1 %i.ei, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %js_free.exit, %bb.ag
  call void (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.159) #34
  unreachable

bb.ak:                                            ; preds = %js_free.exit
  store i32 128, ptr %i.h, align 8, !tbaa !119
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ea, ptr %i.ej, align 8, !tbaa !51
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !44
  %.pre317 = load ptr, ptr %i.j, align 8, !tbaa !114
  br label %bb.ce

bb.al:                                            ; preds = %.backedge
  %i.ek = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 1
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !51
  switch i8 %i.el, label %bb.cd [
    i8 61, label %bb.am
    i8 42, label %bb.an
  ]

bb.am:                                            ; preds = %bb.al
  %i.em = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 2
  store i32 132, ptr %i.h, align 8, !tbaa !119
  br label %bb.ce

bb.an:                                            ; preds = %bb.al
  %i.en = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 2 ; 2 uses
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !51
  %i.ep = icmp eq i8 %i.eo, 61
  br i1 %i.ep, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.eq = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 3
  store i32 143, ptr %i.h, align 8, !tbaa !119
  br label %bb.ce

bb.ap:                                            ; preds = %bb.an
  store i32 159, ptr %i.h, align 8, !tbaa !119
  br label %bb.ce

bb.aq:                                            ; preds = %.backedge
  %i.er = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 1
  %i.es = load i8, ptr %i.er, align 1, !tbaa !51
  %i.et = icmp eq i8 %i.es, 61
  br i1 %i.et, label %bb.ar, label %bb.cd

bb.ar:                                            ; preds = %bb.aq
  %i.eu = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 2
  store i32 134, ptr %i.h, align 8, !tbaa !119
  br label %bb.ce

bb.as:                                            ; preds = %.backedge
  %i.ev = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 1
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !51
  switch i8 %i.ew, label %bb.cd [
    i8 61, label %bb.at
    i8 43, label %bb.au
  ]

bb.at:                                            ; preds = %bb.as
  %i.ex = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 2
  store i32 135, ptr %i.h, align 8, !tbaa !119
  br label %bb.ce

bb.au:                                            ; preds = %bb.as
  %i.ey = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 2
  store i32 145, ptr %i.h, align 8, !tbaa !119
  br label %bb.ce

bb.av:                                            ; preds = %.backedge
  %i.ez = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 1
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !51
  switch i8 %i.fa, label %bb.cd [
    i8 61, label %bb.aw
    i8 45, label %bb.ax
  ]

bb.aw:                                            ; preds = %bb.av
  %i.fb = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 2
  store i32 136, ptr %i.h, align 8, !tbaa !119
  br label %bb.ce

bb.ax:                                            ; preds = %bb.av
  %i.fc = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 2
  store i32 144, ptr %i.h, align 8, !tbaa !119
  br label %bb.ce

bb.ay:                                            ; preds = %.backedge
  %i.fd = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 1
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !51
  switch i8 %i.fe, label %bb.cd [
    i8 61, label %bb.az
    i8 60, label %bb.ba
  ]

bb.az:                                            ; preds = %bb.ay
  %i.ff = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 2
  store i32 150, ptr %i.h, align 8, !tbaa !119
  br label %bb.ce

bb.ba:                                            ; preds = %bb.ay
  %i.fg = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 2 ; 2 uses
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !51
  %i.fi = icmp eq i8 %i.fh, 61
  br i1 %i.fi, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.fj = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 3
  store i32 137, ptr %i.h, align 8, !tbaa !119
  br label %bb.ce

bb.bc:                                            ; preds = %bb.ba
  store i32 146, ptr %i.h, align 8, !tbaa !119
  br label %bb.ce

bb.bd:                                            ; preds = %.backedge
  %i.fk = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 1
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !51
  switch i8 %i.fl, label %bb.cd [
    i8 61, label %bb.be
    i8 62, label %bb.bf
  ]

bb.be:                                            ; preds = %bb.bd
  %i.fm = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 2
  store i32 152, ptr %i.h, align 8, !tbaa !119
  br label %bb.ce

bb.bf:                                            ; preds = %bb.bd
  %i.fn = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 2 ; 2 uses
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !51
  switch i8 %i.fo, label %bb.bk [
    i8 62, label %bb.bg
    i8 61, label %bb.bj
  ]

bb.bg:                                            ; preds = %bb.bf
  %i.fp = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 3 ; 2 uses
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !51
  %i.fr = icmp eq i8 %i.fq, 61
  br i1 %i.fr, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.fs = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 4
  store i32 139, ptr %i.h, align 8, !tbaa !119
  br label %bb.ce

bb.bi:                                            ; preds = %bb.bg
  store i32 148, ptr %i.h, align 8, !tbaa !119
  br label %bb.ce

bb.bj:                                            ; preds = %bb.bf
  %i.ft = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 3
  store i32 138, ptr %i.h, align 8, !tbaa !119
  br label %bb.ce

bb.bk:                                            ; preds = %bb.bf
  store i32 147, ptr %i.h, align 8, !tbaa !119
  br label %bb.ce

bb.bl:                                            ; preds = %.backedge
  %i.fu = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 1
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !51
  %i.fw = icmp eq i8 %i.fv, 61
  br i1 %i.fw, label %bb.bm, label %bb.cd

bb.bm:                                            ; preds = %bb.bl
  %i.fx = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 2 ; 2 uses
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !51
  %i.fz = icmp eq i8 %i.fy, 61
  br i1 %i.fz, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.ga = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 3
  store i32 154, ptr %i.h, align 8, !tbaa !119
  br label %bb.ce

bb.bo:                                            ; preds = %bb.bm
  store i32 153, ptr %i.h, align 8, !tbaa !119
  br label %bb.ce

bb.bp:                                            ; preds = %.backedge
  %i.gb = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 1
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !51
  %i.gd = icmp eq i8 %i.gc, 61
  br i1 %i.gd, label %bb.bq, label %bb.cd

bb.bq:                                            ; preds = %bb.bp
  %i.ge = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 2 ; 2 uses
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !51
  %i.gg = icmp eq i8 %i.gf, 61
  br i1 %i.gg, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.gh = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 3
  store i32 156, ptr %i.h, align 8, !tbaa !119
  br label %bb.ce

bb.bs:                                            ; preds = %bb.bq
  store i32 155, ptr %i.h, align 8, !tbaa !119
  br label %bb.ce

bb.bt:                                            ; preds = %.backedge
  %i.gi = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 1
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !51
  switch i8 %i.gj, label %bb.cd [
    i8 61, label %bb.bu
    i8 38, label %bb.bv
  ]

bb.bu:                                            ; preds = %bb.bt
  %i.gk = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 2
  store i32 140, ptr %i.h, align 8, !tbaa !119
  br label %bb.ce

bb.bv:                                            ; preds = %bb.bt
  %i.gl = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 2
  store i32 157, ptr %i.h, align 8, !tbaa !119
  br label %bb.ce

bb.bw:                                            ; preds = %.backedge
  %i.gm = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 1
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !51
  %i.go = icmp eq i8 %i.gn, 61
  br i1 %i.go, label %bb.bx, label %bb.cd

bb.bx:                                            ; preds = %bb.bw
  %i.gp = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 2
  store i32 141, ptr %i.h, align 8, !tbaa !119
  br label %bb.ce

bb.by:                                            ; preds = %.backedge
  %i.gq = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 1
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !51
  switch i8 %i.gr, label %bb.cd [
    i8 61, label %bb.bz
    i8 124, label %bb.ca
  ]

bb.bz:                                            ; preds = %bb.by
  %i.gs = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 2
  store i32 142, ptr %i.h, align 8, !tbaa !119
  br label %bb.ce

bb.ca:                                            ; preds = %bb.by
  %i.gt = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 2
  store i32 158, ptr %i.h, align 8, !tbaa !119
  br label %bb.ce

bb.cb:                                            ; preds = %.backedge
  %i.gu = icmp slt i8 %i.s, 0
  br i1 %i.gu, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  tail call void (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.156) #34
  unreachable

bb.cd:                                            ; preds = %bb.by, %bb.bt, %bb.bd, %bb.ay, %bb.av, %bb.as, %bb.al, %bb.cb, %bb.bw, %bb.bp, %bb.bl, %bb.aq, %bb.af
  %i.gv = zext nneg i8 %i.s to i32
  store i32 %i.gv, ptr %i.h, align 8, !tbaa !119
  %i.gw = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 1
  br label %bb.ce

bb.ce:                                            ; preds = %bb.bz, %bb.ca, %bb.bu, %bb.bv, %bb.bs, %bb.br, %bb.bo, %bb.bn, %bb.be, %bb.bi, %bb.bh, %bb.bk, %bb.bj, %bb.az, %bb.bb, %bb.bc, %bb.aw, %bb.ax, %bb.at, %bb.au, %bb.am, %bb.ao, %bb.ap, %bb.q, %bb.t, %bb.s, %bb.cd, %bb.bx, %bb.ar, %bb.ak, %js_parse_ident.exit, %bb.c, %bb.b
  %i.gx = phi ptr [ %i.k, %bb.bz ], [ %i.k, %bb.ca ], [ %i.k, %bb.bu ], [ %i.k, %bb.bv ], [ %i.k, %bb.bs ], [ %i.k, %bb.br ], [ %i.k, %bb.bo ], [ %i.k, %bb.bn ], [ %i.k, %bb.be ], [ %i.k, %bb.bi ], [ %i.k, %bb.bh ], [ %i.k, %bb.bk ], [ %i.k, %bb.bj ], [ %i.k, %bb.az ], [ %i.k, %bb.bb ], [ %i.k, %bb.bc ], [ %i.k, %bb.aw ], [ %i.k, %bb.ax ], [ %i.k, %bb.at ], [ %i.k, %bb.au ], [ %i.k, %bb.am ], [ %i.k, %bb.ao ], [ %i.k, %bb.ap ], [ %i.aw, %bb.q ], [ %i.k, %bb.t ], [ %i.k, %bb.s ], [ %i.k, %bb.cd ], [ %i.k, %bb.bx ], [ %i.k, %bb.ar ], [ %.pre317, %bb.ak ], [ %i.dh, %js_parse_ident.exit ], [ %i.z, %bb.c ], [ %i.k, %bb.b ]
  %i.gy = phi ptr [ %i.gs, %bb.bz ], [ %i.gt, %bb.ca ], [ %i.gk, %bb.bu ], [ %i.gl, %bb.bv ], [ %i.ge, %bb.bs ], [ %i.gh, %bb.br ], [ %i.fx, %bb.bo ], [ %i.ga, %bb.bn ], [ %i.fm, %bb.be ], [ %i.fp, %bb.bi ], [ %i.fs, %bb.bh ], [ %i.fn, %bb.bk ], [ %i.ft, %bb.bj ], [ %i.ff, %bb.az ], [ %i.fj, %bb.bb ], [ %i.fg, %bb.bc ], [ %i.fb, %bb.aw ], [ %i.fc, %bb.ax ], [ %i.ex, %bb.at ], [ %i.ey, %bb.au ], [ %i.em, %bb.am ], [ %i.eq, %bb.ao ], [ %i.en, %bb.ap ], [ %i.az, %bb.q ], [ %i.aq, %bb.t ], [ %i.bb, %bb.s ], [ %i.gw, %bb.cd ], [ %i.gp, %bb.bx ], [ %i.eu, %bb.ar ], [ %.pre, %bb.ak ], [ %i.di, %js_parse_ident.exit ], [ %i.ac, %bb.c ], [ %storemerge86233, %bb.b ]
  %i.gz = ptrtoaddr ptr %i.gy to i64
  %i.ha = ptrtoaddr ptr %i.gx to i64
  %i.hb = sub i64 %i.gz, %i.ha
  %i.hc = trunc i64 %i.hb to i32
  store i32 %i.hc, ptr %i.c, align 8, !tbaa !116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @emit_op_pos(ptr noundef initializes((92, 104)) %0, i8 noundef zeroext %1, i32 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !128
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %i.b, ptr %i.c, align 4, !tbaa !132
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !126  ; 5 uses
  %i.h = load <2 x i32>, ptr %i.d, align 8, !tbaa !45
  store <2 x i32> %i.h, ptr %i.e, align 8, !tbaa !45
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !114  ; 3 uses
  %.not.i.i = icmp slt i32 %2, %i.g
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = sext i32 %i.g to i64
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 %i.k
  %i.m = sub nsw i32 %2, %i.g
  %i.n = zext nneg i32 %i.m to i64
  %.not.i.i.i = icmp eq i32 %2, %i.g
  br i1 %.not.i.i.i, label %get_line_col_delta.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.019.i.i.i = phi i64 [ %i.t, %.lr.ph.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %.01318.i.i.i = phi i32 [ %.1.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.b ]
  %.01417.i.i.i = phi i32 [ %.115.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.019.i.i.i
  %i.p = load i8, ptr %i.o, align 1, !tbaa !51    ; 2 uses
  %i.q = icmp eq i8 %i.p, 10                      ; 2 uses
  %or.cond.i.i.i = icmp sgt i8 %i.p, -65
  %i.r = zext i1 %or.cond.i.i.i to i32
  %spec.select.i.i.i = add nsw i32 %.01318.i.i.i, %i.r
  %i.s = zext i1 %i.q to i32
  %.115.i.i.i = add nuw nsw i32 %.01417.i.i.i, %i.s ; 2 uses
  %.1.i.i.i = select i1 %i.q, i32 0, i32 %spec.select.i.i.i ; 2 uses
  %i.t = add nuw nsw i64 %.019.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.t, %i.n
  br i1 %exitcond.not.i.i.i, label %get_line_col_delta.exit.i, label %.lr.ph.i.i.i, !llvm.loop !12

bb.c:                                             ; preds = %bb.a
  %i.u = sext i32 %2 to i64
  %i.v = getelementptr inbounds i8, ptr %i.j, i64 %i.u
  %i.w = sub nsw i32 %i.g, %2
  %i.x = zext nneg i32 %i.w to i64
  br label %.lr.ph.i31.i.i

.lr.ph.i31.i.i:                                   ; preds = %.lr.ph.i31.i.i, %bb.c
  %.019.i32.i.i = phi i64 [ %i.ad, %.lr.ph.i31.i.i ], [ 0, %bb.c ] ; 2 uses
  %.01318.i33.i.i = phi i32 [ %.1.i38.i.i, %.lr.ph.i31.i.i ], [ 0, %bb.c ]
  %.01417.i34.i.i = phi i32 [ %.115.i37.i.i, %.lr.ph.i31.i.i ], [ 0, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %.019.i32.i.i
  %i.z = load i8, ptr %i.y, align 1, !tbaa !51    ; 2 uses
  %i.aa = icmp eq i8 %i.z, 10                     ; 2 uses
  %or.cond.i35.i.i = icmp sgt i8 %i.z, -65
  %i.ab = zext i1 %or.cond.i35.i.i to i32
  %spec.select.i36.i.i = add nsw i32 %.01318.i33.i.i, %i.ab
  %i.ac = zext i1 %i.aa to i32
  %.115.i37.i.i = add nuw nsw i32 %.01417.i34.i.i, %i.ac ; 3 uses
  %.1.i38.i.i = select i1 %i.aa, i32 0, i32 %spec.select.i36.i.i ; 2 uses
  %i.ad = add nuw i64 %.019.i32.i.i, 1            ; 2 uses
  %exitcond.not.i39.i.i = icmp eq i64 %i.ad, %i.x
  br i1 %exitcond.not.i39.i.i, label %get_line_col.exit42.i.i, label %.lr.ph.i31.i.i, !llvm.loop !12

get_line_col.exit42.i.i:                          ; preds = %.lr.ph.i31.i.i
  %i.ae = sub nsw i32 0, %.115.i37.i.i            ; 3 uses
  %i.af = sub nsw i32 0, %.1.i38.i.i
  %.not29.i.i = icmp eq i32 %.115.i37.i.i, 0
  br i1 %.not29.i.i, label %get_line_col_delta.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %get_line_col.exit42.i.i
  %i.ag = icmp sgt i32 %2, 0
  br i1 %i.ag, label %.lr.ph.preheader.i.i, label %get_line_col_delta.exit.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %i.ah = zext nneg i32 %2 to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.ah, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.d ] ; 2 uses
  %.04551.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %spec.select.i.i, %bb.d ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.next.i.i
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !51  ; 2 uses
  %i.ak = icmp eq i8 %i.aj, 10
  br i1 %i.ak, label %get_line_col_delta.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %or.cond.i.i = icmp sgt i8 %i.aj, -65
  %i.al = zext i1 %or.cond.i.i to i32
  %spec.select.i.i = add nuw nsw i32 %.04551.i.i, %i.al ; 2 uses
  %i.am = icmp samesign ugt i64 %indvars.iv.i.i, 1
  br i1 %i.am, label %.lr.ph.i.i, label %get_line_col_delta.exit.i, !llvm.loop !400

get_line_col_delta.exit.i:                        ; preds = %.lr.ph.i.i.i, %bb.d, %.lr.ph.i.i, %.preheader.i.i, %get_line_col.exit42.i.i, %bb.b
  %.2.i.i = phi i32 [ %i.af, %get_line_col.exit42.i.i ], [ 0, %bb.b ], [ %.04551.i.i, %.lr.ph.i.i ], [ 0, %.preheader.i.i ], [ %spec.select.i.i, %bb.d ], [ %.1.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %.022.i.i = phi i32 [ 0, %get_line_col.exit42.i.i ], [ 0, %bb.b ], [ %i.ae, %bb.d ], [ %i.ae, %.preheader.i.i ], [ %i.ae, %.lr.ph.i.i ], [ %.115.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.an = shl i32 %.022.i.i, 1
  %.neg.i.i = ashr i32 %.022.i.i, 31
  %i.ao = xor i32 %i.an, %.neg.i.i
  tail call fastcc void @put_ugolomb(ptr noundef %0, i32 noundef %i.ao) #28
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = and i64 %i.aq, 1095216660480
  %.not.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i, label %emit_pc2line.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %get_line_col_delta.exit.i
  %i.as = icmp eq i32 %.022.i.i, 0
  %i.at = shl i32 %.2.i.i, 1
  %.neg.i10.i = ashr i32 %.2.i.i, 31
  %i.au = xor i32 %i.at, %.neg.i10.i
  %.sink.i = select i1 %i.as, i32 %i.au, i32 %.2.i.i
  tail call fastcc void @put_ugolomb(ptr noundef nonnull %0, i32 noundef %.sink.i) #28
  br label %emit_pc2line.exit

emit_pc2line.exit:                                ; preds = %get_line_col_delta.exit.i, %.sink.split.i
  store i32 %2, ptr %i.f, align 4, !tbaa !126
  tail call fastcc void @emit_claim_size(ptr noundef nonnull %0, i32 noundef 1) #28
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !121
  %i.ax = add i64 %i.aw, -1
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i32, ptr %i.a, align 8, !tbaa !128 ; 2 uses
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.a, align 8, !tbaa !128
  %i.bc = zext i32 %i.ba to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bc
  store i8 %1, ptr %i.bd, align 1, !tbaa !51
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @put_ugolomb(ptr noundef %0, i32 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = add i32 %1, 1                            ; 2 uses
  %i.b = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.a, i1 true) ; 3 uses
  %.not = icmp eq i32 %i.b, 31
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = xor i32 %i.b, 31
  tail call fastcc void @pc2line_put_bits(ptr noundef %0, i32 noundef %i.c, i32 noundef 0) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = sub nuw nsw i32 32, %i.b
  tail call fastcc void @pc2line_put_bits(ptr noundef %0, i32 noundef %i.d, i32 noundef %i.a) #28
  ret void
}

; Function Attrs: nounwind optsize uwtable
end_hunk_0
