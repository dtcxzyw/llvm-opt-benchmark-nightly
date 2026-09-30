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
  %.fr71 = freeze i8 %i.i                         ; 2 uses
  %i.j = and i8 %.fr71, -33
  %i.k = add i8 %i.j, -91
  %or.cond72 = icmp ult i8 %i.k, -26
  br i1 %or.cond72, label %switch.early.test, label %.critedge.preheader

switch.early.test:                                ; preds = %bb.b
  switch i8 %.fr71, label %.loopexit [
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
  %.not66 = icmp eq i64 %3, 0
  br i1 %.not66, label %._crit_edge, label %.lr.ph65

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
  %.not85 = icmp ne i32 %i.z, 61
  %i.ae = zext i1 %.not85 to i32
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
  %.pre86 = load ptr, ptr %0, align 8, !tbaa !109
  br label %js_parse_push_val.exit57

js_parse_push_val.exit57:                         ; preds = %js_parse_push_val.exit53, %bb.i
  %i.ay = phi ptr [ %.pre86, %bb.i ], [ %i.an, %js_parse_push_val.exit53 ] ; 3 uses
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
  %.pre87 = load ptr, ptr %0, align 8, !tbaa !109
  br label %js_parse_push_val.exit61

js_parse_push_val.exit61:                         ; preds = %js_parse_push_val.exit57, %bb.j
  %i.bj = phi ptr [ %.pre87, %bb.j ], [ %i.ay, %js_parse_push_val.exit57 ] ; 3 uses
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
  %.pre88 = load ptr, ptr %0, align 8, !tbaa !109
  br label %js_parse_push_val.exit65

js_parse_push_val.exit65:                         ; preds = %js_parse_push_val.exit61, %bb.k
  %i.bt = phi ptr [ %.pre88, %bb.k ], [ %i.bj, %js_parse_push_val.exit61 ] ; 3 uses
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
  %.pre89 = load ptr, ptr %0, align 8, !tbaa !109
  br label %js_parse_push_val.exit69

js_parse_push_val.exit69:                         ; preds = %js_parse_push_val.exit65, %bb.l
  %i.cd = phi ptr [ %.pre89, %bb.l ], [ %i.bt, %js_parse_push_val.exit65 ] ; 2 uses
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
  %or.cond110 = select i1 %i.da, i1 true, i1 %i.dg, !prof !130
  br i1 %or.cond110, label %js_parse_pop_val.exit74.thread, label %js_parse_pop_val.exit75, !prof !130

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
  %or.cond111 = select i1 %i.dl, i1 true, i1 %i.dp, !prof !130
  br i1 %or.cond111, label %js_parse_pop_val.exit76.thread, label %js_parse_pop_val.exit77, !prof !130

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
  %or.cond112 = select i1 %i.dw, i1 true, i1 %i.ec, !prof !130
  br i1 %or.cond112, label %js_parse_pop_val.exit78.thread, label %js_parse_pop_val.exit79, !prof !130

end_hunk_1
begin_hunk_2_@re_parse_alternative:bb.a
  %i.tr = add i64 %i.tq, -1
  %i.ts = inttoptr i64 %i.tr to ptr
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 8
  %i.tu = load i32, ptr %i.f, align 8, !tbaa !128 ; 2 uses
  %i.tv = add i32 %i.tu, 1
  store i32 %i.tv, ptr %i.f, align 8, !tbaa !128
  %i.tw = zext i32 %i.tu to i64
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tt, i64 %i.tw
  store i8 %i.tp, ptr %i.tx, align 1, !tbaa !51
  %i.ty = add nuw i8 %i.sw, 33
  call fastcc void @emit_claim_size(ptr noundef nonnull %0, i32 noundef 1) #28
  %i.tz = load i64, ptr %i.sx, align 8, !tbaa !121
  %i.ua = add i64 %i.tz, -1
  %i.ub = inttoptr i64 %i.ua to ptr
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 8
  %i.ud = load i32, ptr %i.f, align 8, !tbaa !128 ; 2 uses
  %i.ue = add i32 %i.ud, 1
  store i32 %i.ue, ptr %i.f, align 8, !tbaa !128
  %i.uf = zext i32 %i.ud to i64
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uc, i64 %i.uf
  store i8 %i.ty, ptr %i.ug, align 1, !tbaa !51
  br label %bb.bv

bb.bs:                                            ; preds = %bb.bq, %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.uh = icmp samesign ult i32 %.0201334, 128
  br i1 %i.uh, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.ui = trunc nuw nsw i32 %.0201334 to i8
  store i8 %i.ui, ptr %i.a, align 1, !tbaa !51
  br label %unicode_to_utf8.exit.i

bb.bu:                                            ; preds = %bb.bs
  %i.uj = call i64 @__unicode_to_utf8(ptr noundef nonnull %i.a, i32 noundef range(i32 -2147483648, 1073741824) %.0201334) #31
  br label %unicode_to_utf8.exit.i

unicode_to_utf8.exit.i:                           ; preds = %bb.bu, %bb.bt
  %.0.i.i = phi i64 [ 1, %bb.bt ], [ %i.uj, %bb.bu ] ; 3 uses
  %i.uk = trunc i64 %.0.i.i to i8
  call fastcc void @emit_claim_size(ptr noundef nonnull %0, i32 noundef 1) #28
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.um = load i64, ptr %i.ul, align 8, !tbaa !121
  %i.un = add i64 %i.um, -1
  %i.uo = inttoptr i64 %i.un to ptr
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 8
  %i.uq = load i32, ptr %i.f, align 8, !tbaa !128 ; 2 uses
  %i.ur = add i32 %i.uq, 1
  store i32 %i.ur, ptr %i.f, align 8, !tbaa !128
  %i.us = zext i32 %i.uq to i64
  %i.ut = getelementptr inbounds nuw i8, ptr %i.up, i64 %i.us
  store i8 %i.uk, ptr %i.ut, align 1, !tbaa !51
  %.not.i320 = icmp eq i64 %.0.i.i, 0
  br i1 %.not.i320, label %re_emit_char.exit, label %.lr.ph.i321

.lr.ph.i321:                                      ; preds = %unicode_to_utf8.exit.i, %.lr.ph.i321
  %.07.i = phi i64 [ %i.ve, %.lr.ph.i321 ], [ 0, %unicode_to_utf8.exit.i ] ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.a, i64 %.07.i
  %i.uv = load i8, ptr %i.uu, align 1, !tbaa !51
  call fastcc void @emit_claim_size(ptr noundef nonnull %0, i32 noundef 1) #28
  %i.uw = load i64, ptr %i.ul, align 8, !tbaa !121
  %i.ux = add i64 %i.uw, -1
  %i.uy = inttoptr i64 %i.ux to ptr
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 8
  %i.va = load i32, ptr %i.f, align 8, !tbaa !128 ; 2 uses
  %i.vb = add i32 %i.va, 1
  store i32 %i.vb, ptr %i.f, align 8, !tbaa !128
  %i.vc = zext i32 %i.va to i64
  %i.vd = getelementptr inbounds nuw i8, ptr %i.uz, i64 %i.vc
  store i8 %i.uv, ptr %i.vd, align 1, !tbaa !51
  %i.ve = add nuw nsw i64 %.07.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ve, %.0.i.i
  br i1 %exitcond.not.i, label %re_emit_char.exit, label %.lr.ph.i321, !llvm.loop !393

re_emit_char.exit:                                ; preds = %.lr.ph.i321, %unicode_to_utf8.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bn, %bb.bo, %re_emit_char.exit, %bb.br, %bb.au, %re_parse_expect.exit315, %re_parse_expect.exit288, %re_parse_expect.exit, %re_parse_char_class.exit, %bb.g
  %.0206 = phi i32 [ %i.mx, %re_parse_expect.exit315 ], [ %i.g, %bb.br ], [ %i.g, %re_emit_char.exit ], [ %i.il, %re_parse_expect.exit288 ], [ %i.g, %bb.bo ], [ %i.g, %bb.g ], [ %i.g, %bb.bn ], [ %i.g, %bb.au ], [ %i.g, %re_parse_char_class.exit ], [ %i.ei, %re_parse_expect.exit ] ; 9 uses
  %.1205 = phi i32 [ %i.nk, %re_parse_expect.exit315 ], [ %.0204, %bb.br ], [ %.0204, %re_emit_char.exit ], [ %i.iy, %re_parse_expect.exit288 ], [ %.0204, %bb.bo ], [ %.0204, %bb.g ], [ %.0204, %bb.bn ], [ %.0204, %bb.au ], [ %.0204, %re_parse_char_class.exit ], [ %i.ev, %re_parse_expect.exit ] ; 9 uses
  %.0203 = phi i32 [ %i.mq, %re_parse_expect.exit315 ], [ %i.so, %bb.br ], [ %i.so, %re_emit_char.exit ], [ %i.if, %re_parse_expect.exit288 ], [ %i.ru, %bb.bo ], [ %i.g, %bb.g ], [ %i.ru, %bb.bn ], [ %i.g, %bb.au ], [ %i.g, %re_parse_char_class.exit ], [ %i.ec, %re_parse_expect.exit ] ; 13 uses
  %.0202 = phi i32 [ %i.mk, %re_parse_expect.exit315 ], [ %i.sn, %bb.br ], [ %i.sn, %re_emit_char.exit ], [ %i.hy, %re_parse_expect.exit288 ], [ %i.rx, %bb.bo ], [ %i.ar, %bb.g ], [ %i.rx, %bb.bn ], [ %i.pb, %bb.au ], [ %i.pj, %re_parse_char_class.exit ], [ %i.dv, %re_parse_expect.exit ] ; 4 uses
  %i.vf = icmp sgt i32 %.0203, -1
  br i1 %i.vf, label %bb.bw, label %re_parse_quantifier.exit

bb.bw:                                            ; preds = %bb.bv
  %i.vg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !114 ; 5 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.vj = load i32, ptr %i.vi, align 8, !tbaa !116
  %i.vk = zext i32 %i.vj to i64
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vh, i64 %i.vk ; 5 uses
  %i.vm = load i8, ptr %i.vl, align 1, !tbaa !51
  switch i8 %i.vm, label %re_parse_quantifier.exit [
    i8 42, label %bb.bx
    i8 43, label %bb.by
    i8 63, label %bb.bz
    i8 123, label %bb.ca
  ]

bb.bx:                                            ; preds = %bb.bw
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vl, i64 1
  br label %bb.cf

bb.by:                                            ; preds = %bb.bw
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vl, i64 1
  br label %bb.cf

bb.bz:                                            ; preds = %bb.bw
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vl, i64 1
  br label %bb.cf

bb.ca:                                            ; preds = %bb.bw
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vl, i64 1 ; 2 uses
  %i.vr = load i8, ptr %i.vq, align 1, !tbaa !51  ; 2 uses
  %i.vs = add i8 %i.vr, -58
  %i.vt = icmp ult i8 %i.vs, -10
  br i1 %i.vt, label %bb.cc, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ca, %.lr.ph.i.i
  %i.vu = phi i8 [ %i.wa, %.lr.ph.i.i ], [ %i.vr, %bb.ca ]
  %.015.i.i = phi i64 [ %spec.store.select.i.i, %.lr.ph.i.i ], [ 0, %bb.ca ]
  %.01114.i.i = phi ptr [ %i.vz, %.lr.ph.i.i ], [ %i.vq, %bb.ca ] ; 2 uses
  %i.vv = mul nuw nsw i64 %.015.i.i, 10
  %i.vw = zext nneg i8 %i.vu to i64
  %i.vx = add nsw i64 %i.vw, -48
  %i.vy = add nuw nsw i64 %i.vx, %i.vv
  %spec.store.select.i.i = call i64 @llvm.umin.i64(i64 %i.vy, i64 1073741823) ; 3 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %.01114.i.i, i64 1 ; 3 uses
  %i.wa = load i8, ptr %i.vz, align 1, !tbaa !51  ; 3 uses
  %i.wb = add i8 %i.wa, -58
  %or.cond.i.i = icmp ult i8 %i.wb, -10
  br i1 %or.cond.i.i, label %parse_digits.exit.i, label %.lr.ph.i.i

parse_digits.exit.i:                              ; preds = %.lr.ph.i.i
  %i.wc = trunc nuw nsw i64 %spec.store.select.i.i to i32 ; 2 uses
  %i.wd = icmp eq i8 %i.wa, 44
  br i1 %i.wd, label %bb.cb, label %bb.cd

bb.cb:                                            ; preds = %parse_digits.exit.i
  %i.we = getelementptr inbounds nuw i8, ptr %.01114.i.i, i64 2 ; 3 uses
  %i.wf = load i8, ptr %i.we, align 1, !tbaa !51  ; 2 uses
  %i.wg = add i8 %i.wf, -58
  %i.wh = icmp ult i8 %i.wg, -10
  br i1 %i.wh, label %bb.cd, label %.lr.ph.i171.i

.lr.ph.i171.i:                                    ; preds = %bb.cb, %.lr.ph.i171.i
  %i.wi = phi i8 [ %i.wo, %.lr.ph.i171.i ], [ %i.wf, %bb.cb ]
  %.015.i172.i = phi i64 [ %spec.store.select.i174.i, %.lr.ph.i171.i ], [ 0, %bb.cb ]
  %.01114.i173.i = phi ptr [ %i.wn, %.lr.ph.i171.i ], [ %i.we, %bb.cb ]
  %i.wj = mul nuw nsw i64 %.015.i172.i, 10
  %i.wk = zext nneg i8 %i.wi to i64
  %i.wl = add nsw i64 %i.wk, -48
  %i.wm = add nuw nsw i64 %i.wl, %i.wj            ; 2 uses
  %spec.store.select.i174.i = call i64 @llvm.umin.i64(i64 %i.wm, i64 1073741823) ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %.01114.i173.i, i64 1 ; 3 uses
  %i.wo = load i8, ptr %i.wn, align 1, !tbaa !51  ; 2 uses
  %i.wp = add i8 %i.wo, -58
  %or.cond.i175.i = icmp ult i8 %i.wp, -10
  br i1 %or.cond.i175.i, label %parse_digits.exit179.i, label %.lr.ph.i171.i

parse_digits.exit179.i:                           ; preds = %.lr.ph.i171.i
  %i.wq = trunc nuw nsw i64 %spec.store.select.i174.i to i32
  %i.wr = icmp samesign ult i64 %i.wm, %spec.store.select.i.i
  br i1 %i.wr, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %parse_digits.exit179.i, %bb.ca
  call void (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.211) #34
  unreachable

bb.cd:                                            ; preds = %parse_digits.exit179.i, %bb.cb, %parse_digits.exit.i
  %.0188.i = phi ptr [ %i.we, %bb.cb ], [ %i.wn, %parse_digits.exit179.i ], [ %i.vz, %parse_digits.exit.i ]
  %.0153.i = phi i32 [ 1073741823, %bb.cb ], [ %i.wq, %parse_digits.exit179.i ], [ %i.wc, %parse_digits.exit.i ]
  %i.ws = ptrtoaddr ptr %.0188.i to i64
  %i.wt = ptrtoaddr ptr %i.vh to i64
  %i.wu = sub i64 %i.ws, %i.wt                    ; 2 uses
  %i.wv = trunc i64 %i.wu to i32                  ; 2 uses
  store i32 %i.wv, ptr %i.vi, align 8, !tbaa !116
  %i.ww = and i64 %i.wu, 4294967295
  %i.wx = getelementptr inbounds nuw i8, ptr %i.vh, i64 %i.ww
  %i.wy = load i8, ptr %i.wx, align 1, !tbaa !51
  %.not.i.i = icmp eq i8 %i.wy, 125
  br i1 %.not.i.i, label %re_parse_expect.exit.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.167, i32 noundef 125) #34
  unreachable

re_parse_expect.exit.i:                           ; preds = %bb.cd
  %i.wz = add i32 %i.wv, 1                        ; 2 uses
  store i32 %i.wz, ptr %i.vi, align 8, !tbaa !116
  %i.xa = zext i32 %i.wz to i64
  %i.xb = getelementptr inbounds nuw i8, ptr %i.vh, i64 %i.xa
  br label %bb.cf

bb.cf:                                            ; preds = %re_parse_expect.exit.i, %bb.bz, %bb.by, %bb.bx
  %.1189.i = phi ptr [ %i.vn, %bb.bx ], [ %i.vo, %bb.by ], [ %i.vp, %bb.bz ], [ %i.xb, %re_parse_expect.exit.i ] ; 2 uses
  %.0154.i = phi i32 [ 0, %bb.bx ], [ 1, %bb.by ], [ 0, %bb.bz ], [ %i.wc, %re_parse_expect.exit.i ] ; 5 uses
  %.1.i = phi i32 [ 1073741823, %bb.bx ], [ 1073741823, %bb.by ], [ 1, %bb.bz ], [ %.0153.i, %re_parse_expect.exit.i ] ; 9 uses
  %i.xc = load i8, ptr %.1189.i, align 1, !tbaa !51 ; 2 uses
  %i.xd = icmp eq i8 %i.xc, 63
  %spec.select205.idx.i = zext i1 %i.xd to i64
  %spec.select205.i = getelementptr inbounds nuw i8, ptr %.1189.i, i64 %spec.select205.idx.i
  %.not377 = icmp ne i8 %i.xc, 63                 ; 2 uses
  %spec.select206.i = zext i1 %.not377 to i32     ; 3 uses
  %i.xe = ptrtoaddr ptr %spec.select205.i to i64
  %i.xf = ptrtoaddr ptr %i.vh to i64
  %i.xg = sub i64 %i.xe, %i.xf
  %i.xh = trunc i64 %i.xg to i32
  store i32 %i.xh, ptr %i.vi, align 8, !tbaa !116
  %i.xi = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 14 uses
  %i.xj = load i64, ptr %i.xi, align 8, !tbaa !121
  %i.xk = add i64 %i.xj, -1
  %i.xl = inttoptr i64 %i.xk to ptr
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 8
  %i.xn = zext nneg i32 %.0203 to i64             ; 7 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xm, i64 %i.xn
  %i.xp = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 25 uses
  %i.xq = load i32, ptr %i.xp, align 8, !tbaa !128 ; 2 uses
  %i.xr = sub i32 %i.xq, %.0203                   ; 4 uses
  %i.xs = icmp sgt i32 %i.xr, 0
  br i1 %i.xs, label %.lr.ph.i180.i, label %.thread.i

.lr.ph.i180.i:                                    ; preds = %bb.cf, %bb.cj
  %.01822.i.i = phi i32 [ %.1.i.i, %bb.cj ], [ 1, %bb.cf ] ; 13 uses
  %.02021.i.i = phi i32 [ %i.yj, %bb.cj ], [ 0, %bb.cf ] ; 2 uses
  %i.xt = sext i32 %.02021.i.i to i64
  %i.xu = getelementptr inbounds i8, ptr %i.xo, i64 %i.xt ; 3 uses
  %i.xv = load i8, ptr %i.xu, align 1, !tbaa !51  ; 2 uses
  %i.xw = zext i8 %i.xv to i64
  %i.xx = getelementptr inbounds nuw i8, ptr @reopcode_info, i64 %i.xw
  %i.xy = load i8, ptr %i.xx, align 1, !tbaa !167
  %i.xz = zext i8 %i.xy to i32                    ; 14 uses
  switch i8 %i.xv, label %re_need_check_adv_and_capture_init.exit.i [
    i8 32, label %bb.cg
    i8 33, label %bb.ch
    i8 1, label %bb.ci
    i8 2, label %bb.ci
    i8 3, label %bb.ci
    i8 4, label %bb.ci
    i8 5, label %bb.ci
    i8 6, label %bb.ci
    i8 7, label %bb.ci
    i8 8, label %bb.ci
    i8 9, label %bb.cj
    i8 10, label %bb.cj
    i8 11, label %bb.cj
    i8 12, label %bb.cj
    i8 27, label %bb.cj
    i8 36, label %bb.cj
    i8 28, label %bb.cj
    i8 29, label %bb.cj
    i8 19, label %bb.cj
    i8 20, label %bb.cj
    i8 21, label %bb.cj
  ]

bb.cg:                                            ; preds = %.lr.ph.i180.i
  %i.ya = getelementptr i8, ptr %i.xu, i64 1
  %i.yb = load i8, ptr %i.ya, align 1, !tbaa !51
  %i.yc = zext i8 %i.yb to i32
  %i.yd = shl nuw nsw i32 %i.yc, 1
  %i.ye = add nuw nsw i32 %i.yd, %i.xz
  br label %bb.cj

bb.ch:                                            ; preds = %.lr.ph.i180.i
  %i.yf = getelementptr inbounds nuw i8, ptr %i.xu, i64 1
  %.val.i.i = load i16, ptr %i.yf, align 1, !tbaa !89
  %i.yg = zext i16 %.val.i.i to i32
  %i.yh = shl nuw nsw i32 %i.yg, 3
  %i.yi = add nuw nsw i32 %i.yh, %i.xz
  br label %bb.cj

bb.ci:                                            ; preds = %.lr.ph.i180.i, %.lr.ph.i180.i, %.lr.ph.i180.i, %.lr.ph.i180.i, %.lr.ph.i180.i, %.lr.ph.i180.i, %.lr.ph.i180.i, %.lr.ph.i180.i
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch, %bb.cg, %.lr.ph.i180.i, %.lr.ph.i180.i, %.lr.ph.i180.i, %.lr.ph.i180.i, %.lr.ph.i180.i, %.lr.ph.i180.i, %.lr.ph.i180.i, %.lr.ph.i180.i, %.lr.ph.i180.i, %.lr.ph.i180.i, %.lr.ph.i180.i
  %.019.i.i = phi i32 [ %i.ye, %bb.cg ], [ %i.yi, %bb.ch ], [ %i.xz, %bb.ci ], [ %i.xz, %.lr.ph.i180.i ], [ %i.xz, %.lr.ph.i180.i ], [ %i.xz, %.lr.ph.i180.i ], [ %i.xz, %.lr.ph.i180.i ], [ %i.xz, %.lr.ph.i180.i ], [ %i.xz, %.lr.ph.i180.i ], [ %i.xz, %.lr.ph.i180.i ], [ %i.xz, %.lr.ph.i180.i ], [ %i.xz, %.lr.ph.i180.i ], [ %i.xz, %.lr.ph.i180.i ], [ %i.xz, %.lr.ph.i180.i ]
  %.1.i.i = phi i32 [ 0, %bb.cg ], [ 0, %bb.ch ], [ 0, %bb.ci ], [ %.01822.i.i, %.lr.ph.i180.i ], [ %.01822.i.i, %.lr.ph.i180.i ], [ %.01822.i.i, %.lr.ph.i180.i ], [ %.01822.i.i, %.lr.ph.i180.i ], [ %.01822.i.i, %.lr.ph.i180.i ], [ %.01822.i.i, %.lr.ph.i180.i ], [ %.01822.i.i, %.lr.ph.i180.i ], [ %.01822.i.i, %.lr.ph.i180.i ], [ %.01822.i.i, %.lr.ph.i180.i ], [ %.01822.i.i, %.lr.ph.i180.i ], [ %.01822.i.i, %.lr.ph.i180.i ] ; 2 uses
  %i.yj = add nsw i32 %.019.i.i, %.02021.i.i      ; 2 uses
  %i.yk = icmp slt i32 %i.yj, %i.xr
  br i1 %i.yk, label %.lr.ph.i180.i, label %.thread.i, !llvm.loop !394

re_need_check_adv_and_capture_init.exit.i:        ; preds = %.lr.ph.i180.i
  %i.yl = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ym = load i8, ptr %i.yl, align 8, !tbaa !165
  %i.yn = zext i8 %i.ym to i32
  %.not161.i = icmp eq i32 %.0202, %i.yn
  br i1 %.not161.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %re_need_check_adv_and_capture_init.exit.i
  call fastcc void @emit_claim_size(ptr noundef nonnull %0, i32 noundef 3) #28
  %i.yo = load i64, ptr %i.xi, align 8, !tbaa !121
  %i.yp = add i64 %i.yo, -1
  %i.yq = inttoptr i64 %i.yp to ptr
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 8
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 %i.xn ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 3
  %i.yu = load i32, ptr %i.xp, align 8, !tbaa !128
  %i.yv = sub i32 %i.yu, %.0203
  %i.yw = zext i32 %i.yv to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.yt, ptr nonnull align 1 %i.ys, i64 %i.yw, i1 false)
  %i.yx = load i32, ptr %i.xp, align 8, !tbaa !128
  %i.yy = add i32 %i.yx, 3
  store i32 %i.yy, ptr %i.xp, align 8, !tbaa !128
  %i.yz = load i64, ptr %i.xi, align 8, !tbaa !121
  %i.za = add i64 %i.yz, -1
  %i.zb = inttoptr i64 %i.za to ptr
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 8
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 %i.xn ; 3 uses
  store i8 21, ptr %i.zd, align 1, !tbaa !51
  %i.ze = trunc i32 %.0202 to i8
  %i.zf = getelementptr inbounds nuw i8, ptr %i.zd, i64 1
  store i8 %i.ze, ptr %i.zf, align 1, !tbaa !51
  %i.zg = load i8, ptr %i.yl, align 8, !tbaa !165
  %i.zh = add i8 %i.zg, -1
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zd, i64 2
  store i8 %i.zh, ptr %i.zi, align 1, !tbaa !51
  %.pre.i323 = load i32, ptr %i.xp, align 8, !tbaa !128
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %re_need_check_adv_and_capture_init.exit.i
  %i.zj = phi i32 [ %.pre.i323, %bb.ck ], [ %i.xq, %re_need_check_adv_and_capture_init.exit.i ]
  %i.zk = icmp eq i32 %.0154.i, 0
  br i1 %i.zk, label %._crit_edge.i, label %bb.cy

._crit_edge.i:                                    ; preds = %bb.cl
  %.pre213.i = sub i32 %i.zj, %.0203
  br label %bb.co

.thread.i:                                        ; preds = %bb.cj, %bb.cf
  %.018.lcssa.i.ph.i = phi i32 [ 1, %bb.cf ], [ %.1.i.i, %bb.cj ] ; 3 uses
  %i.zl = icmp eq i32 %.0154.i, 0
  br i1 %i.zl, label %bb.cm, label %bb.cy

bb.cm:                                            ; preds = %.thread.i
  %i.zm = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.zn = load i8, ptr %i.zm, align 8, !tbaa !165
  %i.zo = zext i8 %i.zn to i32
  %.not167.i = icmp eq i32 %.0202, %i.zo
  br i1 %.not167.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call fastcc void @emit_claim_size(ptr noundef nonnull %0, i32 noundef 3) #28
  %i.zp = load i64, ptr %i.xi, align 8, !tbaa !121
  %i.zq = add i64 %i.zp, -1
  %i.zr = inttoptr i64 %i.zq to ptr
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 8
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 %i.xn ; 2 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 3
  %i.zv = load i32, ptr %i.xp, align 8, !tbaa !128
  %i.zw = sub i32 %i.zv, %.0203
  %i.zx = zext i32 %i.zw to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.zu, ptr nonnull align 1 %i.zt, i64 %i.zx, i1 false)
  %i.zy = load i32, ptr %i.xp, align 8, !tbaa !128
  %i.zz = add i32 %i.zy, 3
  store i32 %i.zz, ptr %i.xp, align 8, !tbaa !128
  %i.aaa = load i64, ptr %i.xi, align 8, !tbaa !121
  %i.aab = add i64 %i.aaa, -1
  %i.aac = inttoptr i64 %i.aab to ptr
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 8
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 %i.xn ; 3 uses
  store i8 21, ptr %i.aae, align 1, !tbaa !51
  %i.aaf = trunc i32 %.0202 to i8
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aae, i64 1
  store i8 %i.aaf, ptr %i.aag, align 1, !tbaa !51
  %i.aah = load i8, ptr %i.zm, align 8, !tbaa !165
  %i.aai = add i8 %i.aah, -1
  %i.aaj = add nuw nsw i32 %.0203, 3
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aae, i64 2
  store i8 %i.aai, ptr %i.aak, align 1, !tbaa !51
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm, %._crit_edge.i
  %.pre-phi.i = phi i32 [ %.pre213.i, %._crit_edge.i ], [ %i.xr, %bb.cn ], [ %i.xr, %bb.cm ] ; 2 uses
  %.018.lcssa.i193199203.i = phi i32 [ %.01822.i.i, %._crit_edge.i ], [ %.018.lcssa.i.ph.i, %bb.cn ], [ %.018.lcssa.i.ph.i, %bb.cm ] ; 4 uses
  %.0.i322 = phi i32 [ %.0203, %._crit_edge.i ], [ %i.aaj, %bb.cn ], [ %.0203, %bb.cm ] ; 6 uses
  %i.aal = icmp eq i32 %.1.i, 0
  br i1 %i.aal, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  store i32 %.0.i322, ptr %i.xp, align 8, !tbaa !128
  br label %re_parse_quantifier.exit

bb.cq:                                            ; preds = %bb.co
  %i.aam = icmp eq i32 %.1.i, 1073741823          ; 2 uses
  %i.aan = shl nuw nsw i32 %.018.lcssa.i193199203.i, 1 ; 3 uses
  %i.aao = zext nneg i32 %.0.i322 to i64          ; 4 uses
  %i.aap = zext i1 %.not377 to i8
  %i.aaq = or disjoint i8 %i.aap, 14              ; 2 uses
  switch i32 %.1.i, label %bb.cv [
    i32 1073741823, label %bb.cr
    i32 1, label %bb.cr
  ]

bb.cr:                                            ; preds = %bb.cq, %bb.cq
  %i.aar = add nuw nsw i32 %i.aan, 5              ; 3 uses
  call fastcc void @emit_claim_size(ptr noundef nonnull %0, i32 noundef range(i32 1, 0) %i.aar) #28
  %i.aas = load i64, ptr %i.xi, align 8, !tbaa !121
  %i.aat = add i64 %i.aas, -1
  %i.aau = inttoptr i64 %i.aat to ptr
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aau, i64 8
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 %i.aao ; 2 uses
  %i.aax = zext nneg i32 %i.aar to i64
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aaw, i64 %i.aax
  %i.aaz = load i32, ptr %i.xp, align 8, !tbaa !128
  %i.aba = sub i32 %i.aaz, %.0.i322
  %i.abb = zext i32 %i.aba to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aay, ptr nonnull align 1 %i.aaw, i64 %i.abb, i1 false)
  %i.abc = load i32, ptr %i.xp, align 8, !tbaa !128
  %i.abd = add i32 %i.abc, %i.aar
  store i32 %i.abd, ptr %i.xp, align 8, !tbaa !128
  %i.abe = load i64, ptr %i.xi, align 8, !tbaa !121
  %i.abf = add i64 %i.abe, -1
  %i.abg = inttoptr i64 %i.abf to ptr
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 8
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 %i.aao ; 4 uses
  store i8 %i.aaq, ptr %i.abi, align 1, !tbaa !51
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 1
  %i.abk = select i1 %i.aam, i32 5, i32 0
  %i.abl = shl nuw nsw i32 %.018.lcssa.i193199203.i, 2
  %i.abm = add i32 %.pre-phi.i, %i.abk
  %i.abn = add i32 %i.abm, %i.abl
  store i32 %i.abn, ptr %i.abj, align 1, !tbaa !91
  %.not169.i = icmp eq i32 %.018.lcssa.i193199203.i, 0
  br i1 %.not169.i, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abi, i64 5
  store i8 36, ptr %i.abo, align 1, !tbaa !51
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abi, i64 6
  store i8 0, ptr %i.abp, align 1, !tbaa !51
  call fastcc void @re_emit_op_u8(ptr noundef nonnull %0, i32 noundef 37, i32 noundef 0) #28
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  br i1 %i.aam, label %bb.cu, label %re_parse_quantifier.exit

bb.cu:                                            ; preds = %bb.ct
  call fastcc void @re_emit_goto(ptr noundef nonnull %0, i32 noundef 13, i32 noundef %.0.i322) #28
  br label %re_parse_quantifier.exit

bb.cv:                                            ; preds = %bb.cq
  %i.abq = add nuw nsw i32 %i.aan, 11             ; 3 uses
  call fastcc void @emit_claim_size(ptr noundef nonnull %0, i32 noundef range(i32 1, 0) %i.abq) #28
  %i.abr = load i64, ptr %i.xi, align 8, !tbaa !121
  %i.abs = add i64 %i.abr, -1
  %i.abt = inttoptr i64 %i.abs to ptr
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abt, i64 8
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abu, i64 %i.aao ; 2 uses
  %i.abw = zext nneg i32 %i.abq to i64
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abv, i64 %i.abw
  %i.aby = load i32, ptr %i.xp, align 8, !tbaa !128
  %i.abz = sub i32 %i.aby, %.0.i322
  %i.aca = zext i32 %i.abz to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.abx, ptr nonnull align 1 %i.abv, i64 %i.aca, i1 false)
  %i.acb = load i32, ptr %i.xp, align 8, !tbaa !128
  %i.acc = add i32 %i.acb, %i.abq
  store i32 %i.acc, ptr %i.xp, align 8, !tbaa !128
  %i.acd = load i64, ptr %i.xi, align 8, !tbaa !121
  %i.ace = add i64 %i.acd, -1
  %i.acf = inttoptr i64 %i.ace to ptr
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 8 ; 2 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 %i.aao ; 6 uses
  store i8 %i.aaq, ptr %i.ach, align 1, !tbaa !51
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 1
  %i.acj = add i32 %.pre-phi.i, 16
  %i.ack = add i32 %i.acj, %i.aan
  store i32 %i.ack, ptr %i.aci, align 1, !tbaa !91
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ach, i64 5
  store i8 27, ptr %i.acl, align 1, !tbaa !51
  %i.acm = getelementptr inbounds nuw i8, ptr %i.ach, i64 6
  store i8 0, ptr %i.acm, align 1, !tbaa !51
  %i.acn = getelementptr inbounds nuw i8, ptr %i.ach, i64 7
  store i32 %.1.i, ptr %i.acn, align 1, !tbaa !91
  %i.aco = add nuw nsw i32 %.0.i322, 11           ; 2 uses
  %.not168.i = icmp eq i32 %.018.lcssa.i193199203.i, 0
  br i1 %.not168.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.acp = zext nneg i32 %i.aco to i64
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acg, i64 %i.acp
  store i8 36, ptr %i.acq, align 1, !tbaa !51
  %i.acr = getelementptr inbounds nuw i8, ptr %i.ach, i64 12
  store i8 0, ptr %i.acr, align 1, !tbaa !51
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %i.acs = phi i32 [ 26, %bb.cw ], [ 24, %bb.cv ]
  %i.act = sub nuw nsw i32 %i.acs, %spec.select206.i
  call fastcc void @re_emit_goto_u8_u32(ptr noundef nonnull %0, i32 noundef %i.act, i32 noundef %.1.i, i32 noundef %i.aco) #28
  br label %re_parse_quantifier.exit

bb.cy:                                            ; preds = %.thread.i, %bb.cl
  %.018.lcssa.i193198.i = phi i32 [ %.018.lcssa.i.ph.i, %.thread.i ], [ %.01822.i.i, %bb.cl ] ; 2 uses
  %i.acu = icmp ne i32 %.0154.i, 1
  %i.acv = icmp ne i32 %.1.i, 1073741823
  %or.cond3.not164.i = select i1 %i.acu, i1 true, i1 %i.acv
  %i.acw = icmp ne i32 %.018.lcssa.i193198.i, 0
  %or.cond5.i = select i1 %or.cond3.not164.i, i1 true, i1 %i.acw
  br i1 %or.cond5.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.acx = xor i32 %spec.select206.i, 15
  call fastcc void @re_emit_goto(ptr noundef nonnull %0, i32 noundef %i.acx, i32 noundef range(i32 0, -2147483648) %.0203) #28
  br label %re_parse_quantifier.exit

bb.da:                                            ; preds = %bb.cy
  %i.acy = icmp eq i32 %.0154.i, %.1.i            ; 2 uses
  %spec.select.i = select i1 %i.acy, i32 0, i32 %.018.lcssa.i193198.i ; 2 uses
  %i.acz = shl nuw nsw i32 %spec.select.i, 1
  %i.ada = add nuw nsw i32 %i.acz, 6              ; 3 uses
  call fastcc void @emit_claim_size(ptr noundef nonnull %0, i32 noundef range(i32 1, 0) %i.ada) #28
  %i.adb = load i64, ptr %i.xi, align 8, !tbaa !121
  %i.adc = add i64 %i.adb, -1
  %i.add = inttoptr i64 %i.adc to ptr
  %i.ade = getelementptr inbounds nuw i8, ptr %i.add, i64 8
  %i.adf = getelementptr inbounds nuw i8, ptr %i.ade, i64 %i.xn ; 2 uses
  %i.adg = zext nneg i32 %i.ada to i64
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adf, i64 %i.adg
  %i.adi = load i32, ptr %i.xp, align 8, !tbaa !128
  %i.adj = sub i32 %i.adi, %.0203
  %i.adk = zext i32 %i.adj to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.adh, ptr nonnull align 1 %i.adf, i64 %i.adk, i1 false)
  %i.adl = load i32, ptr %i.xp, align 8, !tbaa !128
  %i.adm = add i32 %i.adl, %i.ada
  store i32 %i.adm, ptr %i.xp, align 8, !tbaa !128
  %i.adn = load i64, ptr %i.xi, align 8, !tbaa !121
  %i.ado = add i64 %i.adn, -1
  %i.adp = inttoptr i64 %i.ado to ptr
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adp, i64 8 ; 2 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adq, i64 %i.xn ; 4 uses
  store i8 27, ptr %i.adr, align 1, !tbaa !51
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 1
  store i8 0, ptr %i.ads, align 1, !tbaa !51
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adr, i64 2
  store i32 %.1.i, ptr %i.adt, align 1, !tbaa !91
  %i.adu = add nuw nsw i32 %.0203, 6              ; 2 uses
  %.not165.i = icmp eq i32 %spec.select.i, 0      ; 2 uses
  br i1 %.not165.i, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.adv = zext nneg i32 %i.adu to i64
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adq, i64 %i.adv
  store i8 36, ptr %i.adw, align 1, !tbaa !51
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adr, i64 7
  store i8 0, ptr %i.adx, align 1, !tbaa !51
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  br i1 %i.acy, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  call fastcc void @emit_claim_size(ptr noundef nonnull %0, i32 noundef 1) #28
  %i.ady = load i64, ptr %i.xi, align 8, !tbaa !121
  %i.adz = add i64 %i.ady, -1
  %i.aea = inttoptr i64 %i.adz to ptr
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.aea, i64 8
  %i.aec = load i32, ptr %i.xp, align 8, !tbaa !128 ; 2 uses
  %i.aed = add i32 %i.aec, 1
  store i32 %i.aed, ptr %i.xp, align 8, !tbaa !128
  %i.aee = zext i32 %i.aec to i64
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aeb, i64 %i.aee
  store i8 22, ptr %i.aef, align 1, !tbaa !51
  call fastcc void @emit_claim_size(ptr noundef nonnull %0, i32 noundef 1) #28
  %i.aeg = load i64, ptr %i.xi, align 8, !tbaa !121
  %i.aeh = add i64 %i.aeg, -1
  %i.aei = inttoptr i64 %i.aeh to ptr
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aei, i64 8
  %i.aek = load i32, ptr %i.xp, align 8, !tbaa !128 ; 2 uses
  %i.ael = add i32 %i.aek, 1
  store i32 %i.ael, ptr %i.xp, align 8, !tbaa !128
  %i.aem = zext i32 %i.aek to i64
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aej, i64 %i.aem
  store i8 0, ptr %i.aen, align 1, !tbaa !51
  %i.aeo = load i32, ptr %i.xp, align 8, !tbaa !128
  %.neg8.i.i = add nuw nsw i32 %.0203, 2
  %i.aep = sub i32 %.neg8.i.i, %i.aeo
  call fastcc void @emit_claim_size(ptr noundef nonnull %0, i32 noundef 4) #28
  %i.aeq = load i64, ptr %i.xi, align 8, !tbaa !121
  %i.aer = add i64 %i.aeq, -1
  %i.aes = inttoptr i64 %i.aer to ptr
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aes, i64 8
  %i.aeu = load i32, ptr %i.xp, align 8, !tbaa !128 ; 2 uses
  %i.aev = zext i32 %i.aeu to i64
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aet, i64 %i.aev
  store i32 %i.aep, ptr %i.aew, align 1, !tbaa !91
  %i.aex = add i32 %i.aeu, 4
  store i32 %i.aex, ptr %i.xp, align 8, !tbaa !128
end_hunk_2
