Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yaml-cpp/original/scanner?download=true
inline.NumInlined: 865
inline.NumDeleted: 448
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4YAML7Scanner13ScanNextTokenEv:bb.a
  %i.fj = call ptr @__cxa_allocate_exception(i64 64) #21 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.01.0.copyload.i50 = load i64, ptr %i.fk, align 8
  %.sroa.22.0.copyload.i52 = load i32, ptr %i.h, align 8, !tbaa !104
  store i64 %.sroa.01.0.copyload.i50, ptr %13, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %.sroa.22.0.copyload.i52, ptr %.sroa.25.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.bn unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.thread

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZN4YAML9ExceptionC2ERKNS_4MarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.fj, ptr noundef nonnull align 4 dereferenceable(12) %13, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.bo unwind label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4YAML15ParserExceptionE, i64 16), ptr %i.fj, align 8, !tbaa !122
  invoke void @__cxa_throw(ptr nonnull %i.fj, ptr nonnull @_ZTIN4YAML15ParserExceptionE, ptr nonnull @_ZN4YAML15ParserExceptionD1Ev) #23
          to label %bb.ce unwind label %bb.bp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.thread: ; preds = %bb.bm
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %.sink.split

bb.bp:                                            ; preds = %bb.bn, %bb.bo
  %.025 = phi i1 [ false, %bb.bo ], [ true, %bb.bn ] ; 2 uses
  %i.fm = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fn = load ptr, ptr %14, align 8, !tbaa !123  ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.fp = icmp eq ptr %i.fn, %i.fo
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %bb.bp
  call void @_ZdlPv(ptr noundef %i.fn) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br i1 %.025, label %.sink.split, label %bb.cd

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br i1 %.025, label %.sink.split, label %bb.cd

bb.bq:                                            ; preds = %bb.bl
  %i.fq = call noundef signext i8 @_ZNK4YAML6Stream4peekEv(ptr noundef nonnull align 8 dereferenceable(136) %0)
  %i.fr = icmp eq i8 %i.fq, 39
  br i1 %i.fr, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.fs = call noundef signext i8 @_ZNK4YAML6Stream4peekEv(ptr noundef nonnull align 8 dereferenceable(136) %0)
  %i.ft = icmp eq i8 %i.fs, 34
  br i1 %i.ft, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br, %bb.bq
  call void @_ZN4YAML7Scanner16ScanQuotedScalarEv(ptr noundef nonnull align 8 dereferenceable(488) %0)
  br label %bb.cc

bb.bt:                                            ; preds = %bb.br
  %i.fu = load ptr, ptr %i.ch, align 8, !tbaa !107
  %i.fv = load ptr, ptr %i.ci, align 8, !tbaa !107
  %i.fw = icmp eq ptr %i.fu, %i.fv
  br i1 %i.fw, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.fx = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4YAML3Exp11PlainScalarEv()
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  %i.fy = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4YAML3Exp17PlainScalarInFlowEv()
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.fz = phi ptr [ %i.fx, %bb.bu ], [ %i.fy, %bb.bv ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store i64 0, ptr %1, align 8, !tbaa !119
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %0, ptr %i.ga, align 8, !tbaa !120
  %i.gb = call noundef i32 @_ZNK4YAML5RegEx5MatchINS_16StreamCharSourceEEEiRKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.fz, ptr noundef nonnull align 8 dereferenceable(16) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.gc = icmp sgt i32 %i.gb, -1
  br i1 %i.gc, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  call void @_ZN4YAML7Scanner15ScanPlainScalarEv(ptr noundef nonnull align 8 dereferenceable(488) %0)
  br label %bb.cc

bb.by:                                            ; preds = %bb.bw
  %i.gd = call ptr @__cxa_allocate_exception(i64 64) #21 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.01.0.copyload.i59 = load i64, ptr %i.ge, align 8
  %.sroa.22.0.copyload.i61 = load i32, ptr %i.h, align 8, !tbaa !104
  store i64 %.sroa.01.0.copyload.i59, ptr %16, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %.sroa.22.0.copyload.i61, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %bb.bz unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.thread

bb.bz:                                            ; preds = %bb.by
  invoke void @_ZN4YAML9ExceptionC2ERKNS_4MarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.gd, ptr noundef nonnull align 4 dereferenceable(12) %16, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.ca unwind label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4YAML15ParserExceptionE, i64 16), ptr %i.gd, align 8, !tbaa !122
  invoke void @__cxa_throw(ptr nonnull %i.gd, ptr nonnull @_ZTIN4YAML15ParserExceptionE, ptr nonnull @_ZN4YAML15ParserExceptionD1Ev) #23
          to label %bb.ce unwind label %bb.cb

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.thread: ; preds = %bb.by
  %i.gf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  br label %.sink.split

bb.cb:                                            ; preds = %bb.bz, %bb.ca
  %.0 = phi i1 [ false, %bb.ca ], [ true, %bb.bz ] ; 2 uses
  %i.gg = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.gh = load ptr, ptr %17, align 8, !tbaa !123  ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.gj = icmp eq ptr %i.gh, %i.gi
  br i1 %i.gj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %bb.cb
  call void @_ZdlPv(ptr noundef %i.gh) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  br i1 %.0, label %.sink.split, label %bb.cd

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  br i1 %.0, label %.sink.split, label %bb.cd

bb.cc:                                            ; preds = %bb.a, %bb.bx, %bb.bs, %bb.bk, %bb.ax, %bb.av, %bb.as, %bb.aq, %bb.al, %bb.aj, %bb.x, %bb.u, %bb.s, %bb.p, %bb.m, %_ZN4YAML7Scanner9EndStreamEv.exit, %bb.c
  ret void

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.sink = phi ptr [ %i.fj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ], [ %i.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ], [ %i.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.thread ], [ %i.fj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56 ], [ %i.fj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.thread ], [ %i.gd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65 ], [ %i.gd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.thread ], [ %i.gd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ]
  %.pn36.pn.ph = phi { ptr, i32 } [ %i.fm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ], [ %i.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ], [ %i.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.thread ], [ %i.fm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56 ], [ %i.fl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.thread ], [ %i.gg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65 ], [ %i.gf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.thread ], [ %i.gg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ]
  call void @__cxa_free_exception(ptr %.sink) #21
  br label %bb.cd

bb.cd:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn36.pn = phi { ptr, i32 } [ %i.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ], [ %i.fm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56 ], [ %i.gg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ], [ %i.gg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65 ], [ %i.fm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ], [ %.pn36.pn.ph, %.sink.split ]
  resume { ptr, i32 } %.pn36.pn

bb.ce:                                            ; preds = %bb.ca, %bb.bo, %bb.ah, %bb.ac
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN4YAML7Scanner11StartStreamEv(ptr noundef nonnull align 8 dereferenceable(488) initializes((216, 217), (218, 220)) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 1, ptr %i.b, align 8, !tbaa !105
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 218
  store i8 1, ptr %i.c, align 2, !tbaa !115
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 219
  store i8 1, ptr %i.d, align 1, !tbaa !116
  %i.e = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24 ; 7 uses
  store i32 -1, ptr %i.e, align 8, !tbaa !126
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 2, ptr %i.f, align 4, !tbaa !114
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 0, ptr %i.g, align 8, !tbaa !127
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr null, ptr %i.h, align 8, !tbaa !128
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19   ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !129
  %.not.i.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = ptrtoint ptr %i.e to i64
  store i64 %i.n, ptr %i.k, align 8, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.o, ptr %i.j, align 8, !tbaa !19
  br label %_ZN4YAML10ptr_vectorINS_7Scanner12IndentMarkerEE9push_backEOSt10unique_ptrIS2_St14default_deleteIS2_EE.exit

bb.c:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !18   ; 10 uses
  %i.q = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.r = ptrtoint ptr %i.p to i64                 ; 3 uses
  %i.s = sub i64 %i.q, %i.r                       ; 3 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775800
  br i1 %i.t, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #23
          to label %.noexc unwind label %_ZNKSt14default_deleteIN4YAML7Scanner12IndentMarkerEEclEPS2_.exit.i8

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.c
  %i.u = ashr exact i64 %i.s, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.u ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 1152921504606846975)
  %i.y = select i1 %i.w, i64 1152921504606846975, i64 %i.x ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #24
          to label %.noexc4 unwind label %_ZNKSt14default_deleteIN4YAML7Scanner12IndentMarkerEEclEPS2_.exit.i8 ; 10 uses

.noexc4:                                          ; preds = %_ZNKSt6vectorISt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.s
  %i.ac = ptrtoint ptr %i.e to i64
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !21
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.p, %i.k
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.noexc4
  %i.ad = add i64 %i.q, -8
  %i.ae = sub i64 %i.ad, %i.r                     ; 2 uses
  %i.af = lshr i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ae, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader23, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %1 = add i64 %i.q, -8
  %2 = sub i64 %1, %i.r
  %i.ah = and i64 %2, -8
  %3 = add i64 %i.ah, 8                           ; 2 uses
  %scevgep = getelementptr i8, ptr %i.aa, i64 %3
  %scevgep19 = getelementptr i8, ptr %i.p, i64 %3
  %bound0 = icmp ult ptr %i.aa, %scevgep19
  %bound1 = icmp ult ptr %i.p, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.i.preheader23, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 4611686018427387900     ; 3 uses
  %i.ai = shl i64 %n.vec, 3                       ; 2 uses
  %i.aj = getelementptr i8, ptr %i.aa, i64 %i.ai  ; 2 uses
  %i.ak = getelementptr i8, ptr %i.p, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aa, i64 %i.al ; 2 uses
  %next.gep20 = getelementptr i8, ptr %i.p, i64 %i.al ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  %i.am = getelementptr i8, ptr %next.gep20, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep20, align 8, !tbaa !21, !alias.scope !209, !noalias !207
  %wide.load21 = load <2 x i64>, ptr %i.am, align 8, !tbaa !21, !alias.scope !209, !noalias !207
  %i.an = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !21, !alias.scope !210, !noalias !209
  store <2 x i64> %wide.load21, ptr %i.an, align 8, !tbaa !21, !alias.scope !210, !noalias !209
  %i.ao = getelementptr i8, ptr %next.gep20, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep20, align 8, !tbaa !21, !alias.scope !209, !noalias !207
  store <2 x ptr> splat (ptr null), ptr %i.ao, align 8, !tbaa !21, !alias.scope !209, !noalias !207
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !205

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader23

.lr.ph.i.i.i.i.i.i.i.i.preheader23:               ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.aa, %vector.memcheck ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  %.0911.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ak, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader23, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader23 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader23 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  %i.aq = load i64, ptr %.0911.i.i.i.i.i.i.i.i, align 8, !tbaa !21, !alias.scope !208, !noalias !207
  store i64 %i.aq, ptr %.012.i.i.i.i.i.i.i.i, align 8, !tbaa !21, !alias.scope !207, !noalias !208
  store ptr null, ptr %.0911.i.i.i.i.i.i.i.i, align 8, !tbaa !21, !alias.scope !208, !noalias !207
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ar, %i.k
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !206

_ZNSt6vectorISt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %.noexc4
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.aa, %.noexc4 ], [ %i.aj, %middle.block ], [ %i.as, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #22
  br label %_ZNSt6vectorISt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i

_ZNSt6vectorISt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i.i
  store ptr %i.aa, ptr %i.i, align 8, !tbaa !18
  store ptr %i.at, ptr %i.j, align 8, !tbaa !19
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.au, ptr %i.l, align 8, !tbaa !129
  br label %_ZN4YAML10ptr_vectorINS_7Scanner12IndentMarkerEE9push_backEOSt10unique_ptrIS2_St14default_deleteIS2_EE.exit

_ZN4YAML10ptr_vectorINS_7Scanner12IndentMarkerEE9push_backEOSt10unique_ptrIS2_St14default_deleteIS2_EE.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i, %bb.b
  %i.av = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i.i, %_ZNSt6vectorISt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i ], [ %i.k, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !21 ; 2 uses
  store ptr %i.aw, ptr %i.a, align 8, !tbaa !21
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !132 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !133
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -8
  %.not.i.i.i5 = icmp eq ptr %i.ay, %i.bb
  br i1 %.not.i.i.i5, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4YAML10ptr_vectorINS_7Scanner12IndentMarkerEE9push_backEOSt10unique_ptrIS2_St14default_deleteIS2_EE.exit
  store ptr %i.aw, ptr %i.ay, align 8, !tbaa !21
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.bc, ptr %i.ax, align 8, !tbaa !132
  br label %_ZNSt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS2_EED2Ev.exit

bb.g:                                             ; preds = %_ZN4YAML10ptr_vectorINS_7Scanner12IndentMarkerEE9push_backEOSt10unique_ptrIS2_St14default_deleteIS2_EE.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @_ZNSt5dequeIPN4YAML7Scanner12IndentMarkerESaIS3_EE16_M_push_back_auxIJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.bd, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZNSt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void

_ZNKSt14default_deleteIN4YAML7Scanner12IndentMarkerEEclEPS2_.exit.i8: ; preds = %_ZNKSt6vectorISt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.d
  %i.be = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #22
  resume { ptr, i32 } %i.be
}

; Function Attrs: mustprogress uwtable
define void @_ZN4YAML7Scanner15ScanToNextTokenEv(ptr noundef nonnull align 8 dereferenceable(488) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.YAML::StreamCharSource", align 8 ; 5 uses
  %2 = alloca %"class.YAML::StreamCharSource", align 8 ; 5 uses
  %3 = alloca %"class.YAML::StreamCharSource", align 8 ; 5 uses
  %4 = alloca %"class.YAML::StreamCharSource", align 8 ; 5 uses
  %5 = alloca %"class.YAML::StreamCharSource", align 8 ; 5 uses
  %6 = alloca %"class.YAML::RegEx", align 8       ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 218 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 219
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.l = call noundef zeroext i1 @_ZNK4YAML6StreamcvbEv(ptr noundef nonnull align 8 dereferenceable(136) %0)
  br i1 %i.l, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b, %bb.j
  %i.m = call noundef signext i8 @_ZNK4YAML6Stream4peekEv(ptr noundef nonnull align 8 dereferenceable(136) %0)
  switch i8 %i.m, label %.critedge [
    i8 32, label %bb.c
    i8 9, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph, %.lr.ph
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !107
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !107
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.q = load atomic i8, ptr @_ZGVZN4YAML3Exp3TabEvE1e acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.e, label %_ZN4YAML3Exp3TabEv.exit, !prof !134

bb.e:                                             ; preds = %bb.d
  %i.s = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4YAML3Exp3TabEvE1e) #21
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %_ZN4YAML3Exp3TabEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4YAML5RegExC1Ec(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN4YAML3Exp3TabEvE1e, i8 noundef signext 9)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = call i32 @__cxa_atexit(ptr nonnull @_ZN4YAML5RegExD2Ev, ptr nonnull @_ZZN4YAML3Exp3TabEvE1e, ptr nonnull @__dso_handle) #21 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4YAML3Exp3TabEvE1e) #21
  br label %_ZN4YAML3Exp3TabEv.exit

common.resume:                                    ; preds = %bb.s, %bb.n, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.h ], [ %i.ac, %bb.n ], [ %i.ap, %bb.s ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4YAML3Exp3TabEvE1e) #21
  br label %common.resume

_ZN4YAML3Exp3TabEv.exit:                          ; preds = %bb.d, %bb.e, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store i64 0, ptr %5, align 8, !tbaa !119
  store ptr %0, ptr %i.c, align 8, !tbaa !120
  %i.v = call noundef i32 @_ZNK4YAML5RegEx5MatchINS_16StreamCharSourceEEEiRKT_(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN4YAML3Exp3TabEvE1e, ptr noundef nonnull align 8 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.w = icmp sgt i32 %i.v, -1
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4YAML3Exp3TabEv.exit
  store i8 0, ptr %i.d, align 2, !tbaa !115
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN4YAML3Exp3TabEv.exit, %bb.c
  call void @_ZN4YAML6Stream3eatEi(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 noundef 1)
  %i.x = call noundef zeroext i1 @_ZNK4YAML6StreamcvbEv(ptr noundef nonnull align 8 dereferenceable(136) %0)
  br i1 %i.x, label %.lr.ph, label %.critedge, !llvm.loop !211

.critedge:                                        ; preds = %bb.j, %.lr.ph, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.y = load atomic i8, ptr @_ZGVZN4YAML3Exp7CommentEvE1e acquire, align 8, !noalias !218
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.k, label %_ZN4YAML3Exp7CommentEv.exit, !prof !134

bb.k:                                             ; preds = %.critedge
  %i.aa = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4YAML3Exp7CommentEvE1e) #21, !noalias !218
end_hunk_0
begin_hunk_1_@_ZN4YAML5TokenD2Ev:bb.a

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !151
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.i = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #22
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !123  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  tail call void @_ZdlPv(ptr noundef %i.k) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 3, 5) i32 @_ZN4YAML7Scanner16GetStartTokenForENS0_12IndentMarker11INDENT_TYPEE(i32 noundef %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %0, label %bb.c [
    i32 1, label %bb.f
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #23
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #21
  resume { ptr, i32 } %i.b

bb.f:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 4, %bb.b ], [ 3, %bb.a ]
  ret i32 %.0
}

declare void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN4YAML7Scanner12PushIndentToEiNS0_12IndentMarker11INDENT_TYPEE(ptr noundef nonnull align 8 dereferenceable(488) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !107
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !107
  %.not = icmp eq ptr %i.d, %i.e
  br i1 %.not, label %bb.b, label %_ZNSt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS2_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24 ; 10 uses
  store i32 %1, ptr %i.f, align 8, !tbaa !126
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %2, ptr %i.g, align 4, !tbaa !114
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 0, ptr %i.h, align 8, !tbaa !127
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store ptr null, ptr %i.i, align 8, !tbaa !128
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !108, !noalias !251 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !109, !noalias !251
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %bb.c, label %_ZNSt5stackIPN4YAML7Scanner12IndentMarkerESt5dequeIS3_SaIS3_EEE3topEv.exit

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !110, !noalias !251
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 512
  br label %_ZNSt5stackIPN4YAML7Scanner12IndentMarkerESt5dequeIS3_SaIS3_EEE3topEv.exit

_ZNSt5stackIPN4YAML7Scanner12IndentMarkerESt5dequeIS3_SaIS3_EEE3topEv.exit: ; preds = %bb.b, %bb.c
  %i.u = phi ptr [ %i.t, %bb.c ], [ %i.l, %bb.b ]
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21   ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !126  ; 2 uses
  %i.y = icmp slt i32 %1, %i.x
  br i1 %i.y, label %_ZNKSt14default_deleteIN4YAML7Scanner12IndentMarkerEEclEPS2_.exit.i, label %bb.e

bb.d:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.r, %bb.k, %_ZN4YAML7Scanner16GetStartTokenForENS0_12IndentMarker11INDENT_TYPEE.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS2_EED2Ev.exit25

bb.e:                                             ; preds = %_ZNSt5stackIPN4YAML7Scanner12IndentMarkerESt5dequeIS3_SaIS3_EEE3topEv.exit
  %i.aa = icmp eq i32 %1, %i.x
  br i1 %i.aa, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ab = icmp eq i32 %2, 1
  br i1 %i.ab, label %bb.g, label %_ZNKSt14default_deleteIN4YAML7Scanner12IndentMarkerEEclEPS2_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !114
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_ZN4YAML7Scanner16GetStartTokenForENS0_12IndentMarker11INDENT_TYPEE.exit, label %_ZNKSt14default_deleteIN4YAML7Scanner12IndentMarkerEEclEPS2_.exit.i

bb.h:                                             ; preds = %bb.e
  switch i32 %2, label %bb.j [
    i32 1, label %_ZN4YAML7Scanner16GetStartTokenForENS0_12IndentMarker11INDENT_TYPEE.exit
    i32 0, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  br label %_ZN4YAML7Scanner16GetStartTokenForENS0_12IndentMarker11INDENT_TYPEE.exit

bb.j:                                             ; preds = %bb.h
  %i.af = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull @.str.3)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #23
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ag = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.af) #21
  br label %_ZNSt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS2_EED2Ev.exit25

_ZN4YAML7Scanner16GetStartTokenForENS0_12IndentMarker11INDENT_TYPEE.exit: ; preds = %bb.g, %bb.i, %bb.h
  %.0.i = phi i32 [ 4, %bb.i ], [ 3, %bb.h ], [ 3, %bb.g ]
  %i.ah = invoke noundef ptr @_ZN4YAML7Scanner9PushTokenENS_5Token4TYPEE(ptr noundef nonnull align 8 dereferenceable(488) %0, i32 noundef %.0.i)
          to label %bb.m unwind label %bb.d

bb.m:                                             ; preds = %_ZN4YAML7Scanner16GetStartTokenForENS0_12IndentMarker11INDENT_TYPEE.exit
  store ptr %i.ah, ptr %i.i, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %i.f, ptr %i.a, align 8, !tbaa !21
  %i.ai = load ptr, ptr %i.k, align 8, !tbaa !132 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !133
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -8
  %.not.i.i.i = icmp eq ptr %i.ai, %i.al
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr %i.f, ptr %i.ai, align 8, !tbaa !21
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.am, ptr %i.k, align 8, !tbaa !132
  br label %_ZNSt5stackIPN4YAML7Scanner12IndentMarkerESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit

bb.o:                                             ; preds = %bb.m
  invoke void @_ZNSt5dequeIPN4YAML7Scanner12IndentMarkerESaIS3_EE16_M_push_back_auxIJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNSt5stackIPN4YAML7Scanner12IndentMarkerESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit unwind label %bb.t

_ZNSt5stackIPN4YAML7Scanner12IndentMarkerESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !19 ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !129
  %.not.i.i.i20 = icmp eq ptr %i.ap, %i.ar
  br i1 %.not.i.i.i20, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNSt5stackIPN4YAML7Scanner12IndentMarkerESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit
  %i.as = ptrtoint ptr %i.f to i64
  store i64 %i.as, ptr %i.ap, align 8, !tbaa !21
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.at, ptr %i.ao, align 8, !tbaa !19
  br label %bb.u

bb.q:                                             ; preds = %_ZNSt5stackIPN4YAML7Scanner12IndentMarkerESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !18 ; 10 uses
  %i.av = ptrtoint ptr %i.ap to i64               ; 3 uses
  %i.aw = ptrtoint ptr %i.au to i64               ; 3 uses
  %i.ax = sub i64 %i.av, %i.aw                    ; 3 uses
  %i.ay = icmp eq i64 %i.ax, 9223372036854775800
  br i1 %i.ay, label %bb.r, label %_ZNKSt6vectorISt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #23
          to label %.noexc21 unwind label %bb.d

.noexc21:                                         ; preds = %bb.r
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.q
  %i.az = ashr exact i64 %i.ax, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.az, i64 1)
  %i.ba = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.az ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.az
  %i.bc = call i64 @llvm.umin.i64(i64 %i.ba, i64 1152921504606846975)
  %i.bd = select i1 %i.bb, i64 1152921504606846975, i64 %i.bc ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.bd, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #24
          to label %.noexc22 unwind label %bb.d   ; 10 uses

.noexc22:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.ax
  %i.bh = ptrtoint ptr %i.f to i64
  store i64 %i.bh, ptr %i.bg, align 8, !tbaa !21
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.au, %i.ap
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.noexc22
  %i.bi = add i64 %i.av, -8
  %i.bj = sub i64 %i.bi, %i.aw                    ; 2 uses
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bj, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader47, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %3 = add i64 %i.av, -8
  %4 = sub i64 %3, %i.aw
  %i.bm = and i64 %4, -8
  %5 = add i64 %i.bm, 8                           ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bf, i64 %5
  %scevgep43 = getelementptr i8, ptr %i.au, i64 %5
  %bound0 = icmp ult ptr %i.bf, %scevgep43
  %bound1 = icmp ult ptr %i.au, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.i.preheader47, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bl, 4611686018427387900     ; 3 uses
  %i.bn = shl i64 %n.vec, 3                       ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bf, i64 %i.bn  ; 2 uses
  %i.bp = getelementptr i8, ptr %i.au, i64 %i.bn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bf, i64 %i.bq ; 2 uses
  %next.gep44 = getelementptr i8, ptr %i.au, i64 %i.bq ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !252)
  call void @llvm.experimental.noalias.scope.decl(metadata !253)
  %i.br = getelementptr i8, ptr %next.gep44, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep44, align 8, !tbaa !21, !alias.scope !254, !noalias !252
  %wide.load45 = load <2 x i64>, ptr %i.br, align 8, !tbaa !21, !alias.scope !254, !noalias !252
  %i.bs = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !21, !alias.scope !255, !noalias !254
  store <2 x i64> %wide.load45, ptr %i.bs, align 8, !tbaa !21, !alias.scope !255, !noalias !254
  %i.bt = getelementptr i8, ptr %next.gep44, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep44, align 8, !tbaa !21, !alias.scope !254, !noalias !252
  store <2 x ptr> splat (ptr null), ptr %i.bt, align 8, !tbaa !21, !alias.scope !254, !noalias !252
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !249

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader47

.lr.ph.i.i.i.i.i.i.i.i.preheader47:               ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.bf, %vector.memcheck ], [ %i.bf, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.bo, %middle.block ]
  %.0911.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.au, %vector.memcheck ], [ %i.au, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.bp, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader47, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader47 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader47 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !252)
  call void @llvm.experimental.noalias.scope.decl(metadata !253)
  %i.bv = load i64, ptr %.0911.i.i.i.i.i.i.i.i, align 8, !tbaa !21, !alias.scope !253, !noalias !252
  store i64 %i.bv, ptr %.012.i.i.i.i.i.i.i.i, align 8, !tbaa !21, !alias.scope !252, !noalias !253
  store ptr null, ptr %.0911.i.i.i.i.i.i.i.i, align 8, !tbaa !21, !alias.scope !253, !noalias !252
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bw, %i.ap
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !250

_ZNSt6vectorISt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %.noexc22
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.bf, %.noexc22 ], [ %i.bo, %middle.block ], [ %i.bx, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.au) #22
  br label %_ZNSt6vectorISt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i

_ZNSt6vectorISt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i: ; preds = %bb.s, %_ZNSt6vectorISt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i.i
  store ptr %i.bf, ptr %i.an, align 8, !tbaa !18
  store ptr %i.by, ptr %i.ao, align 8, !tbaa !19
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bd
  store ptr %i.bz, ptr %i.aq, align 8, !tbaa !129
  br label %bb.u

bb.t:                                             ; preds = %bb.o
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %_ZNSt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS2_EED2Ev.exit25

bb.u:                                             ; preds = %bb.p, %_ZNSt6vectorISt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i
  %i.cb = phi ptr [ %i.ap, %bb.p ], [ %.0.lcssa.i.i.i.i.i.i.i.i, %_ZNSt6vectorISt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i ]
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !21
  br label %_ZNSt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS2_EED2Ev.exit

_ZNKSt14default_deleteIN4YAML7Scanner12IndentMarkerEEclEPS2_.exit.i: ; preds = %_ZNSt5stackIPN4YAML7Scanner12IndentMarkerESt5dequeIS3_SaIS3_EEE3topEv.exit, %bb.g, %bb.f
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #22
  br label %_ZNSt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS2_EED2Ev.exit25: ; preds = %bb.d, %bb.l, %bb.t
  %.pn = phi { ptr, i32 } [ %i.ca, %bb.t ], [ %i.z, %bb.d ], [ %i.ag, %bb.l ]
  call void @_ZdlPv(ptr noundef nonnull %i.f) #22
  resume { ptr, i32 } %.pn

_ZNSt10unique_ptrIN4YAML7Scanner12IndentMarkerESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4YAML7Scanner12IndentMarkerEEclEPS2_.exit.i, %bb.u, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %i.cc, %bb.u ], [ null, %_ZNKSt14default_deleteIN4YAML7Scanner12IndentMarkerEEclEPS2_.exit.i ]
  ret ptr %.1
}

; Function Attrs: mustprogress noreturn uwtable
define void @_ZNK4YAML7Scanner20ThrowParserExceptionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(488) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.YAML::Mark", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store i64 -1, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 -1, ptr %.sroa.2.0..sroa_idx, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !49   ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %i.f, i64 12, i1 false), !tbaa.struct !143
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = tail call ptr @__cxa_allocate_exception(i64 64) #21 ; 3 uses
  invoke void @_ZN4YAML15ParserExceptionC2ERKNS_4MarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTIN4YAML15ParserExceptionE, ptr nonnull @_ZN4YAML15ParserExceptionD1Ev) #23
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.g) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK4YAML7Scanner12GetTopIndentEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(488) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !108
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !109, !noalias !258
  %i.h = icmp eq ptr %i.c, %i.g
  br i1 %i.h, label %bb.c, label %_ZNKSt5stackIPN4YAML7Scanner12IndentMarkerESt5dequeIS3_SaIS3_EEE3topEv.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !110, !noalias !258
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 512
  br label %_ZNKSt5stackIPN4YAML7Scanner12IndentMarkerESt5dequeIS3_SaIS3_EEE3topEv.exit

_ZNKSt5stackIPN4YAML7Scanner12IndentMarkerESt5dequeIS3_SaIS3_EEE3topEv.exit: ; preds = %bb.b, %bb.c
  %i.n = phi ptr [ %i.m, %bb.c ], [ %i.c, %bb.b ]
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.q = load i32, ptr %i.p, align 8, !tbaa !126
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZNKSt5stackIPN4YAML7Scanner12IndentMarkerESt5dequeIS3_SaIS3_EEE3topEv.exit
  %.0 = phi i32 [ %i.q, %_ZNKSt5stackIPN4YAML7Scanner12IndentMarkerESt5dequeIS3_SaIS3_EEE3topEv.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #13 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #21 ; 0 uses
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt5dequeIN4YAML5TokenESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::_Deque_iterator.7", align 16 ; 5 uses
  %2 = alloca %"struct.std::_Deque_iterator.7", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.g = load <2 x ptr>, ptr %i.a, align 8, !tbaa !155, !noalias !263
  store <2 x ptr> %i.g, ptr %1, align 16, !tbaa !155
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load <2 x ptr>, ptr %i.b, align 8, !tbaa !45, !noalias !263
  store <2 x ptr> %i.i, ptr %i.h, align 16, !tbaa !45
end_hunk_1
