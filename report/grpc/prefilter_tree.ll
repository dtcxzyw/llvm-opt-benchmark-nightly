Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/prefilter_tree?download=true
inline.NumInlined: 1189
inline.NumDeleted: 501
begin_hunk_0_@_ZNK3re213PrefilterTree8KeepNodeEPNS_9PrefilterE:bb.a
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.be
  store ptr %i.bc, ptr %i.bf, align 8, !tbaa !38
  br label %bb.q

bb.o:                                             ; preds = %.lr.ph43
  %i.bg = icmp eq ptr %i.bc, null
  br i1 %i.bg, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN3re29PrefilterD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %i.bc) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef 56) #20
  %.pre = load ptr, ptr %i.am, align 8, !tbaa !29
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.p, %bb.o
  %i.bh = phi ptr [ %i.ba, %bb.n ], [ %i.ba, %bb.o ], [ %.pre, %bb.p ] ; 3 uses
  %.1 = phi i32 [ %i.bd, %bb.n ], [ %.03041, %bb.o ], [ %.03041, %bb.p ] ; 2 uses
  %i.bi = add nuw i64 %.02942, 1                  ; 2 uses
  %i.bj = load ptr, ptr %i.an, align 8, !tbaa !28 ; 2 uses
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 3                 ; 2 uses
  %i.bo = icmp ult i64 %i.bi, %i.bn
  br i1 %i.bo, label %.lr.ph43, label %._crit_edge, !llvm.loop !74

bb.r:                                             ; preds = %.lr.ph
  %i.bp = add nuw i64 %.02838, 1                  ; 2 uses
  %i.bq = load ptr, ptr %i.c, align 8, !tbaa !72  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !28
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !29 ; 2 uses
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 3
  %.not = icmp ult i64 %i.bp, %i.bx
  br i1 %.not, label %.lr.ph, label %.loopexit, !llvm.loop !75

.lr.ph:                                           ; preds = %.preheader, %bb.r
  %i.by = phi ptr [ %i.bt, %bb.r ], [ %i.g, %.preheader ]
  %.02838 = phi i64 [ %i.bp, %bb.r ], [ 0, %.preheader ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %.02838
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !38
  %i.cb = tail call noundef zeroext i1 @_ZNK3re213PrefilterTree8KeepNodeEPNS_9PrefilterE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %i.ca) ; 3 uses
  br i1 %i.cb, label %bb.r, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.r, %.preheader, %bb.b, %bb.b, %bb.a, %_ZNSt6vectorIPN3re29PrefilterESaIS2_EE6resizeEm.exit, %bb.i, %_ZN10LogMessageD2Ev.exit
  %.132 = phi i1 [ false, %bb.b ], [ false, %_ZN10LogMessageD2Ev.exit ], [ false, %bb.a ], [ %i.ak, %bb.i ], [ %i.av, %_ZNSt6vectorIPN3re29PrefilterESaIS2_EE6resizeEm.exit ], [ false, %bb.b ], [ true, %.preheader ], [ %i.cb, %bb.r ], [ %i.cb, %.lr.ph ]
  ret i1 %.132
}

; Function Attrs: mustprogress uwtable
define void @_ZN3re213PrefilterTree7CompileEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.LogMessage, align 8          ; 13 uses
  %3 = alloca %"class.std::map", align 8          ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !41, !range !42, !noundef !43
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZN10LogMessageC2EPKci(ptr noundef nonnull align 8 dereferenceable(384) %2, ptr noundef nonnull @.str, i32 noundef 55)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.2, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.f = load i8, ptr %2, align 8, !tbaa !44, !range !42, !noundef !43
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZN10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(384) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.h = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.h, ptr %i.d, align 8, !tbaa !57
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.j = getelementptr i8, ptr %i.h, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %i.d, i64 %i.k
  store ptr %i.i, ptr %i.l, align 8, !tbaa !57
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.m, align 8, !tbaa !57
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !59   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZN10LogMessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.r = load i64, ptr %i.p, align 8, !tbaa !60
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #20
  br label %_ZN10LogMessageD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #22
  unreachable

_ZN10LogMessageD2Ev.exit:                         ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.m, align 8, !tbaa !57
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #21
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.w) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.l

bb.f:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.m

bb.g:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !76
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !76
  %i.ac = icmp eq ptr %i.z, %i.ab
  br i1 %i.ac, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.a, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.ad, align 8, !tbaa !77
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr null, ptr %i.ae, align 8, !tbaa !82
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.ad, ptr %i.af, align 8, !tbaa !83
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.ad, ptr %i.ag, align 8, !tbaa !84
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.ah, align 8, !tbaa !85
  invoke void @_ZN3re213PrefilterTree15AssignUniqueIdsEPSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_9PrefilterESt4lessIS7_ESaISt4pairIKS7_S9_EEEPSt6vectorIS7_SaIS7_EE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %3, ptr noundef %1)
          to label %.preheader31 unwind label %bb.j

.preheader31:                                     ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !34 ; 2 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !33    ; 5 uses
  %.not42 = icmp eq ptr %i.aj, %i.ak
  br i1 %.not42, label %._crit_edge41, label %.lr.ph40.preheader

.lr.ph40.preheader:                               ; preds = %.preheader31
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = sdiv exact i64 %i.an, 56
  br label %.lr.ph40

._crit_edge41:                                    ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit, %.preheader31
  %i.ap = load ptr, ptr %i.ae, align 8, !tbaa !82
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN3re29PrefilterEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.ap)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re29PrefilterESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %._crit_edge41
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #22
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re29PrefilterESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit: ; preds = %._crit_edge41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re29PrefilterESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.m

.lr.ph40:                                         ; preds = %.lr.ph40.preheader, %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %.01939 = phi i64 [ %i.bp, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ 0, %.lr.ph40.preheader ] ; 2 uses
  %i.at = getelementptr inbounds nuw [56 x i8], ptr %i.ak, i64 %.01939 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !86 ; 5 uses
  %i.ax = load ptr, ptr %i.au, align 8, !tbaa !30 ; 5 uses
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = icmp ult i64 %i.ba, 33
  %.not32 = icmp eq ptr %i.ax, %i.aw
  %or.cond = or i1 %i.bb, %.not32
  br i1 %or.cond, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %.lr.ph

._crit_edge:                                      ; preds = %bb.k
  br i1 %i.bg, label %.lr.ph37, label %_ZNSt6vectorIiSaIiEE5clearEv.exit

.lr.ph:                                           ; preds = %.lr.ph40, %.lr.ph.backedge
  %.01834 = phi i1 [ %.01834.be, %.lr.ph.backedge ], [ true, %.lr.ph40 ]
  %.sroa.026.033 = phi ptr [ %.sroa.026.033.be, %.lr.ph.backedge ], [ %i.ax, %.lr.ph40 ] ; 3 uses
  br i1 %.01834, label %bb.k, label %.thread

bb.k:                                             ; preds = %.lr.ph
  %i.bc = load i32, ptr %.sroa.026.033, align 4, !tbaa !87
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [56 x i8], ptr %i.ak, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !88
  %i.bg = icmp sgt i32 %i.bf, 1                   ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.026.033, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.bh, %i.aw
  br i1 %.not, label %._crit_edge, label %.lr.ph.backedge

.lr.ph.backedge:                                  ; preds = %bb.k, %.thread
  %.01834.be = phi i1 [ false, %.thread ], [ %i.bg, %bb.k ]
  %.sroa.026.033.be = phi ptr [ %i.bi, %.thread ], [ %i.bh, %bb.k ]
  br label %.lr.ph

.thread:                                          ; preds = %.lr.ph
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.026.033, i64 4 ; 2 uses
  %.not50 = icmp eq ptr %i.bi, %i.aw
  br i1 %.not50, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %.lr.ph.backedge

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %.lr.ph37
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !86
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

.lr.ph37:                                         ; preds = %._crit_edge, %.lr.ph37
  %.sroa.022.036 = phi ptr [ %i.bo, %.lr.ph37 ], [ %i.ax, %._crit_edge ] ; 2 uses
  %i.bj = load i32, ptr %.sroa.022.036, align 4, !tbaa !87
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [56 x i8], ptr %i.ak, i64 %i.bk ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !88
  %i.bn = add nsw i32 %i.bm, -1
  store i32 %i.bn, ptr %i.bl, align 8, !tbaa !88
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.022.036, i64 4 ; 2 uses
  %.not29 = icmp eq ptr %i.bo, %i.aw
  br i1 %.not29, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, label %.lr.ph37

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %.thread, %._crit_edge, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %.lr.ph40
  %i.bp = add nuw i64 %.01939, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bp, %i.ao
  br i1 %exitcond.not, label %._crit_edge41, label %.lr.ph40, !llvm.loop !90

bb.l:                                             ; preds = %bb.g, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN3re29PrefilterESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit, %_ZN10LogMessageD2Ev.exit
  ret void

bb.m:                                             ; preds = %bb.j, %bb.f
  %.pn = phi { ptr, i32 } [ %i.x, %bb.f ], [ %i.as, %bb.j ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN3re213PrefilterTree15AssignUniqueIdsEPSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_9PrefilterESt4lessIS7_ESaISt4pairIKS7_S9_EEEPSt6vectorIS7_SaIS7_EE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %class.LogMessage, align 8          ; 13 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !91     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !94   ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 3 uses
  %i.f = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !59 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !60
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #20
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.e
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !95

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.c, ptr %i.d, align 8, !tbaa !94
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !28
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !29   ; 2 uses
  %.not321 = icmp eq ptr %i.n, %i.o
  br i1 %.not321, label %._crit_edge308.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  br label %bb.b

.preheader:                                       ; preds = %_ZNSt6vectorIPN3re29PrefilterESaIS2_EE9push_backERKS2_.exit
  %i.s = ptrtoint ptr %.sroa.0.5 to i64
  %.not322 = icmp eq ptr %.sroa.16.4, %.sroa.0.5
  br i1 %.not322, label %._crit_edge308.thread, label %.lr.ph298

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPN3re29PrefilterESaIS2_EE9push_backERKS2_.exit
  %i.t = phi ptr [ %i.o, %.lr.ph ], [ %i.bk, %_ZNSt6vectorIPN3re29PrefilterESaIS2_EE9push_backERKS2_.exit ]
  %.062283 = phi i64 [ 0, %.lr.ph ], [ %i.bi, %_ZNSt6vectorIPN3re29PrefilterESaIS2_EE9push_backERKS2_.exit ] ; 3 uses
  %.sroa.25.0282 = phi ptr [ null, %.lr.ph ], [ %.sroa.25.5, %_ZNSt6vectorIPN3re29PrefilterESaIS2_EE9push_backERKS2_.exit ] ; 7 uses
  %.sroa.16.0281 = phi ptr [ null, %.lr.ph ], [ %.sroa.16.4, %_ZNSt6vectorIPN3re29PrefilterESaIS2_EE9push_backERKS2_.exit ] ; 3 uses
  %.sroa.0.0280 = phi ptr [ null, %.lr.ph ], [ %.sroa.0.5, %_ZNSt6vectorIPN3re29PrefilterESaIS2_EE9push_backERKS2_.exit ] ; 9 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.062283
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !38   ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.c, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.c:                                             ; preds = %bb.b
  %i.x = trunc i64 %.062283 to i32                ; 2 uses
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !86   ; 4 uses
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !31
  %.not.i.i98 = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i98, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.x, ptr %i.y, align 4, !tbaa !87
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store ptr %i.aa, ptr %i.q, align 8, !tbaa !86
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.e:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !30  ; 4 uses
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ae = sub i64 %i.ac, %i.ad                    ; 5 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775804
  br i1 %i.af, label %bb.f, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #23
          to label %.noexc unwind label %.loopexit.split-lp219

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.ag = ashr exact i64 %i.ae, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ag ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 2305843009213693951)
  %i.ak = select i1 %i.ai, i64 2305843009213693951, i64 %i.aj ; 3 uses
  %.not.i.i.i.i99 = icmp ne i64 %i.ak, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i99)
  %i.al = shl nuw nsw i64 %i.ak, 2
  %i.am = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #24
          to label %.noexc100 unwind label %.loopexit218 ; 4 uses

.noexc100:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 %i.ae ; 2 uses
  store i32 %i.x, ptr %i.an, align 4, !tbaa !87
  %i.ao = icmp sgt i64 %i.ae, 0
  br i1 %i.ao, label %bb.g, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.g:                                             ; preds = %.noexc100
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.am, ptr align 4 %i.ab, i64 %i.ae, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.g, %.noexc100
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.aq = load ptr, ptr %i.r, align 8, !tbaa !31
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ar, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.as) #20
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.am, ptr %i.p, align 8, !tbaa !30
  store ptr %i.ap, ptr %i.q, align 8, !tbaa !86
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ak
  store ptr %i.at, ptr %i.r, align 8, !tbaa !31
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

.loopexit218:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit220 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

.loopexit.split-lp219:                            ; preds = %bb.f
  %lpad.loopexit.split-lp221 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %bb.d, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.b
  %.not.i = icmp eq ptr %.sroa.16.0281, %.sroa.25.0282
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  store ptr %i.v, ptr %.sroa.16.0281, align 8, !tbaa !38
  br label %_ZNSt6vectorIPN3re29PrefilterESaIS2_EE9push_backERKS2_.exit

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.au = ptrtoint ptr %.sroa.25.0282 to i64
  %i.av = ptrtoint ptr %.sroa.0.0280 to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 6 uses
end_hunk_0
