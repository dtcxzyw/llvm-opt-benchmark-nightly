Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/rewrite_db_term_process?download=true
inline.NumInlined: 693
inline.NumDeleted: 304
begin_hunk_0_@_ZN4cvc58internal8rewriter22RewriteDbNodeConverter11postConvertENS0_12NodeTemplateILb1EEE:bb.a
  %i.xl = ptrtoint ptr %i.xk to i64
  %i.xm = ptrtoint ptr %i.xj to i64
  %i.xn = sub i64 %i.xl, %i.xm
  call void @_ZdlPvm(ptr noundef nonnull %i.xj, i64 noundef %i.xn) #22
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit291

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit291: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i288, %bb.hm
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #19
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

.body277:                                         ; preds = %bb.hg, %.loopexit.split-lp.loopexit.split-lp.i271.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.hh, %bb.hf
  %.pn75 = phi { ptr, i32 } [ %i.wv, %bb.hh ], [ %.pn73, %bb.hf ], [ %lpad.loopexit.split-lp430, %.loopexit.split-lp.loopexit.split-lp.i271.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.wu, %bb.hg ]
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %40) #19
  br label %bb.hn

bb.hn:                                            ; preds = %.body277, %bb.hc
  %.pn75.pn = phi { ptr, i32 } [ %.pn75, %.body277 ], [ %i.wr, %bb.hc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #19
  br label %bb.id

bb.ho:                                            ; preds = %bb.gg
  %i.xo = icmp eq i32 %i.e, 319
  %i.xp = load ptr, ptr %2, align 8, !tbaa !34    ; 10 uses
  br i1 %i.xo, label %bb.hp, label %bb.hz

bb.hp:                                            ; preds = %bb.ho
  store ptr %i.xp, ptr %44, align 8, !tbaa !34
  %i.xq = load i64, ptr %i.xp, align 8            ; 3 uses
  %i.xr = lshr i64 %i.xq, 40
  %i.xs = trunc nuw nsw i64 %i.xr to i32
  %i.xt = and i32 %i.xs, 1048575                  ; 3 uses
  %i.xu = icmp samesign ult i32 %i.xt, 1048574
  br i1 %i.xu, label %bb.hq, label %bb.hr, !prof !35

bb.hq:                                            ; preds = %bb.hp
  %i.xv = add nuw nsw i32 %i.xt, 1
  %i.xw = zext nneg i32 %i.xv to i64
  %i.xx = shl nuw nsw i64 %i.xw, 40
  %i.xy = and i64 %i.xq, -1152920405095219201
  %i.xz = or i64 %i.xx, %i.xy
  store i64 %i.xz, ptr %i.xp, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit292

bb.hr:                                            ; preds = %bb.hp
  %i.ya = icmp eq i32 %i.xt, 1048574
  br i1 %i.ya, label %bb.hs, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit292, !prof !36

bb.hs:                                            ; preds = %bb.hr
  %i.yb = or i64 %i.xq, 1152920405095219200
  store i64 %i.yb, ptr %i.xp, align 8
  call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.xp)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit292

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit292: ; preds = %bb.hq, %bb.hr, %bb.hs
  invoke void @_ZN4cvc58internal4expr16getACINormalFormENS0_12NodeTemplateILb1EEE(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 %44)
          to label %bb.ht unwind label %bb.hx

bb.ht:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit292
  %i.yc = load ptr, ptr %44, align 8, !tbaa !34   ; 3 uses
  %i.yd = load i64, ptr %i.yc, align 8            ; 3 uses
  %i.ye = and i64 %i.yd, 1152920405095219200
  %.not.i.i293 = icmp eq i64 %i.ye, 1152920405095219200
  br i1 %.not.i.i293, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit294, label %bb.hu, !prof !36

bb.hu:                                            ; preds = %bb.ht
  %i.yf = add i64 %i.yd, 1152920405095219200
  %i.yg = and i64 %i.yf, 1152920405095219200      ; 2 uses
  %i.yh = and i64 %i.yd, -1152920405095219201
  %i.yi = or disjoint i64 %i.yg, %i.yh
  store i64 %i.yi, ptr %i.yc, align 8
  %i.yj = icmp eq i64 %i.yg, 0
  br i1 %i.yj, label %bb.hv, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit294, !prof !36

bb.hv:                                            ; preds = %bb.hu
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.yc)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit294 unwind label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.yk = landingpad { ptr, i32 }
          catch ptr null
  %i.yl = extractvalue { ptr, i32 } %i.yk, 0
  call void @__clang_call_terminate(ptr %i.yl) #21
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit294: ; preds = %bb.ht, %bb.hu, %bb.hv
  invoke void @_ZN4cvc58internal8rewriter22RewriteDbNodeConverter15recordProofStepERKNS0_12NodeTemplateILb1EEES6_NS_9ProofRuleE(ptr noundef nonnull align 8 dereferenceable(264) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 6)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit unwind label %bb.hy

bb.hx:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit292
  %i.ym = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %44) #19
  br label %bb.id

bb.hy:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit294
  %i.yn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #19
  br label %bb.id

bb.hz:                                            ; preds = %bb.ho
  store ptr %i.xp, ptr %0, align 8, !tbaa !34
  %i.yo = load i64, ptr %i.xp, align 8            ; 3 uses
  %i.yp = lshr i64 %i.yo, 40
  %i.yq = trunc nuw nsw i64 %i.yp to i32
  %i.yr = and i32 %i.yq, 1048575                  ; 3 uses
  %i.ys = icmp samesign ult i32 %i.yr, 1048574
  br i1 %i.ys, label %bb.ia, label %bb.ib, !prof !35

bb.ia:                                            ; preds = %bb.hz
  %i.yt = add nuw nsw i32 %i.yr, 1
  %i.yu = zext nneg i32 %i.yt to i64
  %i.yv = shl nuw nsw i64 %i.yu, 40
  %i.yw = and i64 %i.yo, -1152920405095219201
  %i.yx = or i64 %i.yv, %i.yw
  store i64 %i.yx, ptr %i.xp, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.ib:                                            ; preds = %bb.hz
  %i.yy = icmp eq i32 %i.yr, 1048574
  br i1 %i.yy, label %bb.ic, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !36

bb.ic:                                            ; preds = %bb.ib
  %i.yz = or i64 %i.yo, 1152920405095219200
  store i64 %i.yz, ptr %i.xp, align 8
  call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.xp)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.ic, %bb.ib, %bb.ia, %bb.f, %bb.e, %bb.d, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit294, %_ZN4cvc58internal8TypeNodeD2Ev.exit250, %bb.dr, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit201, %bb.ct, %bb.aj, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit291, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit189, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit138
  ret void

bb.id:                                            ; preds = %bb.hy, %bb.hx, %bb.hn, %bb.gf, %bb.ds, %bb.dq, %bb.dp, %bb.cu, %.body170, %.body113, %bb.ak, %.body
  %.pn92.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn92.pn.pn.pn, %.body ], [ %i.dp, %bb.ak ], [ %.pn89.pn, %.body113 ], [ %.pn87, %.body170 ], [ %i.jg, %bb.cu ], [ %.pn66.pn.pn.pn.pn.pn, %bb.gf ], [ %i.mm, %bb.dq ], [ %.pn78, %bb.dp ], [ %.pn75.pn, %bb.hn ], [ %i.yn, %bb.hy ], [ %i.ym, %bb.hx ], [ %i.mn, %bb.ds ]
  resume { ptr, i32 } %.pn92.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @__gxx_personality_v0(...)

declare void @_ZN4cvc58internal11NodeManager7mkConstINS0_6StringEEENS0_12NodeTemplateILb1EEERKT_(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8, ptr noundef nonnull align 8 dereferenceable(3592), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare void @_ZN4cvc58internal6StringC1ERKSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !34     ; 3 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = and i64 %i.b, 1152920405095219200
  %.not.i = icmp eq i64 %i.c, 1152920405095219200
  br i1 %.not.i, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit, label %bb.b, !prof !36

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1152920405095219200
  %i.e = and i64 %i.d, 1152920405095219200        ; 2 uses
  %i.f = and i64 %i.b, -1152920405095219201
  %i.g = or disjoint i64 %i.e, %i.f
  store i64 %i.g, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.e, 0
  br i1 %i.h, label %bb.c, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit, !prof !36

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit unwind label %bb.d

_ZN4cvc58internal4expr9NodeValue3decEv.exit:      ; preds = %bb.b, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #21
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal8rewriter22RewriteDbNodeConverter15recordProofStepERKNS0_12NodeTemplateILb1EEES6_NS_9ProofRuleE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate.112", align 8 ; 4 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate.112", align 8 ; 4 uses
  %7 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate.112", align 8 ; 4 uses
  %9 = alloca %"class.cvc5::internal::NodeTemplate.112", align 8 ; 4 uses
  %10 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %11 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %12 = alloca %"class.std::vector.24", align 8   ; 10 uses
  %13 = alloca %"class.std::vector.24", align 8   ; 13 uses
  %14 = alloca [1 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 8 uses
  %15 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %16 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %17 = alloca %"class.std::vector.24", align 8   ; 10 uses
  %18 = alloca %"class.std::vector.24", align 8   ; 13 uses
  %19 = alloca [1 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 8 uses
  %20 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %21 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %22 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %23 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %24 = alloca %"class.std::vector.24", align 8   ; 10 uses
  %25 = alloca %"class.std::vector.24", align 8   ; 13 uses
  %26 = alloca [1 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit73, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !34     ; 12 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !34     ; 3 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit73, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i32 %3, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit73 [
    i32 6, label %bb.d
    i32 4, label %bb.am
    i32 12, label %bb.ck
  ]

bb.d:                                             ; preds = %bb.c
  store ptr %i.d, ptr %10, align 8, !tbaa !34
  %i.g = load i64, ptr %i.d, align 8              ; 3 uses
  %i.h = lshr i64 %i.g, 40
  %i.i = trunc nuw nsw i64 %i.h to i32
  %i.j = and i32 %i.i, 1048575                    ; 3 uses
  %i.k = icmp samesign ult i32 %i.j, 1048574
  br i1 %i.k, label %bb.e, label %bb.f, !prof !35

bb.e:                                             ; preds = %bb.d
  %i.l = add nuw nsw i32 %i.j, 1
  %i.m = zext nneg i32 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 40
  %i.o = and i64 %i.g, -1152920405095219201
  %i.p = or i64 %i.n, %i.o
  store i64 %i.p, ptr %i.d, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.f:                                             ; preds = %bb.d
  %i.q = icmp eq i32 %i.j, 1048574
  br i1 %i.q, label %bb.g, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !36

bb.g:                                             ; preds = %bb.f
  %i.r = or i64 %i.g, 1152920405095219200
  store i64 %i.r, ptr %i.d, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.s = load ptr, ptr %2, align 8, !tbaa !34     ; 5 uses
  store ptr %i.s, ptr %11, align 8, !tbaa !34
  %i.t = load i64, ptr %i.s, align 8              ; 3 uses
  %i.u = lshr i64 %i.t, 40
  %i.v = trunc nuw nsw i64 %i.u to i32
  %i.w = and i32 %i.v, 1048575                    ; 3 uses
  %i.x = icmp samesign ult i32 %i.w, 1048574
  br i1 %i.x, label %bb.h, label %bb.i, !prof !35

bb.h:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.y = add nuw nsw i32 %i.w, 1
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = shl nuw nsw i64 %i.z, 40
  %i.ab = and i64 %i.t, -1152920405095219201
  %i.ac = or i64 %i.aa, %i.ab
  store i64 %i.ac, ptr %i.s, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit53

bb.i:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.ad = icmp eq i32 %i.w, 1048574
  br i1 %i.ad, label %bb.j, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit53, !prof !36

bb.j:                                             ; preds = %bb.i
  %i.ae = or i64 %i.t, 1152920405095219200
  store i64 %i.ae, ptr %i.s, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit53 unwind label %bb.ai

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit53: ; preds = %bb.i, %bb.h, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  %i.af = load ptr, ptr %1, align 8, !tbaa !34, !noalias !97 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %2, align 8, !tbaa !34, !noalias !97
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !97
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !97
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19, !noalias !98
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !47, !noalias !98
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %7, ptr noundef %i.ai, i32 noundef 5)
          to label %.noexc54 unwind label %bb.aj, !noalias !98

.noexc54:                                         ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit53
  store ptr %i.af, ptr %8, align 8, !tbaa !39, !noalias !98
  %i.aj = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %7, ptr noundef nonnull align 8 %8)
          to label %bb.k unwind label %.body.i, !noalias !98

bb.k:                                             ; preds = %.noexc54
  store ptr %i.ah, ptr %9, align 8, !tbaa !39, !noalias !98
  %i.ak = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.aj, ptr noundef nonnull align 8 %9)
          to label %bb.l unwind label %.body.i, !noalias !98 ; 0 uses

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %14, ptr noundef nonnull align 8 dereferenceable(124) %7)
          to label %bb.m unwind label %.body.i

.body.i:                                          ; preds = %bb.l, %bb.k, %.noexc54
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19, !noalias !98
  br label %.body

bb.m:                                             ; preds = %bb.l
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19, !noalias !98
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !97
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !97
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.am = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #20
          to label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i unwind label %bb.n ; 3 uses

_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i: ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.am, ptr %13, align 8, !tbaa !44
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !43
  %i.aq = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN4cvc58internal12NodeTemplateILb1EEEPS3_ET0_T_S8_S7_(ptr noundef nonnull %14, ptr noundef nonnull %i.an, ptr noundef nonnull %i.am)
          to label %bb.p unwind label %bb.n

bb.n:                                             ; preds = %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i, %bb.m
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = load ptr, ptr %13, align 8, !tbaa !44   ; 3 uses
  %.not.i.i5.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i5.i, label %.body55, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !43
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ax) #22
  br label %.body55

bb.p:                                             ; preds = %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store ptr %i.aq, ptr %i.ay, align 8, !tbaa !42
  invoke void @_ZN4cvc58internal19TConvProofGenerator14addRewriteStepENS0_12NodeTemplateILb1EEES3_NS_9ProofRuleERKSt6vectorIS3_SaIS3_EES9_bj(ptr noundef nonnull align 8 dereferenceable(801) %i.b, ptr noundef nonnull align 8 %10, ptr noundef nonnull align 8 %11, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.q unwind label %bb.ak

bb.q:                                             ; preds = %bb.p
  %i.az = load ptr, ptr %13, align 8, !tbaa !44   ; 3 uses
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !42 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.az, %i.ba
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.q, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bl, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i ], [ %i.az, %bb.q ] ; 2 uses
  %i.bb = load ptr, ptr %.05.i.i.i, align 8, !tbaa !34 ; 3 uses
  %i.bc = load i64, ptr %i.bb, align 8            ; 3 uses
  %i.bd = and i64 %i.bc, 1152920405095219200
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bd, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, label %bb.r, !prof !36

bb.r:                                             ; preds = %.lr.ph.i.i.i
  %i.be = add i64 %i.bc, 1152920405095219200
  %i.bf = and i64 %i.be, 1152920405095219200      ; 2 uses
  %i.bg = and i64 %i.bc, -1152920405095219201
  %i.bh = or disjoint i64 %i.bf, %i.bg
  store i64 %i.bh, ptr %i.bb, align 8
  %i.bi = icmp eq i64 %i.bf, 0
  br i1 %i.bi, label %bb.s, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, !prof !36

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #21
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i: ; preds = %bb.s, %bb.r, %.lr.ph.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bl, %i.ba
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %13, align 8, !tbaa !44
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i

end_hunk_0
begin_hunk_1_@_ZN4cvc58internal8rewriter22RewriteDbNodeConverter15recordProofStepERKNS0_12NodeTemplateILb1EEES6_NS_9ProofRuleE:bb.a

bb.bk:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit111
  %i.hm = add i64 %i.hk, 1152920405095219200
  %i.hn = and i64 %i.hm, 1152920405095219200      ; 2 uses
  %i.ho = and i64 %i.hk, -1152920405095219201
  %i.hp = or disjoint i64 %i.hn, %i.ho
  store i64 %i.hp, ptr %i.hj, align 8
  %i.hq = icmp eq i64 %i.hn, 0
  br i1 %i.hq, label %bb.bl, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit113, !prof !36

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hj)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit113 unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.hr = landingpad { ptr, i32 }
          catch ptr null
  %i.hs = extractvalue { ptr, i32 } %i.hr, 0
  call void @__clang_call_terminate(ptr %i.hs) #21
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit113: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit111, %bb.bk, %bb.bl
  %i.ht = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.hu = load ptr, ptr %1, align 8, !tbaa !34    ; 5 uses
  store ptr %i.hu, ptr %20, align 8, !tbaa !34
  %i.hv = load i64, ptr %i.hu, align 8            ; 3 uses
  %i.hw = lshr i64 %i.hv, 40
  %i.hx = trunc nuw nsw i64 %i.hw to i32
  %i.hy = and i32 %i.hx, 1048575                  ; 3 uses
  %i.hz = icmp samesign ult i32 %i.hy, 1048574
  br i1 %i.hz, label %bb.bn, label %bb.bo, !prof !35

bb.bn:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit113
  %i.ia = add nuw nsw i32 %i.hy, 1
  %i.ib = zext nneg i32 %i.ia to i64
  %i.ic = shl nuw nsw i64 %i.ib, 40
  %i.id = and i64 %i.hv, -1152920405095219201
  %i.ie = or i64 %i.ic, %i.id
  store i64 %i.ie, ptr %i.hu, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit115

bb.bo:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit113
  %i.if = icmp eq i32 %i.hy, 1048574
  br i1 %i.if, label %bb.bp, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit115, !prof !36

bb.bp:                                            ; preds = %bb.bo
  %i.ig = or i64 %i.hv, 1152920405095219200
  store i64 %i.ig, ptr %i.hu, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hu)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit115 unwind label %bb.cd

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit115: ; preds = %bb.bo, %bb.bn, %bb.bp
  %i.ih = load ptr, ptr %2, align 8, !tbaa !34    ; 5 uses
  store ptr %i.ih, ptr %21, align 8, !tbaa !34
  %i.ii = load i64, ptr %i.ih, align 8            ; 3 uses
  %i.ij = lshr i64 %i.ii, 40
  %i.ik = trunc nuw nsw i64 %i.ij to i32
  %i.il = and i32 %i.ik, 1048575                  ; 3 uses
  %i.im = icmp samesign ult i32 %i.il, 1048574
  br i1 %i.im, label %bb.bq, label %bb.br, !prof !35

bb.bq:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit115
  %i.in = add nuw nsw i32 %i.il, 1
  %i.io = zext nneg i32 %i.in to i64
  %i.ip = shl nuw nsw i64 %i.io, 40
  %i.iq = and i64 %i.ii, -1152920405095219201
  %i.ir = or i64 %i.ip, %i.iq
  store i64 %i.ir, ptr %i.ih, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit117

bb.br:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit115
  %i.is = icmp eq i32 %i.il, 1048574
  br i1 %i.is, label %bb.bs, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit117, !prof !36

bb.bs:                                            ; preds = %bb.br
  %i.it = or i64 %i.ii, 1152920405095219200
  store i64 %i.it, ptr %i.ih, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ih)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit117 unwind label %bb.cg

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit117: ; preds = %bb.br, %bb.bq, %bb.bs
  %i.iu = load ptr, ptr %i.dx, align 8, !tbaa !31 ; 2 uses
  %i.iv = icmp eq ptr %i.iu, null
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  %spec.select = select i1 %i.iv, ptr null, ptr %i.iw
  invoke void @_ZN4cvc58internal19TConvProofGenerator14addRewriteStepENS0_12NodeTemplateILb1EEES3_PNS0_14ProofGeneratorEbNS0_7TrustIdEbj(ptr noundef nonnull align 8 dereferenceable(801) %i.ht, ptr noundef nonnull align 8 %20, ptr noundef nonnull align 8 %21, ptr noundef %spec.select, i1 noundef zeroext false, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.bt unwind label %bb.ch

bb.bt:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit117
  %i.ix = load ptr, ptr %21, align 8, !tbaa !34   ; 3 uses
  %i.iy = load i64, ptr %i.ix, align 8            ; 3 uses
  %i.iz = and i64 %i.iy, 1152920405095219200
  %.not.i.i118 = icmp eq i64 %i.iz, 1152920405095219200
  br i1 %.not.i.i118, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit119, label %bb.bu, !prof !36

bb.bu:                                            ; preds = %bb.bt
  %i.ja = add i64 %i.iy, 1152920405095219200
  %i.jb = and i64 %i.ja, 1152920405095219200      ; 2 uses
  %i.jc = and i64 %i.iy, -1152920405095219201
  %i.jd = or disjoint i64 %i.jb, %i.jc
  store i64 %i.jd, ptr %i.ix, align 8
  %i.je = icmp eq i64 %i.jb, 0
  br i1 %i.je, label %bb.bv, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit119, !prof !36

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ix)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit119 unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.jf = landingpad { ptr, i32 }
          catch ptr null
  %i.jg = extractvalue { ptr, i32 } %i.jf, 0
  call void @__clang_call_terminate(ptr %i.jg) #21
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit119: ; preds = %bb.bt, %bb.bu, %bb.bv
  %i.jh = load ptr, ptr %20, align 8, !tbaa !34   ; 3 uses
  %i.ji = load i64, ptr %i.jh, align 8            ; 3 uses
  %i.jj = and i64 %i.ji, 1152920405095219200
  %.not.i.i120 = icmp eq i64 %i.jj, 1152920405095219200
  br i1 %.not.i.i120, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit121, label %bb.bx, !prof !36

bb.bx:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit119
  %i.jk = add i64 %i.ji, 1152920405095219200
  %i.jl = and i64 %i.jk, 1152920405095219200      ; 2 uses
  %i.jm = and i64 %i.ji, -1152920405095219201
  %i.jn = or disjoint i64 %i.jl, %i.jm
  store i64 %i.jn, ptr %i.jh, align 8
  %i.jo = icmp eq i64 %i.jl, 0
  br i1 %i.jo, label %bb.by, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit121, !prof !36

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jh)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit121 unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.jp = landingpad { ptr, i32 }
          catch ptr null
  %i.jq = extractvalue { ptr, i32 } %i.jp, 0
  call void @__clang_call_terminate(ptr %i.jq) #21
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit121: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit119, %bb.bx, %bb.by
  %i.jr = load ptr, ptr %15, align 8, !tbaa !34   ; 3 uses
  %i.js = load i64, ptr %i.jr, align 8            ; 3 uses
  %i.jt = and i64 %i.js, 1152920405095219200
  %.not.i.i122 = icmp eq i64 %i.jt, 1152920405095219200
  br i1 %.not.i.i122, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit123, label %bb.ca, !prof !36

bb.ca:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit121
  %i.ju = add i64 %i.js, 1152920405095219200
  %i.jv = and i64 %i.ju, 1152920405095219200      ; 2 uses
  %i.jw = and i64 %i.js, -1152920405095219201
  %i.jx = or disjoint i64 %i.jv, %i.jw
  store i64 %i.jx, ptr %i.jr, align 8
  %i.jy = icmp eq i64 %i.jv, 0
  br i1 %i.jy, label %bb.cb, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit123, !prof !36

bb.cb:                                            ; preds = %bb.ca
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jr)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit123 unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.jz = landingpad { ptr, i32 }
          catch ptr null
  %i.ka = extractvalue { ptr, i32 } %i.jz, 0
  call void @__clang_call_terminate(ptr %i.ka) #21
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit123: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit121, %bb.ca, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit73

bb.cd:                                            ; preds = %bb.bp, %bb.ar
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.ce:                                            ; preds = %bb.au
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.cf:                                            ; preds = %bb.ax
  %i.kd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %18) #19
  br label %.body83

.body83:                                          ; preds = %bb.aw, %bb.av, %bb.cf
  %.pn42 = phi { ptr, i32 } [ %i.kd, %bb.cf ], [ %i.fe, %bb.av ], [ %i.fe, %bb.aw ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #19
  br label %.loopexit

.loopexit:                                        ; preds = %.body83, %bb.ce
  %.pn42.pn = phi { ptr, i32 } [ %i.kc, %bb.ce ], [ %.pn42, %.body83 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #19
  br label %bb.cj

bb.cg:                                            ; preds = %bb.bs
  %i.ke = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.ch:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit117
  %i.kf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #19
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.pn45 = phi { ptr, i32 } [ %i.kf, %bb.ch ], [ %i.ke, %bb.cg ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #19
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %.loopexit, %bb.cd
  %.pn45.pn = phi { ptr, i32 } [ %.pn45, %bb.ci ], [ %i.kb, %bb.cd ], [ %.pn42.pn, %.loopexit ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %common.resume

bb.ck:                                            ; preds = %bb.c
  store ptr %i.d, ptr %22, align 8, !tbaa !34
  %i.kg = load i64, ptr %i.d, align 8             ; 3 uses
  %i.kh = lshr i64 %i.kg, 40
  %i.ki = trunc nuw nsw i64 %i.kh to i32
  %i.kj = and i32 %i.ki, 1048575                  ; 3 uses
  %i.kk = icmp samesign ult i32 %i.kj, 1048574
  br i1 %i.kk, label %bb.cl, label %bb.cm, !prof !35

bb.cl:                                            ; preds = %bb.ck
  %i.kl = add nuw nsw i32 %i.kj, 1
  %i.km = zext nneg i32 %i.kl to i64
  %i.kn = shl nuw nsw i64 %i.km, 40
  %i.ko = and i64 %i.kg, -1152920405095219201
  %i.kp = or i64 %i.kn, %i.ko
  store i64 %i.kp, ptr %i.d, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit124

bb.cm:                                            ; preds = %bb.ck
  %i.kq = icmp eq i32 %i.kj, 1048574
  br i1 %i.kq, label %bb.cn, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit124, !prof !36

bb.cn:                                            ; preds = %bb.cm
  %i.kr = or i64 %i.kg, 1152920405095219200
  store i64 %i.kr, ptr %i.d, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit124

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit124: ; preds = %bb.cl, %bb.cm, %bb.cn
  %i.ks = load ptr, ptr %2, align 8, !tbaa !34    ; 5 uses
  store ptr %i.ks, ptr %23, align 8, !tbaa !34
  %i.kt = load i64, ptr %i.ks, align 8            ; 3 uses
  %i.ku = lshr i64 %i.kt, 40
  %i.kv = trunc nuw nsw i64 %i.ku to i32
  %i.kw = and i32 %i.kv, 1048575                  ; 3 uses
  %i.kx = icmp samesign ult i32 %i.kw, 1048574
  br i1 %i.kx, label %bb.co, label %bb.cp, !prof !35

bb.co:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit124
  %i.ky = add nuw nsw i32 %i.kw, 1
  %i.kz = zext nneg i32 %i.ky to i64
  %i.la = shl nuw nsw i64 %i.kz, 40
  %i.lb = and i64 %i.kt, -1152920405095219201
  %i.lc = or i64 %i.la, %i.lb
  store i64 %i.lc, ptr %i.ks, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit126

bb.cp:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit124
  %i.ld = icmp eq i32 %i.kw, 1048574
  br i1 %i.ld, label %bb.cq, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit126, !prof !36

bb.cq:                                            ; preds = %bb.cp
  %i.le = or i64 %i.kt, 1152920405095219200
  store i64 %i.le, ptr %i.ks, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ks)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit126 unwind label %bb.dp

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit126: ; preds = %bb.cp, %bb.co, %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #19
  %i.lf = load ptr, ptr %1, align 8, !tbaa !34    ; 5 uses
  store ptr %i.lf, ptr %26, align 8, !tbaa !34
  %i.lg = load i64, ptr %i.lf, align 8            ; 3 uses
  %i.lh = lshr i64 %i.lg, 40
  %i.li = trunc nuw nsw i64 %i.lh to i32
  %i.lj = and i32 %i.li, 1048575                  ; 3 uses
  %i.lk = icmp samesign ult i32 %i.lj, 1048574
  br i1 %i.lk, label %bb.cr, label %bb.cs, !prof !35

bb.cr:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit126
  %i.ll = add nuw nsw i32 %i.lj, 1
  %i.lm = zext nneg i32 %i.ll to i64
  %i.ln = shl nuw nsw i64 %i.lm, 40
  %i.lo = and i64 %i.lg, -1152920405095219201
  %i.lp = or i64 %i.ln, %i.lo
  store i64 %i.lp, ptr %i.lf, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit128

bb.cs:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit126
  %i.lq = icmp eq i32 %i.lj, 1048574
  br i1 %i.lq, label %bb.ct, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit128, !prof !36

bb.ct:                                            ; preds = %bb.cs
  %i.lr = or i64 %i.lg, 1152920405095219200
  store i64 %i.lr, ptr %i.lf, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.lf)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit128 unwind label %bb.dq

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit128: ; preds = %bb.cs, %bb.cr, %bb.ct
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, i8 0, i64 24, i1 false)
  %i.ls = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #20
          to label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i131 unwind label %bb.cu ; 3 uses

_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i131: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit128
  %i.lt = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr %i.ls, ptr %25, align 8, !tbaa !44
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.lv = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  store ptr %i.lu, ptr %i.lv, align 8, !tbaa !43
  %i.lw = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN4cvc58internal12NodeTemplateILb1EEEPS3_ET0_T_S8_S7_(ptr noundef nonnull %26, ptr noundef nonnull %i.lt, ptr noundef nonnull %i.ls)
          to label %bb.cw unwind label %bb.cu

bb.cu:                                            ; preds = %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i131, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit128
  %i.lx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ly = load ptr, ptr %25, align 8, !tbaa !44   ; 3 uses
  %.not.i.i5.i129 = icmp eq ptr %i.ly, null
  br i1 %.not.i.i5.i129, label %.body132, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.lz = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !43
  %i.mb = ptrtoint ptr %i.ma to i64
  %i.mc = ptrtoint ptr %i.ly to i64
  %i.md = sub i64 %i.mb, %i.mc
  call void @_ZdlPvm(ptr noundef nonnull %i.ly, i64 noundef %i.md) #22
  br label %.body132

bb.cw:                                            ; preds = %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i131
  %i.me = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  store ptr %i.lw, ptr %i.me, align 8, !tbaa !42
  invoke void @_ZN4cvc58internal19TConvProofGenerator14addRewriteStepENS0_12NodeTemplateILb1EEES3_NS_9ProofRuleERKSt6vectorIS3_SaIS3_EES9_bj(ptr noundef nonnull align 8 dereferenceable(801) %i.b, ptr noundef nonnull align 8 %22, ptr noundef nonnull align 8 %23, i32 noundef 12, ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(24) %25, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.cx unwind label %bb.dr

bb.cx:                                            ; preds = %bb.cw
  %i.mf = load ptr, ptr %25, align 8, !tbaa !44   ; 3 uses
  %i.mg = load ptr, ptr %i.me, align 8, !tbaa !42 ; 2 uses
  %.not4.i.i.i135 = icmp eq ptr %i.mf, %i.mg
  br i1 %.not4.i.i.i135, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i143, label %.lr.ph.i.i.i136

.lr.ph.i.i.i136:                                  ; preds = %bb.cx, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i139
  %.05.i.i.i137 = phi ptr [ %i.mr, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i139 ], [ %i.mf, %bb.cx ] ; 2 uses
  %i.mh = load ptr, ptr %.05.i.i.i137, align 8, !tbaa !34 ; 3 uses
  %i.mi = load i64, ptr %i.mh, align 8            ; 3 uses
  %i.mj = and i64 %i.mi, 1152920405095219200
  %.not.i.i.i.i.i.i138 = icmp eq i64 %i.mj, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i138, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i139, label %bb.cy, !prof !36

bb.cy:                                            ; preds = %.lr.ph.i.i.i136
  %i.mk = add i64 %i.mi, 1152920405095219200
  %i.ml = and i64 %i.mk, 1152920405095219200      ; 2 uses
  %i.mm = and i64 %i.mi, -1152920405095219201
  %i.mn = or disjoint i64 %i.ml, %i.mm
  store i64 %i.mn, ptr %i.mh, align 8
  %i.mo = icmp eq i64 %i.ml, 0
  br i1 %i.mo, label %bb.cz, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i139, !prof !36

bb.cz:                                            ; preds = %bb.cy
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.mh)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i139 unwind label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.mp = landingpad { ptr, i32 }
          catch ptr null
  %i.mq = extractvalue { ptr, i32 } %i.mp, 0
  call void @__clang_call_terminate(ptr %i.mq) #21
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i139: ; preds = %bb.cz, %bb.cy, %.lr.ph.i.i.i136
  %i.mr = getelementptr inbounds nuw i8, ptr %.05.i.i.i137, i64 8 ; 2 uses
  %.not.i.i.i140 = icmp eq ptr %i.mr, %i.mg
  br i1 %.not.i.i.i140, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i141, label %.lr.ph.i.i.i136, !llvm.loop !0

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i141: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i139
  %.pr.i142 = load ptr, ptr %25, align 8, !tbaa !44
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i143

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i143: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i141, %bb.cx
  %i.ms = phi ptr [ %.pr.i142, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i141 ], [ %i.mf, %bb.cx ] ; 3 uses
  %.not.i.i1.i144 = icmp eq ptr %i.ms, null
  br i1 %.not.i.i1.i144, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit146, label %bb.db

bb.db:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i143
  %i.mt = load ptr, ptr %i.lv, align 8, !tbaa !43
  %i.mu = ptrtoint ptr %i.mt to i64
  %i.mv = ptrtoint ptr %i.ms to i64
  %i.mw = sub i64 %i.mu, %i.mv
  call void @_ZdlPvm(ptr noundef nonnull %i.ms, i64 noundef %i.mw) #22
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit146

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit146: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i143, %bb.db
  %i.mx = load ptr, ptr %26, align 8, !tbaa !34   ; 3 uses
  %i.my = load i64, ptr %i.mx, align 8            ; 3 uses
  %i.mz = and i64 %i.my, 1152920405095219200
  %.not.i.i147 = icmp eq i64 %i.mz, 1152920405095219200
  br i1 %.not.i.i147, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit148, label %bb.dc, !prof !36

bb.dc:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit146
  %i.na = add i64 %i.my, 1152920405095219200
  %i.nb = and i64 %i.na, 1152920405095219200      ; 2 uses
  %i.nc = and i64 %i.my, -1152920405095219201
  %i.nd = or disjoint i64 %i.nb, %i.nc
  store i64 %i.nd, ptr %i.mx, align 8
  %i.ne = icmp eq i64 %i.nb, 0
end_hunk_1
begin_hunk_2_@_ZN4cvc58internal8rewriter27ProofRewriteDbNodeConverterC2ERNS0_3EnvE:bb.a
  store i8 0, ptr %i.f, align 2, !tbaa !54
  invoke void @_ZN4cvc58internal19TConvProofGeneratorC1ERNS0_3EnvEPNS_7context7ContextENS0_11TConvPolicyENS0_16TConvCachePolicyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_11TermContextEb(ptr noundef nonnull align 8 dereferenceable(801) %i.c, ptr noundef nonnull align 1 %1, ptr noundef null, i32 noundef 0, i32 noundef 2, ptr noundef nonnull align 8 %2, ptr noundef nonnull %i.a, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !53     ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.d
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.d, align 8, !tbaa !54
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.j) #22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.k, ptr %3, align 8, !tbaa !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.k, ptr noundef nonnull align 1 dereferenceable(7) @.str.1, i64 7, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 7, ptr %i.l, align 8, !tbaa !107
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 23
  store i8 0, ptr %i.m, align 1, !tbaa !54
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 840
  invoke void @_ZN4cvc58internal7CDProofC1ERNS0_3EnvEPNS_7context7ContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(217) %i.n, ptr noundef nonnull align 1 %1, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext true)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.o = load ptr, ptr %3, align 8, !tbaa !53     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.k
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.c
  %i.q = load i64, ptr %i.k, align 8, !tbaa !54
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void

bb.d:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !53     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.d
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.d
  %i.v = load i64, ptr %i.d, align 8, !tbaa !54
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %3, align 8, !tbaa !53     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.k
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.e
  %i.aa = load i64, ptr %i.k, align 8, !tbaa !54
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @_ZN4cvc58internal19TConvProofGeneratorD1Ev(ptr noundef nonnull align 8 dead_on_return(801) dereferenceable(801) %i.c) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  %.pn10.pn.pn = phi { ptr, i32 } [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ], [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ], [ %i.s, %bb.d ]
  resume { ptr, i32 } %.pn10.pn.pn
}

declare void @_ZN4cvc58internal6EnvObjC2ERNS0_3EnvE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 1) unnamed_addr #1

declare void @_ZN4cvc58internal19TConvProofGeneratorC1ERNS0_3EnvEPNS_7context7ContextENS0_11TConvPolicyENS0_16TConvCachePolicyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_11TermContextEb(ptr noundef nonnull align 8 dereferenceable(801), ptr noundef nonnull align 1, ptr noundef, i32 noundef, i32 noundef, ptr noundef align 8, ptr noundef, i1 noundef zeroext) unnamed_addr #1

declare void @_ZN4cvc58internal7CDProofC1ERNS0_3EnvEPNS_7context7ContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(217), ptr noundef nonnull align 1, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN4cvc58internal19TConvProofGeneratorD1Ev(ptr noundef nonnull align 8 dead_on_return(801) dereferenceable(801)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal8rewriter27ProofRewriteDbNodeConverter7convertERKNS0_12NodeTemplateILb1EEE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1064) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %4 = alloca %"class.cvc5::internal::NodeTemplate.112", align 8 ; 4 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate.112", align 8 ; 4 uses
  %6 = alloca %"class.cvc5::internal::rewriter::RewriteDbNodeConverter", align 8 ; 10 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %9 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %10 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.a = tail call noundef ptr @_ZNK4cvc58internal6EnvObj11nodeManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 840
  call void @_ZN4cvc58internal13NodeConverterC2EPNS0_11NodeManagerEb(ptr noundef nonnull align 8 dereferenceable(264) %6, ptr noundef %i.a, i1 noundef zeroext true)
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4cvc58internal8rewriter22RewriteDbNodeConverterE, i64 16), ptr %6, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 248
  store ptr %i.b, ptr %i.d, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 256
  store ptr %i.c, ptr %i.e, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.f = load ptr, ptr %2, align 8, !tbaa !34     ; 5 uses
  store ptr %i.f, ptr %8, align 8, !tbaa !34
  %i.g = load i64, ptr %i.f, align 8              ; 3 uses
  %i.h = lshr i64 %i.g, 40
  %i.i = trunc nuw nsw i64 %i.h to i32
  %i.j = and i32 %i.i, 1048575                    ; 3 uses
  %i.k = icmp samesign ult i32 %i.j, 1048574
  br i1 %i.k, label %bb.b, label %bb.c, !prof !35

bb.b:                                             ; preds = %bb.a
  %i.l = add nuw nsw i32 %i.j, 1
  %i.m = zext nneg i32 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 40
  %i.o = and i64 %i.g, -1152920405095219201
  %i.p = or i64 %i.n, %i.o
  store i64 %i.p, ptr %i.f, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.q = icmp eq i32 %i.j, 1048574
  br i1 %i.q, label %bb.d, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !36

bb.d:                                             ; preds = %bb.c
  %i.r = or i64 %i.g, 1152920405095219200
  store i64 %i.r, ptr %i.f, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit unwind label %bb.y

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.c, %bb.b, %bb.d
  invoke void @_ZN4cvc58internal13NodeConverter7convertENS0_12NodeTemplateILb1EEEb(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %7, ptr noundef nonnull align 8 dereferenceable(241) %6, ptr noundef nonnull align 8 %8, i1 noundef zeroext true)
          to label %bb.e unwind label %bb.z

bb.e:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.s = load ptr, ptr %8, align 8, !tbaa !34     ; 3 uses
  %i.t = load i64, ptr %i.s, align 8              ; 3 uses
  %i.u = and i64 %i.t, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.u, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.f, !prof !36

bb.f:                                             ; preds = %bb.e
  %i.v = add i64 %i.t, 1152920405095219200
  %i.w = and i64 %i.v, 1152920405095219200        ; 2 uses
  %i.x = and i64 %i.t, -1152920405095219201
  %i.y = or disjoint i64 %i.w, %i.x
  store i64 %i.y, ptr %i.s, align 8
  %i.z = icmp eq i64 %i.w, 0
  br i1 %i.z, label %bb.g, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !36

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #21
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.ac = load ptr, ptr %2, align 8, !tbaa !34, !noalias !112 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %7, align 8, !tbaa !34, !noalias !112
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !112
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !112
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19, !noalias !113
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !47, !noalias !113
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %3, ptr noundef %i.af, i32 noundef 5)
          to label %.noexc10 unwind label %bb.aa, !noalias !113

.noexc10:                                         ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  store ptr %i.ac, ptr %4, align 8, !tbaa !39, !noalias !113
  %i.ag = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %3, ptr noundef nonnull align 8 %4)
          to label %bb.i unwind label %.body.i, !noalias !113

bb.i:                                             ; preds = %.noexc10
  store ptr %i.ae, ptr %5, align 8, !tbaa !39, !noalias !113
  %i.ah = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.ag, ptr noundef nonnull align 8 %5)
          to label %bb.j unwind label %.body.i, !noalias !113 ; 0 uses

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %9, ptr noundef nonnull align 8 dereferenceable(124) %3)
          to label %bb.k unwind label %.body.i

.body.i:                                          ; preds = %bb.j, %bb.i, %.noexc10
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !113
  br label %.body.a

bb.k:                                             ; preds = %bb.j
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !112
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !112
  %i.aj = load ptr, ptr %9, align 8, !tbaa !34    ; 5 uses
  store ptr %i.aj, ptr %10, align 8, !tbaa !34
  %i.ak = load i64, ptr %i.aj, align 8            ; 3 uses
  %i.al = lshr i64 %i.ak, 40
  %i.am = trunc nuw nsw i64 %i.al to i32
  %i.an = and i32 %i.am, 1048575                  ; 3 uses
  %i.ao = icmp samesign ult i32 %i.an, 1048574
  br i1 %i.ao, label %bb.l, label %bb.m, !prof !35

bb.l:                                             ; preds = %bb.k
  %i.ap = add nuw nsw i32 %i.an, 1
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 40
  %i.as = and i64 %i.ak, -1152920405095219201
  %i.at = or i64 %i.ar, %i.as
  store i64 %i.at, ptr %i.aj, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit12

bb.m:                                             ; preds = %bb.k
  %i.au = icmp eq i32 %i.an, 1048574
  br i1 %i.au, label %bb.n, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit12, !prof !36

bb.n:                                             ; preds = %bb.m
  %i.av = or i64 %i.ak, 1152920405095219200
  store i64 %i.av, ptr %i.aj, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit12 unwind label %bb.ab

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit12: ; preds = %bb.m, %bb.l, %bb.n
  invoke void @_ZN4cvc58internal19TConvProofGenerator11getProofForENS0_12NodeTemplateILb1EEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(801) %i.b, ptr noundef nonnull align 8 %10)
          to label %bb.o unwind label %bb.ac

bb.o:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit12
  %i.aw = load ptr, ptr %10, align 8, !tbaa !34   ; 3 uses
  %i.ax = load i64, ptr %i.aw, align 8            ; 3 uses
  %i.ay = and i64 %i.ax, 1152920405095219200
  %.not.i.i13 = icmp eq i64 %i.ay, 1152920405095219200
  br i1 %.not.i.i13, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit14, label %bb.p, !prof !36

bb.p:                                             ; preds = %bb.o
  %i.az = add i64 %i.ax, 1152920405095219200
  %i.ba = and i64 %i.az, 1152920405095219200      ; 2 uses
  %i.bb = and i64 %i.ax, -1152920405095219201
  %i.bc = or disjoint i64 %i.ba, %i.bb
  store i64 %i.bc, ptr %i.aw, align 8
  %i.bd = icmp eq i64 %i.ba, 0
  br i1 %i.bd, label %bb.q, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit14, !prof !36

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit14 unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #21
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit14: ; preds = %bb.o, %bb.p, %bb.q
  %i.bg = load ptr, ptr %9, align 8, !tbaa !34    ; 3 uses
  %i.bh = load i64, ptr %i.bg, align 8            ; 3 uses
  %i.bi = and i64 %i.bh, 1152920405095219200
  %.not.i.i15 = icmp eq i64 %i.bi, 1152920405095219200
  br i1 %.not.i.i15, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit16, label %bb.s, !prof !36

bb.s:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit14
  %i.bj = add i64 %i.bh, 1152920405095219200
  %i.bk = and i64 %i.bj, 1152920405095219200      ; 2 uses
  %i.bl = and i64 %i.bh, -1152920405095219201
  %i.bm = or disjoint i64 %i.bk, %i.bl
  store i64 %i.bm, ptr %i.bg, align 8
  %i.bn = icmp eq i64 %i.bk, 0
  br i1 %i.bn, label %bb.t, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit16, !prof !36

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit16 unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  call void @__clang_call_terminate(ptr %i.bp) #21
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit16: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit14, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.bq = load ptr, ptr %7, align 8, !tbaa !34    ; 3 uses
  %i.br = load i64, ptr %i.bq, align 8            ; 3 uses
  %i.bs = and i64 %i.br, 1152920405095219200
  %.not.i.i17 = icmp eq i64 %i.bs, 1152920405095219200
  br i1 %.not.i.i17, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit18, label %bb.v, !prof !36

bb.v:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit16
  %i.bt = add i64 %i.br, 1152920405095219200
  %i.bu = and i64 %i.bt, 1152920405095219200      ; 2 uses
  %i.bv = and i64 %i.br, -1152920405095219201
  %i.bw = or disjoint i64 %i.bu, %i.bv
  store i64 %i.bw, ptr %i.bq, align 8
  %i.bx = icmp eq i64 %i.bu, 0
  br i1 %i.bx, label %bb.w, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit18, !prof !36

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bq)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit18 unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #21
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit18: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit16, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @_ZN4cvc58internal13NodeConverterD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  ret void

bb.y:                                             ; preds = %bb.d
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.z:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #19
  br label %bb.ae

bb.aa:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %.body.a

bb.ab:                                            ; preds = %bb.n
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ac:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit12
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #19
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.ce, %bb.ac ], [ %i.cd, %bb.ab ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #19
  br label %.body.a

.body.a:                                          ; preds = %bb.aa, %.body.i, %bb.ad
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ad ], [ %i.cc, %bb.aa ], [ %i.ai, %.body.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #19
  br label %bb.ae

bb.ae:                                            ; preds = %.body.a, %bb.z, %bb.y
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body.a ], [ %i.cb, %bb.z ], [ %i.ca, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @_ZN4cvc58internal13NodeConverterD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  resume { ptr, i32 } %.pn.pn.pn
}

declare noundef ptr @_ZNK4cvc58internal6EnvObj11nodeManagerEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN4cvc58internal13NodeConverter7convertENS0_12NodeTemplateILb1EEEb(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8, ptr noundef nonnull align 8 dereferenceable(241), ptr noundef align 8, i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN4cvc58internal19TConvProofGenerator11getProofForENS0_12NodeTemplateILb1EEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(801), ptr noundef align 8) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal13NodeConverterD2Ev(ptr noundef nonnull align 8 dead_on_return(241) dereferenceable(241) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4cvc58internal13NodeConverterE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !116  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIN4cvc58internal8TypeNodeESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.noexc.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.d, %.noexc.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !117 ; 2 uses
  invoke void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4cvc58internal8TypeNodeES5_ELb1EEEEE18_M_deallocate_nodeEPS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull %.06.i.i.i.i)
          to label %.noexc.i.i.i unwind label %bb.b

.noexc.i.i.i:                                     ; preds = %.lr.ph.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIN4cvc58internal8TypeNodeESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !114

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #21
  unreachable

_ZNSt10_HashtableIN4cvc58internal8TypeNodeESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.noexc.i.i.i, %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !119
  %i.j = shl i64 %i.i, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.g, i8 0, i64 %i.j, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !118  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt13unordered_mapIN4cvc58internal8TypeNodeES2_St4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S2_EEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableIN4cvc58internal8TypeNodeESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.n = load i64, ptr %i.h, align 8, !tbaa !119
  %i.o = shl i64 %i.n, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #22
  br label %_ZNSt13unordered_mapIN4cvc58internal8TypeNodeES2_St4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S2_EEED2Ev.exit

_ZNSt13unordered_mapIN4cvc58internal8TypeNodeES2_St4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S2_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN4cvc58internal8TypeNodeESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !116  ; 2 uses
  %.not5.i.i.i.i1 = icmp eq ptr %i.r, null
  br i1 %.not5.i.i.i.i1, label %_ZNSt10_HashtableIN4cvc58internal8TypeNodeESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i6, label %.lr.ph.i.i.i.i2

.lr.ph.i.i.i.i2:                                  ; preds = %_ZNSt13unordered_mapIN4cvc58internal8TypeNodeES2_St4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S2_EEED2Ev.exit, %.noexc.i.i.i4
  %.06.i.i.i.i3 = phi ptr [ %i.s, %.noexc.i.i.i4 ], [ %i.r, %_ZNSt13unordered_mapIN4cvc58internal8TypeNodeES2_St4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S2_EEED2Ev.exit ] ; 2 uses
  %i.s = load ptr, ptr %.06.i.i.i.i3, align 8, !tbaa !117 ; 2 uses
  invoke void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4cvc58internal8TypeNodeES5_ELb1EEEEE18_M_deallocate_nodeEPS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull %.06.i.i.i.i3)
          to label %.noexc.i.i.i4 unwind label %bb.d

.noexc.i.i.i4:                                    ; preds = %.lr.ph.i.i.i.i2
  %.not.i.i.i.i5 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i5, label %_ZNSt10_HashtableIN4cvc58internal8TypeNodeESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i6, label %.lr.ph.i.i.i.i2, !llvm.loop !114

bb.d:                                             ; preds = %.lr.ph.i.i.i.i2
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #21
  unreachable

_ZNSt10_HashtableIN4cvc58internal8TypeNodeESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i6: ; preds = %.noexc.i.i.i4, %_ZNSt13unordered_mapIN4cvc58internal8TypeNodeES2_St4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S2_EEED2Ev.exit
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !118
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !119
  %i.y = shl i64 %i.x, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 0, i64 %i.y, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !118  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt13unordered_mapIN4cvc58internal8TypeNodeES2_St4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S2_EEED2Ev.exit7, label %bb.e

bb.e:                                             ; preds = %_ZNSt10_HashtableIN4cvc58internal8TypeNodeESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i6
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !119
  %i.ad = shl i64 %i.ac, 3
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #22
  br label %_ZNSt13unordered_mapIN4cvc58internal8TypeNodeES2_St4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S2_EEED2Ev.exit7

_ZNSt13unordered_mapIN4cvc58internal8TypeNodeES2_St4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S2_EEED2Ev.exit7: ; preds = %_ZNSt10_HashtableIN4cvc58internal8TypeNodeESt4pairIKS2_S2_ESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i6, %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !120 ; 2 uses
  %.not5.i.i.i.i8 = icmp eq ptr %i.ag, null
  br i1 %.not5.i.i.i.i8, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i9

.lr.ph.i.i.i.i9:                                  ; preds = %_ZNSt13unordered_mapIN4cvc58internal8TypeNodeES2_St4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S2_EEED2Ev.exit7, %.noexc.i.i.i11
  %.06.i.i.i.i10 = phi ptr [ %i.ah, %.noexc.i.i.i11 ], [ %i.ag, %_ZNSt13unordered_mapIN4cvc58internal8TypeNodeES2_St4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S2_EEED2Ev.exit7 ] ; 2 uses
  %i.ah = load ptr, ptr %.06.i.i.i.i10, align 8, !tbaa !117 ; 2 uses
  invoke void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4cvc58internal12NodeTemplateILb1EEES6_ELb1EEEEE18_M_deallocate_nodeEPS9_(ptr noundef nonnull align 8 dereferenceable(56) %i.ae, ptr noundef nonnull %.06.i.i.i.i10)
          to label %.noexc.i.i.i11 unwind label %bb.f

.noexc.i.i.i11:                                   ; preds = %.lr.ph.i.i.i.i9
  %.not.i.i.i.i12 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i12, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i9, !llvm.loop !115

bb.f:                                             ; preds = %.lr.ph.i.i.i.i9
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #21
  unreachable

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.noexc.i.i.i11, %_ZNSt13unordered_mapIN4cvc58internal8TypeNodeES2_St4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S2_EEED2Ev.exit7
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !121
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !122
  %i.an = shl i64 %i.am, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ak, i8 0, i64 %i.an, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  %i.ao = load ptr, ptr %i.ae, align 8, !tbaa !121 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !122
  %i.as = shl i64 %i.ar, 3
  tail call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #22
  br label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit

_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !120 ; 2 uses
  %.not5.i.i.i.i13 = icmp eq ptr %i.av, null
  br i1 %.not5.i.i.i.i13, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i18, label %.lr.ph.i.i.i.i14

.lr.ph.i.i.i.i14:                                 ; preds = %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit, %.noexc.i.i.i16
  %.06.i.i.i.i15 = phi ptr [ %i.aw, %.noexc.i.i.i16 ], [ %i.av, %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit ] ; 2 uses
  %i.aw = load ptr, ptr %.06.i.i.i.i15, align 8, !tbaa !117 ; 2 uses
  invoke void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4cvc58internal12NodeTemplateILb1EEES6_ELb1EEEEE18_M_deallocate_nodeEPS9_(ptr noundef nonnull align 8 dereferenceable(56) %i.at, ptr noundef nonnull %.06.i.i.i.i15)
          to label %.noexc.i.i.i16 unwind label %bb.h

.noexc.i.i.i16:                                   ; preds = %.lr.ph.i.i.i.i14
  %.not.i.i.i.i17 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i17, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i18, label %.lr.ph.i.i.i.i14, !llvm.loop !115

bb.h:                                             ; preds = %.lr.ph.i.i.i.i14
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #21
  unreachable

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i18: ; preds = %.noexc.i.i.i16, %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit
  %i.az = load ptr, ptr %i.at, align 8, !tbaa !121
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !122
  %i.bc = shl i64 %i.bb, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.az, i8 0, i64 %i.bc, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  %i.bd = load ptr, ptr %i.at, align 8, !tbaa !121 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit19, label %bb.i

bb.i:                                             ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i18
  %i.bg = load i64, ptr %i.ba, align 8, !tbaa !122
  %i.bh = shl i64 %i.bg, 3
  tail call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #22
  br label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit19

_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit19: ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i18, %bb.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal8rewriter22RewriteDbNodeConverterD0Ev(ptr noundef nonnull align 8 dereferenceable(264) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZN4cvc58internal13NodeConverterD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 264) #22
  ret void
}

declare void @_ZN4cvc58internal13NodeConverter10preConvertENS0_12NodeTemplateILb1EEE(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8, ptr noundef nonnull align 8 dereferenceable(241), ptr noundef align 8) unnamed_addr #1

declare void @_ZN4cvc58internal13NodeConverter18postConvertUntypedENS0_12NodeTemplateILb1EEERKSt6vectorIS3_SaIS3_EEb(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8, ptr noundef nonnull align 8 dereferenceable(241), ptr noundef align 8, ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) unnamed_addr #1

declare void @_ZN4cvc58internal13NodeConverter14preConvertTypeENS0_8TypeNodeE(ptr dead_on_unwind writable sret(%"class.cvc5::internal::TypeNode") align 8, ptr noundef nonnull align 8 dereferenceable(241), ptr noundef align 8) unnamed_addr #1
end_hunk_2
