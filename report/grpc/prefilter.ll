Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/prefilter?download=true
inline.NumInlined: 678
inline.NumDeleted: 291
begin_hunk_0_@_ZN3re29Prefilter4Info8ToStringB5cxx11Ev:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.014.020, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !23
  %i.ab = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.aa, i64 noundef %i.v)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.ac = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.014.020) #24 ; 2 uses
  %.not17 = icmp eq ptr %i.ac, %i.h
  br i1 %.not17, label %.loopexit, label %.lr.ph.peel.next, !llvm.loop !116

bb.c:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !49 ; 2 uses
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNK3re29Prefilter11DebugStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(52) %i.ae)
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.af, ptr %0, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ag, align 8, !tbaa !16
  store i8 0, ptr %i.af, align 8, !tbaa !17
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel, %bb.b, %bb.e, %bb.d
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %lpad.loopexit.split-lp36
}

; Function Attrs: mustprogress uwtable
define void @_ZNK3re29Prefilter11DebugStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(52) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %class.LogMessage, align 8          ; 13 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %i.b = load i32, ptr %1, align 8, !tbaa !21
  switch i32 %i.b, label %bb.b [
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 0, label %bb.l
    i32 3, label %bb.m
    i32 4, label %bb.r
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZN10LogMessageC2EPKci(ptr noundef nonnull align 8 dereferenceable(384) %2, ptr noundef nonnull @.str.2, i32 noundef 667)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.4, i64 noundef 34)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.e = load i32, ptr %1, align 8, !tbaa !21
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef %i.e)
          to label %bb.c unwind label %bb.g       ; 0 uses

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.g = load i8, ptr %2, align 8, !tbaa !61, !range !50, !noundef !51
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(384) %2)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.i, ptr %i.c, align 8, !tbaa !63
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.k = getelementptr i8, ptr %i.i, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %i.c, i64 %i.l
  store ptr %i.j, ptr %i.m, align 8, !tbaa !63
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.n, align 8, !tbaa !63
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !23   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZN10LogMessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.e
  %i.s = load i64, ptr %i.q, align 8, !tbaa !17
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #21
  br label %_ZN10LogMessageD2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #25
  unreachable

_ZN10LogMessageD2Ev.exit:                         ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.n, align 8, !tbaa !63
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #22
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.x) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.y = load i32, ptr %1, align 8, !tbaa !21
  call void (ptr, ptr, ...) @_ZN3re212StringPrintfB5cxx11EPKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull @.str.5, i32 noundef %i.y)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit94

bb.g:                                             ; preds = %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

bb.h:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.aa, ptr %0, align 8, !tbaa !13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.aa, ptr noundef nonnull align 1 dereferenceable(12) @.str.6, i64 12, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 12, ptr %i.ab, align 8, !tbaa !16
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 0, ptr %i.ac, align 4, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit94

bb.i:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ae, ptr %0, align 8, !tbaa !13
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !23 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.ah, ptr %i.a, align 8, !tbaa !64
  %i.ai = icmp ugt i64 %i.ah, 15
  br i1 %i.ai, label %.noexc.i64, label %._crit_edge.i.i63

.noexc.i64:                                       ; preds = %bb.i
  %i.aj = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.aj, ptr %0, align 8, !tbaa !23
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !64
  store i64 %i.ak, ptr %i.ae, align 8, !tbaa !17
  br label %._crit_edge.i.i63

._crit_edge.i.i63:                                ; preds = %.noexc.i64, %bb.i
  %i.al = phi ptr [ %i.aj, %.noexc.i64 ], [ %i.ae, %bb.i ] ; 2 uses
  switch i64 %i.ah, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.j:                                             ; preds = %._crit_edge.i.i63
  %i.am = load i8, ptr %i.af, align 1, !tbaa !17
  store i8 %i.am, ptr %i.al, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.k:                                             ; preds = %._crit_edge.i.i63
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr align 1 %i.af, i64 %i.ah, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i63, %bb.j, %bb.k
  %i.an = load i64, ptr %i.a, align 8, !tbaa !64  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !16
  %i.ap = load ptr, ptr %0, align 8, !tbaa !23
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.an
  store i8 0, ptr %i.aq, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit94

bb.l:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.ar, ptr %0, align 8, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.as, align 8, !tbaa !16
  store i8 0, ptr %i.ar, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit94

bb.m:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.at, ptr %0, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 0, ptr %i.au, align 8, !tbaa !16
  store i8 0, ptr %i.at, align 8, !tbaa !17
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !22 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !27
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !28 ; 2 uses
  %.not144 = icmp eq ptr %i.ay, %i.az
  br i1 %.not144, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit94, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel: ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 10 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 21 ; 2 uses
  %.pre187 = load ptr, ptr %i.az, align 8, !tbaa !30 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %.not50.peel = icmp eq ptr %.pre187, null
  br i1 %.not50.peel, label %.thread, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel
  invoke void @_ZNK3re29Prefilter11DebugStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(52) %.pre187)
          to label %bb.o unwind label %.loopexit.split-lp169.loopexit.split-lp.loopexit.split-lp

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel
  store ptr %i.ba, ptr %3, align 8, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ba, ptr noundef nonnull align 1 dereferenceable(5) @.str.8, i64 5, i1 false)
  store i64 5, ptr %i.bb, align 8, !tbaa !16
  store i8 0, ptr %i.bc, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel

bb.o:                                             ; preds = %bb.n
  %.pre189 = load i64, ptr %i.bb, align 8, !tbaa !16 ; 2 uses
  %.pre190 = load i64, ptr %i.au, align 8, !tbaa !16
  %i.bd = sub i64 4611686018427387903, %.pre190
  %i.be = icmp ult i64 %i.bd, %.pre189
  br i1 %i.be, label %.loopexit172, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel: ; preds = %.thread, %bb.o
  %i.bf = phi i64 [ 5, %.thread ], [ %.pre189, %bb.o ]
  %i.bg = load ptr, ptr %3, align 8, !tbaa !23
  %i.bh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.bg, i64 noundef %i.bf)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel unwind label %.loopexit.split-lp122.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel
  %i.bi = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.ba
  br i1 %i.bj, label %.critedge.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel
  %i.bk = load i64, ptr %i.ba, align 8, !tbaa !17
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #21
  br label %.critedge.peel

.critedge.peel:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.bm = load ptr, ptr %i.av, align 8, !tbaa !22 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !27
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !28
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = icmp ugt i64 %i.bs, 8
  br i1 %i.bt, label %.peel.next162, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit94

.peel.next162:                                    ; preds = %.critedge.peel, %.critedge
  %.031140 = phi i64 [ %i.ch, %.critedge ], [ 1, %.critedge.peel ] ; 2 uses
  %i.bu = load i64, ptr %i.au, align 8, !tbaa !16
  %i.bv = icmp eq i64 %i.bu, 4611686018427387903
  br i1 %i.bv, label %.loopexit164, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

.loopexit164:                                     ; preds = %.peel.next162
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #23
          to label %.noexc73 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc73:                                         ; preds = %.loopexit164
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %.peel.next162
  %i.bw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.7, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %.loopexit164
  %lpad.loopexit.split-lp240 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %.pre191 = load ptr, ptr %i.av, align 8, !tbaa !22
  %.pre192 = load ptr, ptr %.pre191, align 8, !tbaa !28
  %.phi.trans.insert193 = getelementptr inbounds nuw [8 x i8], ptr %.pre192, i64 %.031140
  %.pre194 = load ptr, ptr %.phi.trans.insert193, align 8, !tbaa !30 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %.not50 = icmp eq ptr %.pre194, null
  br i1 %.not50, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit78, label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  invoke void @_ZNK3re29Prefilter11DebugStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(52) %.pre194)
          to label %._crit_edge195 unwind label %.loopexit.split-lp169.loopexit.split-lp.loopexit.split-lp

._crit_edge195:                                   ; preds = %bb.p
  %.pre196 = load i64, ptr %i.bb, align 8, !tbaa !16
  br label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  store ptr %i.ba, ptr %3, align 8, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ba, ptr noundef nonnull align 1 dereferenceable(5) @.str.8, i64 5, i1 false)
  store i64 5, ptr %i.bb, align 8, !tbaa !16
  store i8 0, ptr %i.bc, align 1, !tbaa !17
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge195, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit78
  %i.bx = phi i64 [ %.pre196, %._crit_edge195 ], [ 5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit78 ] ; 2 uses
  %i.by = load i64, ptr %i.au, align 8, !tbaa !16
  %i.bz = sub i64 4611686018427387903, %i.by
  %i.ca = icmp ult i64 %i.bz, %i.bx
  br i1 %i.ca, label %.loopexit172, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

.loopexit172:                                     ; preds = %bb.q, %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #23
          to label %.noexc79 unwind label %.loopexit.split-lp122.loopexit.split-lp.loopexit.split-lp

.noexc79:                                         ; preds = %.loopexit172
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.q
  %i.cb = load ptr, ptr %3, align 8, !tbaa !23
  %i.cc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.cb, i64 noundef %i.bx)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit.split-lp122.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.cd = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.ba
  br i1 %i.ce, label %.critedge, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.cf = load i64, ptr %i.ba, align 8, !tbaa !17
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #21
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.ch = add nuw i64 %.031140, 1                 ; 2 uses
  %i.ci = load ptr, ptr %i.av, align 8, !tbaa !22 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !27
  %i.cl = load ptr, ptr %i.ci, align 8, !tbaa !28
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = ashr exact i64 %i.co, 3
  %i.cq = icmp ult i64 %i.ch, %i.cp
  br i1 %i.cq, label %.peel.next162, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit94, !llvm.loop !117

.loopexit.split-lp169.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.p, %bb.n
  %lpad.loopexit.split-lp242 = landingpad { ptr, i32 }
          cleanup
  br label %.critedge58

.loopexit.split-lp122.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel, %.loopexit172
  %lpad.loopexit.split-lp245 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cr = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.ba
  br i1 %i.cs, label %.critedge58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %.loopexit.split-lp122.loopexit.split-lp.loopexit.split-lp
  %i.ct = load i64, ptr %i.ba, align 8, !tbaa !17
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #21
  br label %.critedge58

.critedge58:                                      ; preds = %.loopexit.split-lp122.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp169.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81
  %.pn51.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp242, %.loopexit.split-lp169.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp245, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81 ], [ %lpad.loopexit.split-lp245, %.loopexit.split-lp122.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.critedge58
  %.pn51.pn.pn = phi { ptr, i32 } [ %.pn51.pn, %.critedge58 ], [ %lpad.loopexit.split-lp240, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.cv = load ptr, ptr %0, align 8, !tbaa !23    ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.at
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %.loopexit.split-lp
  %i.cx = load i64, ptr %i.at, align 8, !tbaa !17
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

bb.r:                                             ; preds = %bb.a
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.cz, ptr %0, align 8, !tbaa !13
  store i8 40, ptr %i.cz, align 8, !tbaa !17
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i64 1, ptr %i.da, align 8, !tbaa !16
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.db, align 1, !tbaa !17
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !22 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !27
  %i.dg = load ptr, ptr %i.dd, align 8, !tbaa !28 ; 2 uses
  %.not143 = icmp eq ptr %i.df, %i.dg
  br i1 %.not143, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i91, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit98.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit98.peel: ; preds = %bb.r
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 21 ; 2 uses
  %.pre = load ptr, ptr %i.dg, align 8, !tbaa !30 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %.not44.peel = icmp eq ptr %.pre, null
  br i1 %.not44.peel, label %.thread224, label %bb.s

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit98.peel
  invoke void @_ZNK3re29Prefilter11DebugStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(52) %.pre)
          to label %bb.t unwind label %.loopexit.split-lp153.loopexit.split-lp.loopexit.split-lp

.thread224:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit98.peel
  store ptr %i.dh, ptr %4, align 8, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.dh, ptr noundef nonnull align 1 dereferenceable(5) @.str.8, i64 5, i1 false)
  store i64 5, ptr %i.di, align 8, !tbaa !16
  store i8 0, ptr %i.dj, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i103.peel

bb.t:                                             ; preds = %bb.s
  %.pre178 = load i64, ptr %i.di, align 8, !tbaa !16 ; 2 uses
  %.pre179 = load i64, ptr %i.da, align 8, !tbaa !16
  %i.dk = sub i64 4611686018427387903, %.pre179
  %i.dl = icmp ult i64 %i.dk, %.pre178
  br i1 %i.dl, label %.loopexit157, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i103.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i103.peel: ; preds = %.thread224, %bb.t
  %i.dm = phi i64 [ 5, %.thread224 ], [ %.pre178, %bb.t ]
  %i.dn = load ptr, ptr %4, align 8, !tbaa !23
  %i.do = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.dn, i64 noundef %i.dm)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit106.peel unwind label %.loopexit.split-lp132.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit106.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i103.peel
  %i.dp = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.dh
  br i1 %i.dq, label %.critedge60.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit106.peel
  %i.dr = load i64, ptr %i.dh, align 8, !tbaa !17
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.ds) #21
  br label %.critedge60.peel

.critedge60.peel:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit106.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.dt = load ptr, ptr %i.dc, align 8, !tbaa !22 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !27
  %i.dw = load ptr, ptr %i.dt, align 8, !tbaa !28
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = sub i64 %i.dx, %i.dy
  %i.ea = icmp ugt i64 %i.dz, 8
  br i1 %i.ea, label %.peel.next, label %._crit_edge

._crit_edge:                                      ; preds = %.critedge60, %.critedge60.peel
  %.pre185 = load i64, ptr %i.da, align 8, !tbaa !16
  %i.eb = icmp eq i64 %.pre185, 4611686018427387903
  br i1 %i.eb, label %.loopexit.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i91: ; preds = %bb.r, %._crit_edge
  %i.ec = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.11, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit94 unwind label %.loopexit.split-lp127.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.peel.next:                                       ; preds = %.critedge60.peel, %.critedge60
  %.026139 = phi i64 [ %i.eq, %.critedge60 ], [ 1, %.critedge60.peel ] ; 2 uses
  %i.ed = load i64, ptr %i.da, align 8, !tbaa !16
  %i.ee = icmp eq i64 %i.ed, 4611686018427387903
  br i1 %i.ee, label %.loopexit.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i95

.loopexit.invoke:                                 ; preds = %.peel.next, %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #23
          to label %.loopexit.cont unwind label %.loopexit.split-lp127.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.cont:                                   ; preds = %.loopexit.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i95: ; preds = %.peel.next
  %i.ef = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.10, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit98 unwind label %.loopexit.split-lp127.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp127.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i95, %.loopexit.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i91
  %lpad.loopexit.split-lp248 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp127

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit98: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i95
  %.pre180 = load ptr, ptr %i.dc, align 8, !tbaa !22
  %.pre181 = load ptr, ptr %.pre180, align 8, !tbaa !28
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre181, i64 %.026139
  %.pre182 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !30 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %.not44 = icmp eq ptr %.pre182, null
  br i1 %.not44, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit102, label %bb.u

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit98
  invoke void @_ZNK3re29Prefilter11DebugStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(52) %.pre182)
          to label %._crit_edge183 unwind label %.loopexit.split-lp153.loopexit.split-lp.loopexit.split-lp

._crit_edge183:                                   ; preds = %bb.u
  %.pre184 = load i64, ptr %i.di, align 8, !tbaa !16
  br label %bb.v

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit102: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit98
  store ptr %i.dh, ptr %4, align 8, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.dh, ptr noundef nonnull align 1 dereferenceable(5) @.str.8, i64 5, i1 false)
  store i64 5, ptr %i.di, align 8, !tbaa !16
  store i8 0, ptr %i.dj, align 1, !tbaa !17
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge183, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit102
  %i.eg = phi i64 [ %.pre184, %._crit_edge183 ], [ 5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit102 ] ; 2 uses
  %i.eh = load i64, ptr %i.da, align 8, !tbaa !16
  %i.ei = sub i64 4611686018427387903, %i.eh
  %i.ej = icmp ult i64 %i.ei, %i.eg
  br i1 %i.ej, label %.loopexit157, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i103

.loopexit157:                                     ; preds = %bb.v, %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #23
          to label %.noexc104 unwind label %.loopexit.split-lp132.loopexit.split-lp.loopexit.split-lp

.noexc104:                                        ; preds = %.loopexit157
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i103: ; preds = %bb.v
  %i.ek = load ptr, ptr %4, align 8, !tbaa !23
  %i.el = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ek, i64 noundef %i.eg)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit106 unwind label %.loopexit.split-lp132.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit106: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i103
  %i.em = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.dh
  br i1 %i.en, label %.critedge60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit106
  %i.eo = load i64, ptr %i.dh, align 8, !tbaa !17
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.ep) #21
  br label %.critedge60

.critedge60:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.eq = add nuw i64 %.026139, 1                 ; 2 uses
  %i.er = load ptr, ptr %i.dc, align 8, !tbaa !22 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !27
  %i.eu = load ptr, ptr %i.er, align 8, !tbaa !28
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = sub i64 %i.ev, %i.ew
  %i.ey = ashr exact i64 %i.ex, 3
  %i.ez = icmp ult i64 %i.eq, %i.ey
  br i1 %i.ez, label %.peel.next, label %._crit_edge, !llvm.loop !118

.loopexit.split-lp153.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.u, %bb.s
  %lpad.loopexit.split-lp251 = landingpad { ptr, i32 }
          cleanup
  br label %.critedge62

.loopexit.split-lp132.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i103, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i103.peel, %.loopexit157
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fa = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.dh
  br i1 %i.fb, label %.critedge62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %.loopexit.split-lp132.loopexit.split-lp.loopexit.split-lp
  %i.fc = load i64, ptr %i.dh, align 8, !tbaa !17
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #21
  br label %.critedge62

.critedge62:                                      ; preds = %.loopexit.split-lp132.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp153.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp251, %.loopexit.split-lp153.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp132.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.loopexit.split-lp127

.loopexit.split-lp127:                            ; preds = %.loopexit.split-lp127.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.critedge62
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.critedge62 ], [ %lpad.loopexit.split-lp248, %.loopexit.split-lp127.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.fe = load ptr, ptr %0, align 8, !tbaa !23    ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.cz
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113: ; preds = %.loopexit.split-lp127
  %i.fg = load i64, ptr %i.cz, align 8, !tbaa !17
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit94: ; preds = %.critedge, %.critedge.peel, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i91, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %bb.h, %_ZN10LogMessageD2Ev.exit
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %.loopexit.split-lp127, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84, %bb.g
  %.pn55 = phi { ptr, i32 } [ %i.z, %bb.g ], [ %.pn51.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84 ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113 ], [ %.pn51.pn.pn, %.loopexit.split-lp ], [ %.pn.pn.pn.pn, %.loopexit.split-lp127 ]
  resume { ptr, i32 } %.pn55
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN3re29Prefilter4Info6ConcatEPS1_S2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #20 ; 8 uses
  invoke void @_ZN3re29Prefilter4InfoC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %bb.c unwind label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not45.i = icmp eq ptr %i.d, %i.e
  br i1 %.not45.i, label %_ZN3re2L12CrossProductERKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EESC_PSA_.exit, label %.lr.ph48.i

.lr.ph48.i:                                       ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 13 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !38
  %i.o = icmp eq ptr %i.n, %i.g
  br i1 %i.o, label %_ZN3re2L12CrossProductERKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EESC_PSA_.exit, label %.lr.ph48.split.i

.lr.ph48.split.i:                                 ; preds = %.lr.ph48.i, %._crit_edge.i
  %.sroa.025.046.i = phi ptr [ %i.s, %._crit_edge.i ], [ %i.d, %.lr.ph48.i ] ; 3 uses
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !38   ; 2 uses
  %.not3643.i = icmp eq ptr %i.p, %i.g
  br i1 %.not3643.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph48.split.i
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.025.046.i, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.025.046.i, i64 40
  br label %bb.d

._crit_edge.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %.lr.ph48.split.i
  %i.s = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.025.046.i) #24 ; 2 uses
  %.not.i = icmp eq ptr %i.s, %i.e
  br i1 %.not.i, label %_ZN3re2L12CrossProductERKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EESC_PSA_.exit, label %.lr.ph48.split.i, !llvm.loop !119
end_hunk_0
