Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/sygus_grammar_norm?download=true
inline.NumInlined: 2397
inline.NumDeleted: 1028
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
  %.030.i.i = phi i32 [ %i.bv, %bb.z ], [ %i.bn, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39 ] ; 5 uses
  %.02329.i.i = phi i32 [ %i.bw, %bb.z ], [ 1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39 ] ; 4 uses
  %i.bp = icmp ult i32 %.030.i.i, 100
  br i1 %i.bp, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.i.i
  %i.bq = add i32 %.02329.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.v:                                             ; preds = %.lr.ph.i.i
  %i.br = icmp ult i32 %.030.i.i, 1000
  br i1 %i.br, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bs = add i32 %.02329.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.x:                                             ; preds = %bb.v
  %i.bt = icmp ult i32 %.030.i.i, 10000
  br i1 %i.bt, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bu = add i32 %.02329.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.z:                                             ; preds = %bb.x
  %i.bv = udiv i32 %.030.i.i, 10000
  %i.bw = add i32 %.02329.i.i, 4                  ; 2 uses
  %i.bx = icmp ult i32 %.030.i.i, 100000
  br i1 %i.bx, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !26

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.z, %bb.y, %bb.w, %bb.u, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39
  %.022.i.i = phi i32 [ %i.bu, %bb.y ], [ %i.bq, %bb.u ], [ %i.bs, %bb.w ], [ 1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39 ], [ %i.bw, %bb.z ]
  %i.by = zext i32 %.022.i.i to i64
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
  %i.ay = load ptr, ptr %8, align 8, !tbaa !12    ; 3 uses
  %i.az = ptrtoint ptr %i.ax to i64               ; 2 uses
  %i.ba = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.ax, %i.ay
  br i1 %.not.i.i.i.i.i, label %.noexc3.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = icmp ugt i64 %i.bb, 9223372036854775804
  br i1 %i.bc, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i, !prof !18

.noexc.i.i.i:                                     ; preds = %bb.o
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc175 unwind label %bb.y

.noexc175:                                        ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.o
  %i.bd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #23
          to label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge unwind label %bb.y

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge: ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i
  %.pre = load ptr, ptr %8, align 8, !tbaa !59    ; 2 uses
  %.pre532 = load ptr, ptr %i.as, align 8, !tbaa !59
  %.pre533 = ptrtoint ptr %.pre532 to i64
  %.pre534 = ptrtoint ptr %.pre to i64
  br label %.noexc3.i

.noexc3.i:                                        ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge, %bb.n
  %.pre-phi535 = phi i64 [ %.pre534, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge ], [ %i.ba, %bb.n ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre533, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge ], [ %i.az, %bb.n ]
  %i.be = phi ptr [ %.pre, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge ], [ %i.ay, %bb.n ] ; 4 uses
  %i.bf = phi ptr [ %i.bd, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i..noexc3.i_crit_edge ], [ null, %bb.n ] ; 7 uses
  store ptr %i.bf, ptr %i.aw, align 8, !tbaa !12
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 3 uses
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bb
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !99
  %i.bj = sub i64 %.pre-phi, %.pre-phi535         ; 4 uses
  %i.bk = icmp sgt i64 %i.bj, 4
  br i1 %i.bk, label %bb.p, label %bb.q, !prof !19

bb.p:                                             ; preds = %.noexc3.i
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bf, ptr align 4 %i.be, i64 %i.bj, i1 false)
  br label %bb.r

bb.q:                                             ; preds = %.noexc3.i
  %i.bl = icmp eq i64 %i.bj, 4
  br i1 %i.bl, label %.thread, label %bb.r

.thread:                                          ; preds = %bb.q
  %i.bm = load i32, ptr %i.be, align 4, !tbaa !22
  store i32 %i.bm, ptr %i.bf, align 4, !tbaa !22
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  store ptr %i.bn, ptr %i.bg, align 8, !tbaa !8
  store ptr %i.av, ptr %0, align 8, !tbaa !361
  br label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bo = getelementptr inbounds i8, ptr %i.bf, i64 %i.bj
  store ptr %i.bo, ptr %i.bg, align 8, !tbaa !8
  store ptr %i.av, ptr %0, align 8, !tbaa !361
  %.not.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %.thread, %bb.r
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !99
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = sub i64 %i.br, %.pre-phi535
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bs) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @_ZN4cvc58internal6theory11quantifiers18SygusRedundantConsD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit298

bb.t:                                             ; preds = %bb.ae, %bb.b, %.critedge
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit300

bb.u:                                             ; preds = %bb.d
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.v:                                             ; preds = %bb.h
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.w:                                             ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #22
  br label %bb.ab

bb.x:                                             ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit174, %_ZN4cvc58internal8TypeNodeD2Ev.exit
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef 32) #25
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn92 = phi { ptr, i32 } [ %i.by, %bb.y ], [ %i.bx, %bb.x ]
  %i.bz = load ptr, ptr %8, align 8, !tbaa !12    ; 3 uses
  %.not.i.i.i180 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i180, label %_ZNSt6vectorIjSaIjEED2Ev.exit181, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !99
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.bz to i64
  %i.ce = sub i64 %i.cc, %i.cd
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.ce) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit181

_ZNSt6vectorIjSaIjEED2Ev.exit181:                 ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit181, %bb.w, %bb.v
  %.pn92.pn = phi { ptr, i32 } [ %.pn92, %_ZNSt6vectorIjSaIjEED2Ev.exit181 ], [ %i.bw, %bb.w ], [ %i.bv, %bb.v ]
  call void @_ZN4cvc58internal6theory11quantifiers18SygusRedundantConsD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %6) #22
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.u
  %.pn92.pn.pn = phi { ptr, i32 } [ %.pn92.pn, %bb.ab ], [ %i.bu, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit300

.critedge114:                                     ; preds = %bb.m
  %.not.i.i.i182 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i182, label %_ZNSt6vectorIjSaIjEED2Ev.exit183, label %bb.ad

bb.ad:                                            ; preds = %.critedge114
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !99
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %i.ar to i64
  %i.cj = sub i64 %i.ch, %i.ci
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.cj) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit183

_ZNSt6vectorIjSaIjEED2Ev.exit183:                 ; preds = %.critedge114, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @_ZN4cvc58internal6theory11quantifiers18SygusRedundantConsD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit183, %bb.c, %bb.a
  %i.ck = invoke noundef nonnull align 8 dereferenceable(408) ptr @_ZNK4cvc58internal6EnvObj7optionsEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.af unwind label %bb.t

bb.af:                                            ; preds = %bb.ae
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 344
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !128, !nonnull !107, !align !108
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 545
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !312, !range !352, !noundef !107
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store ptr null, ptr %0, align 8, !tbaa !366
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit298

bb.ah:                                            ; preds = %bb.af
  %i.cq = invoke noundef i64 @_ZNK4cvc58internal5DType18getNumConstructorsEv(ptr noundef nonnull align 8 dereferenceable(448) %3)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cr = trunc i64 %i.cq to i32                  ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !8
  %i.cu = load ptr, ptr %4, align 8, !tbaa !12
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw                    ; 2 uses
  %i.cy = and i64 %i.cx, 17179869180
  %.not480 = icmp eq i64 %i.cy, 0
  br i1 %.not480, label %._crit_edge, label %.lr.ph476.preheader

.lr.ph476.preheader:                              ; preds = %bb.ai
  %i.cz = lshr exact i64 %i.cx, 2
  %wide.trip.count = and i64 %i.cz, 4294967295
  br label %.lr.ph476

._crit_edge:                                      ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit288, %bb.ai
  %.sroa.11.0.lcssa.a = phi ptr [ null, %bb.ai ], [ %.sroa.11.1.a, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit288 ] ; 3 uses
  %.sroa.17.0.lcssa = phi ptr [ null, %bb.ai ], [ %.sroa.17.1, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit288 ] ; 2 uses
  %.sroa.0350.0.lcssa = phi ptr [ null, %bb.ai ], [ %.sroa.0350.1, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit288 ] ; 9 uses
  %.053.lcssa = phi i32 [ %i.cr, %bb.ai ], [ %.255, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit288 ] ; 2 uses
  %i.da = invoke noundef i64 @_ZNK4cvc58internal5DType18getNumConstructorsEv(ptr noundef nonnull align 8 dereferenceable(448) %3)
          to label %bb.da unwind label %bb.dh

bb.aj:                                            ; preds = %bb.ah
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit300

.lr.ph476:                                        ; preds = %.lr.ph476.preheader, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit288
  %indvars.iv = phi i64 [ 0, %.lr.ph476.preheader ], [ %indvars.iv.next, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit288 ] ; 5 uses
  %.053474 = phi i32 [ %i.cr, %.lr.ph476.preheader ], [ %.255, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit288 ] ; 4 uses
  %.sroa.0350.0472 = phi ptr [ null, %.lr.ph476.preheader ], [ %.sroa.0350.1, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit288 ] ; 9 uses
  %.sroa.17.0470 = phi ptr [ null, %.lr.ph476.preheader ], [ %.sroa.17.1, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit288 ] ; 9 uses
  %.sroa.11.0468 = phi ptr [ null, %.lr.ph476.preheader ], [ %.sroa.11.1.a, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit288 ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.dc = load ptr, ptr %4, align 8, !tbaa !12
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !22
  %i.df = zext i32 %i.de to i64
  %i.dg = invoke noundef nonnull align 8 dereferenceable(264) ptr @_ZNK4cvc58internal5DTypeixEm(ptr noundef nonnull align 8 dereferenceable(448) %3, i64 noundef %i.df)
          to label %bb.ak unwind label %bb.bf

bb.ak:                                            ; preds = %.lr.ph476
  invoke void @_ZNK4cvc58internal16DTypeConstructor10getSygusOpEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %9, ptr noundef nonnull align 8 dereferenceable(264) %i.dg)
          to label %bb.al unwind label %bb.bf

bb.al:                                            ; preds = %bb.ak
  %i.dh = load ptr, ptr %9, align 8, !tbaa !86
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load i64, ptr %i.di, align 8
  %i.dk = and i64 %i.dj, 1023
  %i.dl = icmp eq i64 %i.dk, 4
  br i1 %i.dl, label %bb.am, label %.critedge116.thread

bb.am:                                            ; preds = %bb.al
  %i.dm = load ptr, ptr %5, align 8, !tbaa !13    ; 5 uses
  store ptr %i.dm, ptr %10, align 8, !tbaa !13
  %i.dn = load i64, ptr %i.dm, align 8            ; 3 uses
  %i.do = lshr i64 %i.dn, 40
  %i.dp = trunc nuw nsw i64 %i.do to i32
  %i.dq = and i32 %i.dp, 1048575                  ; 3 uses
  %i.dr = icmp samesign ult i32 %i.dq, 1048574
  br i1 %i.dr, label %bb.an, label %bb.ao, !prof !19

bb.an:                                            ; preds = %bb.am
  %i.ds = add nuw nsw i32 %i.dq, 1
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = shl nuw nsw i64 %i.dt, 40
  %i.dv = and i64 %i.dn, -1152920405095219201
  %i.dw = or i64 %i.du, %i.dv
  store i64 %i.dw, ptr %i.dm, align 8
  br label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit185

bb.ao:                                            ; preds = %bb.am
  %i.dx = icmp eq i32 %i.dq, 1048574
  br i1 %i.dx, label %bb.ap, label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit185, !prof !18

bb.ap:                                            ; preds = %bb.ao
  %i.dy = or i64 %i.dn, 1152920405095219200
  store i64 %i.dy, ptr %i.dm, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dm)
          to label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit185 unwind label %.loopexit

_ZN4cvc58internal8TypeNodeC2ERKS1_.exit185:       ; preds = %bb.ao, %bb.an, %bb.ap
  %i.dz = load ptr, ptr %9, align 8, !tbaa !86    ; 9 uses
  store ptr %i.dz, ptr %11, align 8, !tbaa !86
  %i.ea = load i64, ptr %i.dz, align 8            ; 3 uses
  %i.eb = lshr i64 %i.ea, 40
  %i.ec = trunc nuw nsw i64 %i.eb to i32
  %i.ed = and i32 %i.ec, 1048575                  ; 3 uses
  %i.ee = icmp samesign ult i32 %i.ed, 1048574
  br i1 %i.ee, label %bb.aq, label %bb.ar, !prof !19

bb.aq:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit185
  %i.ef = add nuw nsw i32 %i.ed, 1
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = shl nuw nsw i64 %i.eg, 40
  %i.ei = and i64 %i.ea, -1152920405095219201
  %i.ej = or i64 %i.eh, %i.ei
  store i64 %i.ej, ptr %i.dz, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.ar:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit185
  %i.ek = icmp eq i32 %i.ed, 1048574
  br i1 %i.ek, label %bb.as, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !18

bb.as:                                            ; preds = %bb.ar
  %i.el = or i64 %i.ea, 1152920405095219200
  store i64 %i.el, ptr %i.dz, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dz)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit unwind label %bb.bg

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.ar, %bb.aq, %bb.as
  %i.em = invoke noundef zeroext i1 @_ZNK4cvc58internal8TypeNode9isIntegerEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %.noexc187 unwind label %bb.bh

.noexc187:                                        ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  br i1 %i.em, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.noexc187
  %i.en = invoke noundef i32 @_ZN4cvc58internal4kind14operatorToKindEPNS0_4expr9NodeValueE(ptr noundef nonnull %i.dz)
          to label %.noexc188 unwind label %bb.bh

.noexc188:                                        ; preds = %bb.at
  %i.eo = icmp eq i32 %i.en, 40
  br label %bb.au

bb.au:                                            ; preds = %.noexc188, %.noexc187
  %.ph = phi i1 [ false, %.noexc187 ], [ %i.eo, %.noexc188 ]
  %i.ep = load i64, ptr %i.dz, align 8            ; 3 uses
  %i.eq = and i64 %i.ep, 1152920405095219200
  %.not.i.i189 = icmp eq i64 %i.eq, 1152920405095219200
  br i1 %.not.i.i189, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.av, !prof !18

bb.av:                                            ; preds = %bb.au
  %i.er = add i64 %i.ep, 1152920405095219200
  %i.es = and i64 %i.er, 1152920405095219200      ; 2 uses
  %i.et = and i64 %i.ep, -1152920405095219201
  %i.eu = or disjoint i64 %i.es, %i.et
  store i64 %i.eu, ptr %i.dz, align 8
  %i.ev = icmp eq i64 %i.es, 0
  br i1 %i.ev, label %bb.aw, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !18

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dz)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ew = landingpad { ptr, i32 }
          catch ptr null
  %i.ex = extractvalue { ptr, i32 } %i.ew, 0
  call void @__clang_call_terminate(ptr %i.ex) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.au, %bb.av, %bb.aw
  %i.ey = load ptr, ptr %10, align 8, !tbaa !13   ; 3 uses
  %i.ez = load i64, ptr %i.ey, align 8            ; 3 uses
  %i.fa = and i64 %i.ez, 1152920405095219200
  %.not.i.i190 = icmp eq i64 %i.fa, 1152920405095219200
  br i1 %.not.i.i190, label %.critedge116, label %bb.ay, !prof !18

bb.ay:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.fb = add i64 %i.ez, 1152920405095219200
  %i.fc = and i64 %i.fb, 1152920405095219200      ; 2 uses
  %i.fd = and i64 %i.ez, -1152920405095219201
  %i.fe = or disjoint i64 %i.fc, %i.fd
  store i64 %i.fe, ptr %i.ey, align 8
  %i.ff = icmp eq i64 %i.fc, 0
  br i1 %i.ff, label %bb.az, label %.critedge116, !prof !18

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ey)
          to label %.critedge116 unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fg = landingpad { ptr, i32 }
          catch ptr null
  %i.fh = extractvalue { ptr, i32 } %i.fg, 0
  call void @__clang_call_terminate(ptr %i.fh) #24
  unreachable

.critedge116:                                     ; preds = %bb.az, %bb.ay, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  br i1 %.ph, label %bb.bb, label %.critedge116.thread

bb.bb:                                            ; preds = %.critedge116
  %i.fi = load ptr, ptr %4, align 8, !tbaa !12
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !22
  %i.fl = zext i32 %i.fk to i64
  %i.fm = invoke noundef nonnull align 8 dereferenceable(264) ptr @_ZNK4cvc58internal5DTypeixEm(ptr noundef nonnull align 8 dereferenceable(448) %3, i64 noundef %i.fl)
          to label %bb.bc unwind label %bb.bj

bb.bc:                                            ; preds = %bb.bb
  %i.fn = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4cvc58internal16DTypeConstructor7getArgsEv(ptr noundef nonnull align 8 dereferenceable(264) %i.fm)
          to label %bb.bd unwind label %bb.bj     ; 2 uses

bb.bd:                                            ; preds = %bb.bc
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !84 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !84 ; 2 uses
  %.not371465 = icmp eq ptr %i.fo, %i.fq
  br i1 %.not371465, label %.critedge374, label %.lr.ph

bb.be:                                            ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit193
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0347.0466, i64 16 ; 2 uses
  %.not371 = icmp eq ptr %i.fr, %i.fq
  br i1 %.not371, label %.critedge374, label %.lr.ph

bb.bf:                                            ; preds = %bb.ak, %.lr.ph476
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

.loopexit:                                        ; preds = %bb.ap, %bb.br, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %.sroa.17.0468.lcssa481 = phi ptr [ %.sroa.11.0468, %bb.ap ], [ %.sroa.11.0468, %bb.br ], [ %.sroa.17.0470, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

.loopexit.split-lp:                               ; preds = %bb.cm
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.bg:                                            ; preds = %bb.as
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bh:                                            ; preds = %bb.at, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.fu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #22
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh
  %.pn96 = phi { ptr, i32 } [ %i.fu, %bb.bh ], [ %i.ft, %bb.bg ]
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #22
  br label %bb.cy

bb.bj:                                            ; preds = %bb.bc, %bb.bb
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

.lr.ph:                                           ; preds = %bb.bd, %bb.be
  %.sroa.0347.0466 = phi ptr [ %i.fr, %bb.be ], [ %i.fo, %bb.bd ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.fw = load ptr, ptr %.sroa.0347.0466, align 8, !tbaa !88
  invoke void @_ZNK4cvc58internal13DTypeSelector12getRangeTypeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %12, ptr noundef nonnull align 8 dereferenceable(57) %i.fw)
          to label %bb.bk unwind label %bb.bo

bb.bk:                                            ; preds = %.lr.ph
  %i.fx = load ptr, ptr %12, align 8, !tbaa !13   ; 4 uses
  %i.fy = load ptr, ptr %2, align 8, !tbaa !13
  %.not372 = icmp eq ptr %i.fx, %i.fy
  %i.fz = load i64, ptr %i.fx, align 8            ; 3 uses
  %i.ga = and i64 %i.fz, 1152920405095219200
  %.not.i.i192 = icmp eq i64 %i.ga, 1152920405095219200
  br i1 %.not.i.i192, label %_ZN4cvc58internal8TypeNodeD2Ev.exit193, label %bb.bl, !prof !18

bb.bl:                                            ; preds = %bb.bk
  %i.gb = add i64 %i.fz, 1152920405095219200
  %i.gc = and i64 %i.gb, 1152920405095219200      ; 2 uses
  %i.gd = and i64 %i.fz, -1152920405095219201
  %i.ge = or disjoint i64 %i.gc, %i.gd
  store i64 %i.ge, ptr %i.fx, align 8
  %i.gf = icmp eq i64 %i.gc, 0
  br i1 %i.gf, label %bb.bm, label %_ZN4cvc58internal8TypeNodeD2Ev.exit193, !prof !18

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fx)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit193 unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gg = landingpad { ptr, i32 }
          catch ptr null
  %i.gh = extractvalue { ptr, i32 } %i.gg, 0
  call void @__clang_call_terminate(ptr %i.gh) #24
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit193:           ; preds = %bb.bk, %bb.bl, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br i1 %.not372, label %bb.be, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.bo:                                            ; preds = %.lr.ph
  %i.gi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.cy

.critedge374:                                     ; preds = %bb.be, %bb.bd
  %i.gj = load ptr, ptr %4, align 8, !tbaa !12
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %indvars.iv
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !22
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

.critedge116.thread:                              ; preds = %bb.al, %.critedge116
  %i.gm = load ptr, ptr %5, align 8, !tbaa !13    ; 5 uses
  store ptr %i.gm, ptr %13, align 8, !tbaa !13
  %i.gn = load i64, ptr %i.gm, align 8            ; 3 uses
  %i.go = lshr i64 %i.gn, 40
  %i.gp = trunc nuw nsw i64 %i.go to i32
  %i.gq = and i32 %i.gp, 1048575                  ; 3 uses
  %i.gr = icmp samesign ult i32 %i.gq, 1048574
  br i1 %i.gr, label %bb.bp, label %bb.bq, !prof !19

bb.bp:                                            ; preds = %.critedge116.thread
  %i.gs = add nuw nsw i32 %i.gq, 1
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = shl nuw nsw i64 %i.gt, 40
  %i.gv = and i64 %i.gn, -1152920405095219201
  %i.gw = or i64 %i.gu, %i.gv
  store i64 %i.gw, ptr %i.gm, align 8
  br label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit249

bb.bq:                                            ; preds = %.critedge116.thread
  %i.gx = icmp eq i32 %i.gq, 1048574
  br i1 %i.gx, label %bb.br, label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit249, !prof !18

bb.br:                                            ; preds = %bb.bq
  %i.gy = or i64 %i.gn, 1152920405095219200
  store i64 %i.gy, ptr %i.gm, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gm)
          to label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit249 unwind label %.loopexit

_ZN4cvc58internal8TypeNodeC2ERKS1_.exit249:       ; preds = %bb.bq, %bb.bp, %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  invoke void @_ZN4cvc58internal11NodeManager10operatorOfENS0_4kind6Kind_tE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate.86") align 8 %15, ptr noundef nonnull align 8 dereferenceable(3592) %i.a, i32 noundef 40)
          to label %bb.bs unwind label %bb.cp

bb.bs:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit249
  %i.gz = load ptr, ptr %15, align 8, !tbaa !79   ; 8 uses
  store ptr %i.gz, ptr %14, align 8, !tbaa !86
  %i.ha = load i64, ptr %i.gz, align 8            ; 3 uses
  %i.hb = lshr i64 %i.ha, 40
  %i.hc = trunc nuw nsw i64 %i.hb to i32
  %i.hd = and i32 %i.hc, 1048575                  ; 3 uses
  %i.he = icmp samesign ult i32 %i.hd, 1048574
  br i1 %i.he, label %bb.bt, label %bb.bu, !prof !19

bb.bt:                                            ; preds = %bb.bs
  %i.hf = add nuw nsw i32 %i.hd, 1
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = shl nuw nsw i64 %i.hg, 40
  %i.hi = and i64 %i.ha, -1152920405095219201
  %i.hj = or i64 %i.hh, %i.hi
  store i64 %i.hj, ptr %i.gz, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

bb.bu:                                            ; preds = %bb.bs
  %i.hk = icmp eq i32 %i.hd, 1048574
  br i1 %i.hk, label %bb.bv, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit, !prof !18

bb.bv:                                            ; preds = %bb.bu
  %i.hl = or i64 %i.ha, 1152920405095219200
  store i64 %i.hl, ptr %i.gz, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gz)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit unwind label %bb.cq

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit: ; preds = %bb.bu, %bb.bt, %bb.bv
  %i.hm = load ptr, ptr %9, align 8, !tbaa !86    ; 8 uses
  store ptr %i.hm, ptr %16, align 8, !tbaa !86
  %i.hn = load i64, ptr %i.hm, align 8            ; 3 uses
  %i.ho = lshr i64 %i.hn, 40
  %i.hp = trunc nuw nsw i64 %i.ho to i32
  %i.hq = and i32 %i.hp, 1048575                  ; 3 uses
  %i.hr = icmp samesign ult i32 %i.hq, 1048574
  br i1 %i.hr, label %bb.bw, label %bb.bx, !prof !19

bb.bw:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  %i.hs = add nuw nsw i32 %i.hq, 1
  %i.ht = zext nneg i32 %i.hs to i64
  %i.hu = shl nuw nsw i64 %i.ht, 40
  %i.hv = and i64 %i.hn, -1152920405095219201
  %i.hw = or i64 %i.hu, %i.hv
  store i64 %i.hw, ptr %i.hm, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit252

bb.bx:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  %i.hx = icmp eq i32 %i.hq, 1048574
  br i1 %i.hx, label %bb.by, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit252, !prof !18

bb.by:                                            ; preds = %bb.bx
  %i.hy = or i64 %i.hn, 1152920405095219200
  store i64 %i.hy, ptr %i.hm, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hm)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit252 unwind label %bb.cr

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit252: ; preds = %bb.bx, %bb.bw, %bb.by
  %i.hz = invoke noundef zeroext i1 @_ZN4cvc58internal6theory11quantifiers16SygusGrammarNorm11TransfChain4isIdENS0_8TypeNodeENS0_12NodeTemplateILb1EEES7_(ptr noundef nonnull align 8 %13, ptr noundef nonnull align 8 %14, ptr noundef nonnull align 8 %16)
          to label %bb.bz unwind label %bb.cs

bb.bz:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit252
  %i.ia = load i64, ptr %i.hm, align 8            ; 3 uses
  %i.ib = and i64 %i.ia, 1152920405095219200
  %.not.i.i253 = icmp eq i64 %i.ib, 1152920405095219200
  br i1 %.not.i.i253, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit254, label %bb.ca, !prof !18

bb.ca:                                            ; preds = %bb.bz
  %i.ic = add i64 %i.ia, 1152920405095219200
  %i.id = and i64 %i.ic, 1152920405095219200      ; 2 uses
  %i.ie = and i64 %i.ia, -1152920405095219201
  %i.if = or disjoint i64 %i.id, %i.ie
  store i64 %i.if, ptr %i.hm, align 8
  %i.ig = icmp eq i64 %i.id, 0
  br i1 %i.ig, label %bb.cb, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit254, !prof !18

bb.cb:                                            ; preds = %bb.ca
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hm)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit254 unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ih = landingpad { ptr, i32 }
          catch ptr null
  %i.ii = extractvalue { ptr, i32 } %i.ih, 0
  call void @__clang_call_terminate(ptr %i.ii) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit254: ; preds = %bb.bz, %bb.ca, %bb.cb
  %i.ij = load i64, ptr %i.gz, align 8            ; 3 uses
  %i.ik = and i64 %i.ij, 1152920405095219200
  %.not.i.i255 = icmp eq i64 %i.ik, 1152920405095219200
  br i1 %.not.i.i255, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit256, label %bb.cd, !prof !18

bb.cd:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit254
  %i.il = add i64 %i.ij, 1152920405095219200
  %i.im = and i64 %i.il, 1152920405095219200      ; 2 uses
  %i.in = and i64 %i.ij, -1152920405095219201
  %i.io = or disjoint i64 %i.im, %i.in
  store i64 %i.io, ptr %i.gz, align 8
  %i.ip = icmp eq i64 %i.im, 0
  br i1 %i.ip, label %bb.ce, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit256, !prof !18

bb.ce:                                            ; preds = %bb.cd
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gz)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit256 unwind label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.iq = landingpad { ptr, i32 }
          catch ptr null
  %i.ir = extractvalue { ptr, i32 } %i.iq, 0
  call void @__clang_call_terminate(ptr %i.ir) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit256: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit254, %bb.cd, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.is = load ptr, ptr %13, align 8, !tbaa !13   ; 3 uses
  %i.it = load i64, ptr %i.is, align 8            ; 3 uses
  %i.iu = and i64 %i.it, 1152920405095219200
  %.not.i.i257 = icmp eq i64 %i.iu, 1152920405095219200
  br i1 %.not.i.i257, label %_ZN4cvc58internal8TypeNodeD2Ev.exit258, label %bb.cg, !prof !18

bb.cg:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit256
  %i.iv = add i64 %i.it, 1152920405095219200
  %i.iw = and i64 %i.iv, 1152920405095219200      ; 2 uses
  %i.ix = and i64 %i.it, -1152920405095219201
  %i.iy = or disjoint i64 %i.iw, %i.ix
  store i64 %i.iy, ptr %i.is, align 8
  %i.iz = icmp eq i64 %i.iw, 0
  br i1 %i.iz, label %bb.ch, label %_ZN4cvc58internal8TypeNodeD2Ev.exit258, !prof !18

bb.ch:                                            ; preds = %bb.cg
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.is)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit258 unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ja = landingpad { ptr, i32 }
          catch ptr null
  %i.jb = extractvalue { ptr, i32 } %i.ja, 0
  call void @__clang_call_terminate(ptr %i.jb) #24
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit258:           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit256, %bb.cg, %bb.ch
  br i1 %i.hz, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, label %bb.cj

bb.cj:                                            ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit258
  %i.jc = load ptr, ptr %4, align 8, !tbaa !12
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %indvars.iv ; 2 uses
  %.not.i283 = icmp eq ptr %.sroa.17.0470, %.sroa.11.0468
  br i1 %.not.i283, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !22
  store i32 %i.je, ptr %.sroa.17.0470, align 4, !tbaa !22
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.17.0470, i64 4
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.cl:                                            ; preds = %bb.cj
  %i.jg = ptrtoint ptr %.sroa.17.0470 to i64
  %i.jh = ptrtoint ptr %.sroa.0350.0472 to i64
  %i.ji = sub i64 %i.jg, %i.jh                    ; 6 uses
  %i.jj = icmp eq i64 %i.ji, 9223372036854775804
  br i1 %i.jj, label %bb.cm, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.cm:                                            ; preds = %bb.cl
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #26
          to label %.noexc285 unwind label %.loopexit.split-lp

.noexc285:                                        ; preds = %bb.cm
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.cl
  %i.jk = ashr exact i64 %i.ji, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.jk, i64 1)
  %i.jl = add nsw i64 %.sroa.speculated.i.i.i, %i.jk ; 2 uses
  %i.jm = icmp ult i64 %i.jl, %i.jk
  %i.jn = call i64 @llvm.umin.i64(i64 %i.jl, i64 2305843009213693951)
  %i.jo = select i1 %i.jm, i64 2305843009213693951, i64 %i.jn ; 3 uses
  %.not.i.i.i284 = icmp ne i64 %i.jo, 0
  call void @llvm.assume(i1 %.not.i.i.i284)
  %i.jp = shl nuw nsw i64 %i.jo, 2
  %i.jq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jp) #23
          to label %.noexc286 unwind label %.loopexit ; 4 uses

.noexc286:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.jr = getelementptr inbounds i8, ptr %i.jq, i64 %i.ji ; 2 uses
  %i.js = load i32, ptr %i.jd, align 4, !tbaa !22
  store i32 %i.js, ptr %i.jr, align 4, !tbaa !22
  %i.jt = icmp sgt i64 %i.ji, 0
  br i1 %i.jt, label %bb.cn, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.cn:                                            ; preds = %.noexc286
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jq, ptr align 4 %.sroa.0350.0472, i64 %i.ji, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.cn, %.noexc286
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jr, i64 4
  %.not.i17.i.i = icmp eq ptr %.sroa.0350.0472, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.co

bb.co:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0350.0472, i64 noundef %i.ji) #25
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.co, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %i.jo
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.cp:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit249
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.cq:                                            ; preds = %bb.bv
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.cr:                                            ; preds = %bb.by
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.cs:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit252
  %i.jz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #22
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.pn98 = phi { ptr, i32 } [ %i.jz, %bb.cs ], [ %i.jy, %bb.cr ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #22
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cq, %bb.ct, %bb.cp
  %.pn98.pn.pn = phi { ptr, i32 } [ %i.jw, %bb.cp ], [ %.pn98, %bb.ct ], [ %i.jx, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #22
  br label %bb.cy

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit193, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.ck, %_ZN4cvc58internal8TypeNodeD2Ev.exit258, %.critedge374
  %.sroa.11.1.a = phi ptr [ %.sroa.11.0468, %.critedge374 ], [ %.sroa.11.0468, %bb.ck ], [ %.sroa.11.0468, %_ZN4cvc58internal8TypeNodeD2Ev.exit258 ], [ %i.jv, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.11.0468, %_ZN4cvc58internal8TypeNodeD2Ev.exit193 ] ; 2 uses
  %.sroa.17.1 = phi ptr [ %.sroa.17.0470, %.critedge374 ], [ %i.jf, %bb.ck ], [ %.sroa.17.0470, %_ZN4cvc58internal8TypeNodeD2Ev.exit258 ], [ %i.ju, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.17.0470, %_ZN4cvc58internal8TypeNodeD2Ev.exit193 ] ; 2 uses
  %.sroa.0350.1 = phi ptr [ %.sroa.0350.0472, %.critedge374 ], [ %.sroa.0350.0472, %bb.ck ], [ %.sroa.0350.0472, %_ZN4cvc58internal8TypeNodeD2Ev.exit258 ], [ %i.jq, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.0350.0472, %_ZN4cvc58internal8TypeNodeD2Ev.exit193 ] ; 2 uses
  %.255 = phi i32 [ %i.gl, %.critedge374 ], [ %.053474, %bb.ck ], [ %.053474, %_ZN4cvc58internal8TypeNodeD2Ev.exit258 ], [ %.053474, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.053474, %_ZN4cvc58internal8TypeNodeD2Ev.exit193 ] ; 2 uses
  %i.ka = load ptr, ptr %9, align 8, !tbaa !86    ; 3 uses
  %i.kb = load i64, ptr %i.ka, align 8            ; 3 uses
  %i.kc = and i64 %i.kb, 1152920405095219200
  %.not.i.i287 = icmp eq i64 %i.kc, 1152920405095219200
  br i1 %.not.i.i287, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit288, label %bb.cv, !prof !18

bb.cv:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %i.kd = add i64 %i.kb, 1152920405095219200
  %i.ke = and i64 %i.kd, 1152920405095219200      ; 2 uses
  %i.kf = and i64 %i.kb, -1152920405095219201
  %i.kg = or disjoint i64 %i.ke, %i.kf
  store i64 %i.kg, ptr %i.ka, align 8
  %i.kh = icmp eq i64 %i.ke, 0
  br i1 %i.kh, label %bb.cw, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit288, !prof !18

bb.cw:                                            ; preds = %bb.cv
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ka)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit288 unwind label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ki = landingpad { ptr, i32 }
          catch ptr null
  %i.kj = extractvalue { ptr, i32 } %i.ki, 0
  call void @__clang_call_terminate(ptr %i.kj) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit288: ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, %bb.cv, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph476, !llvm.loop !368

bb.cy:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.bj, %bb.bo, %bb.bi, %bb.cu
  %.sroa.17.0468500 = phi ptr [ %.sroa.11.0468, %bb.bi ], [ %.sroa.11.0468, %bb.bo ], [ %.sroa.11.0468, %bb.bj ], [ %.sroa.11.0468, %bb.cu ], [ %.sroa.17.0468.lcssa481, %.loopexit ], [ %.sroa.17.0470, %.loopexit.split-lp ]
  %.pn106.pn = phi { ptr, i32 } [ %.pn96, %bb.bi ], [ %i.gi, %bb.bo ], [ %i.fv, %bb.bj ], [ %.pn98.pn.pn, %bb.cu ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #22
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.bf
  %.sroa.17.0468499 = phi ptr [ %.sroa.17.0468500, %bb.cy ], [ %.sroa.11.0468, %bb.bf ]
  %.pn106.pn.pn = phi { ptr, i32 } [ %.pn106.pn, %bb.cy ], [ %i.fs, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.dl

bb.da:                                            ; preds = %._crit_edge
  %i.kk = zext i32 %.053.lcssa to i64
  %.not = icmp eq i64 %i.da, %i.kk
  %i.kl = icmp eq ptr %.sroa.0350.0.lcssa, %.sroa.17.0.lcssa
  %or.cond = select i1 %.not, i1 true, i1 %i.kl
  br i1 %or.cond, label %bb.dj, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.km = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #23
          to label %bb.dc unwind label %bb.dh     ; 7 uses

bb.dc:                                            ; preds = %bb.db
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4cvc58internal6theory11quantifiers16SygusGrammarNorm11TransfChainE, i64 16), ptr %i.km, align 8, !tbaa !20
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  store i32 %.053.lcssa, ptr %i.kn, align 8, !tbaa !369
  %i.ko = getelementptr inbounds nuw i8, ptr %i.km, i64 16 ; 2 uses
  %i.kp = ptrtoint ptr %.sroa.17.0.lcssa to i64
  %i.kq = ptrtoint ptr %.sroa.0350.0.lcssa to i64
  %i.kr = sub i64 %i.kp, %i.kq                    ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ko, i8 0, i64 24, i1 false)
  %i.ks = icmp ugt i64 %i.kr, 9223372036854775804
  br i1 %i.ks, label %.noexc.i.i.i294, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i293, !prof !18

.noexc.i.i.i294:                                  ; preds = %bb.dc
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc295 unwind label %bb.di, !inline_history !375

.noexc295:                                        ; preds = %.noexc.i.i.i294
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i293: ; preds = %bb.dc
  %i.kt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kr) #23
          to label %.noexc4.i unwind label %bb.di, !inline_history !375 ; 5 uses

.noexc4.i:                                        ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i293
  store ptr %i.kt, ptr %i.ko, align 8, !tbaa !12
  %i.ku = getelementptr inbounds nuw i8, ptr %i.km, i64 24 ; 2 uses
  store ptr %i.kt, ptr %i.ku, align 8, !tbaa !8
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.kr ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.km, i64 32
  store ptr %i.kv, ptr %i.kw, align 8, !tbaa !99
  %i.kx = icmp samesign ugt i64 %i.kr, 4
  br i1 %i.kx, label %bb.dd, label %bb.de, !prof !19

bb.dd:                                            ; preds = %.noexc4.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.kt, ptr align 4 %.sroa.0350.0.lcssa, i64 %i.kr, i1 false)
  br label %bb.dg

bb.de:                                            ; preds = %.noexc4.i
  %i.ky = icmp eq i64 %i.kr, 4
  br i1 %i.ky, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.kz = load i32, ptr %.sroa.0350.0.lcssa, align 4, !tbaa !22
  store i32 %i.kz, ptr %i.kt, align 4, !tbaa !22
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de, %bb.dd
  store ptr %i.kv, ptr %i.ku, align 8, !tbaa !8
  br label %bb.dj

bb.dh:                                            ; preds = %bb.db, %._crit_edge
  %i.la = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.di:                                            ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i293, %.noexc.i.i.i294
  %i.lb = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.km, i64 noundef 40) #25
  br label %bb.dl

bb.dj:                                            ; preds = %bb.da, %bb.dg
  %storemerge = phi ptr [ %i.km, %bb.dg ], [ null, %bb.da ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !361
  %.not.i.i.i297 = icmp eq ptr %.sroa.0350.0.lcssa, null
  br i1 %.not.i.i.i297, label %_ZNSt6vectorIjSaIjEED2Ev.exit298, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.lc = ptrtoint ptr %.sroa.11.0.lcssa.a to i64
  %i.ld = ptrtoint ptr %.sroa.0350.0.lcssa to i64
  %i.le = sub i64 %i.lc, %i.ld
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0350.0.lcssa, i64 noundef %i.le) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit298

bb.dl:                                            ; preds = %bb.di, %bb.dh, %bb.cz
  %.sroa.17.0440 = phi ptr [ %.sroa.17.0468499, %bb.cz ], [ %.sroa.11.0.lcssa.a, %bb.di ], [ %.sroa.11.0.lcssa.a, %bb.dh ]
  %.sroa.0350.0415 = phi ptr [ %.sroa.0350.0472, %bb.cz ], [ %.sroa.0350.0.lcssa, %bb.di ], [ %.sroa.0350.0.lcssa, %bb.dh ] ; 3 uses
  %.pn106.pn.pn.pn = phi { ptr, i32 } [ %.pn106.pn.pn, %bb.cz ], [ %i.lb, %bb.di ], [ %i.la, %bb.dh ] ; 2 uses
  %.not.i.i.i299 = icmp eq ptr %.sroa.0350.0415, null
  br i1 %.not.i.i.i299, label %_ZNSt6vectorIjSaIjEED2Ev.exit300, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.lf = ptrtoint ptr %.sroa.17.0440 to i64
  %i.lg = ptrtoint ptr %.sroa.0350.0415 to i64
  %i.lh = sub i64 %i.lf, %i.lg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0350.0415, i64 noundef %i.lh) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit300

_ZNSt6vectorIjSaIjEED2Ev.exit298:                 ; preds = %bb.dk, %bb.dj, %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.ag
  %i.li = load ptr, ptr %5, align 8, !tbaa !13    ; 3 uses
  %i.lj = load i64, ptr %i.li, align 8            ; 3 uses
  %i.lk = and i64 %i.lj, 1152920405095219200
  %.not.i.i301 = icmp eq i64 %i.lk, 1152920405095219200
  br i1 %.not.i.i301, label %_ZN4cvc58internal8TypeNodeD2Ev.exit302, label %bb.dn, !prof !18

bb.dn:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit298
  %i.ll = add i64 %i.lj, 1152920405095219200
  %i.lm = and i64 %i.ll, 1152920405095219200      ; 2 uses
  %i.ln = and i64 %i.lj, -1152920405095219201
  %i.lo = or disjoint i64 %i.lm, %i.ln
  store i64 %i.lo, ptr %i.li, align 8
  %i.lp = icmp eq i64 %i.lm, 0
  br i1 %i.lp, label %bb.do, label %_ZN4cvc58internal8TypeNodeD2Ev.exit302, !prof !18

bb.do:                                            ; preds = %bb.dn
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.li)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit302 unwind label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.lq = landingpad { ptr, i32 }
          catch ptr null
  %i.lr = extractvalue { ptr, i32 } %i.lq, 0
  call void @__clang_call_terminate(ptr %i.lr) #24
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit302:           ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit298, %bb.dn, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void

_ZNSt6vectorIjSaIjEED2Ev.exit300:                 ; preds = %bb.dm, %bb.dl, %bb.aj, %bb.ac, %bb.t
  %.pn106.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn106.pn.pn.pn, %bb.dm ], [ %i.bt, %bb.t ], [ %.pn92.pn.pn, %bb.ac ], [ %i.db, %bb.aj ], [ %.pn106.pn.pn.pn, %bb.dl ]
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
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !376  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt3mapIjN4cvc58internal12NodeTemplateILb1EEESt4lessIjESaISt4pairIKjS3_EEED2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !378
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
