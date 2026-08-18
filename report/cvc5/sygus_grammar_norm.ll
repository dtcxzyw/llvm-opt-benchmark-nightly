inline.NumInlined: 2398
inline.NumDeleted: 1029
begin_hunk_0
@.str.56 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.51, ptr @_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE }, { i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_sygus_grammar_norm.cpp, ptr null }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE], section "llvm.metadata"

@_ZN4cvc58internal6theory11quantifiers16SygusGrammarNormC1ERNS0_3EnvEPNS2_11TermDbSygusE = hidden unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN4cvc58internal6theory11quantifiers16SygusGrammarNormC2ERNS0_3EnvEPNS2_11TermDbSygusE
@_ZN4cvc58internal6theory11quantifiers16SygusGrammarNorm10TypeObjectC1ENS0_8TypeNodeES5_ = hidden unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN4cvc58internal6theory11quantifiers16SygusGrammarNorm10TypeObjectC2ENS0_8TypeNodeES5_

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4cvc58internal6theory11quantifiers9OpPosTrie13getOrMakeTypeEPNS0_11NodeManagerENS0_8TypeNodeERS6_RKSt6vectorIjSaIjEEjb(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr nofree noundef readonly align 8 captures(none) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, i32 noundef %5, i1 noundef zeroext %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::tuple.506", align 8    ; 4 uses
  %8 = alloca %"class.std::tuple.482", align 1    ; 3 uses
  %9 = alloca %"class.cvc5::internal::options::ioutils::Scope", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %14 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 3 uses
  %i.a = zext i32 %5 to i64                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = load ptr, ptr %4, align 8, !tbaa !12     ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %i.i = icmp eq i64 %i.h, %i.a
  br i1 %i.i, label %bb.b, label %bb.bc

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !13
  %i.k = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.c, label %_ZNK4cvc58internal8TypeNode6isNullEv.exit, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.m = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #22
  %.not.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i, label %_ZNK4cvc58internal8TypeNode6isNullEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23
          to label %bb.e unwind label %bb.f       ; 3 uses

bb.e:                                             ; preds = %bb.d
  store i64 1152920405095219200, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  store ptr %i.n, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !17
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #22
  br label %_ZNK4cvc58internal8TypeNode6isNullEv.exit

common.resume:                                    ; preds = %.body, %bb.bm, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.f ], [ %.pn32.pn, %.body ], [ %i.jd, %bb.bm ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #22
  br label %common.resume

_ZNK4cvc58internal8TypeNode6isNullEv.exit:        ; preds = %bb.b, %bb.c, %bb.e
  %i.q = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !17
  %i.r = icmp eq ptr %i.j, %i.q
  br i1 %i.r, label %bb.n, label %bb.g

bb.g:                                             ; preds = %_ZNK4cvc58internal8TypeNode6isNullEv.exit
  %i.s = load ptr, ptr %3, align 8, !tbaa !13     ; 4 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !13
  %.not.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i, label %_ZN4cvc58internal8TypeNodeaSERKS1_.exit, label %bb.h, !prof !18

bb.h:                                             ; preds = %bb.g
  %i.u = load i64, ptr %i.s, align 8              ; 3 uses
  %i.v = and i64 %i.u, 1152920405095219200
  %.not.i.i36 = icmp eq i64 %i.v, 1152920405095219200
  br i1 %.not.i.i36, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, label %bb.i, !prof !18

bb.i:                                             ; preds = %bb.h
  %i.w = add i64 %i.u, 1152920405095219200
  %i.x = and i64 %i.w, 1152920405095219200        ; 2 uses
  %i.y = and i64 %i.u, -1152920405095219201
  %i.z = or disjoint i64 %i.x, %i.y
  store i64 %i.z, ptr %i.s, align 8
  %i.aa = icmp eq i64 %i.x, 0
  br i1 %i.aa, label %bb.j, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, !prof !18

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.s)
  br label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i:    ; preds = %bb.j, %bb.i, %bb.h
  %i.ab = load ptr, ptr %0, align 8, !tbaa !13    ; 5 uses
  store ptr %i.ab, ptr %3, align 8, !tbaa !13
  %i.ac = load i64, ptr %i.ab, align 8            ; 3 uses
  %i.ad = lshr i64 %i.ac, 40
  %i.ae = trunc nuw nsw i64 %i.ad to i32
  %i.af = and i32 %i.ae, 1048575                  ; 3 uses
  %i.ag = icmp samesign ult i32 %i.af, 1048574
  br i1 %i.ag, label %bb.k, label %bb.l, !prof !19

bb.k:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.ah = add nuw nsw i32 %i.af, 1
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 40
  %i.ak = and i64 %i.ac, -1152920405095219201
  %i.al = or i64 %i.aj, %i.ak
  store i64 %i.al, ptr %i.ab, align 8
  br label %_ZN4cvc58internal8TypeNodeaSERKS1_.exit

bb.l:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.am = icmp eq i32 %i.af, 1048574
  br i1 %i.am, label %bb.m, label %_ZN4cvc58internal8TypeNodeaSERKS1_.exit, !prof !18

bb.m:                                             ; preds = %bb.l
  %i.an = or i64 %i.ac, 1152920405095219200
  store i64 %i.an, ptr %i.ab, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ab)
  br label %_ZN4cvc58internal8TypeNodeaSERKS1_.exit

bb.n:                                             ; preds = %_ZNK4cvc58internal8TypeNode6isNullEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %10)
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !20
  %i.aq = getelementptr i8, ptr %i.ap, i64 -24
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = getelementptr inbounds i8, ptr %i.ao, i64 %i.ar
  invoke void @_ZN4cvc58internal7options7ioutils5ScopeC1ERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(46) %9, ptr noundef nonnull align 8 dereferenceable(216) %i.as)
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.n
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !20
  %i.au = getelementptr i8, ptr %i.at, i64 -24
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds i8, ptr %i.ao, i64 %i.av
  invoke void @_ZN4cvc58internal7options7ioutils14applyDagThreshERSt8ios_basel(ptr noundef nonnull align 8 dereferenceable(216) %i.aw, i64 noundef 0)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %.noexc
  %i.ax = load ptr, ptr %2, align 8, !tbaa !13
  invoke void @_ZNK4cvc58internal4expr9NodeValue8toStreamERSo(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(8) %i.ao)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.o, %.noexc
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal7options7ioutils5ScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(46) dereferenceable(46) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %.body

bb.q:                                             ; preds = %bb.o
  call void @_ZN4cvc58internal7options7ioutils5ScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(46) dereferenceable(46) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br i1 %6, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %bb.q
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.r
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.bb = load ptr, ptr %4, align 8, !tbaa !12
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd                    ; 2 uses
  %i.bf = and i64 %i.be, 17179869180
  %.not = icmp eq i64 %i.bf, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bg = lshr exact i64 %i.be, 2
  %i.bh = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %wide.trip.count = and i64 %i.bg, 4294967295
  br label %bb.t

bb.s:                                             ; preds = %bb.ay, %bb.av, %bb.r, %bb.n
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.t:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.bk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39 unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39: ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.bl = load ptr, ptr %4, align 8, !tbaa !12
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !22 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23)
  %i.bo = icmp ult i32 %i.bn, 10
  br i1 %i.bo, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39, %bb.z
  %.02230.i.i = phi i32 [ %i.bw, %bb.z ], [ 1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39 ] ; 4 uses
  %.02329.i.i = phi i32 [ %i.bv, %bb.z ], [ %i.bn, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39 ] ; 5 uses
  %i.bp = icmp ult i32 %.02329.i.i, 100
  br i1 %i.bp, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.i.i
  %i.bq = add i32 %.02230.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.v:                                             ; preds = %.lr.ph.i.i
  %i.br = icmp ult i32 %.02329.i.i, 1000
  br i1 %i.br, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bs = add i32 %.02230.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.x:                                             ; preds = %bb.v
  %i.bt = icmp ult i32 %.02329.i.i, 10000
  br i1 %i.bt, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bu = add i32 %.02230.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.z:                                             ; preds = %bb.x
  %i.bv = udiv i32 %.02329.i.i, 10000
  %i.bw = add i32 %.02230.i.i, 4                  ; 2 uses
  %i.bx = icmp ult i32 %.02329.i.i, 100000
  br i1 %i.bx, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !26

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.z, %bb.y, %bb.w, %bb.u, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39
  %.0.i.i = phi i32 [ %i.bu, %bb.y ], [ %i.bq, %bb.u ], [ %i.bs, %bb.w ], [ 1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39 ], [ %i.bw, %bb.z ]
  %i.by = zext i32 %.0.i.i to i64
  store ptr %i.bh, ptr %11, align 8, !tbaa !28, !alias.scope !23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.by, i8 noundef signext 0)
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.bz = load ptr, ptr %11, align 8, !tbaa !31, !alias.scope !23 ; 4 uses
  %i.ca = icmp ugt i32 %i.bn, 99
  br i1 %i.ca, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.aa
  %i.cb = load i64, ptr %i.bi, align 8, !tbaa !34, !alias.scope !23
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = add i32 %i.cc, -1
  br label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.lr.ph.i2.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i32 [ %i.cg, %.lr.ph.i2.i ], [ %i.bn, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.cr, %.lr.ph.i2.i ], [ %i.cd, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ce = urem i32 %.020.i.i, 100
  %i.cf = shl nuw nsw i32 %i.ce, 1
  %i.cg = udiv i32 %.020.i.i, 100                 ; 2 uses
  %i.ch = zext nneg i32 %i.cf to i64
  %i.ci = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ch ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !35, !noalias !23
  %i.cl = zext i32 %.01819.i.i to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cl
  store i8 %i.ck, ptr %i.cm, align 1, !tbaa !35
  %i.cn = load i8, ptr %i.ci, align 2, !tbaa !35, !noalias !23
  %i.co = add i32 %.01819.i.i, -1
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cp
  store i8 %i.cn, ptr %i.cq, align 1, !tbaa !35
  %i.cr = add i32 %.01819.i.i, -2
  %i.cs = icmp ugt i32 %.020.i.i, 9999
  br i1 %i.cs, label %.lr.ph.i2.i, label %._crit_edge.i.i, !llvm.loop !36

._crit_edge.i.i:                                  ; preds = %.lr.ph.i2.i, %bb.aa
  %.0.lcssa.i.i = phi i32 [ %i.bn, %bb.aa ], [ %i.cg, %.lr.ph.i2.i ] ; 3 uses
  %i.ct = icmp samesign ugt i32 %.0.lcssa.i.i, 9
  br i1 %i.ct, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %._crit_edge.i.i
  %i.cu = shl nuw nsw i32 %.0.lcssa.i.i, 1
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.cv ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !35, !noalias !23
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !35
  %i.da = load i8, ptr %i.cw, align 2, !tbaa !35, !noalias !23
  br label %_ZNSt7__cxx119to_stringEj.exit

bb.ac:                                            ; preds = %._crit_edge.i.i
  %i.db = trunc nuw nsw i32 %.0.lcssa.i.i to i8
  %i.dc = or disjoint i8 %i.db, 48
  br label %_ZNSt7__cxx119to_stringEj.exit

bb.ad:                                            ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  %i.de = extractvalue { ptr, i32 } %i.dd, 0
  call void @__clang_call_terminate(ptr %i.de) #24
  unreachable

_ZNSt7__cxx119to_stringEj.exit:                   ; preds = %bb.ab, %bb.ac
  %storemerge.i.i = phi i8 [ %i.dc, %bb.ac ], [ %i.da, %bb.ab ]
  store i8 %storemerge.i.i, ptr %i.bz, align 1, !tbaa !35
  %i.df = load ptr, ptr %11, align 8, !tbaa !31
  %i.dg = load i64, ptr %i.bi, align 8, !tbaa !34
  %i.dh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef %i.df, i64 noundef %i.dg)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.af ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNSt7__cxx119to_stringEj.exit
  %i.di = load ptr, ptr %11, align 8, !tbaa !31   ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.bh
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.dk = load i64, ptr %i.bh, align 8, !tbaa !35
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.t, !llvm.loop !37

bb.ae:                                            ; preds = %bb.t
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.af:                                            ; preds = %_ZNSt7__cxx119to_stringEj.exit
  %i.dn = landingpad { ptr, i32 }
          cleanup
  %i.do = load ptr, ptr %11, align 8, !tbaa !31   ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.bh
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %bb.af
  %i.dq = load i64, ptr %i.bh, align 8, !tbaa !35
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dr) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %.body

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !38)
  call void @llvm.experimental.noalias.scope.decl(metadata !41)
  %i.ds = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  store ptr %i.ds, ptr %13, align 8, !tbaa !28, !alias.scope !44
  %i.dt = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 0, ptr %i.dt, align 8, !tbaa !34, !alias.scope !44
  store i8 0, ptr %i.ds, align 8, !tbaa !35, !alias.scope !44
  %i.du = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !45, !noalias !44 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.dv, null
  %i.dw = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.dx = load ptr, ptr %i.dw, align 8, !noalias !44 ; 2 uses
  %i.dy = icmp ugt ptr %i.dv, %i.dx
  %.08.i.i.i = select i1 %i.dy, ptr %i.dv, ptr %i.dx ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i44 = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i44, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %.loopexit
  %i.dz = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !49, !noalias !44 ; 2 uses
  %i.eb = ptrtoint ptr %.08.i.i.i to i64
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef 0, ptr noundef %i.ea, i64 noundef %i.ed)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ah ; 0 uses

bb.ah:                                            ; preds = %bb.ai, %bb.ag
  %i.ef = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eg = load ptr, ptr %13, align 8, !tbaa !31, !alias.scope !44 ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.ds
  br i1 %i.eh, label %.body45, label %.body45.sink.split

bb.ai:                                            ; preds = %.loopexit
  %i.ei = getelementptr inbounds nuw i8, ptr %10, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.ei)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ah

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.ai, %bb.ag
  invoke void @_ZN4cvc58internal11NodeManager24mkUnresolvedDatatypeSortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %12, ptr noundef nonnull align 8 dereferenceable(3592) %1, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0)
          to label %bb.aj unwind label %bb.az

bb.aj:                                            ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ej = load ptr, ptr %0, align 8, !tbaa !13    ; 4 uses
  %i.ek = load ptr, ptr %12, align 8, !tbaa !13
  %.not.i47 = icmp eq ptr %i.ej, %i.ek
  br i1 %.not.i47, label %_ZN4cvc58internal8TypeNodeaSERKS1_.exit52, label %bb.ak, !prof !18

bb.ak:                                            ; preds = %bb.aj
  %i.el = load i64, ptr %i.ej, align 8            ; 3 uses
  %i.em = and i64 %i.el, 1152920405095219200
  %.not.i.i48 = icmp eq i64 %i.em, 1152920405095219200
  br i1 %.not.i.i48, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i49, label %bb.al, !prof !18

bb.al:                                            ; preds = %bb.ak
  %i.en = add i64 %i.el, 1152920405095219200
  %i.eo = and i64 %i.en, 1152920405095219200      ; 2 uses
  %i.ep = and i64 %i.el, -1152920405095219201
  %i.eq = or disjoint i64 %i.eo, %i.ep
  store i64 %i.eq, ptr %i.ej, align 8
  %i.er = icmp eq i64 %i.eo, 0
  br i1 %i.er, label %bb.am, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i49, !prof !18

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ej)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i49 unwind label %bb.ba

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i49:  ; preds = %bb.am, %bb.al, %bb.ak
  %i.es = load ptr, ptr %12, align 8, !tbaa !13   ; 5 uses
  store ptr %i.es, ptr %0, align 8, !tbaa !13
  %i.et = load i64, ptr %i.es, align 8            ; 3 uses
  %i.eu = lshr i64 %i.et, 40
  %i.ev = trunc nuw nsw i64 %i.eu to i32
  %i.ew = and i32 %i.ev, 1048575                  ; 3 uses
  %i.ex = icmp samesign ult i32 %i.ew, 1048574
  br i1 %i.ex, label %bb.an, label %bb.ao, !prof !19

bb.an:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i49
  %i.ey = add nuw nsw i32 %i.ew, 1
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal6theory11quantifiers16SygusGrammarNorm11inferTransfENS0_8TypeNodeERKNS0_5DTypeERKSt6vectorIjSaIjEE:.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  invoke void @_ZN4cvc58internal6theory11quantifiers18SygusRedundantCons12getRedundantERSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(144) %6, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.m unwind label %bb.w

bb.m:                                             ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit
  %i.ar = load ptr, ptr %8, align 8, !tbaa !59    ; 9 uses
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !59 ; 2 uses
  %i.au = icmp eq ptr %i.ar, %i.at
  br i1 %i.au, label %.critedge114, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit174

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit174: ; preds = %bb.m
  %i.av = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #23
          to label %bb.n unwind label %bb.w       ; 7 uses

bb.n:                                             ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit174
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4cvc58internal6theory11quantifiers16SygusGrammarNorm10TransfDropE, i64 16), ptr %i.av, align 8, !tbaa !20
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = ptrtoint ptr %i.ar to i64               ; 2 uses
  %i.az = sub i64 %i.ax, %i.ay                    ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false)
  %i.ba = icmp ugt i64 %i.az, 9223372036854775804
  br i1 %i.ba, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i, !prof !18

.noexc.i.i.i:                                     ; preds = %bb.n
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc175 unwind label %bb.x

.noexc175:                                        ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.n
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #23
          to label %.noexc3.i unwind label %bb.x  ; 5 uses

.noexc3.i:                                        ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.bb, ptr %i.aw, align 8, !tbaa !12
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 3 uses
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.az ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !99
  %i.bf = icmp samesign ugt i64 %i.az, 4
  br i1 %i.bf, label %bb.o, label %bb.p, !prof !109

bb.o:                                             ; preds = %.noexc3.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bb, ptr align 4 %i.ar, i64 %i.az, i1 false)
  br label %bb.q

bb.p:                                             ; preds = %.noexc3.i
  %i.bg = icmp eq i64 %i.az, 4
  br i1 %i.bg, label %.thread369, label %bb.q

.thread369:                                       ; preds = %bb.p
  %i.bh = load i32, ptr %i.ar, align 4, !tbaa !22
  store i32 %i.bh, ptr %i.bb, align 4, !tbaa !22
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !8
  store ptr %i.av, ptr %0, align 8, !tbaa !362
  br label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !8
  store ptr %i.av, ptr %0, align 8, !tbaa !362
  %.not.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %.thread369, %bb.q
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !99
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.bl) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @_ZN4cvc58internal6theory11quantifiers18SygusRedundantConsD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit298

bb.s:                                             ; preds = %bb.ad, %bb.b, %.critedge
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit300

bb.t:                                             ; preds = %bb.d
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.u:                                             ; preds = %bb.h
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.v:                                             ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #22
  br label %bb.aa

bb.w:                                             ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit174, %_ZN4cvc58internal8TypeNodeD2Ev.exit
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef 32) #25
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn92 = phi { ptr, i32 } [ %i.br, %bb.x ], [ %i.bq, %bb.w ]
  %i.bs = load ptr, ptr %8, align 8, !tbaa !12    ; 3 uses
  %.not.i.i.i180 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i180, label %_ZNSt6vectorIjSaIjEED2Ev.exit181, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !99
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = sub i64 %i.bv, %i.bw
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bx) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit181

_ZNSt6vectorIjSaIjEED2Ev.exit181:                 ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit181, %bb.v, %bb.u
  %.pn92.pn = phi { ptr, i32 } [ %.pn92, %_ZNSt6vectorIjSaIjEED2Ev.exit181 ], [ %i.bp, %bb.v ], [ %i.bo, %bb.u ]
  call void @_ZN4cvc58internal6theory11quantifiers18SygusRedundantConsD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %6) #22
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.t
  %.pn92.pn.pn = phi { ptr, i32 } [ %.pn92.pn, %bb.aa ], [ %i.bn, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit300

.critedge114:                                     ; preds = %bb.m
  %.not.i.i.i182 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i182, label %_ZNSt6vectorIjSaIjEED2Ev.exit183, label %bb.ac

bb.ac:                                            ; preds = %.critedge114
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !99
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.ar to i64
  %i.cc = sub i64 %i.ca, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.cc) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit183

_ZNSt6vectorIjSaIjEED2Ev.exit183:                 ; preds = %.critedge114, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @_ZN4cvc58internal6theory11quantifiers18SygusRedundantConsD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit183, %bb.c, %bb.a
  %i.cd = invoke noundef nonnull align 8 dereferenceable(408) ptr @_ZNK4cvc58internal6EnvObj7optionsEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.ae unwind label %bb.s

bb.ae:                                            ; preds = %bb.ad
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 344
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !129, !nonnull !107, !align !108
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 545
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !313, !range !353, !noundef !107
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store ptr null, ptr %0, align 8, !tbaa !367
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit298

bb.ag:                                            ; preds = %bb.ae
  %i.cj = invoke noundef i64 @_ZNK4cvc58internal5DType18getNumConstructorsEv(ptr noundef nonnull align 8 dereferenceable(448) %3)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ck = trunc i64 %i.cj to i32                  ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !8
  %i.cn = load ptr, ptr %4, align 8, !tbaa !12
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp                    ; 2 uses
  %i.cr = and i64 %i.cq, 17179869180
  %.not480 = icmp eq i64 %i.cr, 0
  br i1 %.not480, label %._crit_edge, label %.lr.ph476.preheader

.lr.ph476.preheader:                              ; preds = %bb.ah
  %i.cs = lshr exact i64 %i.cq, 2
  %wide.trip.count = and i64 %i.cs, 4294967295
  br label %.lr.ph476

._crit_edge:                                      ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit288, %bb.ah
  %.sroa.17.0.lcssa.a = phi ptr [ null, %bb.ah ], [ %.sroa.17.1.a, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit288 ] ; 2 uses
  %.sroa.11.0.lcssa = phi ptr [ null, %bb.ah ], [ %.sroa.11.1, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit288 ] ; 3 uses
  %.sroa.0350.0.lcssa = phi ptr [ null, %bb.ah ], [ %.sroa.0350.1, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit288 ] ; 9 uses
  %.079.lcssa = phi i32 [ %i.ck, %bb.ah ], [ %.281, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit288 ] ; 2 uses
  %i.ct = invoke noundef i64 @_ZNK4cvc58internal5DType18getNumConstructorsEv(ptr noundef nonnull align 8 dereferenceable(448) %3)
          to label %bb.cz unwind label %bb.dg

bb.ai:                                            ; preds = %bb.ag
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit300

.lr.ph476:                                        ; preds = %.lr.ph476.preheader, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit288
  %indvars.iv = phi i64 [ 0, %.lr.ph476.preheader ], [ %indvars.iv.next, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit288 ] ; 5 uses
  %.079474 = phi i32 [ %i.ck, %.lr.ph476.preheader ], [ %.281, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit288 ] ; 4 uses
  %.sroa.0350.0472 = phi ptr [ null, %.lr.ph476.preheader ], [ %.sroa.0350.1, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit288 ] ; 9 uses
  %.sroa.11.0470 = phi ptr [ null, %.lr.ph476.preheader ], [ %.sroa.11.1, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit288 ] ; 7 uses
  %.sroa.17.0468 = phi ptr [ null, %.lr.ph476.preheader ], [ %.sroa.17.1.a, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit288 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.cv = load ptr, ptr %4, align 8, !tbaa !12
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !22
  %i.cy = zext i32 %i.cx to i64
  %i.cz = invoke noundef nonnull align 8 dereferenceable(264) ptr @_ZNK4cvc58internal5DTypeixEm(ptr noundef nonnull align 8 dereferenceable(448) %3, i64 noundef %i.cy)
          to label %bb.aj unwind label %bb.be

bb.aj:                                            ; preds = %.lr.ph476
  invoke void @_ZNK4cvc58internal16DTypeConstructor10getSygusOpEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %9, ptr noundef nonnull align 8 dereferenceable(264) %i.cz)
          to label %bb.ak unwind label %bb.be

bb.ak:                                            ; preds = %bb.aj
  %i.da = load ptr, ptr %9, align 8, !tbaa !86
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load i64, ptr %i.db, align 8
  %i.dd = and i64 %i.dc, 1023
  %i.de = icmp eq i64 %i.dd, 4
  br i1 %i.de, label %bb.al, label %.critedge116.thread

bb.al:                                            ; preds = %bb.ak
  %i.df = load ptr, ptr %5, align 8, !tbaa !13    ; 5 uses
  store ptr %i.df, ptr %10, align 8, !tbaa !13
  %i.dg = load i64, ptr %i.df, align 8            ; 3 uses
  %i.dh = lshr i64 %i.dg, 40
  %i.di = trunc nuw nsw i64 %i.dh to i32
  %i.dj = and i32 %i.di, 1048575                  ; 3 uses
  %i.dk = icmp samesign ult i32 %i.dj, 1048574
  br i1 %i.dk, label %bb.am, label %bb.an, !prof !19

bb.am:                                            ; preds = %bb.al
  %i.dl = add nuw nsw i32 %i.dj, 1
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = shl nuw nsw i64 %i.dm, 40
  %i.do = and i64 %i.dg, -1152920405095219201
  %i.dp = or i64 %i.dn, %i.do
  store i64 %i.dp, ptr %i.df, align 8
  br label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit185

bb.an:                                            ; preds = %bb.al
  %i.dq = icmp eq i32 %i.dj, 1048574
  br i1 %i.dq, label %bb.ao, label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit185, !prof !18

bb.ao:                                            ; preds = %bb.an
  %i.dr = or i64 %i.dg, 1152920405095219200
  store i64 %i.dr, ptr %i.df, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.df)
          to label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit185 unwind label %.loopexit

_ZN4cvc58internal8TypeNodeC2ERKS1_.exit185:       ; preds = %bb.an, %bb.am, %bb.ao
  %i.ds = load ptr, ptr %9, align 8, !tbaa !86    ; 9 uses
  store ptr %i.ds, ptr %11, align 8, !tbaa !86
  %i.dt = load i64, ptr %i.ds, align 8            ; 3 uses
  %i.du = lshr i64 %i.dt, 40
  %i.dv = trunc nuw nsw i64 %i.du to i32
  %i.dw = and i32 %i.dv, 1048575                  ; 3 uses
  %i.dx = icmp samesign ult i32 %i.dw, 1048574
  br i1 %i.dx, label %bb.ap, label %bb.aq, !prof !19

bb.ap:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit185
  %i.dy = add nuw nsw i32 %i.dw, 1
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = shl nuw nsw i64 %i.dz, 40
  %i.eb = and i64 %i.dt, -1152920405095219201
  %i.ec = or i64 %i.ea, %i.eb
  store i64 %i.ec, ptr %i.ds, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.aq:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit185
  %i.ed = icmp eq i32 %i.dw, 1048574
  br i1 %i.ed, label %bb.ar, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !18

bb.ar:                                            ; preds = %bb.aq
  %i.ee = or i64 %i.dt, 1152920405095219200
  store i64 %i.ee, ptr %i.ds, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ds)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit unwind label %bb.bf

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.aq, %bb.ap, %bb.ar
  %i.ef = invoke noundef zeroext i1 @_ZNK4cvc58internal8TypeNode9isIntegerEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %.noexc187 unwind label %bb.bg

.noexc187:                                        ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  br i1 %i.ef, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.noexc187
  %i.eg = invoke noundef i32 @_ZN4cvc58internal4kind14operatorToKindEPNS0_4expr9NodeValueE(ptr noundef nonnull %i.ds)
          to label %.noexc188 unwind label %bb.bg

.noexc188:                                        ; preds = %bb.as
  %i.eh = icmp eq i32 %i.eg, 40
  br label %bb.at

bb.at:                                            ; preds = %.noexc188, %.noexc187
  %.ph = phi i1 [ false, %.noexc187 ], [ %i.eh, %.noexc188 ]
  %i.ei = load i64, ptr %i.ds, align 8            ; 3 uses
  %i.ej = and i64 %i.ei, 1152920405095219200
  %.not.i.i189 = icmp eq i64 %i.ej, 1152920405095219200
  br i1 %.not.i.i189, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.au, !prof !18

bb.au:                                            ; preds = %bb.at
  %i.ek = add i64 %i.ei, 1152920405095219200
  %i.el = and i64 %i.ek, 1152920405095219200      ; 2 uses
  %i.em = and i64 %i.ei, -1152920405095219201
  %i.en = or disjoint i64 %i.el, %i.em
  store i64 %i.en, ptr %i.ds, align 8
  %i.eo = icmp eq i64 %i.el, 0
  br i1 %i.eo, label %bb.av, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !18

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ds)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  %i.eq = extractvalue { ptr, i32 } %i.ep, 0
  call void @__clang_call_terminate(ptr %i.eq) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.at, %bb.au, %bb.av
  %i.er = load ptr, ptr %10, align 8, !tbaa !13   ; 3 uses
  %i.es = load i64, ptr %i.er, align 8            ; 3 uses
  %i.et = and i64 %i.es, 1152920405095219200
  %.not.i.i190 = icmp eq i64 %i.et, 1152920405095219200
  br i1 %.not.i.i190, label %.critedge116, label %bb.ax, !prof !18

bb.ax:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.eu = add i64 %i.es, 1152920405095219200
  %i.ev = and i64 %i.eu, 1152920405095219200      ; 2 uses
  %i.ew = and i64 %i.es, -1152920405095219201
  %i.ex = or disjoint i64 %i.ev, %i.ew
  store i64 %i.ex, ptr %i.er, align 8
  %i.ey = icmp eq i64 %i.ev, 0
  br i1 %i.ey, label %bb.ay, label %.critedge116, !prof !18

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.er)
          to label %.critedge116 unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ez = landingpad { ptr, i32 }
          catch ptr null
  %i.fa = extractvalue { ptr, i32 } %i.ez, 0
  call void @__clang_call_terminate(ptr %i.fa) #24
  unreachable

.critedge116:                                     ; preds = %bb.ay, %bb.ax, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  br i1 %.ph, label %bb.ba, label %.critedge116.thread

bb.ba:                                            ; preds = %.critedge116
  %i.fb = load ptr, ptr %4, align 8, !tbaa !12
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %indvars.iv
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !22
  %i.fe = zext i32 %i.fd to i64
  %i.ff = invoke noundef nonnull align 8 dereferenceable(264) ptr @_ZNK4cvc58internal5DTypeixEm(ptr noundef nonnull align 8 dereferenceable(448) %3, i64 noundef %i.fe)
          to label %bb.bb unwind label %bb.bi

bb.bb:                                            ; preds = %bb.ba
  %i.fg = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4cvc58internal16DTypeConstructor7getArgsEv(ptr noundef nonnull align 8 dereferenceable(264) %i.ff)
          to label %bb.bc unwind label %bb.bi     ; 2 uses

bb.bc:                                            ; preds = %bb.bb
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !84 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !84 ; 2 uses
  %.not371465 = icmp eq ptr %i.fh, %i.fj
  br i1 %.not371465, label %.critedge374, label %.lr.ph

bb.bd:                                            ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit193
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.0347.0466, i64 16 ; 2 uses
  %.not371 = icmp eq ptr %i.fk, %i.fj
  br i1 %.not371, label %.critedge374, label %.lr.ph

bb.be:                                            ; preds = %bb.aj, %.lr.ph476
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

.loopexit:                                        ; preds = %bb.ao, %bb.bq, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

.loopexit.split-lp:                               ; preds = %bb.cl
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.bf:                                            ; preds = %bb.ar
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bg:                                            ; preds = %bb.as, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.fn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #22
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bf, %bb.bg
  %.pn96 = phi { ptr, i32 } [ %i.fn, %bb.bg ], [ %i.fm, %bb.bf ]
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #22
  br label %bb.cx

bb.bi:                                            ; preds = %bb.bb, %bb.ba
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

.lr.ph:                                           ; preds = %bb.bc, %bb.bd
  %.sroa.0347.0466 = phi ptr [ %i.fk, %bb.bd ], [ %i.fh, %bb.bc ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.fp = load ptr, ptr %.sroa.0347.0466, align 8, !tbaa !88
  invoke void @_ZNK4cvc58internal13DTypeSelector12getRangeTypeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %12, ptr noundef nonnull align 8 dereferenceable(57) %i.fp)
          to label %bb.bj unwind label %bb.bn

bb.bj:                                            ; preds = %.lr.ph
  %i.fq = load ptr, ptr %12, align 8, !tbaa !13   ; 4 uses
  %i.fr = load ptr, ptr %2, align 8, !tbaa !13
  %.not372 = icmp eq ptr %i.fq, %i.fr
  %i.fs = load i64, ptr %i.fq, align 8            ; 3 uses
  %i.ft = and i64 %i.fs, 1152920405095219200
  %.not.i.i192 = icmp eq i64 %i.ft, 1152920405095219200
  br i1 %.not.i.i192, label %_ZN4cvc58internal8TypeNodeD2Ev.exit193, label %bb.bk, !prof !18

bb.bk:                                            ; preds = %bb.bj
  %i.fu = add i64 %i.fs, 1152920405095219200
  %i.fv = and i64 %i.fu, 1152920405095219200      ; 2 uses
  %i.fw = and i64 %i.fs, -1152920405095219201
  %i.fx = or disjoint i64 %i.fv, %i.fw
  store i64 %i.fx, ptr %i.fq, align 8
  %i.fy = icmp eq i64 %i.fv, 0
  br i1 %i.fy, label %bb.bl, label %_ZN4cvc58internal8TypeNodeD2Ev.exit193, !prof !18

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fq)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit193 unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fz = landingpad { ptr, i32 }
          catch ptr null
  %i.ga = extractvalue { ptr, i32 } %i.fz, 0
  call void @__clang_call_terminate(ptr %i.ga) #24
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit193:           ; preds = %bb.bj, %bb.bk, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br i1 %.not372, label %bb.bd, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.bn:                                            ; preds = %.lr.ph
  %i.gb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.cx

.critedge374:                                     ; preds = %bb.bd, %bb.bc
  %i.gc = load ptr, ptr %4, align 8, !tbaa !12
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !22
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

.critedge116.thread:                              ; preds = %bb.ak, %.critedge116
  %i.gf = load ptr, ptr %5, align 8, !tbaa !13    ; 5 uses
  store ptr %i.gf, ptr %13, align 8, !tbaa !13
  %i.gg = load i64, ptr %i.gf, align 8            ; 3 uses
  %i.gh = lshr i64 %i.gg, 40
  %i.gi = trunc nuw nsw i64 %i.gh to i32
  %i.gj = and i32 %i.gi, 1048575                  ; 3 uses
  %i.gk = icmp samesign ult i32 %i.gj, 1048574
  br i1 %i.gk, label %bb.bo, label %bb.bp, !prof !19

bb.bo:                                            ; preds = %.critedge116.thread
  %i.gl = add nuw nsw i32 %i.gj, 1
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = shl nuw nsw i64 %i.gm, 40
  %i.go = and i64 %i.gg, -1152920405095219201
  %i.gp = or i64 %i.gn, %i.go
  store i64 %i.gp, ptr %i.gf, align 8
  br label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit249

bb.bp:                                            ; preds = %.critedge116.thread
  %i.gq = icmp eq i32 %i.gj, 1048574
  br i1 %i.gq, label %bb.bq, label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit249, !prof !18

bb.bq:                                            ; preds = %bb.bp
  %i.gr = or i64 %i.gg, 1152920405095219200
  store i64 %i.gr, ptr %i.gf, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gf)
          to label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit249 unwind label %.loopexit

_ZN4cvc58internal8TypeNodeC2ERKS1_.exit249:       ; preds = %bb.bp, %bb.bo, %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  invoke void @_ZN4cvc58internal11NodeManager10operatorOfENS0_4kind6Kind_tE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate.86") align 8 %15, ptr noundef nonnull align 8 dereferenceable(3592) %i.a, i32 noundef 40)
          to label %bb.br unwind label %bb.co

bb.br:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit249
  %i.gs = load ptr, ptr %15, align 8, !tbaa !79   ; 8 uses
  store ptr %i.gs, ptr %14, align 8, !tbaa !86
  %i.gt = load i64, ptr %i.gs, align 8            ; 3 uses
  %i.gu = lshr i64 %i.gt, 40
  %i.gv = trunc nuw nsw i64 %i.gu to i32
  %i.gw = and i32 %i.gv, 1048575                  ; 3 uses
  %i.gx = icmp samesign ult i32 %i.gw, 1048574
  br i1 %i.gx, label %bb.bs, label %bb.bt, !prof !19

bb.bs:                                            ; preds = %bb.br
  %i.gy = add nuw nsw i32 %i.gw, 1
  %i.gz = zext nneg i32 %i.gy to i64
  %i.ha = shl nuw nsw i64 %i.gz, 40
  %i.hb = and i64 %i.gt, -1152920405095219201
  %i.hc = or i64 %i.ha, %i.hb
  store i64 %i.hc, ptr %i.gs, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

bb.bt:                                            ; preds = %bb.br
  %i.hd = icmp eq i32 %i.gw, 1048574
  br i1 %i.hd, label %bb.bu, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit, !prof !18

bb.bu:                                            ; preds = %bb.bt
  %i.he = or i64 %i.gt, 1152920405095219200
  store i64 %i.he, ptr %i.gs, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gs)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit unwind label %bb.cp

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit: ; preds = %bb.bt, %bb.bs, %bb.bu
  %i.hf = load ptr, ptr %9, align 8, !tbaa !86    ; 8 uses
  store ptr %i.hf, ptr %16, align 8, !tbaa !86
  %i.hg = load i64, ptr %i.hf, align 8            ; 3 uses
  %i.hh = lshr i64 %i.hg, 40
  %i.hi = trunc nuw nsw i64 %i.hh to i32
  %i.hj = and i32 %i.hi, 1048575                  ; 3 uses
  %i.hk = icmp samesign ult i32 %i.hj, 1048574
  br i1 %i.hk, label %bb.bv, label %bb.bw, !prof !19

bb.bv:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  %i.hl = add nuw nsw i32 %i.hj, 1
  %i.hm = zext nneg i32 %i.hl to i64
  %i.hn = shl nuw nsw i64 %i.hm, 40
  %i.ho = and i64 %i.hg, -1152920405095219201
  %i.hp = or i64 %i.hn, %i.ho
  store i64 %i.hp, ptr %i.hf, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit252

bb.bw:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  %i.hq = icmp eq i32 %i.hj, 1048574
  br i1 %i.hq, label %bb.bx, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit252, !prof !18

bb.bx:                                            ; preds = %bb.bw
  %i.hr = or i64 %i.hg, 1152920405095219200
  store i64 %i.hr, ptr %i.hf, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hf)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit252 unwind label %bb.cq

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit252: ; preds = %bb.bw, %bb.bv, %bb.bx
  %i.hs = invoke noundef zeroext i1 @_ZN4cvc58internal6theory11quantifiers16SygusGrammarNorm11TransfChain4isIdENS0_8TypeNodeENS0_12NodeTemplateILb1EEES7_(ptr noundef nonnull align 8 %13, ptr noundef nonnull align 8 %14, ptr noundef nonnull align 8 %16)
          to label %bb.by unwind label %bb.cr

bb.by:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit252
  %i.ht = load i64, ptr %i.hf, align 8            ; 3 uses
  %i.hu = and i64 %i.ht, 1152920405095219200
  %.not.i.i253 = icmp eq i64 %i.hu, 1152920405095219200
  br i1 %.not.i.i253, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit254, label %bb.bz, !prof !18

bb.bz:                                            ; preds = %bb.by
  %i.hv = add i64 %i.ht, 1152920405095219200
  %i.hw = and i64 %i.hv, 1152920405095219200      ; 2 uses
  %i.hx = and i64 %i.ht, -1152920405095219201
  %i.hy = or disjoint i64 %i.hw, %i.hx
  store i64 %i.hy, ptr %i.hf, align 8
  %i.hz = icmp eq i64 %i.hw, 0
  br i1 %i.hz, label %bb.ca, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit254, !prof !18

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hf)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit254 unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ia = landingpad { ptr, i32 }
          catch ptr null
  %i.ib = extractvalue { ptr, i32 } %i.ia, 0
  call void @__clang_call_terminate(ptr %i.ib) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit254: ; preds = %bb.by, %bb.bz, %bb.ca
  %i.ic = load i64, ptr %i.gs, align 8            ; 3 uses
  %i.id = and i64 %i.ic, 1152920405095219200
  %.not.i.i255 = icmp eq i64 %i.id, 1152920405095219200
  br i1 %.not.i.i255, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit256, label %bb.cc, !prof !18

bb.cc:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit254
  %i.ie = add i64 %i.ic, 1152920405095219200
  %i.if = and i64 %i.ie, 1152920405095219200      ; 2 uses
  %i.ig = and i64 %i.ic, -1152920405095219201
  %i.ih = or disjoint i64 %i.if, %i.ig
  store i64 %i.ih, ptr %i.gs, align 8
  %i.ii = icmp eq i64 %i.if, 0
  br i1 %i.ii, label %bb.cd, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit256, !prof !18

bb.cd:                                            ; preds = %bb.cc
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gs)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit256 unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ij = landingpad { ptr, i32 }
          catch ptr null
  %i.ik = extractvalue { ptr, i32 } %i.ij, 0
  call void @__clang_call_terminate(ptr %i.ik) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit256: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit254, %bb.cc, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.il = load ptr, ptr %13, align 8, !tbaa !13   ; 3 uses
  %i.im = load i64, ptr %i.il, align 8            ; 3 uses
  %i.in = and i64 %i.im, 1152920405095219200
  %.not.i.i257 = icmp eq i64 %i.in, 1152920405095219200
  br i1 %.not.i.i257, label %_ZN4cvc58internal8TypeNodeD2Ev.exit258, label %bb.cf, !prof !18

bb.cf:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit256
  %i.io = add i64 %i.im, 1152920405095219200
  %i.ip = and i64 %i.io, 1152920405095219200      ; 2 uses
  %i.iq = and i64 %i.im, -1152920405095219201
  %i.ir = or disjoint i64 %i.ip, %i.iq
  store i64 %i.ir, ptr %i.il, align 8
  %i.is = icmp eq i64 %i.ip, 0
  br i1 %i.is, label %bb.cg, label %_ZN4cvc58internal8TypeNodeD2Ev.exit258, !prof !18

bb.cg:                                            ; preds = %bb.cf
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.il)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit258 unwind label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.it = landingpad { ptr, i32 }
          catch ptr null
  %i.iu = extractvalue { ptr, i32 } %i.it, 0
  call void @__clang_call_terminate(ptr %i.iu) #24
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit258:           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit256, %bb.cf, %bb.cg
  br i1 %i.hs, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, label %bb.ci

bb.ci:                                            ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit258
  %i.iv = load ptr, ptr %4, align 8, !tbaa !12
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvars.iv ; 2 uses
  %.not.i283 = icmp eq ptr %.sroa.17.0468, %.sroa.11.0470
  br i1 %.not.i283, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !22
  store i32 %i.ix, ptr %.sroa.17.0468, align 4, !tbaa !22
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.17.0468, i64 4
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.ck:                                            ; preds = %bb.ci
  %i.iz = ptrtoint ptr %.sroa.11.0470 to i64
  %i.ja = ptrtoint ptr %.sroa.0350.0472 to i64
  %i.jb = sub i64 %i.iz, %i.ja                    ; 6 uses
  %i.jc = icmp eq i64 %i.jb, 9223372036854775804
  br i1 %i.jc, label %bb.cl, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.cl:                                            ; preds = %bb.ck
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #26
          to label %.noexc285 unwind label %.loopexit.split-lp

.noexc285:                                        ; preds = %bb.cl
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ck
  %i.jd = ashr exact i64 %i.jb, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.jd, i64 1)
  %i.je = add nsw i64 %.sroa.speculated.i.i.i, %i.jd ; 2 uses
  %i.jf = icmp ult i64 %i.je, %i.jd
  %i.jg = call i64 @llvm.umin.i64(i64 %i.je, i64 2305843009213693951)
  %i.jh = select i1 %i.jf, i64 2305843009213693951, i64 %i.jg ; 3 uses
  %.not.i.i.i284 = icmp ne i64 %i.jh, 0
  call void @llvm.assume(i1 %.not.i.i.i284)
  %i.ji = shl nuw nsw i64 %i.jh, 2
  %i.jj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ji) #23
          to label %.noexc286 unwind label %.loopexit ; 4 uses

.noexc286:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.jk = getelementptr inbounds i8, ptr %i.jj, i64 %i.jb ; 2 uses
  %i.jl = load i32, ptr %i.iw, align 4, !tbaa !22
  store i32 %i.jl, ptr %i.jk, align 4, !tbaa !22
  %i.jm = icmp sgt i64 %i.jb, 0
  br i1 %i.jm, label %bb.cm, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.cm:                                            ; preds = %.noexc286
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jj, ptr align 4 %.sroa.0350.0472, i64 %i.jb, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.cm, %.noexc286
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jk, i64 4
  %.not.i17.i.i = icmp eq ptr %.sroa.0350.0472, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.cn

bb.cn:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0350.0472, i64 noundef %i.jb) #25
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.cn, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %i.jh
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.co:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit249
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.cp:                                            ; preds = %bb.bu
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.cq:                                            ; preds = %bb.bx
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.cr:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit252
  %i.js = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #22
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.pn98 = phi { ptr, i32 } [ %i.js, %bb.cr ], [ %i.jr, %bb.cq ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #22
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cp, %bb.cs, %bb.co
  %.pn98.pn.pn = phi { ptr, i32 } [ %i.jp, %bb.co ], [ %.pn98, %bb.cs ], [ %i.jq, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #22
  br label %bb.cx

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit193, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.cj, %_ZN4cvc58internal8TypeNodeD2Ev.exit258, %.critedge374
  %.sroa.17.1.a = phi ptr [ %.sroa.17.0468, %.critedge374 ], [ %i.iy, %bb.cj ], [ %.sroa.17.0468, %_ZN4cvc58internal8TypeNodeD2Ev.exit258 ], [ %i.jn, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.17.0468, %_ZN4cvc58internal8TypeNodeD2Ev.exit193 ] ; 2 uses
  %.sroa.11.1 = phi ptr [ %.sroa.11.0470, %.critedge374 ], [ %.sroa.11.0470, %bb.cj ], [ %.sroa.11.0470, %_ZN4cvc58internal8TypeNodeD2Ev.exit258 ], [ %i.jo, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.11.0470, %_ZN4cvc58internal8TypeNodeD2Ev.exit193 ] ; 2 uses
  %.sroa.0350.1 = phi ptr [ %.sroa.0350.0472, %.critedge374 ], [ %.sroa.0350.0472, %bb.cj ], [ %.sroa.0350.0472, %_ZN4cvc58internal8TypeNodeD2Ev.exit258 ], [ %i.jj, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.0350.0472, %_ZN4cvc58internal8TypeNodeD2Ev.exit193 ] ; 2 uses
  %.281 = phi i32 [ %i.ge, %.critedge374 ], [ %.079474, %bb.cj ], [ %.079474, %_ZN4cvc58internal8TypeNodeD2Ev.exit258 ], [ %.079474, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.079474, %_ZN4cvc58internal8TypeNodeD2Ev.exit193 ] ; 2 uses
  %i.jt = load ptr, ptr %9, align 8, !tbaa !86    ; 3 uses
  %i.ju = load i64, ptr %i.jt, align 8            ; 3 uses
  %i.jv = and i64 %i.ju, 1152920405095219200
  %.not.i.i287 = icmp eq i64 %i.jv, 1152920405095219200
  br i1 %.not.i.i287, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit288, label %bb.cu, !prof !18

bb.cu:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %i.jw = add i64 %i.ju, 1152920405095219200
  %i.jx = and i64 %i.jw, 1152920405095219200      ; 2 uses
  %i.jy = and i64 %i.ju, -1152920405095219201
  %i.jz = or disjoint i64 %i.jx, %i.jy
  store i64 %i.jz, ptr %i.jt, align 8
  %i.ka = icmp eq i64 %i.jx, 0
  br i1 %i.ka, label %bb.cv, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit288, !prof !18

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jt)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit288 unwind label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.kb = landingpad { ptr, i32 }
          catch ptr null
  %i.kc = extractvalue { ptr, i32 } %i.kb, 0
  call void @__clang_call_terminate(ptr %i.kc) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit288: ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, %bb.cu, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph476, !llvm.loop !369

bb.cx:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.bi, %bb.bn, %bb.bh, %bb.ct
  %.pn106.pn = phi { ptr, i32 } [ %.pn96, %bb.bh ], [ %i.gb, %bb.bn ], [ %i.fo, %bb.bi ], [ %.pn98.pn.pn, %bb.ct ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #22
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.be
  %.pn106.pn.pn = phi { ptr, i32 } [ %.pn106.pn, %bb.cx ], [ %i.fl, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.dk

bb.cz:                                            ; preds = %._crit_edge
  %i.kd = zext i32 %.079.lcssa to i64
  %.not = icmp eq i64 %i.ct, %i.kd
  %i.ke = icmp eq ptr %.sroa.0350.0.lcssa, %.sroa.17.0.lcssa.a
  %or.cond = select i1 %.not, i1 true, i1 %i.ke
  br i1 %or.cond, label %bb.di, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.kf = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #23
          to label %bb.db unwind label %bb.dg     ; 7 uses

bb.db:                                            ; preds = %bb.da
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4cvc58internal6theory11quantifiers16SygusGrammarNorm11TransfChainE, i64 16), ptr %i.kf, align 8, !tbaa !20
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  store i32 %.079.lcssa, ptr %i.kg, align 8, !tbaa !370
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kf, i64 16 ; 2 uses
  %i.ki = ptrtoint ptr %.sroa.17.0.lcssa.a to i64
  %i.kj = ptrtoint ptr %.sroa.0350.0.lcssa to i64
  %i.kk = sub i64 %i.ki, %i.kj                    ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kh, i8 0, i64 24, i1 false)
  %i.kl = icmp ugt i64 %i.kk, 9223372036854775804
  br i1 %i.kl, label %.noexc.i.i.i294, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i293, !prof !18

.noexc.i.i.i294:                                  ; preds = %bb.db
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc295 unwind label %bb.dh, !inline_history !376

.noexc295:                                        ; preds = %.noexc.i.i.i294
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i293: ; preds = %bb.db
  %i.km = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kk) #23
          to label %.noexc4.i unwind label %bb.dh, !inline_history !376 ; 5 uses

.noexc4.i:                                        ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i293
  store ptr %i.km, ptr %i.kh, align 8, !tbaa !12
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kf, i64 24 ; 2 uses
  store ptr %i.km, ptr %i.kn, align 8, !tbaa !8
  %i.ko = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.kk ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kf, i64 32
  store ptr %i.ko, ptr %i.kp, align 8, !tbaa !99
  %i.kq = icmp samesign ugt i64 %i.kk, 4
  br i1 %i.kq, label %bb.dc, label %bb.dd, !prof !19

bb.dc:                                            ; preds = %.noexc4.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.km, ptr align 4 %.sroa.0350.0.lcssa, i64 %i.kk, i1 false)
  br label %bb.df

bb.dd:                                            ; preds = %.noexc4.i
  %i.kr = icmp eq i64 %i.kk, 4
  br i1 %i.kr, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.ks = load i32, ptr %.sroa.0350.0.lcssa, align 4, !tbaa !22
  store i32 %i.ks, ptr %i.km, align 4, !tbaa !22
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd, %bb.dc
  store ptr %i.ko, ptr %i.kn, align 8, !tbaa !8
  br label %bb.di

bb.dg:                                            ; preds = %bb.da, %._crit_edge
  %i.kt = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.dh:                                            ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i293, %.noexc.i.i.i294
  %i.ku = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.kf, i64 noundef 40) #25
  br label %bb.dk

bb.di:                                            ; preds = %bb.cz, %bb.df
  %storemerge = phi ptr [ %i.kf, %bb.df ], [ null, %bb.cz ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !362
  %.not.i.i.i297 = icmp eq ptr %.sroa.0350.0.lcssa, null
  br i1 %.not.i.i.i297, label %_ZNSt6vectorIjSaIjEED2Ev.exit298, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.kv = ptrtoint ptr %.sroa.11.0.lcssa to i64
  %i.kw = ptrtoint ptr %.sroa.0350.0.lcssa to i64
  %i.kx = sub i64 %i.kv, %i.kw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0350.0.lcssa, i64 noundef %i.kx) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit298

bb.dk:                                            ; preds = %bb.dh, %bb.dg, %bb.cy
  %.sroa.17.0458 = phi ptr [ %.sroa.11.0470, %bb.cy ], [ %.sroa.11.0.lcssa, %bb.dh ], [ %.sroa.11.0.lcssa, %bb.dg ]
  %.sroa.0350.0415 = phi ptr [ %.sroa.0350.0472, %bb.cy ], [ %.sroa.0350.0.lcssa, %bb.dh ], [ %.sroa.0350.0.lcssa, %bb.dg ] ; 3 uses
  %.pn106.pn.pn.pn = phi { ptr, i32 } [ %.pn106.pn.pn, %bb.cy ], [ %i.ku, %bb.dh ], [ %i.kt, %bb.dg ] ; 2 uses
  %.not.i.i.i299 = icmp eq ptr %.sroa.0350.0415, null
  br i1 %.not.i.i.i299, label %_ZNSt6vectorIjSaIjEED2Ev.exit300, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.ky = ptrtoint ptr %.sroa.17.0458 to i64
  %i.kz = ptrtoint ptr %.sroa.0350.0415 to i64
  %i.la = sub i64 %i.ky, %i.kz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0350.0415, i64 noundef %i.la) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit300

_ZNSt6vectorIjSaIjEED2Ev.exit298:                 ; preds = %bb.dj, %bb.di, %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.af
  %i.lb = load ptr, ptr %5, align 8, !tbaa !13    ; 3 uses
  %i.lc = load i64, ptr %i.lb, align 8            ; 3 uses
  %i.ld = and i64 %i.lc, 1152920405095219200
  %.not.i.i301 = icmp eq i64 %i.ld, 1152920405095219200
  br i1 %.not.i.i301, label %_ZN4cvc58internal8TypeNodeD2Ev.exit302, label %bb.dm, !prof !18

bb.dm:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit298
  %i.le = add i64 %i.lc, 1152920405095219200
  %i.lf = and i64 %i.le, 1152920405095219200      ; 2 uses
  %i.lg = and i64 %i.lc, -1152920405095219201
  %i.lh = or disjoint i64 %i.lf, %i.lg
  store i64 %i.lh, ptr %i.lb, align 8
  %i.li = icmp eq i64 %i.lf, 0
  br i1 %i.li, label %bb.dn, label %_ZN4cvc58internal8TypeNodeD2Ev.exit302, !prof !18

bb.dn:                                            ; preds = %bb.dm
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.lb)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit302 unwind label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.lj = landingpad { ptr, i32 }
          catch ptr null
  %i.lk = extractvalue { ptr, i32 } %i.lj, 0
  call void @__clang_call_terminate(ptr %i.lk) #24
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit302:           ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit298, %bb.dm, %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void

_ZNSt6vectorIjSaIjEED2Ev.exit300:                 ; preds = %bb.dl, %bb.dk, %bb.ai, %bb.ab, %bb.s
  %.pn106.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn106.pn.pn.pn, %bb.dl ], [ %i.bm, %bb.s ], [ %.pn92.pn.pn, %bb.ab ], [ %i.cu, %bb.ai ], [ %.pn106.pn.pn.pn, %bb.dk ]
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %.pn106.pn.pn.pn.pn.pn
}

declare noundef ptr @_ZNK4cvc58internal6EnvObj11nodeManagerEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef i64 @_ZNK4cvc58internal5DType18getNumConstructorsEv(ptr noundef nonnull align 8 dereferenceable(448)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(408) ptr @_ZNK4cvc58internal6EnvObj7optionsEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4cvc58internal6theory11quantifiers18SygusRedundantConsC2ERNS0_3EnvE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(696) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN4cvc58internal6EnvObjC2ERNS0_3EnvE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(696) %1)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4cvc58internal6theory11quantifiers18SygusRedundantConsE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #22
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23
          to label %bb.d unwind label %.body      ; 3 uses

bb.d:                                             ; preds = %bb.c
  store i64 1152920405095219200, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store ptr %i.d, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !17
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #22
  br label %bb.e

.body:                                            ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #22
  resume { ptr, i32 } %i.f

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !17
  store ptr %i.h, ptr %i.g, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store i32 0, ptr %i.j, align 8, !tbaa !80
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.k, align 8, !tbaa !52
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.j, ptr %i.l, align 8, !tbaa !81
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.j, ptr %i.m, align 8, !tbaa !82
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.n, align 8, !tbaa !83
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  store i32 0, ptr %i.o, align 8, !tbaa !80
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr null, ptr %i.p, align 8, !tbaa !52
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.o, ptr %i.q, align 8, !tbaa !81
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.o, ptr %i.r, align 8, !tbaa !82
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 0, ptr %i.s, align 8, !tbaa !83
  ret void
}

declare void @_ZN4cvc58internal6theory11quantifiers18SygusRedundantCons10initializeEPNS2_11TermDbSygusENS0_8TypeNodeE(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef, ptr noundef align 8) local_unnamed_addr #2

declare void @_ZN4cvc58internal6theory11quantifiers18SygusRedundantCons12getRedundantERSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal6theory11quantifiers18SygusRedundantConsD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4cvc58internal6theory11quantifiers18SygusRedundantConsE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_jESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS3_ESaISt4pairIKS3_jEEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #24
  unreachable

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS3_ESaISt4pairIKS3_jEEED2Ev.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !52
  invoke void @_ZNSt8_Rb_treeIjSt4pairIKjN4cvc58internal12NodeTemplateILb1EEEESt10_Select1stIS6_ESt4lessIjESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef %i.h)
          to label %_ZNSt3mapIjN4cvc58internal12NodeTemplateILb1EEESt4lessIjESaISt4pairIKjS3_EEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS3_ESaISt4pairIKS3_jEEED2Ev.exit
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #24
  unreachable

_ZNSt3mapIjN4cvc58internal12NodeTemplateILb1EEESt4lessIjESaISt4pairIKjS3_EEED2Ev.exit: ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEjSt4lessIS3_ESaISt4pairIKS3_jEEED2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !377  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt3mapIjN4cvc58internal12NodeTemplateILb1EEESt4lessIjESaISt4pairIKjS3_EEED2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !379
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt3mapIjN4cvc58internal12NodeTemplateILb1EEESt4lessIjESaISt4pairIKjS3_EEED2Ev.exit, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !13   ; 3 uses
  %i.t = load i64, ptr %i.s, align 8              ; 3 uses
  %i.u = and i64 %i.t, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.u, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, label %bb.e, !prof !18

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.v = add i64 %i.t, 1152920405095219200
  %i.w = and i64 %i.v, 1152920405095219200        ; 2 uses
  %i.x = and i64 %i.t, -1152920405095219201
  %i.y = or disjoint i64 %i.w, %i.x
  store i64 %i.y, ptr %i.s, align 8
  %i.z = icmp eq i64 %i.w, 0
  br i1 %i.z, label %bb.f, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, !prof !18

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #24
  unreachable
end_hunk_1
