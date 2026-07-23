inline.NumInlined: 358
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_PyCode_Validate:bb.a

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr i8, ptr %i.aj, i64 8
  %.val66 = load ptr, ptr %i.al, align 8, !tbaa !114
  %i.am = getelementptr i8, ptr %.val66, i64 168
  %.val76 = load i64, ptr %i.am, align 8, !tbaa !115
  %i.an = and i64 %.val76, 67108864
  %.not51 = icmp eq i64 %i.an, 0
  br i1 %.not51, label %bb.z, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr i8, ptr %0, i64 80
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !124 ; 4 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.z, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr i8, ptr %i.ap, i64 8
  %.val65 = load ptr, ptr %i.ar, align 8, !tbaa !114
  %i.as = getelementptr i8, ptr %.val65, i64 168
  %.val75 = load i64, ptr %i.as, align 8, !tbaa !115
  %i.at = and i64 %.val75, 134217728
  %.not52 = icmp eq i64 %i.at, 0
  br i1 %.not52, label %bb.z, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = getelementptr i8, ptr %i.aj, i64 16
  %.val80 = load i64, ptr %i.au, align 8, !tbaa !125 ; 2 uses
  %i.av = getelementptr i8, ptr %i.ap, i64 16
  %.val83 = load i64, ptr %i.av, align 8, !tbaa !125
  %.not53 = icmp eq i64 %.val80, %.val83
  br i1 %.not53, label %bb.p, label %bb.z

bb.p:                                             ; preds = %bb.o
  %i.aw = getelementptr i8, ptr %0, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !126 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.z, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = getelementptr i8, ptr %i.ax, i64 8
  %.val64 = load ptr, ptr %i.az, align 8, !tbaa !114
  %i.ba = getelementptr i8, ptr %.val64, i64 168
  %.val74 = load i64, ptr %i.ba, align 8, !tbaa !115
  %i.bb = and i64 %.val74, 268435456
  %.not54 = icmp eq i64 %i.bb, 0
  br i1 %.not54, label %bb.z, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr i8, ptr %0, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !127 ; 2 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.z, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr i8, ptr %i.bd, i64 8
  %.val63 = load ptr, ptr %i.bf, align 8, !tbaa !114
  %i.bg = getelementptr i8, ptr %.val63, i64 168
  %.val73 = load i64, ptr %i.bg, align 8, !tbaa !115
  %i.bh = and i64 %.val73, 268435456
  %.not55 = icmp eq i64 %i.bh, 0
  br i1 %.not55, label %bb.z, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bi = load ptr, ptr %0, align 8, !tbaa !128   ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bk = getelementptr i8, ptr %i.bi, i64 8
  %.val62 = load ptr, ptr %i.bk, align 8, !tbaa !114
  %i.bl = getelementptr i8, ptr %.val62, i64 168
  %.val72 = load i64, ptr %i.bl, align 8, !tbaa !115
  %i.bm = and i64 %.val72, 268435456
  %.not56 = icmp eq i64 %i.bm, 0
  br i1 %.not56, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bn = getelementptr i8, ptr %0, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !129 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bq = getelementptr i8, ptr %i.bo, i64 8
  %.val61 = load ptr, ptr %i.bq, align 8, !tbaa !114
  %i.br = getelementptr i8, ptr %.val61, i64 168
  %.val71 = load i64, ptr %i.br, align 8, !tbaa !115
  %i.bs = and i64 %.val71, 134217728
  %.not57 = icmp eq i64 %i.bs, 0
  br i1 %.not57, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bt = getelementptr i8, ptr %0, i64 104
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !130 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bw = getelementptr i8, ptr %i.bu, i64 8
  %.val = load ptr, ptr %i.bw, align 8, !tbaa !114
  %i.bx = getelementptr i8, ptr %.val, i64 168
  %.val70 = load i64, ptr %i.bx, align 8, !tbaa !115
  %i.by = and i64 %.val70, 134217728
  %.not58 = icmp eq i64 %i.by, 0
  br i1 %.not58, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.1, i32 noundef 465) #14
  br label %bb.ah

bb.aa:                                            ; preds = %bb.y
  %i.bz = getelementptr i8, ptr %i.r, i64 16
  %.val82 = load i64, ptr %i.bz, align 8, !tbaa !125 ; 2 uses
  %i.ca = icmp sgt i64 %.val82, 2147483647
  br i1 %i.ca, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cb = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !105
  tail call void @PyErr_SetString(ptr noundef %i.cb, ptr noundef nonnull @.str.2) #14
  br label %bb.ah

bb.ac:                                            ; preds = %bb.aa
  %i.cc = getelementptr i8, ptr %i.r, i64 32
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = or i64 %.val82, %i.cd
  %i.cf = and i64 %i.ce, 1
  %or.cond87 = icmp eq i64 %i.cf, 0
  br i1 %or.cond87, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cg = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !105
  tail call void @PyErr_SetString(ptr noundef %i.cg, ptr noundef nonnull @.str.3) #14
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call fastcc void @get_localsplus_counts(i64 %.val80, ptr noundef nonnull %i.ap, ptr noundef %i.a, ptr noundef null, ptr noundef null)
  %i.ch = load i32, ptr %i.a, align 4, !tbaa !7
  %i.ci = add i32 %i.i, %i.c
  %i.cj = shl i32 %i.o, 29
  %i.ck = ashr i32 %i.cj, 31
  %i.cl = shl i32 %i.o, 28
  %i.cm = ashr i32 %i.cl, 31
  %i.cn = sub i32 %i.ck, %i.ci
  %i.co = add i32 %i.cn, %i.cm
  %i.cp = add i32 %i.co, %i.ch
  %i.cq = icmp slt i32 %i.cp, 0
  br i1 %i.cq, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cr = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !105
  tail call void @PyErr_SetString(ptr noundef %i.cr, ptr noundef nonnull @.str.4) #14
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %.0 = phi i32 [ -1, %bb.af ], [ 0, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ad, %bb.ab, %bb.z
  %.1 = phi i32 [ -1, %bb.z ], [ -1, %bb.ab ], [ -1, %bb.ad ], [ %.0, %bb.ag ]
  ret i32 %.1
}

declare void @_PyErr_BadInternalCall(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @get_localsplus_counts(i64 %.16.val, ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) unnamed_addr #4 {
bb.a:
  %i.a = icmp sgt i64 %.16.val, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %min.iters.check = icmp ult i64 %.16.val, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.c = add nsw i64 %.16.val, -1                 ; 2 uses
  %i.d = trunc i64 %i.c to i32
  %i.e = icmp ugt i32 %i.d, 2147483646
  %i.f = icmp ugt i64 %i.c, 4294967295
  %i.g = or i1 %i.e, %i.f
  br i1 %i.g, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %.16.val, 8589934588           ; 4 uses
  %i.h = trunc i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %predphi16, %vector.body ]
  %vec.phi10 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %predphi14.a, %vector.body ]
  %vec.phi11 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %predphi12, %vector.body ]
  %i.i = getelementptr i8, ptr %i.b, i64 %index
  %wide.load = load <4 x i8>, ptr %i.i, align 1, !tbaa !106 ; 2 uses
  %i.j = zext <4 x i8> %wide.load to <4 x i32>    ; 3 uses
  %i.k = and <4 x i32> %i.j, splat (i32 32)       ; 2 uses
  %4 = icmp eq <4 x i32> %i.k, zeroinitializer
  %i.l = lshr <4 x i32> %i.j, splat (i32 6)
  %i.m = and <4 x i32> %i.l, splat (i32 1)
  %i.n = and <4 x i32> %i.j, splat (i32 96)
  %5 = icmp ne <4 x i32> %i.n, zeroinitializer    ; 2 uses
  %i.o = lshr <4 x i8> %wide.load, splat (i8 7)
  %i.p = zext nneg <4 x i8> %i.o to <4 x i32>
  %predphi.a = select <4 x i1> %5, <4 x i32> zeroinitializer, <4 x i32> %i.p
  %predphi12 = add <4 x i32> %vec.phi11, %predphi.a ; 2 uses
  %6 = zext <4 x i1> %5 to <4 x i32>
  %predphi14.v = select <4 x i1> %4, <4 x i32> %6, <4 x i32> %i.m
  %predphi14.a = add <4 x i32> %vec.phi10, %predphi14.v ; 2 uses
  %i.q = lshr exact <4 x i32> %i.k, splat (i32 5)
  %predphi16 = add <4 x i32> %vec.phi, %i.q       ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !131

middle.block:                                     ; preds = %vector.body
  %i.s = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %predphi16) ; 2 uses
  %i.t = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %predphi14.a) ; 2 uses
  %i.u = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %predphi12) ; 2 uses
  %cmp.n = icmp eq i64 %.16.val, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph, %middle.block
  %.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.05.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %i.s, %middle.block ]
  %.0224.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %i.h, %middle.block ]
  %.0233.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %i.t, %middle.block ]
  %.0252.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %i.u, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.f
  %i.v = phi i64 [ %i.ah, %bb.f ], [ %.ph, %scalar.ph.preheader ]
  %.05 = phi i32 [ %.1, %bb.f ], [ %.05.ph, %scalar.ph.preheader ] ; 3 uses
  %.0224 = phi i32 [ %i.ag, %bb.f ], [ %.0224.ph, %scalar.ph.preheader ]
  %.0233 = phi i32 [ %.124, %bb.f ], [ %.0233.ph, %scalar.ph.preheader ] ; 3 uses
  %.0252 = phi i32 [ %.126, %bb.f ], [ %.0252.ph, %scalar.ph.preheader ] ; 3 uses
  %i.w = getelementptr i8, ptr %i.b, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !106   ; 2 uses
  %i.y = zext i8 %i.x to i32                      ; 3 uses
  %i.z = and i32 %i.y, 32
  %.not31 = icmp eq i32 %i.z, 0
  br i1 %.not31, label %bb.c, label %bb.b

bb.b:                                             ; preds = %scalar.ph
  %i.aa = add i32 %.05, 1
  %i.ab = lshr i32 %i.y, 6
  %i.ac = and i32 %i.ab, 1
  %spec.select = add i32 %i.ac, %.0233
  br label %bb.f

bb.c:                                             ; preds = %scalar.ph
  %i.ad = and i32 %i.y, 64
  %.not32 = icmp eq i32 %i.ad, 0
  br i1 %.not32, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = add i32 %.0233, 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.lobit = lshr i8 %i.x, 7
  %i.af = zext nneg i8 %.lobit to i32
  %spec.select35 = add i32 %.0252, %i.af
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b, %bb.d
  %.126 = phi i32 [ %.0252, %bb.b ], [ %spec.select35, %bb.e ], [ %.0252, %bb.d ] ; 2 uses
  %.124 = phi i32 [ %spec.select, %bb.b ], [ %.0233, %bb.e ], [ %i.ae, %bb.d ] ; 2 uses
  %.1 = phi i32 [ %i.aa, %bb.b ], [ %.05, %bb.e ], [ %.05, %bb.d ] ; 2 uses
  %i.ag = add i32 %.0224, 1                       ; 2 uses
  %i.ah = sext i32 %i.ag to i64                   ; 2 uses
  %i.ai = icmp sgt i64 %.16.val, %i.ah
  br i1 %i.ai, label %scalar.ph, label %._crit_edge, !llvm.loop !135

._crit_edge:                                      ; preds = %bb.f, %middle.block, %bb.a
  %.025.lcssa = phi i32 [ 0, %bb.a ], [ %i.u, %middle.block ], [ %.126, %bb.f ]
  %.023.lcssa = phi i32 [ 0, %bb.a ], [ %i.t, %middle.block ], [ %.124, %bb.f ]
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.s, %middle.block ], [ %.1, %bb.f ]
  store i32 %.0.lcssa, ptr %1, align 4, !tbaa !7
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  store i32 %.023.lcssa, ptr %2, align 4, !tbaa !7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %.not30 = icmp eq ptr %3, null
  br i1 %.not30, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %.025.lcssa, ptr %3, align 4, !tbaa !7
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyCode_New(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !122  ; 2 uses
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp) ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11
  %i.f = getelementptr i8, ptr %i.c, i64 16
  %.val.i.i = load i64, ptr %i.f, align 8, !tbaa !125
  %i.g = add i64 %.val.i.i, -1                    ; 2 uses
  %i.h = icmp sgt i64 %i.g, -1
  br i1 %i.h, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.c, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.j = phi i64 [ %i.g, %.lr.ph.i.i ], [ %i.o, %bb.d ] ; 3 uses
  %i.k = getelementptr [8 x i8], ptr %i.i, i64 %i.j ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !105  ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %intern_strings.exit9.thread.sink.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %i.l, i64 8
  %.val14.i.i = load ptr, ptr %i.n, align 8, !tbaa !114
  %.not.i.i = icmp eq ptr %.val14.i.i, @PyUnicode_Type
  br i1 %.not.i.i, label %bb.d, label %intern_strings.exit9.thread.sink.split.i

bb.d:                                             ; preds = %bb.c
  tail call void @_PyUnicode_InternImmortal(ptr noundef %i.e, ptr noundef nonnull %i.k) #14
  %i.o = add nsw i64 %i.j, -1
  %i.p = icmp sgt i64 %i.j, 0
  br i1 %i.p, label %bb.b, label %.loopexit.i, !llvm.loop !136

.loopexit.i:                                      ; preds = %bb.d, %bb.a
  %i.q = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !121
  %i.s = tail call fastcc i32 @intern_constants(ptr noundef %i.r, ptr noundef null)
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %Py_XDECREF.exit27, label %bb.e

bb.e:                                             ; preds = %.loopexit.i
  %i.u = getelementptr i8, ptr %0, i64 72         ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !123  ; 2 uses
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !11
  %i.x = getelementptr i8, ptr %i.v, i64 16
  %.val.i3.i = load i64, ptr %i.x, align 8, !tbaa !125
  %i.y = add i64 %.val.i3.i, -1                   ; 2 uses
  %i.z = icmp sgt i64 %i.y, -1
  br i1 %i.z, label %.lr.ph.i5.i, label %intern_code_constants.exit

.lr.ph.i5.i:                                      ; preds = %bb.e
  %i.aa = getelementptr i8, ptr %i.v, i64 32
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %.lr.ph.i5.i
  %i.ab = phi i64 [ %i.y, %.lr.ph.i5.i ], [ %i.ag, %bb.h ] ; 3 uses
  %i.ac = getelementptr [8 x i8], ptr %i.aa, i64 %i.ab ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !105 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %intern_strings.exit9.thread.sink.split.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr i8, ptr %i.ad, i64 8
  %.val14.i6.i = load ptr, ptr %i.af, align 8, !tbaa !114
  %.not.i7.i = icmp eq ptr %.val14.i6.i, @PyUnicode_Type
  br i1 %.not.i7.i, label %bb.h, label %intern_strings.exit9.thread.sink.split.i

bb.h:                                             ; preds = %bb.g
  tail call void @_PyUnicode_InternImmortal(ptr noundef %i.w, ptr noundef nonnull %i.ac) #14
  %i.ag = add nsw i64 %i.ab, -1
  %i.ah = icmp sgt i64 %i.ab, 0
  br i1 %i.ah, label %bb.f, label %intern_code_constants.exit, !llvm.loop !136

intern_strings.exit9.thread.sink.split.i:         ; preds = %bb.c, %bb.b, %bb.g, %bb.f
  %i.ai = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !105
  tail call void @PyErr_SetString(ptr noundef %i.ai, ptr noundef nonnull @.str.20) #14
  br label %Py_XDECREF.exit27

intern_code_constants.exit:                       ; preds = %bb.h, %bb.e
  %i.aj = tail call ptr @_Py_GetConfig() #14
  %i.ak = getelementptr i8, ptr %i.aj, i64 52
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !137
  %.not = icmp eq i32 %i.al, 0
  br i1 %.not, label %bb.i, label %bb.x

bb.i:                                             ; preds = %intern_code_constants.exit
  %i.am = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !129 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 32     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.ap = tail call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef 32) #14 ; 4 uses
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !105
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ar = tail call ptr @PyErr_NoMemory() #14     ; 0 uses
  br label %remove_column_info.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.as = getelementptr i8, ptr %i.ap, i64 32     ; 2 uses
  %i.at = getelementptr i8, ptr %i.an, i64 16     ; 2 uses
  %.val4454.i = load i64, ptr %i.at, align 8, !tbaa !125
  %i.au = icmp sgt i64 %.val4454.i, 0
  br i1 %i.au, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.k, %.critedge.i
  %.03156.i = phi i64 [ %.132.i, %.critedge.i ], [ 0, %bb.k ] ; 4 uses
  %.03555.i = phi ptr [ %.237.i, %.critedge.i ], [ %i.as, %bb.k ] ; 2 uses
end_hunk_0
begin_hunk_1_@_PyCode_New:bb.a
  %i.bw = and i32 %i.bv, 63                       ; 2 uses
  %i.bx = and i32 %i.bv, 64
  %.not11.i.i.i.i = icmp eq i32 %i.bx, 0
  br i1 %.not11.i.i.i.i, label %scan_signed_varint.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.q, %.lr.ph.i.i.i.i
  %.014.i.i.i.i = phi i32 [ %i.ca, %.lr.ph.i.i.i.i ], [ 0, %bb.q ]
  %.0813.i.i.i.i = phi i32 [ %i.cd, %.lr.ph.i.i.i.i ], [ %i.bw, %bb.q ]
  %.pn12.i.i.i.i = phi ptr [ %.010.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.bt, %bb.q ]
  %.010.i.i.i.i = getelementptr i8, ptr %.pn12.i.i.i.i, i64 1 ; 2 uses
  %i.by = load i8, ptr %.010.i.i.i.i, align 1, !tbaa !106
  %i.bz = zext i8 %i.by to i32                    ; 2 uses
  %i.ca = add i32 %.014.i.i.i.i, 6                ; 2 uses
  %i.cb = and i32 %i.bz, 63
  %i.cc = shl i32 %i.cb, %i.ca
  %i.cd = or i32 %i.cc, %.0813.i.i.i.i            ; 2 uses
  %i.ce = and i32 %i.bz, 64
  %.not.i.i.i.i = icmp eq i32 %i.ce, 0
  br i1 %.not.i.i.i.i, label %scan_signed_varint.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !138

scan_signed_varint.exit.i.i:                      ; preds = %.lr.ph.i.i.i.i, %bb.q
  %.08.lcssa.i.i.i.i = phi i32 [ %i.bw, %bb.q ], [ %i.cd, %.lr.ph.i.i.i.i ]
  %.08.lcssa.i.i.i.fr.i = freeze i32 %.08.lcssa.i.i.i.i ; 3 uses
  %i.cf = and i32 %.08.lcssa.i.i.i.fr.i, 1
  %.not.i.i.i = icmp eq i32 %i.cf, 0
  %i.cg = lshr i32 %.08.lcssa.i.i.i.fr.i, 1       ; 2 uses
  br i1 %.not.i.i.i, label %get_line_delta.exit.thread.i, label %get_line_delta.exit.i

bb.r:                                             ; preds = %bb.p
  br label %get_line_delta.exit.thread.i

bb.s:                                             ; preds = %bb.p
  br label %get_line_delta.exit.thread.i

get_line_delta.exit.thread.i:                     ; preds = %bb.s, %bb.r, %scan_signed_varint.exit.i.i, %bb.p
  %.0.i.ph.i = phi i32 [ 0, %bb.s ], [ 1, %bb.p ], [ 2, %bb.r ], [ %i.cg, %scan_signed_varint.exit.i.i ]
  %i.ch = shl nuw i32 %.0.i.ph.i, 1
  br label %bb.t

get_line_delta.exit.i:                            ; preds = %scan_signed_varint.exit.i.i
  %.not49.i = icmp eq i32 %i.cg, 0
  br i1 %.not49.i, label %write_signed_varint.exit.i, label %bb.t

bb.t:                                             ; preds = %get_line_delta.exit.i, %get_line_delta.exit.thread.i
  %i.ci = phi i32 [ %i.ch, %get_line_delta.exit.thread.i ], [ %.08.lcssa.i.i.i.fr.i, %get_line_delta.exit.i ] ; 3 uses
  %i.cj = icmp ugt i32 %i.ci, 63
  br i1 %i.cj, label %.lr.ph.i.i.i, label %write_signed_varint.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.t, %.lr.ph.i.i.i
  %.011.i.i.i = phi i32 [ %i.cp, %.lr.ph.i.i.i ], [ 1, %bb.t ]
  %.0710.i.i.i = phi i32 [ %i.co, %.lr.ph.i.i.i ], [ %i.ci, %bb.t ] ; 3 uses
  %.089.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i ], [ %i.bp, %bb.t ] ; 2 uses
  %i.ck = trunc i32 %.0710.i.i.i to i8
  %i.cl = and i8 %i.ck, 63
  %i.cm = or disjoint i8 %i.cl, 64
  %i.cn = getelementptr i8, ptr %.089.i.i.i, i64 1 ; 2 uses
  store i8 %i.cm, ptr %.089.i.i.i, align 1, !tbaa !106
  %i.co = lshr i32 %.0710.i.i.i, 6                ; 2 uses
  %i.cp = add nuw nsw i32 %.011.i.i.i, 1          ; 2 uses
  %i.cq = icmp ugt i32 %.0710.i.i.i, 4095
  br i1 %i.cq, label %.lr.ph.i.i.i, label %write_signed_varint.exit.loopexit.i, !llvm.loop !139

write_signed_varint.exit.loopexit.i:              ; preds = %.lr.ph.i.i.i
  %i.cr = zext nneg i32 %i.cp to i64
  br label %write_signed_varint.exit.i

write_signed_varint.exit.i:                       ; preds = %write_signed_varint.exit.loopexit.i, %bb.t, %get_line_delta.exit.i
  %.08.lcssa.i.i.i = phi ptr [ %i.bp, %bb.t ], [ %i.cn, %write_signed_varint.exit.loopexit.i ], [ %i.bp, %get_line_delta.exit.i ]
  %.07.lcssa.i.i.i = phi i32 [ %i.ci, %bb.t ], [ %i.co, %write_signed_varint.exit.loopexit.i ], [ 0, %get_line_delta.exit.i ]
  %.0.lcssa.i.i.i = phi i64 [ 1, %bb.t ], [ %i.cr, %write_signed_varint.exit.loopexit.i ], [ 1, %get_line_delta.exit.i ]
  %i.cs = trunc nuw nsw i32 %.07.lcssa.i.i.i to i8
  store i8 %i.cs, ptr %.08.lcssa.i.i.i, align 1, !tbaa !106
  %i.ct = getelementptr i8, ptr %i.bp, i64 %.0.lcssa.i.i.i
  br label %bb.u

bb.u:                                             ; preds = %write_signed_varint.exit.i, %bb.o
  %.237.i = phi ptr [ %i.bm, %bb.o ], [ %i.ct, %write_signed_varint.exit.i ] ; 2 uses
  %.val.i = load i64, ptr %i.at, align 8, !tbaa !125 ; 2 uses
  %i.cu = add nsw i64 %.03156.i, 1
  %smax.i = call i64 @llvm.smax.i64(i64 %.val.i, i64 %i.cu)
  %i.cv = add nsw i64 %smax.i, -1                 ; 2 uses
  %exitcond.not.i81 = icmp eq i64 %.03156.i, %i.cv
  br i1 %exitcond.not.i81, label %._crit_edge.loopexit.i, label %.lr.ph

bb.v:                                             ; preds = %.lr.ph
  %exitcond.not.i = icmp eq i64 %.132.i, %i.cv
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph, !llvm.loop !140

.lr.ph:                                           ; preds = %bb.u, %bb.v
  %.132.in.i82 = phi i64 [ %.132.i, %bb.v ], [ %.03156.i, %bb.u ]
  %.132.i = add i64 %.132.in.i82, 1               ; 5 uses
  %i.cw = getelementptr i8, ptr %i.ao, i64 %.132.i
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !106
  %i.cy = icmp sgt i8 %i.cx, -1
  br i1 %i.cy, label %bb.v, label %.critedge.i, !llvm.loop !140

.critedge.i:                                      ; preds = %.lr.ph
  %i.cz = icmp slt i64 %.132.i, %.val.i
  br i1 %i.cz, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !141

._crit_edge.loopexit.i:                           ; preds = %.critedge.i, %bb.u, %bb.v
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !105
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.k
  %i.da = phi ptr [ %i.ap, %bb.k ], [ %.pre.i, %._crit_edge.loopexit.i ]
  %.035.lcssa.i = phi ptr [ %i.as, %bb.k ], [ %.237.i, %._crit_edge.loopexit.i ]
  %i.db = getelementptr i8, ptr %i.da, i64 32
  %i.dc = ptrtoint ptr %.035.lcssa.i to i64
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = call i32 @_PyBytes_Resize(ptr noundef nonnull %i.a, i64 noundef %i.de) #14
  %.not.i = icmp eq i32 %i.df, 0
  %i.dg = load ptr, ptr %i.a, align 8             ; 3 uses
  br i1 %.not.i, label %remove_column_info.exit, label %remove_column_info.exit.thread

remove_column_info.exit.thread:                   ; preds = %bb.l, %bb.j, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %Py_XDECREF.exit27

remove_column_info.exit:                          ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %Py_XDECREF.exit27, label %bb.w

bb.w:                                             ; preds = %remove_column_info.exit
  store ptr %i.dg, ptr %i.am, align 8, !tbaa !129
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %intern_code_constants.exit
  %.014 = phi ptr [ null, %intern_code_constants.exit ], [ %i.dg, %bb.w ] ; 8 uses
  %i.di = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !113
  %i.dk = getelementptr i8, ptr %i.dj, i64 16
  %.val = load i64, ptr %i.dk, align 8, !tbaa !125
  %i.dl = lshr i64 %.val, 1
  %i.dm = call ptr @_PyObject_NewVar(ptr noundef nonnull @PyCode_Type, i64 noundef %i.dl) #14 ; 30 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %.not.i17 = icmp eq ptr %.014, null
  br i1 %.not.i17, label %Py_XDECREF.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.do = load i32, ptr %.014, align 8, !tbaa !106 ; 2 uses
  %.not.i.i18 = icmp sgt i32 %i.do, -1
  br i1 %.not.i.i18, label %bb.aa, label %Py_XDECREF.exit

bb.aa:                                            ; preds = %bb.z
  %i.dp = add nsw i32 %i.do, -1                   ; 2 uses
  store i32 %i.dp, ptr %.014, align 8, !tbaa !106
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.ab, label %Py_XDECREF.exit

bb.ab:                                            ; preds = %bb.aa
  call void @_Py_Dealloc(ptr noundef nonnull %.014) #14
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.y, %bb.z, %bb.aa, %bb.ab
  %i.dr = call ptr @PyErr_NoMemory() #14          ; 0 uses
  br label %Py_XDECREF.exit27

bb.ac:                                            ; preds = %bb.x
  %i.ds = load ptr, ptr %i.u, align 8, !tbaa !123
  %i.dt = getelementptr i8, ptr %i.ds, i64 16
  %.val76.i = load i64, ptr %i.dt, align 8, !tbaa !125 ; 7 uses
  %i.du = trunc i64 %.val76.i to i32              ; 2 uses
  %i.dv = getelementptr i8, ptr %0, i64 80        ; 2 uses
  %i.dw = icmp sgt i64 %.val76.i, 0
  br i1 %i.dw, label %.lr.ph.i.i24, label %get_localsplus_counts.exit.i

.lr.ph.i.i24:                                     ; preds = %bb.ac
  %i.dx = load ptr, ptr %i.dv, align 8, !tbaa !124
  %i.dy = getelementptr i8, ptr %i.dx, i64 32     ; 2 uses
  %min.iters.check = icmp ult i64 %.val76.i, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i24
  %i.dz = add nsw i64 %.val76.i, -1               ; 2 uses
  %i.ea = trunc i64 %i.dz to i32
  %i.eb = icmp ugt i32 %i.ea, 2147483646
  %i.ec = icmp ugt i64 %i.dz, 4294967295
  %i.ed = or i1 %i.eb, %i.ec
  br i1 %i.ed, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %.val76.i, 8589934588          ; 4 uses
  %i.ee = trunc i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %predphi90, %vector.body ]
  %vec.phi85 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %predphi89.a, %vector.body ]
  %vec.phi86 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %predphi87, %vector.body ]
  %i.ef = getelementptr i8, ptr %i.dy, i64 %index
  %wide.load = load <4 x i8>, ptr %i.ef, align 1, !tbaa !106 ; 2 uses
  %i.eg = zext <4 x i8> %wide.load to <4 x i32>   ; 3 uses
  %i.eh = and <4 x i32> %i.eg, splat (i32 32)     ; 2 uses
  %i.ei = icmp eq <4 x i32> %i.eh, zeroinitializer
  %i.ej = lshr <4 x i32> %i.eg, splat (i32 6)
  %i.ek = and <4 x i32> %i.ej, splat (i32 1)
  %i.el = and <4 x i32> %i.eg, splat (i32 96)
  %i.em = icmp ne <4 x i32> %i.el, zeroinitializer ; 2 uses
  %i.en = lshr <4 x i8> %wide.load, splat (i8 7)
  %i.eo = zext nneg <4 x i8> %i.en to <4 x i32>
  %predphi.a = select <4 x i1> %i.em, <4 x i32> zeroinitializer, <4 x i32> %i.eo
  %predphi87 = add <4 x i32> %vec.phi86, %predphi.a ; 2 uses
  %i.ep = zext <4 x i1> %i.em to <4 x i32>
  %predphi89.v = select <4 x i1> %i.ei, <4 x i32> %i.ep, <4 x i32> %i.ek
  %predphi89.a = add <4 x i32> %vec.phi85, %predphi89.v ; 2 uses
  %i.eq = lshr exact <4 x i32> %i.eh, splat (i32 5)
  %predphi90 = add <4 x i32> %vec.phi, %i.eq      ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.er = icmp eq i64 %index.next, %n.vec
  br i1 %i.er, label %middle.block, label %vector.body, !llvm.loop !142

middle.block:                                     ; preds = %vector.body
  %i.es = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %predphi90) ; 2 uses
  %i.et = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %predphi89.a) ; 2 uses
  %i.eu = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %predphi87) ; 2 uses
  %cmp.n = icmp eq i64 %.val76.i, %n.vec
  br i1 %cmp.n, label %get_localsplus_counts.exit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph.i.i24, %middle.block
  %.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.i24 ], [ %n.vec, %middle.block ]
  %.05.i.i.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.i24 ], [ %i.es, %middle.block ]
  %.0224.i.i.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.i24 ], [ %i.ee, %middle.block ]
  %.0233.i.i.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.i24 ], [ %i.et, %middle.block ]
  %.0252.i.i.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.i24 ], [ %i.eu, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.ah
  %i.ev = phi i64 [ %i.fh, %bb.ah ], [ %.ph, %scalar.ph.preheader ]
  %.05.i.i = phi i32 [ %.1.i.i, %bb.ah ], [ %.05.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %.0224.i.i = phi i32 [ %i.fg, %bb.ah ], [ %.0224.i.i.ph, %scalar.ph.preheader ]
  %.0233.i.i = phi i32 [ %.124.i.i, %bb.ah ], [ %.0233.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %.0252.i.i = phi i32 [ %.126.i.i, %bb.ah ], [ %.0252.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ew = getelementptr i8, ptr %i.dy, i64 %i.ev
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !106 ; 2 uses
  %i.ey = zext i8 %i.ex to i32                    ; 3 uses
  %i.ez = and i32 %i.ey, 32
  %.not31.i.i = icmp eq i32 %i.ez, 0
  br i1 %.not31.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %scalar.ph
  %i.fa = add i32 %.05.i.i, 1
  %i.fb = lshr i32 %i.ey, 6
  %i.fc = and i32 %i.fb, 1
  %spec.select.i.i = add i32 %i.fc, %.0233.i.i
  br label %bb.ah

bb.ae:                                            ; preds = %scalar.ph
  %i.fd = and i32 %i.ey, 64
  %.not32.i.i = icmp eq i32 %i.fd, 0
  br i1 %.not32.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fe = add i32 %.0233.i.i, 1
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %.lobit.i.i = lshr i8 %i.ex, 7
  %i.ff = zext nneg i8 %.lobit.i.i to i32
  %spec.select35.i.i = add i32 %.0252.i.i, %i.ff
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ad
  %.126.i.i = phi i32 [ %.0252.i.i, %bb.ad ], [ %spec.select35.i.i, %bb.ag ], [ %.0252.i.i, %bb.af ] ; 2 uses
  %.124.i.i = phi i32 [ %spec.select.i.i, %bb.ad ], [ %.0233.i.i, %bb.ag ], [ %i.fe, %bb.af ] ; 2 uses
  %.1.i.i = phi i32 [ %i.fa, %bb.ad ], [ %.05.i.i, %bb.ag ], [ %.05.i.i, %bb.af ] ; 2 uses
  %i.fg = add i32 %.0224.i.i, 1                   ; 2 uses
  %i.fh = sext i32 %i.fg to i64                   ; 2 uses
  %i.fi = icmp sgt i64 %.val76.i, %i.fh
  br i1 %i.fi, label %scalar.ph, label %get_localsplus_counts.exit.i, !llvm.loop !143

get_localsplus_counts.exit.i:                     ; preds = %bb.ah, %middle.block, %bb.ac
  %.025.lcssa.i.i = phi i32 [ 0, %bb.ac ], [ %i.eu, %middle.block ], [ %.126.i.i, %bb.ah ]
  %.023.lcssa.i.i = phi i32 [ 0, %bb.ac ], [ %i.et, %middle.block ], [ %.124.i.i, %bb.ah ]
  %.0.lcssa.i.i = phi i32 [ 0, %bb.ac ], [ %i.es, %middle.block ], [ %.1.i.i, %bb.ah ]
  %i.fj = getelementptr i8, ptr %0, i64 100       ; 4 uses
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !111
  %i.fl = icmp eq i32 %i.fk, 0
  br i1 %i.fl, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %get_localsplus_counts.exit.i
  store i32 1, ptr %i.fj, align 4, !tbaa !111
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %get_localsplus_counts.exit.i
  %i.fm = load ptr, ptr %i.d, align 8, !tbaa !11  ; 5 uses
  %i.fn = load ptr, ptr %0, align 8, !tbaa !128   ; 3 uses
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !106 ; 2 uses
  %i.fp = icmp ugt i32 %i.fo, -1073741825
  br i1 %i.fp, label %_Py_NewRef.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fq = add nuw i32 %i.fo, 1
  store i32 %i.fq, ptr %i.fn, align 8, !tbaa !106
  br label %_Py_NewRef.exit.i

_Py_NewRef.exit.i:                                ; preds = %bb.ak, %bb.aj
  %i.fr = getelementptr i8, ptr %i.dm, i64 112    ; 2 uses
  store ptr %i.fn, ptr %i.fr, align 8, !tbaa !144
  %i.fs = getelementptr i8, ptr %0, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !126 ; 3 uses
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !106 ; 2 uses
  %i.fv = icmp ugt i32 %i.fu, -1073741825
  br i1 %i.fv, label %_Py_NewRef.exit79.i, label %bb.al

bb.al:                                            ; preds = %_Py_NewRef.exit.i
  %i.fw = add nuw i32 %i.fu, 1
  store i32 %i.fw, ptr %i.ft, align 8, !tbaa !106
  br label %_Py_NewRef.exit79.i

_Py_NewRef.exit79.i:                              ; preds = %bb.al, %_Py_NewRef.exit.i
  %i.fx = getelementptr i8, ptr %i.dm, i64 120    ; 2 uses
  store ptr %i.ft, ptr %i.fx, align 8, !tbaa !147
  %i.fy = getelementptr i8, ptr %0, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !127 ; 3 uses
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !106 ; 2 uses
  %i.gb = icmp ugt i32 %i.ga, -1073741825
  br i1 %i.gb, label %_Py_NewRef.exit80.i, label %bb.am

bb.am:                                            ; preds = %_Py_NewRef.exit79.i
  %i.gc = add nuw i32 %i.ga, 1
  store i32 %i.gc, ptr %i.fz, align 8, !tbaa !106
  br label %_Py_NewRef.exit80.i

_Py_NewRef.exit80.i:                              ; preds = %bb.am, %_Py_NewRef.exit79.i
  %i.gd = getelementptr i8, ptr %i.dm, i64 128    ; 2 uses
  store ptr %i.fz, ptr %i.gd, align 8, !tbaa !148
  call void @_PyUnicode_InternMortal(ptr noundef %i.fm, ptr noundef nonnull %i.fr) #14
  call void @_PyUnicode_InternMortal(ptr noundef %i.fm, ptr noundef nonnull %i.fx) #14
  call void @_PyUnicode_InternMortal(ptr noundef %i.fm, ptr noundef nonnull %i.gd) #14
  %i.ge = getelementptr i8, ptr %0, i64 24
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !112
  %i.gg = getelementptr i8, ptr %i.dm, i64 48
  store i32 %i.gf, ptr %i.gg, align 8, !tbaa !149
  %i.gh = getelementptr i8, ptr %0, i64 40
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !150
  %i.gj = getelementptr i8, ptr %i.dm, i64 68
  store i32 %i.gi, ptr %i.gj, align 4, !tbaa !151
  %i.gk = getelementptr i8, ptr %0, i64 48
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !129 ; 3 uses
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !106 ; 2 uses
  %i.gn = icmp ugt i32 %i.gm, -1073741825
  br i1 %i.gn, label %_Py_NewRef.exit81.i, label %bb.an

bb.an:                                            ; preds = %_Py_NewRef.exit80.i
  %i.go = add nuw i32 %i.gm, 1
  store i32 %i.go, ptr %i.gl, align 8, !tbaa !106
  br label %_Py_NewRef.exit81.i

_Py_NewRef.exit81.i:                              ; preds = %bb.an, %_Py_NewRef.exit80.i
  %i.gp = getelementptr i8, ptr %i.dm, i64 136
  store ptr %i.gl, ptr %i.gp, align 8, !tbaa !152
  %i.gq = load ptr, ptr %i.q, align 8, !tbaa !121 ; 3 uses
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !106 ; 2 uses
  %i.gs = icmp ugt i32 %i.gr, -1073741825
  br i1 %i.gs, label %_Py_NewRef.exit82.i, label %bb.ao

bb.ao:                                            ; preds = %_Py_NewRef.exit81.i
  %i.gt = add nuw i32 %i.gr, 1
  store i32 %i.gt, ptr %i.gq, align 8, !tbaa !106
  br label %_Py_NewRef.exit82.i

_Py_NewRef.exit82.i:                              ; preds = %bb.ao, %_Py_NewRef.exit81.i
  %i.gu = getelementptr i8, ptr %i.dm, i64 24
  store ptr %i.gq, ptr %i.gu, align 8, !tbaa !153
  %i.gv = load ptr, ptr %i.b, align 8, !tbaa !122 ; 3 uses
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !106 ; 2 uses
  %i.gx = icmp ugt i32 %i.gw, -1073741825
  br i1 %i.gx, label %_Py_NewRef.exit83.i, label %bb.ap

bb.ap:                                            ; preds = %_Py_NewRef.exit82.i
  %i.gy = add nuw i32 %i.gw, 1
  store i32 %i.gy, ptr %i.gv, align 8, !tbaa !106
  br label %_Py_NewRef.exit83.i

_Py_NewRef.exit83.i:                              ; preds = %bb.ap, %_Py_NewRef.exit82.i
  %i.gz = getelementptr i8, ptr %i.dm, i64 32
  store ptr %i.gv, ptr %i.gz, align 8, !tbaa !154
  %i.ha = load ptr, ptr %i.u, align 8, !tbaa !123 ; 3 uses
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !106 ; 2 uses
  %i.hc = icmp ugt i32 %i.hb, -1073741825
  br i1 %i.hc, label %_Py_NewRef.exit84.i, label %bb.aq

bb.aq:                                            ; preds = %_Py_NewRef.exit83.i
  %i.hd = add nuw i32 %i.hb, 1
  store i32 %i.hd, ptr %i.ha, align 8, !tbaa !106
  br label %_Py_NewRef.exit84.i

_Py_NewRef.exit84.i:                              ; preds = %bb.aq, %_Py_NewRef.exit83.i
  %i.he = getelementptr i8, ptr %i.dm, i64 96
  store ptr %i.ha, ptr %i.he, align 8, !tbaa !155
  %i.hf = load ptr, ptr %i.dv, align 8, !tbaa !124 ; 3 uses
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !106 ; 2 uses
  %i.hh = icmp ugt i32 %i.hg, -1073741825
  br i1 %i.hh, label %_Py_NewRef.exit85.i, label %bb.ar

bb.ar:                                            ; preds = %_Py_NewRef.exit84.i
  %i.hi = add nuw i32 %i.hg, 1
  store i32 %i.hi, ptr %i.hf, align 8, !tbaa !106
  br label %_Py_NewRef.exit85.i

_Py_NewRef.exit85.i:                              ; preds = %bb.ar, %_Py_NewRef.exit84.i
  %i.hj = getelementptr i8, ptr %i.dm, i64 104
  store ptr %i.hf, ptr %i.hj, align 8, !tbaa !156
end_hunk_1
