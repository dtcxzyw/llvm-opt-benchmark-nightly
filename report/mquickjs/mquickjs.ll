Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mquickjs/original/mquickjs?download=true
inline.NumInlined: 1970
inline.NumDeleted: 206
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@JS_PrintValueF:bb.a
  call void (ptr, ptr, ...) @js_printf(ptr noundef readonly %0, ptr noundef nonnull @.str.89) #28, !inline_history !228
  br i1 %.not120.i, label %bb.bn, label %bb.bq

bb.bn:                                            ; preds = %bb.bm
  %i.ho = getelementptr i8, ptr %gep.i, i64 40
  %i.hp = load i32, ptr %i.ho, align 8
  %i.hq = icmp ugt i32 %i.hp, -1073741825
  br i1 %i.hq, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.hr = getelementptr i8, ptr %gep.i, i64 32
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !79
  %i.ht = trunc i64 %i.hs to i32
  %i.hu = ashr i32 %i.ht, 1                       ; 3 uses
  %i.hv = icmp sgt i32 %i.hu, -1
  br i1 %i.hv, label %get_special_prop.exit.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hw = load ptr, ptr %i.hi, align 8, !tbaa !42
  %i.hx = xor i32 %i.hu, -1
  br label %get_special_prop.exit.i

get_special_prop.exit.i:                          ; preds = %bb.bp, %bb.bo
  %.sink9.i.i = phi i32 [ %i.hx, %bb.bp ], [ %i.hu, %bb.bo ]
  %.sink.i.i = phi ptr [ %i.hw, %bb.bp ], [ %i.hj, %bb.bo ]
  %i.hy = zext nneg i32 %.sink9.i.i to i64
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i, i64 %i.hy
  br label %bb.br

bb.bq:                                            ; preds = %bb.bn, %bb.bm
  %i.ia = getelementptr i8, ptr %gep.i, i64 32
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %get_special_prop.exit.i
  %.sink.in.i = phi ptr [ %i.ia, %bb.bq ], [ %i.hz, %get_special_prop.exit.i ]
  %.sink.i = load i64, ptr %.sink.in.i, align 8, !tbaa !46
  call void @JS_PrintValueF(ptr noundef readonly %0, i64 noundef %.sink.i, i32 noundef 0) #28, !inline_history !228
  %i.ib = add nsw i32 %.0106142.i, 1
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bj
  %.1107.i = phi i32 [ %i.ib, %bb.br ], [ %.0106142.i, %bb.bj ] ; 2 uses
  %.3.i = phi i32 [ 0, %bb.br ], [ %.2143.i, %bb.bj ]
  %indvars.iv.next152.i = add nuw nsw i64 %indvars.iv151.i, 1
  %i.ic = icmp slt i32 %.1107.i, %i.gd
  br i1 %i.ic, label %bb.bj, label %._crit_edge.i, !llvm.loop !235

._crit_edge.i:                                    ; preds = %bb.bs, %.loopexit.i
  %i.id = load i64, ptr %i.ag, align 8
  %i.ie = and i64 %i.id, 4080
  %i.if = icmp eq i64 %i.ie, 16
  %i.ig = select i1 %i.if, i32 93, i32 125
  call void (ptr, ptr, ...) @js_printf(ptr noundef readonly %0, ptr noundef nonnull @.str.142, i32 noundef %i.ig) #28, !inline_history !228
  br label %common.ret

bb.bt:                                            ; preds = %bb.p
  %i.ih = lshr i64 %i.ah, 4
  %trunc137.i = trunc i64 %i.ih to i8
  %switch.tableidx = add i8 %trunc137.i, -1       ; 2 uses
  %i.ii = icmp ult i8 %switch.tableidx, 9
  br i1 %i.ii, label %switch.lookup, label %bb.bu

switch.lookup:                                    ; preds = %bb.bt
  %i.ij = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.js_object_toString.50, i64 %i.ij
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.84, %bb.bt ]
  tail call void (ptr, ptr, ...) @js_printf(ptr noundef readonly %0, ptr noundef nonnull @.str.87, ptr noundef nonnull %.0.i) #28, !inline_history !228
  br label %common.ret

bb.bv:                                            ; preds = %bb.n
  %i.ik = and i64 %i.ah, 16
  %.not67 = icmp eq i64 %i.ik, 0
  %i.il = select i1 %.not67, i32 34, i32 39
  %i.im = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.in = lshr i64 %i.ah, 7
  tail call fastcc void @dump_string(ptr noundef %0, i32 noundef %i.il, ptr noundef nonnull %i.im, i64 noundef %i.in, i32 noundef %2) #28
  br label %common.ret

bb.bw:                                            ; preds = %bb.n
  %i.io = lshr i64 %i.ah, 4                       ; 2 uses
  %i.ip = trunc i64 %i.io to i32
  tail call void (ptr, ptr, ...) @js_printf(ptr noundef readonly %0, ptr noundef nonnull @.str.140) #28, !inline_history !236
  %i.iq = icmp sgt i32 %i.ip, 0
  br i1 %i.iq, label %.lr.ph.i71, label %js_dump_array.exit

.lr.ph.i71:                                       ; preds = %bb.bw
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %wide.trip.count.i = and i64 %i.io, 2147483647
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bz, %.lr.ph.i71
  %indvars.iv.i72 = phi i64 [ 0, %.lr.ph.i71 ], [ %indvars.iv.next.i74, %bb.bz ] ; 3 uses
  %.not.i73 = icmp eq i64 %indvars.iv.i72, 0
  br i1 %.not.i73, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  tail call void (ptr, ptr, ...) @js_printf(ptr noundef readonly %0, ptr noundef nonnull @.str.137) #28, !inline_history !236
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv.i72
  %i.it = load i64, ptr %i.is, align 8, !tbaa !46
  tail call void @JS_PrintValueF(ptr noundef readonly %0, i64 noundef %i.it, i32 noundef 0) #28, !inline_history !237
  %indvars.iv.next.i74 = add nuw nsw i64 %indvars.iv.i72, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i74, %wide.trip.count.i
  br i1 %exitcond.not.i, label %js_dump_array.exit, label %bb.bx, !llvm.loop !238

js_dump_array.exit:                               ; preds = %bb.bz, %bb.bw
  tail call void (ptr, ptr, ...) @js_printf(ptr noundef readonly %0, ptr noundef nonnull @.str.147) #28, !inline_history !236
  br label %common.ret

bb.ca:                                            ; preds = %bb.n
  %i.iu = lshr i64 %i.ah, 4
  tail call void (ptr, ptr, ...) @js_printf(ptr noundef %0, ptr noundef nonnull @.str.26, i64 noundef %i.iu) #28
  br label %common.ret

bb.cb:                                            ; preds = %bb.n
  tail call void (ptr, ptr, ...) @js_printf(ptr noundef %0, ptr noundef nonnull @.str.27) #28
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !105
  tail call void @JS_PrintValueF(ptr noundef %0, i64 noundef %i.iw, i32 noundef 2) #28
  tail call void (ptr, ptr, ...) @js_printf(ptr noundef %0, ptr noundef nonnull @.str.24) #28
  br label %common.ret

bb.cc:                                            ; preds = %bb.n
  tail call void (ptr, ptr, ...) @js_printf(ptr noundef %0, ptr noundef nonnull @.str.28) #28
  %i.ix = load i64, ptr %i.ag, align 8
  %i.iy = and i64 %i.ix, 16
  %.not66 = icmp eq i64 %i.iy, 0
  br i1 %.not66, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cc
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !51
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.sink.in = phi ptr [ %i.jb, %bb.ce ], [ %i.iz, %bb.cd ]
  %.sink = load i64, ptr %.sink.in, align 8, !tbaa !51
  tail call void @JS_PrintValueF(ptr noundef %0, i64 noundef %.sink, i32 noundef 0) #28
  tail call void (ptr, ptr, ...) @js_printf(ptr noundef %0, ptr noundef nonnull @.str.29) #28
  br label %common.ret

default.unreachable88:                            ; preds = %bb.n
  unreachable

bb.cg:                                            ; preds = %bb.n
  tail call void (ptr, ptr, ...) @js_printf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef 0) #28
  br label %common.ret
}

; Function Attrs: nounwind optsize uwtable
define internal void @js_printf(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ...) unnamed_addr #4 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !83
  call fastcc void @js_vprintf(ptr noundef %i.b, ptr noundef %i.d, ptr noundef %1, ptr noundef %2) #28
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @js_dump_float64(ptr nofree noundef readonly captures(none) %0, double noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %2 = alloca %struct.JSDTOATempMem, align 8      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.b = call i32 @js_dtoa(ptr noundef nonnull %i.a, double noundef %1, i32 noundef 10, i32 noundef 0, i32 noundef 16, ptr noundef nonnull %2) #31 ; 0 uses
  call void (ptr, ptr, ...) @js_printf(ptr noundef %0, ptr noundef nonnull @.str.134, ptr noundef nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @dump_string(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 34, 97) %1, ptr noundef %2, i64 noundef range(i64 -2147483648, 144115188075855872) %3, i32 noundef %4) unnamed_addr #4 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #29
  %i.f = and i32 %4, 2
  %i.g = icmp ne i32 %i.f, 0
  %i.h = icmp ne i64 %3, 0
  %or.cond3 = and i1 %i.h, %i.g
  br i1 %or.cond3, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %2, align 1, !tbaa !51
  %.fr70 = freeze i8 %i.i                         ; 2 uses
  %i.j = and i8 %.fr70, -33
  %i.k = add i8 %i.j, -91
  %or.cond71 = icmp ult i8 %i.k, -26
  br i1 %or.cond71, label %switch.early.test, label %.critedge.preheader

switch.early.test:                                ; preds = %bb.b
  switch i8 %.fr70, label %.loopexit [
    i8 95, label %.critedge.preheader
    i8 36, label %.critedge.preheader
  ]

.critedge.preheader:                              ; preds = %switch.early.test, %switch.early.test, %bb.b
  %i.l = icmp ugt i64 %3, 1
  br i1 %i.l, label %.lr.ph, label %.critedge._crit_edge

.lr.ph:                                           ; preds = %.critedge.preheader, %is_ident_next.exit.thread
  %.03663 = phi i64 [ %i.s, %is_ident_next.exit.thread ], [ 1, %.critedge.preheader ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %.03663
  %i.n = load i8, ptr %i.m, align 1, !tbaa !51    ; 3 uses
  %i.o = and i8 %i.n, -33
  %i.p = add i8 %i.o, -65
  %or.cond.i53 = icmp ult i8 %i.p, 26
  br i1 %or.cond.i53, label %is_ident_next.exit.thread, label %switch.early.test.i

switch.early.test.i:                              ; preds = %.lr.ph
  switch i8 %i.n, label %is_ident_next.exit [
    i8 95, label %is_ident_next.exit.thread
    i8 36, label %is_ident_next.exit.thread
  ]

is_ident_next.exit:                               ; preds = %switch.early.test.i
  %i.q = add i8 %i.n, -58
  %i.r = icmp ult i8 %i.q, -10
  br i1 %i.r, label %.loopexit, label %is_ident_next.exit.thread

is_ident_next.exit.thread:                        ; preds = %switch.early.test.i, %switch.early.test.i, %.lr.ph, %is_ident_next.exit
  %i.s = add nuw i64 %.03663, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %3
  br i1 %exitcond.not, label %.critedge._crit_edge, label %.lr.ph, !llvm.loop !239

.critedge._crit_edge:                             ; preds = %is_ident_next.exit.thread, %.critedge.preheader
  %i.t = and i32 %4, 4
  %.not43 = icmp eq i32 %i.t, 0
  %spec.select = select i1 %.not43, i32 34, i32 %1
  br label %bb.c

.loopexit:                                        ; preds = %is_ident_next.exit, %switch.early.test, %bb.a
  %i.u = and i32 %4, 4
  %.not4356 = icmp eq i32 %i.u, 0
  %spec.select57 = select i1 %.not4356, i32 34, i32 %1 ; 2 uses
  %i.v = trunc nuw nsw i32 %spec.select57 to i8
  %i.w = getelementptr i8, ptr %0, i64 152
  %.val51 = load ptr, ptr %i.w, align 8, !tbaa !83
  %i.x = getelementptr i8, ptr %0, i64 160
  %.val52 = load ptr, ptr %i.x, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %i.v, ptr %i.d, align 1, !tbaa !51
  call void %.val51(ptr noundef %.val52, ptr noundef nonnull %i.d, i64 noundef 1) #31, !inline_history !240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.c

bb.c:                                             ; preds = %.critedge._crit_edge, %.loopexit
  %spec.select61 = phi i32 [ %spec.select57, %.loopexit ], [ %spec.select, %.critedge._crit_edge ]
  %.not4459 = phi i1 [ false, %.loopexit ], [ true, %.critedge._crit_edge ]
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph65

.lr.ph65:                                         ; preds = %bb.c
  %i.z = getelementptr i8, ptr %0, i64 152        ; 3 uses
  %i.aa = getelementptr i8, ptr %0, i64 160       ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph65, %bb.p
  %.03764 = phi ptr [ %2, %.lr.ph65 ], [ %i.am, %bb.p ] ; 4 uses
  %i.ab = load i8, ptr %.03764, align 1, !tbaa !51 ; 2 uses
  %i.ac = icmp sgt i8 %i.ab, -1
  br i1 %i.ac, label %bb.e, label %bb.f, !prof !69

bb.e:                                             ; preds = %bb.d
  store i64 1, ptr %i.e, align 8, !tbaa !46
  %i.ad = zext nneg i8 %i.ab to i32
  br label %utf8_get.exit

bb.f:                                             ; preds = %bb.d
  %i.ae = call i32 @__utf8_get(ptr noundef nonnull %.03764, ptr noundef nonnull %i.e) #31
  br label %utf8_get.exit

utf8_get.exit:                                    ; preds = %bb.e, %bb.f
  %.0.i = phi i32 [ %i.ad, %bb.e ], [ %i.ae, %bb.f ] ; 6 uses
  switch i32 %.0.i, label %bb.m [
    i32 9, label %bb.g
    i32 13, label %bb.h
    i32 10, label %bb.i
    i32 8, label %bb.j
    i32 12, label %bb.k
    i32 34, label %bb.l
    i32 92, label %bb.l
  ]

bb.g:                                             ; preds = %utf8_get.exit
  br label %bb.l

bb.h:                                             ; preds = %utf8_get.exit
  br label %bb.l

bb.i:                                             ; preds = %utf8_get.exit
  br label %bb.l

bb.j:                                             ; preds = %utf8_get.exit
  br label %bb.l

bb.k:                                             ; preds = %utf8_get.exit
  br label %bb.l

bb.l:                                             ; preds = %utf8_get.exit, %utf8_get.exit, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %.0 = phi i32 [ 116, %bb.g ], [ 114, %bb.h ], [ 110, %bb.i ], [ 98, %bb.j ], [ 102, %bb.k ], [ %.0.i, %utf8_get.exit ], [ %.0.i, %utf8_get.exit ]
  %.val49 = load ptr, ptr %i.z, align 8, !tbaa !83
  %.val50 = load ptr, ptr %i.aa, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 92, ptr %i.c, align 1, !tbaa !51
  call void %.val49(ptr noundef %.val50, ptr noundef nonnull %i.c, i64 noundef 1) #31, !inline_history !240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.af = trunc nuw nsw i32 %.0 to i8
  %.val47 = load ptr, ptr %i.z, align 8, !tbaa !83
  %.val48 = load ptr, ptr %i.aa, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.af, ptr %i.b, align 1, !tbaa !51
  call void %.val47(ptr noundef %.val48, ptr noundef nonnull %i.b, i64 noundef 1) #31, !inline_history !240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.p

bb.m:                                             ; preds = %utf8_get.exit
  %i.ag = icmp slt i32 %.0.i, 32
  %i.ah = and i32 %.0.i, 2147481600
  %or.cond = icmp eq i32 %i.ah, 55296
  %or.cond45 = or i1 %i.ag, %or.cond
  br i1 %or.cond45, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void (ptr, ptr, ...) @js_printf(ptr noundef %0, ptr noundef nonnull @.str.135, i32 noundef %.0.i) #28
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !83
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !83
  %i.ak = load i64, ptr %i.e, align 8, !tbaa !46
  call void %i.ai(ptr noundef %i.aj, ptr noundef nonnull %.03764, i64 noundef %i.ak) #31
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.l
  %i.al = load i64, ptr %i.e, align 8, !tbaa !46
  %i.am = getelementptr inbounds nuw i8, ptr %.03764, i64 %i.al ; 2 uses
  %i.an = icmp ult ptr %i.am, %i.y
  br i1 %i.an, label %bb.d, label %._crit_edge, !llvm.loop !241

._crit_edge:                                      ; preds = %bb.p, %bb.c
  br i1 %.not4459, label %bb.r, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  %i.ao = trunc nuw nsw i32 %spec.select61 to i8
  %i.ap = getelementptr i8, ptr %0, i64 152
  %.val = load ptr, ptr %i.ap, align 8, !tbaa !83
  %i.aq = getelementptr i8, ptr %0, i64 160
  %.val46 = load ptr, ptr %i.aq, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.ao, ptr %i.a, align 1, !tbaa !51
  call void %.val(ptr noundef %.val46, ptr noundef nonnull %i.a, i64 noundef 1) #31, !inline_history !240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define dso_local void @JS_PrintValue(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #4 {
bb.a:
  tail call void @JS_PrintValueF(ptr noundef %0, i64 noundef %1, i32 noundef 0) #28
  ret void
}

; Function Attrs: nounwind optsize uwtable
define dso_local void @JS_DumpMemory(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i32], align 16               ; 5 uses
  %i.b = alloca [8 x i32], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %.not = icmp eq i32 %1, 0                       ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @js_printf(ptr noundef %0, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !tbaa !45
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 32, i1 false), !tbaa !45
  %i.c = load ptr, ptr %0, align 8, !tbaa !44     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !44   ; 2 uses
  %i.f = icmp ult ptr %i.c, %i.e
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %bb.k
  %i.g = phi ptr [ %i.av, %bb.k ], [ %i.e, %bb.c ]
  %.068 = phi ptr [ %i.ax, %bb.k ], [ %i.c, %bb.c ] ; 6 uses
  %.05867 = phi i32 [ %i.t, %bb.k ], [ 0, %bb.c ]
  %i.h = load i64, ptr %.068, align 8             ; 3 uses
  %i.i = trunc i64 %i.h to i32
  %i.j = lshr i32 %i.i, 1
  %i.k = and i32 %i.j, 7                          ; 2 uses
  %i.l = tail call fastcc i32 @get_mblock_size(i64 %i.h) #28 ; 4 uses
  %i.m = zext nneg i32 %i.k to i64                ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.m ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !45
  %i.p = add i32 %i.o, %i.l
  store i32 %i.p, ptr %i.n, align 4, !tbaa !45
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.m ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !45
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 4, !tbaa !45
  %i.t = add i32 %i.l, %.05867                    ; 2 uses
  br i1 %.not, label %bb.k, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.u = load ptr, ptr %0, align 8, !tbaa !44
  %i.v = ptrtoaddr ptr %.068 to i64
  %i.w = ptrtoaddr ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = trunc i64 %i.x to i32
  %i.z = and i64 %i.h, 1
  %.not61 = icmp eq i64 %i.z, 0
  %i.aa = select i1 %.not61, i32 32, i32 42
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @js_mtag_name, i64 %i.m
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @js_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.38, i32 noundef %i.y, i32 noundef %i.aa, i32 noundef %i.l, ptr noundef %i.ac) #28
  switch i32 %i.k, label %bb.h [
    i32 0, label %bb.j
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.068, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !46 ; 2 uses
  %i.af = and i64 %i.ae, 7
  %.not.i = icmp eq i64 %i.af, 1
  br i1 %.not.i, label %bb.f, label %val_to_offset.exit

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %0, align 8, !tbaa !44
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = xor i64 %i.ah, -1
  %i.aj = add i64 %i.ae, %i.ai
  %i.ak = trunc i64 %i.aj to i32
  br label %val_to_offset.exit

val_to_offset.exit:                               ; preds = %bb.e, %bb.f
  %.0.i = phi i32 [ %i.ak, %bb.f ], [ 0, %bb.e ]
  %i.al = getelementptr inbounds nuw i8, ptr %.068, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !46 ; 2 uses
  %i.an = and i64 %i.am, 7
  %.not.i63 = icmp eq i64 %i.an, 1
  br i1 %.not.i63, label %bb.g, label %val_to_offset.exit65

end_hunk_0
begin_hunk_1_@js_parse_expr_comma:bb.a
  tail call void @abort() #27
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.k
  %.018 = phi i32 [ %2, %bb.a ], [ %i.ag, %bb.k ] ; 2 uses
  %.0 = phi i64 [ 0, %bb.a ], [ 2, %bb.k ]        ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, -280375465082881
  store i64 %i.c, ptr %i.a, align 8
  %i.d = load ptr, ptr %0, align 8, !tbaa !109    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !42
  %.not.i = icmp ugt ptr %i.f, %i.h
  br i1 %.not.i, label %js_parse_push_val.exit, label %bb.d, !prof !69

bb.d:                                             ; preds = %bb.c
  %i.i = tail call fastcc i64 @parse_stack_alloc(ptr noundef nonnull %0, i64 noundef %.0) #28
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !42
  %.pre = load ptr, ptr %0, align 8, !tbaa !109
  br label %js_parse_push_val.exit

js_parse_push_val.exit:                           ; preds = %bb.c, %bb.d
  %i.j = phi ptr [ %.pre, %bb.d ], [ %i.d, %bb.c ] ; 2 uses
  %i.k = phi ptr [ %.pre.i, %bb.d ], [ %i.f, %bb.c ]
  %.0.i = phi i64 [ %i.i, %bb.d ], [ %.0, %bb.c ]
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -8 ; 2 uses
  store ptr %i.l, ptr %i.e, align 8, !tbaa !42
  store i64 %.0.i, ptr %i.l, align 8, !tbaa !46
  %i.m = shl i32 %.018, 1
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !42   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !42
  %.not.i25 = icmp ugt ptr %i.p, %i.r
  br i1 %.not.i25, label %js_parse_push_val.exit28, label %bb.e, !prof !69

bb.e:                                             ; preds = %js_parse_push_val.exit
  %i.s = tail call fastcc i64 @parse_stack_alloc(ptr noundef nonnull %0, i64 noundef %i.n) #28
  %.pre.i26 = load ptr, ptr %i.o, align 8, !tbaa !42
  br label %js_parse_push_val.exit28

js_parse_push_val.exit28:                         ; preds = %js_parse_push_val.exit, %bb.e
  %i.t = phi ptr [ %.pre.i26, %bb.e ], [ %i.p, %js_parse_push_val.exit ]
  %.0.i27 = phi i64 [ %i.s, %bb.e ], [ %i.n, %js_parse_push_val.exit ]
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8 ; 2 uses
  store ptr %i.u, ptr %i.o, align 8, !tbaa !42
  store i64 %.0.i27, ptr %i.u, align 8, !tbaa !46
  %i.v = shl i32 %.018, 16
  %i.w = or disjoint i32 %i.v, 256
  br label %bb.o

bb.f:                                             ; preds = %bb.a
  %.val24 = load ptr, ptr %0, align 8, !tbaa !109 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val24, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !42   ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !46
  %i.ab = getelementptr inbounds i8, ptr %i.y, i64 -120
  %i.ac = getelementptr inbounds nuw i8, ptr %.val24, i64 24 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !42 ; 2 uses
  %i.ae = icmp ugt ptr %i.ab, %i.ad
  %i.af = trunc i64 %i.aa to i32                  ; 2 uses
  %i.ag = ashr i32 %i.af, 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.ah, ptr %i.x, align 8, !tbaa !42
  %i.ai = load i64, ptr %i.z, align 8, !tbaa !46
  %i.aj = getelementptr inbounds i8, ptr %i.y, i64 -112 ; 2 uses
  %i.ak = icmp ugt ptr %i.aj, %i.ad
  %or.cond = select i1 %i.ae, i1 true, i1 %i.ak, !prof !130
  br i1 %or.cond, label %js_parse_pop_val.exit.thread, label %js_parse_pop_val.exit29, !prof !130

js_parse_pop_val.exit.thread:                     ; preds = %bb.f
  store ptr %i.aj, ptr %i.ac, align 8, !tbaa !42
  br label %js_parse_pop_val.exit29

js_parse_pop_val.exit29:                          ; preds = %bb.f, %js_parse_pop_val.exit.thread
  %i.al = and i64 %i.ai, 4294967294
  %.not = icmp eq i64 %i.al, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %js_parse_pop_val.exit29
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 -1, ptr %i.am, align 4, !tbaa !132
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %js_parse_pop_val.exit29
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !119
  %.not20 = icmp eq i32 %i.ao, 44
  br i1 %.not20, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = and i64 %i.aq, 280375465082880
  %.not21 = icmp eq i64 %i.ar, 0
  br i1 %.not21, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.at = load i32, ptr %i.as, align 4, !tbaa !126
  tail call fastcc void @emit_op_pos(ptr noundef nonnull %0, i8 noundef zeroext 13, i32 noundef %i.at) #28
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call fastcc void @next_token(ptr noundef nonnull %0) #28
  br label %bb.c

bb.l:                                             ; preds = %bb.h
  %i.au = and i32 %i.af, 4
  %.not22 = icmp eq i32 %i.au, 0
  br i1 %.not22, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = and i64 %i.aw, 280375465082880
  %.not23 = icmp eq i64 %i.ax, 0
  br i1 %.not23, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !126
  tail call fastcc void @emit_op_pos(ptr noundef nonnull %0, i8 noundef zeroext 13, i32 noundef %i.az) #28
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n, %js_parse_push_val.exit28
  %.019 = phi i32 [ %i.w, %js_parse_push_val.exit28 ], [ 255, %bb.n ], [ 255, %bb.m ], [ 255, %bb.l ]
  ret i32 %.019
}

; Function Attrs: nounwind optsize uwtable
define internal range(i32 255, -65022) i32 @js_parse_assign_expr(ptr noundef %0, i32 noundef %1, i32 noundef %2) #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  switch i32 %1, label %bb.b [
    i32 254, label %bb.c
    i32 0, label %bb.n
    i32 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = shl i32 %2, 1
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !42   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42
  %.not.i = icmp ugt ptr %i.h, %i.j
  br i1 %.not.i, label %js_parse_push_val.exit, label %bb.d, !prof !69

bb.d:                                             ; preds = %bb.c
  %i.k = tail call fastcc i64 @parse_stack_alloc(ptr noundef nonnull %0, i64 noundef %i.e) #28
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !42
  br label %js_parse_push_val.exit

js_parse_push_val.exit:                           ; preds = %bb.c, %bb.d
  %i.l = phi ptr [ %.pre.i, %bb.d ], [ %i.h, %bb.c ]
  %.0.i = phi i64 [ %i.k, %bb.d ], [ %i.e, %bb.c ]
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -8 ; 2 uses
  store ptr %i.m, ptr %i.g, align 8, !tbaa !42
  store i64 %.0.i, ptr %i.m, align 8, !tbaa !46
  %i.n = shl i32 %2, 16
  %i.o = or disjoint i32 %i.n, 513
  br label %bb.r

bb.e:                                             ; preds = %bb.a
  %.val49 = load ptr, ptr %0, align 8, !tbaa !109 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val49, i64 32 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !42   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.r, ptr %i.p, align 8, !tbaa !42
  %i.s = load i64, ptr %i.q, align 8, !tbaa !46   ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.q, i64 -120 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val49, i64 24 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !42
  %i.w = icmp ugt ptr %i.t, %i.v
  br i1 %i.w, label %bb.f, label %js_parse_pop_val.exit, !prof !67

bb.f:                                             ; preds = %bb.e
  store ptr %i.t, ptr %i.u, align 8, !tbaa !42
  br label %js_parse_pop_val.exit

js_parse_pop_val.exit:                            ; preds = %bb.e, %bb.f
  %i.x = trunc i64 %i.s to i32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !119  ; 4 uses
  %i.aa = icmp eq i32 %i.z, 61
  %i.ab = add i32 %i.z, -132
  %or.cond = icmp ult i32 %i.ab, 11
  %or.cond43 = or i1 %i.aa, %or.cond
  br i1 %or.cond43, label %bb.g, label %bb.r

bb.g:                                             ; preds = %js_parse_pop_val.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !168
  tail call fastcc void @next_token(ptr noundef nonnull %0) #28
  %3 = icmp ne i32 %i.z, 61
  %i.ae = zext i1 %3 to i32
  call fastcc void @get_lvalue(ptr noundef nonnull %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, i32 noundef %i.ae) #28
  %i.af = shl nuw nsw i32 %i.z, 1
  %i.ag = zext nneg i32 %i.af to i64              ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !109   ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !42 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !42
  %.not.i50 = icmp ugt ptr %i.aj, %i.al
  br i1 %.not.i50, label %js_parse_push_val.exit53, label %bb.h, !prof !69

bb.h:                                             ; preds = %bb.g
  %i.am = tail call fastcc i64 @parse_stack_alloc(ptr noundef nonnull %0, i64 noundef %i.ag) #28
  %.pre.i51 = load ptr, ptr %i.ai, align 8, !tbaa !42
  %.pre = load ptr, ptr %0, align 8, !tbaa !109
  br label %js_parse_push_val.exit53

js_parse_push_val.exit53:                         ; preds = %bb.g, %bb.h
  %i.an = phi ptr [ %.pre, %bb.h ], [ %i.ah, %bb.g ] ; 3 uses
  %i.ao = phi ptr [ %.pre.i51, %bb.h ], [ %i.aj, %bb.g ]
  %.0.i52 = phi i64 [ %i.am, %bb.h ], [ %i.ag, %bb.g ]
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -8 ; 2 uses
  store ptr %i.ap, ptr %i.ai, align 8, !tbaa !42
  store i64 %.0.i52, ptr %i.ap, align 8, !tbaa !46
  %i.aq = load i32, ptr %i.a, align 4, !tbaa !45
  %i.ar = shl i32 %i.aq, 1
  %i.as = sext i32 %i.ar to i64                   ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !42 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !42
  %.not.i54 = icmp ugt ptr %i.au, %i.aw
  br i1 %.not.i54, label %js_parse_push_val.exit57, label %bb.i, !prof !69

bb.i:                                             ; preds = %js_parse_push_val.exit53
  %i.ax = tail call fastcc i64 @parse_stack_alloc(ptr noundef nonnull %0, i64 noundef %i.as) #28
  %.pre.i55 = load ptr, ptr %i.at, align 8, !tbaa !42
  %.pre85 = load ptr, ptr %0, align 8, !tbaa !109
  br label %js_parse_push_val.exit57

js_parse_push_val.exit57:                         ; preds = %js_parse_push_val.exit53, %bb.i
  %i.ay = phi ptr [ %.pre85, %bb.i ], [ %i.an, %js_parse_push_val.exit53 ] ; 3 uses
  %i.az = phi ptr [ %.pre.i55, %bb.i ], [ %i.au, %js_parse_push_val.exit53 ]
  %.0.i56 = phi i64 [ %i.ax, %bb.i ], [ %i.as, %js_parse_push_val.exit53 ]
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -8 ; 2 uses
  store ptr %i.ba, ptr %i.at, align 8, !tbaa !42
  store i64 %.0.i56, ptr %i.ba, align 8, !tbaa !46
  %i.bb = load i32, ptr %i.b, align 4, !tbaa !45
  %i.bc = shl i32 %i.bb, 1
  %i.bd = sext i32 %i.bc to i64                   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 32 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !42 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !42
  %.not.i58 = icmp ugt ptr %i.bf, %i.bh
  br i1 %.not.i58, label %js_parse_push_val.exit61, label %bb.j, !prof !69

bb.j:                                             ; preds = %js_parse_push_val.exit57
  %i.bi = tail call fastcc i64 @parse_stack_alloc(ptr noundef nonnull %0, i64 noundef %i.bd) #28
  %.pre.i59 = load ptr, ptr %i.be, align 8, !tbaa !42
  %.pre86 = load ptr, ptr %0, align 8, !tbaa !109
  br label %js_parse_push_val.exit61

js_parse_push_val.exit61:                         ; preds = %js_parse_push_val.exit57, %bb.j
  %i.bj = phi ptr [ %.pre86, %bb.j ], [ %i.ay, %js_parse_push_val.exit57 ] ; 3 uses
  %i.bk = phi ptr [ %.pre.i59, %bb.j ], [ %i.bf, %js_parse_push_val.exit57 ]
  %.0.i60 = phi i64 [ %i.bi, %bb.j ], [ %i.bd, %js_parse_push_val.exit57 ]
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -8 ; 2 uses
  store ptr %i.bl, ptr %i.be, align 8, !tbaa !42
  store i64 %.0.i60, ptr %i.bl, align 8, !tbaa !46
  %i.bm = shl i64 %i.s, 32
  %sext = ashr exact i64 %i.bm, 32
  %i.bn = and i64 %sext, -2                       ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 32 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !42 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !42
  %.not.i62 = icmp ugt ptr %i.bp, %i.br
  br i1 %.not.i62, label %js_parse_push_val.exit65, label %bb.k, !prof !69

bb.k:                                             ; preds = %js_parse_push_val.exit61
  %i.bs = tail call fastcc i64 @parse_stack_alloc(ptr noundef nonnull %0, i64 noundef %i.bn) #28
  %.pre.i63 = load ptr, ptr %i.bo, align 8, !tbaa !42
  %.pre87 = load ptr, ptr %0, align 8, !tbaa !109
  br label %js_parse_push_val.exit65

js_parse_push_val.exit65:                         ; preds = %js_parse_push_val.exit61, %bb.k
  %i.bt = phi ptr [ %.pre87, %bb.k ], [ %i.bj, %js_parse_push_val.exit61 ] ; 3 uses
  %i.bu = phi ptr [ %.pre.i63, %bb.k ], [ %i.bp, %js_parse_push_val.exit61 ]
  %.0.i64 = phi i64 [ %i.bs, %bb.k ], [ %i.bn, %js_parse_push_val.exit61 ]
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -8 ; 2 uses
  store ptr %i.bv, ptr %i.bo, align 8, !tbaa !42
  store i64 %.0.i64, ptr %i.bv, align 8, !tbaa !46
  %i.bw = shl i32 %i.ad, 1
  %i.bx = sext i32 %i.bw to i64                   ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 32 ; 3 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !42 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !42
  %.not.i66 = icmp ugt ptr %i.bz, %i.cb
  br i1 %.not.i66, label %js_parse_push_val.exit69, label %bb.l, !prof !69

bb.l:                                             ; preds = %js_parse_push_val.exit65
  %i.cc = tail call fastcc i64 @parse_stack_alloc(ptr noundef nonnull %0, i64 noundef %i.bx) #28
  %.pre.i67 = load ptr, ptr %i.by, align 8, !tbaa !42
  %.pre88 = load ptr, ptr %0, align 8, !tbaa !109
  br label %js_parse_push_val.exit69

js_parse_push_val.exit69:                         ; preds = %js_parse_push_val.exit65, %bb.l
  %i.cd = phi ptr [ %.pre88, %bb.l ], [ %i.bt, %js_parse_push_val.exit65 ] ; 2 uses
  %i.ce = phi ptr [ %.pre.i67, %bb.l ], [ %i.bz, %js_parse_push_val.exit65 ]
  %.0.i68 = phi i64 [ %i.cc, %bb.l ], [ %i.bx, %js_parse_push_val.exit65 ]
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -8 ; 2 uses
  store ptr %i.cf, ptr %i.by, align 8, !tbaa !42
  store i64 %.0.i68, ptr %i.cf, align 8, !tbaa !46
  %i.cg = load i32, ptr %i.c, align 4, !tbaa !45
  %i.ch = shl i32 %i.cg, 1
  %i.ci = sext i32 %i.ch to i64                   ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 32 ; 3 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !42 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !42
  %.not.i70 = icmp ugt ptr %i.ck, %i.cm
  br i1 %.not.i70, label %js_parse_push_val.exit73, label %bb.m, !prof !69

bb.m:                                             ; preds = %js_parse_push_val.exit69
  %i.cn = tail call fastcc i64 @parse_stack_alloc(ptr noundef nonnull %0, i64 noundef %i.ci) #28
  %.pre.i71 = load ptr, ptr %i.cj, align 8, !tbaa !42
  br label %js_parse_push_val.exit73

js_parse_push_val.exit73:                         ; preds = %js_parse_push_val.exit69, %bb.m
  %i.co = phi ptr [ %.pre.i71, %bb.m ], [ %i.ck, %js_parse_push_val.exit69 ]
  %.0.i72 = phi i64 [ %i.cn, %bb.m ], [ %i.ci, %js_parse_push_val.exit69 ]
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 -8 ; 2 uses
  store ptr %i.cp, ptr %i.cj, align 8, !tbaa !42
  store i64 %.0.i72, ptr %i.cp, align 8, !tbaa !46
  %i.cq = shl i32 %i.x, 15
  %i.cr = and i32 %i.cq, -196608
  %i.cs = or disjoint i32 %i.cr, 256
  br label %bb.r

bb.n:                                             ; preds = %bb.a
  %.val48 = load ptr, ptr %0, align 8, !tbaa !109 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.val48, i64 32 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !42 ; 13 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !46
  %i.cx = getelementptr inbounds i8, ptr %i.cu, i64 -120
  %i.cy = getelementptr inbounds nuw i8, ptr %.val48, i64 24 ; 4 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !42 ; 3 uses
  %i.da = icmp ugt ptr %i.cx, %i.cz
  %i.db = trunc i64 %i.cw to i32
  %i.dc = ashr i32 %i.db, 1
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.de = load i64, ptr %i.cv, align 8, !tbaa !46
  %i.df = getelementptr inbounds i8, ptr %i.cu, i64 -112 ; 3 uses
  %i.dg = icmp ugt ptr %i.df, %i.cz
  %or.cond109 = select i1 %i.da, i1 true, i1 %i.dg, !prof !130
  br i1 %or.cond109, label %js_parse_pop_val.exit74.thread, label %js_parse_pop_val.exit75, !prof !130

js_parse_pop_val.exit74.thread:                   ; preds = %bb.n
  store ptr %i.df, ptr %i.cy, align 8, !tbaa !42
  br label %js_parse_pop_val.exit75

js_parse_pop_val.exit75:                          ; preds = %bb.n, %js_parse_pop_val.exit74.thread
  %i.dh = phi ptr [ %i.cz, %bb.n ], [ %i.df, %js_parse_pop_val.exit74.thread ] ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.dj = load i64, ptr %i.dd, align 8, !tbaa !46
  %i.dk = getelementptr inbounds i8, ptr %i.cu, i64 -104
  %i.dl = icmp ugt ptr %i.dk, %i.dh
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.dn = load i64, ptr %i.di, align 8, !tbaa !46
  %i.do = getelementptr inbounds i8, ptr %i.cu, i64 -96 ; 3 uses
  %i.dp = icmp ugt ptr %i.do, %i.dh
  %or.cond110 = select i1 %i.dl, i1 true, i1 %i.dp, !prof !130
  br i1 %or.cond110, label %js_parse_pop_val.exit76.thread, label %js_parse_pop_val.exit77, !prof !130

js_parse_pop_val.exit76.thread:                   ; preds = %js_parse_pop_val.exit75
  store ptr %i.do, ptr %i.cy, align 8, !tbaa !42
  br label %js_parse_pop_val.exit77

js_parse_pop_val.exit77:                          ; preds = %js_parse_pop_val.exit75, %js_parse_pop_val.exit76.thread
  %i.dq = phi ptr [ %i.dh, %js_parse_pop_val.exit75 ], [ %i.do, %js_parse_pop_val.exit76.thread ] ; 2 uses
  %i.dr = trunc i64 %i.dn to i32
  %i.ds = ashr i32 %i.dr, 1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  %i.du = load i64, ptr %i.dm, align 8, !tbaa !46
  %i.dv = getelementptr inbounds i8, ptr %i.cu, i64 -88
  %i.dw = icmp ugt ptr %i.dv, %i.dq
  %i.dx = trunc i64 %i.du to i32
  %i.dy = ashr i32 %i.dx, 1
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  store ptr %i.dz, ptr %i.ct, align 8, !tbaa !42
  %i.ea = load i64, ptr %i.dt, align 8, !tbaa !46
  %i.eb = getelementptr inbounds i8, ptr %i.cu, i64 -80 ; 2 uses
  %i.ec = icmp ugt ptr %i.eb, %i.dq
  %or.cond111 = select i1 %i.dw, i1 true, i1 %i.ec, !prof !130
  br i1 %or.cond111, label %js_parse_pop_val.exit78.thread, label %js_parse_pop_val.exit79, !prof !130

js_parse_pop_val.exit78.thread:                   ; preds = %js_parse_pop_val.exit77
end_hunk_1
