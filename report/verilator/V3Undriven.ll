Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Undriven?download=true
inline.NumInlined: 1854
inline.NumDeleted: 607
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN14VNVisitorConst5visitEP8AstRedOr
declare void @_ZN14VNVisitorConst5visitEP8AstRedOr(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP9AstRedXor(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP11AstRefDType(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15UndrivenVisitor5visitEP10AstRelease(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 90 ; 4 uses
  %i.b = load i8, ptr %i.a, align 2, !tbaa !113, !range !75, !noundef !76 ; 2 uses
  store i8 0, ptr %i.a, align 2, !tbaa !127
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !116  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 312
  %i.g = load ptr, ptr %i.f, align 8
  invoke void %i.g(ptr noundef nonnull align 8 dereferenceable(152) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %_ZN14VNVisitorConst12iterateConstEP7AstNode.exit unwind label %bb.b, !inline_history !30

_ZN14VNVisitorConst12iterateConstEP7AstNode.exit: ; preds = %bb.a
  store i8 %i.b, ptr %i.a, align 2, !tbaa !113
  ret void

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  store i8 %i.b, ptr %i.a, align 2, !tbaa !113
  resume { ptr, i32 } %i.h
}

declare void @_ZN14VNVisitorConst5visitEP9AstRepeat(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP12AstReplicate(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP13AstReplicateN(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP15AstRequireDType(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP15AstResizeLValue(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP11AstRestrict(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP9AstReturn(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP9AstRising(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP7AstRose(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP7AstSAnd(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP11AstSClocked(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP11AstSConsRep(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP14AstSEventually(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP8AstSExpr(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP10AstSFormat(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP13AstSFormatArg(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP11AstSFormatF(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP11AstSGotoRep(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP13AstSIntersect(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP14AstSNonConsRep(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP6AstSOr(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP9AstSScanF(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP14AstSThroughout(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP10AstSWithin(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP19AstSampleQueueDType(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP10AstSampled(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP8AstScope(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN14VNVisitorConst5visitEP12AstScopeName(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15UndrivenVisitor5visitEP6AstSel(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN7AstNode4castI13AstNodeVarRef11AstNodeExprEEPT_PT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.c, align 8, !tbaa !154
  %i.d = add i16 %.sroa.0.0.copyload.i.i.i, -369
  %spec.select.i.i = icmp ult i16 %i.d, 2
  %spec.select.i = select i1 %spec.select.i.i, ptr %i.b, ptr null
  br label %_ZN7AstNode4castI13AstNodeVarRef11AstNodeExprEEPT_PT0_.exit

_ZN7AstNode4castI13AstNodeVarRef11AstNodeExprEEPT_PT0_.exit: ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ null, %bb.a ], [ %spec.select.i, %bb.b ] ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !126, !nonnull !76, !noundef !76 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %.sroa.0.0.copyload.i.i.i58 = load i16, ptr %i.h, align 8, !tbaa !154
  %i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i58, 121
  %i.j = icmp ne ptr %i.e, null
  %or.cond = and i1 %i.j, %i.i
  br i1 %or.cond, label %bb.c, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.thread

bb.c:                                             ; preds = %_ZN7AstNode4castI13AstNodeVarRef11AstNodeExprEEPT_PT0_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 152 ; 2 uses
  %i.l = tail call noundef zeroext i1 @_ZNK8V3Number11isFourStateEv(ptr noundef nonnull align 8 dereferenceable(56) %i.k)
  br i1 %i.l, label %._ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.thread_crit_edge, label %.preheader

._ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.thread_crit_edge: ; preds = %bb.c
  %.pre118 = load ptr, ptr %i.f, align 8, !tbaa !126
  br label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.thread

.preheader:                                       ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 176 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.ai
  %i.aa = phi i1 [ false, %.preheader ], [ true, %bb.ai ]
  %.041115 = phi i32 [ 1, %.preheader ], [ 2, %bb.ai ] ; 2 uses
  %i.ab = load ptr, ptr %i.n, align 8, !tbaa !155
  %i.ac = call noundef ptr @_ZN15UndrivenVisitor9getEntrypEP6AstVari(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %i.ab, i32 noundef %.041115) ; 8 uses
  %i.ad = call noundef i32 @_ZNK8V3Number6toUIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.k) ; 3 uses
  %i.ae = load i8, ptr %i.o, align 8, !tbaa !133, !range !75, !noundef !76
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.0.0.copyload.i = load i8, ptr %i.p, align 8, !tbaa !152
  %i.ag = add i8 %.sroa.0.0.copyload.i, -1
  %spec.select.i60 = icmp ult i8 %i.ag, 2
  br i1 %spec.select.i60, label %.critedge, label %.thread

.critedge:                                        ; preds = %bb.d, %bb.e
  br i1 %i.aa, label %bb.f, label %_ZNK16UndrivenVarEntry18isUsedNotDrivenBitEii.exit.thread

bb.f:                                             ; preds = %.critedge
  %i.ah = load ptr, ptr %i.m, align 8, !tbaa !111
  %.not44 = icmp eq ptr %i.ah, null
  br i1 %.not44, label %_ZNK16UndrivenVarEntry18isUsedNotDrivenBitEii.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = load ptr, ptr %i.q, align 8, !tbaa !179 ; 2 uses
  %.not.i61 = icmp eq ptr %i.ai, null
  br i1 %.not.i61, label %_ZNK16UndrivenVarEntry18isUsedNotDrivenBitEii.exit.thread.thread, label %_ZNK7AstNode5widthEv.exit

_ZNK7AstNode5widthEv.exit:                        ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 152
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !258 ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph.i, label %_ZNK16UndrivenVarEntry18isUsedNotDrivenBitEii.exit.thread

.lr.ph.i:                                         ; preds = %_ZNK7AstNode5widthEv.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = load ptr, ptr %i.am, align 8            ; 3 uses
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %.tr.i.i = trunc i64 %i.au to i32
  %i.av = shl i32 %.tr.i.i, 3
  %i.aw = add i32 %i.av, %i.aq
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  br label %bb.h

bb.h:                                             ; preds = %_ZNK16UndrivenVarEntry8bitNumOkEi.exit.thread.i, %.lr.ph.i
  %.01121.i = phi i32 [ 0, %.lr.ph.i ], [ %i.bu, %_ZNK16UndrivenVarEntry8bitNumOkEi.exit.thread.i ] ; 2 uses
  %i.az = add nsw i32 %.01121.i, %i.ad            ; 4 uses
  %i.ba = icmp sgt i32 %i.az, -1
  %i.bb = shl nuw nsw i32 %i.az, 2                ; 3 uses
  %i.bc = icmp slt i32 %i.bb, %i.aw
  %or.cond26.i = select i1 %i.ba, i1 %i.bc, i1 false
  br i1 %or.cond26.i, label %bb.i, label %_ZNK16UndrivenVarEntry8bitNumOkEi.exit.thread.i

bb.i:                                             ; preds = %bb.h
  %i.bd = load i64, ptr %i.ay, align 8, !tbaa !106 ; 3 uses
  %i.be = and i64 %i.bd, 1
  %.not.i62 = icmp eq i64 %i.be, 0
  br i1 %.not.i62, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bf = lshr i32 %i.az, 4
  %.zext18.i = zext nneg i32 %i.bf to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.zext18.i
  %i.bh = and i32 %i.bb, 60                       ; 2 uses
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = shl nuw nsw i64 1, %i.bi
  %i.bk = load i64, ptr %i.bg, align 8, !tbaa !106 ; 2 uses
  %i.bl = and i64 %i.bk, %i.bj
  %i.bm = icmp eq i64 %i.bl, 0
  %i.bn = and i64 %i.bd, 2
  %i.bo = icmp ne i64 %i.bn, 0
  %or.cond.i = or i1 %i.bo, %i.bm
  br i1 %or.cond.i, label %_ZNK16UndrivenVarEntry8bitNumOkEi.exit.thread.i, label %bb.l

bb.k:                                             ; preds = %bb.i
  %.old.i = and i64 %i.bd, 2
  %.old19.not.i = icmp eq i64 %.old.i, 0
  br i1 %.old19.not.i, label %._crit_edge27.i, label %_ZNK16UndrivenVarEntry8bitNumOkEi.exit.thread.i

._crit_edge27.i:                                  ; preds = %bb.k
  %.pre.i = lshr i32 %i.az, 4
  %.pre28.i = zext nneg i32 %.pre.i to i64
  %.pre29.i = and i32 %i.bb, 60
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.pre28.i
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !106
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge27.i, %bb.j
  %i.bp = phi i64 [ %.pre, %._crit_edge27.i ], [ %i.bk, %bb.j ]
  %.pre-phi30.i = phi i32 [ %.pre29.i, %._crit_edge27.i ], [ %i.bh, %bb.j ]
  %i.bq = or disjoint i32 %.pre-phi30.i, 1
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = shl nuw nsw i64 1, %i.br
  %i.bt = and i64 %i.bs, %i.bp
  %.not20.i = icmp eq i64 %i.bt, 0
  br i1 %.not20.i, label %_ZNK16UndrivenVarEntry18isUsedNotDrivenBitEii.exit, label %_ZNK16UndrivenVarEntry8bitNumOkEi.exit.thread.i

_ZNK16UndrivenVarEntry8bitNumOkEi.exit.thread.i:  ; preds = %bb.l, %bb.k, %bb.j, %bb.h
  %i.bu = add nuw nsw i32 %.01121.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bu, %i.ak
  br i1 %exitcond.not.i, label %_ZNK16UndrivenVarEntry18isUsedNotDrivenBitEii.exit.thread, label %bb.h, !llvm.loop !176

_ZNK16UndrivenVarEntry18isUsedNotDrivenBitEii.exit: ; preds = %bb.l
  %i.bv = call noundef i32 @_ZL5debugv()
  %i.bw = icmp sgt i32 %i.bv, 8
  br i1 %i.bw, label %bb.m, label %bb.af, !prof !9

bb.m:                                             ; preds = %_ZNK16UndrivenVarEntry18isUsedNotDrivenBitEii.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.bx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  invoke void @_ZN7V3Error7lineStrB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull @.str.1, i32 noundef 469)
          to label %bb.n unwind label %bb.t

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.by = load ptr, ptr %3, align 8, !tbaa !10
  %i.bz = load i64, ptr %i.r, align 8, !tbaa !16
  %i.ca = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.by, i64 noundef %i.bz)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.u ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.n
  %i.cb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef nonnull @.str.52, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63 unwind label %bb.u ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  invoke void @_Z8cvtToHexIP16UndrivenVarEntryENSt9enable_ifIXsr3std10is_pointerIT_EE5valueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull %i.ac)
          to label %bb.o unwind label %bb.v

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63
  %i.cc = load ptr, ptr %4, align 8, !tbaa !10
  %i.cd = load i64, ptr %i.s, align 8, !tbaa !16
  %i.ce = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef %i.cc, i64 noundef %i.cd)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit64 unwind label %bb.w ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit64: ; preds = %bb.o
  %i.cf = load ptr, ptr %4, align 8, !tbaa !10    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.t
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit64
  %i.ch = load i64, ptr %i.t, align 8, !tbaa !17
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.cj = load ptr, ptr %3, align 8, !tbaa !10    ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.u
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cl = load i64, ptr %i.u, align 8, !tbaa !17
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.p unwind label %bb.y

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.q unwind label %bb.z

bb.q:                                             ; preds = %bb.p
  %i.cn = load i64, ptr %i.v, align 8, !tbaa !16  ; 2 uses
  %i.co = load ptr, ptr %5, align 8, !tbaa !10    ; 2 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 %i.cn
  %i.cq = getelementptr i8, ptr %i.cp, i64 -1
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !17
  %.not50 = icmp eq i8 %i.cr, 10
  %i.cs = load ptr, ptr %6, align 8, !tbaa !10    ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.w
  br i1 %i.ct, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i69: ; preds = %bb.q
  %i.cu = icmp ult i64 %i.cn, 16
  call void @llvm.assume(i1 %i.cu)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.q
  %i.cv = load i64, ptr %i.w, align 8, !tbaa !17
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #20
  %.pre116 = load ptr, ptr %5, align 8, !tbaa !10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  %i.cx = phi ptr [ %i.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i69 ], [ %.pre116, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.cy = icmp eq ptr %i.cx, %i.x
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %i.cz = load i64, ptr %i.x, align 8, !tbaa !17
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br i1 %.not50, label %bb.aa, label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %i.db = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext 10)
          to label %bb.aa unwind label %bb.s      ; 0 uses

bb.s:                                             ; preds = %bb.m, %bb.r
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.t:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

bb.u:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.n
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.v:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

bb.w:                                             ; preds = %bb.o
  %i.dg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dh = load ptr, ptr %4, align 8, !tbaa !10    ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.t
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %bb.w
  %i.dj = load i64, ptr %i.t, align 8, !tbaa !17
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74, %bb.v
  %.pn = phi { ptr, i32 } [ %i.df, %bb.v ], [ %i.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74 ], [ %i.dg, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ], [ %i.de, %bb.u ] ; 2 uses
  %i.dl = load ptr, ptr %3, align 8, !tbaa !10    ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.u
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %bb.x
  %i.dn = load i64, ptr %i.u, align 8, !tbaa !17
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77, %bb.t
  %.pn.pn.pn = phi { ptr, i32 } [ %i.dd, %bb.t ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77 ], [ %.pn.pn, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.ae

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

bb.z:                                             ; preds = %bb.p
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.dr = load ptr, ptr %5, align 8, !tbaa !10    ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN16UndrivenVarEntry9drivenBitEii:bb.a
  %i.af = load ptr, ptr %6, align 8, !tbaa !10    ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 %i.ae
  %i.ah = getelementptr i8, ptr %i.ag, i64 -1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !17
  %.not = icmp eq i8 %i.ai, 10
  %i.aj = load ptr, ptr %7, align 8, !tbaa !10    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i35: ; preds = %bb.h
  %i.am = icmp ult i64 %i.ae, 16
  call void @llvm.assume(i1 %i.am)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.h
  %i.an = load i64, ptr %i.ak, align 8, !tbaa !17
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.ao) #20
  %.pre = load ptr, ptr %6, align 8, !tbaa !10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  %i.ap = phi ptr [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i35 ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !17
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br i1 %.not, label %bb.r, label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %3, i8 noundef signext 10)
          to label %bb.r unwind label %bb.j       ; 0 uses

bb.j:                                             ; preds = %bb.b, %bb.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

bb.l:                                             ; preds = %bb.e, %bb.d, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

bb.n:                                             ; preds = %bb.f
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = load ptr, ptr %5, align 8, !tbaa !10    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.n
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !17
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.m ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ], [ %i.az, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ], [ %i.ax, %bb.l ] ; 2 uses
  %i.bf = load ptr, ptr %4, align 8, !tbaa !10    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.o
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !17
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43, %bb.k
  %.pn.pn.pn = phi { ptr, i32 } [ %i.aw, %bb.k ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43 ], [ %.pn.pn, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.v

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

bb.q:                                             ; preds = %bb.g
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.bm = load ptr, ptr %6, align 8, !tbaa !10    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.q
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !17
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46, %bb.p
  %.pn22 = phi { ptr, i32 } [ %i.bk, %bb.p ], [ %i.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ], [ %i.bl, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.v

bb.r:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.br = load ptr, ptr %8, align 8, !tbaa !10
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !16
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.br, i64 noundef %i.bt)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit49 unwind label %bb.u ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit49: ; preds = %bb.s
  %i.bv = load ptr, ptr %8, align 8, !tbaa !10    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit49
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !17
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bz) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

bb.u:                                             ; preds = %bb.s
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cc = load ptr, ptr %8, align 8, !tbaa !10    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.u
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !17
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53, %bb.t
  %.pn24 = phi { ptr, i32 } [ %i.ca, %bb.t ], [ %i.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53 ], [ %i.cb, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %bb.j
  %.pn24.pn = phi { ptr, i32 } [ %.pn24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ], [ %i.av, %bb.j ], [ %.pn22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %.pn24.pn

bb.w:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %i.ch = icmp sgt i32 %2, 0
  br i1 %i.ch, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.w
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.x

._crit_edge:                                      ; preds = %_ZNK16UndrivenVarEntry8bitNumOkEi.exit.thread, %bb.w
  ret void

bb.x:                                             ; preds = %.lr.ph, %_ZNK16UndrivenVarEntry8bitNumOkEi.exit.thread
  %.056 = phi i32 [ 0, %.lr.ph ], [ %i.df, %_ZNK16UndrivenVarEntry8bitNumOkEi.exit.thread ] ; 2 uses
  %i.cl = add nsw i32 %.056, %1                   ; 3 uses
  %i.cm = icmp sgt i32 %i.cl, -1
  br i1 %i.cm, label %_ZNK16UndrivenVarEntry8bitNumOkEi.exit, label %_ZNK16UndrivenVarEntry8bitNumOkEi.exit.thread

_ZNK16UndrivenVarEntry8bitNumOkEi.exit:           ; preds = %bb.x
  %i.cn = shl nuw nsw i32 %i.cl, 2                ; 2 uses
  %i.co = load ptr, ptr %i.cj, align 8, !tbaa !100
  %i.cp = load i32, ptr %i.ck, align 8, !tbaa !175
  %i.cq = load ptr, ptr %i.ci, align 8, !tbaa !100 ; 2 uses
  %i.cr = ptrtoint ptr %i.co to i64
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %.tr.i = trunc i64 %i.ct to i32
  %i.cu = shl i32 %.tr.i, 3
  %i.cv = add i32 %i.cu, %i.cp
  %i.cw = icmp slt i32 %i.cn, %i.cv
  br i1 %i.cw, label %bb.y, label %_ZNK16UndrivenVarEntry8bitNumOkEi.exit.thread

bb.y:                                             ; preds = %_ZNK16UndrivenVarEntry8bitNumOkEi.exit
  %i.cx = lshr i32 %i.cl, 4
  %.zext = zext nneg i32 %i.cx to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %.zext ; 2 uses
  %i.cz = and i32 %i.cn, 60
  %i.da = or disjoint i32 %i.cz, 1
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = shl nuw nsw i64 1, %i.db
  %i.dd = load i64, ptr %i.cy, align 8, !tbaa !106
  %i.de = or i64 %i.dd, %i.dc
  store i64 %i.de, ptr %i.cy, align 8, !tbaa !106
  br label %_ZNK16UndrivenVarEntry8bitNumOkEi.exit.thread

_ZNK16UndrivenVarEntry8bitNumOkEi.exit.thread:    ; preds = %bb.x, %_ZNK16UndrivenVarEntry8bitNumOkEi.exit, %bb.y
  %i.df = add nuw nsw i32 %.056, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.df, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.x, !llvm.loop !443
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN16UndrivenVarEntry7usedBitEiiPK7AstNode(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = tail call noundef i32 @_ZL5debugv()
  %i.b = icmp sgt i32 %i.a, 8
  br i1 %i.b, label %bb.b, label %bb.w, !prof !9

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  invoke void @_ZN7V3Error7lineStrB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull @.str.1, i32 noundef 180)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.d = load ptr, ptr %5, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.d, i64 noundef %i.f)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.l ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.c
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.55, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30 unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.i = add i32 %1, -1
  %i.j = add i32 %i.i, %2
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i32 noundef %i.j)
          to label %bb.d unwind label %bb.l       ; 2 uses

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31 unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31: ; preds = %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i32 noundef %1)
          to label %bb.e unwind label %bb.l       ; 2 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.54, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32 unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.o = load ptr, ptr %0, align 8, !tbaa !282
  invoke void @_ZNK6AstVar4nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(280) %i.o)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32
  %i.p = load ptr, ptr %6, align 8, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !16
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef %i.p, i64 noundef %i.r)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit33 unwind label %bb.n ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit33: ; preds = %bb.f
  %i.t = load ptr, ptr %6, align 8, !tbaa !10     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit33
  %i.w = load i64, ptr %i.u, align 8, !tbaa !17
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.y = load ptr, ptr %5, align 8, !tbaa !10     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !17
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.h unwind label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !16 ; 2 uses
  %i.af = load ptr, ptr %7, align 8, !tbaa !10    ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 %i.ae
  %i.ah = getelementptr i8, ptr %i.ag, i64 -1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !17
  %.not = icmp eq i8 %i.ai, 10
  %i.aj = load ptr, ptr %8, align 8, !tbaa !10    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i38: ; preds = %bb.h
  %i.am = icmp ult i64 %i.ae, 16
  call void @llvm.assume(i1 %i.am)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.h
  %i.an = load i64, ptr %i.ak, align 8, !tbaa !17
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.ao) #20
  %.pre = load ptr, ptr %7, align 8, !tbaa !10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  %i.ap = phi ptr [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i38 ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !17
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br i1 %.not, label %bb.r, label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %4, i8 noundef signext 10)
          to label %bb.r unwind label %bb.j       ; 0 uses

bb.j:                                             ; preds = %bb.b, %bb.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

bb.l:                                             ; preds = %bb.e, %bb.d, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

bb.n:                                             ; preds = %bb.f
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = load ptr, ptr %6, align 8, !tbaa !10    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.n
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !17
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.m ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43 ], [ %i.az, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ], [ %i.ax, %bb.l ] ; 2 uses
  %i.bf = load ptr, ptr %5, align 8, !tbaa !10    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.o
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !17
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46, %bb.k
  %.pn.pn.pn = phi { ptr, i32 } [ %i.aw, %bb.k ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ], [ %.pn.pn, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.v

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

bb.q:                                             ; preds = %bb.g
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.bm = load ptr, ptr %7, align 8, !tbaa !10    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %bb.q
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !17
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49, %bb.p
  %.pn25 = phi { ptr, i32 } [ %i.bk, %bb.p ], [ %i.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49 ], [ %i.bl, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.v

bb.r:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.br = load ptr, ptr %9, align 8, !tbaa !10
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !16
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.br, i64 noundef %i.bt)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit52 unwind label %bb.u ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit52: ; preds = %bb.s
  %i.bv = load ptr, ptr %9, align 8, !tbaa !10    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit52
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !17
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bz) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

bb.u:                                             ; preds = %bb.s
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cc = load ptr, ptr %9, align 8, !tbaa !10    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %bb.u
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !17
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56, %bb.t
  %.pn27 = phi { ptr, i32 } [ %i.ca, %bb.t ], [ %i.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56 ], [ %i.cb, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %bb.j
  %.pn27.pn = phi { ptr, i32 } [ %.pn27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ], [ %i.av, %bb.j ], [ %.pn25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %.pn27.pn

bb.w:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %i.ch = icmp sgt i32 %2, 0
  br i1 %i.ch, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.w
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  br label %bb.x

._crit_edge:                                      ; preds = %_ZNK16UndrivenVarEntry8bitNumOkEi.exit.thread, %bb.w
  ret void

bb.x:                                             ; preds = %.lr.ph, %_ZNK16UndrivenVarEntry8bitNumOkEi.exit.thread
  %.061 = phi i32 [ 0, %.lr.ph ], [ %i.dq, %_ZNK16UndrivenVarEntry8bitNumOkEi.exit.thread ] ; 2 uses
  %i.cn = add nsw i32 %.061, %1                   ; 3 uses
  %i.co = icmp sgt i32 %i.cn, -1
  br i1 %i.co, label %_ZNK16UndrivenVarEntry8bitNumOkEi.exit, label %_ZNK16UndrivenVarEntry8bitNumOkEi.exit.thread

_ZNK16UndrivenVarEntry8bitNumOkEi.exit:           ; preds = %bb.x
  %i.cp = shl nuw nsw i32 %i.cn, 2                ; 3 uses
  %i.cq = load ptr, ptr %i.cj, align 8, !tbaa !100
  %i.cr = load i32, ptr %i.ck, align 8, !tbaa !175
  %i.cs = load ptr, ptr %i.ci, align 8, !tbaa !100 ; 3 uses
  %i.ct = ptrtoint ptr %i.cq to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %.tr.i = trunc i64 %i.cv to i32
  %i.cw = shl i32 %.tr.i, 3
  %i.cx = add i32 %i.cw, %i.cr
  %i.cy = icmp slt i32 %i.cp, %i.cx
  br i1 %i.cy, label %bb.y, label %_ZNK16UndrivenVarEntry8bitNumOkEi.exit.thread

bb.y:                                             ; preds = %_ZNK16UndrivenVarEntry8bitNumOkEi.exit
  %i.cz = load ptr, ptr %i.cl, align 8, !tbaa !100
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !106
  %i.db = and i64 %i.da, 2
  %.not.i = icmp eq i64 %i.db, 0
  %i.dc = lshr i32 %i.cn, 4
  %.sext.i = zext nneg i32 %i.dc to i64           ; 2 uses
  br i1 %.not.i, label %_ZNK16UndrivenVarEntry10drivenFlagEi.exit, label %._ZN16UndrivenVarEntry19recordUsedNotDrivenEPK7AstNode.exit_crit_edge

._ZN16UndrivenVarEntry19recordUsedNotDrivenEPK7AstNode.exit_crit_edge: ; preds = %bb.y
  %.pre64 = and i32 %i.cp, 60
  br label %_ZN16UndrivenVarEntry19recordUsedNotDrivenEPK7AstNode.exit

_ZNK16UndrivenVarEntry10drivenFlagEi.exit:        ; preds = %bb.y
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.sext.i
  %i.de = and i32 %i.cp, 60                       ; 4 uses
  %i.df = or disjoint i32 %i.de, 1
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = shl nuw nsw i64 1, %i.dg
  %i.di = load i64, ptr %i.dd, align 8, !tbaa !106
  %i.dj = and i64 %i.di, %i.dh
  %.not60 = icmp eq i64 %i.dj, 0
  br i1 %.not60, label %bb.z, label %_ZN16UndrivenVarEntry19recordUsedNotDrivenEPK7AstNode.exit

bb.z:                                             ; preds = %_ZNK16UndrivenVarEntry10drivenFlagEi.exit
  %i.dk = load ptr, ptr %i.cm, align 8, !tbaa !177
  %.not.i59 = icmp eq ptr %i.dk, null
  br i1 %.not.i59, label %bb.aa, label %_ZN16UndrivenVarEntry19recordUsedNotDrivenEPK7AstNode.exit

bb.aa:                                            ; preds = %bb.z
  store ptr %3, ptr %i.cm, align 8, !tbaa !177
  br label %_ZN16UndrivenVarEntry19recordUsedNotDrivenEPK7AstNode.exit

_ZN16UndrivenVarEntry19recordUsedNotDrivenEPK7AstNode.exit: ; preds = %._ZN16UndrivenVarEntry19recordUsedNotDrivenEPK7AstNode.exit_crit_edge, %bb.aa, %bb.z, %_ZNK16UndrivenVarEntry10drivenFlagEi.exit
  %.pre-phi65 = phi i32 [ %.pre64, %._ZN16UndrivenVarEntry19recordUsedNotDrivenEPK7AstNode.exit_crit_edge ], [ %i.de, %bb.aa ], [ %i.de, %bb.z ], [ %i.de, %_ZNK16UndrivenVarEntry10drivenFlagEi.exit ]
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.sext.i ; 2 uses
  %i.dm = zext nneg i32 %.pre-phi65 to i64
  %i.dn = shl nuw nsw i64 1, %i.dm
  %i.do = load i64, ptr %i.dl, align 8, !tbaa !106
  %i.dp = or i64 %i.do, %i.dn
  store i64 %i.dp, ptr %i.dl, align 8, !tbaa !106
  br label %_ZNK16UndrivenVarEntry8bitNumOkEi.exit.thread

_ZNK16UndrivenVarEntry8bitNumOkEi.exit.thread:    ; preds = %bb.x, %_ZNK16UndrivenVarEntry8bitNumOkEi.exit, %_ZN16UndrivenVarEntry19recordUsedNotDrivenEPK7AstNode.exit
  %i.dq = add nuw nsw i32 %.061, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.dq, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.x, !llvm.loop !444
}

declare noundef ptr @_ZN7V3Width24selectNonConstantRecurseEP7AstNodeb(ptr noundef, i1 noundef zeroext) #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i16 @_ZNK6VNTypecvNS_2enEEv(ptr noundef nonnull align 2 dereferenceable(2) %0) #4 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !378
  ret i16 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZNK8AstConst3numEv(ptr noundef nonnull align 8 dereferenceable(208) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  ret ptr %i.a
}

declare noundef i32 @_ZNK8V3Number6toUIntEv(ptr noundef nonnull align 8 dereferenceable(56)) #3

declare noundef zeroext i1 @_ZNK6AstVar11isSigPublicEv(ptr noundef nonnull align 8 dereferenceable(280)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK6AstVar10isWritableEv(ptr noundef nonnull align 8 dereferenceable(280) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 249
  %i.b = load i8, ptr %i.a, align 1, !tbaa !255
  %.off.i = add i8 %i.b, -2
  %switch.i = icmp ult i8 %.off.i, 3
  ret i1 %switch.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK6AstVar6valuepEv(ptr noundef nonnull align 8 dereferenceable(280) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !263
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10VDirection10isWritableEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #4 comdat align 2 {
switch.edge:
  %i.a = load i8, ptr %0, align 1, !tbaa !255
  %.off = add i8 %i.a, -2
  %switch = icmp ult i8 %.off, 3
  ret i1 %switch
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7AstNode4op3pEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !263
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN16UndrivenVarEntry16reportViolationsEv(ptr noundef nonnull align 8 dereferenceable(168) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %23 = alloca %class.anon, align 8               ; 5 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !282    ; 39 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !183  ; 2 uses
  %.not155 = icmp eq ptr %i.h, null
  br i1 %.not155, label %bb.ai, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !249
  %.not156 = icmp eq ptr %i.j, null
  br i1 %.not156, label %bb.ai, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 260
  %i.l = load i64, ptr %i.k, align 4              ; 2 uses
  %i.m = and i64 %i.l, 2147483648
  %.not536 = icmp eq i64 %i.m, 0
  br i1 %.not536, label %bb.ai, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 248
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.n, align 8, !tbaa !164
  %i.o = icmp eq i8 %.sroa.0.0.copyload.i.i, 21
  %i.p = and i64 %i.l, 8192
  %i.q = icmp ne i64 %i.p, 0
  %or.cond = or i1 %i.q, %i.o
  br i1 %or.cond, label %bb.ai, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8 100) ; 0 uses
  %i.s = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.f, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit, !prof !167

bb.f:                                             ; preds = %bb.e
  %i.u = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #19
  %.not.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = tail call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #19 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #19
  br label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit505, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340, %bb.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i364, %bb.cj, %bb.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i346, %bb.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i274, %bb.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.i ], [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i ], [ %i.gc, %bb.ap ], [ %i.gn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i274 ], [ %i.lf, %bb.bt ], [ %i.lq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i346 ], [ %i.ml, %bb.ca ], [ %i.nd, %bb.cj ], [ %i.no, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i364 ], [ %i.oj, %bb.cq ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269 ], [ %i.mo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358 ], [ %i.om, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378 ], [ %.pn199.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit505 ], [ %.pn169.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340 ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #19
  br label %common.resume

_ZN7V3Error10v3errorStrB5cxx11Ev.exit:            ; preds = %bb.e, %bb.f, %bb.h
  %i.x = tail call noundef nonnull align 8 dereferenceable(112) ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 304), ptr nonnull @.str.24, ptr nonnull @.str.25, i32 481, ptr null) ; 2 uses
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @.str.57, i64 noundef 57) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19, !noalias !445
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !18, !noalias !445
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 64
end_hunk_1
begin_hunk_2_@_ZN16UndrivenVarEntry11unusedMatchEP6AstVar:bb.a
  %i.au = load ptr, ptr %2, align 8, !tbaa !10    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.b
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.aw = load i64, ptr %i.b, align 8, !tbaa !17
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret i1 %.05

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %.body
  %i.ay = load i64, ptr %i.b, align 8, !tbaa !17
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.az) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN16UndrivenVarEntry16reportViolationsEvENKUlvE_clB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !493, !nonnull !76, !align !495 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !77
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !10   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.f, ptr %i.a, align 8, !tbaa !106
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !10
  %i.i = load i64, ptr %i.a, align 8, !tbaa !106
  store i64 %i.i, ptr %i.c, align 8, !tbaa !17
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !17
  store i8 %i.k, ptr %i.j, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.a, align 8, !tbaa !106  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !16
  %i.n = load ptr, ptr %0, align 8, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.p = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !17
  %i.r = zext i8 %i.q to i32
  %i.s = call i32 @tolower(i32 noundef %i.r) #21
  %i.t = trunc i32 %i.s to i8
  store i8 %i.t, ptr %i.p, align 1, !tbaa !17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN16UndrivenVarEntry8bitNamesB5cxx11ENS_13BitNamesWhichE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(168) %1, i8 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !77
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i64 0, ptr %i.g, align 8, !tbaa !16
  store i8 0, ptr %i.f, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !100
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.l = load i32, ptr %i.k, align 8, !tbaa !175
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !100
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = shl nsw i64 %i.p, 3
  %i.r = zext i32 %i.l to i64
  %i.s = add nsw i64 %i.q, %i.r
  %i.t = lshr i64 %i.s, 2
  %i.u = trunc i64 %i.t to i32                    ; 2 uses
  %i.v = icmp ult i32 %i.u, -2147483647
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 9 uses
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 10 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 9 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 10 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.bt
  %.pre367 = load ptr, ptr %3, align 8, !tbaa !10, !noalias !496
  %.pre368 = load i64, ptr %i.g, align 8, !tbaa !16, !noalias !496
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.ap = phi i64 [ %.pre368, %._crit_edge.loopexit ], [ 0, %bb.a ] ; 3 uses
  %i.aq = phi ptr [ %.pre367, %._crit_edge.loopexit ], [ %i.f, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !496)
  %i.ar = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  store ptr %i.ar, ptr %13, align 8, !tbaa !77, !alias.scope !499
  %i.as = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store i64 0, ptr %i.as, align 8, !tbaa !16, !alias.scope !499
  store i8 0, ptr %i.ar, align 8, !tbaa !17, !alias.scope !499
  %i.at = add i64 %i.ap, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef %i.at)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.au = load i64, ptr %i.as, align 8, !tbaa !16, !alias.scope !499
  %i.av = icmp eq i64 %i.au, 4611686018427387903
  br i1 %i.av, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.aw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.75, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ax = load i64, ptr %i.as, align 8, !tbaa !16, !alias.scope !499
  %i.ay = sub i64 4611686018427387903, %i.ax
  %i.az = icmp ult i64 %i.ay, %i.ap
  br i1 %i.az, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #23
          to label %.cont.i.i unwind label %bb.c

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.ba = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef %i.aq, i64 noundef %i.ap)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %._crit_edge
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load ptr, ptr %13, align 8, !tbaa !10, !alias.scope !499 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.ar
  br i1 %i.bd, label %.body, label %.body.sink.split

bb.d:                                             ; preds = %.lr.ph, %bb.bt
  %.045.in365 = phi i32 [ %i.u, %.lr.ph ], [ %.045366, %bb.bt ] ; 6 uses
  %.046364 = phi i32 [ 0, %.lr.ph ], [ %.147, %bb.bt ] ; 7 uses
  %.048363 = phi i8 [ 0, %.lr.ph ], [ %.149, %bb.bt ] ; 2 uses
  %.045366 = add i32 %.045.in365, -1              ; 12 uses
  %i.be = icmp sgt i32 %.045366, -1
  br i1 %i.be, label %bb.e, label %_ZNK16UndrivenVarEntry8usedFlagEi.exit.thread

bb.e:                                             ; preds = %bb.d
  switch i8 %2, label %_ZNK16UndrivenVarEntry8usedFlagEi.exit.thread [
    i8 0, label %bb.f
    i8 1, label %bb.h
    i8 2, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.bf = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !106 ; 2 uses
  %i.bh = and i64 %i.bg, 1
  %.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i, label %_ZNK16UndrivenVarEntry8usedFlagEi.exit, label %_ZNK16UndrivenVarEntry8usedFlagEi.exit.thread

_ZNK16UndrivenVarEntry8usedFlagEi.exit:           ; preds = %bb.f
  %i.bi = shl nuw nsw i32 %.045366, 2
  %i.bj = load ptr, ptr %i.h, align 8, !tbaa !100
  %i.bk = lshr i32 %.045366, 4
  %.sext.i = zext nneg i32 %i.bk to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %.sext.i
  %i.bm = and i32 %i.bi, 60                       ; 2 uses
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = shl nuw nsw i64 1, %i.bn
  %i.bp = load i64, ptr %i.bl, align 8, !tbaa !106 ; 2 uses
  %i.bq = and i64 %i.bp, %i.bo
  %.not278 = icmp eq i64 %i.bq, 0
  br i1 %.not278, label %bb.g, label %_ZNK16UndrivenVarEntry8usedFlagEi.exit.thread

bb.g:                                             ; preds = %_ZNK16UndrivenVarEntry8usedFlagEi.exit
  %i.br = and i64 %i.bg, 2
  %.not.i70 = icmp eq i64 %i.br, 0
  br i1 %.not.i70, label %_ZNK16UndrivenVarEntry10drivenFlagEi.exit, label %_ZNK16UndrivenVarEntry10drivenFlagEi.exit.thread

_ZNK16UndrivenVarEntry10drivenFlagEi.exit:        ; preds = %bb.g
  %i.bs = or disjoint i32 %i.bm, 1
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = shl nuw nsw i64 1, %i.bt
  %i.bv = and i64 %i.bp, %i.bu
  %.not279 = icmp eq i64 %i.bv, 0
  br i1 %.not279, label %_ZNK16UndrivenVarEntry8usedFlagEi.exit.thread, label %_ZNK16UndrivenVarEntry10drivenFlagEi.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.bw = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !106 ; 3 uses
  %i.by = and i64 %i.bx, 1
  %.not.i74 = icmp eq i64 %i.by, 0
  br i1 %.not.i74, label %_ZNK16UndrivenVarEntry8usedFlagEi.exit78, label %_ZNK16UndrivenVarEntry8usedFlagEi.exit78.thread

_ZNK16UndrivenVarEntry8usedFlagEi.exit78:         ; preds = %bb.h
  %i.bz = shl nuw nsw i32 %.045366, 2
  %i.ca = load ptr, ptr %i.h, align 8, !tbaa !100 ; 2 uses
  %i.cb = lshr i32 %.045366, 4
  %.sext.i75 = zext nneg i32 %i.cb to i64         ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.sext.i75
  %i.cd = and i32 %i.bz, 60                       ; 2 uses
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = shl nuw nsw i64 1, %i.ce
  %i.cg = load i64, ptr %i.cc, align 8, !tbaa !106
  %i.ch = and i64 %i.cg, %i.cf
  %i.ci = icmp ne i64 %i.ch, 0
  %i.cj = and i64 %i.bx, 2
  %.not.i79 = icmp eq i64 %i.cj, 0
  %or.cond = and i1 %.not.i79, %i.ci
  br i1 %or.cond, label %_ZNK16UndrivenVarEntry10drivenFlagEi.exit83, label %_ZNK16UndrivenVarEntry8usedFlagEi.exit.thread

_ZNK16UndrivenVarEntry8usedFlagEi.exit78.thread:  ; preds = %bb.h
  %.old = and i64 %i.bx, 2
  %.not.i79.old = icmp eq i64 %.old, 0
  br i1 %.not.i79.old, label %_ZNK16UndrivenVarEntry8usedFlagEi.exit78.thread._ZNK16UndrivenVarEntry10drivenFlagEi.exit83_crit_edge, label %_ZNK16UndrivenVarEntry8usedFlagEi.exit.thread

_ZNK16UndrivenVarEntry8usedFlagEi.exit78.thread._ZNK16UndrivenVarEntry10drivenFlagEi.exit83_crit_edge: ; preds = %_ZNK16UndrivenVarEntry8usedFlagEi.exit78.thread
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !100
  %.pre369 = shl nuw nsw i32 %.045366, 2
  %.pre370 = lshr i32 %.045366, 4
  %.pre372 = zext nneg i32 %.pre370 to i64
  %.pre370.a = and i32 %.pre369, 60
  br label %_ZNK16UndrivenVarEntry10drivenFlagEi.exit83

_ZNK16UndrivenVarEntry10drivenFlagEi.exit83:      ; preds = %_ZNK16UndrivenVarEntry8usedFlagEi.exit78.thread._ZNK16UndrivenVarEntry10drivenFlagEi.exit83_crit_edge, %_ZNK16UndrivenVarEntry8usedFlagEi.exit78
  %.pre-phi371 = phi i32 [ %.pre370.a, %_ZNK16UndrivenVarEntry8usedFlagEi.exit78.thread._ZNK16UndrivenVarEntry10drivenFlagEi.exit83_crit_edge ], [ %i.cd, %_ZNK16UndrivenVarEntry8usedFlagEi.exit78 ]
  %.sext.i80.pre-phi = phi i64 [ %.pre372, %_ZNK16UndrivenVarEntry8usedFlagEi.exit78.thread._ZNK16UndrivenVarEntry10drivenFlagEi.exit83_crit_edge ], [ %.sext.i75, %_ZNK16UndrivenVarEntry8usedFlagEi.exit78 ]
  %i.ck = phi ptr [ %.pre, %_ZNK16UndrivenVarEntry8usedFlagEi.exit78.thread._ZNK16UndrivenVarEntry10drivenFlagEi.exit83_crit_edge ], [ %i.ca, %_ZNK16UndrivenVarEntry8usedFlagEi.exit78 ]
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %.sext.i80.pre-phi
  %i.cm = or disjoint i32 %.pre-phi371, 1
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = shl nuw nsw i64 1, %i.cn
  %i.cp = load i64, ptr %i.cl, align 8, !tbaa !106
  %i.cq = and i64 %i.cp, %i.co
  %.not277 = icmp eq i64 %i.cq, 0
  br i1 %.not277, label %_ZNK16UndrivenVarEntry10drivenFlagEi.exit.thread, label %_ZNK16UndrivenVarEntry8usedFlagEi.exit.thread

bb.i:                                             ; preds = %bb.e
  %i.cr = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !106 ; 2 uses
  %i.ct = and i64 %i.cs, 1
  %.not.i84 = icmp eq i64 %i.ct, 0
  br i1 %.not.i84, label %_ZNK16UndrivenVarEntry8usedFlagEi.exit88, label %_ZNK16UndrivenVarEntry8usedFlagEi.exit.thread

_ZNK16UndrivenVarEntry8usedFlagEi.exit88:         ; preds = %bb.i
  %i.cu = shl nuw nsw i32 %.045366, 2
  %i.cv = load ptr, ptr %i.h, align 8, !tbaa !100
  %i.cw = lshr i32 %.045366, 4
  %.sext.i85 = zext nneg i32 %i.cw to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %.sext.i85
  %i.cy = and i32 %i.cu, 60                       ; 2 uses
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = shl nuw nsw i64 1, %i.cz
  %i.db = load i64, ptr %i.cx, align 8, !tbaa !106 ; 2 uses
  %i.dc = and i64 %i.db, %i.da
  %i.dd = and i64 %i.cs, 2
  %i.de = or disjoint i64 %i.dc, %i.dd
  %or.cond276 = icmp eq i64 %i.de, 0
  br i1 %or.cond276, label %_ZNK16UndrivenVarEntry10drivenFlagEi.exit93, label %_ZNK16UndrivenVarEntry8usedFlagEi.exit.thread

_ZNK16UndrivenVarEntry10drivenFlagEi.exit93:      ; preds = %_ZNK16UndrivenVarEntry8usedFlagEi.exit88
  %i.df = or disjoint i32 %i.cy, 1
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = shl nuw nsw i64 1, %i.dg
  %i.di = and i64 %i.db, %i.dh
  %.not = icmp eq i64 %i.di, 0
  br i1 %.not, label %_ZNK16UndrivenVarEntry10drivenFlagEi.exit.thread, label %_ZNK16UndrivenVarEntry8usedFlagEi.exit.thread

_ZNK16UndrivenVarEntry10drivenFlagEi.exit.thread: ; preds = %bb.g, %_ZNK16UndrivenVarEntry10drivenFlagEi.exit93, %_ZNK16UndrivenVarEntry10drivenFlagEi.exit83, %_ZNK16UndrivenVarEntry10drivenFlagEi.exit
  %i.dj = trunc nuw i8 %.048363 to i1
  %spec.select69 = select i1 %i.dj, i32 %.046364, i32 %.045366
  br label %bb.bt

_ZNK16UndrivenVarEntry8usedFlagEi.exit.thread:    ; preds = %bb.i, %_ZNK16UndrivenVarEntry8usedFlagEi.exit78.thread, %bb.f, %_ZNK16UndrivenVarEntry8usedFlagEi.exit78, %_ZNK16UndrivenVarEntry10drivenFlagEi.exit83, %_ZNK16UndrivenVarEntry8usedFlagEi.exit, %_ZNK16UndrivenVarEntry10drivenFlagEi.exit, %bb.e, %_ZNK16UndrivenVarEntry10drivenFlagEi.exit93, %_ZNK16UndrivenVarEntry8usedFlagEi.exit88, %bb.d
  %i.dk = trunc nuw i8 %.048363 to i1
  br i1 %i.dk, label %bb.j, label %bb.bt

bb.j:                                             ; preds = %_ZNK16UndrivenVarEntry8usedFlagEi.exit.thread
  %i.dl = load ptr, ptr %1, align 8, !tbaa !282   ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 72
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !179 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dn, null
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = select i1 %.not.i.i, ptr %i.dp, ptr %i.dn ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !18
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 352
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = invoke noundef ptr %i.dt(ptr noundef nonnull align 8 dereferenceable(162) %i.dq)
          to label %_ZNK6AstVar6basicpEv.exit unwind label %bb.l, !inline_history !502 ; 14 uses

_ZNK6AstVar6basicpEv.exit:                        ; preds = %bb.j
  %i.dv = load i64, ptr %i.g, align 8, !tbaa !16
  switch i64 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
    i64 4611686018427387903, label %bb.k
  ]

bb.k:                                             ; preds = %_ZNK6AstVar6basicpEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #23
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.k
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZNK6AstVar6basicpEv.exit
  %i.dw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.74, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit ; 0 uses

bb.l:                                             ; preds = %bb.j
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i107, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i3.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNK6AstVar6basicpEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.dy = icmp eq i32 %.045.in365, %.046364
  br i1 %i.dy, label %bb.m, label %bb.v

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !116 ; 3 uses
  %.not.i95 = icmp eq ptr %i.ea, null
  br i1 %.not.i95, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !116 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i.i, label %_ZNK8AstRange9leftConstEv.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i16, ptr %i.ed, align 8, !tbaa !154
  %i.ee = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i.i.i, 121
  br i1 %i.ee, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i, label %_ZNK8AstRange9leftConstEv.exit.i.i

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i: ; preds = %bb.o
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 152
  %i.eg = invoke noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ef)
          to label %_ZNK8AstRange9leftConstEv.exit.i.i unwind label %bb.t

_ZNK8AstRange9leftConstEv.exit.i.i:               ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i, %bb.o, %bb.n
  %i.eh = phi i32 [ 0, %bb.o ], [ 0, %bb.n ], [ %i.eg, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i ]
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !126 ; 3 uses
  %.not.i.i4.i.i = icmp eq ptr %i.ej, null
  br i1 %.not.i.i4.i.i, label %_ZNK8AstRange7loConstEv.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNK8AstRange9leftConstEv.exit.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 64
  %.sroa.0.0.copyload.i.i.i.i5.i.i = load i16, ptr %i.ek, align 8, !tbaa !154
  %i.el = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i5.i.i, 121
  br i1 %i.el, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i.i, label %_ZNK8AstRange7loConstEv.exit.i

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i.i: ; preds = %bb.p
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 152
  %i.en = invoke noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.em)
          to label %_ZNK8AstRange7loConstEv.exit.i unwind label %bb.t

_ZNK8AstRange7loConstEv.exit.i:                   ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i.i, %bb.p, %_ZNK8AstRange9leftConstEv.exit.i.i
  %i.eo = phi i32 [ 0, %bb.p ], [ 0, %_ZNK8AstRange9leftConstEv.exit.i.i ], [ %i.en, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i.i ]
  %i.ep = call noundef i32 @llvm.smin.i32(i32 %i.eh, i32 %i.eo)
  br label %_ZNK13AstBasicDType2loEv.exit

bb.q:                                             ; preds = %bb.m
  %i.eq = getelementptr inbounds nuw i8, ptr %i.du, i64 168
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !503
  %i.es = getelementptr inbounds nuw i8, ptr %i.du, i64 172
  %i.et = load i32, ptr %i.es, align 4, !tbaa !505
  %..i.i = call noundef i32 @llvm.smin.i32(i32 %i.er, i32 %i.et)
  br label %_ZNK13AstBasicDType2loEv.exit

_ZNK13AstBasicDType2loEv.exit:                    ; preds = %bb.q, %_ZNK8AstRange7loConstEv.exit.i
  %i.eu = phi i32 [ %i.ep, %_ZNK8AstRange7loConstEv.exit.i ], [ %..i.i, %bb.q ]
  %i.ev = add nsw i32 %i.eu, %.045.in365
  store i32 %i.ev, ptr %i.a, align 4, !tbaa !91
  invoke void @_Z8cvtToStrIiENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %_ZNK13AstBasicDType2loEv.exit
  %i.ew = load i64, ptr %i.an, align 8, !tbaa !16 ; 2 uses
  %i.ex = load i64, ptr %i.g, align 8, !tbaa !16
  %i.ey = sub i64 4611686018427387903, %i.ex
  %i.ez = icmp ult i64 %i.ey, %i.ew
  br i1 %i.ez, label %bb.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #23
          to label %.noexc98 unwind label %.loopexit.split-lp311

.noexc98:                                         ; preds = %bb.s
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.r
  %i.fa = load ptr, ptr %4, align 8, !tbaa !10
  %i.fb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.fa, i64 noundef %i.ew)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit310 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.fc = load ptr, ptr %4, align 8, !tbaa !10    ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.ao
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.fe = load i64, ptr %i.ao, align 8, !tbaa !17
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.ff) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.bt

bb.t:                                             ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i.i, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i, %_ZNK13AstBasicDType2loEv.exit
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

.loopexit310:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit312 = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp311:                            ; preds = %bb.s
  %lpad.loopexit.split-lp313 = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %.loopexit.split-lp311, %.loopexit310
  %lpad.phi314 = phi { ptr, i32 } [ %lpad.loopexit312, %.loopexit310 ], [ %lpad.loopexit.split-lp313, %.loopexit.split-lp311 ] ; 2 uses
  %i.fh = load ptr, ptr %4, align 8, !tbaa !10    ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.ao
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %bb.u
  %i.fj = load i64, ptr %i.ao, align 8, !tbaa !17
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fk) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100, %bb.t
  %.pn63 = phi { ptr, i32 } [ %i.fg, %bb.t ], [ %lpad.phi314, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100 ], [ %lpad.phi314, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.by

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.fl = getelementptr inbounds nuw i8, ptr %i.du, i64 24 ; 5 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !116 ; 3 uses
  %.not.i103 = icmp eq ptr %i.fm, null
  br i1 %.not.i103, label %_ZNK13AstBasicDType9ascendingEv.exit, label %bb.w

end_hunk_2
