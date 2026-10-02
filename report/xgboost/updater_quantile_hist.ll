Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/updater_quantile_hist?download=true
inline.NumInlined: 15946
inline.NumDeleted: 4545
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN4dmlc14LogCheckFormatImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_:bb.a
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !112 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !114
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #39
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ag, align 8, !tbaa !131
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.an) #11
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ao) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret void

bb.g:                                             ; preds = %bb.b, %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.body:                                            ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 32) #39
  br label %bb.h

bb.h:                                             ; preds = %.body, %bb.g
  %.pn = phi { ptr, i32 } [ %i.v, %.body ], [ %i.ap, %bb.g ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4dmlc14LogCheckFormatIPmS1_EESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS8_EERKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.26, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !562
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.b)
          to label %_ZNSolsEPKv.exit unwind label %bb.f ; 2 uses

_ZNSolsEPKv.exit:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.27, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5: ; preds = %_ZNSolsEPKv.exit
  %i.e = load ptr, ptr %2, align 8, !tbaa !562
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %i.e)
          to label %_ZNSolsEPKv.exit6 unwind label %bb.f

_ZNSolsEPKv.exit6:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.15, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7: ; preds = %_ZNSolsEPKv.exit6
  %i.h = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #38
          to label %bb.b unwind label %bb.f       ; 8 uses

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7
  call void @llvm.experimental.noalias.scope.decl(metadata !2507)
  call void @llvm.experimental.noalias.scope.decl(metadata !2508)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !125, !alias.scope !2509
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !113, !alias.scope !2509
  store i8 0, ptr %i.i, align 8, !tbaa !114, !alias.scope !2509
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !140, !noalias !2509 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.l, null
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !noalias !2509 ; 2 uses
  %i.o = icmp ugt ptr %i.l, %i.n
  %.08.i.i.i = select i1 %i.o, ptr %i.l, ptr %i.n ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !141, !noalias !2509 ; 2 uses
  %i.r = ptrtoint ptr %.08.i.i.i to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef 0, i64 noundef 0, ptr noundef %i.q, i64 noundef %i.t)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !112, !alias.scope !2509 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.i
  br i1 %i.x, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.y = load i64, ptr %i.i, align 8, !tbaa !114, !alias.scope !2509
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #39
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  store ptr %i.h, ptr %0, align 8, !tbaa !111
  %i.ab = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ab, ptr %3, align 8, !tbaa !131
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ad = getelementptr i8, ptr %i.ab, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %3, i64 %i.ae
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !131
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ag, align 8, !tbaa !131
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !112 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !114
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #39
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ag, align 8, !tbaa !131
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.an) #11
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ao) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret void

bb.f:                                             ; preds = %_ZNSolsEPKv.exit6, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5, %_ZNSolsEPKv.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 32) #39
  br label %bb.g

bb.g:                                             ; preds = %.body, %bb.f
  %.pn = phi { ptr, i32 } [ %i.v, %.body ], [ %i.ap, %bb.f ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7xgboost6common16RowSetCollection4ElemESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !565  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !259    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !260
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 24                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 384307168202282325, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.08.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.057.i.i.i.prol = phi i64 [ %i.q, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.prol, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.p, align 8, !tbaa !96
  %i.q = add nsw i64 %.057.i.i.i.prol, -1         ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !2510

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.prol ]
  %i.s = icmp ult i64 %1, 8
  br i1 %i.s, label %_ZSt27__uninitialized_default_n_aIPN7xgboost6common16RowSetCollection4ElemEmS3_ET_S5_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 17 uses
  %.057.i.i.i = phi i64 [ %i.ai, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.t, align 8, !tbaa !96
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.v, align 8, !tbaa !96
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.x, align 8, !tbaa !96
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.z, align 8, !tbaa !96
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 96
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.ab, align 8, !tbaa !96
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 120
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.ad, align 8, !tbaa !96
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 144
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.af, align 8, !tbaa !96
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 168
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.ah, align 8, !tbaa !96
  %i.ai = add nsw i64 %.057.i.i.i, -8             ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.7 = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i.7, label %_ZSt27__uninitialized_default_n_aIPN7xgboost6common16RowSetCollection4ElemEmS3_ET_S5_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !2511

_ZSt27__uninitialized_default_n_aIPN7xgboost6common16RowSetCollection4ElemEmS3_ET_S5_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.aj, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !565
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ak = icmp ult i64 %i.n, %1
  br i1 %i.ak, label %bb.d, label %_ZNKSt6vectorIN7xgboost6common16RowSetCollection4ElemESaIS3_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #37
  unreachable

_ZNKSt6vectorIN7xgboost6common16RowSetCollection4ElemESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.al = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.al, i64 384307168202282325) ; 2 uses
  %i.an = mul nuw nsw i64 %i.am, 24
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #38 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.f ; 3 uses
  %xtraiter44 = and i64 %1, 7                     ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN7xgboost6common16RowSetCollection4ElemESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.08.i.i.i31.prol = phi ptr [ %i.as, %.lr.ph.i.i.i30.prol ], [ %i.ap, %_ZNKSt6vectorIN7xgboost6common16RowSetCollection4ElemESaIS3_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.057.i.i.i32.prol = phi i64 [ %i.ar, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorIN7xgboost6common16RowSetCollection4ElemESaIS3_EE12_M_check_lenEmPKc.exit ]
  %prol.iter46 = phi i64 [ %prol.iter46.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorIN7xgboost6common16RowSetCollection4ElemESaIS3_EE12_M_check_lenEmPKc.exit ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i31.prol, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.aq, align 8, !tbaa !96
  %i.ar = add nsw i64 %.057.i.i.i32.prol, -1      ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 24 ; 2 uses
  %prol.iter46.next = add i64 %prol.iter46, 1     ; 2 uses
  %prol.iter46.cmp.not = icmp eq i64 %prol.iter46.next, %xtraiter44
  br i1 %prol.iter46.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !2512

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN7xgboost6common16RowSetCollection4ElemESaIS3_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i31.unr = phi ptr [ %i.ap, %_ZNKSt6vectorIN7xgboost6common16RowSetCollection4ElemESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.as, %.lr.ph.i.i.i30.prol ]
  %.057.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN7xgboost6common16RowSetCollection4ElemESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.ar, %.lr.ph.i.i.i30.prol ]
  %i.at = icmp ult i64 %1, 8
  br i1 %i.at, label %_ZSt27__uninitialized_default_n_aIPN7xgboost6common16RowSetCollection4ElemEmS3_ET_S5_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.bk, %.lr.ph.i.i.i30 ], [ %.08.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 17 uses
  %.057.i.i.i32 = phi i64 [ %i.bj, %.lr.ph.i.i.i30 ], [ %.057.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i31, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.au, align 8, !tbaa !96
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.aw, align 8, !tbaa !96
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.ay, align 8, !tbaa !96
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 72
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.ba, align 8, !tbaa !96
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 96
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.bc, align 8, !tbaa !96
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 120
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.be, align 8, !tbaa !96
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 144
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.bg, align 8, !tbaa !96
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 168
  %i.bi = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.bi, align 8, !tbaa !96
  %i.bj = add nsw i64 %.057.i.i.i32, -8           ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 192
  %.not.i.i.i33.7 = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i33.7, label %_ZSt27__uninitialized_default_n_aIPN7xgboost6common16RowSetCollection4ElemEmS3_ET_S5_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !2511

_ZSt27__uninitialized_default_n_aIPN7xgboost6common16RowSetCollection4ElemEmS3_ET_S5_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7xgboost6common16RowSetCollection4ElemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN7xgboost6common16RowSetCollection4ElemEmS3_ET_S5_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i37 ], [ %i.ao, %_ZSt27__uninitialized_default_n_aIPN7xgboost6common16RowSetCollection4ElemEmS3_ET_S5_T0_RSaIT1_E.exit35 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN7xgboost6common16RowSetCollection4ElemEmS3_ET_S5_T0_RSaIT1_E.exit35 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i64 24, i1 false), !tbaa.struct !576, !alias.scope !2516
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %.not.i.i.i38 = icmp eq ptr %i.bl, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN7xgboost6common16RowSetCollection4ElemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i37, !llvm.loop !17

_ZNSt6vectorIN7xgboost6common16RowSetCollection4ElemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIPN7xgboost6common16RowSetCollection4ElemEmS3_ET_S5_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN7xgboost6common16RowSetCollection4ElemESaIS3_EE13_M_deallocateEPS3_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN7xgboost6common16RowSetCollection4ElemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %i.bn = load ptr, ptr %i.h, align 8, !tbaa !260
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = sub i64 %i.bo, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bp) #39
  br label %_ZNSt12_Vector_baseIN7xgboost6common16RowSetCollection4ElemESaIS3_EE13_M_deallocateEPS3_m.exit41

_ZNSt12_Vector_baseIN7xgboost6common16RowSetCollection4ElemESaIS3_EE13_M_deallocateEPS3_m.exit41: ; preds = %_ZNSt6vectorIN7xgboost6common16RowSetCollection4ElemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %bb.e
  store ptr %i.ao, ptr %0, align 8, !tbaa !259
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %1
  store ptr %i.bq, ptr %i.a, align 8, !tbaa !565
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.br, ptr %i.h, align 8, !tbaa !260
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN7xgboost6common16RowSetCollection4ElemEmS3_ET_S5_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN7xgboost6common16RowSetCollection4ElemESaIS3_EE13_M_deallocateEPS3_m.exit41, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost4tree20CommonRowPartitioner14UpdatePositionIjLb1ELb1ENS0_16MultiExpandEntryENS0_19MultiTargetTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS_6common12ColumnMatrixERKSt6vectorIT2_SaISG_EERKT3_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(225) %2, ptr noundef nonnull align 8 dereferenceable(218) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(192) %5) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::vector", align 8       ; 13 uses
  %7 = alloca %"class.xgboost::common::BlockedSpace2d", align 8 ; 13 uses
  %8 = alloca %class.anon.681, align 8            ; 6 uses
  %9 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %10 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %11 = alloca %class.anon.683, align 8           ; 10 uses
  %12 = alloca %class.anon.684, align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !356  ; 2 uses
  %i.c = load ptr, ptr %4, align 8, !tbaa !379    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 104                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !802
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.not69 = icmp eq ptr %i.b, %i.c
  br i1 %.not69, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.l = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #37
          to label %.noexc47 unwind label %bb.e

.noexc47:                                         ; preds = %bb.d
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.c
  %i.m = shl nuw nsw i64 %i.g, 2
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #38
          to label %.noexc48 unwind label %bb.e   ; 4 uses

.noexc48:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  store i32 0, ptr %i.n, align 4, !tbaa !109
  %i.o = add nsw i64 %i.g, -1                     ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc48
  %i.q = getelementptr i8, ptr %i.n, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.o, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.q, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !109
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc48
  store ptr %i.n, ptr %6, align 8, !tbaa !93
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.g ; 2 uses
  store ptr %i.r, ptr %i.j, align 8, !tbaa !92
  store ptr %i.r, ptr %i.k, align 8, !tbaa !294
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.b, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i
  invoke void @_ZN7xgboost4tree20CommonRowPartitioner19FindSplitConditionsINS0_16MultiExpandEntryENS_16GHistIndexMatrixENS0_19MultiTargetTreeViewEEEvRKSt6vectorIT_SaIS7_EERKT1_RKT0_PS6_IiSaIiEE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(192) %5, ptr noundef nonnull align 8 dereferenceable(225) %2, ptr noundef nonnull %6)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i, %bb.d, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  store ptr %4, ptr %8, align 8, !tbaa !701
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %0, ptr %i.t, align 8, !tbaa !881
  invoke void @_ZN7xgboost6common14BlockedSpace2dC2IZNS_4tree20CommonRowPartitioner14UpdatePositionIjLb1ELb1ENS3_16MultiExpandEntryENS3_19MultiTargetTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT2_SaISI_EERKT3_EUlmE_EEmOT_m(ptr noundef nonnull align 8 dereferenceable(48) %7, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef 2048)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !726
  %i.x = load ptr, ptr %7, align 8, !tbaa !414
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 4
  invoke void @_ZN7xgboost6common16PartitionBuilderILm2048EE4InitIZNS_4tree20CommonRowPartitioner14UpdatePositionIjLb1ELb1ENS4_16MultiExpandEntryENS4_19MultiTargetTreeViewEEEvPKNS_7ContextERKNS_16GHistIndexMatrixERKNS0_12ColumnMatrixERKSt6vectorIT2_SaISJ_EERKT3_EUlmE0_EEvmmT_(ptr noundef nonnull align 8 dereferenceable(80) %i.u, i64 noundef %i.ab, i64 noundef %i.g, ptr nonnull %4, ptr nonnull %0)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 2 uses
  %i.ad = load i64, ptr %0, align 8, !tbaa !91, !noalias !2519
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !91, !noalias !2519
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
          to label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit unwind label %bb.m

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.i
  %.pr = load ptr, ptr %9, align 8, !tbaa !111
  %.not51 = icmp eq ptr %.pr, null
  br i1 %.not51, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  %i.ag = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc34 unwind label %bb.n

.noexc34:                                         ; preds = %bb.j
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ag, ptr noundef nonnull @.str.108, i32 noundef 168)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.n

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc34
  %i.ah = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.o ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull @.str.109, i64 noundef 29)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39 unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ak = load ptr, ptr %9, align 8, !tbaa !111   ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !112
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !113
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef %i.al, i64 noundef %i.an)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.o

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42 unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.q unwind label %bb.n

bb.k:                                             ; preds = %bb.f
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %bb.af

bb.l:                                             ; preds = %bb.w, %_ZN7xgboost6common16PartitionBuilderILm2048EE19CalculateRowOffsetsEv.exit, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, %bb.g
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae
end_hunk_0
begin_hunk_1_@_ZN7xgboost6common13ParallelFor2dIZNS_4tree22MultiTargetHistBuilder14ExpandTreeLeafERKNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEPNS_7RegTreeEEUlmNS0_7Range1dEE_EEvRKNS0_14BlockedSpace2dEiOT_:bb.a
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 4
  store i64 %i.k, ptr %i.d, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %1, ptr %i.a, align 4, !tbaa !109, !noalias !3104
  store i32 1, ptr %i.b, align 4, !tbaa !109, !noalias !3104
  %.not.i = icmp slt i32 %1, 1
  br i1 %.not.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.a
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.pr = load ptr, ptr %4, align 8, !tbaa !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.l = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.l, ptr noundef nonnull @.str.45, i32 noundef 142)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.c

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.m = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.d ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.46, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.p = load ptr, ptr %4, align 8, !tbaa !111    ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !112
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !113
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef %i.q, i64 noundef %i.s)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.d

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %.noexc, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.e unwind label %bb.o

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.v, %bb.c ], [ %i.w, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.n

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %.pr23 = load ptr, ptr %4, align 8, !tbaa !111  ; 4 uses
  %.not.i17 = icmp eq ptr %.pr23, null
  br i1 %.not.i17, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %.pr23, align 8, !tbaa !112 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.pr23, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !114
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr23, i64 noundef 32) #39
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.f, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, i8 0, i64 48, i1 false)
  store ptr %i.d, ptr %7, align 8, !tbaa !562
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.c, ptr %i.ac, align 8, !tbaa !115
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %2, ptr %i.ad, align 8, !tbaa !138
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %0, ptr %i.ae, align 8, !tbaa !739
  invoke void @_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor2dIZNS2_4tree22MultiTargetHistBuilder14ExpandTreeLeafERKNS2_6linalg6TensorINS2_6detail20GradientPairInternalIfEELi2EEEPNS2_7RegTreeEEUlmNS3_7Range1dEE_EEvRKNS3_14BlockedSpace2dEiOT_EUlvE_JEEEvSM_DpT0_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull byval(%class.anon.803) align 8 %7)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.af = load ptr, ptr %6, align 8, !tbaa !591   ; 2 uses
  %.not.i18 = icmp eq ptr %i.af, null
  br i1 %.not.i18, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i: ; preds = %bb.h
  store ptr %i.af, ptr %3, align 8, !tbaa !591
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %3) #37
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i
  unreachable

bb.j:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %3, align 8, !tbaa !591
  %.not.i2.i = icmp eq ptr %i.ah, null
  br i1 %.not.i2.i, label %.body, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  br label %.body

_ZN4dmlc12OMPExceptionD2Ev.exit:                  ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  ret void

bb.l:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.j, %bb.k, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.ai, %bb.l ], [ %i.ag, %bb.k ], [ %i.ag, %bb.j ]
  %i.aj = load ptr, ptr %6, align 8, !tbaa !591
  %.not.i.i20 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i20, label %_ZN4dmlc12OMPExceptionD2Ev.exit22, label %bb.m

bb.m:                                             ; preds = %.body
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(48) %6) #11
  br label %_ZN4dmlc12OMPExceptionD2Ev.exit22

_ZN4dmlc12OMPExceptionD2Ev.exit22:                ; preds = %.body, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %bb.n

bb.n:                                             ; preds = %_ZN4dmlc12OMPExceptionD2Ev.exit22, %bb.e
  %.pn7 = phi { ptr, i32 } [ %eh.lpad-body, %_ZN4dmlc12OMPExceptionD2Ev.exit22 ], [ %.pn, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  resume { ptr, i32 } %.pn7

bb.o:                                             ; preds = %bb.d
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #40
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost4tree12ReduceToRowsINS_6detail20GradientPairInternalIdEEEENS_6linalg6TensorIT_Li2EEEPKNS_7ContextERKNS5_10TensorViewIS7_Li3EEE(ptr dead_on_unwind noalias writable sret(%"class.xgboost::linalg::Tensor") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(84) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !91
  store i64 %i.e, ptr %i.a, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !91
  store i64 %i.g, ptr %i.b, align 8, !tbaa !91
  call void @_ZN7xgboost6linalg8ConstantINS_6detail20GradientPairInternalIdEEJmmEEEDaPKNS_7ContextET_DpOT0_(ptr dead_on_unwind writable sret(%"class.xgboost::linalg::Tensor") align 8 %0, ptr noundef %1, double 0.000000e+00, double 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.h = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN7xgboost16HostDeviceVectorINS_6detail20GradientPairInternalIdEEE10HostVectorEv(ptr noundef nonnull align 8 dereferenceable(25) %0)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !301, !noalias !3113 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i8, ptr %i.j, align 8, !tbaa !417, !noalias !3113
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !91, !noalias !3113
  switch i8 %i.k, label %bb.c [
    i8 0, label %bb.d
    i8 1, label %bb.b
  ]

bb.b:                                             ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !91, !noalias !3113
  br label %bb.d

bb.c:                                             ; preds = %.noexc
  call void @_ZSt9terminatev() #40, !noalias !3113
  unreachable

bb.d:                                             ; preds = %bb.b, %.noexc
  %.sroa.6.0 = phi i64 [ %i.o, %bb.b ], [ 1, %.noexc ] ; 4 uses
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ %i.m, %.noexc ] ; 3 uses
  %i.p = load i64, ptr %i.c, align 8, !tbaa !91   ; 2 uses
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %._crit_edge26.split, label %.preheader21.lr.ph

.preheader21.lr.ph:                               ; preds = %bb.d
  %i.q = load i64, ptr %i.d, align 8, !tbaa !91   ; 3 uses
  %.not28 = icmp eq i64 %i.q, 0
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 64
  br i1 %.not28, label %._crit_edge26.split, label %.preheader21.lr.ph.split

.preheader21.lr.ph.split:                         ; preds = %.preheader21.lr.ph
  %i.u = load i64, ptr %i.f, align 8, !tbaa !91   ; 9 uses
  %.not29 = icmp eq i64 %i.u, 0
  br i1 %.not29, label %._crit_edge26.split, label %.preheader21.lr.ph.split.split

.preheader21.lr.ph.split.split:                   ; preds = %.preheader21.lr.ph.split
  %i.v = load i64, ptr %2, align 8, !tbaa !91     ; 2 uses
  %i.w = load i64, ptr %i.r, align 8, !tbaa !91   ; 3 uses
  %i.x = load i64, ptr %i.s, align 8, !tbaa !91   ; 4 uses
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !407  ; 4 uses
  %i.z = add i64 %i.u, -1                         ; 2 uses
  %i.aa = add i64 %i.q, -1                        ; 2 uses
  %i.ab = mul i64 %.sroa.0.0, %i.aa
  %i.ac = shl i64 %i.ab, 4                        ; 2 uses
  %i.ad = shl i64 %i.u, 4                         ; 4 uses
  %i.ae = getelementptr i8, ptr %i.i, i64 %i.ac
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.ad
  %scevgep = getelementptr i8, ptr %i.af, i64 -8
  %i.ag = mul i64 %i.w, %i.aa
  %i.ah = shl i64 %i.ag, 4                        ; 2 uses
  %i.ai = shl i64 %i.v, 4
  %3 = getelementptr i8, ptr %i.i, <2 x i64> <i64 0, i64 8>
  %i.aj = getelementptr i8, ptr %i.i, i64 %i.ac
  %scevgep39 = getelementptr i8, ptr %i.aj, i64 %i.ad
  %i.ak = getelementptr i8, ptr %i.y, i64 %i.ah
  %i.al = getelementptr i8, ptr %i.ak, i64 %i.ad
  %i.am = getelementptr i8, ptr %i.al, i64 -8
  %i.an = getelementptr i8, ptr %i.y, i64 %i.ah
  %i.ao = getelementptr i8, ptr %i.an, i64 %i.ad
  %i.ap = insertelement <2 x ptr> poison, ptr %scevgep, i64 0
  %i.aq = insertelement <2 x ptr> %i.ap, ptr %scevgep39, i64 1
  %min.iters.check = icmp ult i64 %i.u, 20
  %ident.check = icmp ne i64 %.sroa.6.0, 1
  %ident.check36 = icmp ne i64 %i.x, 1
  %mul.result = shl i64 %i.z, 4                   ; 2 uses
  %mul.overflow = icmp ugt i64 %i.z, 1152921504606846975
  %i.ar = or i1 %ident.check, %ident.check36
  %invariant.op = or i1 %mul.overflow, %i.ar
  %i.as = or i64 %i.w, %.sroa.0.0
  %.mask = and i64 %i.as, 576460752303423488
  %i.at = icmp ne i64 %.mask, 0
  %n.vec = and i64 %i.u, 2305843009213693950      ; 3 uses
  %cmp.n = icmp eq i64 %i.u, %n.vec
  %xtraiter = and i64 %i.u, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader21

.preheader21:                                     ; preds = %.preheader21.lr.ph.split.split, %._crit_edge24
  %storemerge25 = phi i64 [ 0, %.preheader21.lr.ph.split.split ], [ %i.ci, %._crit_edge24 ] ; 3 uses
  %i.au = mul i64 %i.ai, %storemerge25            ; 3 uses
  %scevgep37 = getelementptr i8, ptr %i.am, i64 %i.au
  %i.av = getelementptr i8, ptr %i.y, i64 %i.au
  %scevgep40 = getelementptr i8, ptr %i.av, i64 8
  %scevgep41 = getelementptr i8, ptr %i.ao, i64 %i.au
  %i.aw = mul i64 %i.v, %storemerge25
  %i.ax = getelementptr [16 x i8], ptr %i.y, i64 %i.aw ; 2 uses
  %i.ay = insertelement <2 x ptr> poison, ptr %scevgep37, i64 0
  %i.az = insertelement <2 x ptr> %i.ay, ptr %scevgep41, i64 1
  %i.ba = insertelement <2 x ptr> poison, ptr %i.ax, i64 0
  %i.bb = insertelement <2 x ptr> %i.ba, ptr %scevgep40, i64 1
  %i.bc = icmp ult <2 x ptr> %3, %i.az
  %i.bd = icmp ult <2 x ptr> %i.bb, %i.aq
  %i.be = and <2 x i1> %i.bc, %i.bd
  %i.bf = bitcast <2 x i1> %i.be to i2
  %i.bg = icmp ne i2 %i.bf, 0
  %op.rdx51 = or i1 %i.bg, %i.at
  br label %.preheader

._crit_edge26.split:                              ; preds = %._crit_edge24, %.preheader21.lr.ph, %.preheader21.lr.ph.split, %bb.d
  ret void

bb.e:                                             ; preds = %bb.a
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7xgboost16HostDeviceVectorINS_6detail20GradientPairInternalIdEEED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(25) %0) #11
  resume { ptr, i32 } %i.bh

.preheader:                                       ; preds = %.preheader21, %._crit_edge
  %storemerge1023 = phi i64 [ 0, %.preheader21 ], [ %i.cj, %._crit_edge ] ; 3 uses
  %i.bi = mul i64 %i.w, %storemerge1023
  %i.bj = getelementptr [16 x i8], ptr %i.ax, i64 %i.bi ; 7 uses
  %i.bk = mul i64 %storemerge1023, %.sroa.0.0
  %i.bl = getelementptr [16 x i8], ptr %i.i, i64 %i.bk ; 7 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  %i.bm = getelementptr i8, ptr %i.bl, i64 %mul.result
  %i.bn = icmp ult ptr %i.bm, %i.bl
  %i.bo = getelementptr i8, ptr %i.bj, i64 %mul.result
  %i.bp = icmp ult ptr %i.bo, %i.bj
  %.reass = or i1 %i.bn, %invariant.op
  %i.bq = or i1 %i.bp, %.reass
  %brmerge = select i1 %i.bq, i1 true, i1 %op.rdx51
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.scevcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.scevcheck ] ; 4 uses
  %i.br = or disjoint i64 %index, 1               ; 2 uses
  %i.bs = getelementptr [16 x i8], ptr %i.bj, i64 %index
  %i.bt = getelementptr [16 x i8], ptr %i.bj, i64 %i.br
  %i.bu = getelementptr [16 x i8], ptr %i.bl, i64 %index ; 2 uses
  %i.bv = getelementptr [16 x i8], ptr %i.bl, i64 %i.br ; 2 uses
  %wide.load = load <2 x double>, ptr %i.bs, align 8
  %wide.load48 = load <2 x double>, ptr %i.bt, align 8
  %wide.load49 = load <2 x double>, ptr %i.bu, align 8
  %wide.load50 = load <2 x double>, ptr %i.bv, align 8
  %i.bw = fadd <2 x double> %wide.load, %wide.load49
  %i.bx = fadd <2 x double> %wide.load48, %wide.load50
  store <2 x double> %i.bw, ptr %i.bu, align 8
  store <2 x double> %i.bx, ptr %i.bv, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !3109

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.preheader, %middle.block
  %storemerge1122.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %vector.scevcheck ], [ 0, %.preheader ] ; 5 uses
  %.neg = or disjoint i64 %storemerge1122.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bz = mul i64 %i.x, %storemerge1122.ph
  %i.ca = getelementptr [16 x i8], ptr %i.bj, i64 %i.bz
  %i.cb = mul i64 %storemerge1122.ph, %.sroa.6.0
  %i.cc = getelementptr [16 x i8], ptr %i.bl, i64 %i.cb ; 2 uses
  %i.cd = load <2 x double>, ptr %i.ca, align 8, !tbaa !632
  %i.ce = load <2 x double>, ptr %i.cc, align 8, !tbaa !632
  %i.cf = fadd <2 x double> %i.cd, %i.ce
  store <2 x double> %i.cf, ptr %i.cc, align 8, !tbaa !632
  %i.cg = or disjoint i64 %storemerge1122.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %storemerge1122.unr = phi i64 [ %storemerge1122.ph, %scalar.ph.preheader ], [ %i.cg, %scalar.ph.prol ]
  %i.ch = icmp eq i64 %i.u, %.neg
  br i1 %i.ch, label %._crit_edge, label %scalar.ph

._crit_edge24:                                    ; preds = %._crit_edge
  %i.ci = add nuw i64 %storemerge25, 1            ; 2 uses
  %exitcond31.not = icmp eq i64 %i.ci, %i.p
  br i1 %exitcond31.not, label %._crit_edge26.split, label %.preheader21, !llvm.loop !3110

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.cj = add nuw i64 %storemerge1023, 1          ; 2 uses
  %exitcond30.not = icmp eq i64 %i.cj, %i.q
  br i1 %exitcond30.not, label %._crit_edge24, label %.preheader, !llvm.loop !3111

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %storemerge1122 = phi i64 [ %i.cz, %scalar.ph ], [ %storemerge1122.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ck = mul i64 %i.x, %storemerge1122
  %i.cl = getelementptr [16 x i8], ptr %i.bj, i64 %i.ck
  %i.cm = mul i64 %storemerge1122, %.sroa.6.0
  %i.cn = getelementptr [16 x i8], ptr %i.bl, i64 %i.cm ; 2 uses
  %i.co = load <2 x double>, ptr %i.cl, align 8, !tbaa !632
  %i.cp = load <2 x double>, ptr %i.cn, align 8, !tbaa !632
  %i.cq = fadd <2 x double> %i.co, %i.cp
  store <2 x double> %i.cq, ptr %i.cn, align 8, !tbaa !632
  %i.cr = add nuw i64 %storemerge1122, 1          ; 2 uses
  %i.cs = mul i64 %i.x, %i.cr
  %i.ct = getelementptr [16 x i8], ptr %i.bj, i64 %i.cs
  %i.cu = mul i64 %i.cr, %.sroa.6.0
  %i.cv = getelementptr [16 x i8], ptr %i.bl, i64 %i.cu ; 2 uses
  %i.cw = load <2 x double>, ptr %i.ct, align 8, !tbaa !632
  %i.cx = load <2 x double>, ptr %i.cv, align 8, !tbaa !632
  %i.cy = fadd <2 x double> %i.cw, %i.cx
  store <2 x double> %i.cy, ptr %i.cv, align 8, !tbaa !632
  %i.cz = add nuw i64 %storemerge1122, 2          ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.cz, %i.u
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !3112
}

declare void @_ZN7xgboost7RegTree9SetLeavesESt6vectorIiSaIiEENS_6common4SpanIKfLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef align 8, i64, ptr) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorINS_6detail20GradientPairInternalIfEEE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4dmlc14LogCheckFormatIimEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.26, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.b = load i32, ptr %1, align 4, !tbaa !109
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %i.b)
          to label %bb.b unwind label %bb.g       ; 2 uses

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.27, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5: ; preds = %bb.b
  %i.e = load i64, ptr %2, align 8, !tbaa !91
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef %i.e)
          to label %_ZNSolsEm.exit unwind label %bb.g

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.15, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6: ; preds = %_ZNSolsEm.exit
  %i.h = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #38
          to label %bb.c unwind label %bb.g       ; 8 uses

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6
  call void @llvm.experimental.noalias.scope.decl(metadata !3118)
  call void @llvm.experimental.noalias.scope.decl(metadata !3119)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !125, !alias.scope !3120
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !113, !alias.scope !3120
  store i8 0, ptr %i.i, align 8, !tbaa !114, !alias.scope !3120
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !140, !noalias !3120 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.l, null
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !noalias !3120 ; 2 uses
  %i.o = icmp ugt ptr %i.l, %i.n
  %.08.i.i.i = select i1 %i.o, ptr %i.l, ptr %i.n ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !141, !noalias !3120 ; 2 uses
  %i.r = ptrtoint ptr %.08.i.i.i to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef 0, i64 noundef 0, ptr noundef %i.q, i64 noundef %i.t)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !112, !alias.scope !3120 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.i
  br i1 %i.x, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.y = load i64, ptr %i.i, align 8, !tbaa !114, !alias.scope !3120
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #39
  br label %.body

bb.f:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.f, %bb.d
  store ptr %i.h, ptr %0, align 8, !tbaa !111
  %i.ab = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ab, ptr %3, align 8, !tbaa !131
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ad = getelementptr i8, ptr %i.ab, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
end_hunk_1
begin_hunk_2_@_ZN7xgboost4tree11HistUpdater8InitRootEPNS_7DMatrixENS_6linalg10TensorViewIKNS_6detail20GradientPairInternalIfEELi2EEEPNS_7RegTreeE:._crit_edge.i.i
bb.da:                                            ; preds = %.lr.ph.i.i.i
  %i.pb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !347
  %i.pd = ptrtoint ptr %i.pc to i64
  %i.pe = ptrtoint ptr %i.pa to i64
  %i.pf = sub i64 %i.pd, %i.pe
  call void @_ZdlPvm(ptr noundef nonnull %i.pa, i64 noundef %i.pf) #39
  br label %_ZSt8_DestroyIN7xgboost4tree14CPUExpandEntryEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7xgboost4tree14CPUExpandEntryEEvPT_.exit.i.i.i: ; preds = %bb.da, %.lr.ph.i.i.i
  %i.pg = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 88 ; 2 uses
  %.not.i.i.i178 = icmp eq ptr %i.pg, %i.oy
  br i1 %.not.i.i.i178, label %_ZSt8_DestroyIPN7xgboost4tree14CPUExpandEntryES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !12

_ZSt8_DestroyIPN7xgboost4tree14CPUExpandEntryES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7xgboost4tree14CPUExpandEntryEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %17, align 8, !tbaa !474
  br label %_ZSt8_DestroyIPN7xgboost4tree14CPUExpandEntryES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7xgboost4tree14CPUExpandEntryES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7xgboost4tree14CPUExpandEntryES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.cz
  %i.ph = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7xgboost4tree14CPUExpandEntryES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.ox, %bb.cz ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ph, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7xgboost4tree14CPUExpandEntryESaIS2_EED2Ev.exit, label %bb.db

bb.db:                                            ; preds = %_ZSt8_DestroyIPN7xgboost4tree14CPUExpandEntryES2_EvT_S4_RSaIT0_E.exit.i
  %i.pi = load ptr, ptr %i.je, align 8, !tbaa !458
  %i.pj = ptrtoint ptr %i.pi to i64
  %i.pk = ptrtoint ptr %i.ph to i64
  %i.pl = sub i64 %i.pj, %i.pk
  call void @_ZdlPvm(ptr noundef nonnull %i.ph, i64 noundef %i.pl) #39
  br label %_ZNSt6vectorIN7xgboost4tree14CPUExpandEntryESaIS2_EED2Ev.exit

_ZNSt6vectorIN7xgboost4tree14CPUExpandEntryESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7xgboost4tree14CPUExpandEntryES2_EvT_S4_RSaIT0_E.exit.i, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  %i.pm = load ptr, ptr %1, align 8, !tbaa !484
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #11
  %i.pn = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 6 uses
  store ptr %i.pn, ptr %25, align 8, !tbaa !125
  store i64 8390047030745591369, ptr %i.pn, align 8
  %i.po = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 8, ptr %i.po, align 8, !tbaa !113
  %i.pp = getelementptr inbounds nuw i8, ptr %25, i64 24
  store i8 0, ptr %i.pp, align 8, !tbaa !114
  invoke void @_ZN7xgboost6common7Monitor4StopERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(96) %i.pm, ptr noundef nonnull align 8 dereferenceable(32) %25)
          to label %bb.dc unwind label %bb.dh

bb.dc:                                            ; preds = %_ZNSt6vectorIN7xgboost4tree14CPUExpandEntryESaIS2_EED2Ev.exit
  %i.pq = load ptr, ptr %25, align 8, !tbaa !112  ; 2 uses
  %i.pr = icmp eq ptr %i.pq, %i.pn
  br i1 %i.pr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184: ; preds = %bb.dc
  %i.ps = load i64, ptr %i.pn, align 8, !tbaa !114
  %i.pt = add i64 %i.ps, 1
  call void @_ZdlPvm(ptr noundef %i.pq, i64 noundef %i.pt) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186: ; preds = %bb.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #11
  ret void

bb.dd:                                            ; preds = %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEED2Ev.exit169
  %i.pu = landingpad { ptr, i32 }
          cleanup
  %i.pv = load ptr, ptr %24, align 8, !tbaa !112  ; 2 uses
  %i.pw = icmp eq ptr %i.pv, %i.ok
  br i1 %i.pw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187: ; preds = %bb.dd
  %i.px = load i64, ptr %i.ok, align 8, !tbaa !114
  %i.py = add i64 %i.px, 1
  call void @_ZdlPvm(ptr noundef %i.pv, i64 noundef %i.py) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189: ; preds = %bb.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #11
  br label %bb.de

bb.de:                                            ; preds = %bb.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, %.body147, %bb.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154
  %.pn92.pn = phi { ptr, i32 } [ %i.lx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154 ], [ %i.mc, %bb.by ], [ %i.pu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189 ], [ %.pn86.pn, %.body147 ], [ %i.md, %bb.bz ]
  call void @_ZNSt6vectorIN7xgboost4tree14CPUExpandEntryESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #11
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %.loopexit
  %.pn92.pn.pn = phi { ptr, i32 } [ %.pn92.pn, %bb.de ], [ %.pn82, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #11
  br label %bb.dg

bb.dg:                                            ; preds = %bb.bt, %bb.bu, %bb.df, %bb.af, %bb.ap, %bb.ao, %bb.ag, %bb.ax, %bb.ac
  %.pn92.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dx, %bb.ag ], [ %.pn79, %bb.ax ], [ %i.du, %bb.ac ], [ %.pn71, %bb.af ], [ %i.ez, %bb.ap ], [ %.pn73.pn, %bb.ao ], [ %.pn92.pn.pn, %bb.df ], [ %i.lo, %bb.bu ], [ %i.ln, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.di

bb.dh:                                            ; preds = %_ZNSt6vectorIN7xgboost4tree14CPUExpandEntryESaIS2_EED2Ev.exit
  %i.pz = landingpad { ptr, i32 }
          cleanup
  %i.qa = load ptr, ptr %25, align 8, !tbaa !112  ; 2 uses
  %i.qb = icmp eq ptr %i.qa, %i.pn
  br i1 %i.qb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190: ; preds = %bb.dh
  %i.qc = load i64, ptr %i.pn, align 8, !tbaa !114
  %i.qd = add i64 %i.qc, 1
  call void @_ZdlPvm(ptr noundef %i.qa, i64 noundef %i.qd) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192: ; preds = %bb.dh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #11
  br label %bb.di

bb.di:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, %bb.dg, %bb.ab
  %.pn98.pn = phi { ptr, i32 } [ %i.pz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192 ], [ %.pn92.pn.pn.pn.pn, %bb.dg ], [ %.pn69, %bb.ab ] ; 2 uses
  %i.qe = load ptr, ptr %i.p, align 8, !tbaa !346 ; 3 uses
  %.not.i.i.i.i.i193 = icmp eq ptr %i.qe, null
  br i1 %.not.i.i.i.i.i193, label %_ZN7xgboost4tree14CPUExpandEntryD2Ev.exit194, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !347
  %i.qh = ptrtoint ptr %i.qg to i64
  %i.qi = ptrtoint ptr %i.qe to i64
  %i.qj = sub i64 %i.qh, %i.qi
  call void @_ZdlPvm(ptr noundef nonnull %i.qe, i64 noundef %i.qj) #39
  br label %_ZN7xgboost4tree14CPUExpandEntryD2Ev.exit194

_ZN7xgboost4tree14CPUExpandEntryD2Ev.exit194:     ; preds = %bb.dj, %bb.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119
  %.pn98.pn.pn = phi { ptr, i32 } [ %i.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ], [ %.pn98.pn, %bb.di ], [ %.pn98.pn, %bb.dj ]
  resume { ptr, i32 } %.pn98.pn.pn

bb.dk:                                            ; preds = %bb.aj
  %i.qk = landingpad { ptr, i32 }
          catch ptr null
  %i.ql = extractvalue { ptr, i32 } %i.qk, 0
  call void @__clang_call_terminate(ptr %i.ql) #40
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost4tree6DriverINS0_14CPUExpandEntryEE3PopEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.807") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.22 = alloca { i8, %"struct.xgboost::tree::GradStats", %"struct.xgboost::tree::GradStats" }, align 8 ; 5 uses
  %2 = alloca [1 x %"struct.xgboost::tree::CPUExpandEntry"], align 8 ; 18 uses
  %3 = alloca %"struct.xgboost::tree::CPUExpandEntry", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !453  ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !453
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.az

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !3226
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.ac

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.22)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !109  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.8.copyload = load float, ptr %i.j, align 8 ; 3 uses
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.k = load i64, ptr %.sroa.9.8..sroa_idx, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !459  ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !346  ; 3 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q                       ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = icmp ugt i64 %i.r, 9223372036854775804
  br i1 %i.s, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !170

.noexc.i.i.i.i:                                   ; preds = %bb.e
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #37
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.e
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #38
  %.pre60 = load ptr, ptr %i.l, align 8, !tbaa !115 ; 3 uses
  %.pre61 = load ptr, ptr %i.m, align 8, !tbaa !115 ; 2 uses
  %.pre62 = ptrtoint ptr %.pre61 to i64
  %.pre63 = ptrtoint ptr %.pre60 to i64
  %i.u = icmp eq ptr %.pre61, %.pre60
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i, %bb.d
  %.pre-phi64 = phi i64 [ %.pre63, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.q, %bb.d ]
  %.pre-phi = phi i64 [ %.pre62, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.p, %bb.d ]
  %.not.i.i.i.i.i.i14 = phi i1 [ %i.u, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i ], [ true, %bb.d ]
  %i.v = phi ptr [ %.pre60, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.o, %bb.d ] ; 2 uses
  %i.w = phi ptr [ %i.t, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i ], [ null, %bb.d ] ; 8 uses
  %i.x = sub i64 %.pre-phi, %.pre-phi64           ; 9 uses
  %i.y = icmp sgt i64 %i.x, 4                     ; 2 uses
  br i1 %i.y, label %bb.g, label %bb.h, !prof !194

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.w, ptr align 4 %i.v, i64 %i.x, i1 false)
  br label %_ZN7xgboost4tree14CPUExpandEntryC2ERKS1_.exit

bb.h:                                             ; preds = %bb.f
  %i.z = icmp eq i64 %i.x, 4
  br i1 %i.z, label %bb.i, label %_ZN7xgboost4tree14CPUExpandEntryC2ERKS1_.exit

bb.i:                                             ; preds = %bb.h
  %i.aa = load i32, ptr %i.v, align 4, !tbaa !109
  store i32 %i.aa, ptr %i.w, align 4, !tbaa !109
  br label %_ZN7xgboost4tree14CPUExpandEntryC2ERKS1_.exit

_ZN7xgboost4tree14CPUExpandEntryC2ERKS1_.exit:    ; preds = %bb.g, %bb.h, %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.22, ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i64 40, i1 false)
  invoke void @_ZNSt14priority_queueIN7xgboost4tree14CPUExpandEntryESt6vectorIS2_SaIS2_EESt8functionIFbS2_S2_EEE3popEv(ptr noundef nonnull align 8 dereferenceable(56) %i.a)
          to label %bb.j unwind label %bb.v

bb.j:                                             ; preds = %_ZN7xgboost4tree14CPUExpandEntryC2ERKS1_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !1004 ; 2 uses
  %i.ae = fcmp ole float %.sroa.6.8.copyload, f0x358637BD
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load float, ptr %i.af, align 8
  %i.ah = fcmp olt float %.sroa.6.8.copyload, %i.ag
  %or.cond15.i = select i1 %i.ae, i1 true, i1 %i.ah
  br i1 %or.cond15.i, label %_ZN7xgboost4tree18IsValidExpandEntryINS0_14CPUExpandEntryEEEbRKT_RKNS0_10TrainParamEi.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !555 ; 2 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  %.sroa.044.4.extract.shift = lshr i64 %i.i, 32
  %.sroa.044.4.extract.trunc = trunc nuw i64 %.sroa.044.4.extract.shift to i32
  %i.al = icmp eq i32 %i.aj, %.sroa.044.4.extract.trunc
  %or.cond18.i = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond18.i, label %_ZN7xgboost4tree18IsValidExpandEntryINS0_14CPUExpandEntryEEEbRKT_RKNS0_10TrainParamEi.exit.thread, label %_ZN7xgboost4tree18IsValidExpandEntryINS0_14CPUExpandEntryEEEbRKT_RKNS0_10TrainParamEi.exit

_ZN7xgboost4tree18IsValidExpandEntryINS0_14CPUExpandEntryEEEbRKT_RKNS0_10TrainParamEi.exit: ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !556 ; 2 uses
  %i.ao = icmp slt i32 %i.an, 1
  %i.ap = icmp ne i32 %i.ad, %i.an
  %or.cond.not.i = or i1 %i.ao, %i.ap
  br i1 %or.cond.not.i, label %bb.l, label %_ZN7xgboost4tree18IsValidExpandEntryINS0_14CPUExpandEntryEEEbRKT_RKNS0_10TrainParamEi.exit.thread

bb.l:                                             ; preds = %_ZN7xgboost4tree18IsValidExpandEntryINS0_14CPUExpandEntryEEEbRKT_RKNS0_10TrainParamEi.exit
  %i.aq = add nsw i32 %i.ad, 1
  store i32 %i.aq, ptr %i.ac, align 8, !tbaa !1004
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store i64 %i.i, ptr %2, align 8, !tbaa !109
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %.sroa.6.8.copyload, ptr %i.ar, align 8
  %.sroa.9.8..sroa_idx46 = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i64 %i.k, ptr %.sroa.9.8..sroa_idx46, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i14, label %.thread, label %bb.m

.thread:                                          ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.au = getelementptr inbounds i8, ptr null, i64 %i.x ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  store ptr %i.au, ptr %i.av, align 8, !tbaa !347
  br label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.aw = icmp ugt i64 %i.x, 9223372036854775804
  br i1 %i.aw, label %.noexc.i.i.i.i16, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i15, !prof !170

.noexc.i.i.i.i16:                                 ; preds = %bb.m
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #37
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %.noexc.i.i.i.i16
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i15: ; preds = %bb.m
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #38
          to label %.noexc17 unwind label %bb.w   ; 5 uses

.noexc17:                                         ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i15
  store ptr %i.ax, ptr %i.as, align 8, !tbaa !346
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !459
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.x ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !347
  br i1 %i.y, label %bb.n, label %bb.o, !prof !3227

bb.n:                                             ; preds = %.noexc17
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ax, ptr align 4 %i.w, i64 %i.x, i1 false)
  br label %bb.q

bb.o:                                             ; preds = %.noexc17
  %i.bb = icmp eq i64 %i.x, 4
  br i1 %i.bb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bc = load i32, ptr %i.w, align 4, !tbaa !109
  store i32 %i.bc, ptr %i.ax, align 4, !tbaa !109
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %.thread
  %i.bd = phi ptr [ %i.az, %bb.n ], [ %i.az, %bb.o ], [ %i.az, %bb.p ], [ %i.au, %.thread ]
  %i.be = phi ptr [ %i.ay, %bb.n ], [ %i.ay, %bb.o ], [ %i.ay, %bb.p ], [ %i.at, %.thread ]
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !459
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bf, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.22, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.bg = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #38
          to label %_ZNSt12_Vector_baseIN7xgboost4tree14CPUExpandEntryESaIS2_EE11_M_allocateEm.exit.i.i unwind label %bb.r ; 3 uses

_ZNSt12_Vector_baseIN7xgboost4tree14CPUExpandEntryESaIS2_EE11_M_allocateEm.exit.i.i: ; preds = %bb.q
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 88
  store ptr %i.bg, ptr %0, align 8, !tbaa !474
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 88
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !458
  %i.bk = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN7xgboost4tree14CPUExpandEntryEPS2_ET0_T_S7_S6_(ptr noundef nonnull %2, ptr noundef nonnull %i.bh, ptr noundef nonnull %i.bg)
          to label %bb.t unwind label %bb.r

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIN7xgboost4tree14CPUExpandEntryESaIS2_EE11_M_allocateEm.exit.i.i, %bb.q
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = load ptr, ptr %0, align 8, !tbaa !474   ; 3 uses
  %.not.i.i5.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i5.i, label %.body, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !458
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bm to i64
  %i.br = sub i64 %i.bp, %i.bq
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.br) #39
  br label %.body

bb.t:                                             ; preds = %_ZNSt12_Vector_baseIN7xgboost4tree14CPUExpandEntryESaIS2_EE11_M_allocateEm.exit.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bk, ptr %i.bs, align 8, !tbaa !457
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !346 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i.i, label %_ZN7xgboost4tree14CPUExpandEntryD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !347
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = sub i64 %i.bx, %i.by
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.bz) #39
  br label %_ZN7xgboost4tree14CPUExpandEntryD2Ev.exit

_ZN7xgboost4tree14CPUExpandEntryD2Ev.exit:        ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.y

bb.v:                                             ; preds = %_ZN7xgboost4tree14CPUExpandEntryC2ERKS1_.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.w:                                             ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i15, %.noexc.i.i.i.i16
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body:                                            ; preds = %bb.r, %bb.s
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !346 ; 3 uses
  %.not.i.i.i.i.i19 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i.i19, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %.body
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !347
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.cd to i64
  %i.ci = sub i64 %i.cg, %i.ch
  call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.ci) #39
  br label %.loopexit

.loopexit:                                        ; preds = %bb.x, %.body, %bb.w
  %.pn10 = phi { ptr, i32 } [ %i.cb, %bb.w ], [ %i.bl, %.body ], [ %i.bl, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.aa

_ZN7xgboost4tree18IsValidExpandEntryINS0_14CPUExpandEntryEEEbRKT_RKNS0_10TrainParamEi.exit.thread: ; preds = %bb.k, %bb.j, %_ZN7xgboost4tree18IsValidExpandEntryINS0_14CPUExpandEntryEEEbRKT_RKNS0_10TrainParamEi.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.y

bb.y:                                             ; preds = %_ZN7xgboost4tree18IsValidExpandEntryINS0_14CPUExpandEntryEEEbRKT_RKNS0_10TrainParamEi.exit.thread, %_ZN7xgboost4tree14CPUExpandEntryD2Ev.exit
  %.not.i.i.i.i.i21 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i21, label %_ZN7xgboost4tree14CPUExpandEntryD2Ev.exit22, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.r) #39
  br label %_ZN7xgboost4tree14CPUExpandEntryD2Ev.exit22

_ZN7xgboost4tree14CPUExpandEntryD2Ev.exit22:      ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22)
  br label %bb.az

bb.aa:                                            ; preds = %.loopexit, %bb.v
  %.pn10.pn = phi { ptr, i32 } [ %.pn10, %.loopexit ], [ %i.ca, %bb.v ]
  %.not.i.i.i.i.i23 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i23, label %_ZN7xgboost4tree14CPUExpandEntryD2Ev.exit24, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.r) #39
  br label %_ZN7xgboost4tree14CPUExpandEntryD2Ev.exit24

_ZN7xgboost4tree14CPUExpandEntryD2Ev.exit24:      ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22)
  br label %bb.ba

bb.ac:                                            ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.cj = load i64, ptr %i.b, align 8, !tbaa !109
  store i64 %i.cj, ptr %3, align 8, !tbaa !109
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ck, ptr noundef nonnull align 8 dereferenceable(80) %i.cl, i64 12, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !459 ; 2 uses
  %i.cq = load ptr, ptr %i.cn, align 8, !tbaa !346 ; 3 uses
  %i.cr = ptrtoint ptr %i.cp to i64               ; 2 uses
  %i.cs = ptrtoint ptr %i.cq to i64               ; 2 uses
  %i.ct = sub i64 %i.cr, %i.cs                    ; 3 uses
  %.not.i.i.i.i.i.i25 = icmp eq ptr %i.cp, %i.cq
  br i1 %.not.i.i.i.i.i.i25, label %.noexc29, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cu = icmp ugt i64 %i.ct, 9223372036854775804
  br i1 %i.cu, label %.noexc.i.i.i.i27, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i26, !prof !170

.noexc.i.i.i.i27:                                 ; preds = %bb.ad
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #37
          to label %.noexc28 unwind label %bb.at

.noexc28:                                         ; preds = %.noexc.i.i.i.i27
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i26: ; preds = %bb.ad
  %i.cv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ct) #38
          to label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i26..noexc29_crit_edge unwind label %bb.at

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i26..noexc29_crit_edge: ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i26
  %.pre = load ptr, ptr %i.cn, align 8, !tbaa !115 ; 2 uses
  %.pre58 = load ptr, ptr %i.co, align 8, !tbaa !115
  %.pre65 = ptrtoint ptr %.pre58 to i64
  %.pre67 = ptrtoint ptr %.pre to i64
  br label %.noexc29

.noexc29:                                         ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i26..noexc29_crit_edge, %bb.ac
  %.pre-phi68 = phi i64 [ %.pre67, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i26..noexc29_crit_edge ], [ %i.cs, %bb.ac ]
  %.pre-phi66 = phi i64 [ %.pre65, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i26..noexc29_crit_edge ], [ %i.cr, %bb.ac ]
  %i.cw = phi ptr [ %.pre, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i26..noexc29_crit_edge ], [ %i.cq, %bb.ac ] ; 2 uses
  %i.cx = phi ptr [ %i.cv, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i26..noexc29_crit_edge ], [ null, %bb.ac ] ; 5 uses
  store ptr %i.cx, ptr %i.cm, align 8, !tbaa !346
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.ct
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !347
  %i.db = sub i64 %.pre-phi66, %.pre-phi68        ; 4 uses
  %i.dc = icmp sgt i64 %i.db, 4
  br i1 %i.dc, label %bb.ae, label %bb.af, !prof !194

bb.ae:                                            ; preds = %.noexc29
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.cx, ptr align 4 %i.cw, i64 %i.db, i1 false)
  br label %.lr.ph

bb.af:                                            ; preds = %.noexc29
  %i.dd = icmp eq i64 %i.db, 4
  br i1 %i.dd, label %bb.ag, label %.lr.ph

bb.ag:                                            ; preds = %bb.af
  %i.de = load i32, ptr %i.cw, align 4, !tbaa !109
  store i32 %i.de, ptr %i.cx, align 4, !tbaa !109
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.ae, %bb.af, %bb.ag
  %i.df = getelementptr inbounds i8, ptr %i.cx, i64 %i.db
  store ptr %i.df, ptr %i.cy, align 8, !tbaa !459
end_hunk_2
