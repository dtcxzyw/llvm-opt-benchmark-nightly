Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/bound_inference?download=true
inline.NumInlined: 915
inline.NumDeleted: 355
begin_hunk_0_@_ZN4cvc58internal6theory5arith14BoundInference18update_upper_boundERKNS0_12NodeTemplateILb1EEES7_S7_b:bb.a
  %i.iy = add i64 %i.iw, 1152920405095219200
  %i.iz = and i64 %i.iy, 1152920405095219200      ; 2 uses
  %i.ja = and i64 %i.iw, -1152920405095219201
  %i.jb = or disjoint i64 %i.iz, %i.ja
  store i64 %i.jb, ptr %i.iu, align 8
  %i.jc = icmp eq i64 %i.iz, 0
  br i1 %i.jc, label %bb.ck, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i126, !prof !43

bb.ck:                                            ; preds = %bb.cj
  call void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.iu)
  br label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i126

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i126: ; preds = %bb.ck, %bb.cj, %bb.ci
  %i.jd = load ptr, ptr %1, align 8, !tbaa !29    ; 5 uses
  store ptr %i.jd, ptr %i.it, align 8, !tbaa !29
  %i.je = load i64, ptr %i.jd, align 8            ; 3 uses
  %i.jf = lshr i64 %i.je, 40
  %i.jg = trunc nuw nsw i64 %i.jf to i32
  %i.jh = and i32 %i.jg, 1048575                  ; 3 uses
  %i.ji = icmp samesign ult i32 %i.jh, 1048574
  br i1 %i.ji, label %bb.cl, label %bb.cm, !prof !44

bb.cl:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i126
  %i.jj = add nuw nsw i32 %i.jh, 1
  %i.jk = zext nneg i32 %i.jj to i64
  %i.jl = shl nuw nsw i64 %i.jk, 40
  %i.jm = and i64 %i.je, -1152920405095219201
  %i.jn = or i64 %i.jl, %i.jm
  store i64 %i.jn, ptr %i.jd, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit127

bb.cm:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i126
  %i.jo = icmp eq i32 %i.jh, 1048574
  br i1 %i.jo, label %bb.cn, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit127, !prof !43

bb.cn:                                            ; preds = %bb.cm
  %i.jp = or i64 %i.je, 1152920405095219200
  store i64 %i.jp, ptr %i.jd, align 8
  call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jd)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit127

bb.co:                                            ; preds = %bb.bq
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %.body109

bb.cp:                                            ; preds = %bb.bu
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.cq:                                            ; preds = %bb.cb, %bb.by
  %i.js = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #22
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.pn = phi { ptr, i32 } [ %i.js, %bb.cq ], [ %i.jr, %bb.cp ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #22
  br label %.body109

.body109:                                         ; preds = %bb.co, %bb.bt, %bb.cr
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.cr ], [ %i.jq, %bb.co ], [ %i.ha, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %common.resume

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit127: ; preds = %bb.cn, %bb.cm, %bb.cl, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit123, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit94, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit107, %bb.bo, %bb.bp
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory5arith14BoundInference18update_lower_boundERKNS0_12NodeTemplateILb1EEES7_S7_b(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %8 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %9 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %10 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %11 = alloca %"class.cvc5::internal::NodeTemplate.0", align 8 ; 7 uses
  %12 = alloca %"class.cvc5::internal::NodeTemplate.0", align 8 ; 8 uses
  %13 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %14 = alloca %"class.cvc5::internal::NodeTemplate.0", align 8 ; 8 uses
  %15 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %16 = alloca %"class.cvc5::internal::NodeTemplate.0", align 8 ; 7 uses
  %17 = alloca %"class.cvc5::internal::NodeTemplate.0", align 8 ; 8 uses
  %18 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %19 = alloca %"class.cvc5::internal::NodeTemplate.0", align 8 ; 7 uses
  %i.a = zext i1 %4 to i8                         ; 2 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4cvc58internal6theory5arith14BoundInference10get_or_addERKNS0_12NodeTemplateILb1EEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 16 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.d = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZNK4cvc58internal12NodeTemplateILb1EE6isNullEv.exit, !prof !41

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #22
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZNK4cvc58internal12NodeTemplateILb1EE6isNullEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23
          to label %bb.d unwind label %bb.e       ; 3 uses

bb.d:                                             ; preds = %bb.c
  store i64 1152920405095219200, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store ptr %i.g, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !42
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #22
  br label %_ZNK4cvc58internal12NodeTemplateILb1EE6isNullEv.exit

common.resume:                                    ; preds = %.body109, %.body, %bb.ar, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.e ], [ %.pn.pn, %.body109 ], [ %.pn49.pn, %.body ], [ %.pn47, %bb.ar ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #22
  br label %common.resume

_ZNK4cvc58internal12NodeTemplateILb1EE6isNullEv.exit: ; preds = %bb.a, %bb.b, %bb.d
  %i.j = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !42
  %i.k = icmp eq ptr %i.c, %i.j
  br i1 %i.k, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EE6isNullEv.exit
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.m = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4cvc58internal4expr9NodeValue8getConstINS0_8RationalEEERKT_v(ptr noundef nonnull align 8 dereferenceable(24) %i.l)
  %i.n = load ptr, ptr %3, align 8, !tbaa !29
  %i.o = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4cvc58internal4expr9NodeValue8getConstINS0_8RationalEEERKT_v(ptr noundef nonnull align 8 dereferenceable(24) %i.n)
  %i.p = tail call i32 @__gmpq_cmp(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.o) #24
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.g, label %bb.bo

bb.g:                                             ; preds = %bb.f, %_ZNK4cvc58internal12NodeTemplateILb1EE6isNullEv.exit
  %i.r = tail call noundef ptr @_ZNK4cvc58internal6EnvObj11nodeManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 0 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !29   ; 4 uses
  %i.t = load ptr, ptr %3, align 8, !tbaa !29
  %.not.i73 = icmp eq ptr %i.s, %i.t
  br i1 %.not.i73, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, label %bb.h, !prof !43

bb.h:                                             ; preds = %bb.g
  %i.u = load i64, ptr %i.s, align 8              ; 3 uses
  %i.v = and i64 %i.u, 1152920405095219200
  %.not.i.i74 = icmp eq i64 %i.v, 1152920405095219200
  br i1 %.not.i.i74, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, label %bb.i, !prof !43

bb.i:                                             ; preds = %bb.h
  %i.w = add i64 %i.u, 1152920405095219200
  %i.x = and i64 %i.w, 1152920405095219200        ; 2 uses
  %i.y = and i64 %i.u, -1152920405095219201
  %i.z = or disjoint i64 %i.x, %i.y
  store i64 %i.z, ptr %i.s, align 8
  %i.aa = icmp eq i64 %i.x, 0
  br i1 %i.aa, label %bb.j, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, !prof !43

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.s)
  br label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i:    ; preds = %bb.j, %bb.i, %bb.h
  %i.ab = load ptr, ptr %3, align 8, !tbaa !29    ; 5 uses
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !29
  %i.ac = load i64, ptr %i.ab, align 8            ; 3 uses
  %i.ad = lshr i64 %i.ac, 40
  %i.ae = trunc nuw nsw i64 %i.ad to i32
  %i.af = and i32 %i.ae, 1048575                  ; 3 uses
  %i.ag = icmp samesign ult i32 %i.af, 1048574
  br i1 %i.ag, label %bb.k, label %bb.l, !prof !44

bb.k:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.ah = add nuw nsw i32 %i.af, 1
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 40
  %i.ak = and i64 %i.ac, -1152920405095219201
  %i.al = or i64 %i.aj, %i.ak
  store i64 %i.al, ptr %i.ab, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit

bb.l:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.am = icmp eq i32 %i.af, 1048574
  br i1 %i.am, label %bb.m, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, !prof !43

bb.m:                                             ; preds = %bb.l
  %i.an = or i64 %i.ac, 1152920405095219200
  store i64 %i.an, ptr %i.ab, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ab)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit: ; preds = %bb.g, %bb.k, %bb.l, %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i8 %i.a, ptr %i.ao, align 8, !tbaa !14
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !29 ; 4 uses
  %i.ar = load ptr, ptr %1, align 8, !tbaa !29
  %.not.i75 = icmp eq ptr %i.aq, %i.ar
  br i1 %.not.i75, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit78.a, label %bb.n, !prof !43

bb.n:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit
  %i.as = load i64, ptr %i.aq, align 8            ; 3 uses
  %i.at = and i64 %i.as, 1152920405095219200
  %.not.i.i76 = icmp eq i64 %i.at, 1152920405095219200
  br i1 %.not.i.i76, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i77, label %bb.o, !prof !43

bb.o:                                             ; preds = %bb.n
  %i.au = add i64 %i.as, 1152920405095219200
  %i.av = and i64 %i.au, 1152920405095219200      ; 2 uses
  %i.aw = and i64 %i.as, -1152920405095219201
  %i.ax = or disjoint i64 %i.av, %i.aw
  store i64 %i.ax, ptr %i.aq, align 8
  %i.ay = icmp eq i64 %i.av, 0
  br i1 %i.ay, label %bb.p, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i77, !prof !43

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aq)
  br label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i77

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i77:  ; preds = %bb.p, %bb.o, %bb.n
  %i.az = load ptr, ptr %1, align 8, !tbaa !29    ; 5 uses
  store ptr %i.az, ptr %i.ap, align 8, !tbaa !29
  %i.ba = load i64, ptr %i.az, align 8            ; 3 uses
  %i.bb = lshr i64 %i.ba, 40
  %i.bc = trunc nuw nsw i64 %i.bb to i32
  %i.bd = and i32 %i.bc, 1048575                  ; 3 uses
  %i.be = icmp samesign ult i32 %i.bd, 1048574
  br i1 %i.be, label %bb.q, label %bb.r, !prof !44

bb.q:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i77
  %i.bf = add nuw nsw i32 %i.bd, 1
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = shl nuw nsw i64 %i.bg, 40
  %i.bi = and i64 %i.ba, -1152920405095219201
  %i.bj = or i64 %i.bh, %i.bi
  store i64 %i.bj, ptr %i.az, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit78.a

bb.r:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i77
  %i.bk = icmp eq i32 %i.bd, 1048574
  br i1 %i.bk, label %bb.s, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit78.a, !prof !43

bb.s:                                             ; preds = %bb.r
  %i.bl = or i64 %i.ba, 1152920405095219200
  store i64 %i.bl, ptr %i.az, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.az)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit78.a

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit78.a: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, %bb.q, %bb.r, %bb.s
  %i.bm = load i8, ptr %i.ao, align 8, !tbaa !14, !range !15, !noundef !16
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.as, label %bb.t

bb.t:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit78.a
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !30, !range !15, !noundef !16
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.as, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bs = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !29
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %bb.v, label %bb.as

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @_ZN4cvc58internal6theory5arith10mkEqualityERKNS0_12NodeTemplateILb1EEES6_(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate.0") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.bv = load ptr, ptr %11, align 8, !tbaa !29
  store ptr %i.bv, ptr %13, align 8, !tbaa !46
  invoke void @_ZNK4cvc58internal6EnvObj7rewriteENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate.0") align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 %13)
          to label %bb.w unwind label %bb.ap

bb.w:                                             ; preds = %bb.v
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 4 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !29 ; 4 uses
  %i.by = load ptr, ptr %12, align 8, !tbaa !29
  %.not.i79 = icmp eq ptr %i.bx, %i.by
  br i1 %.not.i79, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit83, label %bb.x, !prof !43

bb.x:                                             ; preds = %bb.w
  %i.bz = load i64, ptr %i.bx, align 8            ; 3 uses
  %i.ca = and i64 %i.bz, 1152920405095219200
  %.not.i.i80 = icmp eq i64 %i.ca, 1152920405095219200
  br i1 %.not.i.i80, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i81, label %bb.y, !prof !43

bb.y:                                             ; preds = %bb.x
  %i.cb = add i64 %i.bz, 1152920405095219200
  %i.cc = and i64 %i.cb, 1152920405095219200      ; 2 uses
  %i.cd = and i64 %i.bz, -1152920405095219201
  %i.ce = or disjoint i64 %i.cc, %i.cd
  store i64 %i.ce, ptr %i.bx, align 8
  %i.cf = icmp eq i64 %i.cc, 0
  br i1 %i.cf, label %bb.z, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i81, !prof !43

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i81 unwind label %bb.aq

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i81:  ; preds = %bb.z, %bb.y, %bb.x
  %i.cg = load ptr, ptr %12, align 8, !tbaa !29   ; 5 uses
  store ptr %i.cg, ptr %i.bw, align 8, !tbaa !29
  %i.ch = load i64, ptr %i.cg, align 8            ; 3 uses
  %i.ci = lshr i64 %i.ch, 40
  %i.cj = trunc nuw nsw i64 %i.ci to i32
  %i.ck = and i32 %i.cj, 1048575                  ; 3 uses
  %i.cl = icmp samesign ult i32 %i.ck, 1048574
  br i1 %i.cl, label %bb.aa, label %bb.ab, !prof !44

bb.aa:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i81
  %i.cm = add nuw nsw i32 %i.ck, 1
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = shl nuw nsw i64 %i.cn, 40
  %i.cp = and i64 %i.ch, -1152920405095219201
  %i.cq = or i64 %i.co, %i.cp
  store i64 %i.cq, ptr %i.cg, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit83

bb.ab:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i81
  %i.cr = icmp eq i32 %i.ck, 1048574
  br i1 %i.cr, label %bb.ac, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit83, !prof !43

bb.ac:                                            ; preds = %bb.ab
  %i.cs = or i64 %i.ch, 1152920405095219200
  store i64 %i.cs, ptr %i.cg, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cg)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit83 unwind label %bb.aq

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit83: ; preds = %bb.ab, %bb.aa, %bb.w, %bb.ac
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !29 ; 4 uses
  %i.cv = load ptr, ptr %i.bw, align 8, !tbaa !29
  %.not.i84 = icmp eq ptr %i.cu, %i.cv
  br i1 %.not.i84, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit89, label %bb.ad, !prof !43

bb.ad:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit83
  %i.cw = load i64, ptr %i.cu, align 8            ; 3 uses
  %i.cx = and i64 %i.cw, 1152920405095219200
  %.not.i.i85 = icmp eq i64 %i.cx, 1152920405095219200
  br i1 %.not.i.i85, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i86, label %bb.ae, !prof !43

bb.ae:                                            ; preds = %bb.ad
  %i.cy = add i64 %i.cw, 1152920405095219200
  %i.cz = and i64 %i.cy, 1152920405095219200      ; 2 uses
  %i.da = and i64 %i.cw, -1152920405095219201
  %i.db = or disjoint i64 %i.cz, %i.da
  store i64 %i.db, ptr %i.cu, align 8
  %i.dc = icmp eq i64 %i.cz, 0
  br i1 %i.dc, label %bb.af, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i86, !prof !43

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cu)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i86 unwind label %bb.aq

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i86:  ; preds = %bb.af, %bb.ae, %bb.ad
  %i.dd = load ptr, ptr %i.bw, align 8, !tbaa !29 ; 5 uses
  store ptr %i.dd, ptr %i.ct, align 8, !tbaa !29
  %i.de = load i64, ptr %i.dd, align 8            ; 3 uses
  %i.df = lshr i64 %i.de, 40
  %i.dg = trunc nuw nsw i64 %i.df to i32
  %i.dh = and i32 %i.dg, 1048575                  ; 3 uses
  %i.di = icmp samesign ult i32 %i.dh, 1048574
  br i1 %i.di, label %bb.ag, label %bb.ah, !prof !44

bb.ag:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i86
  %i.dj = add nuw nsw i32 %i.dh, 1
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = shl nuw nsw i64 %i.dk, 40
  %i.dm = and i64 %i.de, -1152920405095219201
  %i.dn = or i64 %i.dl, %i.dm
  store i64 %i.dn, ptr %i.dd, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit89

bb.ah:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i86
  %i.do = icmp eq i32 %i.dh, 1048574
  br i1 %i.do, label %bb.ai, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit89, !prof !43

bb.ai:                                            ; preds = %bb.ah
  %i.dp = or i64 %i.de, 1152920405095219200
  store i64 %i.dp, ptr %i.dd, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dd)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit89 unwind label %bb.aq

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit89: ; preds = %bb.ah, %bb.ag, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit83, %bb.ai
  %i.dq = load ptr, ptr %12, align 8, !tbaa !29   ; 3 uses
  %i.dr = load i64, ptr %i.dq, align 8            ; 3 uses
  %i.ds = and i64 %i.dr, 1152920405095219200
  %.not.i.i90 = icmp eq i64 %i.ds, 1152920405095219200
  br i1 %.not.i.i90, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.aj, !prof !43

bb.aj:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit89
  %i.dt = add i64 %i.dr, 1152920405095219200
  %i.du = and i64 %i.dt, 1152920405095219200      ; 2 uses
  %i.dv = and i64 %i.dr, -1152920405095219201
  %i.dw = or disjoint i64 %i.du, %i.dv
  store i64 %i.dw, ptr %i.dq, align 8
  %i.dx = icmp eq i64 %i.du, 0
  br i1 %i.dx, label %bb.ak, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !43

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dq)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dy = landingpad { ptr, i32 }
          catch ptr null
  %i.dz = extractvalue { ptr, i32 } %i.dy, 0
  call void @__clang_call_terminate(ptr %i.dz) #21
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit89, %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.ea = load ptr, ptr %11, align 8, !tbaa !29   ; 3 uses
  %i.eb = load i64, ptr %i.ea, align 8            ; 3 uses
  %i.ec = and i64 %i.eb, 1152920405095219200
  %.not.i.i92 = icmp eq i64 %i.ec, 1152920405095219200
  br i1 %.not.i.i92, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit94, label %bb.am, !prof !43

bb.am:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.ed = add i64 %i.eb, 1152920405095219200
  %i.ee = and i64 %i.ed, 1152920405095219200      ; 2 uses
  %i.ef = and i64 %i.eb, -1152920405095219201
  %i.eg = or disjoint i64 %i.ee, %i.ef
  store i64 %i.eg, ptr %i.ea, align 8
  %i.eh = icmp eq i64 %i.ee, 0
  br i1 %i.eh, label %bb.an, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit94, !prof !43

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ea)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit94 unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ei = landingpad { ptr, i32 }
          catch ptr null
  %i.ej = extractvalue { ptr, i32 } %i.ei, 0
  call void @__clang_call_terminate(ptr %i.ej) #21
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit94: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit127

bb.ap:                                            ; preds = %bb.v
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ai, %bb.af, %bb.ac, %bb.z
  %i.el = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #22
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.pn47 = phi { ptr, i32 } [ %i.el, %bb.aq ], [ %i.ek, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %common.resume

bb.as:                                            ; preds = %bb.u, %bb.t, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit78.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.em = select i1 %4, i32 78, i32 79
  %i.en = load ptr, ptr %2, align 8, !tbaa !29    ; 2 uses
  %i.eo = load ptr, ptr %3, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22, !noalias !88
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !54, !noalias !88
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %8, ptr noundef %i.eq, i32 noundef %i.em)
          to label %.noexc95 unwind label %bb.bk

.noexc95:                                         ; preds = %bb.as
  store ptr %i.en, ptr %9, align 8, !tbaa !46, !noalias !88
  %i.er = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %8, ptr noundef nonnull align 8 %9)
          to label %bb.at unwind label %bb.av, !noalias !88

bb.at:                                            ; preds = %.noexc95
  store ptr %i.eo, ptr %10, align 8, !tbaa !46, !noalias !88
  %i.es = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.er, ptr noundef nonnull align 8 %10)
          to label %bb.au unwind label %bb.av, !noalias !88 ; 0 uses

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate.0") align 8 %16, ptr noundef nonnull align 8 dereferenceable(124) %8)
          to label %bb.aw unwind label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %.noexc95
  %i.et = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22, !noalias !88
  br label %.body

bb.aw:                                            ; preds = %bb.au
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22, !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.eu = load ptr, ptr %16, align 8, !tbaa !29
  store ptr %i.eu, ptr %15, align 8, !tbaa !46
  invoke void @_ZNK4cvc58internal6EnvObj7rewriteENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate.0") align 8 %14, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 %15)
          to label %bb.ax unwind label %bb.bl

bb.ax:                                            ; preds = %bb.aw
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !29 ; 4 uses
  %i.ex = load ptr, ptr %14, align 8, !tbaa !29
  %.not.i96 = icmp eq ptr %i.ew, %i.ex
  br i1 %.not.i96, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit101, label %bb.ay, !prof !43

bb.ay:                                            ; preds = %bb.ax
  %i.ey = load i64, ptr %i.ew, align 8            ; 3 uses
  %i.ez = and i64 %i.ey, 1152920405095219200
  %.not.i.i97 = icmp eq i64 %i.ez, 1152920405095219200
  br i1 %.not.i.i97, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i98, label %bb.az, !prof !43

bb.az:                                            ; preds = %bb.ay
  %i.fa = add i64 %i.ey, 1152920405095219200
  %i.fb = and i64 %i.fa, 1152920405095219200      ; 2 uses
  %i.fc = and i64 %i.ey, -1152920405095219201
  %i.fd = or disjoint i64 %i.fb, %i.fc
  store i64 %i.fd, ptr %i.ew, align 8
  %i.fe = icmp eq i64 %i.fb, 0
  br i1 %i.fe, label %bb.ba, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i98, !prof !43

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ew)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i98 unwind label %bb.bm

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i98:  ; preds = %bb.ba, %bb.az, %bb.ay
  %i.ff = load ptr, ptr %14, align 8, !tbaa !29   ; 5 uses
  store ptr %i.ff, ptr %i.ev, align 8, !tbaa !29
  %i.fg = load i64, ptr %i.ff, align 8            ; 3 uses
  %i.fh = lshr i64 %i.fg, 40
  %i.fi = trunc nuw nsw i64 %i.fh to i32
  %i.fj = and i32 %i.fi, 1048575                  ; 3 uses
  %i.fk = icmp samesign ult i32 %i.fj, 1048574
  br i1 %i.fk, label %bb.bb, label %bb.bc, !prof !44

bb.bb:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i98
  %i.fl = add nuw nsw i32 %i.fj, 1
  %i.fm = zext nneg i32 %i.fl to i64
  %i.fn = shl nuw nsw i64 %i.fm, 40
  %i.fo = and i64 %i.fg, -1152920405095219201
  %i.fp = or i64 %i.fn, %i.fo
  store i64 %i.fp, ptr %i.ff, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit101

bb.bc:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i98
  %i.fq = icmp eq i32 %i.fj, 1048574
  br i1 %i.fq, label %bb.bd, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit101, !prof !43

bb.bd:                                            ; preds = %bb.bc
  %i.fr = or i64 %i.fg, 1152920405095219200
  store i64 %i.fr, ptr %i.ff, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ff)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit101 unwind label %bb.bm

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit101: ; preds = %bb.bc, %bb.bb, %bb.ax, %bb.bd
  %i.fs = load ptr, ptr %14, align 8, !tbaa !29   ; 3 uses
  %i.ft = load i64, ptr %i.fs, align 8            ; 3 uses
  %i.fu = and i64 %i.ft, 1152920405095219200
  %.not.i.i102 = icmp eq i64 %i.fu, 1152920405095219200
  br i1 %.not.i.i102, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit104, label %bb.be, !prof !43

bb.be:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit101
  %i.fv = add i64 %i.ft, 1152920405095219200
  %i.fw = and i64 %i.fv, 1152920405095219200      ; 2 uses
  %i.fx = and i64 %i.ft, -1152920405095219201
  %i.fy = or disjoint i64 %i.fw, %i.fx
  store i64 %i.fy, ptr %i.fs, align 8
  %i.fz = icmp eq i64 %i.fw, 0
  br i1 %i.fz, label %bb.bf, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit104, !prof !43

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fs)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit104 unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ga = landingpad { ptr, i32 }
          catch ptr null
  %i.gb = extractvalue { ptr, i32 } %i.ga, 0
  call void @__clang_call_terminate(ptr %i.gb) #21
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit104: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit101, %bb.be, %bb.bf
  %i.gc = load ptr, ptr %16, align 8, !tbaa !29   ; 3 uses
  %i.gd = load i64, ptr %i.gc, align 8            ; 3 uses
  %i.ge = and i64 %i.gd, 1152920405095219200
  %.not.i.i105 = icmp eq i64 %i.ge, 1152920405095219200
  br i1 %.not.i.i105, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit107, label %bb.bh, !prof !43

bb.bh:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit104
  %i.gf = add i64 %i.gd, 1152920405095219200
  %i.gg = and i64 %i.gf, 1152920405095219200      ; 2 uses
  %i.gh = and i64 %i.gd, -1152920405095219201
  %i.gi = or disjoint i64 %i.gg, %i.gh
  store i64 %i.gi, ptr %i.gc, align 8
  %i.gj = icmp eq i64 %i.gg, 0
  br i1 %i.gj, label %bb.bi, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit107, !prof !43

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gc)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit107 unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gk = landingpad { ptr, i32 }
          catch ptr null
  %i.gl = extractvalue { ptr, i32 } %i.gk, 0
  call void @__clang_call_terminate(ptr %i.gl) #21
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit107: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit104, %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit127

bb.bk:                                            ; preds = %bb.as
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bl:                                            ; preds = %bb.aw
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bd, %bb.ba
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #22
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.pn49 = phi { ptr, i32 } [ %i.go, %bb.bm ], [ %i.gn, %bb.bl ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #22
  br label %.body

.body:                                            ; preds = %bb.bk, %bb.av, %bb.bn
  %.pn49.pn = phi { ptr, i32 } [ %.pn49, %bb.bn ], [ %i.gm, %bb.bk ], [ %i.et, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %common.resume

bb.bo:                                            ; preds = %bb.f
  br i1 %4, label %bb.bp, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit127

bb.bp:                                            ; preds = %bb.bo
  %i.gp = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.gq = load ptr, ptr %3, align 8, !tbaa !29
  %i.gr = icmp eq ptr %i.gp, %i.gq
  br i1 %i.gr, label %bb.bq, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit127

bb.bq:                                            ; preds = %bb.bp
  %i.gs = tail call noundef ptr @_ZNK4cvc58internal6EnvObj11nodeManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 0 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %i.a, ptr %i.gt, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
end_hunk_0
