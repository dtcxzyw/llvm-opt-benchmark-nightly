Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/FujiDecompressor?download=true
inline.NumInlined: 1167
inline.NumDeleted: 517
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN8rawspeed16FujiDecompressorC2ENS_8RawImageENS_10ByteStreamE:bb.a
  %i.ek = zext i32 %i.ej to i64
  %.not.i.i.i.i = icmp samesign ugt i64 %i.ei, %i.ek
  br i1 %.not.i.i.i.i, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #17
          to label %.noexc35 unwind label %.loopexit.split-lp

.noexc35:                                         ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.el = load ptr, ptr %i.g, align 8, !tbaa !106, !noalias !160
  %i.em = icmp sgt i32 %i.ej, -1
  tail call void @llvm.assume(i1 %i.em)
  %i.en = add nuw nsw i32 %i.ef, %i.ee            ; 2 uses
  %i.eo = icmp samesign ule i32 %i.en, %i.ej
  tail call void @llvm.assume(i1 %i.eo)
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.eg ; 2 uses
  %i.eq = icmp sgt i32 %i.ee, -1
  tail call void @llvm.assume(i1 %i.eq)
  store i32 %i.en, ptr %i.dw, align 8, !tbaa !104, !noalias !161
  %i.er = load ptr, ptr %i.dy, align 8, !tbaa !108 ; 4 uses
  %.not.i = icmp eq ptr %i.er, %i.ed
  br i1 %.not.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store ptr %i.ep, ptr %i.er, align 8, !tbaa !109
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store i32 %i.ee, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !94
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store ptr %i.es, ptr %i.dy, align 8, !tbaa !108
  br label %_ZNSt6vectorIN8rawspeed10Array1DRefIKhEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit

bb.ar:                                            ; preds = %bb.ap
  %i.et = ptrtoint ptr %i.ed to i64
  %i.eu = ptrtoint ptr %i.ec to i64               ; 2 uses
  %i.ev = sub i64 %i.et, %i.eu                    ; 5 uses
  %i.ew = icmp eq i64 %i.ev, 9223372036854775792
  br i1 %i.ew, label %bb.as, label %_ZNKSt6vectorIN8rawspeed10Array1DRefIKhEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #29
          to label %.noexc37 unwind label %.loopexit.split-lp

.noexc37:                                         ; preds = %bb.as
  unreachable

_ZNKSt6vectorIN8rawspeed10Array1DRefIKhEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ar
  %i.ex = ashr exact i64 %i.ev, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ex, i64 1)
  %i.ey = add nsw i64 %.sroa.speculated.i.i.i, %i.ex ; 2 uses
  %i.ez = icmp ult i64 %i.ey, %i.ex
  %i.fa = tail call i64 @llvm.umin.i64(i64 %i.ey, i64 576460752303423487)
  %i.fb = select i1 %i.ez, i64 576460752303423487, i64 %i.fa ; 3 uses
  %.not.i.i.i36 = icmp ne i64 %i.fb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i36)
  %i.fc = shl nuw nsw i64 %i.fb, 4
  %i.fd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fc) #27
          to label %.noexc38 unwind label %.loopexit ; 5 uses

.noexc38:                                         ; preds = %_ZNKSt6vectorIN8rawspeed10Array1DRefIKhEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.fe = getelementptr inbounds i8, ptr %i.fd, i64 %i.ev ; 3 uses
  store ptr %i.ep, ptr %i.fe, align 8, !tbaa !109
  %.sroa.6.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store i32 %i.ee, ptr %.sroa.6.0..sroa_idx47, align 8, !tbaa !94
  %i.ff = icmp sgt i64 %i.ev, 0
  br i1 %i.ff, label %bb.at, label %_ZNSt6vectorIN8rawspeed10Array1DRefIKhEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.at:                                            ; preds = %.noexc38
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fd, ptr align 8 %i.ec, i64 %i.ev, i1 false)
  br label %_ZNSt6vectorIN8rawspeed10Array1DRefIKhEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIN8rawspeed10Array1DRefIKhEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.at, %.noexc38
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %.not.i17.i.i = icmp eq ptr %i.ec, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN8rawspeed10Array1DRefIKhEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIN8rawspeed10Array1DRefIKhEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  %i.fh = load ptr, ptr %i.cv, align 8, !tbaa !158
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = sub i64 %i.fi, %i.eu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.fj) #28
  br label %_ZNSt6vectorIN8rawspeed10Array1DRefIKhEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN8rawspeed10Array1DRefIKhEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.au, %_ZNSt6vectorIN8rawspeed10Array1DRefIKhEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.fd, ptr %i.h, align 8, !tbaa !107
  store ptr %i.fg, ptr %i.dy, align 8, !tbaa !108
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %i.fd, i64 %i.fb ; 2 uses
  store ptr %i.fk, ptr %i.cv, align 8, !tbaa !158
  br label %_ZNSt6vectorIN8rawspeed10Array1DRefIKhEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit

_ZNSt6vectorIN8rawspeed10Array1DRefIKhEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit: ; preds = %_ZNSt6vectorIN8rawspeed10Array1DRefIKhEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.aq
  %i.fl = phi ptr [ %i.fd, %_ZNSt6vectorIN8rawspeed10Array1DRefIKhEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.ec, %bb.aq ]
  %i.fm = phi ptr [ %i.fk, %_ZNSt6vectorIN8rawspeed10Array1DRefIKhEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.ed, %bb.aq ]
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.053.0101, i64 4 ; 2 uses
  %i.fo = icmp eq ptr %i.fn, %.sroa.11.0121
  br i1 %i.fo, label %._crit_edge103, label %bb.an

.loopexit:                                        ; preds = %_ZNKSt6vectorIN8rawspeed10Array1DRefIKhEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

.loopexit.split-lp:                               ; preds = %bb.ao, %bb.as
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.av:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ai, %bb.ac
  %.sroa.060.1 = phi ptr [ %.sroa.060.2120, %.loopexit ], [ %.sroa.060.0, %bb.ac ], [ %.sroa.060.2120, %bb.ai ], [ %.sroa.060.2120, %.loopexit.split-lp ] ; 2 uses
  %.sroa.18.1 = phi ptr [ %.sroa.11.0121, %.loopexit ], [ %.sroa.18.0, %bb.ac ], [ %.sroa.11.0121, %bb.ai ], [ %.sroa.11.0121, %.loopexit.split-lp ]
  %.pn24 = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %i.bw, %bb.ac ], [ %i.cu, %bb.ai ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i39 = icmp eq ptr %.sroa.060.1, null
  br i1 %.not.i.i.i39, label %_ZNSt6vectorIjSaIjEED2Ev.exit40, label %bb.aw

bb.aw:                                            ; preds = %.thread, %bb.av
  %.pn24128 = phi { ptr, i32 } [ %i.cg, %.thread ], [ %.pn24, %bb.av ]
  %.sroa.18.1127 = phi ptr [ %i.bl, %.thread ], [ %.sroa.18.1, %bb.av ]
  %.sroa.060.1126 = phi ptr [ %i.bh, %.thread ], [ %.sroa.060.1, %bb.av ] ; 2 uses
  %i.fp = ptrtoint ptr %.sroa.18.1127 to i64
  %i.fq = ptrtoint ptr %.sroa.060.1126 to i64
  %i.fr = sub i64 %i.fp, %i.fq
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.060.1126, i64 noundef %i.fr) #28
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit40

_ZNSt6vectorIjSaIjEED2Ev.exit40:                  ; preds = %bb.aw, %bb.av, %bb.x, %bb.o, %bb.g, %bb.d
  %.pn28 = phi { ptr, i32 } [ %i.p, %bb.d ], [ %i.s, %bb.g ], [ %.pn24, %bb.av ], [ %.pn24128, %bb.aw ], [ %i.ar, %bb.o ], [ %i.ay, %bb.x ]
  %i.fs = load ptr, ptr %i.h, align 8, !tbaa !107 ; 3 uses
  %.not.i.i.i41 = icmp eq ptr %i.fs, null
  br i1 %.not.i.i.i41, label %_ZNSt6vectorIN8rawspeed10Array1DRefIKhEESaIS3_EED2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit40
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !158
  %i.fv = ptrtoint ptr %i.fu to i64
  %i.fw = ptrtoint ptr %i.fs to i64
  %i.fx = sub i64 %i.fv, %i.fw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fs, i64 noundef %i.fx) #28
  br label %_ZNSt6vectorIN8rawspeed10Array1DRefIKhEESaIS3_EED2Ev.exit

_ZNSt6vectorIN8rawspeed10Array1DRefIKhEESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit40, %bb.ax
  tail call void @_ZN8rawspeed8RawImageD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #25
  resume { ptr, i32 } %.pn28
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef %0, ...) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf) ; 3 uses
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 8192, ptr noundef %0, ptr noundef nonnull %1) #25 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.a)
  %i.c = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN8rawspeed19RawDecoderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK8rawspeed16FujiDecompressor10FujiHeadercvbEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 4, !tbaa !110
  %.not = icmp eq i16 %i.a, 18771
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.c = load i8, ptr %i.b, align 2
  %.not9 = icmp eq i8 %i.c, 1
  %or.cond = select i1 %.not, i1 %.not9, i1 false
  br i1 %or.cond, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.e = load i16, ptr %i.d, align 2, !tbaa !111  ; 3 uses
  %i.f = add i16 %i.e, -6
  %or.cond22 = icmp ult i16 %i.f, 12283
  %i.g = urem i16 %i.e, 6
  %i.h = udiv exact i16 %i.e, 6
  %.not10 = icmp eq i16 %i.g, 0
  %or.cond23 = and i1 %or.cond22, %.not10
  br i1 %or.cond23, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.j = load i16, ptr %i.i, align 2, !tbaa !112  ; 4 uses
  %i.k = zext nneg i16 %i.j to i32
  %i.l = add i16 %i.j, -768
  %or.cond24 = icmp ult i16 %i.l, 11521
  %i.m = urem i16 %i.j, 24
  %.not11 = icmp eq i16 %i.m, 0
  %or.cond25 = and i1 %or.cond24, %.not11
  br i1 %or.cond25, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i16, ptr %i.n, align 4, !tbaa !113  ; 5 uses
  %i.p = icmp ugt i16 %i.o, 12288
  br i1 %i.p, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = zext nneg i16 %i.o to i32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.s = load i16, ptr %i.r, align 4, !tbaa !114
  %.not12 = icmp ne i16 %i.s, 768
  %i.t = icmp samesign ult i16 %i.o, 768
  %or.cond26.not45.not48 = or i1 %i.t, %.not12
  %i.u = urem i16 %i.o, 768
  %i.v = udiv exact i16 %i.o, 768                 ; 2 uses
  %.not13 = icmp ne i16 %i.u, 0
  %or.cond27.not46 = or i1 %.not13, %or.cond26.not45.not48
  %i.w = sub nsw i32 %i.q, %i.k
  %i.x = icmp sgt i32 %i.w, 767
  %or.cond29 = select i1 %or.cond27.not46, i1 true, i1 %i.x
  br i1 %or.cond29, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.z = load i8, ptr %i.y, align 2, !tbaa !115   ; 2 uses
  %i.aa = add i8 %i.z, -1
  %or.cond30 = icmp ult i8 %i.aa, 16
  %i.ab = zext i8 %i.z to i16
  %.not14 = icmp eq i16 %i.v, %i.ab
  %or.cond31 = select i1 %or.cond30, i1 %.not14, i1 false
  br i1 %or.cond31, label %_ZN8rawspeed19roundUpDivisionSafeEmm.exit, label %bb.j

_ZN8rawspeed19roundUpDivisionSafeEmm.exit:        ; preds = %bb.f
  %.lhs.trunc42 = add nsw i16 %i.j, -1
  %i.ac = udiv i16 %.lhs.trunc42, 768
  %narrow = add nuw nsw i16 %i.ac, 1
  %.not15 = icmp eq i16 %narrow, %i.v
  br i1 %.not15, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZN8rawspeed19roundUpDivisionSafeEmm.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load i16, ptr %i.ad, align 4, !tbaa !116 ; 2 uses
  %i.af = add i16 %i.ae, -1
  %or.cond32 = icmp ult i16 %i.af, 2048
  %.not16 = icmp eq i16 %i.h, %i.ae
  %or.cond33 = select i1 %or.cond32, i1 %.not16, i1 false
  br i1 %or.cond33, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ah = load i8, ptr %i.ag, align 4, !tbaa !117
  switch i8 %i.ah, label %bb.j [
    i8 12, label %bb.i
    i8 14, label %bb.i
    i8 16, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !118
  %i.ak = and i8 %i.aj, -17
  %spec.select = icmp eq i8 %i.ak, 0
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %_ZN8rawspeed19roundUpDivisionSafeEmm.exit, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.al = phi i1 [ false, %bb.h ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.g ], [ false, %_ZN8rawspeed19roundUpDivisionSafeEmm.exit ], [ false, %bb.b ], [ %spec.select, %bb.i ], [ false, %bb.f ], [ false, %bb.c ], [ false, %bb.a ]
  ret i1 %i.al
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden { i64, i8 } @_ZN8rawspeed16getAsXTransPhaseERKNS_16ColorFilterArrayE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::array.79", align 1    ; 39 uses
  %2 = alloca %"struct.std::array.79", align 1    ; 39 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8
  %i.b = icmp eq i64 %.sroa.0.0.copyload.i, 25769803782
  br i1 %i.b, label %.preheader70, label %bb.e

.preheader70:                                     ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.c = tail call noundef zeroext i8 @_ZNK8rawspeed16ColorFilterArray10getColorAtEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 0, i32 noundef 0)
  store i8 %i.c, ptr %1, align 1, !tbaa !120
  %i.d = tail call noundef zeroext i8 @_ZNK8rawspeed16ColorFilterArray10getColorAtEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 1, i32 noundef 0)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.d, ptr %i.e, align 1, !tbaa !120
  %i.f = tail call noundef zeroext i8 @_ZNK8rawspeed16ColorFilterArray10getColorAtEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2, i32 noundef 0)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.f, ptr %i.g, align 1, !tbaa !120
  %i.h = tail call noundef zeroext i8 @_ZNK8rawspeed16ColorFilterArray10getColorAtEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 3, i32 noundef 0)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.h, ptr %i.i, align 1, !tbaa !120
  %i.j = tail call noundef zeroext i8 @_ZNK8rawspeed16ColorFilterArray10getColorAtEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 4, i32 noundef 0)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.j, ptr %i.k, align 1, !tbaa !120
  %i.l = tail call noundef zeroext i8 @_ZNK8rawspeed16ColorFilterArray10getColorAtEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 5, i32 noundef 0)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.l, ptr %i.m, align 1, !tbaa !120
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.o = tail call noundef zeroext i8 @_ZNK8rawspeed16ColorFilterArray10getColorAtEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 0, i32 noundef 1)
  store i8 %i.o, ptr %i.n, align 1, !tbaa !120
  %i.p = tail call noundef zeroext i8 @_ZNK8rawspeed16ColorFilterArray10getColorAtEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 1, i32 noundef 1)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %i.p, ptr %i.q, align 1, !tbaa !120
  %i.r = tail call noundef zeroext i8 @_ZNK8rawspeed16ColorFilterArray10getColorAtEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2, i32 noundef 1)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %i.r, ptr %i.s, align 1, !tbaa !120
  %i.t = tail call noundef zeroext i8 @_ZNK8rawspeed16ColorFilterArray10getColorAtEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 3, i32 noundef 1)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %i.t, ptr %i.u, align 1, !tbaa !120
  %i.v = tail call noundef zeroext i8 @_ZNK8rawspeed16ColorFilterArray10getColorAtEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 4, i32 noundef 1)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 %i.v, ptr %i.w, align 1, !tbaa !120
  %i.x = tail call noundef zeroext i8 @_ZNK8rawspeed16ColorFilterArray10getColorAtEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 5, i32 noundef 1)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 11
  store i8 %i.x, ptr %i.y, align 1, !tbaa !120
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aa = tail call noundef zeroext i8 @_ZNK8rawspeed16ColorFilterArray10getColorAtEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 0, i32 noundef 2)
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !120
  %i.ab = tail call noundef zeroext i8 @_ZNK8rawspeed16ColorFilterArray10getColorAtEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 1, i32 noundef 2)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 13
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !120
  %i.ad = tail call noundef zeroext i8 @_ZNK8rawspeed16ColorFilterArray10getColorAtEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2, i32 noundef 2)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !120
  %i.af = tail call noundef zeroext i8 @_ZNK8rawspeed16ColorFilterArray10getColorAtEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 3, i32 noundef 2)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 15
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !120
  %i.ah = tail call noundef zeroext i8 @_ZNK8rawspeed16ColorFilterArray10getColorAtEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 4, i32 noundef 2)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !120
  %i.aj = tail call noundef zeroext i8 @_ZNK8rawspeed16ColorFilterArray10getColorAtEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 5, i32 noundef 2)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !120
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.am = tail call noundef zeroext i8 @_ZNK8rawspeed16ColorFilterArray10getColorAtEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 0, i32 noundef 3)
  store i8 %i.am, ptr %i.al, align 1, !tbaa !120
  %i.an = tail call noundef zeroext i8 @_ZNK8rawspeed16ColorFilterArray10getColorAtEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 1, i32 noundef 3)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !120
  %i.ap = tail call noundef zeroext i8 @_ZNK8rawspeed16ColorFilterArray10getColorAtEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2, i32 noundef 3)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !120
  %i.ar = tail call noundef zeroext i8 @_ZNK8rawspeed16ColorFilterArray10getColorAtEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 3, i32 noundef 3)
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 21
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !120
  %i.at = tail call noundef zeroext i8 @_ZNK8rawspeed16ColorFilterArray10getColorAtEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 4, i32 noundef 3)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i8 %i.at, ptr %i.au, align 1, !tbaa !120
  %i.av = tail call noundef zeroext i8 @_ZNK8rawspeed16ColorFilterArray10getColorAtEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 5, i32 noundef 3)
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 23
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !120
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ay = tail call noundef zeroext i8 @_ZNK8rawspeed16ColorFilterArray10getColorAtEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 0, i32 noundef 4)
  store i8 %i.ay, ptr %i.ax, align 1, !tbaa !120
  %i.az = tail call noundef zeroext i8 @_ZNK8rawspeed16ColorFilterArray10getColorAtEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 1, i32 noundef 4)
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 25
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !120
  %i.bb = tail call noundef zeroext i8 @_ZNK8rawspeed16ColorFilterArray10getColorAtEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2, i32 noundef 4)
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 26
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !120
  %i.bd = tail call noundef zeroext i8 @_ZNK8rawspeed16ColorFilterArray10getColorAtEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 3, i32 noundef 4)
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 27
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !120
  %i.bf = tail call noundef zeroext i8 @_ZNK8rawspeed16ColorFilterArray10getColorAtEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 4, i32 noundef 4)
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !120
  %i.bh = tail call noundef zeroext i8 @_ZNK8rawspeed16ColorFilterArray10getColorAtEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 5, i32 noundef 4)
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 29
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !120
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.bk = tail call noundef zeroext i8 @_ZNK8rawspeed16ColorFilterArray10getColorAtEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 0, i32 noundef 5)
  store i8 %i.bk, ptr %i.bj, align 1, !tbaa !120
  %i.bl = tail call noundef zeroext i8 @_ZNK8rawspeed16ColorFilterArray10getColorAtEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 1, i32 noundef 5)
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 31
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !120
  %i.bn = tail call noundef zeroext i8 @_ZNK8rawspeed16ColorFilterArray10getColorAtEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2, i32 noundef 5)
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !120
  %i.bp = tail call noundef zeroext i8 @_ZNK8rawspeed16ColorFilterArray10getColorAtEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 3, i32 noundef 5)
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 33
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !120
  %i.br = tail call noundef zeroext i8 @_ZNK8rawspeed16ColorFilterArray10getColorAtEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 4, i32 noundef 5)
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 34
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !120
  %i.bt = tail call noundef zeroext i8 @_ZNK8rawspeed16ColorFilterArray10getColorAtEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 5, i32 noundef 5)
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 35
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !120
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 13
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 15
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 17
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 19
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 21
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 22
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 23
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 25
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 26
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 27
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 29
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 31
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 33
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 34
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 35
  br label %.preheader

.preheader:                                       ; preds = %.preheader70, %bb.d
  %indvars.iv81 = phi i64 [ 0, %.preheader70 ], [ %indvars.iv.next82, %bb.d ] ; 7 uses
  %i.de = mul nuw nsw i64 %indvars.iv81, 6
  %i.df = getelementptr inbounds nuw i8, ptr @__const._ZN8rawspeed14getAsCFAColorsENS_8iPoint2DE.basePat, i64 %i.de ; 6 uses
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 4 uses
  %i.dg = icmp eq i64 %indvars.iv.next82, 6
  %i.dh = mul i64 %indvars.iv.next82, 6
  %i.di = and i64 %i.dh, 4294967294
  %i.dj = select i1 %i.dg, i64 0, i64 %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr @__const._ZN8rawspeed14getAsCFAColorsENS_8iPoint2DE.basePat, i64 %i.dj ; 6 uses
  %i.dl = trunc i64 %indvars.iv81 to i32
  %i.dm = add i32 %i.dl, 2
  %i.dn = urem i32 %i.dm, 6
  %i.do = mul nuw nsw i32 %i.dn, 6
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr @__const._ZN8rawspeed14getAsCFAColorsENS_8iPoint2DE.basePat, i64 %i.dp ; 6 uses
  %i.dr = trunc i64 %indvars.iv81 to i32
  %i.ds = add i32 %i.dr, 3
  %i.dt = urem i32 %i.ds, 6
  %i.du = mul nuw nsw i32 %i.dt, 6
  %i.dv = zext nneg i32 %i.du to i64
end_hunk_0
begin_hunk_1_@_ZNK8rawspeed16FujiDecompressor10decompressEv:bb.a
  store i16 %i.bsb, ptr %i.bsd, align 2, !tbaa !92
  %i.bse = mul nuw nsw i64 %i.bjj, 7              ; 2 uses
  %i.bsf = add nuw nsw i64 %i.bse, %i.bjk
  %i.bsg = icmp samesign ule i64 %i.bsf, %i.bji
  call void @llvm.assume(i1 %i.bsg)
  %i.bsh = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.bse ; 2 uses
  %i.bsi = getelementptr inbounds nuw i8, ptr %i.bsh, i64 2
  %i.bsj = load i16, ptr %i.bsi, align 2, !tbaa !92
  %i.bsk = icmp samesign ugt i32 %i.aut, 8
  call void @llvm.assume(i1 %i.bsk)
  %i.bsl = shl nuw nsw i64 %i.bjh, 3              ; 2 uses
  %i.bsm = add nuw nsw i64 %i.bsl, %i.bjg
  %i.bsn = icmp samesign ule i64 %i.bsm, %i.bji
  call void @llvm.assume(i1 %i.bsn)
  %i.bso = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.bsl ; 2 uses
  store i16 %i.bsj, ptr %i.bso, align 2, !tbaa !92
  %i.bsp = getelementptr [2 x i8], ptr %i.bsh, i64 %i.bjg
  %i.bsq = getelementptr i8, ptr %i.bsp, i64 -4
  %i.bsr = load i16, ptr %i.bsq, align 2, !tbaa !92
  %i.bss = getelementptr [2 x i8], ptr %i.bso, i64 %i.bjg
  %i.bst = getelementptr i8, ptr %i.bss, i64 -2
  store i16 %i.bsr, ptr %i.bst, align 2, !tbaa !92
  %i.bsu = shl nuw nsw i64 %i.bjj, 3              ; 2 uses
  %i.bsv = add nuw nsw i64 %i.bsu, %i.bjk
  %i.bsw = icmp samesign ule i64 %i.bsv, %i.bji
  call void @llvm.assume(i1 %i.bsw)
  %i.bsx = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.bsu ; 2 uses
  %i.bsy = getelementptr inbounds nuw i8, ptr %i.bsx, i64 2
  %i.bsz = load i16, ptr %i.bsy, align 2, !tbaa !92
  %i.bta = icmp samesign ugt i32 %i.aut, 9
  call void @llvm.assume(i1 %i.bta)
  %i.btb = mul nuw nsw i64 %i.bjh, 9              ; 2 uses
  %i.btc = add nuw nsw i64 %i.btb, %i.bjg
  %i.btd = icmp samesign ule i64 %i.btc, %i.bji
  call void @llvm.assume(i1 %i.btd)
  %i.bte = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.btb ; 2 uses
  store i16 %i.bsz, ptr %i.bte, align 2, !tbaa !92
  %i.btf = getelementptr [2 x i8], ptr %i.bsx, i64 %i.bjg
  %i.btg = getelementptr i8, ptr %i.btf, i64 -4
  %i.bth = load i16, ptr %i.btg, align 2, !tbaa !92
  %i.bti = getelementptr [2 x i8], ptr %i.bte, i64 %i.bjg
  %i.btj = getelementptr i8, ptr %i.bti, i64 -2
  store i16 %i.bth, ptr %i.btj, align 2, !tbaa !92
  %i.btk = mul nuw nsw i64 %i.bjj, 9              ; 2 uses
  %i.btl = add nuw nsw i64 %i.btk, %i.bjk
  %i.btm = icmp samesign ule i64 %i.btl, %i.bji
  call void @llvm.assume(i1 %i.btm)
  %i.btn = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.btk ; 2 uses
  %i.bto = getelementptr inbounds nuw i8, ptr %i.btn, i64 2
  %i.btp = load i16, ptr %i.bto, align 2, !tbaa !92
  %i.btq = icmp samesign ugt i32 %i.aut, 10
  call void @llvm.assume(i1 %i.btq)
  %i.btr = mul nuw nsw i64 %i.bjh, 10             ; 2 uses
  %i.bts = add nuw nsw i64 %i.btr, %i.bjg
  %i.btt = icmp samesign ule i64 %i.bts, %i.bji
  call void @llvm.assume(i1 %i.btt)
  %i.btu = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.btr ; 2 uses
  store i16 %i.btp, ptr %i.btu, align 2, !tbaa !92
  %i.btv = getelementptr [2 x i8], ptr %i.btn, i64 %i.bjg
  %i.btw = getelementptr i8, ptr %i.btv, i64 -4
  %i.btx = load i16, ptr %i.btw, align 2, !tbaa !92
  %i.bty = getelementptr [2 x i8], ptr %i.btu, i64 %i.bjg
  %i.btz = getelementptr i8, ptr %i.bty, i64 -2
  store i16 %i.btx, ptr %i.btz, align 2, !tbaa !92
  %i.bua = mul nuw nsw i64 %i.bjj, 10             ; 2 uses
  %i.bub = add nuw nsw i64 %i.bua, %i.bjk
  %i.buc = icmp samesign ule i64 %i.bub, %i.bji
  call void @llvm.assume(i1 %i.buc)
  %i.bud = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.bua ; 2 uses
  %i.bue = getelementptr inbounds nuw i8, ptr %i.bud, i64 2
  %i.buf = load i16, ptr %i.bue, align 2, !tbaa !92
  %i.bug = icmp samesign ugt i32 %i.aut, 11
  call void @llvm.assume(i1 %i.bug)
  %i.buh = mul nuw nsw i64 %i.bjh, 11             ; 2 uses
  %i.bui = add nuw nsw i64 %i.buh, %i.bjg
  %i.buj = icmp samesign ule i64 %i.bui, %i.bji
  call void @llvm.assume(i1 %i.buj)
  %i.buk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.buh ; 2 uses
  store i16 %i.buf, ptr %i.buk, align 2, !tbaa !92
  %i.bul = getelementptr [2 x i8], ptr %i.bud, i64 %i.bjg
  %i.bum = getelementptr i8, ptr %i.bul, i64 -4
  %i.bun = load i16, ptr %i.bum, align 2, !tbaa !92
  %i.buo = getelementptr [2 x i8], ptr %i.buk, i64 %i.bjg
  %i.bup = getelementptr i8, ptr %i.buo, i64 -2
  store i16 %i.bun, ptr %i.bup, align 2, !tbaa !92
  %i.buq = mul nuw nsw i64 %i.bjj, 11             ; 2 uses
  %i.bur = add nuw nsw i64 %i.buq, %i.bjk
  %i.bus = icmp samesign ule i64 %i.bur, %i.bji
  call void @llvm.assume(i1 %i.bus)
  %i.but = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.buq ; 2 uses
  %i.buu = getelementptr inbounds nuw i8, ptr %i.but, i64 2
  %i.buv = icmp samesign ugt i32 %i.aut, 12
  call void @llvm.assume(i1 %i.buv)
  %i.buw = mul nuw nsw i64 %i.bjh, 12
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i61.i.i.i

bb.eg:                                            ; preds = %bb.ed
  %i.bux = add nuw nsw i64 %i.bjj, %i.bjk
  %i.buy = icmp samesign ule i64 %i.bux, %i.bji
  call void @llvm.assume(i1 %i.buy)
  %i.buz = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.bjj ; 2 uses
  %i.bva = getelementptr inbounds nuw i8, ptr %i.buz, i64 2
  %i.bvb = load i16, ptr %i.bva, align 2, !tbaa !92
  %i.bvc = icmp samesign ugt i32 %i.aut, 2
  call void @llvm.assume(i1 %i.bvc)
  %i.bvd = shl nuw nsw i64 %i.bjh, 1              ; 2 uses
  %i.bve = add nuw nsw i64 %i.bvd, %i.bjg
  %i.bvf = icmp samesign ule i64 %i.bve, %i.bji
  call void @llvm.assume(i1 %i.bvf)
  %i.bvg = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.bvd ; 2 uses
  store i16 %i.bvb, ptr %i.bvg, align 2, !tbaa !92
  %i.bvh = getelementptr [2 x i8], ptr %i.buz, i64 %i.bjg
  %i.bvi = getelementptr i8, ptr %i.bvh, i64 -4
  %i.bvj = load i16, ptr %i.bvi, align 2, !tbaa !92
  %i.bvk = getelementptr [2 x i8], ptr %i.bvg, i64 %i.bjg
  %i.bvl = getelementptr i8, ptr %i.bvk, i64 -2
  store i16 %i.bvj, ptr %i.bvl, align 2, !tbaa !92
  %i.bvm = shl nuw nsw i64 %i.bjj, 1              ; 2 uses
  %i.bvn = add nuw nsw i64 %i.bvm, %i.bjk
  %i.bvo = icmp samesign ule i64 %i.bvn, %i.bji
  call void @llvm.assume(i1 %i.bvo)
  %i.bvp = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.bvm ; 2 uses
  %i.bvq = getelementptr inbounds nuw i8, ptr %i.bvp, i64 2
  %i.bvr = load i16, ptr %i.bvq, align 2, !tbaa !92
  %i.bvs = icmp samesign ugt i32 %i.aut, 3
  call void @llvm.assume(i1 %i.bvs)
  %i.bvt = mul nuw nsw i64 %i.bjh, 3              ; 2 uses
  %i.bvu = add nuw nsw i64 %i.bvt, %i.bjg
  %i.bvv = icmp samesign ule i64 %i.bvu, %i.bji
  call void @llvm.assume(i1 %i.bvv)
  %i.bvw = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.bvt ; 2 uses
  store i16 %i.bvr, ptr %i.bvw, align 2, !tbaa !92
  %i.bvx = getelementptr [2 x i8], ptr %i.bvp, i64 %i.bjg
  %i.bvy = getelementptr i8, ptr %i.bvx, i64 -4
  %i.bvz = load i16, ptr %i.bvy, align 2, !tbaa !92
  %i.bwa = getelementptr [2 x i8], ptr %i.bvw, i64 %i.bjg
  %i.bwb = getelementptr i8, ptr %i.bwa, i64 -2
  store i16 %i.bvz, ptr %i.bwb, align 2, !tbaa !92
  %i.bwc = mul nuw nsw i64 %i.bjj, 3              ; 2 uses
  %i.bwd = add nuw nsw i64 %i.bwc, %i.bjk
  %i.bwe = icmp samesign ule i64 %i.bwd, %i.bji
  call void @llvm.assume(i1 %i.bwe)
  %i.bwf = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %i.bwc ; 2 uses
  %i.bwg = getelementptr inbounds nuw i8, ptr %i.bwf, i64 2
  %i.bwh = icmp samesign ugt i32 %i.aut, 4
  call void @llvm.assume(i1 %i.bwh)
  %i.bwi = shl nuw nsw i64 %i.bjh, 2
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i61.i.i.i

_ZSt4fillIPiiEvT_S1_RKT0_.exit.i61.i.i.i:         ; preds = %bb.eg, %bb.ef, %bb.ee
  %.sink163.i62.i.i.i = phi i64 [ %i.bwi, %bb.eg ], [ %i.buw, %bb.ef ], [ %i.brn, %bb.ee ] ; 2 uses
  %.sink158.in.i63.i.i.i = phi ptr [ %i.bwg, %bb.eg ], [ %i.buu, %bb.ef ], [ %i.brl, %bb.ee ]
  %.sink157.i64.i.i.i = phi ptr [ %i.bwf, %bb.eg ], [ %i.but, %bb.ef ], [ %i.brk, %bb.ee ]
  %.sink158.i65.i.i.i = load i16, ptr %.sink158.in.i63.i.i.i, align 2, !tbaa !92
  %i.bwj = add nuw nsw i64 %.sink163.i62.i.i.i, %i.bjg
  %i.bwk = icmp samesign ule i64 %i.bwj, %i.bji
  call void @llvm.assume(i1 %i.bwk)
  %i.bwl = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i102.i.i.i, i64 %.sink163.i62.i.i.i ; 2 uses
  store i16 %.sink158.i65.i.i.i, ptr %i.bwl, align 2, !tbaa !92
  %i.bwm = getelementptr [2 x i8], ptr %.sink157.i64.i.i.i, i64 %i.bjg
  %i.bwn = getelementptr i8, ptr %i.bwm, i64 -4
  %i.bwo = load i16, ptr %i.bwn, align 2, !tbaa !92
  %i.bwp = getelementptr [2 x i8], ptr %i.bwl, i64 %i.bjg
  %i.bwq = getelementptr i8, ptr %i.bwp, i64 -2
  store i16 %i.bwo, ptr %i.bwq, align 2, !tbaa !92
  %i.bwr = add nuw nsw i32 %.017.i97.i49.i.i.i, 1 ; 2 uses
  %.not.i.i66.i.i.i = icmp eq i32 %i.bwr, 6
  br i1 %.not.i.i66.i.i.i, label %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block23fuji_bayer_decode_blockEi.exit.i.i.i, label %switch.lookup227, !llvm.loop !188

_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block23fuji_bayer_decode_blockEi.exit.i.i.i: ; preds = %_ZSt4fillIPiiEvT_S1_RKT0_.exit.i61.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.eh

bb.eh:                                            ; preds = %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block23fuji_bayer_decode_blockEi.exit.i.i.i, %_ZN8rawspeed12_GLOBAL__N_121fuji_compressed_block19xtrans_decode_blockEi.exit.i.i.i
  %i.bws = load ptr, ptr %i.dp, align 8, !tbaa !264, !nonnull !250, !align !255
  %i.bwt = getelementptr inbounds nuw i8, ptr %i.bws, i64 3
  %i.bwu = load i8, ptr %i.bwt, align 1, !tbaa !118
  %i.bwv = icmp eq i8 %i.bwu, 16
  %i.bww = load i8, ptr %i.ex, align 2, !tbaa !115
  %i.bwx = zext i8 %i.bww to i64
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ny, %i.bwx ; 2 uses
  %i.bwy = load i16, ptr %i.oa, align 4, !tbaa !114
  %i.bwz = zext i16 %i.bwy to i32                 ; 6 uses
  br i1 %i.bwv, label %bb.ei, label %bb.el

bb.ei:                                            ; preds = %bb.eh
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ej, label %_ZNK8rawspeed12_GLOBAL__N_19FujiStrip7numMCUsENS_8iPoint2DE.exit.i.i.i.i.i

bb.ej:                                            ; preds = %bb.ei
  %i.bxa = mul nuw nsw i32 %i.nz, %i.bwz
  %i.bxb = load i16, ptr %i.ob, align 2, !tbaa !112
  %i.bxc = zext i16 %i.bxb to i32                 ; 2 uses
  %i.bxd = icmp samesign uge i32 %i.bxa, %i.bxc
  call void @llvm.assume(i1 %i.bxd)
  %i.bxe = mul nuw nsw i32 %i.bwz, %indvars110.i.i
  %i.bxf = sub nsw i32 %i.bxc, %i.bxe
  br label %_ZNK8rawspeed12_GLOBAL__N_19FujiStrip7numMCUsENS_8iPoint2DE.exit.i.i.i.i.i

_ZNK8rawspeed12_GLOBAL__N_19FujiStrip7numMCUsENS_8iPoint2DE.exit.i.i.i.i.i: ; preds = %bb.ej, %bb.ei
  %.0.i.i.i.i141.i.i.i = phi i32 [ %i.bxf, %bb.ej ], [ %i.bwz, %bb.ei ] ; 3 uses
  %12 = srem i32 %.0.i.i.i.i141.i.i.i, 6
  %13 = sdiv exact i32 %.0.i.i.i.i141.i.i.i, 6
  %14 = icmp eq i32 %12, 0
  call void @llvm.assume(i1 %14)
  %.not70.i.i.i.i.i = icmp eq i32 %.0.i.i.i.i141.i.i.i, 0
  br i1 %.not70.i.i.i.i.i, label %_ZNK8rawspeed12_GLOBAL__N_121fuji_compressed_block19copy_line_to_xtransERKNS0_9FujiStripEi.exit.i.i.i, label %.preheader66.lr.ph.i.i.i.i.i

.preheader66.lr.ph.i.i.i.i.i:                     ; preds = %_ZNK8rawspeed12_GLOBAL__N_19FujiStrip7numMCUsENS_8iPoint2DE.exit.i.i.i.i.i
  %.sroa.060.0.copyload.i.i.i.i.i = load ptr, ptr %7, align 8, !tbaa !229 ; 6 uses
  %.sroa.462.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.659.0..sroa_idx.i.i, align 8, !tbaa !94 ; 3 uses
  %.sroa.563.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.760.0..sroa_idx.i.i, align 4, !tbaa !94 ; 3 uses
  %.sroa.664.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.861.0..sroa_idx.i.i, align 8, !tbaa !94
  %i.bxg = icmp ne i32 %.sroa.462.0.copyload.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.bxg)
  %i.bxh = icmp sge i32 %.sroa.462.0.copyload.i.i.i.i.i, %.sroa.563.0.copyload.i.i.i.i.i
  call void @llvm.assume(i1 %i.bxh)
  %i.bxi = zext nneg i32 %.sroa.563.0.copyload.i.i.i.i.i to i64 ; 4 uses
  %i.bxj = zext nneg i32 %.sroa.664.0.copyload.i.i.i.i.i to i64 ; 4 uses
  %i.bxk = zext nneg i32 %.sroa.462.0.copyload.i.i.i.i.i to i64 ; 6 uses
  %i.bxl = mul nuw nsw i64 %indvars.iv.i20.i.i, 6 ; 7 uses
  %i.bxm = zext i32 %13 to i64
  %i.bxn = icmp samesign ult i64 %i.bxl, %i.bxj
  %i.bxo = mul nuw nsw i64 %i.bxl, %i.bxk
  %i.bxp = getelementptr inbounds nuw [2 x i8], ptr %.sroa.060.0.copyload.i.i.i.i.i, i64 %i.bxo ; 6 uses
  %i.bxq = load i32, ptr %i.ek, align 4, !tbaa !253 ; 7 uses
  %i.bxr = load i32, ptr %i.ej, align 8, !tbaa !252 ; 13 uses
  %i.bxs = icmp sge i32 %i.bxr, %i.bxq
  call void @llvm.assume(i1 %i.bxs)
  %i.bxt = mul nuw nsw i32 %i.bxr, 7
  %.sroa.0.0.copyload.i.i33.i.i.i.i.i = load ptr, ptr %i.ec, align 8, !tbaa !229, !noalias !271 ; 12 uses
  %i.bxu = zext nneg i32 %i.bxt to i64
  %i.bxv = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i33.i.i.i.i.i, i64 %i.bxu ; 4 uses
  call void @llvm.assume(i1 %i.bxn)
  %i.bxw = shl nuw nsw i32 %i.bxr, 1
  %i.bxx = zext nneg i32 %i.bxw to i64
  %i.bxy = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i33.i.i.i.i.i, i64 %i.bxx ; 2 uses
  %i.bxz = mul nuw nsw i32 %i.bxr, 15
  %i.bya = zext nneg i32 %i.bxz to i64
  %i.byb = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i33.i.i.i.i.i, i64 %i.bya ; 2 uses
  %i.byc = or disjoint i64 %i.bxl, 1
  %i.byd = mul nuw nsw i64 %i.byc, %i.bxk
  %i.bye = getelementptr inbounds nuw [2 x i8], ptr %.sroa.060.0.copyload.i.i.i.i.i, i64 %i.byd ; 6 uses
  %i.byf = shl nuw nsw i32 %i.bxr, 3
  %i.byg = zext nneg i32 %i.byf to i64
  %i.byh = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i33.i.i.i.i.i, i64 %i.byg ; 4 uses
  %i.byi = add nuw nsw i64 %i.bxl, 2              ; 2 uses
  %i.byj = icmp samesign ult i64 %i.byi, %i.bxj
  %i.byk = mul nuw nsw i64 %i.byi, %i.bxk
  %i.byl = getelementptr inbounds nuw [2 x i8], ptr %.sroa.060.0.copyload.i.i.i.i.i, i64 %i.byk ; 6 uses
  %i.bym = shl nuw nsw i32 %i.bxr, 4
  %i.byn = zext nneg i32 %i.bym to i64
  %i.byo = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i33.i.i.i.i.i, i64 %i.byn ; 3 uses
  call void @llvm.assume(i1 %i.byj)
  %i.byp = mul nuw nsw i32 %i.bxr, 3
  %i.byq = zext nneg i32 %i.byp to i64
  %i.byr = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i33.i.i.i.i.i, i64 %i.byq ; 3 uses
  %i.bys = mul nuw nsw i32 %i.bxr, 9
  %i.byt = zext nneg i32 %i.bys to i64
  %i.byu = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i33.i.i.i.i.i, i64 %i.byt ; 2 uses
  %i.byv = add nuw nsw i64 %i.bxl, 3
  %i.byw = mul nuw nsw i64 %i.byv, %i.bxk
  %i.byx = getelementptr inbounds nuw [2 x i8], ptr %.sroa.060.0.copyload.i.i.i.i.i, i64 %i.byw ; 6 uses
  %i.byy = mul nuw nsw i32 %i.bxr, 10
  %i.byz = zext nneg i32 %i.byy to i64
  %i.bza = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i33.i.i.i.i.i, i64 %i.byz ; 4 uses
  %i.bzb = add nuw nsw i64 %i.bxl, 4              ; 2 uses
  %i.bzc = icmp samesign ult i64 %i.bzb, %i.bxj
  %i.bzd = mul nuw nsw i64 %i.bzb, %i.bxk
  %i.bze = getelementptr inbounds nuw [2 x i8], ptr %.sroa.060.0.copyload.i.i.i.i.i, i64 %i.bzd ; 6 uses
  %i.bzf = mul nuw nsw i32 %i.bxr, 11
  %i.bzg = zext nneg i32 %i.bzf to i64
  %i.bzh = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i33.i.i.i.i.i, i64 %i.bzg ; 4 uses
  call void @llvm.assume(i1 %i.bzc)
  %i.bzi = shl nuw nsw i32 %i.bxr, 2
  %i.bzj = zext nneg i32 %i.bzi to i64
  %i.bzk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i33.i.i.i.i.i, i64 %i.bzj ; 3 uses
  %i.bzl = mul nuw nsw i32 %i.bxr, 17
  %i.bzm = zext nneg i32 %i.bzl to i64
  %i.bzn = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i33.i.i.i.i.i, i64 %i.bzm ; 3 uses
  %i.bzo = add nuw nsw i64 %i.bxl, 5              ; 2 uses
  %i.bzp = icmp samesign ult i64 %i.bzo, %i.bxj
  %i.bzq = mul nuw nsw i64 %i.bzo, %i.bxk
  %i.bzr = getelementptr inbounds nuw [2 x i8], ptr %.sroa.060.0.copyload.i.i.i.i.i, i64 %i.bzq ; 6 uses
  call void @llvm.assume(i1 %i.bzp)
  %i.bzs = mul nuw nsw i32 %i.bxr, 12
  %i.bzt = zext nneg i32 %i.bzs to i64
  %i.bzu = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i33.i.i.i.i.i, i64 %i.bzt ; 2 uses
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ek, %.preheader66.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ 0, %.preheader66.lr.ph.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i, %bb.ek ] ; 2 uses
  %.val.val.i.i.i.i.i = load i16, ptr %i.oa, align 4, !tbaa !114
  %i.bzv = zext i16 %.val.val.i.i.i.i.i to i32
  %i.bzw = mul nuw nsw i32 %i.bzv, %indvars110.i.i
  %i.bzx = trunc i64 %indvars.iv.i.i.i.i.i to i32 ; 2 uses
  %i.bzy = mul i32 %i.bzx, 6
  %i.bzz = add nsw i32 %i.bzw, %i.bzy             ; 3 uses
  %.val32.val.i.i.i.i.i = load i16, ptr %i.nx, align 4, !tbaa !116
  %i.caa = zext i16 %.val32.val.i.i.i.i.i to i64
  %i.cab = icmp samesign ult i64 %indvars.iv.i20.i.i, %i.caa
  call void @llvm.assume(i1 %i.cab)
  %i.cac = icmp sgt i32 %i.bzz, -1
  %i.cad = zext nneg i32 %i.bzz to i64            ; 11 uses
  %i.cae = getelementptr inbounds nuw [2 x i8], ptr %i.bxp, i64 %i.cad
  %i.caf = add nuw nsw i64 %i.cad, 1              ; 6 uses
  %i.cag = icmp samesign ult i32 %i.bzz, %.sroa.563.0.copyload.i.i.i.i.i
  %i.cah = getelementptr inbounds nuw [2 x i8], ptr %i.bxp, i64 %i.caf
  %i.cai = add nuw nsw i64 %i.cad, 2              ; 7 uses
  %i.caj = icmp samesign ule i64 %i.cai, %i.bxi
  %i.cak = getelementptr inbounds nuw [2 x i8], ptr %i.bxp, i64 %i.cai
  %i.cal = add nuw nsw i64 %i.cad, 3              ; 7 uses
  %i.cam = icmp samesign ule i64 %i.cal, %i.bxi
  %i.can = getelementptr inbounds nuw [2 x i8], ptr %i.bxp, i64 %i.cal
  %i.cao = mul i32 %i.bzx, 12                     ; 2 uses
  %i.cap = insertelement <4 x i32> poison, i32 %i.cao, i64 0
  %i.caq = shufflevector <4 x i32> %i.cap, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.car = or disjoint <4 x i32> %i.caq, <i32 0, i32 2, i32 0, i32 0>
  %i.cas = add <4 x i32> %i.car, <i32 0, i32 0, i32 6, i32 8>
  %i.cat = udiv <4 x i32> %i.cas, splat (i32 3)
  %i.cau = and <4 x i32> %i.cat, splat (i32 1073741822)
  %i.cav = add nuw nsw <4 x i32> %i.cau, <i32 1, i32 2, i32 1, i32 2> ; 4 uses
  %i.caw = extractelement <4 x i32> %i.cav, i64 0 ; 2 uses
  %i.cax = icmp samesign ult i32 %i.caw, %i.bxq
  call void @llvm.assume(i1 %i.cax)
  %i.cay = zext nneg i32 %i.caw to i64            ; 6 uses
  %i.caz = getelementptr inbounds nuw [2 x i8], ptr %i.bxv, i64 %i.cay
  %i.cba = load i16, ptr %i.caz, align 2, !tbaa !92
  call void @llvm.assume(i1 %i.cac)
  store i16 %i.cba, ptr %i.cae, align 2, !tbaa !92
  %i.cbb = extractelement <4 x i32> %i.cav, i64 1 ; 2 uses
  %i.cbc = icmp samesign ult i32 %i.cbb, %i.bxq
  call void @llvm.assume(i1 %i.cbc)
  %i.cbd = zext nneg i32 %i.cbb to i64            ; 6 uses
  %i.cbe = getelementptr inbounds nuw [2 x i8], ptr %i.bxv, i64 %i.cbd
  %i.cbf = load i16, ptr %i.cbe, align 2, !tbaa !92
  call void @llvm.assume(i1 %i.cag)
  store i16 %i.cbf, ptr %i.cah, align 2, !tbaa !92
  %i.cbg = extractelement <4 x i32> %i.cav, i64 2 ; 2 uses
  %i.cbh = icmp samesign ult i32 %i.cbg, %i.bxq
  %i.cbi = zext nneg i32 %i.cbg to i64            ; 6 uses
  %i.cbj = getelementptr inbounds nuw [2 x i8], ptr %i.bxv, i64 %i.cbi
  %i.cbk = extractelement <4 x i32> %i.cav, i64 3 ; 2 uses
  %i.cbl = icmp samesign ult i32 %i.cbk, %i.bxq
  %i.cbm = zext nneg i32 %i.cbk to i64            ; 6 uses
  %i.cbn = getelementptr inbounds nuw [2 x i8], ptr %i.bxv, i64 %i.cbm
  %i.cbo = add nuw nsw i64 %i.cad, 4              ; 7 uses
  %i.cbp = icmp samesign ule i64 %i.cbo, %i.bxi
  %i.cbq = getelementptr inbounds nuw [2 x i8], ptr %i.bxp, i64 %i.cbo
  %i.cbr = insertelement <2 x i32> poison, i32 %i.cao, i64 0
  %i.cbs = shufflevector <2 x i32> %i.cbr, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.cbt = add <2 x i32> %i.cbs, <i32 4, i32 10>
  %i.cbu = udiv <2 x i32> %i.cbt, splat (i32 3)
  %i.cbv = and <2 x i32> %i.cbu, splat (i32 1073741822)
  %i.cbw = add nuw nsw <2 x i32> %i.cbv, splat (i32 2) ; 2 uses
  %i.cbx = extractelement <2 x i32> %i.cbw, i64 0 ; 2 uses
  %i.cby = icmp samesign ult i32 %i.cbx, %i.bxq
  call void @llvm.assume(i1 %i.cby)
  %i.cbz = zext nneg i32 %i.cbx to i64            ; 6 uses
  %i.cca = getelementptr inbounds nuw [2 x i8], ptr %i.bxy, i64 %i.cbz
  %i.ccb = load i16, ptr %i.cca, align 2, !tbaa !92
  call void @llvm.assume(i1 %i.caj)
  store i16 %i.ccb, ptr %i.cak, align 2, !tbaa !92
  call void @llvm.assume(i1 %i.cbh)
  %i.ccc = load i16, ptr %i.cbj, align 2, !tbaa !92
  call void @llvm.assume(i1 %i.cam)
  store i16 %i.ccc, ptr %i.can, align 2, !tbaa !92
  call void @llvm.assume(i1 %i.cbl)
  %i.ccd = load i16, ptr %i.cbn, align 2, !tbaa !92
  call void @llvm.assume(i1 %i.cbp)
  store i16 %i.ccd, ptr %i.cbq, align 2, !tbaa !92
  %i.cce = extractelement <2 x i32> %i.cbw, i64 1 ; 2 uses
  %i.ccf = icmp samesign ult i32 %i.cce, %i.bxq
  call void @llvm.assume(i1 %i.ccf)
  %i.ccg = zext nneg i32 %i.cce to i64            ; 6 uses
  %i.cch = getelementptr inbounds nuw [2 x i8], ptr %i.byb, i64 %i.ccg
  %i.cci = load i16, ptr %i.cch, align 2, !tbaa !92
  %i.ccj = add nuw nsw i64 %i.cad, 5              ; 7 uses
  %i.cck = icmp samesign ule i64 %i.ccj, %i.bxi
  call void @llvm.assume(i1 %i.cck)
  %i.ccl = getelementptr inbounds nuw [2 x i8], ptr %i.bxp, i64 %i.ccj
  store i16 %i.cci, ptr %i.ccl, align 2, !tbaa !92
  %i.ccm = getelementptr inbounds nuw [2 x i8], ptr %i.byh, i64 %i.cay
  %i.ccn = load i16, ptr %i.ccm, align 2, !tbaa !92
  %i.cco = getelementptr inbounds nuw [2 x i8], ptr %i.bye, i64 %i.cad
  store i16 %i.ccn, ptr %i.cco, align 2, !tbaa !92
  %i.ccp = getelementptr inbounds nuw [2 x i8], ptr %i.byh, i64 %i.cbd
  %i.ccq = load i16, ptr %i.ccp, align 2, !tbaa !92
  %i.ccr = getelementptr inbounds nuw [2 x i8], ptr %i.bye, i64 %i.caf
  store i16 %i.ccq, ptr %i.ccr, align 2, !tbaa !92
  %i.ccs = getelementptr inbounds nuw [2 x i8], ptr %i.byb, i64 %i.cbz
  %i.cct = load i16, ptr %i.ccs, align 2, !tbaa !92
  %i.ccu = getelementptr inbounds nuw [2 x i8], ptr %i.bye, i64 %i.cai
  store i16 %i.cct, ptr %i.ccu, align 2, !tbaa !92
  %i.ccv = getelementptr inbounds nuw [2 x i8], ptr %i.byh, i64 %i.cbi
  %i.ccw = load i16, ptr %i.ccv, align 2, !tbaa !92
  %i.ccx = getelementptr inbounds nuw [2 x i8], ptr %i.bye, i64 %i.cal
  store i16 %i.ccw, ptr %i.ccx, align 2, !tbaa !92
  %i.ccy = getelementptr inbounds nuw [2 x i8], ptr %i.byh, i64 %i.cbm
  %i.ccz = load i16, ptr %i.ccy, align 2, !tbaa !92
  %i.cda = getelementptr inbounds nuw [2 x i8], ptr %i.bye, i64 %i.cbo
  store i16 %i.ccz, ptr %i.cda, align 2, !tbaa !92
  %i.cdb = getelementptr inbounds nuw [2 x i8], ptr %i.bxy, i64 %i.ccg
  %i.cdc = load i16, ptr %i.cdb, align 2, !tbaa !92
  %i.cdd = getelementptr inbounds nuw [2 x i8], ptr %i.bye, i64 %i.ccj
  store i16 %i.cdc, ptr %i.cdd, align 2, !tbaa !92
  %i.cde = getelementptr inbounds nuw [2 x i8], ptr %i.byo, i64 %i.cay
  %i.cdf = load i16, ptr %i.cde, align 2, !tbaa !92
  %i.cdg = getelementptr inbounds nuw [2 x i8], ptr %i.byl, i64 %i.cad
  store i16 %i.cdf, ptr %i.cdg, align 2, !tbaa !92
  %i.cdh = getelementptr inbounds nuw [2 x i8], ptr %i.byr, i64 %i.cbd
  %i.cdi = load i16, ptr %i.cdh, align 2, !tbaa !92
  %i.cdj = getelementptr inbounds nuw [2 x i8], ptr %i.byl, i64 %i.caf
  store i16 %i.cdi, ptr %i.cdj, align 2, !tbaa !92
  %i.cdk = getelementptr inbounds nuw [2 x i8], ptr %i.byu, i64 %i.cbz
  %i.cdl = load i16, ptr %i.cdk, align 2, !tbaa !92
  %i.cdm = getelementptr inbounds nuw [2 x i8], ptr %i.byl, i64 %i.cai
  store i16 %i.cdl, ptr %i.cdm, align 2, !tbaa !92
  %i.cdn = getelementptr inbounds nuw [2 x i8], ptr %i.byr, i64 %i.cbi
  %i.cdo = load i16, ptr %i.cdn, align 2, !tbaa !92
  %i.cdp = getelementptr inbounds nuw [2 x i8], ptr %i.byl, i64 %i.cal
  store i16 %i.cdo, ptr %i.cdp, align 2, !tbaa !92
end_hunk_1
