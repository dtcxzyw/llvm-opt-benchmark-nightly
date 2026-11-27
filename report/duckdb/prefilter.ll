Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/prefilter?download=true
inline.NumInlined: 718
inline.NumDeleted: 287
begin_hunk_0_@_ZN10duckdb_re29Prefilter4Info8ToStringB5cxx11Ev:bb.a
  tail call void @_ZdlPv(ptr noundef %i.q) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.014.020, i64 40
  %i.t = load i64, ptr %i.s, align 8, !tbaa !35   ; 2 uses
  %i.u = load i64, ptr %i.e, align 8, !tbaa !35
  %i.v = sub i64 4611686018427387903, %i.u
  %i.w = icmp ult i64 %i.v, %i.t
  br i1 %i.w, label %.loopexit27.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

.loopexit27.invoke:                               ; preds = %.lr.ph.peel.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #22
          to label %.loopexit27.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit27.cont:                                 ; preds = %.loopexit27.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.014.020, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !42
  %i.z = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.y, i64 noundef %i.t)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.aa = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.014.020) #23 ; 2 uses
  %.not17 = icmp eq ptr %i.aa, %i.h
  br i1 %.not17, label %.loopexit, label %.lr.ph.peel.next, !llvm.loop !148

bb.c:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !69 ; 2 uses
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNK10duckdb_re29Prefilter11DebugStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(52) %i.ac)
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.ad, ptr %0, align 8, !tbaa !32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ae, align 8, !tbaa !35
  store i8 0, ptr %i.ad, align 8, !tbaa !36
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel, %bb.b, %bb.e, %bb.d
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %lpad.loopexit.split-lp35
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK10duckdb_re29Prefilter11DebugStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(52) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !152 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %class.LogMessage, align 8          ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %i.b = load i32, ptr %1, align 8, !tbaa !40
  switch i32 %i.b, label %bb.b [
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 0, label %bb.i
    i32 3, label %bb.j
    i32 4, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store i8 0, ptr %2, align 8, !tbaa !81
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.c)
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.4, i64 noundef 34)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.e = load i32, ptr %1, align 8, !tbaa !40
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef %i.e)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.g = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.g, ptr %i.c, align 8, !tbaa !83
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.i = getelementptr i8, ptr %i.g, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %i.c, i64 %i.j
  store ptr %i.h, ptr %i.k, align 8, !tbaa !83
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.l, align 8, !tbaa !83
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !42   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN10LogMessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  call void @_ZdlPv(ptr noundef %i.n) #20
  br label %_ZN10LogMessageD2Ev.exit

_ZN10LogMessageD2Ev.exit:                         ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.l, align 8, !tbaa !83
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #21
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.r) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.s = load i32, ptr %1, align 8, !tbaa !40
  call void (ptr, ptr, ...) @_ZN10duckdb_re212StringPrintfB5cxx11EPKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull @.str.5, i32 noundef %i.s)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit94

bb.d:                                             ; preds = %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

bb.e:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.u, ptr noundef nonnull align 1 dereferenceable(12) @.str.6, i64 12, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 12, ptr %i.v, align 8, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 0, ptr %i.w, align 4, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit94

bb.f:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.y, ptr %0, align 8, !tbaa !32
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !42   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !35 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.ab, ptr %i.a, align 8, !tbaa !84
  %i.ac = icmp ugt i64 %i.ab, 15
  br i1 %i.ac, label %.noexc.i64, label %._crit_edge.i.i63

.noexc.i64:                                       ; preds = %bb.f
  %i.ad = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ad, ptr %0, align 8, !tbaa !42
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !84
  store i64 %i.ae, ptr %i.y, align 8, !tbaa !36
  br label %._crit_edge.i.i63

._crit_edge.i.i63:                                ; preds = %.noexc.i64, %bb.f
  %i.af = phi ptr [ %i.ad, %.noexc.i64 ], [ %i.y, %bb.f ] ; 2 uses
  switch i64 %i.ab, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i63
  %i.ag = load i8, ptr %i.z, align 1, !tbaa !36
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.h:                                             ; preds = %._crit_edge.i.i63
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %i.z, i64 %i.ab, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i63, %bb.g, %bb.h
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !84  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !35
  %i.aj = load ptr, ptr %0, align 8, !tbaa !42
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 0, ptr %i.ak, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit94

bb.i:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.al, ptr %0, align 8, !tbaa !32
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.am, align 8, !tbaa !35
  store i8 0, ptr %i.al, align 8, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit94

bb.j:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.an, ptr %0, align 8, !tbaa !32
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 0, ptr %i.ao, align 8, !tbaa !35
  store i8 0, ptr %i.an, align 8, !tbaa !36
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !41 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !46
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !47 ; 2 uses
  %.not144 = icmp eq ptr %i.as, %i.at
  br i1 %.not144, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit94, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel: ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 21 ; 2 uses
  %.pre187 = load ptr, ptr %i.at, align 8, !tbaa !49 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %.not50.peel = icmp eq ptr %.pre187, null
  br i1 %.not50.peel, label %.thread, label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel
  invoke void @_ZNK10duckdb_re29Prefilter11DebugStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(52) %.pre187)
          to label %bb.l unwind label %.loopexit.split-lp169.loopexit.split-lp.loopexit.split-lp

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel
  store ptr %i.au, ptr %3, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.au, ptr noundef nonnull align 1 dereferenceable(5) @.str.8, i64 5, i1 false)
  store i64 5, ptr %i.av, align 8, !tbaa !35
  store i8 0, ptr %i.aw, align 1, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel

bb.l:                                             ; preds = %bb.k
  %.pre189 = load i64, ptr %i.av, align 8, !tbaa !35 ; 2 uses
  %.pre190 = load i64, ptr %i.ao, align 8, !tbaa !35
  %i.ax = sub i64 4611686018427387903, %.pre190
  %i.ay = icmp ult i64 %i.ax, %.pre189
  br i1 %i.ay, label %.loopexit172, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel: ; preds = %.thread, %bb.l
  %i.az = phi i64 [ 5, %.thread ], [ %.pre189, %bb.l ]
  %i.ba = load ptr, ptr %3, align 8, !tbaa !42
  %i.bb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ba, i64 noundef %i.az)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel unwind label %.loopexit.split-lp122.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel
  %i.bc = load ptr, ptr %3, align 8, !tbaa !42    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.au
  br i1 %i.bd, label %.critedge.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel
  call void @_ZdlPv(ptr noundef %i.bc) #20
  br label %.critedge.peel

.critedge.peel:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.be = load ptr, ptr %i.ap, align 8, !tbaa !41 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !46
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !47
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = icmp ugt i64 %i.bk, 8
  br i1 %i.bl, label %.peel.next162, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit94

.peel.next162:                                    ; preds = %.critedge.peel, %.critedge
  %.031140 = phi i64 [ %i.bx, %.critedge ], [ 1, %.critedge.peel ] ; 2 uses
  %i.bm = load i64, ptr %i.ao, align 8, !tbaa !35
  %i.bn = icmp eq i64 %i.bm, 4611686018427387903
  br i1 %i.bn, label %.loopexit164, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

.loopexit164:                                     ; preds = %.peel.next162
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #22
          to label %.noexc73 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc73:                                         ; preds = %.loopexit164
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %.peel.next162
  %i.bo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.7, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %.loopexit164
  %lpad.loopexit.split-lp233 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %.pre191 = load ptr, ptr %i.ap, align 8, !tbaa !41
  %.pre192 = load ptr, ptr %.pre191, align 8, !tbaa !47
  %.phi.trans.insert193 = getelementptr inbounds nuw [8 x i8], ptr %.pre192, i64 %.031140
  %.pre194 = load ptr, ptr %.phi.trans.insert193, align 8, !tbaa !49 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %.not50 = icmp eq ptr %.pre194, null
  br i1 %.not50, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.exit78, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  invoke void @_ZNK10duckdb_re29Prefilter11DebugStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(52) %.pre194)
          to label %._crit_edge195 unwind label %.loopexit.split-lp169.loopexit.split-lp.loopexit.split-lp

._crit_edge195:                                   ; preds = %bb.m
  %.pre196 = load i64, ptr %i.av, align 8, !tbaa !35
  br label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.exit78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  store ptr %i.au, ptr %3, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.au, ptr noundef nonnull align 1 dereferenceable(5) @.str.8, i64 5, i1 false)
  store i64 5, ptr %i.av, align 8, !tbaa !35
  store i8 0, ptr %i.aw, align 1, !tbaa !36
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge195, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.exit78
  %i.bp = phi i64 [ %.pre196, %._crit_edge195 ], [ 5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.exit78 ] ; 2 uses
  %i.bq = load i64, ptr %i.ao, align 8, !tbaa !35
  %i.br = sub i64 4611686018427387903, %i.bq
  %i.bs = icmp ult i64 %i.br, %i.bp
  br i1 %i.bs, label %.loopexit172, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

.loopexit172:                                     ; preds = %bb.n, %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #22
          to label %.noexc79 unwind label %.loopexit.split-lp122.loopexit.split-lp.loopexit.split-lp

.noexc79:                                         ; preds = %.loopexit172
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.n
  %i.bt = load ptr, ptr %3, align 8, !tbaa !42
  %i.bu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.bt, i64 noundef %i.bp)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit.split-lp122.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.bv = load ptr, ptr %3, align 8, !tbaa !42    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.au
  br i1 %i.bw, label %.critedge, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  call void @_ZdlPv(ptr noundef %i.bv) #20
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.bx = add nuw i64 %.031140, 1                 ; 2 uses
  %i.by = load ptr, ptr %i.ap, align 8, !tbaa !41 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !46
  %i.cb = load ptr, ptr %i.by, align 8, !tbaa !47
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = ashr exact i64 %i.ce, 3
  %i.cg = icmp ult i64 %i.bx, %i.cf
  br i1 %i.cg, label %.peel.next162, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit94, !llvm.loop !150

.loopexit.split-lp169.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.m, %bb.k
  %lpad.loopexit.split-lp235 = landingpad { ptr, i32 }
          cleanup
  br label %.critedge58

.loopexit.split-lp122.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel, %.loopexit172
  %lpad.loopexit.split-lp238 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ch = load ptr, ptr %3, align 8, !tbaa !42    ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.au
  br i1 %i.ci, label %.critedge58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %.loopexit.split-lp122.loopexit.split-lp.loopexit.split-lp
  call void @_ZdlPv(ptr noundef %i.ch) #20
  br label %.critedge58

.critedge58:                                      ; preds = %.loopexit.split-lp122.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp169.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81
  %.pn51.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp235, %.loopexit.split-lp169.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp238, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81 ], [ %lpad.loopexit.split-lp238, %.loopexit.split-lp122.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.critedge58
  %.pn51.pn.pn = phi { ptr, i32 } [ %.pn51.pn, %.critedge58 ], [ %lpad.loopexit.split-lp233, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.cj = load ptr, ptr %0, align 8, !tbaa !42    ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.an
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %.loopexit.split-lp
  call void @_ZdlPv(ptr noundef %i.cj) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

bb.o:                                             ; preds = %bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cl, ptr %0, align 8, !tbaa !32
  store i8 40, ptr %i.cl, align 8, !tbaa !36
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i64 1, ptr %i.cm, align 8, !tbaa !35
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.cn, align 1, !tbaa !36
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !41 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !46
  %i.cs = load ptr, ptr %i.cp, align 8, !tbaa !47 ; 2 uses
  %.not143 = icmp eq ptr %i.cr, %i.cs
  br i1 %.not143, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i91, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit98.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit98.peel: ; preds = %bb.o
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 21 ; 2 uses
  %.pre = load ptr, ptr %i.cs, align 8, !tbaa !49 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %.not44.peel = icmp eq ptr %.pre, null
  br i1 %.not44.peel, label %.thread217, label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit98.peel
  invoke void @_ZNK10duckdb_re29Prefilter11DebugStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(52) %.pre)
          to label %bb.q unwind label %.loopexit.split-lp153.loopexit.split-lp.loopexit.split-lp

.thread217:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit98.peel
  store ptr %i.ct, ptr %4, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ct, ptr noundef nonnull align 1 dereferenceable(5) @.str.8, i64 5, i1 false)
  store i64 5, ptr %i.cu, align 8, !tbaa !35
  store i8 0, ptr %i.cv, align 1, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i103.peel

bb.q:                                             ; preds = %bb.p
  %.pre178 = load i64, ptr %i.cu, align 8, !tbaa !35 ; 2 uses
  %.pre179 = load i64, ptr %i.cm, align 8, !tbaa !35
  %i.cw = sub i64 4611686018427387903, %.pre179
  %i.cx = icmp ult i64 %i.cw, %.pre178
  br i1 %i.cx, label %.loopexit157, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i103.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i103.peel: ; preds = %.thread217, %bb.q
  %i.cy = phi i64 [ 5, %.thread217 ], [ %.pre178, %bb.q ]
  %i.cz = load ptr, ptr %4, align 8, !tbaa !42
  %i.da = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.cz, i64 noundef %i.cy)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit106.peel unwind label %.loopexit.split-lp132.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit106.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i103.peel
  %i.db = load ptr, ptr %4, align 8, !tbaa !42    ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.ct
  br i1 %i.dc, label %.critedge60.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i108.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i108.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit106.peel
  call void @_ZdlPv(ptr noundef %i.db) #20
  br label %.critedge60.peel

.critedge60.peel:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit106.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i108.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.dd = load ptr, ptr %i.co, align 8, !tbaa !41 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !46
  %i.dg = load ptr, ptr %i.dd, align 8, !tbaa !47
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = icmp ugt i64 %i.dj, 8
  br i1 %i.dk, label %.peel.next, label %._crit_edge

._crit_edge:                                      ; preds = %.critedge60, %.critedge60.peel
  %.pre185 = load i64, ptr %i.cm, align 8, !tbaa !35
  %i.dl = icmp eq i64 %.pre185, 4611686018427387903
  br i1 %i.dl, label %.loopexit.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i91: ; preds = %bb.o, %._crit_edge
  %i.dm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.11, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit94 unwind label %.loopexit.split-lp127.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.peel.next:                                       ; preds = %.critedge60.peel, %.critedge60
  %.026139 = phi i64 [ %i.dy, %.critedge60 ], [ 1, %.critedge60.peel ] ; 2 uses
  %i.dn = load i64, ptr %i.cm, align 8, !tbaa !35
  %i.do = icmp eq i64 %i.dn, 4611686018427387903
  br i1 %i.do, label %.loopexit.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i95

.loopexit.invoke:                                 ; preds = %.peel.next, %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #22
          to label %.loopexit.cont unwind label %.loopexit.split-lp127.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.cont:                                   ; preds = %.loopexit.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i95: ; preds = %.peel.next
  %i.dp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.10, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit98 unwind label %.loopexit.split-lp127.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp127.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i95, %.loopexit.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i91
  %lpad.loopexit.split-lp241 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp127

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit98: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i95
  %.pre180 = load ptr, ptr %i.co, align 8, !tbaa !41
  %.pre181 = load ptr, ptr %.pre180, align 8, !tbaa !47
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre181, i64 %.026139
  %.pre182 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !49 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %.not44 = icmp eq ptr %.pre182, null
  br i1 %.not44, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.exit102, label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit98
  invoke void @_ZNK10duckdb_re29Prefilter11DebugStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(52) %.pre182)
          to label %._crit_edge183 unwind label %.loopexit.split-lp153.loopexit.split-lp.loopexit.split-lp

._crit_edge183:                                   ; preds = %bb.r
  %.pre184 = load i64, ptr %i.cu, align 8, !tbaa !35
  br label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.exit102: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit98
  store ptr %i.ct, ptr %4, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ct, ptr noundef nonnull align 1 dereferenceable(5) @.str.8, i64 5, i1 false)
  store i64 5, ptr %i.cu, align 8, !tbaa !35
  store i8 0, ptr %i.cv, align 1, !tbaa !36
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge183, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.exit102
  %i.dq = phi i64 [ %.pre184, %._crit_edge183 ], [ 5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.exit102 ] ; 2 uses
  %i.dr = load i64, ptr %i.cm, align 8, !tbaa !35
  %i.ds = sub i64 4611686018427387903, %i.dr
  %i.dt = icmp ult i64 %i.ds, %i.dq
  br i1 %i.dt, label %.loopexit157, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i103

.loopexit157:                                     ; preds = %bb.s, %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #22
          to label %.noexc104 unwind label %.loopexit.split-lp132.loopexit.split-lp.loopexit.split-lp

.noexc104:                                        ; preds = %.loopexit157
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i103: ; preds = %bb.s
  %i.du = load ptr, ptr %4, align 8, !tbaa !42
  %i.dv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.du, i64 noundef %i.dq)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit106 unwind label %.loopexit.split-lp132.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit106: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i103
  %i.dw = load ptr, ptr %4, align 8, !tbaa !42    ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.ct
  br i1 %i.dx, label %.critedge60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit106
  call void @_ZdlPv(ptr noundef %i.dw) #20
  br label %.critedge60

.critedge60:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.dy = add nuw i64 %.026139, 1                 ; 2 uses
  %i.dz = load ptr, ptr %i.co, align 8, !tbaa !41 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !46
  %i.ec = load ptr, ptr %i.dz, align 8, !tbaa !47
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = ashr exact i64 %i.ef, 3
  %i.eh = icmp ult i64 %i.dy, %i.eg
  br i1 %i.eh, label %.peel.next, label %._crit_edge, !llvm.loop !151

.loopexit.split-lp153.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.r, %bb.p
  %lpad.loopexit.split-lp244 = landingpad { ptr, i32 }
          cleanup
  br label %.critedge62

.loopexit.split-lp132.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i103, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i103.peel, %.loopexit157
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ei = load ptr, ptr %4, align 8, !tbaa !42    ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.ct
  br i1 %i.ej, label %.critedge62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %.loopexit.split-lp132.loopexit.split-lp.loopexit.split-lp
  call void @_ZdlPv(ptr noundef %i.ei) #20
  br label %.critedge62

.critedge62:                                      ; preds = %.loopexit.split-lp132.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp153.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp244, %.loopexit.split-lp153.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp132.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.loopexit.split-lp127

.loopexit.split-lp127:                            ; preds = %.loopexit.split-lp127.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.critedge62
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.critedge62 ], [ %lpad.loopexit.split-lp241, %.loopexit.split-lp127.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.ek = load ptr, ptr %0, align 8, !tbaa !42    ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.cl
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113: ; preds = %.loopexit.split-lp127
  call void @_ZdlPv(ptr noundef %i.ek) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit94: ; preds = %.critedge, %.critedge.peel, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i91, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %bb.e, %_ZN10LogMessageD2Ev.exit
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %.loopexit.split-lp127, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84, %bb.d
  %.pn55 = phi { ptr, i32 } [ %i.t, %bb.d ], [ %.pn51.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84 ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113 ], [ %.pn51.pn.pn, %.loopexit.split-lp ], [ %.pn.pn.pn.pn, %.loopexit.split-lp127 ]
  resume { ptr, i32 } %.pn55
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10duckdb_re29Prefilter12CrossProductERKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13LengthThenLexESaIS7_EESC_PSA_(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !159 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not39 = icmp eq ptr %i.b, %i.c
  br i1 %.not39, label %._crit_edge43, label %.lr.ph42

.lr.ph42:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.m = icmp eq ptr %i.l, %i.e
  br i1 %i.m, label %._crit_edge43, label %.lr.ph42.split

._crit_edge43:                                    ; preds = %._crit_edge, %.lr.ph42, %bb.a
  ret void

.lr.ph42.split:                                   ; preds = %.lr.ph42, %._crit_edge
  %.sroa.017.040 = phi ptr [ %i.q, %._crit_edge ], [ %i.b, %.lr.ph42 ] ; 3 uses
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !56   ; 2 uses
  %.not2837 = icmp eq ptr %i.n, %i.e
  br i1 %.not2837, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph42.split
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.017.040, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.017.040, i64 40
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.lr.ph42.split
  %i.q = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.017.040) #23 ; 2 uses
  %.not = icmp eq ptr %i.q, %i.c
  br i1 %.not, label %._crit_edge43, label %.lr.ph42.split, !llvm.loop !153

bb.b:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.013.038 = phi ptr [ %i.n, %.lr.ph ], [ %i.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.038, i64 32
  call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !42, !noalias !161
  %i.t = load i64, ptr %i.p, align 8, !tbaa !35, !noalias !161 ; 3 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !42, !noalias !161
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.013.038, i64 40
  %i.w = load i64, ptr %i.v, align 8, !tbaa !35, !noalias !161 ; 3 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !32, !alias.scope !162
end_hunk_0
