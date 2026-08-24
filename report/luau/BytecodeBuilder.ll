Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/BytecodeBuilder?download=true
inline.NumInlined: 2648
inline.NumDeleted: 1082
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZNK4Luau15BytecodeBuilder15writeClassShapeERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_10ClassShapeE:bb.a

_ZN4LuauL11writeVarIntERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm.exit34: ; preds = %_ZN4LuauL9writeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEh.exit.i32
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.035.046, i64 4 ; 2 uses
  %.not42 = icmp eq ptr %i.bv, %i.az
  br i1 %.not42, label %._crit_edge49, label %.lr.ph48
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4Luau15BytecodeBuilder13writeLineInfoERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1048) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = load i8, ptr @_ZN5FFlag20LuauVirtualBcBuilderE, align 8, !tbaa !226, !range !19, !noundef !20 ; 2 uses
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !150  ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !149  ; 6 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 4 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 2                   ; 4 uses
  %.not.i = icmp eq ptr %i.i, %i.j                ; 2 uses
  br i1 %i.f, label %bb.b, label %.preheader148

.preheader148:                                    ; preds = %bb.a
  br i1 %.not.i, label %_ZNK4Luau15BytecodeBuilder13calcLinesSpanEv.exit, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %_ZNK4Luau15BytecodeBuilder13calcLinesSpanEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.critedge.i
  %.02038.i = phi i64 [ %.pre-phi41.i, %.critedge.i ], [ 0, %bb.b ] ; 6 uses
  %.02137.i = phi i32 [ %.1.i, %.critedge.i ], [ 16777216, %bb.b ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.02038.i
  %i.p = load i32, ptr %i.o, align 4, !tbaa !25   ; 2 uses
  %i.q = sext i32 %.02137.i to i64                ; 2 uses
  %i.r = add i64 %.02038.i, %i.q                  ; 3 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.02038.i, i64 %i.r) ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %.036.i = phi i64 [ %.02038.i, %.lr.ph.i ], [ %i.w, %bb.e ] ; 4 uses
  %.03135.i = phi i32 [ %i.p, %.lr.ph.i ], [ %.sroa.speculated.i, %bb.e ]
  %.03234.i = phi i32 [ %i.p, %.lr.ph.i ], [ %.sroa.speculated27.i, %bb.e ]
  %exitcond.not.i = icmp eq i64 %.036.i, %umax.i
  br i1 %exitcond.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.036.i
  %i.t = load i32, ptr %i.s, align 4, !tbaa !25   ; 2 uses
  %.sroa.speculated27.i = tail call i32 @llvm.smin.i32(i32 %i.t, i32 %.03234.i) ; 2 uses
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %.03135.i, i32 %i.t) ; 2 uses
  %i.u = sub nsw i32 %.sroa.speculated.i, %.sroa.speculated27.i
  %i.v = icmp sgt i32 %i.u, 255
  br i1 %i.v, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = add nuw i64 %.036.i, 1                   ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.n
  br i1 %i.x, label %bb.c, label %.critedge.i, !llvm.loop !313

bb.f:                                             ; preds = %bb.d, %bb.c
  %.036.lcssa.i = phi i64 [ %.036.i, %bb.d ], [ %umax.i, %bb.c ]
  %i.y = sub i64 %.036.lcssa.i, %.02038.i         ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.q
  br i1 %i.z, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %bb.f
  %i.aa = trunc i64 %i.y to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.0.i.i = phi i32 [ 0, %bb.g ], [ %i.ac, %bb.h ] ; 3 uses
  %i.ab = shl i32 2, %.0.i.i
  %.not.i.i = icmp sgt i32 %i.ab, %i.aa
  %i.ac = add nuw nsw i32 %.0.i.i, 1
  br i1 %.not.i.i, label %_ZN4LuauL4log2Ei.exit.i, label %bb.h, !llvm.loop !314

_ZN4LuauL4log2Ei.exit.i:                          ; preds = %bb.h
  %i.ad = shl nuw i32 1, %.0.i.i                  ; 2 uses
  %.pre.i = sext i32 %i.ad to i64
  %.pre40.i = add i64 %.02038.i, %.pre.i
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.e, %_ZN4LuauL4log2Ei.exit.i, %bb.f
  %.pre-phi41.i = phi i64 [ %i.r, %bb.f ], [ %.pre40.i, %_ZN4LuauL4log2Ei.exit.i ], [ %i.r, %bb.e ] ; 2 uses
  %.1.i = phi i32 [ %.02137.i, %bb.f ], [ %i.ad, %_ZN4LuauL4log2Ei.exit.i ], [ %.02137.i, %bb.e ] ; 2 uses
  %i.ae = icmp ult i64 %.pre-phi41.i, %i.n
  br i1 %i.ae, label %.lr.ph.i, label %_ZNK4Luau15BytecodeBuilder13calcLinesSpanEv.exit, !llvm.loop !315

.lr.ph:                                           ; preds = %.preheader148, %.critedge
  %.076155 = phi i64 [ %.pre-phi181, %.critedge ], [ 0, %.preheader148 ] ; 6 uses
  %.077154 = phi i32 [ %.178, %.critedge ], [ 16777216, %.preheader148 ] ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.076155
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !25 ; 2 uses
  %i.ah = sext i32 %.077154 to i64                ; 2 uses
  %i.ai = add i64 %.076155, %i.ah                 ; 3 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %.076155, i64 %i.ai) ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.k
  %.075153 = phi i64 [ %.076155, %.lr.ph ], [ %i.an, %bb.k ] ; 4 uses
  %.0134152 = phi i32 [ %i.ag, %.lr.ph ], [ %.sroa.speculated124, %bb.k ]
  %.0135151 = phi i32 [ %i.ag, %.lr.ph ], [ %.sroa.speculated129, %bb.k ]
  %exitcond.not = icmp eq i64 %.075153, %umax
  br i1 %exitcond.not, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.075153
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !25 ; 2 uses
  %.sroa.speculated129 = tail call i32 @llvm.smin.i32(i32 %i.ak, i32 %.0135151) ; 2 uses
  %.sroa.speculated124 = tail call i32 @llvm.smax.i32(i32 %.0134152, i32 %i.ak) ; 2 uses
  %i.al = sub nsw i32 %.sroa.speculated124, %.sroa.speculated129
  %i.am = icmp sgt i32 %i.al, 255
  br i1 %i.am, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = add nuw i64 %.075153, 1                 ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.n
  br i1 %i.ao, label %bb.i, label %.critedge, !llvm.loop !316

bb.l:                                             ; preds = %bb.j, %bb.i
  %.075153.lcssa = phi i64 [ %.075153, %bb.j ], [ %umax, %bb.i ]
  %i.ap = sub i64 %.075153.lcssa, %.076155        ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %i.ah
  br i1 %i.aq, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.ar = trunc i64 %i.ap to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.0.i = phi i32 [ 0, %bb.m ], [ %i.at, %bb.n ]  ; 3 uses
  %i.as = shl i32 2, %.0.i
  %.not.i87 = icmp sgt i32 %i.as, %i.ar
  %i.at = add nuw nsw i32 %.0.i, 1
  br i1 %.not.i87, label %_ZN4LuauL4log2Ei.exit, label %bb.n, !llvm.loop !314

_ZN4LuauL4log2Ei.exit:                            ; preds = %bb.n
  %i.au = shl nuw i32 1, %.0.i                    ; 2 uses
  %.pre178 = sext i32 %i.au to i64
  %.pre180 = add i64 %.076155, %.pre178
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %_ZN4LuauL4log2Ei.exit, %bb.l
  %.pre-phi181 = phi i64 [ %i.ai, %bb.l ], [ %.pre180, %_ZN4LuauL4log2Ei.exit ], [ %i.ai, %bb.k ] ; 2 uses
  %.178 = phi i32 [ %.077154, %bb.l ], [ %i.au, %_ZN4LuauL4log2Ei.exit ], [ %.077154, %bb.k ] ; 2 uses
  %i.av = icmp ult i64 %.pre-phi181, %i.n
  br i1 %i.av, label %.lr.ph, label %_ZNK4Luau15BytecodeBuilder13calcLinesSpanEv.exit, !llvm.loop !317

_ZNK4Luau15BytecodeBuilder13calcLinesSpanEv.exit: ; preds = %.critedge, %.critedge.i, %.preheader148, %bb.b
  %.pre-phi177 = phi i64 [ %i.l, %.critedge.i ], [ %i.k, %bb.b ], [ %i.k, %.preheader148 ], [ %i.l, %.critedge ]
  %.279 = phi i32 [ %.1.i, %.critedge.i ], [ 16777216, %bb.b ], [ 16777216, %.preheader148 ], [ %.178, %.critedge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #35
  store i32 0, ptr %i.d, align 4, !tbaa !25
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ay = sub i64 %i.k, %.pre-phi177
  %i.az = ashr exact i64 %i.ay, 2
  %i.ba = add nsw i64 %i.az, -1
  %i.bb = sext i32 %.279 to i64                   ; 11 uses
  %i.bc = udiv i64 %i.ba, %i.bb                   ; 2 uses
  %i.bd = add i64 %i.bc, 1                        ; 6 uses
  %i.be = icmp ugt i64 %i.bd, 1
  br i1 %i.be, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNK4Luau15BytecodeBuilder13calcLinesSpanEv.exit
  %i.bf = icmp ugt i64 %i.bd, 2305843009213693951
  br i1 %i.bf, label %.noexc110, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i

.noexc110:                                        ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.165) #37
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.o
  %i.bg = shl nuw nsw i64 %i.bd, 2
  %i.bh = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #33 ; 5 uses
  store i32 0, ptr %i.bh, align 4, !tbaa !25
  %i.bi = getelementptr i8, ptr %i.bh, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.bc, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bi, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !25
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bd
  %i.bk = ptrtoint ptr %i.bj to i64
  %.pre = load i8, ptr @_ZN5FFlag20LuauVirtualBcBuilderE, align 8, !tbaa !226, !range !19
  br label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i, %_ZNK4Luau15BytecodeBuilder13calcLinesSpanEv.exit
  %i.bl = phi i8 [ %.pre, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i ], [ %i.e, %_ZNK4Luau15BytecodeBuilder13calcLinesSpanEv.exit ]
  %.sroa.0.0 = phi ptr [ %i.bh, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i ], [ null, %_ZNK4Luau15BytecodeBuilder13calcLinesSpanEv.exit ] ; 6 uses
  %.sroa.15.0 = phi i64 [ %i.bk, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i ], [ 0, %_ZNK4Luau15BytecodeBuilder13calcLinesSpanEv.exit ] ; 2 uses
  %.074 = phi ptr [ %i.bh, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i ], [ %i.d, %_ZNK4Luau15BytecodeBuilder13calcLinesSpanEv.exit ] ; 4 uses
  %i.bm = trunc nuw i8 %i.bl to i1
  %i.bn = load ptr, ptr %i.ax, align 8, !tbaa !150 ; 2 uses
  %i.bo = load ptr, ptr %i.aw, align 8, !tbaa !149 ; 8 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = ashr exact i64 %i.br, 2                 ; 6 uses
  %.not.i89 = icmp eq ptr %i.bn, %i.bo            ; 2 uses
  br i1 %i.bm, label %bb.q, label %.preheader146

.preheader146:                                    ; preds = %bb.p
  br i1 %.not.i89, label %_ZNK4Luau15BytecodeBuilder16fillBaselineInfoEiPim.exit.preheader, label %.lr.ph163

bb.q:                                             ; preds = %bb.p
  br i1 %.not.i89, label %_ZNK4Luau15BytecodeBuilder16fillBaselineInfoEiPim.exit.preheader, label %.lr.ph23.i

.lr.ph23.i:                                       ; preds = %bb.q, %.critedge.i90
  %indvar207 = phi i64 [ %indvar.next208, %.critedge.i90 ], [ 0, %bb.q ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.critedge.i90 ], [ %i.bb, %bb.q ] ; 2 uses
  %.01422.i = phi i64 [ %i.bv, %.critedge.i90 ], [ 0, %bb.q ] ; 7 uses
  %umin.i = tail call i64 @llvm.umin.i64(i64 %i.bs, i64 %indvars.iv.i) ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.01422.i
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !25 ; 3 uses
  %i.bv = add i64 %.01422.i, %i.bb                ; 3 uses
  %invariant.umin.i = tail call i64 @llvm.umin.i64(i64 %i.bs, i64 %i.bv)
  %or.cond19.i = icmp ult i64 %.01422.i, %invariant.umin.i
  br i1 %or.cond19.i, label %.lr.ph.i91.preheader, label %.critedge.i90

.lr.ph.i91.preheader:                             ; preds = %.lr.ph23.i
  %2 = mul i64 %indvar207, %i.bb
  %3 = sub i64 %umin.i, %2                        ; 3 uses
  %min.iters.check210 = icmp ult i64 %3, 8
  br i1 %min.iters.check210, label %.lr.ph.i91.preheader227, label %vector.ph211

vector.ph211:                                     ; preds = %.lr.ph.i91.preheader
  %n.vec212 = and i64 %3, -8                      ; 3 uses
  %i.bw = add i64 %.01422.i, %n.vec212
  %broadcast.splatinsert213 = insertelement <4 x i32> poison, i32 %i.bu, i64 0
  %broadcast.splat214 = shufflevector <4 x i32> %broadcast.splatinsert213, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.01422.i
  br label %vector.body215

vector.body215:                                   ; preds = %vector.body215, %vector.ph211
  %index216 = phi i64 [ 0, %vector.ph211 ], [ %index.next221, %vector.body215 ] ; 2 uses
  %vec.phi217 = phi <4 x i32> [ %broadcast.splat214, %vector.ph211 ], [ %i.ca, %vector.body215 ]
  %vec.phi218 = phi <4 x i32> [ %broadcast.splat214, %vector.ph211 ], [ %i.cb, %vector.body215 ]
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %index216 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %wide.load219 = load <4 x i32>, ptr %i.by, align 4, !tbaa !25
  %wide.load220 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !25
  %i.ca = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load219, <4 x i32> %vec.phi217) ; 2 uses
  %i.cb = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load220, <4 x i32> %vec.phi218) ; 2 uses
  %index.next221 = add nuw i64 %index216, 8       ; 2 uses
  %i.cc = icmp eq i64 %index.next221, %n.vec212
  br i1 %i.cc, label %middle.block222, label %vector.body215, !llvm.loop !318

middle.block222:                                  ; preds = %vector.body215
  %rdx.minmax223 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ca, <4 x i32> %i.cb)
  %i.cd = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %rdx.minmax223) ; 2 uses
  %cmp.n224 = icmp eq i64 %3, %n.vec212
  br i1 %cmp.n224, label %.critedge.i90, label %.lr.ph.i91.preheader227

.lr.ph.i91.preheader227:                          ; preds = %.lr.ph.i91.preheader, %middle.block222
  %.021.i.ph = phi i64 [ %.01422.i, %.lr.ph.i91.preheader ], [ %i.bw, %middle.block222 ]
  %.01820.i.ph = phi i32 [ %i.bu, %.lr.ph.i91.preheader ], [ %i.cd, %middle.block222 ]
  br label %.lr.ph.i91

.lr.ph.i91:                                       ; preds = %.lr.ph.i91.preheader227, %.lr.ph.i91
  %.021.i = phi i64 [ %i.cg, %.lr.ph.i91 ], [ %.021.i.ph, %.lr.ph.i91.preheader227 ] ; 2 uses
  %.01820.i = phi i32 [ %.sroa.speculated.i92, %.lr.ph.i91 ], [ %.01820.i.ph, %.lr.ph.i91.preheader227 ]
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.021.i
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !25
  %.sroa.speculated.i92 = tail call i32 @llvm.smin.i32(i32 %i.cf, i32 %.01820.i) ; 2 uses
  %i.cg = add nuw i64 %.021.i, 1                  ; 2 uses
  %exitcond.not.i93 = icmp eq i64 %i.cg, %umin.i
  br i1 %exitcond.not.i93, label %.critedge.i90, label %.lr.ph.i91, !llvm.loop !319

.critedge.i90:                                    ; preds = %.lr.ph.i91, %middle.block222, %.lr.ph23.i
  %.018.lcssa.i = phi i32 [ %i.bu, %.lr.ph23.i ], [ %i.cd, %middle.block222 ], [ %.sroa.speculated.i92, %.lr.ph.i91 ]
  %i.ch = udiv i64 %.01422.i, %i.bb
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.074, i64 %i.ch
  store i32 %.018.lcssa.i, ptr %i.ci, align 4, !tbaa !25
  %i.cj = icmp ult i64 %i.bv, %i.bs
  %indvars.iv.next.i = add i64 %indvars.iv.i, %i.bb
  %indvar.next208 = add i64 %indvar207, 1
  br i1 %i.cj, label %.lr.ph23.i, label %_ZNK4Luau15BytecodeBuilder16fillBaselineInfoEiPim.exit.preheader, !llvm.loop !320

.lr.ph163:                                        ; preds = %.preheader146, %.critedge2
  %indvar = phi i64 [ %indvar.next, %.critedge2 ], [ 0, %.preheader146 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge2 ], [ %i.bb, %.preheader146 ] ; 2 uses
  %.069162 = phi i64 [ %i.cm, %.critedge2 ], [ 0, %.preheader146 ] ; 7 uses
  %umin = tail call i64 @llvm.umin.i64(i64 %i.bs, i64 %indvars.iv) ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.069162
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !25 ; 3 uses
  %i.cm = add i64 %.069162, %i.bb                 ; 3 uses
  %invariant.umin = tail call i64 @llvm.umin.i64(i64 %i.bs, i64 %i.cm)
  %or.cond156 = icmp ult i64 %.069162, %invariant.umin
  br i1 %or.cond156, label %.lr.ph159.preheader, label %.critedge2

.lr.ph159.preheader:                              ; preds = %.lr.ph163
  %4 = mul i64 %indvar, %i.bb
  %5 = sub i64 %umin, %4                          ; 3 uses
  %min.iters.check = icmp ult i64 %5, 8
  br i1 %min.iters.check, label %.lr.ph159.preheader229, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph159.preheader
  %n.vec = and i64 %5, -8                         ; 3 uses
  %i.cn = add i64 %.069162, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.cl, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.069162
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.cr, %vector.body ]
  %vec.phi204 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.cs, %vector.body ]
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %index ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %wide.load = load <4 x i32>, ptr %i.cp, align 4, !tbaa !25
  %wide.load205 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !25
  %i.cr = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi) ; 2 uses
  %i.cs = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load205, <4 x i32> %vec.phi204) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ct = icmp eq i64 %index.next, %n.vec
  br i1 %i.ct, label %middle.block, label %vector.body, !llvm.loop !321

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.cr, <4 x i32> %i.cs)
  %i.cu = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %5, %n.vec
  br i1 %cmp.n, label %.critedge2, label %.lr.ph159.preheader229

.lr.ph159.preheader229:                           ; preds = %.lr.ph159.preheader, %middle.block
  %.068158.ph = phi i64 [ %.069162, %.lr.ph159.preheader ], [ %i.cn, %middle.block ]
  %.0133157.ph = phi i32 [ %i.cl, %.lr.ph159.preheader ], [ %i.cu, %middle.block ]
  br label %.lr.ph159

.lr.ph159:                                        ; preds = %.lr.ph159.preheader229, %.lr.ph159
  %.068158 = phi i64 [ %i.cx, %.lr.ph159 ], [ %.068158.ph, %.lr.ph159.preheader229 ] ; 2 uses
  %.0133157 = phi i32 [ %.sroa.speculated, %.lr.ph159 ], [ %.0133157.ph, %.lr.ph159.preheader229 ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.068158
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !25
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.cw, i32 %.0133157) ; 2 uses
  %i.cx = add nuw i64 %.068158, 1                 ; 2 uses
  %exitcond176.not = icmp eq i64 %i.cx, %umin
  br i1 %exitcond176.not, label %.critedge2, label %.lr.ph159, !llvm.loop !322

.critedge2:                                       ; preds = %.lr.ph159, %middle.block, %.lr.ph163
  %.0133.lcssa = phi i32 [ %i.cl, %.lr.ph163 ], [ %i.cu, %middle.block ], [ %.sroa.speculated, %.lr.ph159 ]
  %i.cy = udiv i64 %.069162, %i.bb
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.074, i64 %i.cy
  store i32 %.0133.lcssa, ptr %i.cz, align 4, !tbaa !25
  %i.da = icmp ult i64 %i.cm, %i.bs
  %indvars.iv.next = add i64 %indvars.iv, %i.bb
  %indvar.next = add i64 %indvar, 1
  br i1 %i.da, label %.lr.ph163, label %_ZNK4Luau15BytecodeBuilder16fillBaselineInfoEiPim.exit.preheader, !llvm.loop !323

_ZNK4Luau15BytecodeBuilder16fillBaselineInfoEiPim.exit.preheader: ; preds = %.critedge2, %.critedge.i90, %.preheader146, %bb.q
  br label %_ZNK4Luau15BytecodeBuilder16fillBaselineInfoEiPim.exit

_ZNK4Luau15BytecodeBuilder16fillBaselineInfoEiPim.exit: ; preds = %_ZNK4Luau15BytecodeBuilder16fillBaselineInfoEiPim.exit.preheader, %_ZNK4Luau15BytecodeBuilder16fillBaselineInfoEiPim.exit
  %.0.i95 = phi i32 [ %i.dc, %_ZNK4Luau15BytecodeBuilder16fillBaselineInfoEiPim.exit ], [ 0, %_ZNK4Luau15BytecodeBuilder16fillBaselineInfoEiPim.exit.preheader ] ; 4 uses
  %i.db = shl i32 2, %.0.i95
  %.not.i96 = icmp slt i32 %.279, %i.db
  %i.dc = add nuw nsw i32 %.0.i95, 1
  br i1 %.not.i96, label %_ZN4LuauL4log2Ei.exit97, label %_ZNK4Luau15BytecodeBuilder16fillBaselineInfoEiPim.exit, !llvm.loop !314

_ZN4LuauL4log2Ei.exit97:                          ; preds = %_ZNK4Luau15BytecodeBuilder16fillBaselineInfoEiPim.exit
  %i.dd = trunc i32 %.0.i95 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.dd, ptr %i.c, align 1, !tbaa !142
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !141
  %i.dg = icmp eq i64 %i.df, 4611686018427387903
  br i1 %i.dg, label %bb.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i

bb.r:                                             ; preds = %_ZN4LuauL4log2Ei.exit97
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.162) #37
          to label %.noexc98 unwind label %bb.s

.noexc98:                                         ; preds = %bb.r
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %_ZN4LuauL4log2Ei.exit97
  %i.dh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %_ZN4LuauL9writeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEh.exit unwind label %bb.s ; 0 uses

_ZN4LuauL9writeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEh.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.di = load ptr, ptr %i.ax, align 8, !tbaa !150
  %i.dj = load ptr, ptr %i.aw, align 8, !tbaa !149 ; 2 uses
  %.not171 = icmp eq ptr %i.di, %i.dj
  br i1 %.not171, label %.preheader, label %.lr.ph166

.lr.ph166:                                        ; preds = %_ZN4LuauL9writeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEh.exit
  %i.dk = zext nneg i32 %.0.i95 to i64
  br label %bb.t

.preheader:                                       ; preds = %bb.v, %_ZN4LuauL9writeByteERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEh.exit
  %.not172 = icmp eq i64 %i.bd, 0
  br i1 %.not172, label %._crit_edge, label %.lr.ph169

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i, %bb.r
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.t:                                             ; preds = %.lr.ph166, %bb.v
  %i.dm = phi ptr [ %i.dj, %.lr.ph166 ], [ %i.ea, %bb.v ]
  %.066165 = phi i64 [ 0, %.lr.ph166 ], [ %i.dy, %bb.v ] ; 3 uses
  %.067164 = phi i32 [ 0, %.lr.ph166 ], [ %i.ds, %bb.v ]
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %.066165
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !25
  %i.dp = lshr i64 %.066165, %i.dk
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.074, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !25
  %i.ds = sub nsw i32 %i.do, %i.dr                ; 2 uses
  %i.dt = sub i32 %i.ds, %.067164
  %i.du = trunc i32 %i.dt to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.du, ptr %i.b, align 1, !tbaa !142
  %i.dv = load i64, ptr %i.de, align 8, !tbaa !141
  %i.dw = icmp eq i64 %i.dv, 4611686018427387903
  br i1 %i.dw, label %bb.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i100

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.162) #37
          to label %.noexc101 unwind label %.loopexit.split-lp142

.noexc101:                                        ; preds = %bb.u
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i100: ; preds = %bb.t
  %i.dx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %bb.v unwind label %.loopexit141 ; 0 uses

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.dy = add nuw i64 %.066165, 1                 ; 2 uses
  %i.dz = load ptr, ptr %i.ax, align 8, !tbaa !150
  %i.ea = load ptr, ptr %i.aw, align 8, !tbaa !149 ; 2 uses
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = ashr exact i64 %i.ed, 2
  %i.ef = icmp ult i64 %i.dy, %i.ee
  br i1 %i.ef, label %bb.t, label %.preheader, !llvm.loop !324

.loopexit141:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i100
  %lpad.loopexit143 = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit.split-lp142:                            ; preds = %bb.u
  %lpad.loopexit.split-lp144 = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

._crit_edge:                                      ; preds = %bb.y, %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %._crit_edge
  %i.eg = ptrtoint ptr %.sroa.0.0 to i64
  %i.eh = sub i64 %.sroa.15.0, %i.eg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.eh) #34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #35
  ret void

.lr.ph169:                                        ; preds = %.preheader, %bb.y
  %.0168 = phi i64 [ %i.eq, %bb.y ], [ 0, %.preheader ] ; 2 uses
  %.065167 = phi i32 [ %i.ep, %bb.y ], [ 0, %.preheader ]
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.074, i64 %.0168 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !25
  %i.ek = sub nsw i32 %i.ej, %.065167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.ek, ptr %i.a, align 4, !tbaa !25
  %i.el = load i64, ptr %i.de, align 8, !tbaa !141
  %i.em = and i64 %i.el, -4
  %i.en = icmp eq i64 %i.em, 4611686018427387900
  br i1 %i.en, label %bb.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i104

bb.x:                                             ; preds = %.lr.ph169
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.162) #37
          to label %.noexc105 unwind label %.loopexit.split-lp

.noexc105:                                        ; preds = %bb.x
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i104: ; preds = %.lr.ph169
  %i.eo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.a, i64 noundef 4)
          to label %bb.y unwind label %.loopexit  ; 0 uses

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ep = load i32, ptr %i.ei, align 4, !tbaa !25
  %i.eq = add nuw i64 %.0168, 1                   ; 2 uses
  %i.er = icmp ult i64 %i.eq, %i.bd
  br i1 %i.er, label %.lr.ph169, label %._crit_edge, !llvm.loop !325

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i104
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit.split-lp:                               ; preds = %bb.x
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit141, %.loopexit.split-lp142, %bb.s
  %.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp144, %.loopexit.split-lp142 ], [ %i.dl, %bb.s ], [ %lpad.loopexit143, %.loopexit141 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i107 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i.i.i107, label %_ZNSt6vectorIiSaIiEED2Ev.exit108, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.es = ptrtoint ptr %.sroa.0.0 to i64
  %i.et = sub i64 %.sroa.15.0, %i.es
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.et) #34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit108

_ZNSt6vectorIiSaIiEED2Ev.exit108:                 ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #35
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK4Luau15BytecodeBuilder13calcLinesSpanEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1048) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !150  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !149  ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2                   ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.critedge, %bb.a
  %.021.lcssa = phi i32 [ 16777216, %bb.a ], [ %.1, %.critedge ]
  ret i32 %.021.lcssa

.lr.ph:                                           ; preds = %bb.a, %.critedge
  %.02038 = phi i64 [ %.pre-phi41, %.critedge ], [ 0, %bb.a ] ; 6 uses
  %.02137 = phi i32 [ %.1, %.critedge ], [ 16777216, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.02038
  %i.j = load i32, ptr %i.i, align 4, !tbaa !25   ; 2 uses
  %i.k = sext i32 %.02137 to i64                  ; 2 uses
  %i.l = add i64 %.02038, %i.k                    ; 3 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %.02038, i64 %i.l) ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.036 = phi i64 [ %.02038, %.lr.ph ], [ %i.q, %bb.d ] ; 4 uses
  %.03135 = phi i32 [ %i.j, %.lr.ph ], [ %.sroa.speculated, %bb.d ]
  %.03234 = phi i32 [ %i.j, %.lr.ph ], [ %.sroa.speculated27, %bb.d ]
  %exitcond.not = icmp eq i64 %.036, %umax
  br i1 %exitcond.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.036
  %i.n = load i32, ptr %i.m, align 4, !tbaa !25   ; 2 uses
  %.sroa.speculated27 = tail call i32 @llvm.smin.i32(i32 %i.n, i32 %.03234) ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %.03135, i32 %i.n) ; 2 uses
  %i.o = sub nsw i32 %.sroa.speculated, %.sroa.speculated27
  %i.p = icmp sgt i32 %i.o, 255
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = add nuw i64 %.036, 1                     ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.h
  br i1 %i.r, label %bb.b, label %.critedge, !llvm.loop !313

bb.e:                                             ; preds = %bb.c, %bb.b
  %.036.lcssa = phi i64 [ %.036, %bb.c ], [ %umax, %bb.b ]
  %i.s = sub i64 %.036.lcssa, %.02038             ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.k
  br i1 %i.t, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.u = trunc i64 %i.s to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.0.i = phi i32 [ 0, %bb.f ], [ %i.w, %bb.g ]   ; 3 uses
  %i.v = shl i32 2, %.0.i
  %.not.i = icmp sgt i32 %i.v, %i.u
  %i.w = add nuw nsw i32 %.0.i, 1
  br i1 %.not.i, label %_ZN4LuauL4log2Ei.exit, label %bb.g, !llvm.loop !314

_ZN4LuauL4log2Ei.exit:                            ; preds = %bb.g
  %i.x = shl nuw i32 1, %.0.i                     ; 2 uses
  %.pre = sext i32 %i.x to i64
  %.pre40 = add i64 %.02038, %.pre
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %_ZN4LuauL4log2Ei.exit, %bb.e
  %.pre-phi41 = phi i64 [ %i.l, %bb.e ], [ %.pre40, %_ZN4LuauL4log2Ei.exit ], [ %i.l, %bb.d ] ; 2 uses
  %.1 = phi i32 [ %.02137, %bb.e ], [ %i.x, %_ZN4LuauL4log2Ei.exit ], [ %.02137, %bb.d ] ; 2 uses
  %i.y = icmp ult i64 %.pre-phi41, %i.h
  br i1 %i.y, label %.lr.ph, label %._crit_edge, !llvm.loop !315
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK4Luau15BytecodeBuilder16fillBaselineInfoEiPim(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1048) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !150  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !149  ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2                   ; 3 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.a
  %i.i = sext i32 %1 to i64                       ; 5 uses
  br label %bb.b

._crit_edge:                                      ; preds = %.critedge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph23, %.critedge
  %indvar = phi i64 [ 0, %.lr.ph23 ], [ %indvar.next, %.critedge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.i, %.lr.ph23 ], [ %indvars.iv.next, %.critedge ] ; 2 uses
  %.01422 = phi i64 [ 0, %.lr.ph23 ], [ %i.l, %.critedge ] ; 7 uses
  %umin = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %indvars.iv) ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.01422
  %i.k = load i32, ptr %i.j, align 4, !tbaa !25   ; 3 uses
  %i.l = add i64 %.01422, %i.i                    ; 3 uses
  %invariant.umin = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.l)
  %or.cond19 = icmp ult i64 %.01422, %invariant.umin
  br i1 %or.cond19, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.b
  %4 = mul i64 %indvar, %i.i
  %5 = sub i64 %umin, %4                          ; 3 uses
  %min.iters.check = icmp ult i64 %5, 8
  br i1 %min.iters.check, label %.lr.ph.preheader28, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %5, -8                         ; 3 uses
  %i.m = add i64 %.01422, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.k, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.01422
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.q, %vector.body ]
  %vec.phi26 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.r, %vector.body ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load = load <4 x i32>, ptr %i.o, align 4, !tbaa !25
  %wide.load27 = load <4 x i32>, ptr %i.p, align 4, !tbaa !25
  %i.q = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi) ; 2 uses
  %i.r = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load27, <4 x i32> %vec.phi26) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !326

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.q, <4 x i32> %i.r)
  %i.t = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %5, %n.vec
  br i1 %cmp.n, label %.critedge, label %.lr.ph.preheader28

.lr.ph.preheader28:                               ; preds = %.lr.ph.preheader, %middle.block
  %.021.ph = phi i64 [ %.01422, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  %.01820.ph = phi i32 [ %i.k, %.lr.ph.preheader ], [ %i.t, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader28, %.lr.ph
  %.021 = phi i64 [ %i.w, %.lr.ph ], [ %.021.ph, %.lr.ph.preheader28 ] ; 2 uses
  %.01820 = phi i32 [ %.sroa.speculated, %.lr.ph ], [ %.01820.ph, %.lr.ph.preheader28 ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.021
  %i.v = load i32, ptr %i.u, align 4, !tbaa !25
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.v, i32 %.01820) ; 2 uses
  %i.w = add nuw i64 %.021, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %umin
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !327

.critedge:                                        ; preds = %.lr.ph, %middle.block, %bb.b
  %.018.lcssa = phi i32 [ %i.k, %bb.b ], [ %i.t, %middle.block ], [ %.sroa.speculated, %.lr.ph ]
  %i.x = udiv i64 %.01422, %i.i
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.x
  store i32 %.018.lcssa, ptr %i.y, align 4, !tbaa !25
  %i.z = icmp ult i64 %i.l, %i.h
  %indvars.iv.next = add i64 %indvars.iv, %i.i
  %indvar.next = add i64 %indvar, 1
  br i1 %i.z, label %bb.b, label %._crit_edge, !llvm.loop !320
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 1073741824, 0) i32 @_ZN4Luau15BytecodeBuilder11getImportIdEi(i32 noundef %0) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = shl i32 %0, 20
  %i.b = or i32 %i.a, 1073741824
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 -2147483648, 0) i32 @_ZN4Luau15BytecodeBuilder11getImportIdEii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = shl i32 %0, 20
  %i.b = shl i32 %1, 10
  %i.c = or i32 %i.a, %i.b
  %i.d = or i32 %i.c, -2147483648
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 -1073741824, 0) i32 @_ZN4Luau15BytecodeBuilder11getImportIdEiii(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = shl i32 %0, 20
  %i.b = shl i32 %1, 10
  %i.c = or i32 %i.a, %i.b
  %i.d = or i32 %i.c, %2
  %i.e = or i32 %i.d, -1073741824
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef range(i32 0, 4) i32 @_ZN4Luau15BytecodeBuilder17decomposeImportIdEjRiS1_S1_(i32 noundef %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = lshr i32 %0, 30                          ; 3 uses
  %.not = icmp eq i32 %i.a, 0
  %i.b = lshr i32 %0, 20
  %i.c = and i32 %i.b, 1023
  %i.d = select i1 %.not, i32 -1, i32 %i.c
  store i32 %i.d, ptr %1, align 4, !tbaa !25
  %i.e = lshr i32 %0, 10
  %i.f = and i32 %i.e, 1023
  %.inv = icmp sgt i32 %0, -1
  %i.g = select i1 %.inv, i32 -1, i32 %i.f
  store i32 %i.g, ptr %2, align 4, !tbaa !25
  %i.h = icmp eq i32 %i.a, 3
  %i.i = and i32 %0, 1023
  %i.j = select i1 %i.h, i32 %i.i, i32 -1
  store i32 %i.j, ptr %3, align 4, !tbaa !25
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN4Luau15BytecodeBuilder13getStringHashENS0_9StringRefE(ptr nofree readonly captures(none) %0, i64 %1) local_unnamed_addr #2 align 2 {
bb.a:
  %.not10 = icmp eq i64 %1, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = trunc i64 %1 to i32                      ; 4 uses
  %xtraiter = and i64 %1, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.b = shl i32 %i.a, 5
  %i.c = lshr i32 %i.a, 2
  %i.d = add i32 %i.b, %i.c
  %i.e = getelementptr i8, ptr %0, i64 %1
  %i.f = getelementptr i8, ptr %i.e, i64 -1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !142
  %i.h = zext i8 %i.g to i32
  %i.i = add i32 %i.d, %i.h
  %i.j = xor i32 %i.i, %i.a                       ; 2 uses
  %i.k = add nsw i64 %1, -1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %i.j, %.lr.ph.prol ]
  %.012.unr = phi i64 [ %1, %.lr.ph.preheader ], [ %i.k, %.lr.ph.prol ]
  %.0911.unr = phi i32 [ %i.a, %.lr.ph.preheader ], [ %i.j, %.lr.ph.prol ]
  %i.l = icmp eq i64 %1, 1
  br i1 %i.l, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  %.09.lcssa = phi i32 [ 0, %bb.a ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.ad, %.lr.ph ]
  ret i32 %.09.lcssa

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.012 = phi i64 [ %i.ae, %.lr.ph ], [ %.012.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.0911 = phi i32 [ %i.ad, %.lr.ph ], [ %.0911.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.m = shl i32 %.0911, 5
  %i.n = lshr i32 %.0911, 2
  %i.o = add i32 %i.m, %i.n
  %i.p = getelementptr i8, ptr %0, i64 %.012
  %i.q = getelementptr i8, ptr %i.p, i64 -1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !142
  %i.s = zext i8 %i.r to i32
  %i.t = add i32 %i.o, %i.s
  %i.u = xor i32 %i.t, %.0911                     ; 3 uses
  %i.v = shl i32 %i.u, 5
  %i.w = lshr i32 %i.u, 2
  %i.x = add i32 %i.v, %i.w
  %i.y = getelementptr i8, ptr %0, i64 %.012
  %i.z = getelementptr i8, ptr %i.y, i64 -2
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !142
  %i.ab = zext i8 %i.aa to i32
  %i.ac = add i32 %i.x, %i.ab
  %i.ad = xor i32 %i.ac, %i.u                     ; 2 uses
  %i.ae = add i64 %.012, -2                       ; 2 uses
  %.not.1 = icmp eq i64 %i.ae, 0
  br i1 %.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !328
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Luau15BytecodeBuilder9foldJumpsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1048) %0) local_unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load i8, ptr %i.a, align 8, !tbaa !197, !range !19, !noundef !20
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !329  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !329  ; 2 uses
  %.not36 = icmp eq ptr %i.e, %i.g
  br i1 %.not36, label %.loopexit, label %.lr.ph39

.lr.ph39:                                         ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !147  ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph39, %bb.f
  %.sroa.027.037 = phi ptr [ %i.e, %.lr.ph39 ], [ %i.ao, %bb.f ] ; 3 uses
  %i.j = load i32, ptr %.sroa.027.037, align 4, !tbaa !330 ; 3 uses
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !25   ; 3 uses
  %i.n = add i32 %i.j, 1
  %i.o = ashr i32 %i.m, 16
  %i.p = add i32 %i.n, %i.o                       ; 3 uses
  %.pn30 = zext i32 %i.p to i64
end_hunk_0
