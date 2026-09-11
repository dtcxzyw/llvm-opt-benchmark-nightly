Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/guiTable?download=true
inline.NumInlined: 1972
inline.NumDeleted: 855
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN8GUITable7OnEventERK6SEvent:bb.a
  ret i1 %.191
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3gui11IGUIElement7OnEventERK6SEvent(ptr noundef nonnull align 8 dereferenceable(308) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(308) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %i.g
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8GUITable14sendTableEventEib(ptr noundef nonnull align 8 dereferenceable(608) initializes((376, 381)) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %struct.SEvent, align 8             ; 8 uses
  %i.a = zext i1 %2 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 %1, ptr %i.b, align 8, !tbaa !89
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 380
  store i8 %i.a, ptr %i.c, align 4, !tbaa !90
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !108  ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.g, i8 0, i64 28, i1 false)
  store i32 1, ptr %3, align 8, !tbaa !227
  store ptr %0, ptr %i.f, align 8, !tbaa !123
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.h, align 8, !tbaa !123
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 19, ptr %i.i, align 8, !tbaa !123
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = call noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(308) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8GUITable17toggleVisibleTreeEiib(ptr noundef nonnull align 8 dereferenceable(608) %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %struct.SEvent, align 8             ; 7 uses
  %i.a = icmp sgt i32 %1, -1
  br i1 %i.a, label %bb.b, label %_ZN8GUITable14sendTableEventEib.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !157
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !124  ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 2
  %i.j = trunc i64 %i.i to i32
  %i.k = icmp slt i32 %1, %i.j
  br i1 %i.k, label %_ZNK8GUITable6getRowEi.exit, label %_ZN8GUITable14sendTableEventEib.exit

_ZNK8GUITable6getRowEi.exit:                      ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.m = zext nneg i32 %1 to i64                  ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !130  ; 3 uses
  %i.p = sext i32 %i.o to i64
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !126  ; 2 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.p ; 4 uses
  %i.s = icmp eq ptr %i.q, null
  br i1 %i.s, label %_ZN8GUITable14sendTableEventEib.exit, label %.preheader74

.preheader74:                                     ; preds = %_ZNK8GUITable6getRowEi.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !160  ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %.preheader74
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !148
  %wide.trip.count = zext nneg i32 %i.u to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %bb.d, !llvm.loop !427

.thread:                                          ; preds = %bb.c, %.preheader74
  %i.x = icmp sgt i32 %2, -1
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %i.w, i64 %indvars.iv ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !205
  %i.ab = icmp eq i32 %i.aa, 4
  br i1 %i.ab, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !165
  %i.ae = icmp eq i32 %i.ad, 0                    ; 2 uses
  %i.af = xor i1 %i.ae, true                      ; 3 uses
  %i.ag = icmp sgt i32 %2, -1
  %.not = icmp ne i32 %2, 0
  %spec.select = or i1 %.not, %i.af
  %.046 = and i1 %i.ag, %spec.select              ; 2 uses
  %or.cond = or i1 %.046, %i.af
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN8GUITable9closeTreeEi(ptr noundef nonnull align 8 dereferenceable(608) %0, i32 noundef %i.o)
  br label %bb.i

bb.g:                                             ; preds = %.thread, %bb.e
  %.04671 = phi i1 [ %i.x, %.thread ], [ %.046, %bb.e ] ; 2 uses
  %i.ah = phi i1 [ true, %.thread ], [ %i.af, %bb.e ]
  %.04869 = phi i1 [ false, %.thread ], [ %i.ae, %bb.e ] ; 2 uses
  %or.cond4 = and i1 %.04671, %i.ah
  br i1 %or.cond4, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN8GUITable8openTreeEi(ptr noundef nonnull align 8 dereferenceable(608) %0, i32 noundef %i.o)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.04670 = phi i1 [ %.04671, %bb.g ], [ true, %bb.h ], [ false, %bb.f ] ; 2 uses
  %.04868 = phi i1 [ %.04869, %bb.g ], [ %.04869, %bb.h ], [ true, %bb.f ] ; 2 uses
  br i1 %3, label %bb.j, label %_ZN8GUITable14sendTableEventEib.exit

bb.j:                                             ; preds = %bb.i
  %or.cond6 = and i1 %.04670, %.04868
  br i1 %or.cond6, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ai = add nuw nsw i32 %1, 1                   ; 3 uses
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !157
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !124 ; 2 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = lshr exact i64 %i.an, 2
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = icmp slt i32 %i.ai, %i.ap
  br i1 %i.aq, label %_ZNK8GUITable6getRowEi.exit59, label %_ZNK8GUITable6getRowEi.exit59.thread

_ZNK8GUITable6getRowEi.exit59:                    ; preds = %bb.k
  %i.ar = load ptr, ptr %i.l, align 8, !tbaa !126 ; 2 uses
  %.not54 = icmp eq ptr %i.ar, null
  br i1 %.not54, label %_ZNK8GUITable6getRowEi.exit59.thread, label %bb.l

bb.l:                                             ; preds = %_ZNK8GUITable6getRowEi.exit59
  %i.as = zext nneg i32 %i.ai to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !130
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !161
  %i.az = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !161
  %i.bb = icmp sgt i32 %i.ay, %i.ba
  %spec.select56 = select i1 %i.bb, i32 %i.ai, i32 %1
  br label %_ZNK8GUITable6getRowEi.exit59.thread

bb.m:                                             ; preds = %bb.j
  %or.cond8 = or i1 %.04670, %.04868
  br i1 %or.cond8, label %_ZNK8GUITable6getRowEi.exit59.thread, label %.preheader

.preheader:                                       ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %.not96 = icmp eq i32 %1, 0
  br i1 %.not96, label %_ZNK8GUITable6getRowEi.exit59.thread, label %_ZNK8GUITable6getRowEi.exit61.preheader

_ZNK8GUITable6getRowEi.exit61.preheader:          ; preds = %.preheader
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !157
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !124 ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %sext = shl i64 %i.bh, 30
  %5 = ashr i64 %sext, 32
  %i.bi = load ptr, ptr %i.l, align 8, !tbaa !126
  %i.bj = load i32, ptr %i.bc, align 4, !tbaa !161
  br label %_ZNK8GUITable6getRowEi.exit61

bb.n:                                             ; preds = %_ZNK8GUITable6getRowEi.exit61
  %i.bk = icmp sgt i64 %indvars.iv7895, 1
  br i1 %i.bk, label %_ZNK8GUITable6getRowEi.exit61, label %_ZNK8GUITable6getRowEi.exit59.thread, !llvm.loop !428

_ZNK8GUITable6getRowEi.exit61:                    ; preds = %_ZNK8GUITable6getRowEi.exit61.preheader, %bb.n
  %indvars.iv7895 = phi i64 [ %i.bl, %bb.n ], [ %i.m, %_ZNK8GUITable6getRowEi.exit61.preheader ] ; 4 uses
  %i.bl = add nsw i64 %indvars.iv7895, -1         ; 2 uses
  %i.bm = icmp sle i64 %indvars.iv7895, %5
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bl
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !130
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.bi, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !161
  %.not53 = icmp slt i32 %i.bs, %i.bj
  br i1 %.not53, label %.critedge, label %bb.n, !llvm.loop !428

.critedge:                                        ; preds = %_ZNK8GUITable6getRowEi.exit61
  %6 = trunc nuw nsw i64 %indvars.iv7895 to i32
  %i.bt = add nsw i32 %6, -1
  br label %_ZNK8GUITable6getRowEi.exit59.thread

_ZNK8GUITable6getRowEi.exit59.thread:             ; preds = %bb.n, %.preheader, %.critedge, %bb.k, %bb.l, %_ZNK8GUITable6getRowEi.exit59, %bb.m
  %.2 = phi i32 [ %spec.select56, %bb.l ], [ %1, %bb.m ], [ %1, %bb.k ], [ %1, %_ZNK8GUITable6getRowEi.exit59 ], [ %i.bt, %.critedge ], [ %1, %.preheader ], [ %1, %bb.n ] ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 372 ; 3 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !88
  %.not55 = icmp eq i32 %.2, %i.bv
  br i1 %.not55, label %_ZN8GUITable14sendTableEventEib.exit, label %7

7:                                                ; preds = %_ZNK8GUITable6getRowEi.exit59.thread
  store i32 %.2, ptr %i.bu, align 4, !tbaa !88
  %8 = icmp sgt i32 %.2, -1
  br i1 %8, label %bb.o, label %_ZN8GUITable10autoScrollEv.exit

bb.o:                                             ; preds = %7
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !109
  %i.by = tail call noundef i32 @_ZNK3gui13CGUIScrollBar6getPosEv(ptr noundef nonnull align 8 dereferenceable(420) %i.bx) ; 2 uses
  %i.bz = load i32, ptr %i.bu, align 4, !tbaa !88
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !98 ; 2 uses
  %i.cc = mul nsw i32 %i.cb, %i.bz                ; 3 uses
  %i.cd = icmp sgt i32 %i.by, %i.cc
  br i1 %i.cd, label %.sink.split.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !158
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !159
  %.neg9.i = add i32 %i.cc, %i.cb
  %.neg.i = sub i32 %.neg9.i, %i.cf
  %i.ci = add i32 %.neg.i, %i.ch                  ; 2 uses
  %i.cj = icmp slt i32 %i.by, %i.ci
  br i1 %i.cj, label %.sink.split.i, label %_ZN8GUITable10autoScrollEv.exit

.sink.split.i:                                    ; preds = %bb.p, %bb.o
  %.sink13.i = phi i32 [ %i.cc, %bb.o ], [ %i.ci, %bb.p ]
  %i.ck = load ptr, ptr %i.bw, align 8, !tbaa !109
  tail call void @_ZN3gui13CGUIScrollBar6setPosEi(ptr noundef nonnull align 8 dereferenceable(420) %i.ck, i32 noundef %.sink13.i)
  br label %_ZN8GUITable10autoScrollEv.exit

_ZN8GUITable10autoScrollEv.exit:                  ; preds = %7, %bb.p, %.sink.split.i
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 0, ptr %i.cl, align 8, !tbaa !89
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 380
  store i8 0, ptr %i.cm, align 4, !tbaa !90
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !108 ; 3 uses
  %.not.i = icmp eq ptr %i.co, null
  br i1 %.not.i, label %_ZN8GUITable14sendTableEventEib.exit, label %bb.q

bb.q:                                             ; preds = %_ZN8GUITable10autoScrollEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.cq, i8 0, i64 28, i1 false)
  store i32 1, ptr %4, align 8, !tbaa !227
  store ptr %0, ptr %i.cp, align 8, !tbaa !123
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.cr, align 8, !tbaa !123
  store i32 19, ptr %i.cq, align 8, !tbaa !123
  %i.cs = load ptr, ptr %i.co, align 8, !tbaa !21
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = call noundef zeroext i1 %i.cu(ptr noundef nonnull align 8 dereferenceable(308) %i.co, ptr noundef nonnull align 8 dereferenceable(56) %4), !inline_history !228 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %_ZN8GUITable14sendTableEventEib.exit

_ZN8GUITable14sendTableEventEib.exit:             ; preds = %bb.a, %bb.b, %bb.q, %_ZN8GUITable10autoScrollEv.exit, %bb.i, %_ZNK8GUITable6getRowEi.exit59.thread, %_ZNK8GUITable6getRowEi.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK8GUITable16doesRowStartWithEPKNS_3RowERKN4core6stringIwEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(608) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.core::string", align 8      ; 6 uses
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !160  ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge32
  %i.i = phi i32 [ %i.c, %.lr.ph ], [ %i.ay, %.critedge32 ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge32 ] ; 2 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !148
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %i.j, i64 %indvars.iv ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !205
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %.critedge32

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.p = load i32, ptr %i.o, align 4, !tbaa !165
  %i.q = sext i32 %i.p to i64
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !142
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %i.q ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !93
  %i.v = trunc i64 %i.u to i32
  %i.w = load i64, ptr %i.f, align 8, !tbaa !93
  %i.x = trunc i64 %i.w to i32                    ; 2 uses
  %.not.not = icmp ult i32 %i.v, %i.x
  br i1 %.not.not, label %.critedge32, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZNK4core6stringIwE9subStringEjib(ptr dead_on_unwind nonnull writable sret(%"class.core::string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i32 noundef 0, i32 noundef %i.x, i1 noundef zeroext false)
  %i.y = load ptr, ptr %2, align 8, !tbaa !122    ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !95   ; 2 uses
  %.not18.i = icmp eq i32 %i.z, 0
  %.pre.pre = load ptr, ptr %3, align 8, !tbaa !122 ; 3 uses
  br i1 %.not18.i, label %.critedge16.i, label %.lr.ph.i

bb.e:                                             ; preds = %bb.f
  %i.aa = add i32 %.01219.i, 1                    ; 2 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !95 ; 2 uses
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %.critedge16.i, label %.lr.ph.i, !llvm.loop !429

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %i.ae = phi i32 [ %i.ad, %bb.e ], [ %i.z, %bb.d ] ; 3 uses
  %i.af = phi i64 [ %i.ab, %bb.e ], [ 0, %bb.d ]
  %.01219.i = phi i32 [ %i.aa, %bb.e ], [ 0, %bb.d ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !95 ; 4 uses
  %.not14.i = icmp eq i32 %i.ah, 0
  br i1 %.not14.i, label %.critedge16.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.ai = add i32 %i.ae, -65
  %or.cond.i.i = icmp ult i32 %i.ai, 26
  %i.aj = add nuw nsw i32 %i.ae, 32
  %i.ak = select i1 %or.cond.i.i, i32 %i.aj, i32 %i.ae
  %i.al = add i32 %i.ah, -65
  %or.cond.i17.i = icmp ult i32 %i.al, 26
  %i.am = add nuw nsw i32 %i.ah, 32
  %i.an = select i1 %or.cond.i17.i, i32 %i.am, i32 %i.ah
  %.not15.i = icmp eq i32 %i.ak, %i.an
  br i1 %.not15.i, label %bb.e, label %_ZNK4core6stringIwE18equals_ignore_caseERKS1_.exit

.critedge16.i:                                    ; preds = %.lr.ph.i, %bb.e, %bb.d
  %i.ao = load i64, ptr %i.f, align 8, !tbaa !93
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = load i64, ptr %i.g, align 8, !tbaa !93
  %i.ar = trunc i64 %i.aq to i32
  %i.as = icmp eq i32 %i.ap, %i.ar
  br label %_ZNK4core6stringIwE18equals_ignore_caseERKS1_.exit

_ZNK4core6stringIwE18equals_ignore_caseERKS1_.exit: ; preds = %bb.f, %.critedge16.i
  %i.at = phi i1 [ %i.as, %.critedge16.i ], [ false, %bb.f ]
  %i.au = icmp eq ptr %.pre.pre, %i.h
  br i1 %i.au, label %_ZN4core6stringIwED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNK4core6stringIwE18equals_ignore_caseERKS1_.exit
  %i.av = load i64, ptr %i.h, align 8, !tbaa !123
  %i.aw = shl i64 %i.av, 2
  %i.ax = add i64 %i.aw, 4
  call void @_ZdlPvm(ptr noundef %.pre.pre, i64 noundef %i.ax) #29
  br label %_ZN4core6stringIwED2Ev.exit

_ZN4core6stringIwED2Ev.exit:                      ; preds = %_ZNK4core6stringIwE18equals_ignore_caseERKS1_.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br i1 %i.at, label %.thread, label %_ZN4core6stringIwED2Ev.exit..critedge32_crit_edge

_ZN4core6stringIwED2Ev.exit..critedge32_crit_edge: ; preds = %_ZN4core6stringIwED2Ev.exit
  %.pre40 = load i32, ptr %i.b, align 8, !tbaa !160
  br label %.critedge32

.critedge32:                                      ; preds = %_ZN4core6stringIwED2Ev.exit..critedge32_crit_edge, %bb.c, %bb.b
  %i.ay = phi i32 [ %.pre40, %_ZN4core6stringIwED2Ev.exit..critedge32_crit_edge ], [ %i.i, %bb.c ], [ %i.i, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = icmp slt i64 %indvars.iv.next, %i.az
  br i1 %i.ba, label %bb.b, label %.thread, !llvm.loop !430

.thread:                                          ; preds = %.critedge32, %_ZN4core6stringIwED2Ev.exit, %.preheader, %bb.a
  %.5 = phi i1 [ false, %bb.a ], [ false, %.preheader ], [ false, %.critedge32 ], [ true, %_ZN4core6stringIwED2Ev.exit ]
  ret i1 %.5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZNK8GUITable6getRowEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(608) %0, i32 noundef %1) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = icmp sgt i32 %1, -1
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !157
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !124  ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 2
  %i.j = trunc i64 %i.i to i32
  %i.k = icmp slt i32 %1, %i.j
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.m = zext nneg i32 %1 to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !130
  %i.p = sext i32 %i.o to i64
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !126
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.p
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %i.r, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare void @_ZN3gui13CGUIScrollBar18setPosInterpolatedEi(ptr noundef nonnull align 8 dereferenceable(420), i32 noundef) unnamed_addr #3

declare noundef i32 @_ZNK3gui13CGUIScrollBar12getTargetPosEv(ptr noundef nonnull align 8 dereferenceable(420)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK8GUITable8getRowAtEiRb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(608) %0, i32 noundef %1, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) initializes((0, 1)) %2) local_unnamed_addr #0 align 2 {
bb.a:
  store i8 0, ptr %2, align 1, !tbaa !134
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !157
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !124
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
end_hunk_0
