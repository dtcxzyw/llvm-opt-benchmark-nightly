inline.NumInlined: 5824
inline.NumDeleted: 2063
begin_hunk_0_@_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_backrefEm:bb.a
  store i64 -1, ptr %i.k, align 8, !tbaa !237
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i64 %1, ptr %i.l, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false), !tbaa.struct !273
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !275  ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !276
  %.not.i.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  %i.r = load i32, ptr %3, align 8, !tbaa !258
  %i.s = icmp eq i32 %i.r, 11
  br i1 %i.s, label %bb.h, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i8 0, i64 24, i1 false)
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !277
  store ptr %i.w, ptr %i.u, align 8, !tbaa !277
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !280  ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false)
  store ptr %i.y, ptr %i.z, align 8, !tbaa !280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i:       ; preds = %bb.i, %bb.h, %bb.g
  %i.ab = load ptr, ptr %i.n, align 8, !tbaa !275
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 2 uses
  store ptr %i.ac, ptr %i.n, align 8, !tbaa !275
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.j:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr %i.o, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.j
  %.pre.i = load ptr, ptr %i.n, align 8, !tbaa !275
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i
  %i.ad = phi ptr [ %i.ac, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !234
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = sdiv exact i64 %i.ah, 48                ; 2 uses
  %i.aj = icmp ugt i64 %i.ai, 100000
  br i1 %i.aj, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.50) #31
          to label %.noexc9 unwind label %bb.t

.noexc9:                                          ; preds = %bb.k
  unreachable

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.sroa.012.017 = phi ptr [ %i.i, %bb.f ], [ %i.f, %bb.e ] ; 2 uses
  %i.ak = load i64, ptr %.sroa.012.017, align 8, !tbaa !74
  %i.al = icmp eq i64 %1, %i.ak
  br i1 %i.al, label %bb.l, label %bb.f

bb.l:                                             ; preds = %.lr.ph
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 3, ptr noundef nonnull @.str.53) #31
  unreachable

bb.m:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.am = load i32, ptr %3, align 8, !tbaa !258
  %i.an = icmp eq i32 %i.am, 11
  br i1 %i.an, label %bb.n, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !280 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ar = invoke noundef zeroext i1 %i.ap(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #32
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.m, %bb.n, %bb.o
  %i.au = load i32, ptr %2, align 8, !tbaa !258
  %i.av = icmp eq i32 %i.au, 11
  br i1 %i.av, label %bb.q, label %_ZNSt8__detail6_StateIcED2Ev.exit11

bb.q:                                             ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !280 ; 2 uses
  %.not.i.i10 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i10, label %_ZNSt8__detail6_StateIcED2Ev.exit11, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = invoke noundef zeroext i1 %i.ax(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit11 unwind label %bb.s ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #32
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit11:              ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit, %bb.q, %bb.r
  %i.bb = add nsw i64 %i.ai, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret i64 %i.bb

bb.t:                                             ; preds = %bb.k, %bb.j
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #30
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %i.bc
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE16_M_cur_int_valueEi(ptr noundef nonnull align 8 dereferenceable(400) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.d = load i64, ptr %i.c, align 8, !tbaa !67   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  %.not12 = icmp samesign eq i64 %i.d, 0
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 384
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.o, %bb.e ]
  ret i32 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.014 = phi i32 [ 0, %.lr.ph ], [ %i.o, %bb.e ]
  %.sroa.08.013 = phi ptr [ %i.b, %.lr.ph ], [ %i.p, %bb.e ] ; 2 uses
  %i.g = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.014, i32 %1) ; 2 uses
  %i.h = extractvalue { i32, i1 } %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = extractvalue { i32, i1 } %i.g, 0
  %i.j = load i8, ptr %.sroa.08.013, align 1, !tbaa !24
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !382, !nonnull !166, !align !167
  %i.l = tail call noundef i32 @_ZNKSt7__cxx1112regex_traitsIcE5valueEci(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef signext %i.j, i32 noundef %1)
  %i.m = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.i, i32 %i.l) ; 2 uses
  %i.n = extractvalue { i32, i1 } %i.m, 1
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 3, ptr noundef nonnull @.str.54) #31
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = extractvalue { i32, i1 } %i.m, 0         ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.p, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE33_M_insert_character_class_matcherILb0ELb0EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::__detail::_BracketMatcher", align 16 ; 22 uses
  %2 = alloca %"class.std::__detail::_StateSeq", align 8 ; 8 uses
  %3 = alloca %"class.std::function", align 8     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !442, !nonnull !166, !align !167
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69   ; 3 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !322
  %i.h = zext i8 %i.e to i64
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !382, !nonnull !166, !align !167 ; 2 uses
  %.shift = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %4 = load i8, ptr %.shift, align 1, !tbaa !328
  %i.l = and i8 %4, 1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(152) %1, i8 0, i64 99, i1 false)
  store ptr %i.k, ptr %i.m, align 8, !tbaa !218
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i8 %i.l, ptr %i.n, align 16, !tbaa !443
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i8 0, i64 32, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.q = load i64, ptr %i.p, align 8, !tbaa !67
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.q
  %i.s = invoke i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull %i.d, ptr noundef nonnull %i.r, i1 noundef zeroext false)
          to label %.noexc unwind label %bb.o     ; 3 uses

.noexc:                                           ; preds = %bb.a
  %i.t = and i32 %i.s, 131071
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 0, ptr noundef nonnull @.str.56) #31
          to label %.noexc6 unwind label %bb.o

.noexc6:                                          ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.noexc
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %.sroa.04.0.insert.ext.i = lshr i32 %i.s, 16
  %i.w = load i16, ptr %i.v, align 16, !tbaa !467
  %i.x = trunc i32 %i.s to i16
  %i.y = or i16 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 98
  %i.aa = load i8, ptr %i.z, align 2, !tbaa !468
  %i.ab = trunc i32 %.sroa.04.0.insert.ext.i to i8
  %i.ac = or i8 %i.aa, %i.ab
  %.sroa.2.0.insert.ext.i.i.i = zext i8 %i.ac to i32
  %.sroa.2.0.insert.shift.i.i.i = shl nuw nsw i32 %.sroa.2.0.insert.ext.i.i.i, 16
  %.sroa.0.0.insert.ext.i.i.i = zext i16 %i.y to i32
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i32 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  %i.ad = trunc nuw i32 %.sroa.0.0.insert.insert.i.i.i to i24
  store i24 %i.ad, ptr %i.v, align 16
  invoke void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE8_M_readyEv(ptr noundef nonnull align 8 dereferenceable(152) %1)
          to label %bb.d unwind label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !217 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.ai = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #28
          to label %bb.e unwind label %bb.p       ; 10 uses

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ak = load <2 x ptr>, ptr %1, align 16, !tbaa !48
  store <2 x ptr> %i.ak, ptr %i.ai, align 8, !tbaa !48
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 16, !tbaa !469
  store ptr %i.an, ptr %i.al, align 8, !tbaa !469
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(152) %1, i8 0, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ar = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !470
  store <2 x ptr> %i.ar, ptr %i.ao, align 8, !tbaa !470
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !471
  store ptr %i.au, ptr %i.as, align 8, !tbaa !471
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.ax = load <2 x ptr>, ptr %i.aw, align 16, !tbaa !472
  store <2 x ptr> %i.ax, ptr %i.av, align 8, !tbaa !472
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 16, !tbaa !473
  store ptr %i.ba, ptr %i.ay, align 8, !tbaa !473
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.bd = load <2 x ptr>, ptr %i.bc, align 8, !tbaa !474
  store <2 x ptr> %i.bd, ptr %i.bb, align 8, !tbaa !474
  %i.be = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !475
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !475
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i8 0, i64 24, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ai, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bh, ptr noundef nonnull align 16 dereferenceable(56) %i.v, i64 56, i1 false)
  store ptr %i.ai, ptr %3, align 8, !tbaa !476
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EEEE9_M_invokeERKSt9_Any_dataOc, ptr %i.aj, align 8, !tbaa !277
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr %i.ah, align 8, !tbaa !280
  %i.bi = invoke noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_matcherESt8functionIFbcEE(ptr noundef nonnull align 8 dereferenceable(88) %i.ag, ptr noundef nonnull %3)
          to label %bb.f unwind label %bb.q       ; 2 uses

bb.f:                                             ; preds = %bb.e
  store ptr %i.ag, ptr %2, align 8, !tbaa !286
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !294
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.bi, ptr %i.bk, align 8, !tbaa !296
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !256 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !297
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -24
  %.not.i.i.i = icmp eq ptr %i.bm, %i.bp
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !298
  %i.bq = load ptr, ptr %i.bl, align 8, !tbaa !256
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  store ptr %i.br, ptr %i.bl, align 8, !tbaa !256
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

bb.h:                                             ; preds = %bb.f
  invoke void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit unwind label %bb.q

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit: ; preds = %bb.g, %bb.h
  %i.bs = load ptr, ptr %i.ah, align 8, !tbaa !280 ; 2 uses
  %.not.i = icmp eq ptr %i.bs, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit
  %i.bt = invoke noundef zeroext i1 %i.bs(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #32
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.bw = load ptr, ptr %i.bc, align 8, !tbaa !478 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.bx = load ptr, ptr %i.bf, align 8, !tbaa !475
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bw to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.ca) #29
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit.i: ; preds = %bb.k, %_ZNSt14_Function_baseD2Ev.exit
  %i.cb = load ptr, ptr %i.aw, align 16, !tbaa !479 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit.i
  %i.cc = load ptr, ptr %i.az, align 16, !tbaa !473
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.cb to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.cf) #29
  br label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit.i

_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit.i:      ; preds = %bb.l, %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit.i
  %i.cg = load ptr, ptr %i.ap, align 8, !tbaa !480 ; 3 uses
  %i.ch = load ptr, ptr %i.aq, align 16, !tbaa !481 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cg, %i.ch
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cn, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.cg, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit.i ] ; 3 uses
  %i.ci = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !69 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !24
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.cn, %i.ch
  br i1 %.not.i.i.i2.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !482

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.ap, align 8, !tbaa !480
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit.i
  %i.co = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.cg, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.cp = load ptr, ptr %i.at, align 8, !tbaa !471
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.co to i64
  %i.cs = sub i64 %i.cq, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.cs) #29
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.m, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.ct = load ptr, ptr %1, align 16, !tbaa !483  ; 3 uses
  %.not.i.i.i3.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i3.i, label %_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.cu = load ptr, ptr %i.am, align 16, !tbaa !469
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = ptrtoint ptr %i.ct to i64
  %i.cx = sub i64 %i.cv, %i.cw
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.cx) #29
  br label %_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EED2Ev.exit

_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret void

bb.o:                                             ; preds = %bb.b, %bb.a, %bb.c
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.p:                                             ; preds = %bb.d
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit10

bb.q:                                             ; preds = %bb.h, %bb.e
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.db = load ptr, ptr %i.ah, align 8, !tbaa !280 ; 2 uses
  %.not.i9 = icmp eq ptr %i.db, null
  br i1 %.not.i9, label %_ZNSt14_Function_baseD2Ev.exit10, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dc = invoke noundef zeroext i1 %i.db(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit10 unwind label %bb.s ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  %i.de = extractvalue { ptr, i32 } %i.dd, 0
  call void @__clang_call_terminate(ptr %i.de) #32
  unreachable

_ZNSt14_Function_baseD2Ev.exit10:                 ; preds = %bb.r, %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.cz, %bb.p ], [ %i.da, %bb.q ], [ %i.da, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit10, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt14_Function_baseD2Ev.exit10 ], [ %i.cy, %bb.o ]
  call void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE33_M_insert_character_class_matcherILb0ELb1EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::__detail::_BracketMatcher.95", align 16 ; 21 uses
  %2 = alloca %"class.std::__detail::_StateSeq", align 8 ; 8 uses
  %3 = alloca %"class.std::function", align 8     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !442, !nonnull !166, !align !167
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69   ; 3 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !322
  %i.h = zext i8 %i.e to i64
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !382, !nonnull !166, !align !167 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %1, i8 0, i64 99, i1 false)
  store ptr %i.k, ptr %i.l, align 8, !tbaa !218
  %.shift = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %4 = load i8, ptr %.shift, align 1, !tbaa !328
  %i.m = and i8 %4, 1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr %i.k, ptr %i.n, align 16, !tbaa !218
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i8 %i.m, ptr %i.o, align 8, !tbaa !484
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i8 0, i64 32, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.r = load i64, ptr %i.q, align 8, !tbaa !67
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.r
  %i.t = invoke i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull %i.d, ptr noundef nonnull %i.s, i1 noundef zeroext false)
          to label %.noexc unwind label %bb.k     ; 2 uses

.noexc:                                           ; preds = %bb.a
  %i.u = and i32 %i.t, 131071
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 0, ptr noundef nonnull @.str.56) #31
          to label %.noexc6 unwind label %bb.k

.noexc6:                                          ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.noexc
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.x = trunc i32 %i.t to i24
  store i24 %i.x, ptr %i.w, align 16
  invoke void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EE8_M_readyEv(ptr noundef nonnull align 8 dereferenceable(160) %1)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !217 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.ac = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #28
          to label %bb.e unwind label %bb.l       ; 10 uses

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ae = load <2 x ptr>, ptr %1, align 16, !tbaa !48
  store <2 x ptr> %i.ae, ptr %i.ac, align 8, !tbaa !48
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 16, !tbaa !469
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !469
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %1, i8 0, i64 24, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ak = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !470
  store <2 x ptr> %i.ak, ptr %i.ai, align 8, !tbaa !470
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !471
  store ptr %i.an, ptr %i.al, align 8, !tbaa !471
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.aq = load <2 x ptr>, ptr %i.ap, align 16, !tbaa !493
  store <2 x ptr> %i.aq, ptr %i.ao, align 8, !tbaa !493
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.at = load ptr, ptr %i.as, align 16, !tbaa !494
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !494
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.aw = load <2 x ptr>, ptr %i.av, align 8, !tbaa !474
  store <2 x ptr> %i.aw, ptr %i.au, align 8, !tbaa !474
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !475
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !475
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ba, ptr noundef nonnull align 8 dereferenceable(64) %i.w, i64 64, i1 false)
  store ptr %i.ac, ptr %3, align 8, !tbaa !495
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE9_M_invokeERKSt9_Any_dataOc, ptr %i.ad, align 8, !tbaa !277
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr %i.ab, align 8, !tbaa !280
  %i.bb = invoke noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_matcherESt8functionIFbcEE(ptr noundef nonnull align 8 dereferenceable(88) %i.aa, ptr noundef nonnull %3)
          to label %bb.f unwind label %bb.m       ; 2 uses

bb.f:                                             ; preds = %bb.e
  store ptr %i.aa, ptr %2, align 8, !tbaa !286
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !294
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !296
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !256 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !297
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -24
  %.not.i.i.i = icmp eq ptr %i.bf, %i.bi
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !298
  %i.bj = load ptr, ptr %i.be, align 8, !tbaa !256
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store ptr %i.bk, ptr %i.be, align 8, !tbaa !256
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

bb.h:                                             ; preds = %bb.f
  invoke void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit unwind label %bb.m

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit: ; preds = %bb.g, %bb.h
  %i.bl = load ptr, ptr %i.ab, align 8, !tbaa !280 ; 2 uses
  %.not.i = icmp eq ptr %i.bl, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit
  %i.bm = invoke noundef zeroext i1 %i.bl(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #32
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret void

bb.k:                                             ; preds = %bb.b, %bb.a, %bb.c
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.l:                                             ; preds = %bb.d
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit10

bb.m:                                             ; preds = %bb.h, %bb.e
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bs = load ptr, ptr %i.ab, align 8, !tbaa !280 ; 2 uses
  %.not.i9 = icmp eq ptr %i.bs, null
  br i1 %.not.i9, label %_ZNSt14_Function_baseD2Ev.exit10, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bt = invoke noundef zeroext i1 %i.bs(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit10 unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #32
  unreachable

_ZNSt14_Function_baseD2Ev.exit10:                 ; preds = %bb.n, %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.bq, %bb.l ], [ %i.br, %bb.m ], [ %i.br, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit10, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt14_Function_baseD2Ev.exit10 ], [ %i.bp, %bb.k ]
  call void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE33_M_insert_character_class_matcherILb1ELb0EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::__detail::_BracketMatcher.107", align 16 ; 23 uses
  %2 = alloca %"class.std::__detail::_StateSeq", align 8 ; 8 uses
  %3 = alloca %"class.std::function", align 8     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !442, !nonnull !166, !align !167
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69   ; 3 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !322
  %i.h = zext i8 %i.e to i64
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !382, !nonnull !166, !align !167 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %1, i8 0, i64 99, i1 false)
  store ptr %i.k, ptr %i.l, align 8, !tbaa !218
  %.shift = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %4 = load i8, ptr %.shift, align 1, !tbaa !328
  %i.m = and i8 %4, 1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr %i.k, ptr %i.n, align 16, !tbaa !218
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i8 %i.m, ptr %i.o, align 8, !tbaa !497
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.p, i8 0, i64 32, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.r = load i64, ptr %i.q, align 8, !tbaa !67
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.r
  %i.t = invoke i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull %i.d, ptr noundef nonnull %i.s, i1 noundef zeroext true)
          to label %.noexc unwind label %bb.o     ; 3 uses

.noexc:                                           ; preds = %bb.a
  %i.u = and i32 %i.t, 131071
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 0, ptr noundef nonnull @.str.56) #31
          to label %.noexc6 unwind label %bb.o

.noexc6:                                          ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.noexc
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %.sroa.04.0.insert.ext.i = lshr i32 %i.t, 16
  %i.x = load i16, ptr %i.w, align 16, !tbaa !467
  %i.y = trunc i32 %i.t to i16
  %i.z = or i16 %i.x, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 98
  %i.ab = load i8, ptr %i.aa, align 2, !tbaa !468
  %i.ac = trunc i32 %.sroa.04.0.insert.ext.i to i8
  %i.ad = or i8 %i.ab, %i.ac
  %.sroa.2.0.insert.ext.i.i.i = zext i8 %i.ad to i32
  %.sroa.2.0.insert.shift.i.i.i = shl nuw nsw i32 %.sroa.2.0.insert.ext.i.i.i, 16
  %.sroa.0.0.insert.ext.i.i.i = zext i16 %i.z to i32
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i32 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  %i.ae = trunc nuw i32 %.sroa.0.0.insert.insert.i.i.i to i24
  store i24 %i.ae, ptr %i.w, align 16
  invoke void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EE8_M_readyEv(ptr noundef nonnull align 8 dereferenceable(160) %1)
          to label %bb.d unwind label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !217 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.aj = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #28
          to label %bb.e unwind label %bb.p       ; 10 uses

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.al = load <2 x ptr>, ptr %1, align 16, !tbaa !48
  store <2 x ptr> %i.al, ptr %i.aj, align 8, !tbaa !48
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 16, !tbaa !469
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !469
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %1, i8 0, i64 24, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.as = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !470
  store <2 x ptr> %i.as, ptr %i.ap, align 8, !tbaa !470
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !471
  store ptr %i.av, ptr %i.at, align 8, !tbaa !471
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i8 0, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.ay = load <2 x ptr>, ptr %i.ax, align 16, !tbaa !472
  store <2 x ptr> %i.ay, ptr %i.aw, align 8, !tbaa !472
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 16, !tbaa !473
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !473
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ax, i8 0, i64 24, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.be = load <2 x ptr>, ptr %i.bd, align 8, !tbaa !474
  store <2 x ptr> %i.be, ptr %i.bc, align 8, !tbaa !474
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !475
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !475
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i8 0, i64 24, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aj, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bi, ptr noundef nonnull align 16 dereferenceable(64) %i.w, i64 64, i1 false)
  store ptr %i.aj, ptr %3, align 8, !tbaa !501
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EEEE9_M_invokeERKSt9_Any_dataOc, ptr %i.ak, align 8, !tbaa !277
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr %i.ai, align 8, !tbaa !280
  %i.bj = invoke noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_matcherESt8functionIFbcEE(ptr noundef nonnull align 8 dereferenceable(88) %i.ah, ptr noundef nonnull %3)
          to label %bb.f unwind label %bb.q       ; 2 uses

bb.f:                                             ; preds = %bb.e
  store ptr %i.ah, ptr %2, align 8, !tbaa !286
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !294
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.bj, ptr %i.bl, align 8, !tbaa !296
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !256 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !297
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -24
  %.not.i.i.i = icmp eq ptr %i.bn, %i.bq
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !298
  %i.br = load ptr, ptr %i.bm, align 8, !tbaa !256
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  store ptr %i.bs, ptr %i.bm, align 8, !tbaa !256
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

bb.h:                                             ; preds = %bb.f
  invoke void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit unwind label %bb.q

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit: ; preds = %bb.g, %bb.h
  %i.bt = load ptr, ptr %i.ai, align 8, !tbaa !280 ; 2 uses
  %.not.i = icmp eq ptr %i.bt, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit
  %i.bu = invoke noundef zeroext i1 %i.bt(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #32
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.bx = load ptr, ptr %i.bd, align 8, !tbaa !478 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.by = load ptr, ptr %i.bg, align 8, !tbaa !475
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bx to i64
  %i.cb = sub i64 %i.bz, %i.ca
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cb) #29
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit.i: ; preds = %bb.k, %_ZNSt14_Function_baseD2Ev.exit
  %i.cc = load ptr, ptr %i.ax, align 16, !tbaa !479 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit.i
  %i.cd = load ptr, ptr %i.ba, align 16, !tbaa !473
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cc to i64
  %i.cg = sub i64 %i.ce, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.cg) #29
  br label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit.i

_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit.i:      ; preds = %bb.l, %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EED2Ev.exit.i
  %i.ch = load ptr, ptr %i.aq, align 8, !tbaa !480 ; 3 uses
  %i.ci = load ptr, ptr %i.ar, align 16, !tbaa !481 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ch, %i.ci
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.co, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.ch, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit.i ] ; 3 uses
  %i.cj = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !69 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !24
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.co, %i.ci
  br i1 %.not.i.i.i2.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !482

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.aq, align 8, !tbaa !480
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit.i
  %i.cp = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.ch, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.cq = load ptr, ptr %i.au, align 8, !tbaa !471
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = ptrtoint ptr %i.cp to i64
  %i.ct = sub i64 %i.cr, %i.cs
  call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef %i.ct) #29
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.m, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.cu = load ptr, ptr %1, align 16, !tbaa !483  ; 3 uses
  %.not.i.i.i3.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i3.i, label %_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.cv = load ptr, ptr %i.an, align 16, !tbaa !469
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %i.cu to i64
  %i.cy = sub i64 %i.cw, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef %i.cy) #29
  br label %_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EED2Ev.exit

_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret void

bb.o:                                             ; preds = %bb.b, %bb.a, %bb.c
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.p:                                             ; preds = %bb.d
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit10

bb.q:                                             ; preds = %bb.h, %bb.e
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dc = load ptr, ptr %i.ai, align 8, !tbaa !280 ; 2 uses
  %.not.i9 = icmp eq ptr %i.dc, null
  br i1 %.not.i9, label %_ZNSt14_Function_baseD2Ev.exit10, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dd = invoke noundef zeroext i1 %i.dc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit10 unwind label %bb.s ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.de = landingpad { ptr, i32 }
          catch ptr null
  %i.df = extractvalue { ptr, i32 } %i.de, 0
  call void @__clang_call_terminate(ptr %i.df) #32
  unreachable

_ZNSt14_Function_baseD2Ev.exit10:                 ; preds = %bb.r, %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.da, %bb.p ], [ %i.db, %bb.q ], [ %i.db, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit10, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt14_Function_baseD2Ev.exit10 ], [ %i.cz, %bb.o ]
  call void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE33_M_insert_character_class_matcherILb1ELb1EEEvv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::__detail::_BracketMatcher.110", align 16 ; 21 uses
  %2 = alloca %"class.std::__detail::_StateSeq", align 8 ; 8 uses
  %3 = alloca %"class.std::function", align 8     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !442, !nonnull !166, !align !167
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69   ; 3 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !322
  %i.h = zext i8 %i.e to i64
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !382, !nonnull !166, !align !167 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %1, i8 0, i64 99, i1 false)
  store ptr %i.k, ptr %i.l, align 8, !tbaa !218
  %.shift = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %4 = load i8, ptr %.shift, align 1, !tbaa !328
  %i.m = and i8 %4, 1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr %i.k, ptr %i.n, align 16, !tbaa !218
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i8 %i.m, ptr %i.o, align 8, !tbaa !503
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i8 0, i64 32, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.r = load i64, ptr %i.q, align 8, !tbaa !67
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.r
  %i.t = invoke i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull %i.d, ptr noundef nonnull %i.s, i1 noundef zeroext true)
          to label %.noexc unwind label %bb.k     ; 2 uses

.noexc:                                           ; preds = %bb.a
  %i.u = and i32 %i.t, 131071
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 0, ptr noundef nonnull @.str.56) #31
          to label %.noexc6 unwind label %bb.k

.noexc6:                                          ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.noexc
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.x = trunc i32 %i.t to i24
  store i24 %i.x, ptr %i.w, align 16
  invoke void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EE8_M_readyEv(ptr noundef nonnull align 8 dereferenceable(160) %1)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !217 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.ac = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #28
          to label %bb.e unwind label %bb.l       ; 10 uses

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ae = load <2 x ptr>, ptr %1, align 16, !tbaa !48
  store <2 x ptr> %i.ae, ptr %i.ac, align 8, !tbaa !48
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 16, !tbaa !469
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !469
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %1, i8 0, i64 24, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ak = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !470
  store <2 x ptr> %i.ak, ptr %i.ai, align 8, !tbaa !470
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !471
  store ptr %i.an, ptr %i.al, align 8, !tbaa !471
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.aq = load <2 x ptr>, ptr %i.ap, align 16, !tbaa !493
  store <2 x ptr> %i.aq, ptr %i.ao, align 8, !tbaa !493
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.at = load ptr, ptr %i.as, align 16, !tbaa !494
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !494
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.aw = load <2 x ptr>, ptr %i.av, align 8, !tbaa !474
  store <2 x ptr> %i.aw, ptr %i.au, align 8, !tbaa !474
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !475
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !475
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ba, ptr noundef nonnull align 8 dereferenceable(64) %i.w, i64 64, i1 false)
  store ptr %i.ac, ptr %3, align 8, !tbaa !507
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE9_M_invokeERKSt9_Any_dataOc, ptr %i.ad, align 8, !tbaa !277
  store ptr @_ZNSt17_Function_handlerIFbcENSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr %i.ab, align 8, !tbaa !280
  %i.bb = invoke noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE17_M_insert_matcherESt8functionIFbcEE(ptr noundef nonnull align 8 dereferenceable(88) %i.aa, ptr noundef nonnull %3)
          to label %bb.f unwind label %bb.m       ; 2 uses

bb.f:                                             ; preds = %bb.e
  store ptr %i.aa, ptr %2, align 8, !tbaa !286
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !294
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !296
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !256 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !297
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -24
  %.not.i.i.i = icmp eq ptr %i.bf, %i.bi
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !298
  %i.bj = load ptr, ptr %i.be, align 8, !tbaa !256
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store ptr %i.bk, ptr %i.be, align 8, !tbaa !256
  br label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit

bb.h:                                             ; preds = %bb.f
  invoke void @_ZNSt5dequeINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit unwind label %bb.m

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit: ; preds = %bb.g, %bb.h
  %i.bl = load ptr, ptr %i.ab, align 8, !tbaa !280 ; 2 uses
  %.not.i = icmp eq ptr %i.bl, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit
  %i.bm = invoke noundef zeroext i1 %i.bl(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #32
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret void

bb.k:                                             ; preds = %bb.b, %bb.a, %bb.c
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.l:                                             ; preds = %bb.d
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit10

bb.m:                                             ; preds = %bb.h, %bb.e
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bs = load ptr, ptr %i.ab, align 8, !tbaa !280 ; 2 uses
  %.not.i9 = icmp eq ptr %i.bs, null
  br i1 %.not.i9, label %_ZNSt14_Function_baseD2Ev.exit10, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bt = invoke noundef zeroext i1 %i.bs(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit10 unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #32
  unreachable

_ZNSt14_Function_baseD2Ev.exit10:                 ; preds = %bb.n, %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.bq, %bb.l ], [ %i.br, %bb.m ], [ %i.br, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit10, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt14_Function_baseD2Ev.exit10 ], [ %i.bp, %bb.k ]
  call void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE21_M_bracket_expressionEv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !240  ; 2 uses
  %i.d = icmp eq i32 %i.c, 10                     ; 5 uses
  br i1 %i.d, label %bb.b, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !241
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !242
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 27, ptr %i.b, align 8, !tbaa !240
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.m = load i32, ptr %i.l, align 8, !tbaa !243
  switch i32 %i.m, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread [
end_hunk_0
