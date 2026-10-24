Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common_types?download=true
inline.NumInlined: 41209
inline.NumDeleted: 6301
loop-unroll.NumCompletelyUnrolled: 156
loop-unroll.NumRuntimeUnrolled: 69
loop-unroll.NumUnrolled: 229
begin_hunk_0_@_ZN6duckdb5Value6BIGNUMERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_15StringValueInfoELb1EEC2ESt10shared_ptrIS1_E.exit.i, label %_ZN6duckdb10shared_ptrINS_15StringValueInfoELb1EEC2ESt10shared_ptrIS1_E.exit.thread.i

_ZN6duckdb10shared_ptrINS_15StringValueInfoELb1EEC2ESt10shared_ptrIS1_E.exit.thread.i: ; preds = %bb.c
  %i.g = load i32, ptr %i.e, align 4, !tbaa !165, !noalias !2000
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !165, !noalias !2000
  br label %bb.d

_ZN6duckdb10shared_ptrINS_15StringValueInfoELb1EEC2ESt10shared_ptrIS1_E.exit.i: ; preds = %bb.c
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4, !noalias !2000 ; 0 uses
  %.pr.pre.i = load ptr, ptr %i.b, align 8, !tbaa !379, !noalias !2000 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %_ZN6duckdb10shared_ptrINS_15StringValueInfoELb1EEC2ESt10shared_ptrIS1_E.exit.i, %_ZN6duckdb10shared_ptrINS_15StringValueInfoELb1EEC2ESt10shared_ptrIS1_E.exit.thread.i
  %.pr5.i = phi ptr [ %i.c, %_ZN6duckdb10shared_ptrINS_15StringValueInfoELb1EEC2ESt10shared_ptrIS1_E.exit.thread.i ], [ %.pr.pre.i, %_ZN6duckdb10shared_ptrINS_15StringValueInfoELb1EEC2ESt10shared_ptrIS1_E.exit.i ] ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.pr5.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8, !noalias !2000 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.j, align 8, !tbaa !381, !noalias !2000
  %i.n = getelementptr inbounds nuw i8, ptr %.pr5.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !382, !noalias !2000
  %i.o = load ptr, ptr %.pr5.i, align 8, !tbaa !384, !noalias !2000
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !noalias !2000
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %.pr5.i) #46, !noalias !2000, !inline_history !1997
  %i.r = load ptr, ptr %.pr5.i, align 8, !tbaa !384, !noalias !2000
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !noalias !2000
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %.pr5.i) #46, !noalias !2000, !inline_history !1997
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !273, !noalias !2000
  %.not.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !165, !noalias !2000
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4, !noalias !2000
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i = phi i32 [ %i.m, %bb.g ], [ %i.w, %bb.h ]
  %i.x = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.x, label %bb.i, label %bb.j, !prof !231

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr5.i) #46, !noalias !2000
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.e, %_ZN6duckdb10shared_ptrINS_15StringValueInfoELb1EEC2ESt10shared_ptrIS1_E.exit.i, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !379 ; 8 uses
  store <2 x ptr> %i.d, ptr %i.y, align 8, !tbaa !341
  %.not.i.i.i.i5 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i5, label %_ZN6duckdb10shared_ptrINS_15StringValueInfoELb1EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.ab, align 8, !tbaa !381
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !382
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !384
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #46, !inline_history !60
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !384
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #46, !inline_history !60
  br label %_ZN6duckdb10shared_ptrINS_15StringValueInfoELb1EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !273
  %.not.i.i.i.i.i6 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i.i.i6, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !165
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i = phi i32 [ %i.ae, %bb.n ], [ %i.ao, %bb.o ]
  %i.ap = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ap, label %bb.p, label %_ZN6duckdb10shared_ptrINS_15StringValueInfoELb1EED2Ev.exit, !prof !231

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #46
  br label %_ZN6duckdb10shared_ptrINS_15StringValueInfoELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_15StringValueInfoELb1EED2Ev.exit: ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.l, %bb.j
  ret void

bb.q:                                             ; preds = %bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #46
  br label %bb.s

bb.r:                                             ; preds = %bb.b
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #46
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.r ], [ %i.aq, %bb.q ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb6Bignum15VarcharToBignumB5cxx11ERKNS_8string_tE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = load i32, ptr %1, align 8, !tbaa !273    ; 3 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.critedge.thread.i, label %.thread

.thread:                                          ; preds = %bb.a
  %i.e = icmp ult i32 %i.c, 13
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %i.e, ptr %i.f, ptr %i.h       ; 6 uses
  %i.j = zext i32 %i.c to i64                     ; 11 uses
  %i.k = load i8, ptr %i.i, align 1, !tbaa !273   ; 2 uses
  %i.l = icmp eq i8 %i.k, 45                      ; 3 uses
  %i.m = icmp eq i8 %i.k, 43
  %narrow157 = or i1 %i.l, %i.m                   ; 2 uses
  %i.n = zext i1 %narrow157 to i64                ; 3 uses
  %i.o = icmp samesign ult i64 %i.n, %i.j
  br i1 %i.o, label %.lr.ph.preheader.i, label %.critedge.thread.i

.lr.ph.preheader.i:                               ; preds = %.thread
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.n
  %i.q = load i8, ptr %i.p, align 1, !tbaa !273
  %i.r = icmp eq i8 %i.q, 48
  br i1 %i.r, label %bb.b, label %.preheader53.i

bb.b:                                             ; preds = %.lr.ph.preheader.i
  %i.s = select i1 %narrow157, i64 2, i64 1       ; 4 uses
  %i.t = icmp samesign ult i64 %i.s, %i.j
  br i1 %i.t, label %.lr.ph.i, label %.critedge.i.thread121

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.4 = phi i64 [ %i.x, %bb.c ], [ %i.s, %bb.b ]  ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 %.4
  %i.v = load i8, ptr %i.u, align 1, !tbaa !273
  %i.w = icmp eq i8 %i.v, 48
  br i1 %i.w, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.x = add nuw nsw i64 %.4, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, %i.j
  br i1 %exitcond.not, label %_ZN6duckdb6Bignum17VarcharFormattingERKNS_8string_tERmS4_RbS5_.exit, label %.lr.ph.i, !llvm.loop !65

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.y = icmp eq i64 %.4, %i.j
  br i1 %i.y, label %_ZN6duckdb6Bignum17VarcharFormattingERKNS_8string_tERmS4_RbS5_.exit, label %.preheader53.i

.critedge.i.thread121:                            ; preds = %bb.b
  %i.z = icmp eq i64 %i.s, %i.j
  br i1 %i.z, label %_ZN6duckdb6Bignum17VarcharFormattingERKNS_8string_tERmS4_RbS5_.exit, label %.preheader53.i

.preheader53.i:                                   ; preds = %.lr.ph.preheader.i, %.critedge.i.thread121, %.critedge.i
  %.2 = phi i64 [ %.4, %.critedge.i ], [ %i.s, %.critedge.i.thread121 ], [ %i.n, %.lr.ph.preheader.i ] ; 4 uses
  %i.aa = icmp ult i64 %.2, %i.j
  br i1 %i.aa, label %.lr.ph65.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit

.lr.ph65.i:                                       ; preds = %.preheader53.i, %bb.d
  %.064.i = phi i64 [ %i.ad, %bb.d ], [ %.2, %.preheader53.i ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 %.064.i
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !273 ; 2 uses
  %6 = sext i8 %i.ac to i32
  %isdigittmp.i = add nsw i32 %6, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph65.i
  %i.ad = add i64 %.064.i, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ad, %i.j
  br i1 %exitcond.not.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit, label %.lr.ph65.i, !llvm.loop !66

bb.e:                                             ; preds = %.lr.ph65.i
  %i.ae = icmp eq i8 %i.ac, 46
  br i1 %i.ae, label %.preheader.i.preheader, label %.critedge.thread.i

.preheader.i.preheader:                           ; preds = %bb.e
  %.1.i313 = add i64 %.064.i, 1                   ; 2 uses
  %i.af = icmp ult i64 %.1.i313, %i.j
  br i1 %i.af, label %.lr.ph315, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit

.preheader.i:                                     ; preds = %.lr.ph315
  %.1.i = add i64 %.1.i314, 1                     ; 2 uses
  %i.ag = icmp ult i64 %.1.i, %i.j
  br i1 %i.ag, label %.lr.ph315, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit, !llvm.loop !67

.lr.ph315:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %.1.i314 = phi i64 [ %.1.i, %.preheader.i ], [ %.1.i313, %.preheader.i.preheader ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 %.1.i314
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !273
  %7 = sext i8 %i.ai to i32
  %isdigittmp49.i = add nsw i32 %7, -48
  %isdigit50.i = icmp ult i32 %isdigittmp49.i, 10
  br i1 %isdigit50.i, label %.preheader.i, label %.critedge.thread.i, !llvm.loop !67

.critedge.thread.i:                               ; preds = %.lr.ph315, %.thread, %bb.a, %bb.e
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 16) #46 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.174, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.f unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread

bb.f:                                             ; preds = %.critedge.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  invoke void @_ZNK6duckdb8string_t9GetStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.g unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6duckdb19ConversionExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTIN6duckdb19ConversionExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.al unwind label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread: ; preds = %.critedge.thread.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.i:                                             ; preds = %bb.h, %bb.g
  %.042 = phi i1 [ false, %bb.h ], [ true, %bb.g ] ; 2 uses
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.am = load ptr, ptr %4, align 8, !tbaa !235   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.am) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  %i.ap = load ptr, ptr %2, align 8, !tbaa !235   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.f
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  %i.at = load ptr, ptr %2, align 8, !tbaa !235   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  call void @_ZdlPv(ptr noundef %i.at) #47
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.ap) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  br i1 %.042, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  br i1 %.042, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.thread
  %.pn.pn134.ph = phi { ptr, i32 } [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.thread ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %.pn.pn134 = phi { ptr, i32 } [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ], [ %.pn.pn134.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.aj) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZN6duckdb6Bignum17VarcharFormattingERKNS_8string_tERmS4_RbS5_.exit: ; preds = %bb.c, %.critedge.i, %.critedge.i.thread121
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.aw, ptr %0, align 8, !tbaa !271, !alias.scope !2006
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 4, i8 noundef signext 48)
  %i.ax = load ptr, ptr %0, align 8, !tbaa !235, !alias.scope !2006 ; 3 uses
  store i8 -128, ptr %i.ax, align 1, !tbaa !273
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  store i8 0, ptr %i.ay, align 1, !tbaa !273
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  store i8 1, ptr %i.az, align 1, !tbaa !273
  %i.ba = load ptr, ptr %0, align 8, !tbaa !235, !alias.scope !2006
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 3
  store i8 0, ptr %i.bb, align 1, !tbaa !273
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit: ; preds = %bb.d, %.preheader.i, %.preheader.i.preheader, %.preheader53.i
  %.0111.ph = phi i64 [ %i.j, %.preheader53.i ], [ %.064.i, %.preheader.i.preheader ], [ %.064.i, %.preheader.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.bc, ptr %0, align 8, !tbaa !271
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 3, i8 noundef signext 48)
  %i.bd = sub i64 %.0111.ph, %.2
  %i.be = uitofp i64 %i.bd to double
  %i.bf = fmul nnan double %i.be, 6.250000e-02
  %i.bg = tail call double @llvm.ceil.f64(double %i.bf)
  %i.bh = fptoui double %i.bg to i64              ; 2 uses
  %.not = icmp eq i64 %i.bh, 0
  br i1 %.not, label %._crit_edge216, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.k

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62
  %i.bk = icmp eq ptr %.sroa.083.1, %.sroa.16.4
  br i1 %i.bk, label %._crit_edge216, label %.lr.ph215

.lr.ph215:                                        ; preds = %.preheader
  %i.bl = ptrtoint ptr %.sroa.083.1 to i64        ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.ab

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, %.lr.ph
  %.040205 = phi i64 [ 0, %.lr.ph ], [ %i.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62 ]
  %.041204 = phi i64 [ %.0111.ph, %.lr.ph ], [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62 ] ; 2 uses
  %.sroa.25.0203 = phi ptr [ null, %.lr.ph ], [ %.sroa.25.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62 ] ; 3 uses
  %.sroa.16.0202 = phi ptr [ null, %.lr.ph ], [ %.sroa.16.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62 ] ; 3 uses
  %.sroa.083.0201 = phi ptr [ null, %.lr.ph ], [ %.sroa.083.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62 ] ; 6 uses
  %i.bn = add i64 %.041204, -16                   ; 2 uses
  %i.bo = call i64 @llvm.smax.i64(i64 %.2, i64 %i.bn) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  %i.bp = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bo ; 2 uses
  %i.bq = sub i64 %.041204, %i.bo                 ; 4 uses
  store ptr %i.bi, ptr %5, align 8, !tbaa !271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  store i64 %i.bq, ptr %i.b, align 8, !tbaa !245
  %i.br = icmp ugt i64 %i.bq, 15
  br i1 %i.br, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.k
  %i.bs = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc57 unwind label %.loopexit ; 2 uses

.noexc57:                                         ; preds = %.noexc.i
  store ptr %i.bs, ptr %5, align 8, !tbaa !235
  %i.bt = load i64, ptr %i.b, align 8, !tbaa !245
  store i64 %i.bt, ptr %i.bi, align 8, !tbaa !273
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc57, %bb.k
  %i.bu = phi ptr [ %i.bs, %.noexc57 ], [ %i.bi, %bb.k ] ; 2 uses
  switch i64 %i.bq, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.bv = load i8, ptr %i.bp, align 1, !tbaa !273
  store i8 %i.bv, ptr %i.bu, align 1, !tbaa !273
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bu, ptr nonnull align 1 %i.bp, i64 %i.bq, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i
  %i.bw = load i64, ptr %i.b, align 8, !tbaa !245 ; 2 uses
  store i64 %i.bw, ptr %i.bj, align 8, !tbaa !272
  %i.bx = load ptr, ptr %5, align 8, !tbaa !235
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bw
  store i8 0, ptr %i.by, align 1, !tbaa !273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  %i.bz = load ptr, ptr %5, align 8, !tbaa !235   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.ca = tail call ptr @__errno_location() #52   ; 6 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !165 ; 2 uses
  store i32 0, ptr %i.ca, align 4, !tbaa !165
  %i.cc = call noundef i64 @__isoc23_strtoull(ptr noundef %i.bz, ptr noundef nonnull %i.a, i32 noundef 10) ; 2 uses
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !602
  %i.ce = icmp eq ptr %i.cd, %i.bz
  br i1 %i.ce, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt24__throw_invalid_argumentPKc(ptr noundef nonnull @.str.343) #49
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %.critedge.i.i, %bb.o
  %i.cf = landingpad { ptr, i32 }
          cleanup
  %i.cg = load i32, ptr %i.ca, align 4, !tbaa !165
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.r, label %_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i

bb.r:                                             ; preds = %bb.q
  store i32 %i.cb, ptr %i.ca, align 4, !tbaa !165
end_hunk_0
begin_hunk_1_@_ZN6duckdb5Value21DefaultValuesAreEqualERKS0_S2_:bb.a
  br label %_ZSt8_DestroyIPN6duckdb16BindCastFunctionES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb16BindCastFunctionES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb16BindCastFunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.m = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb16BindCastFunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb15CastFunctionSetD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb16BindCastFunctionES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.m) #47
  br label %_ZN6duckdb15CastFunctionSetD2Ev.exit

_ZN6duckdb15CastFunctionSetD2Ev.exit:             ; preds = %_ZSt8_DestroyIPN6duckdb16BindCastFunctionES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  ret i1 %i.b

bb.d:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  call void @_ZN6duckdb15CastFunctionSetD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  resume { ptr, i32 } %i.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN6duckdb6Bignum6VerifyERKNS_8bignum_tE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #9 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb6Bignum9SetHeaderEPcmb(ptr nofree noundef writeonly captures(none) initializes((0, 3)) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #19 align 2 {
bb.a:
  %i.a = trunc i64 %1 to i32
  %i.b = or i32 %i.a, 8388608
  %i.c = sext i1 %2 to i32
  %spec.select = xor i32 %i.b, %i.c               ; 3 uses
  %i.d = lshr i32 %spec.select, 16
  %i.e = trunc i32 %i.d to i8
  store i8 %i.e, ptr %0, align 1, !tbaa !273
  %i.f = lshr i32 %spec.select, 8
  %i.g = trunc i32 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.g, ptr %i.h, align 1, !tbaa !273
  %i.i = trunc i32 %spec.select to i8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.i, ptr %i.j, align 1, !tbaa !273
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef { i64, ptr } @_ZN6duckdb6Bignum20InitializeBignumZeroERNS_6VectorE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(104) %0) local_unnamed_addr #9 align 2 {
_ZN6duckdb8string_t8FinalizeEv.exit:
  ret { i64, ptr } { i64 282024732524548, ptr null }
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb6Bignum20InitializeBignumZeroB5cxx11Ev(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !271
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 4, i8 noundef signext 48)
  %i.b = load ptr, ptr %0, align 8, !tbaa !235    ; 3 uses
  store i8 -128, ptr %i.b, align 1, !tbaa !273
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 0, ptr %i.c, align 1, !tbaa !273
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 1, ptr %i.d, align 1, !tbaa !273
  %i.e = load ptr, ptr %0, align 8, !tbaa !235
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  store i8 0, ptr %i.f, align 1, !tbaa !273
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 -176, 80) i32 @_ZN6duckdb6Bignum11CharToDigitEc(i8 noundef signext %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = sext i8 %0 to i32
  %i.b = add nsw i32 %i.a, -48
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef signext i8 @_ZN6duckdb6Bignum11DigitToCharEi(i32 noundef %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = trunc i32 %0 to i8
  %i.b = add i8 %i.a, 48
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN6duckdb6Bignum17VarcharFormattingERKNS_8string_tERmS4_RbS5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %3, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %4) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !273
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %.critedge52, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %1, align 8, !tbaa !245
  store i8 0, ptr %4, align 1, !tbaa !375
  %i.c = load i32, ptr %0, align 8, !tbaa !273    ; 2 uses
  %i.d = icmp ult i32 %i.c, 13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = select i1 %i.d, ptr %i.e, ptr %i.g       ; 7 uses
  %i.i = zext i32 %i.c to i64
  store i64 %i.i, ptr %2, align 8, !tbaa !245
  %i.j = load i8, ptr %i.h, align 1, !tbaa !273
  %i.k = icmp eq i8 %i.j, 45                      ; 2 uses
  %i.l = zext i1 %i.k to i8
  store i8 %i.l, ptr %3, align 1, !tbaa !375
  %.pre.pre = load i64, ptr %1, align 8, !tbaa !245 ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = add i64 %.pre.pre, 1                     ; 2 uses
  store i64 %i.m, ptr %1, align 8, !tbaa !245
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre = phi i64 [ %i.m, %bb.c ], [ %.pre.pre, %bb.b ] ; 2 uses
  %i.n = load i8, ptr %i.h, align 1, !tbaa !273
  %i.o = icmp eq i8 %i.n, 43
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = add i64 %.pre, 1                         ; 2 uses
  store i64 %i.p, ptr %1, align 8, !tbaa !245
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = phi i64 [ %i.p, %bb.e ], [ %.pre, %bb.d ] ; 6 uses
  %i.r = load i64, ptr %2, align 8, !tbaa !245    ; 4 uses
  %i.s = icmp ult i64 %i.q, %i.r
  br i1 %i.s, label %.lr.ph.preheader, label %.critedge.thread

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.q
  %i.u = load i8, ptr %i.t, align 1, !tbaa !273
  %i.v = icmp eq i8 %i.u, 48                      ; 2 uses
  br i1 %i.v, label %bb.g, label %.critedge

bb.g:                                             ; preds = %.lr.ph.preheader
  %i.w = add nuw i64 %i.q, 1                      ; 6 uses
  store i64 %i.w, ptr %1, align 8, !tbaa !245
  %i.x = load i64, ptr %2, align 8, !tbaa !245    ; 3 uses
  %i.y = icmp ult i64 %i.w, %i.x
  br i1 %i.y, label %.lr.ph.preheader94, label %.critedge

.lr.ph.preheader94:                               ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.w
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !273
  %i.ab = icmp eq i8 %i.aa, 48
  br i1 %i.ab, label %.lr.ph98, label %.critedge

.lr.ph:                                           ; preds = %.lr.ph98
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ag
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !273
  %i.ae = icmp eq i8 %i.ad, 48
  br i1 %i.ae, label %.lr.ph98, label %.critedge, !llvm.loop !65

.lr.ph98:                                         ; preds = %.lr.ph.preheader94, %.lr.ph
  %i.af = phi i64 [ %i.ag, %.lr.ph ], [ %i.w, %.lr.ph.preheader94 ]
  %i.ag = add nuw i64 %i.af, 1                    ; 6 uses
  store i64 %i.ag, ptr %1, align 8, !tbaa !245
  %i.ah = load i64, ptr %2, align 8, !tbaa !245   ; 3 uses
  %i.ai = icmp ult i64 %i.ag, %i.ah
  br i1 %i.ai, label %.lr.ph, label %..critedge.loopexit_crit_edge, !llvm.loop !65

..critedge.loopexit_crit_edge:                    ; preds = %.lr.ph98
  br label %.critedge, !llvm.loop !65

.critedge:                                        ; preds = %.lr.ph, %.lr.ph.preheader94, %..critedge.loopexit_crit_edge, %.lr.ph.preheader, %bb.g
  %.lcssa56 = phi i64 [ %i.w, %bb.g ], [ %i.q, %.lr.ph.preheader ], [ %i.w, %.lr.ph.preheader94 ], [ %i.ag, %..critedge.loopexit_crit_edge ], [ %i.ag, %.lr.ph ] ; 2 uses
  %.lcssa = phi i64 [ %i.x, %bb.g ], [ %i.r, %.lr.ph.preheader ], [ %i.x, %.lr.ph.preheader94 ], [ %i.ah, %..critedge.loopexit_crit_edge ], [ %i.ah, %.lr.ph ] ; 2 uses
  %i.aj = icmp eq i64 %.lcssa56, %.lcssa
  br i1 %i.aj, label %bb.h, label %.preheader53

.critedge.thread:                                 ; preds = %bb.f
  %i.ak = icmp eq i64 %i.q, %i.r
  br i1 %i.ak, label %.critedge52, label %.preheader53

.preheader53:                                     ; preds = %.critedge.thread, %.critedge
  %.lcssa87 = phi i64 [ %i.r, %.critedge.thread ], [ %.lcssa, %.critedge ] ; 4 uses
  %.lcssa5686 = phi i64 [ %i.q, %.critedge.thread ], [ %.lcssa56, %.critedge ] ; 2 uses
  %i.al = icmp ult i64 %.lcssa5686, %.lcssa87
  br i1 %i.al, label %.lr.ph65, label %.critedge52

bb.h:                                             ; preds = %.critedge
  br i1 %i.v, label %bb.i, label %.critedge52

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %4, align 1, !tbaa !375
  br label %.critedge52

.lr.ph65:                                         ; preds = %.preheader53, %bb.j
  %.064 = phi i64 [ %i.ao, %bb.j ], [ %.lcssa5686, %.preheader53 ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 %.064
  %i.an = load i8, ptr %i.am, align 1, !tbaa !273 ; 2 uses
  %5 = sext i8 %i.an to i32
  %isdigittmp = add nsw i32 %5, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph65
  %i.ao = add i64 %.064, 1                        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ao, %.lcssa87
  br i1 %exitcond.not, label %.critedge52, label %.lr.ph65, !llvm.loop !66

bb.k:                                             ; preds = %.lr.ph65
  %i.ap = icmp eq i8 %i.an, 46
  br i1 %i.ap, label %.preheader.preheader, label %.critedge52

.preheader.preheader:                             ; preds = %bb.k
  %.1102.a = add i64 %.064, 1                     ; 2 uses
  %i.aq = icmp ult i64 %.1102.a, %.lcssa87
  br i1 %i.aq, label %.lr.ph104, label %.preheader._crit_edge

.preheader:                                       ; preds = %.lr.ph104
  %.1 = add i64 %.1103, 1                         ; 2 uses
  %i.ar = icmp ult i64 %.1, %.lcssa87
  br i1 %i.ar, label %.lr.ph104, label %.preheader._crit_edge, !llvm.loop !67

.lr.ph104:                                        ; preds = %.preheader.preheader, %.preheader
  %.1103 = phi i64 [ %.1, %.preheader ], [ %.1102.a, %.preheader.preheader ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 %.1103
  %i.at = load i8, ptr %i.as, align 1, !tbaa !273
  %6 = sext i8 %i.at to i32
  %isdigittmp49 = add nsw i32 %6, -48
  %isdigit50 = icmp ult i32 %isdigittmp49, 10
  br i1 %isdigit50, label %.preheader, label %.critedge52, !llvm.loop !67

.preheader._crit_edge:                            ; preds = %.preheader, %.preheader.preheader
  store i64 %.064, ptr %2, align 8, !tbaa !245
  br label %.critedge52

.critedge52:                                      ; preds = %bb.j, %.lr.ph104, %.critedge.thread, %.preheader53, %bb.i, %bb.h, %bb.k, %.preheader._crit_edge, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.i ], [ false, %bb.h ], [ false, %bb.k ], [ true, %.preheader._crit_edge ], [ true, %.preheader53 ], [ false, %.lr.ph104 ], [ false, %.critedge.thread ], [ true, %bb.j ]
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb6Bignum12GetByteArrayERNS_6vectorIhLb1ESaIhEEERbRKNS_8string_tE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  %i.a = load i32, ptr %2, align 8, !tbaa !273    ; 2 uses
  %i.b = icmp ult i32 %i.a, 4
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #46 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.173, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.y unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.022 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %3, align 8, !tbaa !235    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.f) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  br i1 %.022, label %bb.f, label %bb.x

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  br i1 %.022, label %bb.f, label %bb.x

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn40 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #46
  br label %bb.x

bb.g:                                             ; preds = %bb.a
  %i.i = icmp ult i32 %i.a, 13
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 3 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !273
  %i.o = icmp sgt i8 %i.n, -1                     ; 2 uses
  %i.p = zext i1 %i.o to i8
  store i8 %i.p, ptr %1, align 1, !tbaa !375
  %i.q = load i32, ptr %2, align 8, !tbaa !273    ; 2 uses
  %i.r = zext i32 %i.q to i64
  %i.s = add nsw i64 %i.r, -3                     ; 3 uses
  %i.t = icmp ult i32 %i.q, 3
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.451) #49
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !756  ; 3 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !757
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.z = sub i64 %i.x, %i.y
  %i.aa = icmp ult i64 %i.z, %i.s
  br i1 %i.aa, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIhSaIhEE7reserveEm.exit

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i: ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !758
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.y
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #48 ; 4 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !757   ; 4 uses
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !758
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 0
  br i1 %i.al, label %bb.j, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i

bb.j:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.af, ptr align 1 %i.ag, i64 %i.ak, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i: ; preds = %bb.j, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.ag, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ag) #47
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i: ; preds = %bb.k, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  store ptr %i.af, ptr %0, align 8, !tbaa !757
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ae
  store ptr %i.am, ptr %i.ab, align 8, !tbaa !758
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.s ; 3 uses
  store ptr %i.an, ptr %i.u, align 8, !tbaa !756
  %.pre = load i8, ptr %1, align 1, !tbaa !375, !range !334
  %i.ao = trunc nuw i8 %.pre to i1
  br i1 %i.ao, label %.preheader, label %.preheader41

_ZNSt6vectorIhSaIhEE7reserveEm.exit:              ; preds = %bb.i
  br i1 %i.o, label %.preheader, label %.preheader41

.preheader41:                                     ; preds = %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i, %_ZNSt6vectorIhSaIhEE7reserveEm.exit
  %.pre5268 = phi ptr [ %i.an, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i ], [ %i.v, %_ZNSt6vectorIhSaIhEE7reserveEm.exit ]
  %i.ap = load i32, ptr %2, align 8, !tbaa !273
  %i.aq = icmp ugt i32 %i.ap, 3
  br i1 %i.aq, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader41
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.pre47 = load ptr, ptr %i.ar, align 8, !tbaa !758
  br label %bb.r

.preheader:                                       ; preds = %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i, %_ZNSt6vectorIhSaIhEE7reserveEm.exit
  %.pre5269 = phi ptr [ %i.an, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i ], [ %i.v, %_ZNSt6vectorIhSaIhEE7reserveEm.exit ]
  %i.as = load i32, ptr %2, align 8, !tbaa !273
  %i.at = icmp ugt i32 %i.as, 3
  br i1 %i.at, label %.lr.ph45, label %.loopexit

.lr.ph45:                                         ; preds = %.preheader
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.pre50 = load ptr, ptr %i.au, align 8, !tbaa !758
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph45, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  %i.av = phi ptr [ %.pre5269, %.lr.ph45 ], [ %i.bq, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ] ; 2 uses
  %i.aw = phi ptr [ %.pre50, %.lr.ph45 ], [ %i.br, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ] ; 2 uses
  %.02144 = phi i64 [ 3, %.lr.ph45 ], [ %i.bs, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.m, i64 %.02144
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !273
  %i.az = xor i8 %i.ay, -1                        ; 2 uses
  %.not.i.i = icmp eq ptr %i.aw, %i.av
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 %i.az, ptr %i.aw, align 1, !tbaa !273
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !758
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1 ; 2 uses
  store ptr %i.bb, ptr %i.au, align 8, !tbaa !758
  %.pre51 = load ptr, ptr %i.u, align 8, !tbaa !756
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

bb.n:                                             ; preds = %bb.l
  %i.bc = load ptr, ptr %0, align 8, !tbaa !757   ; 4 uses
  %i.bd = ptrtoint ptr %i.av to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 7 uses
  %i.bg = icmp eq i64 %i.bf, 9223372036854775807
  br i1 %i.bg, label %bb.o, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #49
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.n
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bf, i64 1)
  %i.bh = add i64 %.sroa.speculated.i.i.i.i, %i.bf ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %i.bf
  %i.bj = tail call i64 @llvm.umin.i64(i64 %i.bh, i64 9223372036854775807)
  %i.bk = select i1 %i.bi, i64 9223372036854775807, i64 %i.bj ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bk, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #48 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bf ; 2 uses
  store i8 %i.az, ptr %i.bm, align 1, !tbaa !273
  %i.bn = icmp sgt i64 %i.bf, 0
end_hunk_1
begin_hunk_2_@_ZN10duckdb_fmt2v68internal11parse_widthIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEEEEEPKT_SL_SL_OT0_
define linkonce_odr noundef ptr @_ZN10duckdb_fmt2v68internal11parse_widthIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEEEEEPKT_SL_SL_OT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"struct.duckdb_fmt::v6::internal::width_adapter", align 8 ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.e = load i8, ptr %0, align 1, !tbaa !273     ; 4 uses
  %i.f = add i8 %i.e, -48
  %or.cond = icmp ult i8 %i.f, 10
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.g = icmp eq i8 %i.e, 48
  br i1 %i.g, label %bb.c, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.b
  %i.h = sub i64 %i.b, %i.a
  %scevgep = getelementptr i8, ptr %0, i64 %i.h
  br label %.preheader.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEEEEEiRPKT_SL_OT0_.exit

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.e
  %.2 = phi ptr [ %i.p, %bb.e ], [ %0, %.preheader.i.preheader ] ; 2 uses
  %i.j = phi i8 [ %i.q, %bb.e ], [ %i.e, %.preheader.i.preheader ]
  %.017.i = phi i32 [ %i.o, %bb.e ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %i.k = icmp ugt i32 %.017.i, 214748364
  br i1 %i.k, label %.critedge.thread.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.l = mul nuw nsw i32 %.017.i, 10
  %i.m = zext nneg i8 %i.j to i32
  %i.n = add nsw i32 %i.m, -48
  %i.o = add nuw i32 %i.n, %i.l                   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.2, i64 1 ; 4 uses
  %.not.i = icmp eq ptr %i.p, %1
  br i1 %.not.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i8, ptr %i.p, align 1, !tbaa !273   ; 2 uses
  %i.r = add i8 %i.q, -48
  %or.cond.i = icmp ult i8 %i.r, 10
  br i1 %or.cond.i, label %.preheader.i, label %.critedge.i, !llvm.loop !151

.critedge.i:                                      ; preds = %bb.e, %bb.d
  %.lcssa = phi ptr [ %i.p, %bb.e ], [ %scevgep, %bb.d ] ; 2 uses
  %i.s = icmp slt i32 %i.o, 0
  br i1 %i.s, label %.critedge.thread.i, label %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEEEEEiRPKT_SL_OT0_.exit

.critedge.thread.i:                               ; preds = %.preheader.i, %.critedge.i
  %.3 = phi ptr [ %.lcssa, %.critedge.i ], [ %.2, %.preheader.i ] ; 2 uses
  %.126.i = phi i32 [ %i.o, %.critedge.i ], [ -2147483648, %.preheader.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.t, ptr %3, align 8, !tbaa !271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #46
  store i64 17, ptr %i.d, align 8, !tbaa !245
  %i.u = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.u, ptr %3, align 8, !tbaa !235
  %i.v = load i64, ptr %i.d, align 8, !tbaa !245  ; 3 uses
  store i64 %i.v, ptr %i.t, align 8, !tbaa !273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.u, ptr noundef nonnull align 1 dereferenceable(17) @.str.407, i64 17, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !272
  %i.x = load ptr, ptr %3, align 8, !tbaa !235
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #46
  invoke void @_ZN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESA_EE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.critedge.thread.i
  %i.z = load ptr, ptr %3, align 8, !tbaa !235    ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.t
  br i1 %i.aa, label %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEEEEEiRPKT_SL_OT0_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.z) #47
  br label %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEEEEEiRPKT_SL_OT0_.exit

bb.g:                                             ; preds = %.critedge.thread.i
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %3, align 8, !tbaa !235   ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.t
  br i1 %i.ad, label %common.resume, label %common.resume.sink.split

common.resume.sink.split:                         ; preds = %bb.g, %bb.n
  %.sink = phi ptr [ %i.at, %bb.n ], [ %i.ac, %bb.g ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.as, %bb.n ], [ %i.ab, %bb.g ]
  call void @_ZdlPv(ptr noundef %.sink) #47
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.n, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %bb.g ], [ %i.as, %bb.n ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEEEEEiRPKT_SL_OT0_.exit: ; preds = %bb.f, %bb.c, %.critedge.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.4 = phi ptr [ %i.i, %bb.c ], [ %.lcssa, %.critedge.i ], [ %.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %.3, %bb.f ]
  %.018.i = phi i32 [ 0, %bb.c ], [ %i.o, %.critedge.i ], [ %.126.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %.126.i, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ae = load ptr, ptr %2, align 8, !tbaa !1189, !nonnull !227, !align !991
  store i32 %.018.i, ptr %i.ae, align 4, !tbaa !948
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.h:                                             ; preds = %bb.a
  %i.af = icmp eq i8 %i.e, 123
  br i1 %i.af, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %.not = icmp eq ptr %i.ag, %1
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  store ptr %2, ptr %4, align 8, !tbaa !1192
  %i.ah = call noundef ptr @_ZN10duckdb_fmt2v68internal12parse_arg_idIcNS1_13width_adapterIRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEEEcEEEEPKT_SN_SN_OT0_(ptr noundef nonnull %i.ag, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0 = phi ptr [ %i.ag, %bb.i ], [ %i.ah, %bb.j ] ; 5 uses
  %i.ai = icmp eq ptr %.0, %1
  br i1 %i.ai, label %.noexc.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = load i8, ptr %.0, align 1, !tbaa !273
  %.not16 = icmp eq i8 %i.aj, 125
  br i1 %.not16, label %bb.o, label %.noexc.i

.noexc.i:                                         ; preds = %bb.l, %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.ak, ptr %5, align 8, !tbaa !271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #46
  store i64 21, ptr %i.c, align 8, !tbaa !245
  %i.al = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.al, ptr %5, align 8, !tbaa !235
  %i.am = load i64, ptr %i.c, align 8, !tbaa !245 ; 3 uses
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.al, ptr noundef nonnull align 1 dereferenceable(21) @.str.389, i64 21, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !272
  %i.ao = load ptr, ptr %5, align 8, !tbaa !235
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.am
  store i8 0, ptr %i.ap, align 1, !tbaa !273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #46
  invoke void @_ZN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESA_EE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %5)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.noexc.i
  %i.aq = load ptr, ptr %5, align 8, !tbaa !235   ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.ak
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  call void @_ZdlPv(ptr noundef %i.aq) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.n:                                             ; preds = %.noexc.i
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %5, align 8, !tbaa !235   ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.ak
  br i1 %i.au, label %common.resume, label %common.resume.sink.split

bb.o:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEEEEEiRPKT_SL_OT0_.exit, %bb.o, %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.011 = phi ptr [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %0, %bb.h ], [ %.4, %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEEEEEiRPKT_SL_OT0_.exit ], [ %i.av, %bb.o ], [ %.0, %bb.m ]
  ret ptr %.011
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef ptr @_ZN10duckdb_fmt2v68internal15parse_precisionIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEEEEEPKT_SL_SL_OT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"struct.duckdb_fmt::v6::internal::precision_adapter", align 8 ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 5 uses
  %.not = icmp eq ptr %i.g, %1
  br i1 %.not, label %.thread52, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i8, ptr %i.g, align 1, !tbaa !273   ; 4 uses
  %8 = sext i8 %i.h to i32
  %9 = add nsw i32 %8, -48
  %or.cond = icmp ult i32 %9, 10
  br i1 %or.cond, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.i = icmp eq i8 %i.h, 48
  br i1 %i.i, label %bb.d, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.c
  %i.j = sub i64 %i.b, %i.a
  %scevgep = getelementptr i8, ptr %0, i64 %i.j
  br label %.preheader.i

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2
  br label %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEEEEEiRPKT_SL_OT0_.exit

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.f
  %.3 = phi ptr [ %i.q, %bb.f ], [ %i.g, %.preheader.i.preheader ] ; 2 uses
  %i.l = phi i8 [ %i.r, %bb.f ], [ %i.h, %.preheader.i.preheader ]
  %.017.i = phi i32 [ %i.p, %bb.f ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %i.m = icmp ugt i32 %.017.i, 214748364
  br i1 %i.m, label %.critedge.thread.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i
  %i.n = mul nuw nsw i32 %.017.i, 10
  %10 = sext i8 %i.l to i32
  %i.o = add nsw i32 %10, -48
  %i.p = add i32 %i.o, %i.n                       ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.3, i64 1 ; 4 uses
  %.not.i = icmp eq ptr %i.q, %1
  br i1 %.not.i, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i8, ptr %i.q, align 1, !tbaa !273   ; 2 uses
  %i.s = add i8 %i.r, -48
  %or.cond.i = icmp ult i8 %i.s, 10
  br i1 %or.cond.i, label %.preheader.i, label %.critedge.i, !llvm.loop !151

.critedge.i:                                      ; preds = %bb.f, %bb.e
  %.lcssa = phi ptr [ %i.q, %bb.f ], [ %scevgep, %bb.e ] ; 2 uses
  %i.t = icmp slt i32 %i.p, 0
  br i1 %i.t, label %.critedge.thread.i, label %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEEEEEiRPKT_SL_OT0_.exit

.critedge.thread.i:                               ; preds = %.preheader.i, %.critedge.i
  %.4 = phi ptr [ %.lcssa, %.critedge.i ], [ %.3, %.preheader.i ] ; 2 uses
  %.126.i = phi i32 [ %i.p, %.critedge.i ], [ -2147483648, %.preheader.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.u, ptr %4, align 8, !tbaa !271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #46
  store i64 17, ptr %i.f, align 8, !tbaa !245
  %i.v = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0) ; 2 uses
  store ptr %i.v, ptr %4, align 8, !tbaa !235
  %i.w = load i64, ptr %i.f, align 8, !tbaa !245  ; 3 uses
  store i64 %i.w, ptr %i.u, align 8, !tbaa !273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.v, ptr noundef nonnull align 1 dereferenceable(17) @.str.407, i64 17, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !272
  %i.y = load ptr, ptr %4, align 8, !tbaa !235
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #46
  invoke void @_ZN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESA_EE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %4)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.critedge.thread.i
  %i.aa = load ptr, ptr %4, align 8, !tbaa !235   ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.u
  br i1 %i.ab, label %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEEEEEiRPKT_SL_OT0_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.aa) #47
  br label %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEEEEEiRPKT_SL_OT0_.exit

bb.h:                                             ; preds = %.critedge.thread.i
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %4, align 8, !tbaa !235   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.u
  br i1 %i.ae, label %common.resume, label %common.resume.sink.split

common.resume.sink.split:                         ; preds = %bb.h, %bb.t, %bb.q, %bb.o
  %.sink = phi ptr [ %i.by, %bb.t ], [ %i.aw, %bb.o ], [ %i.bh, %bb.q ], [ %i.ad, %bb.h ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.bx, %bb.t ], [ %i.av, %bb.o ], [ %i.bg, %bb.q ], [ %i.ac, %bb.h ]
  call void @_ZdlPv(ptr noundef %.sink) #47
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.t, %bb.q, %bb.o, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.bg, %bb.q ], [ %i.av, %bb.o ], [ %i.ac, %bb.h ], [ %i.bx, %bb.t ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEEEEEiRPKT_SL_OT0_.exit: ; preds = %bb.g, %bb.d, %.critedge.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.5 = phi ptr [ %i.k, %bb.d ], [ %.lcssa, %.critedge.i ], [ %.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %.4, %bb.g ]
  %.018.i = phi i32 [ 0, %bb.d ], [ %i.p, %.critedge.i ], [ %.126.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %.126.i, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.af = load ptr, ptr %2, align 8, !tbaa !1189, !nonnull !227, !align !991
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store i32 %.018.i, ptr %i.ag, align 4, !tbaa !949
  br label %bb.r

bb.i:                                             ; preds = %bb.b
  %i.ah = icmp eq i8 %i.h, 123
  br i1 %i.ah, label %bb.j, label %.thread52

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %.not27 = icmp eq ptr %i.ai, %1
  br i1 %.not27, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  store ptr %2, ptr %5, align 8, !tbaa !1192
  %i.aj = call noundef ptr @_ZN10duckdb_fmt2v68internal12parse_arg_idIcNS1_17precision_adapterIRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEEEcEEEEPKT_SN_SN_OT0_(ptr noundef nonnull %i.ai, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0 = phi ptr [ %i.ai, %bb.j ], [ %i.aj, %bb.k ] ; 4 uses
  %i.ak = icmp eq ptr %.0, %1
  br i1 %i.ak, label %.noexc.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  %i.am = load i8, ptr %.0, align 1, !tbaa !273
  %.not28 = icmp eq i8 %i.am, 125
  br i1 %.not28, label %bb.r, label %.noexc.i

.noexc.i:                                         ; preds = %bb.m, %bb.l
  %.1 = phi ptr [ %.0, %bb.l ], [ %i.al, %bb.m ]  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.an, ptr %6, align 8, !tbaa !271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #46
  store i64 21, ptr %i.e, align 8, !tbaa !245
  %i.ao = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 2 uses
  store ptr %i.ao, ptr %6, align 8, !tbaa !235
  %i.ap = load i64, ptr %i.e, align 8, !tbaa !245 ; 3 uses
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.ao, ptr noundef nonnull align 1 dereferenceable(21) @.str.389, i64 21, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !272
  %i.ar = load ptr, ptr %6, align 8, !tbaa !235
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ap
  store i8 0, ptr %i.as, align 1, !tbaa !273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #46
  invoke void @_ZN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESA_EE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %6)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %.noexc.i
  %i.at = load ptr, ptr %6, align 8, !tbaa !235   ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.an
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  call void @_ZdlPv(ptr noundef %i.at) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.o:                                             ; preds = %.noexc.i
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = load ptr, ptr %6, align 8, !tbaa !235   ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.an
  br i1 %i.ax, label %common.resume, label %common.resume.sink.split

.thread52:                                        ; preds = %bb.a, %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.ay, ptr %7, align 8, !tbaa !271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #46
  store i64 27, ptr %i.d, align 8, !tbaa !245
  %i.az = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.az, ptr %7, align 8, !tbaa !235
  %i.ba = load i64, ptr %i.d, align 8, !tbaa !245 ; 3 uses
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.az, ptr noundef nonnull align 1 dereferenceable(27) @.str.416, i64 27, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !272
  %i.bc = load ptr, ptr %7, align 8, !tbaa !235
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ba
  store i8 0, ptr %i.bd, align 1, !tbaa !273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #46
  invoke void @_ZN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESA_EE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %7)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %.thread52
  %i.be = load ptr, ptr %7, align 8, !tbaa !235   ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.ay
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.p
  call void @_ZdlPv(ptr noundef %i.be) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.q:                                             ; preds = %.thread52
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = load ptr, ptr %7, align 8, !tbaa !235   ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.ay
  br i1 %i.bi, label %common.resume, label %common.resume.sink.split

bb.r:                                             ; preds = %bb.m, %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEEEEEiRPKT_SL_OT0_.exit
  %.2 = phi ptr [ %.5, %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEEEEEiRPKT_SL_OT0_.exit ], [ %i.al, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !955 ; 2 uses
  %i.bl = add i32 %i.bk, -1
  %i.bm = icmp ult i32 %i.bl, 9
  %i.bn = icmp eq i32 %i.bk, 15
  %or.cond.i.i = or i1 %i.bn, %i.bm
  br i1 %or.cond.i.i, label %.noexc.i.i.i, label %_ZN10duckdb_fmt2v68internal13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEE13end_precisionEv.exit

.noexc.i.i.i:                                     ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !1190, !nonnull !227, !align !228
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.bq, ptr %3, align 8, !tbaa !271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #46
  store i64 44, ptr %i.c, align 8, !tbaa !245
  %i.br = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 3 uses
  store ptr %i.br, ptr %3, align 8, !tbaa !235
  %i.bs = load i64, ptr %i.c, align 8, !tbaa !245 ; 3 uses
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.br, ptr noundef nonnull align 1 dereferenceable(44) @.str.419, i64 44, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !272
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bs
  store i8 0, ptr %i.bu, align 1, !tbaa !273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #46
  invoke void @_ZN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESA_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull %3)
          to label %bb.s unwind label %bb.t

end_hunk_2
