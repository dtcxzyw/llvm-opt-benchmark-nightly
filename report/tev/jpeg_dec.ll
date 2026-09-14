Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/jpeg_dec?download=true
inline.NumInlined: 384
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
@_ZTISt12length_error = external constant ptr
@_ZTVSt12length_error = external constant { [5 x ptr] }, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"basic_string\00", align 1
@__const._ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne180100IZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRSD_EEEDcOSE_DpOT0_.__fmatrix = private unnamed_addr constant %"struct.std::__1::__farray" { [2 x ptr] [ptr @_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne180100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS0_6__baseILSE_1EJSB_SC_EEEEEEDcSG_DpT0_, ptr @_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne180100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS0_6__baseILSE_1EJSB_SC_EEEEEEDcSG_DpT0_] }, align 8
@_ZTISt18bad_variant_access = external constant ptr
@_ZTVSt18bad_variant_access = external constant { [5 x ptr] }, align 8

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK12Decoder_JPEG33read_bitstream_configuration_dataEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%class.Result) align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(148) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__1::vector", align 8  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit3, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !17   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j                       ; 4 uses
  %.not.i.i = icmp eq ptr %i.h, %i.f
  br i1 %.not.i.i, label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNKSt3__16vectorIhNS_9allocatorIhEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #15
          to label %.noexc.i.i unwind label %bb.f

.noexc.i.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #16
          to label %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit.i.i unwind label %bb.f ; 3 uses

_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit.i.i: ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr align 1 %i.f, i64 %i.k, i1 false)
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %2, align 8, !tbaa !17     ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZNSt3__128__exception_guard_exceptionsINS_6vectorIhNS_9allocatorIhEEE16__destroy_vectorEED2B8ne180100Ev.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.p, ptr %i.d, align 8, !tbaa !18
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.t) #17
  br label %_ZNSt3__128__exception_guard_exceptionsINS_6vectorIhNS_9allocatorIhEEE16__destroy_vectorEED2B8ne180100Ev.exit.i.i

_ZNSt3__128__exception_guard_exceptionsINS_6vectorIhNS_9allocatorIhEEE16__destroy_vectorEED2B8ne180100Ev.exit.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.o

_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit.i.i, %bb.b
  %i.u = phi ptr [ %i.n, %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit.i.i ], [ null, %bb.b ] ; 2 uses
  %i.v = phi ptr [ %i.m, %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit.i.i ], [ null, %bb.b ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.v, ptr %0, align 8, !tbaa !17
  store ptr %i.u, ptr %i.w, align 8, !tbaa !18
  store ptr %i.u, ptr %i.x, align 8, !tbaa !19
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.y, align 8, !tbaa !21
  br label %bb.h

_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit3: ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.z, align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit3, %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define hidden void @_ZN12Decoder_JPEG9parse_SOFEv(ptr dead_on_unwind noalias writable sret(%class.Error) align 8 %0, ptr noundef nonnull align 8 dereferenceable(148) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon, align 1                ; 3 uses
  %3 = alloca %class.Result, align 8              ; 12 uses
  %4 = alloca %class.Error, align 8               ; 32 uses
  %5 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !43, !range !44, !noundef !45
  %i.d = trunc nuw i8 %i.c to i1
  %.0.i.sroa.gep = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %.0.i.sroa.gep127 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.0.i.sroa.gep129 = getelementptr inbounds nuw i8, ptr %3, i64 16
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr @_ZN5Error2OkE, align 8
  store i64 %i.e, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 8), align 8
  %i.h = trunc i8 %i.g to i1
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 8), i64 24, i1 false), !tbaa.struct !23
  br label %_ZN5ErrorC2ERKS_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 24), align 8, !tbaa !22
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 16), align 8, !tbaa !22
  tail call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef %i.i, i64 noundef %i.j)
  br label %_ZN5ErrorC2ERKS_.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZNK7Decoder19get_compressed_dataEb(ptr dead_on_unwind nonnull writable sret(%class.Result) align 8 %3, ptr noundef nonnull align 8 dereferenceable(112) %1, i1 noundef zeroext true)
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !21
  switch i32 %i.l, label %bb.f [
    i32 0, label %_ZN6ResultINSt3__16vectorIhNS0_9allocatorIhEEEEEdeEv.exit
    i32 1, label %_ZNK6ResultINSt3__16vectorIhNS0_9allocatorIhEEEEE5errorEv.exit
  ]

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNSt3__126__throw_bad_variant_accessB8ne180100Ev() #15
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNK6ResultINSt3__16vectorIhNS0_9allocatorIhEEEEE5errorEv.exit: ; preds = %bb.e
  %i.m = load i64, ptr %3, align 8
  store i64 %i.m, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i8, ptr %.0.i.sroa.gep, align 8
  %i.p = trunc i8 %i.o to i1
  br i1 %i.p, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK6ResultINSt3__16vectorIhNS0_9allocatorIhEEEEE5errorEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %.0.i.sroa.gep, i64 24, i1 false), !tbaa.struct !23
  br label %_ZN5ErrorC2ERKS_.exit105

bb.h:                                             ; preds = %_ZNK6ResultINSt3__16vectorIhNS0_9allocatorIhEEEEE5errorEv.exit
  %i.q = load ptr, ptr %.0.i.sroa.gep127, align 8, !tbaa !22
  %i.r = load i64, ptr %.0.i.sroa.gep129, align 8, !tbaa !22
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef %i.q, i64 noundef %i.r)
          to label %_ZN5ErrorC2ERKS_.exit105 unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

_ZN6ResultINSt3__16vectorIhNS0_9allocatorIhEEEEEdeEv.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.t = invoke noalias noundef nonnull dereferenceable(25) ptr @_Znwm(i64 noundef 25) #16
          to label %.noexc108 unwind label %bb.l  ; 3 uses

.noexc108:                                        ; preds = %_ZN6ResultINSt3__16vectorIhNS0_9allocatorIhEEEEEdeEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !22
  store i64 25, ptr %5, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 23, ptr %i.v, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.t, ptr noundef nonnull align 1 dereferenceable(23) @.str, i64 23, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 23
  store i8 0, ptr %i.w, align 1, !tbaa !22
  invoke void @_ZN5ErrorC1E15heif_error_code18heif_suberror_codeRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 2, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %.noexc108
  %i.x = load i8, ptr %5, align 8
  %i.y = trunc i8 %i.x to i1
  br i1 %i.y, label %bb.k, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !22
  %i.aa = load i64, ptr %5, align 8
  %i.ab = and i64 %i.aa, -2
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ab) #17
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.ac = load ptr, ptr %.0.i.sroa.gep, align 8, !tbaa !18
  %i.ad = load ptr, ptr %3, align 8, !tbaa !17    ; 6 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 4 uses
  %.not98134 = icmp ugt i64 %i.ag, 1
  br i1 %.not98134, label %.lr.ph, label %.critedge

bb.l:                                             ; preds = %_ZN6ResultINSt3__16vectorIhNS0_9allocatorIhEEEEEdeEv.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit109

bb.m:                                             ; preds = %.noexc108
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load i8, ptr %5, align 8
  %i.ak = trunc i8 %i.aj to i1
  br i1 %i.ak, label %bb.n, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit109

bb.n:                                             ; preds = %bb.m
  %i.al = load ptr, ptr %i.u, align 8, !tbaa !22
  %i.am = load i64, ptr %5, align 8
  %i.an = and i64 %i.am, -2
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.an) #17
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit109

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit109: ; preds = %bb.n, %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.l ], [ %i.ai, %bb.m ], [ %i.ai, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %_ZN5ErrorD2Ev.exit124

.lr.ph:                                           ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, %bb.at
  %i.ao = phi i64 [ %i.ei, %bb.at ], [ 1, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit ] ; 3 uses
  %.074135 = phi i64 [ %i.ao, %bb.at ], [ 0, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit ] ; 4 uses
  %i.ap = getelementptr i8, ptr %i.ad, i64 %.074135
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !22
  %i.ar = icmp eq i8 %i.aq, -1
  br i1 %i.ar, label %bb.o, label %bb.at

bb.o:                                             ; preds = %.lr.ph
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ao
  %i.at = load i8, ptr %i.as, align 1, !tbaa !22  ; 2 uses
  %i.au = and i8 %i.at, -16
  %i.av = icmp eq i8 %i.au, -64
  br i1 %i.av, label %bb.p, label %bb.at

bb.p:                                             ; preds = %bb.o
  %i.aw = and i8 %i.at, 15
  %i.ax = zext nneg i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr @_ZL5isSOF, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !46, !range !44, !noundef !45
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.q, label %bb.at

bb.q:                                             ; preds = %bb.p
  %i.bb = add i64 %.074135, 9                     ; 2 uses
  %.not = icmp ult i64 %i.bb, %i.ag
  br i1 %.not, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = load i64, ptr %4, align 8
  store i64 %i.bc, ptr %0, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 8
  %i.bg = trunc i8 %i.bf to i1
  br i1 %i.bg, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 24, i1 false), !tbaa.struct !23
  br label %_ZN5ErrorC2ERKS_.exit111

bb.t:                                             ; preds = %bb.r
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !22
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !22
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef %i.bi, i64 noundef %i.bk)
          to label %_ZN5ErrorC2ERKS_.exit111 unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.v:                                             ; preds = %bb.q
  %6 = getelementptr i8, ptr %i.ad, i64 %.074135
  %i.bm = getelementptr i8, ptr %6, i64 4
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !22  ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bb
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !22  ; 7 uses
  %i.bq = add i64 %.074135, 11                    ; 2 uses
  %i.br = zext i8 %i.bp to i64
  %i.bs = mul nuw nsw i64 %i.br, 3
  %i.bt = add i64 %i.bs, %i.bq
  %.not90 = icmp ult i64 %i.bt, %i.ag
  br i1 %.not90, label %.preheader, label %bb.w

.preheader:                                       ; preds = %bb.v
  %.not138 = icmp eq i8 %i.bp, 0
  br i1 %.not138, label %._crit_edge.thread, label %.lr.ph137

.lr.ph137:                                        ; preds = %.preheader
  %i.bu = getelementptr i8, ptr %i.ad, i64 %i.bq  ; 3 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !22  ; 2 uses
  %i.bw = lshr i8 %i.bv, 4                        ; 4 uses
  %i.bx = and i8 %i.bv, 15                        ; 4 uses
  %exitcond141.not = icmp eq i8 %i.bp, 1
  br i1 %exitcond141.not, label %._crit_edge, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.by = load i64, ptr %4, align 8
  store i64 %i.by, ptr %0, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 8
  %i.cc = trunc i8 %i.cb to i1
  br i1 %i.cc, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i64 24, i1 false), !tbaa.struct !23
  br label %_ZN5ErrorC2ERKS_.exit111

bb.y:                                             ; preds = %bb.w
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !22
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !22
  br label %.invoke

bb.z:                                             ; preds = %.invoke
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

._crit_edge:                                      ; preds = %bb.ab, %bb.aa, %.lr.ph137
  %.sroa.11.0 = phi i8 [ 0, %.lr.ph137 ], [ %i.ck, %bb.aa ], [ %i.ck, %bb.ab ] ; 4 uses
  %.sroa.13.0 = phi i8 [ 0, %.lr.ph137 ], [ 0, %bb.aa ], [ %i.co, %bb.ab ] ; 3 uses
  %.sroa.17.0 = phi i8 [ 0, %.lr.ph137 ], [ %i.cl, %bb.aa ], [ %i.cl, %bb.ab ] ; 4 uses
  %.sroa.19.0 = phi i8 [ 0, %.lr.ph137 ], [ 0, %bb.aa ], [ %i.cp, %bb.ab ] ; 3 uses
  switch i8 %i.bp, label %._crit_edge.thread [
    i8 1, label %bb.ao
    i8 3, label %bb.ae
  ]

bb.aa:                                            ; preds = %.lr.ph137
  %i.ci = getelementptr i8, ptr %i.bu, i64 3
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !22  ; 2 uses
  %i.ck = lshr i8 %i.cj, 4                        ; 2 uses
  %i.cl = and i8 %i.cj, 15                        ; 2 uses
  %exitcond141.not.1 = icmp eq i8 %i.bp, 2
  br i1 %exitcond141.not.1, label %._crit_edge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cm = getelementptr i8, ptr %i.bu, i64 6
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !22  ; 2 uses
  %i.co = lshr i8 %i.cn, 4
  %i.cp = and i8 %i.cn, 15
  br label %._crit_edge

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge
  %i.cq = load i64, ptr %4, align 8
  store i64 %i.cq, ptr %0, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 8
  %i.cu = trunc i8 %i.ct to i1
  br i1 %i.cu, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, ptr noundef nonnull align 8 dereferenceable(24) %i.cs, i64 24, i1 false), !tbaa.struct !23
  br label %_ZN5ErrorC2ERKS_.exit111

bb.ad:                                            ; preds = %._crit_edge.thread
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !22
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !22
  br label %.invoke

bb.ae:                                            ; preds = %._crit_edge
  %.not92 = icmp eq i8 %.sroa.11.0, %.sroa.13.0
  %.not93 = icmp eq i8 %.sroa.17.0, %.sroa.19.0
  %or.cond185 = select i1 %.not92, i1 %.not93, i1 false
  br i1 %or.cond185, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cz = load i64, ptr %4, align 8
  store i64 %i.cz, ptr %0, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.dc = load i8, ptr %i.db, align 8
  %i.dd = trunc i8 %i.dc to i1
  br i1 %i.dd, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.da, ptr noundef nonnull align 8 dereferenceable(24) %i.db, i64 24, i1 false), !tbaa.struct !23
  br label %_ZN5ErrorC2ERKS_.exit111

bb.ah:                                            ; preds = %bb.af
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !22
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !22
  br label %.invoke

bb.ai:                                            ; preds = %bb.ae
  %i.di = icmp eq i8 %i.bw, 2                     ; 2 uses
  %i.dj = icmp eq i8 %i.bx, 2
  %or.cond = and i1 %i.di, %i.dj
  %i.dk = icmp eq i8 %.sroa.11.0, 1               ; 3 uses
  %or.cond9 = and i1 %i.dk, %or.cond
  %i.dl = icmp eq i8 %.sroa.17.0, 1               ; 3 uses
  %or.cond14 = and i1 %i.dl, %or.cond9
  br i1 %or.cond14, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dm = icmp eq i8 %i.bx, 1                     ; 2 uses
  %or.cond19 = and i1 %i.di, %i.dm
  %or.cond24 = and i1 %i.dk, %or.cond19
  %or.cond29 = and i1 %i.dl, %or.cond24
  br i1 %or.cond29, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dn = icmp eq i8 %i.bw, 1
  %or.cond34 = and i1 %i.dn, %i.dm
  %or.cond39 = and i1 %i.dk, %or.cond34
  %or.cond44 = and i1 %i.dl, %or.cond39
  br i1 %or.cond44, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.do = load i64, ptr %4, align 8
  store i64 %i.do, ptr %0, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 8
  %i.ds = trunc i8 %i.dr to i1
  br i1 %i.ds, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, ptr noundef nonnull align 8 dereferenceable(24) %i.dq, i64 24, i1 false), !tbaa.struct !23
  br label %_ZN5ErrorC2ERKS_.exit111

bb.an:                                            ; preds = %bb.al
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !22
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !22
  br label %.invoke

bb.ao:                                            ; preds = %bb.ak, %bb.aj, %bb.ai, %._crit_edge
  %.sink = phi i32 [ 1, %bb.ai ], [ 2, %bb.aj ], [ 0, %._crit_edge ], [ 3, %bb.ak ] ; 2 uses
  %i.dx = load i8, ptr %i.b, align 8, !tbaa !43, !range !44, !noundef !45
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i8 %i.bn, ptr %i.a, align 8, !tbaa !22
  %.sroa.6154.0..sroa_idx155 = getelementptr inbounds nuw i8, ptr %1, i64 132
  store i32 %.sink, ptr %.sroa.6154.0..sroa_idx155, align 4, !tbaa !25
  %.sroa.7.0..sroa_idx157 = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i8 %i.bp, ptr %.sroa.7.0..sroa_idx157, align 8, !tbaa !22
  %.sroa.9.0..sroa_idx159 = getelementptr inbounds nuw i8, ptr %1, i64 137
  store i8 %i.bw, ptr %.sroa.9.0..sroa_idx159, align 1
  %.sroa.11.0..sroa_idx161 = getelementptr inbounds nuw i8, ptr %1, i64 138
  store i8 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx161, align 2
  %.sroa.13.0..sroa_idx163 = getelementptr inbounds nuw i8, ptr %1, i64 139
  store i8 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx163, align 1, !tbaa !22
  %.sroa.15.0..sroa_idx165 = getelementptr inbounds nuw i8, ptr %1, i64 140
  store i8 %i.bx, ptr %.sroa.15.0..sroa_idx165, align 4
  %.sroa.17.0..sroa_idx167 = getelementptr inbounds nuw i8, ptr %1, i64 141
  store i8 %.sroa.17.0, ptr %.sroa.17.0..sroa_idx167, align 1
  %.sroa.19.0..sroa_idx169 = getelementptr inbounds nuw i8, ptr %1, i64 142
  store i8 %.sroa.19.0, ptr %.sroa.19.0..sroa_idx169, align 2, !tbaa !22
  br label %_ZNSt3__18optionalIN12Decoder_JPEG10ConfigInfoEEaSB8ne180100IRS2_vEERS3_OT_.exit

bb.aq:                                            ; preds = %bb.ao
  store i8 %i.bn, ptr %i.a, align 8, !tbaa !22
  %.sroa.6154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 132
  store i32 %.sink, ptr %.sroa.6154.0..sroa_idx, align 4, !tbaa !25
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i8 %i.bp, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !22
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 137
  store i8 %i.bw, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 138
  store i8 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx, align 2
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 139
  store i8 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx, align 1, !tbaa !22
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 140
  store i8 %i.bx, ptr %.sroa.15.0..sroa_idx, align 4
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 141
  store i8 %.sroa.17.0, ptr %.sroa.17.0..sroa_idx, align 1
end_hunk_0
