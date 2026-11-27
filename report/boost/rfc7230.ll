Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/rfc7230?download=true
inline.NumInlined: 1745
inline.NumDeleted: 378
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZZN5boost5beast4http12rfc7230_test13testTokenListEvENKUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESA_:bb.a
  store i32 592, ptr %i.t, align 8, !tbaa !92
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 48, ptr %i.u, align 4, !tbaa !93
  invoke void @_ZN5boost15throw_exceptionINS_5beast9unit_test5suite15abort_exceptionEEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #29
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %.body

_ZN5boost5beast9unit_test5suite15propagate_abortEv.exit.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !67
  invoke void @_ZN5boost5beast9unit_test6runner4passIvEEvv(ptr noundef nonnull align 8 dereferenceable(88) %i.x)
          to label %.critedge unwind label %bb.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread25: ; preds = %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.y = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  invoke void @_ZN5boost5beast4http12rfc7230_test3fmtERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  invoke void @_ZN5boost5beast9unit_test6detail11make_reasonINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_RKT_PKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.47, i32 noundef 209)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.f
  invoke void @_ZN5boost5beast9unit_test5suite4failIvEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(808) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.noexc
  %i.z = load ptr, ptr %2, align 8, !tbaa !21     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !22
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #31
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i: ; preds = %bb.h
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !22
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %.body14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.ak = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !22
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %.critedge

.critedge:                                        ; preds = %_ZN5boost5beast9unit_test5suite15propagate_abortEv.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ap = load ptr, ptr %5, align 8, !tbaa !21    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %.critedge
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !22
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret void

bb.i:                                             ; preds = %_ZN5boost5beast9unit_test5suite15propagate_abortEv.exit.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread25
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

bb.k:                                             ; preds = %bb.f
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body14

.body14:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i, %bb.k
  %eh.lpad-body15 = phi { ptr, i32 } [ %i.aw, %bb.k ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i ] ; 2 uses
  %i.ax = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %.body14
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !22
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %.body14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19, %bb.j
  %.pn = phi { ptr, i32 } [ %i.av, %bb.j ], [ %eh.lpad-body15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ], [ %eh.lpad-body15, %.body14 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %.body

.body:                                            ; preds = %bb.i, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %.pn12 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ], [ %i.au, %bb.i ], [ %i.v, %bb.e ]
  %i.bc = load ptr, ptr %5, align 8, !tbaa !21    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %.body
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !22
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %.pn12
}

declare noundef zeroext i1 @_ZN5boost5beast4http10token_list6existsERKNS_4core17basic_string_viewIcEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast4http12rfc7230_test3strB5cxx11ERKNS1_10token_listE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 12 uses
  %2 = alloca %"class.boost::beast::http::token_list::const_iterator", align 8 ; 12 uses
  %3 = alloca %"class.boost::beast::http::token_list::const_iterator", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i64 0, ptr %i.c, align 8, !tbaa !23
  store i8 0, ptr %i.b, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  %i.d = load ptr, ptr %1, align 8, !tbaa !81, !noalias !237 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !82, !noalias !237
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 16, i1 false), !alias.scope !237
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.d, ptr %i.h, align 8, !tbaa !239, !alias.scope !237
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  store ptr %i.d, ptr %i.i, align 8, !tbaa !240, !alias.scope !237
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  store ptr %i.g, ptr %i.j, align 8, !tbaa !241, !alias.scope !237
  invoke void @_ZN5boost5beast4http10token_list14const_iterator9incrementEv(ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %_ZNK5boost5beast4http10token_list5beginEv.exit unwind label %bb.i

_ZNK5boost5beast4http10token_list5beginEv.exit:   ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !242)
  %i.k = load ptr, ptr %1, align 8, !tbaa !81, !noalias !242
  %i.l = load i64, ptr %i.e, align 8, !tbaa !82, !noalias !242
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 16, i1 false), !alias.scope !242
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !239, !alias.scope !242
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store ptr %i.m, ptr %i.o, align 8, !tbaa !240, !alias.scope !242
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store ptr %i.m, ptr %i.p, align 8, !tbaa !241, !alias.scope !242
  invoke void @_ZN5boost5beast4http10token_list14const_iterator9incrementEv(ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %_ZNK5boost5beast4http10token_list3endEv.exit.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK5boost5beast4http10token_list3endEv.exit.preheader: ; preds = %_ZNK5boost5beast4http10token_list5beginEv.exit
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 11 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !239
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !239
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK5boost5beast4http10token_list3endEv.exit.preheader
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !240
  %i.w = load ptr, ptr %i.i, align 8, !tbaa !240
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit.peel, label %bb.c

_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit.peel: ; preds = %bb.b
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !241
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !241
  %.not.peel = icmp eq ptr %i.y, %i.z
  br i1 %.not.peel, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit.peel, %bb.b, %_ZNK5boost5beast4http10token_list3endEv.exit.preheader
  %.sroa.0.0.copyload.peel.pre = load ptr, ptr %2, align 8, !tbaa !79 ; 3 uses
  %.sroa.2.0.copyload.peel.pre = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !19 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !243)
  store ptr %i.q, ptr %4, align 8, !tbaa !17, !alias.scope !243
  %i.aa = icmp eq ptr %.sroa.0.0.copyload.peel.pre, null
  %i.ab = icmp ne i64 %.sroa.2.0.copyload.peel.pre, 0
  %or.cond.i.i.peel = and i1 %i.aa, %i.ab
  br i1 %or.cond.i.i.peel, label %.noexc.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28, !noalias !243
  store i64 %.sroa.2.0.copyload.peel.pre, ptr %i.a, align 8, !tbaa !19, !noalias !243
  %i.ac = icmp ugt i64 %.sroa.2.0.copyload.peel.pre, 15
  br i1 %i.ac, label %.noexc.i.i.peel, label %._crit_edge.i.i.i.peel

.noexc.i.i.peel:                                  ; preds = %bb.d
  %i.ad = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc18.peel unwind label %.loopexit.split-lp31.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc18.peel:                                    ; preds = %.noexc.i.i.peel
  store ptr %i.ad, ptr %4, align 8, !tbaa !21, !alias.scope !243
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !19, !noalias !243
  store i64 %i.ae, ptr %i.q, align 8, !tbaa !22, !alias.scope !243
  br label %._crit_edge.i.i.i.peel

._crit_edge.i.i.i.peel:                           ; preds = %.noexc18.peel, %bb.d
  %i.af = phi ptr [ %i.ad, %.noexc18.peel ], [ %i.q, %bb.d ] ; 2 uses
  switch i64 %.sroa.2.0.copyload.peel.pre, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.peel
  %i.ag = load i8, ptr %.sroa.0.0.copyload.peel.pre, align 1, !tbaa !22, !noalias !243
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !22
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.peel
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %.sroa.0.0.copyload.peel.pre, i64 %.sroa.2.0.copyload.peel.pre, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.peel
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !19, !noalias !243 ; 2 uses
  store i64 %i.ah, ptr %i.r, align 8, !tbaa !23, !alias.scope !243
  %i.ai = load ptr, ptr %4, align 8, !tbaa !21, !alias.scope !243
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ah
  store i8 0, ptr %i.aj, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !243
  %i.ak = load i64, ptr %i.r, align 8, !tbaa !23  ; 2 uses
  %i.al = load i64, ptr %i.c, align 8, !tbaa !23
  %i.am = sub i64 4611686018427387903, %i.al
  %i.an = icmp ult i64 %i.am, %i.ak
  br i1 %i.an, label %.loopexit54, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.peel: ; preds = %bb.g
  %i.ao = load ptr, ptr %4, align 8, !tbaa !21
  %i.ap = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ao, i64 noundef %i.ak)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.peel unwind label %.loopexit.split-lp36.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.peel
  %i.aq = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.q
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel.invoke.preheader, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.peel
  %.sink = phi ptr [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.peel ], [ %i.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit ]
  %i.as = load i64, ptr %i.q, align 8, !tbaa !22
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.at) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel.invoke.preheader

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel.invoke.preheader: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.peel
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel.invoke

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel.invoke: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel.invoke.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  invoke void @_ZN5boost5beast4http10token_list14const_iterator9incrementEv(ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %_ZNK5boost5beast4http10token_list3endEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK5boost5beast4http10token_list3endEv.exit:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel.invoke
  %i.au = load ptr, ptr %i.n, align 8, !tbaa !239
  %i.av = load ptr, ptr %i.h, align 8, !tbaa !239
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %bb.h, label %_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit.thread

bb.h:                                             ; preds = %_ZNK5boost5beast4http10token_list3endEv.exit
  %i.ax = load ptr, ptr %i.o, align 8, !tbaa !240
  %i.ay = load ptr, ptr %i.i, align 8, !tbaa !240
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit, label %_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit.thread

_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit: ; preds = %bb.h
  %i.ba = load ptr, ptr %i.p, align 8, !tbaa !241
  %i.bb = load ptr, ptr %i.j, align 8, !tbaa !241
  %.not = icmp eq ptr %i.ba, %i.bb
  br i1 %.not, label %.loopexit, label %_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit.thread

.loopexit:                                        ; preds = %_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit, %_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

bb.i:                                             ; preds = %bb.a
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit.thread: ; preds = %_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit, %bb.h, %_ZNK5boost5beast4http10token_list3endEv.exit
  %i.bd = load i64, ptr %i.c, align 8, !tbaa !23  ; 4 uses
  %i.be = add i64 %i.bd, 1                        ; 3 uses
  %i.bf = load ptr, ptr %0, align 8, !tbaa !21    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.b
  br i1 %i.bg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit.thread
  %i.bh = icmp ult i64 %i.bd, 16
  call void @llvm.assume(i1 %i.bh)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK5boost5beast4http10token_list14const_iteratorneERKS3_.exit.thread
  %i.bi = load i64, ptr %i.b, align 8, !tbaa !22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.bj = phi i64 [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.bk = icmp ugt i64 %i.be, %i.bj
  br i1 %i.bk, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bd, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.j
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !21
  br label %bb.k

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel.invoke, %bb.j, %_ZNK5boost5beast4http10token_list5beginEv.exit
  %lpad.loopexit.split-lp75 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.k:                                             ; preds = %.noexc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.bl = phi ptr [ %.pre.i, %.noexc ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bd
  store i8 44, ptr %i.bm, align 1, !tbaa !22
  store i64 %i.be, ptr %i.c, align 8, !tbaa !23
  %i.bn = load ptr, ptr %0, align 8, !tbaa !21
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.be
  store i8 0, ptr %i.bo, align 1, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !79 ; 3 uses
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !19 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !244)
  store ptr %i.q, ptr %4, align 8, !tbaa !17, !alias.scope !244
  %i.bp = icmp eq ptr %.sroa.0.0.copyload, null
  %i.bq = icmp ne i64 %.sroa.2.0.copyload, 0
  %or.cond.i.i = and i1 %i.bp, %i.bq
  br i1 %or.cond.i.i, label %.noexc.i, label %bb.l

.noexc.i:                                         ; preds = %bb.k, %bb.c
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.55) #29
          to label %.noexc17 unwind label %.loopexit.split-lp31.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc17:                                         ; preds = %.noexc.i
  unreachable

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28, !noalias !244
  store i64 %.sroa.2.0.copyload, ptr %i.a, align 8, !tbaa !19, !noalias !244
  %i.br = icmp ugt i64 %.sroa.2.0.copyload, 15
  br i1 %i.br, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.l
  %i.bs = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc18 unwind label %.loopexit.split-lp31.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc18:                                         ; preds = %.noexc.i.i
  store ptr %i.bs, ptr %4, align 8, !tbaa !21, !alias.scope !244
  %i.bt = load i64, ptr %i.a, align 8, !tbaa !19, !noalias !244
  store i64 %i.bt, ptr %i.q, align 8, !tbaa !22, !alias.scope !244
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc18, %bb.l
  %i.bu = phi ptr [ %i.bs, %.noexc18 ], [ %i.q, %bb.l ] ; 2 uses
  switch i64 %.sroa.2.0.copyload, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i
  %i.bv = load i8, ptr %.sroa.0.0.copyload, align 1, !tbaa !22, !noalias !244
  store i8 %i.bv, ptr %i.bu, align 1, !tbaa !22
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bu, ptr align 1 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i.i.i
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !19, !noalias !244 ; 2 uses
  store i64 %i.bw, ptr %i.r, align 8, !tbaa !23, !alias.scope !244
  %i.bx = load ptr, ptr %4, align 8, !tbaa !21, !alias.scope !244
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bw
  store i8 0, ptr %i.by, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !244
  %i.bz = load i64, ptr %i.r, align 8, !tbaa !23  ; 2 uses
  %i.ca = load i64, ptr %i.c, align 8, !tbaa !23
  %i.cb = sub i64 4611686018427387903, %i.ca
  %i.cc = icmp ult i64 %i.cb, %i.bz
  br i1 %i.cc, label %.loopexit54, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i

.loopexit54:                                      ; preds = %bb.o, %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.54) #29
          to label %.noexc19 unwind label %.loopexit.split-lp36.loopexit.split-lp.loopexit.split-lp

.noexc19:                                         ; preds = %.loopexit54
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %bb.o
  %i.cd = load ptr, ptr %4, align 8, !tbaa !21
  %i.ce = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.cd, i64 noundef %i.bz)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit unwind label %.loopexit.split-lp36.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  %i.cf = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.q
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.peel

.loopexit.split-lp31.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i.i, %.noexc.i.i.peel, %.noexc.i
  %lpad.loopexit.split-lp77 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

.loopexit.split-lp36.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.peel, %.loopexit54
  %lpad.loopexit.split-lp80 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ch = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.q
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %.loopexit.split-lp36.loopexit.split-lp.loopexit.split-lp
  %i.cj = load i64, ptr %i.q, align 8, !tbaa !22
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %.loopexit.split-lp36.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp31.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp80, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ], [ %lpad.loopexit.split-lp77, %.loopexit.split-lp31.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp80, %.loopexit.split-lp36.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %.pn14 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ], [ %lpad.loopexit.split-lp75, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp, %bb.i
  %.pn14.pn = phi { ptr, i32 } [ %.pn14, %.loopexit.split-lp ], [ %i.bc, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.cl = load ptr, ptr %0, align 8, !tbaa !21    ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.b
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.p
  %i.cn = load i64, ptr %i.b, align 8, !tbaa !22
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  resume { ptr, i32 } %.pn14.pn
}

declare void @_ZN5boost5beast4http10token_list14const_iterator9incrementEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast9unit_test5suite3runIvEEvRNS1_6runnerE(ptr noundef nonnull align 8 dereferenceable(808) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::allocator.0", align 1  ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::allocator.0", align 1  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !67
  %i.b = load ptr, ptr %0, align 8, !tbaa !46
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr noundef nonnull align 8 dereferenceable(808) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost5beast9unit_test5suite15abort_exceptionE
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.f = extractvalue { ptr, i32 } %i.e, 0        ; 2 uses
  %i.g = extractvalue { ptr, i32 } %i.e, 1        ; 2 uses
  %i.h = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost5beast9unit_test5suite15abort_exceptionE) #28
  %i.i = icmp eq i32 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @__cxa_begin_catch(ptr %i.f) #28 ; 0 uses
  tail call void @__cxa_end_catch()
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  %i.k = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #28
  %i.l = icmp eq i32 %i.g, %i.k
  %i.m = tail call ptr @__cxa_begin_catch(ptr %i.f) #28 ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  br i1 %i.l, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !46
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef ptr %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.m) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.r, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull @.str.115, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5boost5beast9unit_test6runner4failIvEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(88) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.s = load ptr, ptr %4, align 8, !tbaa !21     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !22
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.x = load ptr, ptr %5, align 8, !tbaa !21     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !22
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @__cxa_end_catch()
  br label %bb.d

bb.j:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.114, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN5boost5beast9unit_test6runner4failIvEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(88) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ac = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.l
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !22
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @__cxa_end_catch()
  br label %bb.d

bb.m:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

bb.n:                                             ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.n
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !22
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.m ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ], [ %i.ai, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  invoke void @__cxa_end_catch()
          to label %bb.r unwind label %bb.s

bb.o:                                             ; preds = %bb.f
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

bb.p:                                             ; preds = %bb.g
end_hunk_0
