Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpp-httplib/original/httplib?download=true
inline.NumInlined: 21623
inline.NumDeleted: 6597
loop-unroll.NumCompletelyUnrolled: 55
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 103
begin_hunk_0_@_ZN7httplib6detail14ChunkedDecoder12read_payloadEPcmRmS3_:bb.a
  store i64 0, ptr %i.d, align 8, !tbaa !596
  store i8 1, ptr %i.a, align 8, !tbaa !595
  store i64 0, ptr %3, align 8, !tbaa !190
  store i64 0, ptr %4, align 8, !tbaa !190
  br label %_ZN7httplib6detail6is_hexEcRi.exit.thread

bb.q:                                             ; preds = %bb.o
  store i64 %.0, ptr %i.d, align 8, !tbaa !596
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.0, ptr %i.ap, align 8, !tbaa !2078
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 0, ptr %i.aq, align 8, !tbaa !2079
  br label %_ZN7httplib6detail6is_hexEcRi.exit.thread

_ZN7httplib6detail6is_hexEcRi.exit.thread:        ; preds = %bb.l, %_ZN7httplib6detail6is_hexEcRi.exit58, %._ZN7httplib6detail6is_hexEcRi.exit.thread_crit_edge, %switch.early.test, %bb.q, %bb.p
  %i.ar = phi ptr [ %.pre89, %._ZN7httplib6detail6is_hexEcRi.exit.thread_crit_edge ], [ %i.u, %switch.early.test ], [ %i.u, %bb.q ], [ %i.u, %_ZN7httplib6detail6is_hexEcRi.exit58 ], [ %i.u, %bb.p ], [ %i.u, %bb.l ] ; 2 uses
  %.240 = phi i64 [ -1, %._ZN7httplib6detail6is_hexEcRi.exit.thread_crit_edge ], [ -1, %switch.early.test ], [ undef, %bb.q ], [ -1, %_ZN7httplib6detail6is_hexEcRi.exit58 ], [ 0, %bb.p ], [ -1, %bb.l ] ; 2 uses
  %i.as = phi i1 [ false, %._ZN7httplib6detail6is_hexEcRi.exit.thread_crit_edge ], [ false, %switch.early.test ], [ true, %bb.q ], [ false, %_ZN7httplib6detail6is_hexEcRi.exit58 ], [ false, %bb.p ], [ false, %bb.l ]
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.au = icmp eq ptr %i.ar, %i.at
  br i1 %i.au, label %_ZN7httplib6detail18stream_line_readerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7httplib6detail6is_hexEcRi.exit.thread
  %i.av = load i64, ptr %i.at, align 8, !tbaa !177
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.aw) #46
  br label %_ZN7httplib6detail18stream_line_readerD2Ev.exit

_ZN7httplib6detail18stream_line_readerD2Ev.exit:  ; preds = %_ZN7httplib6detail6is_hexEcRi.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %i.as, label %_ZN7httplib6detail18stream_line_readerD2Ev.exit._crit_edge, label %bb.x

_ZN7httplib6detail18stream_line_readerD2Ev.exit._crit_edge: ; preds = %_ZN7httplib6detail18stream_line_readerD2Ev.exit
  %.pre90 = load i64, ptr %i.d, align 8, !tbaa !190
  br label %bb.r

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i59: ; preds = %bb.e
  %i.ax = load i64, ptr %i.n, align 8, !tbaa !177
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.ay) #46
  br label %_ZN7httplib6detail18stream_line_readerD2Ev.exit61

_ZN7httplib6detail18stream_line_readerD2Ev.exit61: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.y

bb.r:                                             ; preds = %_ZN7httplib6detail18stream_line_readerD2Ev.exit._crit_edge, %bb.b
  %i.az = phi i64 [ %.pre90, %_ZN7httplib6detail18stream_line_readerD2Ev.exit._crit_edge ], [ %i.e, %bb.b ]
  %.341 = phi i64 [ %.240, %_ZN7httplib6detail18stream_line_readerD2Ev.exit._crit_edge ], [ undef, %bb.b ]
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %2, i64 %i.az)
  %i.ba = load ptr, ptr %0, align 8, !tbaa !597, !nonnull !192, !align !253 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !194
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call noundef i64 %i.bd(ptr noundef nonnull align 8 dereferenceable(12) %i.ba, ptr noundef %1, i64 noundef %.sroa.speculated) ; 4 uses
  %i.bf = icmp slt i64 %i.be, 1
  br i1 %i.bf, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !2079 ; 2 uses
  %i.bi = add i64 %i.bh, %i.be
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !2079
  %i.bj = load i64, ptr %i.d, align 8, !tbaa !596
  %i.bk = sub i64 %i.bj, %i.be
  store i64 %i.bk, ptr %i.d, align 8, !tbaa !596
  store i64 %i.bh, ptr %3, align 8, !tbaa !190
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !2078
  store i64 %i.bm, ptr %4, align 8, !tbaa !190
  %i.bn = load i64, ptr %i.d, align 8, !tbaa !596
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.bp = load ptr, ptr %0, align 8, !tbaa !597, !nonnull !192, !align !253
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @_ZN7httplib6detail18stream_line_readerC1ERNS_6StreamEPcm(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(12) %i.bp, ptr noundef nonnull %i.bq, i64 noundef 64)
  %i.br = invoke noundef zeroext i1 @_ZN7httplib6detail18stream_line_reader7getlineEv(ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  br i1 %i.br, label %sub_0, label %._crit_edge

._crit_edge:                                      ; preds = %bb.u
  %.pre92 = load ptr, ptr %i.bs, align 8, !tbaa !189
  br label %.tail.thread

bb.v:                                             ; preds = %bb.t
  %i.bt = landingpad { ptr, i32 }
          cleanup
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !189 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZN7httplib6detail18stream_line_readerD2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i62: ; preds = %bb.v
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !177
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bz) #46
  br label %_ZN7httplib6detail18stream_line_readerD2Ev.exit64

_ZN7httplib6detail18stream_line_readerD2Ev.exit64: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.y

sub_0:                                            ; preds = %bb.u
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !176
  %i.cc = icmp eq i64 %i.cb, 0
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = load ptr, ptr %i.bs, align 8            ; 4 uses
  %.0.i65 = select i1 %i.cc, ptr %i.ce, ptr %i.cf ; 3 uses
  %i.cg = load i8, ptr %.0.i65, align 1
  %.not = icmp eq i8 %i.cg, 13
  br i1 %.not, label %sub_1, label %.tail.thread

sub_1:                                            ; preds = %sub_0
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i65, i64 1
  %i.ci = load i8, ptr %i.ch, align 1
  %.not84 = icmp eq i8 %i.ci, 10
  br i1 %.not84, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i65, i64 2
  %i.ck = load i8, ptr %i.cj, align 1
  %.fr = freeze i8 %i.ck
  %i.cl = icmp eq i8 %.fr, 0                      ; 2 uses
  %spec.select = select i1 %i.cl, i64 %.341, i64 -1
  br label %.tail.thread

.tail.thread:                                     ; preds = %.tail, %sub_1, %sub_0, %._crit_edge
  %i.cm = phi ptr [ %.pre92, %._crit_edge ], [ %i.cf, %sub_1 ], [ %i.cf, %.tail ], [ %i.cf, %sub_0 ] ; 2 uses
  %.4 = phi i64 [ -1, %._crit_edge ], [ -1, %sub_1 ], [ %spec.select, %.tail ], [ -1, %sub_0 ]
  %cond = phi i1 [ false, %._crit_edge ], [ false, %sub_1 ], [ %i.cl, %.tail ], [ false, %sub_0 ]
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZN7httplib6detail18stream_line_readerD2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i66: ; preds = %.tail.thread
  %i.cp = load i64, ptr %i.cn, align 8, !tbaa !177
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cq) #46
  br label %_ZN7httplib6detail18stream_line_readerD2Ev.exit68

_ZN7httplib6detail18stream_line_readerD2Ev.exit68: ; preds = %.tail.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br i1 %cond, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZN7httplib6detail18stream_line_readerD2Ev.exit68, %bb.s
  br label %bb.x

bb.x:                                             ; preds = %bb.r, %_ZN7httplib6detail18stream_line_readerD2Ev.exit68, %bb.w, %_ZN7httplib6detail18stream_line_readerD2Ev.exit, %bb.a
  %.7 = phi i64 [ %.240, %_ZN7httplib6detail18stream_line_readerD2Ev.exit ], [ 0, %bb.a ], [ -1, %bb.r ], [ %i.be, %bb.w ], [ %.4, %_ZN7httplib6detail18stream_line_readerD2Ev.exit68 ]
  ret i64 %.7

bb.y:                                             ; preds = %_ZN7httplib6detail18stream_line_readerD2Ev.exit64, %_ZN7httplib6detail18stream_line_readerD2Ev.exit61
  %.pn49 = phi { ptr, i32 } [ %i.bt, %_ZN7httplib6detail18stream_line_readerD2Ev.exit64 ], [ %i.k, %_ZN7httplib6detail18stream_line_readerD2Ev.exit61 ]
  resume { ptr, i32 } %.pn49
}

; Function Attrs: mustprogress uwtable
define void @_ZN7httplib10ThreadPoolC2Emmml(ptr noundef nonnull align 8 dereferenceable(240) initializes((0, 16), (24, 49)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::unique_ptr.722", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 4 uses
  %8 = alloca %"class.std::thread", align 8       ; 10 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7httplib10ThreadPoolE, i64 16), ptr %0, align 8, !tbaa !194
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !2088
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %3, ptr %i.b, align 8, !tbaa !616
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %4, ptr %i.c, align 8, !tbaa !2089
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.d, align 8, !tbaa !617
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i8 0, ptr %i.e, align 8, !tbaa !618
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.f, ptr %i.g, align 8, !tbaa !619
  store ptr %i.f, ptr %i.f, align 8, !tbaa !620
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 0, i64 32, i1 false)
  store ptr %i.j, ptr %i.k, align 8, !tbaa !619
  store ptr %i.j, ptr %i.j, align 8, !tbaa !620
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i8 0, i64 32, i1 false)
  tail call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.m) #23
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.n, i8 0, i64 40, i1 false)
  %.not = icmp ne i64 %2, 0                       ; 2 uses
  %i.o = icmp ult i64 %2, %1
  %or.cond = and i1 %.not, %i.o
  br i1 %or.cond, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.281, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.p = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #47
          to label %bb.ah unwind label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.p) #23
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn26 = phi { ptr, i32 } [ %i.s, %bb.g ], [ %i.r, %bb.f ] ; 2 uses
  %i.t = load ptr, ptr %6, align 8, !tbaa !189    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.w = load i64, ptr %i.u, align 8, !tbaa !177
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn26.pn = phi { ptr, i32 } [ %i.q, %bb.e ], [ %.pn26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn26, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.af

bb.i:                                             ; preds = %bb.a
  %i.y = select i1 %.not, i64 %2, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.y, ptr %i.z, align 8, !tbaa !621
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !2088 ; 5 uses
  %i.ab = icmp ugt i64 %i.aa, 1152921504606846975
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.348) #47
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !622
  %i.ae = load ptr, ptr %i.i, align 8, !tbaa !623
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 3
  %i.aj = icmp ult i64 %i.ai, %i.aa
  br i1 %i.aj, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt6threadSaIS0_EE7reserveEm.exit

_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i: ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !624
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.ag
  %i.ao = shl nuw nsw i64 %i.aa, 3
  %i.ap = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #50
          to label %.noexc30 unwind label %bb.m   ; 4 uses

.noexc30:                                         ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i
  %i.aq = load ptr, ptr %i.i, align 8, !tbaa !623 ; 5 uses
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !624 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.aq, %i.ar
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc30, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i ], [ %i.ap, %.noexc30 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i ], [ %i.aq, %.noexc30 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2090)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2091)
  %i.as = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !190, !alias.scope !2091, !noalias !2090
  store i64 %i.as, ptr %.012.i.i.i.i, align 8, !tbaa !190, !alias.scope !2090, !noalias !2091
  store i64 0, ptr %.0911.i.i.i.i, align 8, !tbaa !190, !alias.scope !2091, !noalias !2090
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.at, %i.ar
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !55

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc30
  %.not.i8.i = icmp eq ptr %i.aq, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  %i.av = load ptr, ptr %i.ac, align 8, !tbaa !622
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.aq to i64
  %i.ay = sub i64 %i.aw, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.ay) #46
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i: ; preds = %bb.l, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  store ptr %i.ap, ptr %i.i, align 8, !tbaa !623
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.an
  store ptr %i.az, ptr %i.ak, align 8, !tbaa !624
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.aa
  store ptr %i.ba, ptr %i.ac, align 8, !tbaa !622
  %.pre = load i64, ptr %i.a, align 8, !tbaa !2088
  br label %_ZNSt6vectorISt6threadSaIS0_EE7reserveEm.exit

_ZNSt6vectorISt6threadSaIS0_EE7reserveEm.exit:    ; preds = %bb.k, %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i
  %i.bb = phi i64 [ %i.aa, %bb.k ], [ %.pre, %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i ]
  %.not63 = icmp eq i64 %i.bb, 0
  br i1 %.not63, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt6threadSaIS0_EE7reserveEm.exit
  %i.bc = ptrtoint ptr %0 to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  br label %bb.n

._crit_edge:                                      ; preds = %_ZNSt6threadD2Ev.exit, %_ZNSt6vectorISt6threadSaIS0_EE7reserveEm.exit
  ret void

bb.m:                                             ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i, %bb.j
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.n:                                             ; preds = %.lr.ph, %_ZNSt6threadD2Ev.exit
  %.058 = phi i64 [ 0, %.lr.ph ], [ %i.cq, %_ZNSt6threadD2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 0, ptr %8, align 8, !tbaa !251
  %i.bf = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #50
          to label %.noexc31 unwind label %bb.v   ; 3 uses

.noexc31:                                         ; preds = %bb.n
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN7httplib10ThreadPoolC1EmmmlE3$_0EEEEEE", i64 16), ptr %i.bf, align 8, !tbaa !194
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i64 %i.bc, ptr %i.bg, align 8, !tbaa !626
  store ptr %i.bf, ptr %5, align 8, !tbaa !270
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr nofree noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %.noexc31
  %i.bh = load ptr, ptr %5, align 8, !tbaa !270   ; 3 uses
  %.not.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i, label %bb.q, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i: ; preds = %bb.o
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !194
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %i.bh) #23, !inline_history !2083
  br label %bb.q

bb.p:                                             ; preds = %.noexc31
  %i.bl = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.bm = load ptr, ptr %5, align 8, !tbaa !270   ; 3 uses
  %.not.i5.i = icmp eq ptr %i.bm, null
  br i1 %.not.i5.i, label %.body, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i: ; preds = %bb.p
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !194
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(8) %i.bm) #23, !inline_history !2083
  br label %.body

bb.q:                                             ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.bq = load ptr, ptr %i.bd, align 8, !tbaa !624 ; 7 uses
  %i.br = load ptr, ptr %i.ac, align 8, !tbaa !622
  %.not.i = icmp eq ptr %i.bq, %i.br
  br i1 %.not.i, label %bb.r, label %_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit.thread

_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit.thread: ; preds = %bb.q
  store i64 0, ptr %i.bq, align 8, !tbaa !251
  %i.bs = load i64, ptr %8, align 8, !tbaa !190
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !190
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr %i.bt, ptr %i.bd, align 8, !tbaa !624
  br label %_ZNSt6threadD2Ev.exit

bb.r:                                             ; preds = %bb.q
  %i.bu = load ptr, ptr %i.i, align 8, !tbaa !623 ; 5 uses
  %i.bv = ptrtoint ptr %i.bq to i64
  %i.bw = ptrtoint ptr %i.bu to i64               ; 2 uses
  %i.bx = sub i64 %i.bv, %i.bw                    ; 3 uses
  %i.by = icmp eq i64 %i.bx, 9223372036854775800
  br i1 %i.by, label %bb.s, label %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.349) #47
          to label %.noexc47 unwind label %.loopexit.split-lp

.noexc47:                                         ; preds = %bb.s
  unreachable

_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.r
  %i.bz = ashr exact i64 %i.bx, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bz, i64 1)
  %i.ca = add nsw i64 %.sroa.speculated.i.i, %i.bz ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bz
  %i.cc = call i64 @llvm.umin.i64(i64 %i.ca, i64 1152921504606846975)
  %i.cd = select i1 %i.cb, i64 1152921504606846975, i64 %i.cc ; 3 uses
  %.not.i.i39 = icmp ne i64 %i.cd, 0
  call void @llvm.assume(i1 %.not.i.i39)
  %i.ce = shl nuw nsw i64 %i.cd, 3
  %i.cf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #50
          to label %.noexc48 unwind label %.loopexit ; 5 uses

.noexc48:                                         ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.bx
  %i.ch = load i64, ptr %8, align 8, !tbaa !190
  store i64 %i.ch, ptr %i.cg, align 8, !tbaa !190
  store i64 0, ptr %8, align 8, !tbaa !190
  %.not10.i.i.i.i40 = icmp eq ptr %i.bu, %i.bq
  br i1 %.not10.i.i.i.i40, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i, label %.lr.ph.i.i.i.i41

.lr.ph.i.i.i.i41:                                 ; preds = %.noexc48, %.lr.ph.i.i.i.i41
  %.012.i.i.i.i42 = phi ptr [ %i.ck, %.lr.ph.i.i.i.i41 ], [ %i.cf, %.noexc48 ] ; 2 uses
  %.0911.i.i.i.i43 = phi ptr [ %i.cj, %.lr.ph.i.i.i.i41 ], [ %i.bu, %.noexc48 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2092)
  call void @llvm.experimental.noalias.scope.decl(metadata !2093)
  %i.ci = load i64, ptr %.0911.i.i.i.i43, align 8, !tbaa !190, !alias.scope !2093, !noalias !2092
  store i64 %i.ci, ptr %.012.i.i.i.i42, align 8, !tbaa !190, !alias.scope !2092, !noalias !2093
  store i64 0, ptr %.0911.i.i.i.i43, align 8, !tbaa !190, !alias.scope !2093, !noalias !2092
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i43, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i42, i64 8 ; 2 uses
  %.not.i.i.i.i44 = icmp eq ptr %i.cj, %i.bq
  br i1 %.not.i.i.i.i44, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i, label %.lr.ph.i.i.i.i41, !llvm.loop !55

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i: ; preds = %.lr.ph.i.i.i.i41, %.noexc48
  %.0.lcssa.i.i.i.i = phi ptr [ %i.cf, %.noexc48 ], [ %i.ck, %.lr.ph.i.i.i.i41 ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
end_hunk_0
begin_hunk_1_@_ZN7httplib6Client12set_no_proxyERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE:bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !255
  tail call void @_ZN7httplib10ClientImpl12set_no_proxyERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(1176) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7httplib6Client10set_loggerESt8functionIFvRKNS_7RequestERKNS_8ResponseEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(9) %0, ptr nofree noundef align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.432", align 16 ; 12 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !255    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load <2 x ptr>, ptr %i.b, align 8, !tbaa !183
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !256
  %.not.i.i.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFvRKN7httplib7RequestERKNS0_8ResponseEEEC2EOS8_.exit.thread, label %bb.b

_ZNSt8functionIFvRKN7httplib7RequestERKNS0_8ResponseEEEC2EOS8_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 24, i1 false)
  br label %_ZNSt8functionIFvRKN7httplib7RequestERKNS0_8ResponseEEEC2EOS8_.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  br label %_ZNSt8functionIFvRKN7httplib7RequestERKNS0_8ResponseEEEC2EOS8_.exit.i.i

_ZNSt8functionIFvRKN7httplib7RequestERKNS0_8ResponseEEEC2EOS8_.exit.i.i: ; preds = %_ZNSt8functionIFvRKN7httplib7RequestERKNS0_8ResponseEEEC2EOS8_.exit.thread, %bb.b
  %i.g = phi ptr [ %i.e, %_ZNSt8functionIFvRKN7httplib7RequestERKNS0_8ResponseEEEC2EOS8_.exit.thread ], [ %i.f, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 864 ; 2 uses
  %.sroa.0.i.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 16, i1 false), !tbaa.struct !257
  store <2 x i64> %.sroa.0.i.i.i.i.sroa.0.0.copyload, ptr %i.h, align 8, !tbaa !177
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 880 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !183  ; 3 uses
  store ptr %i.k, ptr %i.i, align 16, !tbaa !183
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 888
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !183
  store ptr %i.m, ptr %i.g, align 8, !tbaa !183
  store <2 x ptr> %i.c, ptr %i.j, align 8, !tbaa !183
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt8functionIFvRKN7httplib7RequestERKNS0_8ResponseEEEC2EOS8_.exit.i.i
  %i.n = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #48
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.c, %_ZNSt8functionIFvRKN7httplib7RequestERKNS0_8ResponseEEEC2EOS8_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7httplib6Client16set_error_loggerESt8functionIFvRKNS_5ErrorEPKNS_7RequestEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(9) %0, ptr nofree noundef align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.435", align 16 ; 12 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !255    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load <2 x ptr>, ptr %i.b, align 8, !tbaa !183
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !256
  %.not.i.i.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFvRKN7httplib5ErrorEPKNS0_7RequestEEEC2EOS8_.exit.thread, label %bb.b

_ZNSt8functionIFvRKN7httplib5ErrorEPKNS0_7RequestEEEC2EOS8_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 24, i1 false)
  br label %_ZNSt8functionIFvRKN7httplib5ErrorEPKNS0_7RequestEEEC2EOS8_.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  br label %_ZNSt8functionIFvRKN7httplib5ErrorEPKNS0_7RequestEEEC2EOS8_.exit.i.i

_ZNSt8functionIFvRKN7httplib5ErrorEPKNS0_7RequestEEEC2EOS8_.exit.i.i: ; preds = %_ZNSt8functionIFvRKN7httplib5ErrorEPKNS0_7RequestEEEC2EOS8_.exit.thread, %bb.b
  %i.g = phi ptr [ %i.e, %_ZNSt8functionIFvRKN7httplib5ErrorEPKNS0_7RequestEEEC2EOS8_.exit.thread ], [ %i.f, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 896 ; 2 uses
  %.sroa.0.i.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 16, i1 false), !tbaa.struct !257
  store <2 x i64> %.sroa.0.i.i.i.i.sroa.0.0.copyload, ptr %i.h, align 8, !tbaa !177
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 912 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !183  ; 3 uses
  store ptr %i.k, ptr %i.i, align 16, !tbaa !183
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 920
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !183
  store ptr %i.m, ptr %i.g, align 8, !tbaa !183
  store <2 x ptr> %i.c, ptr %i.j, align 8, !tbaa !183
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt8functionIFvRKN7httplib5ErrorEPKNS0_7RequestEEEC2EOS8_.exit.i.i
  %i.n = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #48
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.c, %_ZNSt8functionIFvRKN7httplib5ErrorEPKNS0_7RequestEEEC2EOS8_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7httplib9SSLServerC2EPKcS2_S2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(1068) initializes((0, 44), (48, 158), (160, 184), (192, 196), (200, 208)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN7httplib6ServerC2Ev(ptr noundef nonnull align 8 dereferenceable(1016) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7httplib9SSLServerE, i64 16), ptr %0, align 8, !tbaa !194
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.a, i8 0, i64 52, i1 false)
  %i.c = invoke ptr @TLS_server_method()
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  %i.d = invoke ptr @SSL_CTX_new(ptr noundef %i.c)
          to label %.noexc10 unwind label %bb.c   ; 7 uses

.noexc10:                                         ; preds = %.noexc
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN7httplib3tls17set_verify_clientEPvb.exit.sink.split, label %bb.b

bb.b:                                             ; preds = %.noexc10
  %i.e = invoke i64 @SSL_CTX_set_options(ptr noundef nonnull %i.d, i64 noundef 196608)
          to label %.noexc11 unwind label %bb.c   ; 0 uses

.noexc11:                                         ; preds = %bb.b
  %i.f = invoke i64 @SSL_CTX_ctrl(ptr noundef nonnull %i.d, i32 noundef 123, i64 noundef 771, ptr noundef null)
          to label %bb.d unwind label %bb.c       ; 0 uses

bb.c:                                             ; preds = %.invoke, %bb.t, %_ZN7httplib3tls18set_client_ca_fileEPvPKcS3_.exit.thread, %bb.r, %bb.q, %_ZN7httplib3tls11load_ca_dirEPvPKc.exit.i, %_ZN7httplib3tls12load_ca_fileEPvPKc.exit.i, %_ZN7httplib3tls20set_server_cert_fileEPvPKcS3_S3_.exit.thread, %bb.h, %.noexc13, %bb.g, %.noexc11, %bb.b, %.noexc, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN7httplib6ServerD2Ev(ptr noundef nonnull align 8 dead_on_return(1016) dereferenceable(1016) %0) #23
  resume { ptr, i32 } %i.g

bb.d:                                             ; preds = %.noexc11
  store ptr %i.d, ptr %i.a, align 8, !tbaa !909
  %i.h = icmp ne ptr %1, null
  %i.i = icmp ne ptr %2, null
  %or.cond3.i.i = and i1 %i.h, %i.i
  br i1 %or.cond3.i.i, label %bb.e, label %_ZN7httplib3tls20set_server_cert_fileEPvPKcS3_S3_.exit.thread

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp eq ptr %5, null
  br i1 %.not.i.i, label %.noexc13, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load i8, ptr %5, align 1, !tbaa !177
  %.not20.i.i = icmp eq i8 %i.j, 0
  br i1 %.not20.i.i, label %.noexc13, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @SSL_CTX_set_default_passwd_cb_userdata(ptr noundef nonnull %i.d, ptr noundef nonnull %5)
          to label %.noexc13 unwind label %bb.c

.noexc13:                                         ; preds = %bb.g, %bb.f, %bb.e
  %i.k = invoke i32 @SSL_CTX_use_certificate_chain_file(ptr noundef nonnull %i.d, ptr noundef nonnull %1)
          to label %.noexc14 unwind label %bb.c

.noexc14:                                         ; preds = %.noexc13
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.h, label %_ZN7httplib3tls20set_server_cert_fileEPvPKcS3_S3_.exit.thread

bb.h:                                             ; preds = %.noexc14
  %i.m = invoke i32 @SSL_CTX_use_PrivateKey_file(ptr noundef nonnull %i.d, ptr noundef nonnull %2, i32 noundef 1)
          to label %_ZN7httplib3tls20set_server_cert_fileEPvPKcS3_S3_.exit unwind label %bb.c

_ZN7httplib3tls20set_server_cert_fileEPvPKcS3_S3_.exit: ; preds = %bb.h
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.i, label %_ZN7httplib3tls20set_server_cert_fileEPvPKcS3_S3_.exit.thread

_ZN7httplib3tls20set_server_cert_fileEPvPKcS3_S3_.exit.thread: ; preds = %.noexc14, %bb.d, %_ZN7httplib3tls20set_server_cert_fileEPvPKcS3_S3_.exit
  %i.o = invoke noundef i64 @ERR_get_error()
          to label %_ZN7httplib3tls9get_errorEv.exit unwind label %bb.c

_ZN7httplib3tls9get_errorEv.exit:                 ; preds = %_ZN7httplib3tls20set_server_cert_fileEPvPKcS3_S3_.exit.thread
  %i.p = trunc i64 %i.o to i32
  store i32 %i.p, ptr %i.b, align 8, !tbaa !910
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !909  ; 2 uses
  %.not.i17 = icmp eq ptr %i.q, null
  br i1 %.not.i17, label %_ZN7httplib3tls17set_verify_clientEPvb.exit.sink.split, label %.invoke

bb.i:                                             ; preds = %_ZN7httplib3tls20set_server_cert_fileEPvPKcS3_S3_.exit
  %i.r = icmp ne ptr %3, null                     ; 3 uses
  %i.s = icmp ne ptr %4, null                     ; 2 uses
  %or.cond = or i1 %i.r, %i.s
  br i1 %or.cond, label %bb.j, label %_ZN7httplib3tls17set_verify_clientEPvb.exit

bb.j:                                             ; preds = %bb.i
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !909  ; 4 uses
  %.not.i19 = icmp eq ptr %i.t, null
  br i1 %.not.i19, label %_ZN7httplib3tls18set_client_ca_fileEPvPKcS3_.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %i.r, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.u = load i8, ptr %3, align 1, !tbaa !177
  %.not23.i = icmp eq i8 %i.u, 0
  br i1 %.not23.i, label %bb.m, label %_ZN7httplib3tls12load_ca_fileEPvPKc.exit.i

_ZN7httplib3tls12load_ca_fileEPvPKc.exit.i:       ; preds = %bb.l
  %i.v = invoke i32 @SSL_CTX_load_verify_locations(ptr noundef nonnull %i.t, ptr noundef nonnull %3, ptr noundef null)
          to label %.noexc20 unwind label %bb.c

.noexc20:                                         ; preds = %_ZN7httplib3tls12load_ca_fileEPvPKc.exit.i
  %i.w = icmp eq i32 %i.v, 1
  br label %bb.m

bb.m:                                             ; preds = %.noexc20, %bb.l, %bb.k
  %.0.i = phi i1 [ %i.w, %.noexc20 ], [ true, %bb.k ], [ true, %bb.l ] ; 3 uses
  br i1 %i.s, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.x = load i8, ptr %4, align 1, !tbaa !177
  %.not25.i = icmp eq i8 %i.x, 0
  br i1 %.not25.i, label %bb.o, label %_ZN7httplib3tls11load_ca_dirEPvPKc.exit.i

_ZN7httplib3tls11load_ca_dirEPvPKc.exit.i:        ; preds = %bb.n
  %i.y = invoke i32 @SSL_CTX_load_verify_locations(ptr noundef nonnull %i.t, ptr noundef null, ptr noundef nonnull %4)
          to label %.noexc21 unwind label %bb.c

.noexc21:                                         ; preds = %_ZN7httplib3tls11load_ca_dirEPvPKc.exit.i
  %i.z = icmp eq i32 %i.y, 1
  %spec.select28.i = select i1 %i.z, i1 %.0.i, i1 false
  br label %bb.o

bb.o:                                             ; preds = %.noexc21, %bb.n, %bb.m
  %.1.i = phi i1 [ %spec.select28.i, %.noexc21 ], [ %.0.i, %bb.m ], [ %.0.i, %bb.n ]
  br i1 %i.r, label %bb.p, label %_ZN7httplib3tls18set_client_ca_fileEPvPKcS3_.exit

bb.p:                                             ; preds = %bb.o
  %i.aa = load i8, ptr %3, align 1, !tbaa !177
  %.not26.i = icmp eq i8 %i.aa, 0
  br i1 %.not26.i, label %_ZN7httplib3tls18set_client_ca_fileEPvPKcS3_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ab = invoke ptr @SSL_load_client_CA_file(ptr noundef nonnull %3)
          to label %.noexc22 unwind label %bb.c   ; 2 uses

.noexc22:                                         ; preds = %bb.q
  %.not27.i = icmp eq ptr %i.ab, null
  br i1 %.not27.i, label %_ZN7httplib3tls18set_client_ca_fileEPvPKcS3_.exit, label %bb.r

bb.r:                                             ; preds = %.noexc22
  invoke void @SSL_CTX_set_client_CA_list(ptr noundef nonnull %i.t, ptr noundef nonnull %i.ab)
          to label %_ZN7httplib3tls18set_client_ca_fileEPvPKcS3_.exit unwind label %bb.c

_ZN7httplib3tls18set_client_ca_fileEPvPKcS3_.exit: ; preds = %.noexc22, %bb.p, %bb.o, %bb.r
  br i1 %.1.i, label %bb.s, label %_ZN7httplib3tls18set_client_ca_fileEPvPKcS3_.exit.thread

_ZN7httplib3tls18set_client_ca_fileEPvPKcS3_.exit.thread: ; preds = %bb.j, %_ZN7httplib3tls18set_client_ca_fileEPvPKcS3_.exit
  %i.ac = invoke noundef i64 @ERR_get_error()
          to label %_ZN7httplib3tls9get_errorEv.exit25 unwind label %bb.c

_ZN7httplib3tls9get_errorEv.exit25:               ; preds = %_ZN7httplib3tls18set_client_ca_fileEPvPKcS3_.exit.thread
  %i.ad = trunc i64 %i.ac to i32
  store i32 %i.ad, ptr %i.b, align 8, !tbaa !910
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !909 ; 2 uses
  %.not.i26 = icmp eq ptr %i.ae, null
  br i1 %.not.i26, label %_ZN7httplib3tls17set_verify_clientEPvb.exit.sink.split, label %.invoke

.invoke:                                          ; preds = %_ZN7httplib3tls9get_errorEv.exit25, %_ZN7httplib3tls9get_errorEv.exit
  %i.af = phi ptr [ %i.q, %_ZN7httplib3tls9get_errorEv.exit ], [ %i.ae, %_ZN7httplib3tls9get_errorEv.exit25 ]
  invoke void @SSL_CTX_free(ptr noundef nonnull %i.af)
          to label %_ZN7httplib3tls17set_verify_clientEPvb.exit.sink.split unwind label %bb.c

bb.s:                                             ; preds = %_ZN7httplib3tls18set_client_ca_fileEPvPKcS3_.exit
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !909 ; 2 uses
  %.not.i29 = icmp eq ptr %i.ag, null
  br i1 %.not.i29, label %_ZN7httplib3tls17set_verify_clientEPvb.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @SSL_CTX_set_verify(ptr noundef nonnull %i.ag, i32 noundef 3, ptr noundef null)
          to label %_ZN7httplib3tls17set_verify_clientEPvb.exit unwind label %bb.c

_ZN7httplib3tls17set_verify_clientEPvb.exit.sink.split: ; preds = %.invoke, %_ZN7httplib3tls9get_errorEv.exit25, %_ZN7httplib3tls9get_errorEv.exit, %.noexc10
  store ptr null, ptr %i.a, align 8, !tbaa !909
  br label %_ZN7httplib3tls17set_verify_clientEPvb.exit

_ZN7httplib3tls17set_verify_clientEPvb.exit:      ; preds = %_ZN7httplib3tls17set_verify_clientEPvb.exit.sink.split, %bb.s, %bb.t, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN7httplib3tls21create_server_contextEv() local_unnamed_addr #7 {
bb.a:
  %i.a = tail call ptr @TLS_server_method()
  %i.b = tail call ptr @SSL_CTX_new(ptr noundef %i.a) ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @SSL_CTX_set_options(ptr noundef nonnull %i.b, i64 noundef 196608) ; 0 uses
  %i.d = tail call i64 @SSL_CTX_ctrl(ptr noundef nonnull %i.b, i32 noundef 123, i64 noundef 771, ptr noundef null) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7httplib3tls20set_server_cert_fileEPvPKcS3_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond.i = and i1 %i.a, %i.b
  %i.c = icmp ne ptr %2, null
  %or.cond3.i = and i1 %or.cond.i, %i.c
  br i1 %or.cond3.i, label %bb.b, label %_ZN7httplib3tls20set_client_cert_fileEPvPKcS3_S3_.exit

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i8, ptr %3, align 1, !tbaa !177
  %.not20.i = icmp eq i8 %i.d, 0
  br i1 %.not20.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @SSL_CTX_set_default_passwd_cb_userdata(ptr noundef nonnull %0, ptr noundef nonnull %3)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.e = tail call i32 @SSL_CTX_use_certificate_chain_file(ptr noundef nonnull %0, ptr noundef nonnull %1)
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.f, label %_ZN7httplib3tls20set_client_cert_fileEPvPKcS3_S3_.exit

bb.f:                                             ; preds = %bb.e
  %i.g = tail call i32 @SSL_CTX_use_PrivateKey_file(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 1)
  %i.h = icmp eq i32 %i.g, 1
  br label %_ZN7httplib3tls20set_client_cert_fileEPvPKcS3_S3_.exit

_ZN7httplib3tls20set_client_cert_fileEPvPKcS3_S3_.exit: ; preds = %bb.a, %bb.e, %bb.f
  %.0.i = phi i1 [ false, %bb.a ], [ false, %bb.e ], [ %i.h, %bb.f ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define void @_ZN7httplib3tls12free_contextEPv(ptr noundef %0) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @SSL_CTX_free(ptr noundef nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7httplib3tls18set_client_ca_fileEPvPKcS3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not22 = icmp eq ptr %1, null                  ; 2 uses
  br i1 %.not22, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = load i8, ptr %1, align 1, !tbaa !177
  %.not23 = icmp eq i8 %i.a, 0
  br i1 %.not23, label %bb.d, label %_ZN7httplib3tls12load_ca_fileEPvPKc.exit

_ZN7httplib3tls12load_ca_fileEPvPKc.exit:         ; preds = %bb.c
  %i.b = tail call i32 @SSL_CTX_load_verify_locations(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef null)
  %i.c = icmp eq i32 %i.b, 1
  br label %bb.d

bb.d:                                             ; preds = %_ZN7httplib3tls12load_ca_fileEPvPKc.exit, %bb.c, %bb.b
  %.0 = phi i1 [ %i.c, %_ZN7httplib3tls12load_ca_fileEPvPKc.exit ], [ true, %bb.b ], [ true, %bb.c ] ; 3 uses
  %.not24 = icmp eq ptr %2, null
  br i1 %.not24, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = load i8, ptr %2, align 1, !tbaa !177
  %.not25 = icmp eq i8 %i.d, 0
  br i1 %.not25, label %bb.f, label %_ZN7httplib3tls11load_ca_dirEPvPKc.exit

_ZN7httplib3tls11load_ca_dirEPvPKc.exit:          ; preds = %bb.e
  %i.e = tail call i32 @SSL_CTX_load_verify_locations(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %2)
  %i.f = icmp eq i32 %i.e, 1
  %spec.select28 = select i1 %i.f, i1 %.0, i1 false
  br label %bb.f

bb.f:                                             ; preds = %_ZN7httplib3tls11load_ca_dirEPvPKc.exit, %bb.e, %bb.d
  %.1 = phi i1 [ %spec.select28, %_ZN7httplib3tls11load_ca_dirEPvPKc.exit ], [ %.0, %bb.d ], [ %.0, %bb.e ] ; 4 uses
  br i1 %.not22, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = load i8, ptr %1, align 1, !tbaa !177
  %.not26 = icmp eq i8 %i.g, 0
  br i1 %.not26, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = tail call ptr @SSL_load_client_CA_file(ptr noundef nonnull %1) ; 2 uses
  %.not27 = icmp eq ptr %i.h, null
  br i1 %.not27, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @SSL_CTX_set_client_CA_list(ptr noundef nonnull %0, ptr noundef nonnull %i.h)
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.g, %bb.i, %bb.h, %bb.a
  %.016 = phi i1 [ false, %bb.a ], [ %.1, %bb.h ], [ %.1, %bb.i ], [ %.1, %bb.g ], [ %.1, %bb.f ]
  ret i1 %.016
}

; Function Attrs: mustprogress uwtable
define void @_ZN7httplib3tls17set_verify_clientEPvb(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = select i1 %1, i32 3, i32 0
  tail call void @SSL_CTX_set_verify(ptr noundef nonnull %0, i32 noundef %i.a, ptr noundef null)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7httplib9SSLServerC2ERKNS0_9PemMemoryE(ptr noundef nonnull align 8 dereferenceable(1068) initializes((0, 44), (48, 158), (160, 184), (192, 196), (200, 208)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_1
begin_hunk_2_@"_ZNSt17_Function_handlerIFvPKcS1_EZN7httplib6detail18parse_range_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorISt4pairIllESaISF_EEE3$_0E9_M_invokeERKSt9_Any_dataOS1_SO_":bb.a
  %i.cr = icmp ult i8 %i.cq, 10
  br i1 %i.cr, label %bb.y, label %.loopexit116.i.i.i

bb.y:                                             ; preds = %bb.x
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i.i.i.i.i, i64 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge.i.i.i.i.i.i.i.i
  %.sroa.032.2.i.i.i.i.i.i.i.i = phi ptr [ %i.cs, %bb.y ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ct = load i8, ptr %.sroa.032.2.i.i.i.i.i.i.i.i, align 1, !tbaa !177
  %i.cu = add i8 %i.ct, -48
  %i.cv = icmp ult i8 %i.cu, 10
  %spec.select.i.i.i.i.i.i.i.i = select i1 %i.cv, ptr %i.bn, ptr %.sroa.032.2.i.i.i.i.i.i.i.i
  br label %.loopexit116.i.i.i

.loopexit116.i.i.i.loopexit.split.loop.exit:      ; preds = %bb.t
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i.i, i64 3
  br label %.loopexit116.i.i.i

.loopexit116.i.i.i.loopexit.split.loop.exit58:    ; preds = %bb.s
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i.i, i64 2
  br label %.loopexit116.i.i.i

.loopexit116.i.i.i.loopexit.split.loop.exit60:    ; preds = %bb.r
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i.i, i64 1
  br label %.loopexit116.i.i.i

.loopexit116.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.loopexit116.i.i.i.loopexit.split.loop.exit, %.loopexit116.i.i.i.loopexit.split.loop.exit58, %.loopexit116.i.i.i.loopexit.split.loop.exit60, %bb.z, %bb.x, %bb.v
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i.i.i.i.i, %bb.x ], [ %spec.select.i.i.i.i.i.i.i.i, %bb.z ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i.i.i, %bb.v ], [ %i.cy, %.loopexit116.i.i.i.loopexit.split.loop.exit60 ], [ %i.cw, %.loopexit116.i.i.i.loopexit.split.loop.exit ], [ %i.cx, %.loopexit116.i.i.i.loopexit.split.loop.exit58 ], [ %.sroa.032.051.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.cz = icmp eq ptr %i.bn, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i.i.i
  br i1 %i.cz, label %.thread.i.i.i, label %bb.aj

.thread.i.i.i:                                    ; preds = %.loopexit116.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i
  %.val.i.i.i = load ptr, ptr %4, align 8, !tbaa !189 ; 6 uses
  %.val27.i.i.i = load i64, ptr %i.bc, align 8, !tbaa !176 ; 7 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.val27.i.i.i ; 3 uses
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = ashr i64 %.val27.i.i.i, 2               ; 2 uses
  %i.dd = icmp sgt i64 %i.dc, 0
  br i1 %i.dd, label %.lr.ph.i.i.i.i.preheader.i41.i.i.i, label %._crit_edge.i.i.i.i.i34.i.i.i

.lr.ph.i.i.i.i.preheader.i41.i.i.i:               ; preds = %.thread.i.i.i
  %i.de = and i64 %.val27.i.i.i, -4
  %scevgep.i42.i.i.i = getelementptr i8, ptr %.val.i.i.i, i64 %i.de
  br label %.lr.ph.i.i.i.i.i43.i.i.i

.lr.ph.i.i.i.i.i43.i.i.i:                         ; preds = %bb.ad, %.lr.ph.i.i.i.i.preheader.i41.i.i.i
  %.052.i.i.i.i.i44.i.i.i = phi i64 [ %i.dv, %bb.ad ], [ %i.dc, %.lr.ph.i.i.i.i.preheader.i41.i.i.i ] ; 2 uses
  %.sroa.032.051.i.i.i.i.i45.i.i.i = phi ptr [ %i.du, %bb.ad ], [ %.val.i.i.i, %.lr.ph.i.i.i.i.preheader.i41.i.i.i ] ; 9 uses
  %i.df = load i8, ptr %.sroa.032.051.i.i.i.i.i45.i.i.i, align 1, !tbaa !177
  %i.dg = add i8 %i.df, -48
  %i.dh = icmp ult i8 %i.dg, 10
  br i1 %i.dh, label %bb.aa, label %.loopexit.i.i.i

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i43.i.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i45.i.i.i, i64 1
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !177
  %i.dk = add i8 %i.dj, -48
  %i.dl = icmp ult i8 %i.dk, 10
  br i1 %i.dl, label %bb.ab, label %.loopexit.i.i.i.loopexit.split.loop.exit68

bb.ab:                                            ; preds = %bb.aa
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i45.i.i.i, i64 2
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !177
  %i.do = add i8 %i.dn, -48
  %i.dp = icmp ult i8 %i.do, 10
  br i1 %i.dp, label %bb.ac, label %.loopexit.i.i.i.loopexit.split.loop.exit66

bb.ac:                                            ; preds = %bb.ab
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i45.i.i.i, i64 3
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !177
  %i.ds = add i8 %i.dr, -48
  %i.dt = icmp ult i8 %i.ds, 10
  br i1 %i.dt, label %bb.ad, label %.loopexit.i.i.i.loopexit.split.loop.exit

bb.ad:                                            ; preds = %bb.ac
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i45.i.i.i, i64 4
  %i.dv = add nsw i64 %.052.i.i.i.i.i44.i.i.i, -1
  %i.dw = icmp sgt i64 %.052.i.i.i.i.i44.i.i.i, 1
  br i1 %i.dw, label %.lr.ph.i.i.i.i.i43.i.i.i, label %._crit_edge.i.i.i.i.i34.i.i.i, !llvm.loop !79

._crit_edge.i.i.i.i.i34.i.i.i:                    ; preds = %bb.ad, %.thread.i.i.i
  %.sroa.032.0.lcssa.i.i.i.i.i35.i.i.i = phi ptr [ %.val.i.i.i, %.thread.i.i.i ], [ %scevgep.i42.i.i.i, %bb.ad ] ; 6 uses
  %.pre-phi.i.i.i.i.i36.i.i.i = ptrtoint ptr %.sroa.032.0.lcssa.i.i.i.i.i35.i.i.i to i64
  %i.dx = sub i64 %i.db, %.pre-phi.i.i.i.i.i36.i.i.i
  switch i64 %i.dx, label %.thread97.i.i.i [
    i64 3, label %bb.ae
    i64 2, label %bb.ag
    i64 1, label %bb.ai
  ]

bb.ae:                                            ; preds = %._crit_edge.i.i.i.i.i34.i.i.i
  %i.dy = load i8, ptr %.sroa.032.0.lcssa.i.i.i.i.i35.i.i.i, align 1, !tbaa !177
  %i.dz = add i8 %i.dy, -48
  %i.ea = icmp ult i8 %i.dz, 10
  br i1 %i.ea, label %bb.af, label %.loopexit.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i.i35.i.i.i, i64 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %._crit_edge.i.i.i.i.i34.i.i.i
  %.sroa.032.1.i.i.i.i.i40.i.i.i = phi ptr [ %i.eb, %bb.af ], [ %.sroa.032.0.lcssa.i.i.i.i.i35.i.i.i, %._crit_edge.i.i.i.i.i34.i.i.i ] ; 3 uses
  %i.ec = load i8, ptr %.sroa.032.1.i.i.i.i.i40.i.i.i, align 1, !tbaa !177
  %i.ed = add i8 %i.ec, -48
  %i.ee = icmp ult i8 %i.ed, 10
  br i1 %i.ee, label %bb.ah, label %.loopexit.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i.i40.i.i.i, i64 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %._crit_edge.i.i.i.i.i34.i.i.i
  %.sroa.032.2.i.i.i.i.i37.i.i.i = phi ptr [ %i.ef, %bb.ah ], [ %.sroa.032.0.lcssa.i.i.i.i.i35.i.i.i, %._crit_edge.i.i.i.i.i34.i.i.i ] ; 2 uses
  %i.eg = load i8, ptr %.sroa.032.2.i.i.i.i.i37.i.i.i, align 1, !tbaa !177
  %i.eh = add i8 %i.eg, -48
  %i.ei = icmp ult i8 %i.eh, 10
  %spec.select.i.i.i.i.i38.i.i.i = select i1 %i.ei, ptr %i.da, ptr %.sroa.032.2.i.i.i.i.i37.i.i.i
  br label %.loopexit.i.i.i

.loopexit.i.i.i.loopexit.split.loop.exit:         ; preds = %bb.ac
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i45.i.i.i, i64 3
  br label %.loopexit.i.i.i

.loopexit.i.i.i.loopexit.split.loop.exit66:       ; preds = %bb.ab
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i45.i.i.i, i64 2
  br label %.loopexit.i.i.i

.loopexit.i.i.i.loopexit.split.loop.exit68:       ; preds = %bb.aa
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i45.i.i.i, i64 1
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i43.i.i.i, %.loopexit.i.i.i.loopexit.split.loop.exit, %.loopexit.i.i.i.loopexit.split.loop.exit66, %.loopexit.i.i.i.loopexit.split.loop.exit68, %bb.ai, %bb.ag, %bb.ae
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i39.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i.i40.i.i.i, %bb.ag ], [ %spec.select.i.i.i.i.i38.i.i.i, %bb.ai ], [ %.sroa.032.0.lcssa.i.i.i.i.i35.i.i.i, %bb.ae ], [ %i.el, %.loopexit.i.i.i.loopexit.split.loop.exit68 ], [ %i.ej, %.loopexit.i.i.i.loopexit.split.loop.exit ], [ %i.ek, %.loopexit.i.i.i.loopexit.split.loop.exit66 ], [ %.sroa.032.051.i.i.i.i.i45.i.i.i, %.lr.ph.i.i.i.i.i43.i.i.i ]
  %i.em = icmp eq ptr %i.da, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i39.i.i.i
  br i1 %i.em, label %.thread97.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %.loopexit.i.i.i, %.loopexit116.i.i.i
  %i.en = load ptr, ptr %.val, align 8, !tbaa !3324, !nonnull !192
  store i8 0, ptr %i.en, align 1, !tbaa !301
  br label %bb.ax

bb.ak:                                            ; preds = %.noexc.i31.i.i.i
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i.i.i

.thread97.i.i.i:                                  ; preds = %.loopexit.i.i.i, %._crit_edge.i.i.i.i.i34.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i64 -1, ptr %i.c, align 8, !tbaa !190
  %i.ep = icmp eq i64 %.val29.i.i.i, 0
  br i1 %i.ep, label %_ZN7httplib6detail10from_charsIlEENS0_17from_chars_resultIT_EEPKcS6_RS3_i.exit.thread.i.i.i, label %bb.al

bb.al:                                            ; preds = %.thread97.i.i.i
  %i.eq = load i8, ptr %.val28.i.i.i, align 1, !tbaa !177
  %i.er = icmp eq i8 %i.eq, 45                    ; 3 uses
  %spec.select.i.i.i.i = zext i1 %i.er to i64     ; 2 uses
  %i.es = icmp samesign eq i64 %.val29.i.i.i, %spec.select.i.i.i.i
  br i1 %i.es, label %_ZN7httplib6detail10from_charsIlEENS0_17from_chars_resultIT_EEPKcS6_RS3_i.exit.thread.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.al, %bb.an
  %.04779.i.i.i.i = phi i64 [ %i.fc, %bb.an ], [ 0, %bb.al ] ; 3 uses
  %.151.idx78.i.i.i.i = phi i64 [ %.151.add.i.i.i.i, %bb.an ], [ %spec.select.i.i.i.i, %bb.al ] ; 3 uses
  %.151.ptr80.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val28.i.i.i, i64 %.151.idx78.i.i.i.i
  %i.et = load i8, ptr %.151.ptr80.i.i.i.i, align 1, !tbaa !177 ; 2 uses
  %i.eu = add i8 %i.et, -48
  %i.ev = icmp ult i8 %i.eu, 10
  br i1 %i.ev, label %bb.am, label %.thread.i.i.i.i

bb.am:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ew = zext nneg i8 %i.et to i64
  %i.ex = add nsw i64 %i.ew, -48                  ; 2 uses
  %i.ey = xor i64 %i.ex, 9223372036854775806
  %i.ez = udiv i64 %i.ey, 10
  %i.fa = icmp sgt i64 %.04779.i.i.i.i, %i.ez
  br i1 %i.fa, label %_ZN7httplib6detail10from_charsIlEENS0_17from_chars_resultIT_EEPKcS6_RS3_i.exit.thread.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fb = mul nsw i64 %.04779.i.i.i.i, 10
  %i.fc = add nuw nsw i64 %i.ex, %i.fb            ; 2 uses
  %.151.add.i.i.i.i = add nuw nsw i64 %.151.idx78.i.i.i.i, 1 ; 2 uses
  %.not59.i.i.i.i = icmp samesign eq i64 %.151.add.i.i.i.i, %.val29.i.i.i
  br i1 %.not59.i.i.i.i, label %.thread.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3322

.thread.i.i.i.i:                                  ; preds = %bb.an, %.lr.ph.i.i.i.i
  %.151.idx.lcssa.ph.i.i.i.i = phi i64 [ %.val29.i.i.i, %bb.an ], [ %.151.idx78.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %.047.lcssa.ph.i.i.i.i = phi i64 [ %i.fc, %bb.an ], [ %.04779.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.fd = icmp samesign eq i64 %.151.idx.lcssa.ph.i.i.i.i, 0
  %i.fe = icmp eq i64 %.151.idx.lcssa.ph.i.i.i.i, 1
  %or.cond64.i.i.i.i = and i1 %i.er, %i.fe
  %or.cond65.i.i.i.i = or i1 %i.fd, %or.cond64.i.i.i.i
  br i1 %or.cond65.i.i.i.i, label %_ZN7httplib6detail10from_charsIlEENS0_17from_chars_resultIT_EEPKcS6_RS3_i.exit.thread.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %.thread.i.i.i.i
  %i.ff = sub nsw i64 0, %.047.lcssa.ph.i.i.i.i
  %i.fg = select i1 %i.er, i64 %i.ff, i64 %.047.lcssa.ph.i.i.i.i ; 2 uses
  store i64 %i.fg, ptr %i.c, align 8, !tbaa !190
  br label %_ZN7httplib6detail10from_charsIlEENS0_17from_chars_resultIT_EEPKcS6_RS3_i.exit.thread.i.i.i

_ZN7httplib6detail10from_charsIlEENS0_17from_chars_resultIT_EEPKcS6_RS3_i.exit.thread.i.i.i: ; preds = %bb.am, %bb.ao, %.thread.i.i.i.i, %bb.al, %.thread97.i.i.i
  %i.fh = phi i64 [ -1, %.thread97.i.i.i ], [ -1, %.thread.i.i.i.i ], [ -1, %bb.al ], [ %i.fg, %bb.ao ], [ -1, %bb.am ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i64 -1, ptr %i.d, align 8, !tbaa !190
  %i.fi = icmp eq i64 %.val27.i.i.i, 0
  br i1 %i.fi, label %_ZN7httplib6detail10from_charsIlEENS0_17from_chars_resultIT_EEPKcS6_RS3_i.exit78.thread.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %_ZN7httplib6detail10from_charsIlEENS0_17from_chars_resultIT_EEPKcS6_RS3_i.exit.thread.i.i.i
  %i.fj = load i8, ptr %.val.i.i.i, align 1, !tbaa !177
  %i.fk = icmp eq i8 %i.fj, 45                    ; 3 uses
  %spec.select.i52.i.i.i = zext i1 %i.fk to i64   ; 2 uses
  %i.fl = icmp samesign eq i64 %.val27.i.i.i, %spec.select.i52.i.i.i
  br i1 %i.fl, label %_ZN7httplib6detail10from_charsIlEENS0_17from_chars_resultIT_EEPKcS6_RS3_i.exit78.thread.i.i.i, label %.lr.ph.i56.i.i.i

.lr.ph.i56.i.i.i:                                 ; preds = %bb.ap, %bb.ar
  %.04779.i59.i.i.i = phi i64 [ %i.fv, %bb.ar ], [ 0, %bb.ap ] ; 3 uses
  %.151.idx78.i60.i.i.i = phi i64 [ %.151.add.i75.i.i.i, %bb.ar ], [ %spec.select.i52.i.i.i, %bb.ap ] ; 3 uses
  %.151.ptr80.i58.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.151.idx78.i60.i.i.i
  %i.fm = load i8, ptr %.151.ptr80.i58.i.i.i, align 1, !tbaa !177 ; 2 uses
  %i.fn = add i8 %i.fm, -48
  %i.fo = icmp ult i8 %i.fn, 10
  br i1 %i.fo, label %bb.aq, label %.thread.i63.i.i.i

bb.aq:                                            ; preds = %.lr.ph.i56.i.i.i
  %i.fp = zext nneg i8 %i.fm to i64
  %i.fq = add nsw i64 %i.fp, -48                  ; 2 uses
  %i.fr = xor i64 %i.fq, 9223372036854775806
  %i.fs = udiv i64 %i.fr, 10
  %i.ft = icmp sgt i64 %.04779.i59.i.i.i, %i.fs
  br i1 %i.ft, label %_ZN7httplib6detail10from_charsIlEENS0_17from_chars_resultIT_EEPKcS6_RS3_i.exit78.thread.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fu = mul nsw i64 %.04779.i59.i.i.i, 10
  %i.fv = add nuw nsw i64 %i.fq, %i.fu            ; 2 uses
  %.151.add.i75.i.i.i = add nuw nsw i64 %.151.idx78.i60.i.i.i, 1 ; 2 uses
  %.not59.i77.i.i.i = icmp samesign eq i64 %.151.add.i75.i.i.i, %.val27.i.i.i
  br i1 %.not59.i77.i.i.i, label %.thread.i63.i.i.i, label %.lr.ph.i56.i.i.i, !llvm.loop !3322

.thread.i63.i.i.i:                                ; preds = %bb.ar, %.lr.ph.i56.i.i.i
  %.151.idx.lcssa.ph.i64.i.i.i = phi i64 [ %.val27.i.i.i, %bb.ar ], [ %.151.idx78.i60.i.i.i, %.lr.ph.i56.i.i.i ] ; 2 uses
  %.047.lcssa.ph.i65.i.i.i = phi i64 [ %i.fv, %bb.ar ], [ %.04779.i59.i.i.i, %.lr.ph.i56.i.i.i ] ; 2 uses
  %i.fw = icmp samesign eq i64 %.151.idx.lcssa.ph.i64.i.i.i, 0
  %i.fx = icmp eq i64 %.151.idx.lcssa.ph.i64.i.i.i, 1
  %or.cond64.i67.i.i.i = and i1 %i.fk, %i.fx
  %or.cond65.i68.i.i.i = or i1 %i.fw, %or.cond64.i67.i.i.i
  br i1 %or.cond65.i68.i.i.i, label %_ZN7httplib6detail10from_charsIlEENS0_17from_chars_resultIT_EEPKcS6_RS3_i.exit78.thread.i.i.i, label %bb.as

bb.as:                                            ; preds = %.thread.i63.i.i.i
  %i.fy = sub nsw i64 0, %.047.lcssa.ph.i65.i.i.i
  %i.fz = select i1 %i.fk, i64 %i.fy, i64 %.047.lcssa.ph.i65.i.i.i ; 2 uses
  store i64 %i.fz, ptr %i.d, align 8, !tbaa !190
  br label %_ZN7httplib6detail10from_charsIlEENS0_17from_chars_resultIT_EEPKcS6_RS3_i.exit78.thread.i.i.i

_ZN7httplib6detail10from_charsIlEENS0_17from_chars_resultIT_EEPKcS6_RS3_i.exit78.thread.i.i.i: ; preds = %bb.aq, %bb.as, %.thread.i63.i.i.i, %bb.ap, %_ZN7httplib6detail10from_charsIlEENS0_17from_chars_resultIT_EEPKcS6_RS3_i.exit.thread.i.i.i
  %i.ga = phi i64 [ -1, %_ZN7httplib6detail10from_charsIlEENS0_17from_chars_resultIT_EEPKcS6_RS3_i.exit.thread.i.i.i ], [ -1, %.thread.i63.i.i.i ], [ -1, %bb.ap ], [ %i.fz, %bb.as ], [ -1, %bb.aq ] ; 2 uses
  %i.gb = icmp eq i64 %i.fh, -1                   ; 2 uses
  %i.gc = icmp eq i64 %i.ga, -1                   ; 2 uses
  %or.cond.i.i.i = select i1 %i.gb, i1 %i.gc, i1 false
  br i1 %or.cond.i.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZN7httplib6detail10from_charsIlEENS0_17from_chars_resultIT_EEPKcS6_RS3_i.exit78.thread.i.i.i
  %5 = icmp sle i64 %i.fh, %i.ga
  %.not163.i.i.i = or i1 %i.gc, %5
  %or.cond26.i.i.i = select i1 %i.gb, i1 true, i1 %.not163.i.i.i
  br i1 %or.cond26.i.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at, %_ZN7httplib6detail10from_charsIlEENS0_17from_chars_resultIT_EEPKcS6_RS3_i.exit78.thread.i.i.i
  %i.gd = load ptr, ptr %.val, align 8, !tbaa !3324, !nonnull !192
  store i8 0, ptr %i.gd, align 1, !tbaa !301
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.ge = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !3325, !nonnull !192, !align !253
  %i.gg = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorISt4pairIllESaIS1_EE12emplace_backIJRlS5_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.gf, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.aw unwind label %bb.ay     ; 0 uses

bb.aw:                                            ; preds = %bb.av, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.aj
  %i.gh = load ptr, ptr %4, align 8, !tbaa !189   ; 2 uses
  %i.gi = icmp eq ptr %i.gh, %i.bb
  br i1 %i.gi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ax
  %i.gj = load i64, ptr %i.bb, align 8, !tbaa !177
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gk) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.gl = load ptr, ptr %3, align 8, !tbaa !189   ; 2 uses
  %i.gm = icmp eq ptr %i.gl, %i.ao
  br i1 %i.gm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.gn = load i64, ptr %i.ao, align 8, !tbaa !177
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.go) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %"_ZSt10__invoke_rIvRZN7httplib6detail18parse_range_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorISt4pairIllESaISC_EEE3$_0JPKcSJ_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit"

bb.ay:                                            ; preds = %bb.av
  %i.gp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.gq = load ptr, ptr %4, align 8, !tbaa !189   ; 2 uses
  %i.gr = icmp eq ptr %i.gq, %i.bb
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82.i.i.i: ; preds = %bb.ay
  %i.gs = load i64, ptr %i.bb, align 8, !tbaa !177
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gt) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i.i.i: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82.i.i.i, %bb.ak
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %i.eo, %bb.ak ], [ %i.gp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82.i.i.i ], [ %i.gp, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.gu = load ptr, ptr %3, align 8, !tbaa !189   ; 2 uses
  %i.gv = icmp eq ptr %i.gu, %i.ao
  br i1 %i.gv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i.i.i
  %i.gw = load i64, ptr %i.ao, align 8, !tbaa !177
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gx) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn.pn.i.i.i

"_ZSt10__invoke_rIvRZN7httplib6detail18parse_range_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorISt4pairIllESaISC_EEE3$_0JPKcSJ_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit": ; preds = %bb.a, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.thread.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvPKcS1_EZN7httplib6detail18parse_range_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorISt4pairIllESaISF_EEE3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #7 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail18parse_range_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorISt4pairIllESaISD_EEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN7httplib6detail18parse_range_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorISt4pairIllESaISB_EEE3$_0", ptr %0, align 8, !tbaa !1132
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail18parse_range_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorISt4pairIllESaISD_EEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !183
  store ptr %.val, ptr %0, align 8, !tbaa !183
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail18parse_range_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorISt4pairIllESaISD_EEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #50 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val6, i64 24, i1 false), !tbaa.struct !3326
  store ptr %i.a, ptr %0, align 8, !tbaa !183
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail18parse_range_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorISt4pairIllESaISD_EEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !183 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail18parse_range_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorISt4pairIllESaISD_EEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 24) #46
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail18parse_range_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorISt4pairIllESaISD_EEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail18parse_range_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorISt4pairIllESaISD_EEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvPKcS1_EZN7httplib6detail19parse_accept_headerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorISA_SaISA_EEE3$_0E9_M_invokeERKSt9_Any_dataOS1_SM_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %5 = alloca %struct.AcceptEntry, align 8        ; 22 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !183   ; 6 uses
  %.val3 = load ptr, ptr %1, align 8, !tbaa !310  ; 3 uses
  %.val4 = load ptr, ptr %2, align 8, !tbaa !310
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !175
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i64 0, ptr %i.c, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.d = ptrtoint ptr %.val4 to i64
  %i.e = ptrtoint ptr %.val3 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  store i64 %i.f, ptr %i.a, align 8, !tbaa !190
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !189
  %i.i = load i64, ptr %i.a, align 8, !tbaa !190
  store i64 %i.i, ptr %i.b, align 8, !tbaa !177
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc.i.i.i.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.k = load i8, ptr %.val3, align 1, !tbaa !177
  store i8 %i.k, ptr %i.j, align 1, !tbaa !177
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %.val3, i64 %i.f, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !190  ; 2 uses
  store i64 %i.l, ptr %i.c, align 8, !tbaa !176
  %i.m = load ptr, ptr %3, align 8, !tbaa !189
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.l
  store i8 0, ptr %i.n, align 1, !tbaa !177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN7httplib6detail9trim_copyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %3, align 8, !tbaa !189    ; 6 uses
  %i.p = icmp eq ptr %i.o, %i.b
  %i.q = load ptr, ptr %4, align 8, !tbaa !189    ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.s = icmp eq ptr %i.q, %i.r                   ; 2 uses
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  br i1 %i.s, label %bb.f, label %.thread.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.e
  br i1 %i.s, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !176  ; 3 uses
  %i.v = icmp ult i64 %i.u, 16
  call void @llvm.assume(i1 %i.v)
  switch i64 %i.u, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i
    i64 1, label %bb.g
  ]
end_hunk_2
