Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/string?download=true
inline.NumInlined: 1430
inline.NumDeleted: 480
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_Z18sanitize_untrustedB5cxx11St17basic_string_viewIcSt11char_traitsIcEEb:bb.a
  %i.gm = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.fu
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !73
  %i.go = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.gl
  store i8 %i.gn, ptr %i.go, align 1, !tbaa !73
  %.pre.i = load i64, ptr %i.r, align 8, !tbaa !59
  %.val.i.pre = load ptr, ptr %0, align 8, !tbaa !58
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %"_ZZ18sanitize_untrustedB5cxx11St17basic_string_viewIcSt11char_traitsIcEEbENK3$_2clERKNSt7__cxx1112basic_stringIcS1_SaIcEEEm.exit.thread.i"
  %.val.i84 = phi ptr [ %.val.i.pre, %bb.am ], [ %.val.i, %"_ZZ18sanitize_untrustedB5cxx11St17basic_string_viewIcSt11char_traitsIcEEbENK3$_2clERKNSt7__cxx1112basic_stringIcS1_SaIcEEEm.exit.thread.i" ]
  %i.gp = phi i64 [ %.pre.i, %bb.am ], [ %i.ft, %"_ZZ18sanitize_untrustedB5cxx11St17basic_string_viewIcSt11char_traitsIcEEbENK3$_2clERKNSt7__cxx1112basic_stringIcS1_SaIcEEEm.exit.thread.i" ] ; 2 uses
  %i.gq = icmp ult i64 %i.fu, %i.gp
  br i1 %i.gq, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !178

bb.ao:                                            ; preds = %._crit_edge.i
  %i.gr = landingpad { ptr, i32 }
          cleanup
  %i.gs = load ptr, ptr %0, align 8, !tbaa !58    ; 2 uses
  %i.gt = icmp eq ptr %i.gs, %i.p
  br i1 %i.gt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

"_Z14remove_indexedIZ18sanitize_untrustedB5cxx11St17basic_string_viewIcSt11char_traitsIcEEbE3$_2EvRNSt7__cxx1112basic_stringIcS2_SaIcEEET_.exit": ; preds = %._crit_edge.i, %.loopexit
  ret void

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ao
  %i.gu = load i64, ptr %i.p, align 8, !tbaa !73
  %i.gv = add i64 %i.gu, 1
  call void @_ZdlPvm(ptr noundef %i.gs, i64 noundef %i.gv) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.gr
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z17safe_print_stringRSoSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, ptr nofree readonly captures(address) %2) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !180  ; 2 uses
  %i.j = and i32 %i.i, -75
  %i.k = or disjoint i32 %i.j, 8
  store i32 %i.k, ptr %i.h, align 8, !tbaa !181
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %1
  %.not44 = icmp samesign eq i64 %1, 0
  br i1 %.not44, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.k
  %.pre47 = load ptr, ptr %0, align 8, !tbaa !47
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.m = phi ptr [ %.pre47, %._crit_edge.loopexit ], [ %i.d, %bb.a ]
  %i.n = getelementptr i8, ptr %i.m, i64 -24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %0, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !180
  %i.s = or i32 %i.r, %i.i
  store i32 %i.s, ptr %i.q, align 8, !tbaa !181
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.k
  %.045 = phi ptr [ %i.bc, %bb.k ], [ %2, %bb.a ] ; 2 uses
  %i.t = load i8, ptr %.045, align 1, !tbaa !73   ; 7 uses
  %i.u = sext i8 %i.t to i32
  %i.v = add i8 %i.t, -32
  %or.cond = icmp ult i8 %i.v, 95
  %i.w = add i8 %i.t, 62
  %or.cond5 = icmp ult i8 %i.w, 51
  %or.cond36 = or i1 %or.cond, %or.cond5
  br i1 %or.cond36, label %.lr.ph._crit_edge, label %bb.b

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %.pre = load ptr, ptr %0, align 8, !tbaa !47
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %or.cond8 = icmp slt i8 %i.t, -64
  %i.x = add i8 %i.t, -9
  %i.y = icmp ult i8 %i.x, 2
  %or.cond14 = or i1 %or.cond8, %i.y
  %.pre46 = load ptr, ptr %0, align 8, !tbaa !47  ; 2 uses
  br i1 %or.cond14, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.lr.ph._crit_edge, %bb.b
  %i.z = phi ptr [ %.pre, %.lr.ph._crit_edge ], [ %.pre46, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.t, ptr %i.c, align 1, !tbaa !73
  %i.aa = getelementptr i8, ptr %i.z, i64 -24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds i8, ptr %0, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !182
  %.not.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.c, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.e:                                             ; preds = %bb.c
  %i.ag = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.t) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.k

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 60, ptr %i.b, align 1, !tbaa !73
  %i.ah = getelementptr i8, ptr %.pre46, i64 -24
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds i8, ptr %0, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !182
  %.not.i37 = icmp eq i64 %i.al, 0
  br i1 %.not.i37, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit39

bb.h:                                             ; preds = %bb.f
  %i.an = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 60) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit39

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit39: ; preds = %bb.g, %bb.h
  %.0.i38 = phi ptr [ %i.am, %bb.g ], [ %0, %bb.h ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ao = load ptr, ptr %.0.i38, align 8, !tbaa !47
  %i.ap = getelementptr i8, ptr %i.ao, i64 -24
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds i8, ptr %.0.i38, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 2, ptr %i.as, align 8, !tbaa !182
  %i.at = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.0.i38, i32 noundef %i.u) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 62, ptr %i.a, align 1, !tbaa !73
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !47
  %i.av = getelementptr i8, ptr %i.au, i64 -24
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = getelementptr inbounds i8, ptr %i.at, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !182
  %.not.i40 = icmp eq i64 %i.az, 0
  br i1 %.not.i40, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit39
  %i.ba = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit42

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit39
  %i.bb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.at, i8 noundef signext 62) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit42

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit42: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit42, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %.045, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.bc, %i.l
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local { <2 x float>, i64 } @_Z10str_to_v3fSt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr nofree readonly captures(none) %1) local_unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_istringstream", align 8 ; 22 uses
  %3 = alloca %"class.std::__cxx11::basic_string.0", align 8 ; 12 uses
  %4 = alloca %"class.core::vector3d", align 8    ; 8 uses
  %.not21.i = icmp eq i64 %0, 0
  br i1 %.not21.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.01318.i = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.01318.i
  %i.c = load i8, ptr %i.b, align 1, !tbaa !73
  %i.d = sext i8 %i.c to i32
  %i.e = tail call i32 @isspace(i32 noundef %i.d) #36
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = add nuw i64 %.01318.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.f, %0
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !183

.critedge.i:                                      ; preds = %bb.b, %.lr.ph.i, %bb.a
  %.013.lcssa.i = phi i64 [ 0, %bb.a ], [ %.01318.i, %.lr.ph.i ], [ %0, %bb.b ] ; 6 uses
  %umin.i = tail call i64 @llvm.umin.i64(i64 %.013.lcssa.i, i64 %0) ; 2 uses
  %i.g = icmp ugt i64 %0, %.013.lcssa.i
  br i1 %i.g, label %.lr.ph, label %_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EES4_.exit

bb.c:                                             ; preds = %.lr.ph
  %i.h = icmp ugt i64 %i.i, %.013.lcssa.i
  br i1 %i.h, label %.lr.ph, label %_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EES4_.exit, !llvm.loop !184

.lr.ph:                                           ; preds = %.critedge.i, %bb.c
  %.0.i84 = phi i64 [ %i.i, %bb.c ], [ %0, %.critedge.i ] ; 2 uses
  %i.i = add i64 %.0.i84, -1                      ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !73
  %i.l = sext i8 %i.k to i32
  %i.m = tail call i32 @isspace(i32 noundef %i.l) #36
  %.not17.i = icmp eq i32 %i.m, 0
  br i1 %.not17.i, label %..critedge2.i_crit_edge, label %bb.c, !llvm.loop !184

..critedge2.i_crit_edge:                          ; preds = %.lr.ph
  br label %_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EES4_.exit, !llvm.loop !184

_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EES4_.exit: ; preds = %bb.c, %..critedge2.i_crit_edge, %.critedge.i
  %.0.lcssa.i = phi i64 [ %.0.i84, %..critedge2.i_crit_edge ], [ %umin.i, %.critedge.i ], [ %umin.i, %bb.c ]
  %i.n = sub i64 %.0.lcssa.i, %.013.lcssa.i
  %i.o = sub nuw i64 %0, %.013.lcssa.i
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.n) ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %.013.lcssa.i ; 6 uses
  %i.q = icmp eq i64 %.sroa.speculated.i.i, 0
  br i1 %i.q, label %bb.ad, label %bb.d

bb.d:                                             ; preds = %_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EES4_.exit
  %i.r = load i8, ptr %i.p, align 1, !tbaa !73
  %i.s = icmp eq i8 %i.r, 40
  br i1 %i.s, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.speculated.i.i
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !73
  %i.w = icmp eq i8 %i.v, 41
  br i1 %i.w, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %i.y = add i64 %.sroa.speculated.i.i, -2        ; 7 uses
  %.not21.i12 = icmp eq i64 %i.y, 0
  br i1 %.not21.i12, label %.critedge.i17, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %bb.f, %bb.g
  %.01318.i14 = phi i64 [ %i.ad, %bb.g ], [ 0, %bb.f ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %.01318.i14
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !73
  %i.ab = sext i8 %i.aa to i32
  %i.ac = tail call i32 @isspace(i32 noundef %i.ab) #36
  %.not.i15 = icmp eq i32 %i.ac, 0
  br i1 %.not.i15, label %.critedge.i17, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i13
  %i.ad = add nuw i64 %.01318.i14, 1              ; 2 uses
  %exitcond.not.i16 = icmp eq i64 %i.ad, %i.y
  br i1 %exitcond.not.i16, label %.critedge.i17, label %.lr.ph.i13, !llvm.loop !183

.critedge.i17:                                    ; preds = %bb.g, %.lr.ph.i13, %bb.f
  %.013.lcssa.i18 = phi i64 [ 0, %bb.f ], [ %.01318.i14, %.lr.ph.i13 ], [ %i.y, %bb.g ] ; 6 uses
  %umin.i19 = tail call i64 @llvm.umin.i64(i64 %.013.lcssa.i18, i64 %i.y) ; 2 uses
  %i.ae = icmp ugt i64 %i.y, %.013.lcssa.i18
  br i1 %i.ae, label %.lr.ph88, label %_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EES4_.exit27

bb.h:                                             ; preds = %.lr.ph88
  %i.af = add i64 %.0.i2087, -1                   ; 2 uses
  %i.ag = icmp ugt i64 %i.af, %.013.lcssa.i18
  br i1 %i.ag, label %.lr.ph88, label %_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EES4_.exit27, !llvm.loop !184

.lr.ph88:                                         ; preds = %.critedge.i17, %bb.h
  %.0.i2087 = phi i64 [ %i.af, %bb.h ], [ %i.y, %.critedge.i17 ] ; 3 uses
  %i.ah = getelementptr i8, ptr %i.p, i64 %.0.i2087
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !73
  %i.aj = sext i8 %i.ai to i32
  %i.ak = tail call i32 @isspace(i32 noundef %i.aj) #36
  %.not17.i26 = icmp eq i32 %i.ak, 0
  br i1 %.not17.i26, label %..critedge2.i21_crit_edge, label %bb.h, !llvm.loop !184

..critedge2.i21_crit_edge:                        ; preds = %.lr.ph88
  br label %_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EES4_.exit27, !llvm.loop !184

_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EES4_.exit27: ; preds = %bb.h, %..critedge2.i21_crit_edge, %.critedge.i17
  %.0.lcssa.i21 = phi i64 [ %.0.i2087, %..critedge2.i21_crit_edge ], [ %umin.i19, %.critedge.i17 ], [ %umin.i19, %bb.h ]
  %i.al = sub i64 %.0.lcssa.i21, %.013.lcssa.i18
  %i.am = sub nuw i64 %i.y, %.013.lcssa.i18
  %.sroa.speculated.i.i23 = tail call i64 @llvm.umin.i64(i64 %i.am, i64 %i.al)
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 %.013.lcssa.i18
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.e, %_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EES4_.exit27
  %.sroa.11.0 = phi ptr [ %i.an, %_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EES4_.exit27 ], [ %i.p, %bb.e ], [ %i.p, %bb.d ] ; 2 uses
  %.sroa.041.0 = phi i64 [ %.sroa.speculated.i.i23, %_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EES4_.exit27 ], [ %.sroa.speculated.i.i, %bb.e ], [ %.sroa.speculated.i.i, %bb.d ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #2
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #2
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.ao, ptr %3, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #2
  store i64 %.sroa.041.0, ptr %i.a, align 8, !tbaa !19
  %i.ap = icmp ugt i64 %.sroa.041.0, 15
  br i1 %i.ap, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.i
  %i.aq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc28 unwind label %bb.o   ; 2 uses

.noexc28:                                         ; preds = %.noexc.i.i.i
  store ptr %i.aq, ptr %3, align 8, !tbaa !58
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.ar, ptr %i.ao, align 8, !tbaa !73
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc28, %bb.i
  %i.as = phi ptr [ %i.aq, %.noexc28 ], [ %i.ao, %bb.i ] ; 2 uses
  switch i64 %.sroa.041.0, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  %i.at = load i8, ptr %.sroa.11.0, align 1, !tbaa !73
  store i8 %i.at, ptr %i.as, align 1, !tbaa !73
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr nonnull align 1 %.sroa.11.0, i64 %.sroa.041.0, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i.i
  %i.au = load i64, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.au, ptr %i.av, align 8, !tbaa !59
  %i.aw = load ptr, ptr %3, align 8, !tbaa !58
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.au
  store i8 0, ptr %i.ax, align 1, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #2
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 8)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ay = load ptr, ptr %3, align 8, !tbaa !58    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.ao
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.ba = load i64, ptr %i.ao, align 8, !tbaa !73
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #2
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 4
  store <2 x float> zeroinitializer, ptr %4, align 8, !tbaa !185
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store float 0.000000e+00, ptr %i.bd, align 8, !tbaa !187
  %i.be = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIfEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.n unwind label %bb.q       ; 2 uses

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !47
  %i.bg = getelementptr i8, ptr %i.bf, i64 -24
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds i8, ptr %i.be, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !55
  %i.bl = and i32 %i.bk, 5
  %.not = icmp eq i32 %i.bl, 0
  br i1 %.not, label %bb.r, label %bb.ab

bb.o:                                             ; preds = %.noexc.i.i.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

bb.p:                                             ; preds = %bb.l
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = load ptr, ptr %3, align 8, !tbaa !58    ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.ao
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.p
  %i.bq = load i64, ptr %i.ao, align 8, !tbaa !73
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30, %bb.o
  %.pn = phi { ptr, i32 } [ %i.bm, %bb.o ], [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30 ], [ %i.bn, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #2
  br label %bb.ac

bb.q:                                             ; preds = %bb.x, %bb.v, %bb.t, %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #2
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %2) #2
  br label %bb.ac

bb.r:                                             ; preds = %bb.n
  %i.bt = invoke noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.s unwind label %bb.q

bb.s:                                             ; preds = %bb.r
  switch i32 %i.bt, label %bb.ab [
    i32 44, label %bb.t
    i32 32, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s, %bb.s
  %i.bu = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIfEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.bc)
          to label %bb.u unwind label %bb.q       ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !47
  %i.bw = getelementptr i8, ptr %i.bv, i64 -24
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = getelementptr inbounds i8, ptr %i.bu, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !55
  %i.cb = and i32 %i.ca, 5
  %.not71.a = icmp eq i32 %i.cb, 0
  br i1 %.not71.a, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %bb.u
  %i.cc = invoke noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.w unwind label %bb.q

bb.w:                                             ; preds = %bb.v
  switch i32 %i.cc, label %bb.ab [
    i32 44, label %bb.x
    i32 32, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w, %bb.w
  %i.cd = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIfEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.bd)
          to label %bb.y unwind label %bb.q       ; 2 uses

bb.y:                                             ; preds = %bb.x
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !47
  %i.cf = getelementptr i8, ptr %i.ce, i64 -24
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds i8, ptr %i.cd, i64 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !55
  %i.ck = and i32 %i.cj, 5
  %.not72.a = icmp eq i32 %i.ck, 0
  br i1 %.not72.a, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.cl = load ptr, ptr %2, align 8, !tbaa !47
  %i.cm = getelementptr i8, ptr %i.cl, i64 -24
  %i.cn = load i64, ptr %i.cm, align 8
  %i.co = getelementptr inbounds i8, ptr %2, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !55
  %i.cr = and i32 %i.cq, 2
  %.not73 = icmp eq i32 %i.cr, 0
  br i1 %.not73, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.sroa.049.0.copyload = load <2 x float>, ptr %4, align 8
  %.sroa.2.0.copyload = load i32, ptr %i.bd, align 8, !tbaa !185
  %.sroa.2.0.insert.ext = zext i32 %.sroa.2.0.copyload to i64
  %.sroa.2.12.insert.insert70 = or disjoint i64 %.sroa.2.0.insert.ext, 4294967296
  br label %bb.ab

bb.ab:                                            ; preds = %bb.w, %bb.s, %bb.z, %bb.y, %bb.u, %bb.n, %bb.aa
  %.sroa.049.0 = phi nsz <2 x float> [ undef, %bb.n ], [ undef, %bb.s ], [ undef, %bb.w ], [ %.sroa.049.0.copyload, %bb.aa ], [ undef, %bb.y ], [ undef, %bb.u ], [ undef, %bb.z ]
  %.sroa.2.0 = phi i64 [ 0, %bb.n ], [ 0, %bb.s ], [ 0, %bb.w ], [ %.sroa.2.12.insert.insert70, %bb.aa ], [ 0, %bb.y ], [ 0, %bb.u ], [ 0, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #2
  %i.cs = load ptr, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.cs, ptr %2, align 8, !tbaa !47
  %i.ct = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.cu = getelementptr i8, ptr %i.cs, i64 -24
  %i.cv = load i64, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds i8, ptr %2, i64 %i.cv
  store ptr %i.ct, ptr %i.cw, align 8, !tbaa !47
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cx, align 8, !tbaa !47
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !58 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
end_hunk_0
