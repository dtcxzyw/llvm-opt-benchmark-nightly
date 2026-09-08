Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/codeobject?download=true
inline.NumInlined: 358
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_PyCode_Validate:bb.a
  %i.k = getelementptr i8, ptr %0, i64 100
  %i.l = load i32, ptr %i.k, align 4, !tbaa !119
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.z, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %0, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !120  ; 3 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.z, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !121  ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.z, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr i8, ptr %i.r, i64 8
  %.val69.a = load ptr, ptr %i.t, align 8, !tbaa !122
  %i.u = getelementptr i8, ptr %.val69.a, i64 168
  %.val79.a = load i64, ptr %i.u, align 8, !tbaa !128
  %i.v = and i64 %.val79.a, 134217728
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %bb.z, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr i8, ptr %0, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !129  ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.z, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr i8, ptr %i.x, i64 8
  %.val68.a = load ptr, ptr %i.z, align 8, !tbaa !122
  %i.aa = getelementptr i8, ptr %.val68.a, i64 168
  %.val78.a = load i64, ptr %i.aa, align 8, !tbaa !128
  %i.ab = and i64 %.val78.a, 67108864
  %.not49 = icmp eq i64 %i.ab, 0
  br i1 %.not49, label %bb.z, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr i8, ptr %0, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !130 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.z, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr i8, ptr %i.ad, i64 8
  %.val67.a = load ptr, ptr %i.af, align 8, !tbaa !122
  %i.ag = getelementptr i8, ptr %.val67.a, i64 168
  %.val77.a = load i64, ptr %i.ag, align 8, !tbaa !128
  %i.ah = and i64 %.val77.a, 67108864
  %.not50 = icmp eq i64 %i.ah, 0
  br i1 %.not50, label %bb.z, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr i8, ptr %0, i64 72
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !131 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.z, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr i8, ptr %i.aj, i64 8
  %.val66.a = load ptr, ptr %i.al, align 8, !tbaa !122
  %i.am = getelementptr i8, ptr %.val66.a, i64 168
  %.val76.a = load i64, ptr %i.am, align 8, !tbaa !128
  %i.an = and i64 %.val76.a, 67108864
  %.not51 = icmp eq i64 %i.an, 0
  br i1 %.not51, label %bb.z, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr i8, ptr %0, i64 80
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !132 ; 4 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.z, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr i8, ptr %i.ap, i64 8
  %.val65.a = load ptr, ptr %i.ar, align 8, !tbaa !122
  %i.as = getelementptr i8, ptr %.val65.a, i64 168
  %.val75.a = load i64, ptr %i.as, align 8, !tbaa !128
  %i.at = and i64 %.val75.a, 134217728
  %.not52 = icmp eq i64 %i.at, 0
  br i1 %.not52, label %bb.z, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = getelementptr i8, ptr %i.aj, i64 16
  %.val80 = load i64, ptr %i.au, align 8, !tbaa !133 ; 2 uses
  %i.av = getelementptr i8, ptr %i.ap, i64 16
  %.val83.a = load i64, ptr %i.av, align 8, !tbaa !133
  %.not53 = icmp eq i64 %.val80, %.val83.a
  br i1 %.not53, label %bb.p, label %bb.z

bb.p:                                             ; preds = %bb.o
  %i.aw = getelementptr i8, ptr %0, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !134 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.z, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = getelementptr i8, ptr %i.ax, i64 8
  %.val64.a = load ptr, ptr %i.az, align 8, !tbaa !122
  %i.ba = getelementptr i8, ptr %.val64.a, i64 168
  %.val74.a = load i64, ptr %i.ba, align 8, !tbaa !128
  %i.bb = and i64 %.val74.a, 268435456
  %.not54 = icmp eq i64 %i.bb, 0
  br i1 %.not54, label %bb.z, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr i8, ptr %0, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !135 ; 2 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.z, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr i8, ptr %i.bd, i64 8
  %.val63.a = load ptr, ptr %i.bf, align 8, !tbaa !122
  %i.bg = getelementptr i8, ptr %.val63.a, i64 168
  %.val73.a = load i64, ptr %i.bg, align 8, !tbaa !128
  %i.bh = and i64 %.val73.a, 268435456
  %.not55 = icmp eq i64 %i.bh, 0
  br i1 %.not55, label %bb.z, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bi = load ptr, ptr %0, align 8, !tbaa !136   ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bk = getelementptr i8, ptr %i.bi, i64 8
  %.val62.a = load ptr, ptr %i.bk, align 8, !tbaa !122
  %i.bl = getelementptr i8, ptr %.val62.a, i64 168
  %.val72.a = load i64, ptr %i.bl, align 8, !tbaa !128
  %i.bm = and i64 %.val72.a, 268435456
  %.not56 = icmp eq i64 %i.bm, 0
  br i1 %.not56, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bn = getelementptr i8, ptr %0, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !137 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bq = getelementptr i8, ptr %i.bo, i64 8
  %.val61 = load ptr, ptr %i.bq, align 8, !tbaa !122
  %i.br = getelementptr i8, ptr %.val61, i64 168
  %.val71.a = load i64, ptr %i.br, align 8, !tbaa !128
  %i.bs = and i64 %.val71.a, 134217728
  %.not57 = icmp eq i64 %i.bs, 0
  br i1 %.not57, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bt = getelementptr i8, ptr %0, i64 104
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !138 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bw = getelementptr i8, ptr %i.bu, i64 8
  %.val = load ptr, ptr %i.bw, align 8, !tbaa !122
  %i.bx = getelementptr i8, ptr %.val, i64 168
  %.val70 = load i64, ptr %i.bx, align 8, !tbaa !128
  %i.by = and i64 %.val70, 134217728
  %.not58 = icmp eq i64 %i.by, 0
  br i1 %.not58, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.1, i32 noundef 465) #14
  br label %bb.ah

bb.aa:                                            ; preds = %bb.y
  %i.bz = getelementptr i8, ptr %i.r, i64 16
  %.val82 = load i64, ptr %i.bz, align 8, !tbaa !133 ; 2 uses
  %i.ca = icmp sgt i64 %.val82, 2147483647
  br i1 %i.ca, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cb = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !113
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
  %i.cg = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !113
  tail call void @PyErr_SetString(ptr noundef %i.cg, ptr noundef nonnull @.str.3) #14
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call fastcc void @get_localsplus_counts(i64 %.val80, ptr noundef nonnull %i.ap, ptr noundef %i.a, ptr noundef null, ptr noundef null)
  %i.ch = load i32, ptr %i.a, align 4, !tbaa !18
  %i.ci = shl i32 %i.o, 29
  %i.cj = ashr i32 %i.ci, 31
  %i.ck = shl i32 %i.o, 28
  %i.cl = ashr i32 %i.ck, 31
  %1 = add i32 %i.i, %i.c
  %i.cm = sub i32 %i.cj, %1
  %i.cn = add i32 %i.cm, %i.cl
  %i.co = add i32 %i.cn, %i.ch
  %i.cp = icmp slt i32 %i.co, 0
  br i1 %i.cp, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cq = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !113
  tail call void @PyErr_SetString(ptr noundef %i.cq, ptr noundef nonnull @.str.4) #14
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
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %predphi14, %vector.body ]
  %vec.phi10 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %predphi13, %vector.body ]
  %vec.phi11 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %predphi, %vector.body ]
  %i.i = getelementptr i8, ptr %i.b, i64 %index
  %wide.load = load <4 x i8>, ptr %i.i, align 1, !tbaa !114 ; 2 uses
  %i.j = zext <4 x i8> %wide.load to <4 x i32>    ; 3 uses
  %i.k = and <4 x i32> %i.j, splat (i32 32)       ; 2 uses
  %i.l = icmp eq <4 x i32> %i.k, zeroinitializer  ; 2 uses
  %i.m = lshr <4 x i32> %i.j, splat (i32 6)
  %i.n = and <4 x i32> %i.m, splat (i32 1)
  %i.o = and <4 x i32> %i.j, splat (i32 96)
  %i.p = icmp ne <4 x i32> %i.o, splat (i32 64)   ; 2 uses
  %i.q = lshr <4 x i8> %wide.load, splat (i8 7)
  %i.r = zext nneg <4 x i8> %i.q to <4 x i32>
  %i.s = lshr exact <4 x i32> %i.k, splat (i32 5)
  %predphi = add <4 x i32> %vec.phi11, %i.s       ; 2 uses
  %i.t = select <4 x i1> %i.l, <4 x i32> zeroinitializer, <4 x i32> %i.n
  %predphi13.v = select <4 x i1> %i.p, <4 x i32> %i.t, <4 x i32> splat (i32 1)
  %predphi13 = add <4 x i32> %vec.phi10, %predphi13.v ; 2 uses
  %.not19 = and <4 x i1> %i.p, %i.l
  %i.u = select <4 x i1> %.not19, <4 x i32> %i.r, <4 x i32> zeroinitializer
  %predphi14 = add <4 x i32> %vec.phi, %i.u       ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !198

middle.block:                                     ; preds = %vector.body
  %i.w = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %predphi14) ; 2 uses
  %i.x = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %predphi13) ; 2 uses
  %i.y = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %predphi) ; 2 uses
  %cmp.n = icmp eq i64 %.16.val, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph, %middle.block
  %.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.05.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %i.h, %middle.block ]
  %.0224.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %i.w, %middle.block ]
  %.0233.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %i.x, %middle.block ]
  %.0252.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %i.y, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.f
  %i.z = phi i64 [ %i.al, %bb.f ], [ %.ph, %scalar.ph.preheader ]
  %.05 = phi i32 [ %i.ak, %bb.f ], [ %.05.ph, %scalar.ph.preheader ]
  %.0224 = phi i32 [ %.1, %bb.f ], [ %.0224.ph, %scalar.ph.preheader ] ; 3 uses
  %.0233 = phi i32 [ %.124, %bb.f ], [ %.0233.ph, %scalar.ph.preheader ] ; 3 uses
  %.0252 = phi i32 [ %.126, %bb.f ], [ %.0252.ph, %scalar.ph.preheader ] ; 3 uses
  %i.aa = getelementptr i8, ptr %i.b, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !114 ; 2 uses
  %i.ac = zext i8 %i.ab to i32                    ; 3 uses
  %i.ad = and i32 %i.ac, 32
  %.not31 = icmp eq i32 %i.ad, 0
  br i1 %.not31, label %bb.c, label %bb.b

bb.b:                                             ; preds = %scalar.ph
  %i.ae = add i32 %.0252, 1
  %i.af = lshr i32 %i.ac, 6
  %i.ag = and i32 %i.af, 1
  %spec.select = add i32 %i.ag, %.0233
  br label %bb.f

bb.c:                                             ; preds = %scalar.ph
  %i.ah = and i32 %i.ac, 64
  %.not32 = icmp eq i32 %i.ah, 0
  br i1 %.not32, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = add i32 %.0233, 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.lobit = lshr i8 %i.ab, 7
  %i.aj = zext nneg i8 %.lobit to i32
  %spec.select35 = add i32 %.0224, %i.aj
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b, %bb.d
  %.126 = phi i32 [ %i.ae, %bb.b ], [ %.0252, %bb.e ], [ %.0252, %bb.d ] ; 2 uses
  %.124 = phi i32 [ %spec.select, %bb.b ], [ %.0233, %bb.e ], [ %i.ai, %bb.d ] ; 2 uses
  %.1 = phi i32 [ %.0224, %bb.b ], [ %spec.select35, %bb.e ], [ %.0224, %bb.d ] ; 2 uses
  %i.ak = add i32 %.05, 1                         ; 2 uses
  %i.al = sext i32 %i.ak to i64                   ; 2 uses
  %i.am = icmp sgt i64 %.16.val, %i.al
  br i1 %i.am, label %scalar.ph, label %._crit_edge, !llvm.loop !199

._crit_edge:                                      ; preds = %bb.f, %middle.block, %bb.a
  %.025.lcssa = phi i32 [ 0, %bb.a ], [ %i.y, %middle.block ], [ %.126, %bb.f ]
  %.023.lcssa = phi i32 [ 0, %bb.a ], [ %i.x, %middle.block ], [ %.124, %bb.f ]
  %.022.lcssa = phi i32 [ 0, %bb.a ], [ %i.w, %middle.block ], [ %.1, %bb.f ]
  store i32 %.025.lcssa, ptr %1, align 4, !tbaa !18
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  store i32 %.023.lcssa, ptr %2, align 4, !tbaa !18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %.not30 = icmp eq ptr %3, null
  br i1 %.not30, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %.022.lcssa, ptr %3, align 4, !tbaa !18
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyCode_New(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !130  ; 2 uses
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp) ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.f = getelementptr i8, ptr %i.c, i64 16
  %.val.i.i = load i64, ptr %i.f, align 8, !tbaa !133
  %i.g = add i64 %.val.i.i, -1                    ; 2 uses
  %i.h = icmp sgt i64 %i.g, -1
  br i1 %i.h, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.c, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.j = phi i64 [ %i.g, %.lr.ph.i.i ], [ %i.o, %bb.d ] ; 3 uses
  %i.k = getelementptr [8 x i8], ptr %i.i, i64 %i.j ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !113  ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %intern_strings.exit9.thread.sink.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %i.l, i64 8
  %.val14.i.i = load ptr, ptr %i.n, align 8, !tbaa !122
  %.not.i.i = icmp eq ptr %.val14.i.i, @PyUnicode_Type
  br i1 %.not.i.i, label %bb.d, label %intern_strings.exit9.thread.sink.split.i

bb.d:                                             ; preds = %bb.c
  tail call void @_PyUnicode_InternImmortal(ptr noundef %i.e, ptr noundef nonnull %i.k) #14
  %i.o = add nsw i64 %i.j, -1
  %i.p = icmp sgt i64 %i.j, 0
  br i1 %i.p, label %bb.b, label %.loopexit.i, !llvm.loop !200

.loopexit.i:                                      ; preds = %bb.d, %bb.a
  %i.q = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !129
  %i.s = tail call fastcc i32 @intern_constants(ptr noundef %i.r, ptr noundef null)
  %i.t = icmp slt i32 %i.s, 0
end_hunk_0
