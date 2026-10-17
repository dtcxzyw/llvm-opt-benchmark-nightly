Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/videoio_registry?download=true
inline.NumInlined: 827
inline.NumDeleted: 303
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK2cv12_GLOBAL__N_120VideoBackendRegistry12dumpBackendsB5cxx11Ev:bb.a
  br i1 %i.bc, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.l
  %i.bd = load i64, ptr %i.an, align 8, !tbaa !30, !alias.scope !251
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #24
  br label %.body

bb.m:                                             ; preds = %._crit_edge
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bf)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.l

.lr.ph.peel.next:                                 ; preds = %bb.j, %bb.w
  %.0101 = phi i64 [ %i.ck, %bb.w ], [ 1, %bb.j ] ; 3 uses
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.24, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %.lr.ph.peel.next
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %.lr.ph.peel.next
  %.pre9 = load ptr, ptr @_ZZN2cv12_GLOBAL__N_120VideoBackendRegistry11getInstanceEvE10g_instance, align 8, !tbaa !37 ; 2 uses
  %.phi.trans.insert10 = getelementptr inbounds nuw [40 x i8], ptr %.pre9, i64 %.0101
  %.phi.trans.insert11 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert10, i64 16
  %.pre12 = load ptr, ptr %.phi.trans.insert11, align 8, !tbaa !56 ; 3 uses
  %i.bh = getelementptr inbounds nuw [40 x i8], ptr %.pre9, i64 %.0101
  %.not.i = icmp eq ptr %.pre12, null
  br i1 %.not.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bi = load ptr, ptr %1, align 8, !tbaa !29
  %i.bj = getelementptr i8, ptr %i.bi, i64 -24
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds i8, ptr %1, i64 %i.bk ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !82
  %i.bo = or i32 %i.bn, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.bl, i32 noundef %i.bo)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14 unwind label %.loopexit4

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bp = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.pre12) #23
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.pre12, i64 noundef %i.bp)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14 unwind label %.loopexit4 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 40, ptr %i.b, align 1, !tbaa !30
  %i.br = load ptr, ptr %1, align 8, !tbaa !29
  %i.bs = getelementptr i8, ptr %i.br, i64 -24
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds i8, ptr %1, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !248
  %.not.i15 = icmp eq i64 %i.bw, 0
  br i1 %.not.i15, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14
  %i.bx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %bb.s unwind label %.loopexit4

bb.r:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14
  %i.by = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 40)
          to label %bb.s unwind label %.loopexit4 ; 0 uses

bb.s:                                             ; preds = %bb.q, %bb.r
  %.0.i = phi ptr [ %i.bx, %bb.q ], [ %1, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !65
  %i.cb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, i32 noundef %i.ca)
          to label %bb.t unwind label %.loopexit4 ; 4 uses

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 41, ptr %i.a, align 1, !tbaa !30
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !29
  %i.cd = getelementptr i8, ptr %i.cc, i64 -24
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds i8, ptr %i.cb, i64 %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !248
  %.not.i18 = icmp eq i64 %i.ch, 0
  br i1 %.not.i18, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ci = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.w unwind label %.loopexit4 ; 0 uses

bb.v:                                             ; preds = %bb.t
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, i8 noundef signext 41)
          to label %bb.w unwind label %.loopexit4 ; 0 uses

bb.w:                                             ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ck = add nuw i64 %.0101, 1                   ; 2 uses
  %i.cl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2cv12_GLOBAL__N_120VideoBackendRegistry11getInstanceEvE10g_instance, i64 8), align 8, !tbaa !36
  %i.cm = load ptr, ptr @_ZZN2cv12_GLOBAL__N_120VideoBackendRegistry11getInstanceEvE10g_instance, align 8, !tbaa !37
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = sdiv exact i64 %i.cp, 40
  %i.cr = icmp ult i64 %i.ck, %i.cq
  br i1 %i.cr, label %.lr.ph.peel.next, label %._crit_edge, !llvm.loop !247

.loopexit4:                                       ; preds = %bb.s, %bb.o, %bb.p, %bb.q, %bb.r, %bb.u, %bb.v
  %lpad.loopexit6 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp5:                              ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.h, %bb.i
  %lpad.loopexit.split-lp7 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.m, %bb.k
  %i.cs = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.cs, ptr %1, align 8, !tbaa !29
  %i.ct = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.cu = getelementptr i8, ptr %i.cs, i64 -24
  %i.cv = load i64, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds i8, ptr %1, i64 %i.cv
  store ptr %i.ct, ptr %i.cw, align 8, !tbaa !29
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cx, align 8, !tbaa !29
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !58 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !30
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dd) #24
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cx, align 8, !tbaa !29
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.de) #23
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.df) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret void

.body:                                            ; preds = %bb.l, %.loopexit4, %.loopexit.split-lp5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit, %bb.n ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %lpad.loopexit.split-lp7, %.loopexit.split-lp5 ], [ %lpad.loopexit6, %.loopexit4 ], [ %i.ba, %bb.l ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZN2cv5utils7logging8internal17writeLogMessageExENS1_8LogLevelEPKcS5_iS5_S5_(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #5 align 2

declare noundef i64 @_ZN2cv5utils30getConfigurationParameterSizeTEPKcm(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_ZN2cv12_GLOBAL__N_114sortByPriorityERKNS_16VideoBackendInfoES3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !65
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !65
  %i.e = icmp sgt i32 %i.b, %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv16VideoBackendInfoESaIS1_EE13_M_assign_auxIPKS1_EEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.f = load ptr, ptr %0, align 8, !tbaa !37     ; 4 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ugt i64 %i.c, %i.i
  br i1 %i.j, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.k = sdiv exact i64 %i.c, 40
  %i.l = icmp ugt i64 %i.k, 230584300921369395
  br i1 %i.l, label %bb.c, label %_ZNSt12_Vector_baseIN2cv16VideoBackendInfoESaIS1_EE11_M_allocateEm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #25
  unreachable

_ZNSt12_Vector_baseIN2cv16VideoBackendInfoESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #26 ; 3 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN2cv16VideoBackendInfoESaIS1_EE11_M_allocateEm.exit.i, %_ZSt10_ConstructIN2cv16VideoBackendInfoEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.y, %_ZSt10_ConstructIN2cv16VideoBackendInfoEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.m, %_ZNSt12_Vector_baseIN2cv16VideoBackendInfoESaIS1_EE11_M_allocateEm.exit.i ] ; 3 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.x, %_ZSt10_ConstructIN2cv16VideoBackendInfoEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %1, %_ZNSt12_Vector_baseIN2cv16VideoBackendInfoESaIS1_EE11_M_allocateEm.exit.i ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.011.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0810.i.i.i.i.i, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !24   ; 2 uses
  %i.r = load <2 x ptr>, ptr %i.o, align 8, !tbaa !48
  store <2 x ptr> %i.r, ptr %i.n, align 8, !tbaa !48
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN2cv16VideoBackendInfoEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load i32, ptr %i.s, align 4, !tbaa !31
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.s, align 4, !tbaa !31
  br label %_ZSt10_ConstructIN2cv16VideoBackendInfoEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.w = atomicrmw volatile add ptr %i.s, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN2cv16VideoBackendInfoEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructIN2cv16VideoBackendInfoEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e, %.lr.ph.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 40 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 40
  %.not.i.i.i.i.i = icmp eq ptr %i.x, %2
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN2cv16VideoBackendInfoESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !253

_ZNSt6vectorIN2cv16VideoBackendInfoESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_.exit: ; preds = %_ZSt10_ConstructIN2cv16VideoBackendInfoEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.z = load ptr, ptr %0, align 8, !tbaa !37     ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !36 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN2cv16VideoBackendInfoEEvT_S3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN2cv16VideoBackendInfoESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_.exit, %_ZSt8_DestroyIN2cv16VideoBackendInfoEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.at, %_ZSt8_DestroyIN2cv16VideoBackendInfoEEvPT_.exit.i.i ], [ %i.z, %_ZNSt6vectorIN2cv16VideoBackendInfoESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_.exit ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !24 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN2cv16VideoBackendInfoEEvPT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.ae, align 8, !tbaa !26
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !27
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !29
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #23, !inline_history !2
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !29
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #23, !inline_history !2
  br label %_ZSt8_DestroyIN2cv16VideoBackendInfoEEvPT_.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !31
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.j ], [ %i.ar, %bb.k ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.l, label %_ZSt8_DestroyIN2cv16VideoBackendInfoEEvPT_.exit.i.i, !prof !32

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #23
  br label %_ZSt8_DestroyIN2cv16VideoBackendInfoEEvPT_.exit.i.i

_ZSt8_DestroyIN2cv16VideoBackendInfoEEvPT_.exit.i.i: ; preds = %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.h, %.lr.ph.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i16 = icmp eq ptr %i.at, %i.ab
  br i1 %.not.i.i16, label %_ZSt8_DestroyIPN2cv16VideoBackendInfoEEvT_S3_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !3

_ZSt8_DestroyIPN2cv16VideoBackendInfoEEvT_S3_.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN2cv16VideoBackendInfoEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !37
  br label %_ZSt8_DestroyIPN2cv16VideoBackendInfoEEvT_S3_.exit

_ZSt8_DestroyIPN2cv16VideoBackendInfoEEvT_S3_.exit: ; preds = %_ZSt8_DestroyIPN2cv16VideoBackendInfoEEvT_S3_.exitthread-pre-split, %_ZNSt6vectorIN2cv16VideoBackendInfoESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_.exit
  %i.au = phi ptr [ %.pr, %_ZSt8_DestroyIPN2cv16VideoBackendInfoEEvT_S3_.exitthread-pre-split ], [ %i.z, %_ZNSt6vectorIN2cv16VideoBackendInfoESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN2cv16VideoBackendInfoESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPN2cv16VideoBackendInfoEEvT_S3_.exit
  %i.av = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = sub i64 %i.aw, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ay) #24
  br label %_ZNSt12_Vector_baseIN2cv16VideoBackendInfoESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN2cv16VideoBackendInfoESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt8_DestroyIPN2cv16VideoBackendInfoEEvT_S3_.exit, %bb.m
  store ptr %i.m, ptr %0, align 8, !tbaa !37
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.c ; 2 uses
  store ptr %i.az, ptr %i.aa, align 8, !tbaa !36
  store ptr %i.az, ptr %i.d, align 8, !tbaa !47
  br label %_ZNSt6vectorIN2cv16VideoBackendInfoESaIS1_EE15_M_erase_at_endEPS1_.exit

bb.n:                                             ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !36 ; 3 uses
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.h                     ; 4 uses
  %.not = icmp ult i64 %i.bd, %i.c
  br i1 %.not, label %_ZSt9__advanceIPKN2cv16VideoBackendInfoElEvRT_T0_St26random_access_iterator_tag.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = icmp sgt i64 %i.c, 0
  br i1 %i.be, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4copyIPKN2cv16VideoBackendInfoEPS1_ET0_T_S6_S5_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.o
  %i.bf = udiv exact i64 %i.c, 40
  br label %.lr.ph.i.i.i.i.i17

.lr.ph.i.i.i.i.i17:                               ; preds = %_ZN2cv16VideoBackendInfoaSERKS0_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ck, %_ZN2cv16VideoBackendInfoaSERKS0_.exit.i.i.i.i.i ], [ %i.bf, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.cj, %_ZN2cv16VideoBackendInfoaSERKS0_.exit.i.i.i.i.i ], [ %i.f, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ci, %_ZN2cv16VideoBackendInfoaSERKS0_.exit.i.i.i.i.i ], [ %1, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0910.i.i.i.i.i, i64 24, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !64
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !64
  %i.bj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !24 ; 4 uses
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !24 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bl, %i.bm
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN2cv16VideoBackendInfoaSERKS0_.exit.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i17
  %.not7.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not7.i.i.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 3 uses
  %i.bo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i.i.i.i.i.i.i.i.i18 = icmp eq i8 %i.bo, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i18, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !31
  %i.bq = add nsw i32 %i.bp, 1
  store i32 %i.bq, ptr %i.bn, align 4, !tbaa !31
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.br = atomicrmw volatile add ptr %i.bn, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bj, align 8, !tbaa !24
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.s, %bb.r, %bb.p
  %i.bs = phi ptr [ %i.bm, %bb.p ], [ %i.bm, %bb.r ], [ %.pr.pre.i.i.i.i.i.i.i.i.i.i, %bb.s ] ; 8 uses
  %.not8.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not8.i.i.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 4 uses
  %i.bu = load atomic i64, ptr %i.bt acquire, align 8 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 4294967297
  %i.bw = trunc i64 %i.bu to i32                  ; 2 uses
  br i1 %i.bv, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.bt, align 8, !tbaa !26
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store i32 0, ptr %i.bx, align 4, !tbaa !27
  %i.by = load ptr, ptr %i.bs, align 8, !tbaa !29
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  tail call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #23, !inline_history !254
  %i.cb = load ptr, ptr %i.bs, align 8, !tbaa !29
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8
  tail call void %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #23, !inline_history !254
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.ce = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i9.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ce, 0
  br i1 %.not.i9.i.i.i.i.i.i.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cf = add nsw i32 %i.bw, -1
  store i32 %i.cf, ptr %i.bt, align 8, !tbaa !31
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.cg = atomicrmw volatile add ptr %i.bt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bw, %bb.w ], [ %i.cg, %bb.x ]
  %i.ch = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ch, label %bb.y, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i.i, !prof !32

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #23
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.u, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i
  store ptr %i.bl, ptr %i.bj, align 8, !tbaa !24
  br label %_ZN2cv16VideoBackendInfoaSERKS0_.exit.i.i.i.i.i

_ZN2cv16VideoBackendInfoaSERKS0_.exit.i.i.i.i.i:  ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i17
  %i.ci = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 40
  %i.cj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 40 ; 2 uses
  %i.ck = add nsw i64 %.012.i.i.i.i.i, -1
  %i.cl = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.cl, label %.lr.ph.i.i.i.i.i17, label %_ZSt4copyIPKN2cv16VideoBackendInfoEPS1_ET0_T_S6_S5_.exit.loopexit, !llvm.loop !255

_ZSt4copyIPKN2cv16VideoBackendInfoEPS1_ET0_T_S6_S5_.exit.loopexit: ; preds = %_ZN2cv16VideoBackendInfoaSERKS0_.exit.i.i.i.i.i
end_hunk_0
