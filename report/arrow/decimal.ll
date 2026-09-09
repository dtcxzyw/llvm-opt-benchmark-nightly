Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/decimal?download=true
inline.NumInlined: 1554
inline.NumDeleted: 561
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN5arrow10Decimal25610FromStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow10Decimal25615ToIntegerStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Decimal256", align 8 ; 6 uses
  %3 = alloca %"struct.std::array.16", align 8    ; 5 uses
  %4 = alloca %"struct.std::array.16", align 8    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !22
  store i8 0, ptr %i.a, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !45
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  store i8 45, ptr %i.a, align 8, !tbaa !38
  store i64 1, ptr %i.b, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.f, align 1, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.g = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal2566NegateEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.c unwind label %bb.e       ; 0 uses

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  invoke fastcc void @_ZN5arrowL31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull %0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.k

bb.e:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.i, %bb.f ], [ %i.h, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  invoke fastcc void @_ZN5arrowL31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %0)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.l

bb.k:                                             ; preds = %bb.d, %bb.i
  ret void

bb.l:                                             ; preds = %bb.j, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.g ], [ %i.j, %bb.j ]
  %i.k = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.a
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.l
  %i.m = load i64, ptr %i.a, align 8, !tbaa !38
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  resume { ptr, i32 } %.pn.pn
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal2566NegateEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrowL31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
.lr.ph.i.preheader.i.i:
  %2 = alloca %"struct.std::array.23", align 1    ; 3 uses
  %3 = alloca %"struct.std::array.23", align 1    ; 3 uses
  %4 = alloca %"struct.std::array.16", align 8    ; 6 uses
  %5 = alloca %"struct.std::array.102", align 4   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = ptrtoint ptr %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.val7.val.i.i.i = load i64, ptr %i.c, align 8, !tbaa !45, !noalias !291
  %.not16.i.i.i = icmp eq i64 %.val7.val.i.i.i, 0
  br i1 %.not16.i.i.i, label %bb.a, label %_ZSt7find_ifISt16reverse_iteratorIPKmEZN5arrowL31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_ET_SI_SI_T0_.exit

bb.a:                                             ; preds = %.lr.ph.i.preheader.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.val6.val.i.i.i = load i64, ptr %i.d, align 8, !tbaa !45, !noalias !291
  %.not17.i.i.i = icmp eq i64 %.val6.val.i.i.i, 0
  br i1 %.not17.i.i.i, label %bb.b, label %_ZSt7find_ifISt16reverse_iteratorIPKmEZN5arrowL31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_ET_SI_SI_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val5.val.i.i.i = load i64, ptr %i.e, align 8, !tbaa !45, !noalias !291
  %.not18.i.i.i = icmp eq i64 %.val5.val.i.i.i, 0
  br i1 %.not18.i.i.i, label %bb.c, label %_ZSt7find_ifISt16reverse_iteratorIPKmEZN5arrowL31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_ET_SI_SI_T0_.exit

bb.c:                                             ; preds = %bb.b
  %.val4.val.i.i.i = load i64, ptr %0, align 8, !tbaa !45, !noalias !291
  %.not19.i.i.i = icmp eq i64 %.val4.val.i.i.i, 0
  br i1 %.not19.i.i.i, label %_ZSt7find_ifISt16reverse_iteratorIPKmEZN5arrowL31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_ET_SI_SI_T0_.exit.thread, label %_ZSt7find_ifISt16reverse_iteratorIPKmEZN5arrowL31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_ET_SI_SI_T0_.exit

_ZSt7find_ifISt16reverse_iteratorIPKmEZN5arrowL31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_ET_SI_SI_T0_.exit.thread: ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !22   ; 4 uses
  %i.h = add i64 %i.g, 1                          ; 3 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !21     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZSt7find_ifISt16reverse_iteratorIPKmEZN5arrowL31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_ET_SI_SI_T0_.exit.thread
  %i.l = icmp ult i64 %i.g, 16
  tail call void @llvm.assume(i1 %i.l)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSt7find_ifISt16reverse_iteratorIPKmEZN5arrowL31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_ET_SI_SI_T0_.exit.thread
  %i.m = load i64, ptr %i.j, align 8, !tbaa !38
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.n = phi i64 [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.o = icmp ugt i64 %i.h, %i.n
  br i1 %i.o, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.g, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.d
  %i.p = phi ptr [ %.pre.i, %bb.d ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.g
  store i8 48, ptr %i.q, align 1, !tbaa !38
  store i64 %i.h, ptr %i.f, align 8, !tbaa !22
  %i.r = load ptr, ptr %1, align 8, !tbaa !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.h
  store i8 0, ptr %i.s, align 1, !tbaa !38
  br label %bb.x

_ZSt7find_ifISt16reverse_iteratorIPKmEZN5arrowL31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_ET_SI_SI_T0_.exit: ; preds = %.lr.ph.i.preheader.i.i, %bb.c, %bb.b, %bb.a
  %.sink.i.i.i = phi ptr [ %i.a, %.lr.ph.i.preheader.i.i ], [ %i.e, %bb.c ], [ %i.d, %bb.b ], [ %i.c, %bb.a ]
  %i.t = getelementptr inbounds i8, ptr %.sink.i.i.i, i64 -8
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !292
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 %i.v
  br label %.critedge.outer

.critedge.outer:                                  ; preds = %bb.g, %_ZSt7find_ifISt16reverse_iteratorIPKmEZN5arrowL31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_ET_SI_SI_T0_.exit
  %.040.ph = phi ptr [ %i.an, %bb.g ], [ %i.w, %_ZSt7find_ifISt16reverse_iteratorIPKmEZN5arrowL31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_ET_SI_SI_T0_.exit ] ; 4 uses
  %.039.ph = phi i64 [ %i.ak, %bb.g ], [ 0, %_ZSt7find_ifISt16reverse_iteratorIPKmEZN5arrowL31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_ET_SI_SI_T0_.exit ]
  br label %.critedge

.critedge:                                        ; preds = %.critedge.outer, %bb.f
  %.039 = phi i64 [ %i.ak, %bb.f ], [ %.039.ph, %.critedge.outer ] ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.critedge
  %.042 = phi i64 [ 0, %.critedge ], [ %i.af, %bb.e ]
  %.041 = phi ptr [ %.040.ph, %.critedge ], [ %i.ai, %bb.e ] ; 4 uses
  %i.x = load i64, ptr %.041, align 8, !tbaa !45  ; 2 uses
  %i.y = and i64 %i.x, 4294967295
  %i.z = call i64 @llvm.fshl.i64(i64 %.042, i64 %i.x, i64 32) ; 2 uses
  %i.aa = udiv i64 %i.z, 1000000000
  %i.ab = urem i64 %i.z, 1000000000
  %i.ac = shl nuw nsw i64 %i.ab, 32
  %i.ad = or disjoint i64 %i.ac, %i.y             ; 2 uses
  %i.ae = udiv i64 %i.ad, 1000000000
  %i.af = urem i64 %i.ad, 1000000000              ; 3 uses
  %i.ag = shl nuw i64 %i.aa, 32
  %i.ah = or i64 %i.ae, %i.ag
  store i64 %i.ah, ptr %.041, align 8, !tbaa !45
  %i.ai = getelementptr inbounds i8, ptr %.041, i64 -8
  %.not = icmp eq ptr %.041, %4
  br i1 %.not, label %bb.f, label %bb.e, !llvm.loop !288

bb.f:                                             ; preds = %bb.e
  %i.aj = trunc nuw nsw i64 %i.af to i32          ; 3 uses
  %i.ak = add nuw nsw i64 %.039, 1                ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.039
  store i32 %i.aj, ptr %i.al, align 4, !tbaa !10
  %i.am = load i64, ptr %.040.ph, align 8, !tbaa !45
  %.not44 = icmp eq i64 %i.am, 0
  br i1 %.not44, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds i8, ptr %.040.ph, i64 -8
  %.not45 = icmp eq ptr %.040.ph, %4
  br i1 %.not45, label %bb.h, label %.critedge.outer, !llvm.loop !289

bb.h:                                             ; preds = %bb.g
  %.idx = shl nuw nsw i64 %.039, 2
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 %.idx
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !22 ; 11 uses
  %i.ar = mul nuw nsw i64 %i.ak, 9                ; 4 uses
  %i.as = add i64 %i.aq, %i.ar                    ; 5 uses
  %i.at = icmp ult i64 %i.aq, %i.as
  br i1 %i.at, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.au = sub i64 9223372036854775807, %i.aq
  %i.av = icmp ult i64 %i.au, %i.ar
  br i1 %i.av, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #28
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.i
  %i.aw = load ptr, ptr %1, align 8, !tbaa !21    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.az = icmp ult i64 %i.aq, 16
  call void @llvm.assume(i1 %i.az)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ba = load i64, ptr %i.ax, align 8, !tbaa !38
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.bb = phi i64 [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i50 = icmp ugt i64 %i.as, %i.bb
  br i1 %.not.i.i.i50, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.aq, i64 noundef 0, ptr noundef null, i64 noundef %i.ar)
  %.pre.i51 = load ptr, ptr %1, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.bc = phi ptr [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ], [ %.pre.i51, %bb.k ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.aq
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bd, i8 48, i64 %i.ar, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit

bb.l:                                             ; preds = %bb.h
  %i.be = icmp ult i64 %i.as, %i.aq
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i, %bb.l
  store i64 %i.as, ptr %i.ap, align 8, !tbaa !22
  %i.bf = load ptr, ptr %1, align 8, !tbaa !21
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.as
  store i8 0, ptr %i.bg, align 1, !tbaa !38
  %.pre = load i64, ptr %i.ap, align 8, !tbaa !22 ; 2 uses
  %.not.i = icmp ult i64 %i.aq, %.pre
  br i1 %.not.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit.thread: ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit
  %i.bh = phi i64 [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit ], [ %i.aq, %bb.l ]
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.26, i64 noundef %i.aq, i64 noundef %i.bh) #28
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit
  %i.bi = load ptr, ptr %1, align 8, !tbaa !21
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.aq ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 11 ; 3 uses
  %i.bl = icmp samesign ugt i64 %i.af, 99
  br i1 %i.bl, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit, %.lr.ph.i.i
  %.0.i = phi ptr [ %i.bu, %.lr.ph.i.i ], [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit ] ; 2 uses
  %.08.i.i = phi i32 [ %i.bv, %.lr.ph.i.i ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit ] ; 3 uses
  %i.bm = urem i32 %.08.i.i, 100
  %i.bn = shl nuw nsw i32 %i.bm, 1
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.bo ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !38
  %i.bs = getelementptr inbounds i8, ptr %.0.i, i64 -1
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !38
  %i.bt = load i8, ptr %i.bp, align 1, !tbaa !38
  %i.bu = getelementptr inbounds i8, ptr %.0.i, i64 -2 ; 3 uses
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !38
  %i.bv = udiv i32 %.08.i.i, 100                  ; 2 uses
  %i.bw = icmp samesign ugt i32 %.08.i.i, 9999
  br i1 %i.bw, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !0

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit
  %.1.i = phi ptr [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit ], [ %i.bu, %.lr.ph.i.i ] ; 2 uses
  %.0.lcssa.i.i = phi i32 [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit ], [ %i.bv, %.lr.ph.i.i ] ; 3 uses
  %i.bx = icmp samesign ugt i32 %.0.lcssa.i.i, 9
  br i1 %i.bx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.by = shl nuw nsw i32 %.0.lcssa.i.i, 1
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !38
  %i.cd = getelementptr inbounds i8, ptr %.1.i, i64 -1 ; 2 uses
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !38
  %i.ce = load i8, ptr %i.ca, align 1, !tbaa !38
  br label %_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.cf = trunc nuw nsw i32 %.0.lcssa.i.i to i8
  %i.cg = or disjoint i8 %i.cf, 48
  br label %_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit

_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit: ; preds = %bb.m, %bb.n
  %.2.i = phi ptr [ %i.cd, %bb.m ], [ %.1.i, %bb.n ]
  %.sink.i.i = phi i8 [ %i.ce, %bb.m ], [ %i.cg, %bb.n ]
  %i.ch = getelementptr inbounds i8, ptr %.2.i, i64 -1 ; 3 uses
  store i8 %.sink.i.i, ptr %i.ch, align 1, !tbaa !38
  %i.ci = ptrtoint ptr %i.bk to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bj, ptr nonnull readonly align 1 %i.ch, i64 %i.ck, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.ck ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %.not4688 = icmp eq i64 %.039, 0
  br i1 %.not4688, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 11 ; 3 uses
  %i.cn = ptrtoint ptr %i.cm to i64
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE0_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit
  %.090 = phi ptr [ %i.ao, %.lr.ph ], [ %i.co, %_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE0_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit ]
  %.07089 = phi ptr [ %i.cl, %.lr.ph ], [ %i.cp, %_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE0_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit ]
  %i.co = getelementptr inbounds i8, ptr %.090, i64 -4 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.07089, i64 9 ; 3 uses
  %i.cq = load i32, ptr %i.co, align 4, !tbaa !10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.cr = icmp ugt i32 %i.cq, 99
  br i1 %i.cr, label %.lr.ph.i.i57, label %._crit_edge.i.i52

.lr.ph.i.i57:                                     ; preds = %bb.o, %.lr.ph.i.i57
  %.0.i58 = phi ptr [ %i.da, %.lr.ph.i.i57 ], [ %i.cm, %bb.o ] ; 2 uses
  %.08.i.i59 = phi i32 [ %i.db, %.lr.ph.i.i57 ], [ %i.cq, %bb.o ] ; 3 uses
  %i.cs = urem i32 %.08.i.i59, 100
  %i.ct = shl nuw nsw i32 %i.cs, 1
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.cu ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !38
  %i.cy = getelementptr inbounds i8, ptr %.0.i58, i64 -1
  store i8 %i.cx, ptr %i.cy, align 1, !tbaa !38
  %i.cz = load i8, ptr %i.cv, align 1, !tbaa !38
  %i.da = getelementptr inbounds i8, ptr %.0.i58, i64 -2 ; 3 uses
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !38
  %i.db = udiv i32 %.08.i.i59, 100                ; 2 uses
  %i.dc = icmp ugt i32 %.08.i.i59, 9999
  br i1 %i.dc, label %.lr.ph.i.i57, label %._crit_edge.i.i52, !llvm.loop !0

._crit_edge.i.i52:                                ; preds = %.lr.ph.i.i57, %bb.o
  %.1.i53 = phi ptr [ %i.cm, %bb.o ], [ %i.da, %.lr.ph.i.i57 ] ; 2 uses
  %.0.lcssa.i.i54 = phi i32 [ %i.cq, %bb.o ], [ %i.db, %.lr.ph.i.i57 ] ; 3 uses
  %i.dd = icmp samesign ugt i32 %.0.lcssa.i.i54, 9
  br i1 %i.dd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i52
  %i.de = shl nuw nsw i32 %.0.lcssa.i.i54, 1
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.df ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 1
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !38
  %i.dj = getelementptr inbounds i8, ptr %.1.i53, i64 -1 ; 2 uses
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !38
  %i.dk = load i8, ptr %i.dg, align 1, !tbaa !38
  br label %_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE0_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit

bb.q:                                             ; preds = %._crit_edge.i.i52
  %i.dl = trunc nuw nsw i32 %.0.lcssa.i.i54 to i8
  %i.dm = or disjoint i8 %i.dl, 48
  br label %_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE0_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit

_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE0_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit: ; preds = %bb.p, %bb.q
  %.2.i55 = phi ptr [ %i.dj, %bb.p ], [ %.1.i53, %bb.q ]
  %.sink.i.i56 = phi i8 [ %i.dk, %bb.p ], [ %i.dm, %bb.q ]
  %i.dn = getelementptr inbounds i8, ptr %.2.i55, i64 -1 ; 3 uses
  store i8 %.sink.i.i56, ptr %i.dn, align 1, !tbaa !38
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = sub i64 %i.cn, %i.do                    ; 2 uses
  %i.dq = sub i64 0, %i.dp
  %i.dr = getelementptr inbounds i8, ptr %i.cp, i64 %i.dq
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dr, ptr nonnull readonly align 1 %i.dn, i64 %i.dp, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %.not46 = icmp eq ptr %i.co, %5
  br i1 %.not46, label %._crit_edge, label %bb.o, !llvm.loop !290

._crit_edge:                                      ; preds = %_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE0_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit, %_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit
  %.070.lcssa = phi ptr [ %i.cl, %_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit ], [ %i.cp, %_ZN5arrow8internal25IntToStringFormatterMixinINS_10UInt32TypeEEclIZNS_L31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt17basic_string_viewIcSD_EE0_EEDTclclsr3stdE7declvalIT_EEtlSI_EEEjOSK_.exit ]
  %i.ds = load ptr, ptr %1, align 8, !tbaa !21    ; 3 uses
  %i.dt = ptrtoint ptr %.070.lcssa to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du                    ; 6 uses
  %i.dw = load i64, ptr %i.ap, align 8, !tbaa !22 ; 7 uses
  %i.dx = icmp ult i64 %i.dw, %i.dv
  br i1 %i.dx, label %bb.r, label %bb.w

bb.r:                                             ; preds = %._crit_edge
  %i.dy = sub nuw i64 %i.dv, %i.dw                ; 4 uses
  %i.dz = sub i64 9223372036854775807, %i.dw
  %i.ea = icmp ult i64 %i.dz, %i.dy
  br i1 %i.ea, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i

bb.s:                                             ; preds = %bb.r
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #28
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i: ; preds = %bb.r
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ds, %i.eb
  br i1 %i.ec, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.ed = icmp ult i64 %i.dw, 16
  call void @llvm.assume(i1 %i.ed)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.ee = load i64, ptr %i.eb, align 8, !tbaa !38
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.ef = phi i64 [ %i.ee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %i.dv, %i.ef
  br i1 %.not.i.i.i.i, label %bb.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.dw, i64 noundef 0, ptr noundef null, i64 noundef %i.dy)
  %.pre.i.i = load ptr, ptr %1, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %i.eg = phi ptr [ %i.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i ], [ %.pre.i.i, %bb.t ]
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.dw ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.dy, 1
  br i1 %cond.i.i.i.i, label %bb.u, label %bb.v
end_hunk_0
