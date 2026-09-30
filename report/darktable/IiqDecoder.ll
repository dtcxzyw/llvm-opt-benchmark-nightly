Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/IiqDecoder?download=true
inline.NumInlined: 1447
inline.NumDeleted: 765
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN8rawspeed10IiqDecoder20checkSupportInternalEPKNS_14CameraMetaDataE:._crit_edge.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 384
  %i.z = invoke noundef ptr @_ZNK8rawspeed14CameraMetaData9getCameraERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.y)
          to label %bb.a unwind label %bb.e       ; 3 uses

bb.a:                                             ; preds = %_ZN8rawspeed6TiffIDD2Ev.exit
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.aa = load ptr, ptr %4, align 8, !tbaa !19
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !19
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.14, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10IiqDecoder20checkSupportInternalEPKNS_14CameraMetaDataE, ptr noundef %i.aa, ptr noundef %i.ab) #18
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %3, align 8, !tbaa !19    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.c
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.d
  %i.af = load i64, ptr %i.c, align 8, !tbaa !20
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @_ZN8rawspeed6TiffIDD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.h

bb.e:                                             ; preds = %bb.f, %bb.b, %_ZN8rawspeed6TiffIDD2Ev.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rawspeed6TiffIDD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 272
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !68  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.al = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %bb.g unwind label %bb.e       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 296
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !24
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !24
  %i.ap = load ptr, ptr %i.v, align 8, !tbaa !19  ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i19: ; preds = %bb.g
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !20
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i20: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i19
  %i.au = load ptr, ptr %4, align 8, !tbaa !19    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZN8rawspeed6TiffIDD2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i20
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !20
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #26
  br label %_ZN8rawspeed6TiffIDD2Ev.exit24

_ZN8rawspeed6TiffIDD2Ev.exit24:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void

bb.h:                                             ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %.pn10 = phi { ptr, i32 } [ %i.ah, %bb.e ], [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ]
  resume { ptr, i32 } %.pn10
}

declare noundef ptr @_ZNK8rawspeed14CameraMetaData9getCameraERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed10IiqDecoder22decodeMetaDataInternalEPKNS_14CameraMetaDataE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %2 = alloca %"struct.rawspeed::TiffID", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !185
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !18
  store i8 0, ptr %i.a, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !184
  invoke void @_ZNK8rawspeed11TiffRootIFD5getIDEv(ptr dead_on_unwind nonnull writable sret(%"struct.rawspeed::TiffID") align 8 %2, ptr noundef nonnull align 8 dereferenceable(120) %i.d)
          to label %.noexc8 unwind label %bb.c

.noexc8:                                          ; preds = %._crit_edge.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !74
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 0)
          to label %_ZN8rawspeed19AbstractTiffDecoder11setMetaDataEPKNS_14CameraMetaDataERKNS_6TiffIDERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i unwind label %bb.a, !inline_history !349

_ZN8rawspeed19AbstractTiffDecoder11setMetaDataEPKNS_14CameraMetaDataERKNS_6TiffIDERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i: ; preds = %.noexc8
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN8rawspeed19AbstractTiffDecoder11setMetaDataEPKNS_14CameraMetaDataERKNS_6TiffIDERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !20
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZN8rawspeed19AbstractTiffDecoder11setMetaDataEPKNS_14CameraMetaDataERKNS_6TiffIDERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.n = load ptr, ptr %2, align 8, !tbaa !19     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !20
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2.i.i

bb.a:                                             ; preds = %.noexc8
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rawspeed6TiffIDD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.t = load ptr, ptr %3, align 8, !tbaa !19     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.a
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2.i.i
  %i.v = load i64, ptr %i.a, align 8, !tbaa !20
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.y = load i32, ptr %i.x, align 8, !tbaa !67   ; 2 uses
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !68
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  store i32 %i.y, ptr %i.ab, align 8, !tbaa !350
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.a, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.ac, %bb.c ], [ %i.s, %bb.a ]
  %i.ad = load ptr, ptr %3, align 8, !tbaa !19    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.a
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %.body
  %i.af = load i64, ptr %i.a, align 8, !tbaa !20
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %eh.lpad-body

bb.d:                                             ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK8rawspeed10IiqDecoder16correctBadColumnEt(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, i16 noundef zeroext %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::array.154", align 2   ; 7 uses
  %3 = alloca %"struct.std::array", align 4       ; 7 uses
  %i.a = zext i16 %1 to i32                       ; 6 uses
  %i.b = icmp ult i16 %1, 2
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nuw nsw i32 %i.a, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !68   ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !151
  %.not = icmp slt i32 %i.c, %i.g
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 568
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !153, !noalias !354 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 592
  %i.k = load i32, ptr %i.j, align 8, !tbaa !154, !noalias !354
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 608
  %i.m = load i32, ptr %i.l, align 8, !tbaa !155, !noalias !354
  %i.n = mul nsw i32 %i.m, %i.k                   ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.p = load i32, ptr %i.o, align 8, !tbaa !157, !noalias !354
  %i.q = ashr i32 %i.p, 1                         ; 4 uses
  %i.r = icmp ne i32 %i.q, 0
  tail call void @llvm.assume(i1 %i.r)
  %i.s = icmp sge i32 %i.q, %i.n
  tail call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !158
  %i.v = icmp sgt i32 %i.u, 4
  br i1 %i.v, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 612
  %i.x = load i32, ptr %i.w, align 4, !tbaa !156, !noalias !354 ; 2 uses
  %i.y = add nsw i32 %i.a, -2                     ; 2 uses
  %i.z = icmp samesign ult i32 %i.y, %i.n
  %i.aa = zext nneg i32 %i.y to i64               ; 3 uses
  %i.ab = icmp samesign ult i32 %i.c, %i.n
  %i.ac = zext nneg i32 %i.c to i64               ; 3 uses
  %i.ad = icmp samesign uge i32 %i.n, %i.a        ; 2 uses
  %i.ae = zext i16 %1 to i64                      ; 2 uses
  %i.af = add nsw i32 %i.a, -1
  %i.ag = zext nneg i32 %i.af to i64              ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ai = add nuw nsw i32 %i.a, 1                 ; 2 uses
  %i.aj = icmp samesign ult i32 %i.ai, %i.n
  %i.ak = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 6
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.ae
  %i.an = zext nneg i32 %i.q to i64               ; 4 uses
  %i.ao = zext nneg i32 %i.x to i64               ; 2 uses
  %i.ap = zext nneg i32 %i.q to i64               ; 2 uses
  %i.aq = zext nneg i32 %i.x to i64               ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 2, %.lr.ph ], [ %indvars.iv.next.pre-phi, %bb.g ] ; 8 uses
  %i.ar = phi ptr [ %i.e, %.lr.ph ], [ %i.dn, %bb.g ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  %i.at = trunc nuw nsw i64 %indvars.iv to i32
  %i.au = tail call noundef zeroext i8 @_ZNK8rawspeed16ColorFilterArray10getColorAtEii(ptr noundef nonnull align 8 dereferenceable(32) %i.as, i32 noundef %i.a, i32 noundef %i.at)
  %i.av = icmp eq i8 %i.au, 1
  br i1 %i.av, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.aw = add nsw i64 %indvars.iv, -1             ; 2 uses
  tail call void @llvm.assume(i1 %i.ad)
  %i.ax = icmp samesign ult i64 %i.aw, %i.ao
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = mul nuw nsw i64 %i.aw, %i.ap
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.ag
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !160 ; 2 uses
  store i16 %i.bb, ptr %2, align 2, !tbaa !160
  %6 = zext i16 %i.bb to i32                      ; 2 uses
  %i.bc = add nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %i.bd = icmp samesign ult i64 %i.bc, %i.aq
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = mul nuw nsw i64 %i.bc, %i.an
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %i.ag
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !160 ; 2 uses
  store i16 %i.bh, ptr %i.ah, align 2, !tbaa !160
  %7 = zext i16 %i.bh to i32                      ; 2 uses
  %8 = add nuw nsw i32 %7, %6
  tail call void @llvm.assume(i1 %i.aj)
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.ak
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !160 ; 2 uses
  store i16 %i.bj, ptr %i.al, align 2, !tbaa !160
  %i.bk = zext i16 %i.bj to i32                   ; 2 uses
  %9 = add nuw nsw i32 %8, %i.bk
  %10 = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %i.ak
  %11 = load i16, ptr %10, align 2, !tbaa !160    ; 2 uses
  store i16 %11, ptr %i.am, align 2, !tbaa !160
  %i.bl = zext i16 %11 to i32                     ; 2 uses
  %i.bm = add nuw nsw i32 %9, %i.bl               ; 5 uses
  %12 = shl nuw nsw i32 %6, 2
  %13 = sub nsw i32 %12, %i.bm
  %14 = tail call i32 @llvm.abs.i32(i32 %13, i1 true) ; 2 uses
  store i32 %14, ptr %3, align 4, !tbaa !24
  %15 = shl nuw nsw i32 %7, 2
  %16 = sub nsw i32 %15, %i.bm
  %17 = tail call i32 @llvm.abs.i32(i32 %16, i1 true) ; 2 uses
  store i32 %17, ptr %4, align 4, !tbaa !24
  %18 = icmp samesign ult i32 %14, %17            ; 2 uses
  %spec.select.1 = zext i1 %18 to i32
  %19 = shl nuw nsw i32 %i.bk, 2
  %20 = sub nsw i32 %19, %i.bm
  %21 = tail call i32 @llvm.abs.i32(i32 %20, i1 true) ; 2 uses
  store i32 %21, ptr %5, align 4, !tbaa !24
  %.sroa.sel.idx = select i1 %18, i64 4, i64 0
  %.sroa.sel = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.sel.idx
  %22 = load i32, ptr %.sroa.sel, align 4, !tbaa !24
  %23 = icmp slt i32 %22, %21
  %spec.select.2 = select i1 %23, i32 2, i32 %spec.select.1 ; 2 uses
  %24 = shl nuw nsw i32 %i.bl, 2
  %25 = sub nsw i32 %24, %i.bm
  %26 = tail call i32 @llvm.abs.i32(i32 %25, i1 true)
  %i.bn = zext nneg i32 %spec.select.2 to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !24
  %i.bq = icmp slt i32 %i.bp, %26
  %spec.select.3 = select i1 %i.bq, i32 3, i32 %spec.select.2
  %i.br = zext nneg i32 %spec.select.3 to i64
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.br
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !160
  %i.bu = zext i16 %i.bt to i32
  %i.bv = add nuw nsw i32 %i.bm, 1
  %i.bw = sub nsw i32 %i.bv, %i.bu
  %i.bx = sdiv i32 %i.bw, 3
  %i.by = trunc i32 %i.bx to i16
  %i.bz = mul nuw nsw i64 %indvars.iv, %i.an
  %gep = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %i.bz
  store i16 %i.by, ptr %gep, align 2, !tbaa !160
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ca = add nuw nsw i64 %indvars.iv, 2          ; 2 uses
  tail call void @llvm.assume(i1 %i.z)
  %i.cb = icmp samesign ult i64 %i.ca, %i.aq
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = mul nuw nsw i64 %i.ca, %i.an
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.cc ; 2 uses
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.cd, i64 %i.aa
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !160
  %i.cg = zext i16 %i.cf to i32
  %i.ch = add nsw i64 %indvars.iv, -2             ; 2 uses
  %i.ci = icmp samesign ult i64 %i.ch, %i.ao
  tail call void @llvm.assume(i1 %i.ci)
  %i.cj = mul nuw nsw i64 %i.ch, %i.ap
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.cj ; 2 uses
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.ck, i64 %i.aa
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !160
  %i.cn = zext i16 %i.cm to i32
  %i.co = add nuw nsw i32 %i.cn, %i.cg
  tail call void @llvm.assume(i1 %i.ab)
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.cd, i64 %i.ac
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !160
  %i.cr = zext i16 %i.cq to i32
  %i.cs = add nuw nsw i32 %i.co, %i.cr
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.ck, i64 %i.ac
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !160
  %i.cv = zext i16 %i.cu to i32
  %i.cw = add nuw nsw i32 %i.cs, %i.cv
  %i.cx = mul nuw nsw i64 %indvars.iv, %i.an
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.cx ; 3 uses
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.cy, i64 %i.aa
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !160
  %i.db = zext i16 %i.da to i32
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.cy, i64 %i.ac
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !160
  %i.de = zext i16 %i.dd to i32
  %i.df = add nuw nsw i32 %i.de, %i.db
  %i.dg = uitofp nneg i32 %i.cw to double
  %i.dh = uitofp nneg i32 %i.df to double
  %i.di = fmul nnan double %i.dh, f0x3FD6A09E7098EF50
  %i.dj = tail call double @llvm.fmuladd.f64(double %i.dg, double 7.322330e-02, double %i.di)
  %i.dk = tail call i64 @lround(double noundef %i.dj) #25
  %i.dl = trunc i64 %i.dk to i16
  tail call void @llvm.assume(i1 %i.ad)
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.cy, i64 %i.ae
  store i16 %i.dl, ptr %i.dm, align 2, !tbaa !160
  %.pre = add nuw nsw i64 %indvars.iv, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %indvars.iv.next.pre-phi = phi i64 [ %i.bc, %bb.e ], [ %.pre, %bb.f ] ; 2 uses
  %i.dn = load ptr, ptr %i.d, align 8, !tbaa !68  ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 44
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !158
  %i.dq = add nsw i32 %i.dp, -2
  %i.dr = sext i32 %i.dq to i64
  %i.ds = icmp slt i64 %indvars.iv.next.pre-phi, %i.dr
  br i1 %i.ds, label %bb.d, label %.loopexit, !llvm.loop !353

.loopexit:                                        ; preds = %bb.g, %bb.c, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK8rawspeed10IiqDecoder14handleBadPixelEtt(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, i16 noundef zeroext %1, i16 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt6vectorIjSaIjEE6insertEN9__gnu_cxx17__normal_iteratorIPKjS1_EEOj.exit:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !68   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.g = zext i16 %2 to i32
  %i.h = shl nuw i32 %i.g, 16
  %i.i = zext i16 %1 to i32
  %i.j = or disjoint i32 %i.h, %i.i
  store i32 %i.j, ptr %i.a, align 4, !tbaa !24
  %i.k = call ptr @_ZNSt6vectorIjSaIjEE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKjS1_EEOj(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nounwind
declare i64 @lround(double noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed19AbstractTiffDecoderD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN8rawspeed19AbstractTiffDecoderE, i64 16), ptr %0, align 8, !tbaa !74
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !184  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8rawspeed7TiffIFDE, i64 16), ptr %i.b, align 8, !tbaa !74
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !359
  invoke void @_ZNSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef %i.e)
          to label %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #29
  unreachable

_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !362  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !363  ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i.i, %_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i ], [ %i.i, %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i.i ] ; 2 uses
  %i.l = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !365 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN8rawspeed7TiffIFDEEclEPS1_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN8rawspeed7TiffIFDEEclEPS1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !74
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(104) %i.l) #25, !call_target !370, !inline_history !356
  br label %_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN8rawspeed7TiffIFDEEclEPS1_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.p, %i.k
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !357

_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !362
  br label %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i.i
  %i.q = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.i, %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEED2Ev.exit.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNKSt14default_deleteIN8rawspeed11TiffRootIFDEEclEPS1_.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !371
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #26
  br label %_ZNKSt14default_deleteIN8rawspeed11TiffRootIFDEEclEPS1_.exit.i

_ZNKSt14default_deleteIN8rawspeed11TiffRootIFDEEclEPS1_.exit.i: ; preds = %bb.d, %_ZSt8_DestroyIPSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 120) #26
  br label %_ZNSt10unique_ptrIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN8rawspeed11TiffRootIFDEEclEPS1_.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN8rawspeed10RawDecoderE, i64 16), ptr %0, align 8, !tbaa !74
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !359
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIvESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr noundef %i.y)
          to label %_ZN8rawspeed5HintsD2Ev.exit.i unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EED2Ev.exit
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #29
  unreachable

_ZN8rawspeed5HintsD2Ev.exit.i:                    ; preds = %_ZNSt10unique_ptrIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !69 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i, label %_ZN8rawspeed10RawDecoderD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN8rawspeed5HintsD2Ev.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 4294967297
  %i.ag = trunc i64 %i.ae to i32                  ; 2 uses
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.ad, align 8, !tbaa !71
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 0, ptr %i.ah, align 4, !tbaa !72
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !74
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #25, !call_target !79, !inline_history !358
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !74
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #25, !call_target !81, !inline_history !358
  br label %_ZN8rawspeed10RawDecoderD2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = add nsw i32 %i.ag, -1
  store i32 %i.ap, ptr %i.ad, align 8, !tbaa !24
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.aq = atomicrmw volatile add ptr %i.ad, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.ag, %bb.i ], [ %i.aq, %bb.j ]
  %i.ar = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ar, label %bb.k, label %_ZN8rawspeed10RawDecoderD2Ev.exit, !prof !82

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #25
  br label %_ZN8rawspeed10RawDecoderD2Ev.exit

_ZN8rawspeed10RawDecoderD2Ev.exit:                ; preds = %_ZN8rawspeed5HintsD2Ev.exit.i, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed10IiqDecoderD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN8rawspeed19AbstractTiffDecoderD2Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(112) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 112) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN8rawspeed19AbstractTiffDecoder10getRootIFDEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !184
  ret ptr %i.b
}

declare void @_ZN8rawspeed10RawDecoder11setMetaDataEPKNS_14CameraMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_SB_i(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #2

declare { i64, i64 } @_ZN8rawspeed10RawDecoder14getDefaultCropEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK8rawspeed10IiqDecoder17getDecoderVersionEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret i32 0
}

declare void @_ZNK8rawspeed19AbstractTiffDecoder6anchorEv(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #25 ; 0 uses
  tail call void @_ZSt9terminatev() #29
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN8rawspeed10IiqDecoder9IiqOffsetESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_13computeSripesENS2_6BufferES8_jE3$_0EEEvT_SF_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %.fr.i.i.i58 = freeze i64 %i.c                  ; 3 uses
  %i.d = icmp sgt i64 %.fr.i.i.i58, 128
  br i1 %i.d, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN8rawspeed10IiqDecoder9IiqOffsetESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13computeSripesENS2_6BufferES8_jE3$_0EEEvT_SF_SF_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph172

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN8rawspeed10IiqDecoder9IiqOffsetESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13computeSripesENS2_6BufferES8_jE3$_0EEET_SF_SF_T0_.exit"
  %i.i = icmp eq i64 %i.dj, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph172, !llvm.loop !372

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i.i61.lcssa = phi i64 [ %.fr.i.i.i58, %.lr.ph ], [ %.fr.i.i.i, %bb.b ] ; 2 uses
  %storemerge59.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.015.124.i.i, %bb.b ]
  %i.j = lshr i64 %.fr.i.i.i61.lcssa, 3           ; 2 uses
  %i.k = add nsw i64 %i.j, -2                     ; 2 uses
  %i.l = lshr i64 %i.k, 1                         ; 4 uses
  %i.m = add nsw i64 %i.j, -1
  %i.n = lshr i64 %i.m, 1                         ; 4 uses
  %i.o = and i64 %.fr.i.i.i61.lcssa, 8
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.q = or disjoint i64 %i.k, 1                  ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8rawspeed10IiqDecoder9IiqOffsetESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_13computeSripesENS2_6BufferES8_jE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i"
  %.010.us.i.i.i = phi i64 [ %i.ar, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8rawspeed10IiqDecoder9IiqOffsetESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_13computeSripesENS2_6BufferES8_jE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i" ], [ %i.l, %._crit_edge ] ; 7 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %.010.us.i.i.i
  %.sroa.03.0.copyload.us.i.i.i = load i64, ptr %i.t, align 4, !tbaa !24 ; 2 uses
  %i.u = icmp slt i64 %.010.us.i.i.i, %i.n
  br i1 %i.u, label %.lr.ph.i.us.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8rawspeed10IiqDecoder9IiqOffsetESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_13computeSripesENS2_6BufferES8_jE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i"

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EESE_EEbT_T0_.exit.i.us.i.i.i"
  %.037.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EESE_EEbT_T0_.exit.i.us.i.i.i" ], [ %.010.us.i.i.i, %.split.us.i.i.i ] ; 2 uses
  %i.v = shl i64 %.037.i.us.i.i.i, 1              ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %0, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %0, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !23 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !23 ; 2 uses
  %.not.i.us.i.i.i = icmp eq i32 %i.ab, %i.ad
  br i1 %.not.i.us.i.i.i, label %.split8.us.i.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EESE_EEbT_T0_.exit.i.us.i.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EESE_EEbT_T0_.exit.i.us.i.i.i": ; preds = %.lr.ph.i.us.i.i.i
  %i.ae = icmp ult i32 %i.ab, %i.ad
  %spec.select.i.us.i.i.i = select i1 %i.ae, i64 %i.y, i64 %i.w ; 4 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us.i.i.i
  %i.ag = getelementptr inbounds [8 x i8], ptr %0, i64 %.037.i.us.i.i.i
  %i.ah = load i64, ptr %i.af, align 4, !tbaa !24
  store i64 %i.ah, ptr %i.ag, align 4, !tbaa !24
  %i.ai = icmp slt i64 %spec.select.i.us.i.i.i, %i.n
  br i1 %i.ai, label %.lr.ph.i.us.i.i.i, label %._crit_edge.i.us.i.i.i, !llvm.loop !373

._crit_edge.i.us.i.i.i:                           ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EESE_EEbT_T0_.exit.i.us.i.i.i"
  %.sroa.1.0.extract.shift.i.i.us.i.i.i = lshr i64 %.sroa.03.0.copyload.us.i.i.i, 32
  %.sroa.1.0.extract.trunc.i.i.us.i.i.i = trunc nuw i64 %.sroa.1.0.extract.shift.i.i.us.i.i.i to i32 ; 2 uses
  br label %.lr.ph.i.i.us.i.i.i

.lr.ph.i.i.us.i.i.i:                              ; preds = %bb.c, %._crit_edge.i.us.i.i.i
  %.010.i.i.us.i.i.i = phi i64 [ %.0911.i.i.us.i.i.i, %bb.c ], [ %spec.select.i.us.i.i.i, %._crit_edge.i.us.i.i.i ] ; 3 uses
  %.0911.in.i.i.us.i.i.i = add nsw i64 %.010.i.i.us.i.i.i, -1
  %.0911.i.i.us.i.i.i = sdiv i64 %.0911.in.i.i.us.i.i.i, 2 ; 4 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %0, i64 %.0911.i.i.us.i.i.i ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !23 ; 2 uses
  %.not.i.i.us.i.i.i = icmp eq i32 %i.al, %.sroa.1.0.extract.trunc.i.i.us.i.i.i
  br i1 %.not.i.i.us.i.i.i, label %.split10.us.i.i.i, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EES6_EEbT_RT0_.exit.i.i.us.i.i.i"

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EES6_EEbT_RT0_.exit.i.i.us.i.i.i": ; preds = %.lr.ph.i.i.us.i.i.i
  %i.am = icmp ult i32 %i.al, %.sroa.1.0.extract.trunc.i.i.us.i.i.i
  br i1 %i.am, label %bb.c, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8rawspeed10IiqDecoder9IiqOffsetESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_13computeSripesENS2_6BufferES8_jE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i"

bb.c:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EES6_EEbT_RT0_.exit.i.i.us.i.i.i"
  %i.an = getelementptr inbounds [8 x i8], ptr %0, i64 %.010.i.i.us.i.i.i
  %i.ao = load i64, ptr %i.aj, align 4, !tbaa !24
  store i64 %i.ao, ptr %i.an, align 4, !tbaa !24
  %i.ap = icmp sgt i64 %.0911.i.i.us.i.i.i, %.010.us.i.i.i
  br i1 %i.ap, label %.lr.ph.i.i.us.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8rawspeed10IiqDecoder9IiqOffsetESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_13computeSripesENS2_6BufferES8_jE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i", !llvm.loop !374

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8rawspeed10IiqDecoder9IiqOffsetESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_13computeSripesENS2_6BufferES8_jE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i": ; preds = %bb.c, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EES6_EEbT_RT0_.exit.i.i.us.i.i.i", %.split.us.i.i.i
  %.0.lcssa.i.i.us.i.i.i = phi i64 [ %.010.us.i.i.i, %.split.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.c ], [ %.010.i.i.us.i.i.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EES6_EEbT_RT0_.exit.i.i.us.i.i.i" ]
  %i.aq = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.us.i.i.i
  store i64 %.sroa.03.0.copyload.us.i.i.i, ptr %i.aq, align 4, !tbaa !24
  %.not.us.i.i.i = icmp eq i64 %.010.us.i.i.i, 0
  %i.ar = add nsw i64 %.010.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %.lr.ph.i9.i.preheader, label %.split.us.i.i.i, !llvm.loop !375

.split.i.i.i:                                     ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8rawspeed10IiqDecoder9IiqOffsetESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_13computeSripesENS2_6BufferES8_jE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i", %.split.preheader.i.i.i
  %.010.i.i.i = phi i64 [ %i.bt, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8rawspeed10IiqDecoder9IiqOffsetESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_13computeSripesENS2_6BufferES8_jE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i" ], [ %i.l, %.split.preheader.i.i.i ] ; 8 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %0, i64 %.010.i.i.i
  %.sroa.03.0.copyload.i.i.i = load i64, ptr %i.as, align 4, !tbaa !24 ; 2 uses
  %i.at = icmp slt i64 %.010.i.i.i, %i.n
  br i1 %i.at, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EESE_EEbT_T0_.exit.i.i.i.i"
  %.037.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EESE_EEbT_T0_.exit.i.i.i.i" ], [ %.010.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.au = shl i64 %.037.i.i.i.i, 1                ; 2 uses
  %i.av = add i64 %i.au, 2                        ; 2 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %0, i64 %i.av
  %i.ax = or disjoint i64 %i.au, 1                ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !23 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !23 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.ba, %i.bc
  br i1 %.not.i.i.i.i, label %.split8.us.i.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EESE_EEbT_T0_.exit.i.i.i.i"

.split8.us.i.i.i:                                 ; preds = %.lr.ph.i.us.i.i.i, %.lr.ph.i.i.i.i
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN8rawspeed10IiqDecoder13computeSripesENS_6BufferESt6vectorINS0_9IiqOffsetESaIS3_EEjENK3$_0clERKS3_S8_") #18
  unreachable

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EESE_EEbT_T0_.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i
  %i.bd = icmp ult i32 %i.ba, %i.bc
  %spec.select.i.i.i.i = select i1 %i.bd, i64 %i.ax, i64 %i.av ; 4 uses
  %i.be = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.bf = getelementptr inbounds [8 x i8], ptr %0, i64 %.037.i.i.i.i
  %i.bg = load i64, ptr %i.be, align 4, !tbaa !24
  store i64 %i.bg, ptr %i.bf, align 4, !tbaa !24
  %i.bh = icmp slt i64 %spec.select.i.i.i.i, %i.n
  br i1 %i.bh, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !373

._crit_edge.i.i.i.i:                              ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EESE_EEbT_T0_.exit.i.i.i.i", %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.010.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EESE_EEbT_T0_.exit.i.i.i.i" ] ; 2 uses
  %i.bi = icmp eq i64 %.0.lcssa.i.i.i.i, %i.l
  br i1 %i.bi, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bj = load i64, ptr %i.r, align 4, !tbaa !24
  store i64 %i.bj, ptr %i.s, align 4, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.q, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %.sroa.1.0.extract.shift.i.i.i.i.i = lshr i64 %.sroa.03.0.copyload.i.i.i, 32
  %.sroa.1.0.extract.trunc.i.i.i.i.i = trunc nuw i64 %.sroa.1.0.extract.shift.i.i.i.i.i to i32 ; 2 uses
  %i.bk = icmp sgt i64 %.1.i.i.i.i, %.010.i.i.i
  br i1 %i.bk, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8rawspeed10IiqDecoder9IiqOffsetESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_13computeSripesENS2_6BufferES8_jE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.010.i.i.i.i.i = phi i64 [ %.0911.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %0, i64 %.0911.i.i.i.i.i ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !23 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.bn, %.sroa.1.0.extract.trunc.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %.split10.us.i.i.i, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EES6_EEbT_RT0_.exit.i.i.i.i.i"

.split10.us.i.i.i:                                ; preds = %.lr.ph.i.i.us.i.i.i, %.lr.ph.i.i.i.i.i
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN8rawspeed10IiqDecoder13computeSripesENS_6BufferESt6vectorINS0_9IiqOffsetESaIS3_EEjENK3$_0clERKS3_S8_") #18
  unreachable

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EES6_EEbT_RT0_.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i
  %i.bo = icmp ult i32 %i.bn, %.sroa.1.0.extract.trunc.i.i.i.i.i
  br i1 %i.bo, label %bb.f, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8rawspeed10IiqDecoder9IiqOffsetESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_13computeSripesENS2_6BufferES8_jE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i"

bb.f:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EES6_EEbT_RT0_.exit.i.i.i.i.i"
  %i.bp = getelementptr inbounds [8 x i8], ptr %0, i64 %.010.i.i.i.i.i
  %i.bq = load i64, ptr %i.bl, align 4, !tbaa !24
  store i64 %i.bq, ptr %i.bp, align 4, !tbaa !24
  %i.br = icmp sgt i64 %.0911.i.i.i.i.i, %.010.i.i.i
  br i1 %i.br, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8rawspeed10IiqDecoder9IiqOffsetESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_13computeSripesENS2_6BufferES8_jE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i", !llvm.loop !374

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8rawspeed10IiqDecoder9IiqOffsetESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_13computeSripesENS2_6BufferES8_jE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i": ; preds = %bb.f, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EES6_EEbT_RT0_.exit.i.i.i.i.i", %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.010.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EES6_EEbT_RT0_.exit.i.i.i.i.i" ], [ %.0911.i.i.i.i.i, %bb.f ]
  %i.bs = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i64 %.sroa.03.0.copyload.i.i.i, ptr %i.bs, align 4, !tbaa !24
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.bt = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i9.i.preheader, label %.split.i.i.i, !llvm.loop !375

.lr.ph.i9.i.preheader:                            ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8rawspeed10IiqDecoder9IiqOffsetESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_13computeSripesENS2_6BufferES8_jE3$_0EEEvT_T0_SG_T1_T2_.exit.us.i.i.i", %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8rawspeed10IiqDecoder9IiqOffsetESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_13computeSripesENS2_6BufferES8_jE3$_0EEEvT_T0_SG_T1_T2_.exit.i.i.i"
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i.preheader, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8rawspeed10IiqDecoder9IiqOffsetESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13computeSripesENS2_6BufferES8_jE3$_0EEEvT_SF_SF_RT0_.exit.i16.i"
  %.sroa.0.03.i.i = phi ptr [ %i.bu, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8rawspeed10IiqDecoder9IiqOffsetESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13computeSripesENS2_6BufferES8_jE3$_0EEEvT_SF_SF_RT0_.exit.i16.i" ], [ %storemerge59.lcssa, %.lr.ph.i9.i.preheader ]
  %i.bu = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %.sroa.03.0.copyload.i.i10.i = load i64, ptr %i.bu, align 4, !tbaa !24 ; 2 uses
  %i.bv = load i64, ptr %0, align 4, !tbaa !24
  store i64 %i.bv, ptr %i.bu, align 4, !tbaa !24
  %i.bw = ptrtoint ptr %i.bu to i64
end_hunk_0
begin_hunk_1_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN8rawspeed10IiqDecoder9IiqOffsetESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_13computeSripesENS2_6BufferES8_jE3$_0EEEvT_SF_T0_T1_":bb.a
  %storemerge59171 = phi ptr [ %.sroa.015.124.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.060170 = phi i64 [ %i.dj, %bb.b ], [ %2, %.lr.ph ]
  %.fr.i.i.i61169 = phi i64 [ %.fr.i.i.i, %bb.b ], [ %.fr.i.i.i58, %.lr.ph ]
  %i.dj = add nsw i64 %.060170, -1                ; 3 uses
  %i.dk = lshr exact i64 %.fr.i.i.i61169, 1
  %.idx.i = and i64 %i.dk, 4611686018427387896
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i ; 7 uses
  %i.dm = getelementptr inbounds i8, ptr %storemerge59171, i64 -8 ; 8 uses
  %i.dn = load i32, ptr %i.f, align 4, !tbaa !23  ; 6 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !23 ; 6 uses
  %.not = icmp eq i32 %i.dn, %i.dp
  br i1 %.not, label %bb.m, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EESE_EEbT_T0_.exit.i.i"

bb.m:                                             ; preds = %.lr.ph172
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN8rawspeed10IiqDecoder13computeSripesENS_6BufferESt6vectorINS0_9IiqOffsetESaIS3_EEjENK3$_0clERKS3_S8_") #18
  unreachable

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EESE_EEbT_T0_.exit.i.i": ; preds = %.lr.ph172
  %i.dq = icmp ult i32 %i.dn, %i.dp
  %i.dr = getelementptr inbounds i8, ptr %storemerge59171, i64 -4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !23 ; 8 uses
  br i1 %i.dq, label %bb.n, label %bb.u

bb.n:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EESE_EEbT_T0_.exit.i.i"
  %i.dt = icmp ne i32 %i.dp, %i.ds
  %.not.i.i26.i.i = icmp eq ptr %i.dl, %i.dm
  %or.cond.i.i27.i.i = or i1 %.not.i.i26.i.i, %i.dt
  br i1 %or.cond.i.i27.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EESE_EEbT_T0_.exit28.i.i", label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN8rawspeed10IiqDecoder13computeSripesENS_6BufferESt6vectorINS0_9IiqOffsetESaIS3_EEjENK3$_0clERKS3_S8_") #18
  unreachable

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EESE_EEbT_T0_.exit28.i.i": ; preds = %bb.n
  %i.du = icmp ult i32 %i.dp, %i.ds
  br i1 %i.du, label %bb.p, label %bb.q

bb.p:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EESE_EEbT_T0_.exit28.i.i"
  %i.dv = load i64, ptr %0, align 4, !tbaa !24
  %i.dw = load i64, ptr %i.dl, align 4, !tbaa !24
  store i64 %i.dw, ptr %0, align 4, !tbaa !24
  store i64 %i.dv, ptr %i.dl, align 4, !tbaa !24
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8rawspeed10IiqDecoder9IiqOffsetESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13computeSripesENS2_6BufferES8_jE3$_0EEEvT_SF_SF_SF_T0_.exit.i"

bb.q:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EESE_EEbT_T0_.exit28.i.i"
  %i.dx = icmp ne i32 %i.dn, %i.ds
  %.not.i.i29.i.i = icmp eq ptr %i.e, %i.dm
  %or.cond.i.i30.i.i = or i1 %.not.i.i29.i.i, %i.dx
  br i1 %or.cond.i.i30.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EESE_EEbT_T0_.exit31.i.i", label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN8rawspeed10IiqDecoder13computeSripesENS_6BufferESt6vectorINS0_9IiqOffsetESaIS3_EEjENK3$_0clERKS3_S8_") #18
  unreachable

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EESE_EEbT_T0_.exit31.i.i": ; preds = %bb.q
  %i.dy = icmp ult i32 %i.dn, %i.ds
  %i.dz = load i64, ptr %0, align 4, !tbaa !24    ; 2 uses
  br i1 %i.dy, label %bb.s, label %bb.t

bb.s:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EESE_EEbT_T0_.exit31.i.i"
  %i.ea = load i64, ptr %i.dm, align 4, !tbaa !24
  store i64 %i.ea, ptr %0, align 4, !tbaa !24
  store i64 %i.dz, ptr %i.dm, align 4, !tbaa !24
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8rawspeed10IiqDecoder9IiqOffsetESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13computeSripesENS2_6BufferES8_jE3$_0EEEvT_SF_SF_SF_T0_.exit.i"

bb.t:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EESE_EEbT_T0_.exit31.i.i"
  %i.eb = load i64, ptr %i.e, align 4, !tbaa !24
  store i64 %i.eb, ptr %0, align 4, !tbaa !24
  store i64 %i.dz, ptr %i.e, align 4, !tbaa !24
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8rawspeed10IiqDecoder9IiqOffsetESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13computeSripesENS2_6BufferES8_jE3$_0EEEvT_SF_SF_SF_T0_.exit.i"

bb.u:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EESE_EEbT_T0_.exit.i.i"
  %i.ec = icmp ne i32 %i.dn, %i.ds
  %.not.i.i32.i.i = icmp eq ptr %i.e, %i.dm
  %or.cond.i.i33.i.i = or i1 %.not.i.i32.i.i, %i.ec
  br i1 %or.cond.i.i33.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EESE_EEbT_T0_.exit34.i.i", label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN8rawspeed10IiqDecoder13computeSripesENS_6BufferESt6vectorINS0_9IiqOffsetESaIS3_EEjENK3$_0clERKS3_S8_") #18
  unreachable

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EESE_EEbT_T0_.exit34.i.i": ; preds = %bb.u
  %i.ed = icmp ult i32 %i.dn, %i.ds
  br i1 %i.ed, label %bb.w, label %bb.x

bb.w:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EESE_EEbT_T0_.exit34.i.i"
  %i.ee = load <2 x i64>, ptr %0, align 4, !tbaa !24
  %i.ef = shufflevector <2 x i64> %i.ee, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.ef, ptr %0, align 4, !tbaa !24
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8rawspeed10IiqDecoder9IiqOffsetESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13computeSripesENS2_6BufferES8_jE3$_0EEEvT_SF_SF_SF_T0_.exit.i"

bb.x:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EESE_EEbT_T0_.exit34.i.i"
  %i.eg = icmp ne i32 %i.dp, %i.ds
  %.not.i.i35.i.i = icmp eq ptr %i.dl, %i.dm
  %or.cond.i.i36.i.i = or i1 %.not.i.i35.i.i, %i.eg
  br i1 %or.cond.i.i36.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EESE_EEbT_T0_.exit37.i.i", label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN8rawspeed10IiqDecoder13computeSripesENS_6BufferESt6vectorINS0_9IiqOffsetESaIS3_EEjENK3$_0clERKS3_S8_") #18
  unreachable

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EESE_EEbT_T0_.exit37.i.i": ; preds = %bb.x
  %i.eh = icmp ult i32 %i.dp, %i.ds
  %i.ei = load i64, ptr %0, align 4, !tbaa !24    ; 2 uses
  br i1 %i.eh, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EESE_EEbT_T0_.exit37.i.i"
  %i.ej = load i64, ptr %i.dm, align 4, !tbaa !24
  store i64 %i.ej, ptr %0, align 4, !tbaa !24
  store i64 %i.ei, ptr %i.dm, align 4, !tbaa !24
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8rawspeed10IiqDecoder9IiqOffsetESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13computeSripesENS2_6BufferES8_jE3$_0EEEvT_SF_SF_SF_T0_.exit.i"

bb.aa:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EESE_EEbT_T0_.exit37.i.i"
  %i.ek = load i64, ptr %i.dl, align 4, !tbaa !24
  store i64 %i.ek, ptr %0, align 4, !tbaa !24
  store i64 %i.ei, ptr %i.dl, align 4, !tbaa !24
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8rawspeed10IiqDecoder9IiqOffsetESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13computeSripesENS2_6BufferES8_jE3$_0EEEvT_SF_SF_SF_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8rawspeed10IiqDecoder9IiqOffsetESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13computeSripesENS2_6BufferES8_jE3$_0EEEvT_SF_SF_SF_T0_.exit.i": ; preds = %bb.aa, %bb.z, %bb.w, %bb.t, %bb.s, %bb.p
  %i.el = load i32, ptr %i.g, align 4, !tbaa !23  ; 2 uses
  %i.em = load i32, ptr %i.f, align 4, !tbaa !23  ; 2 uses
  %.not.i = icmp eq i32 %i.em, %i.el
  br i1 %.not.i, label %._crit_edge.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EESE_EEbT_T0_.exit.lr.ph.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EESE_EEbT_T0_.exit.lr.ph.i.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8rawspeed10IiqDecoder9IiqOffsetESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13computeSripesENS2_6BufferES8_jE3$_0EEEvT_SF_SF_SF_T0_.exit.i", %bb.ae
  %i.en = phi i32 [ %i.fe, %bb.ae ], [ %i.em, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8rawspeed10IiqDecoder9IiqOffsetESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13computeSripesENS2_6BufferES8_jE3$_0EEEvT_SF_SF_SF_T0_.exit.i" ]
  %i.eo = phi i32 [ %i.fc, %bb.ae ], [ %i.el, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8rawspeed10IiqDecoder9IiqOffsetESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13computeSripesENS2_6BufferES8_jE3$_0EEEvT_SF_SF_SF_T0_.exit.i" ] ; 4 uses
  %.sroa.0.029.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.ae ], [ %storemerge59171, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8rawspeed10IiqDecoder9IiqOffsetESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13computeSripesENS2_6BufferES8_jE3$_0EEEvT_SF_SF_SF_T0_.exit.i" ]
  %.sroa.015.028.i.i = phi ptr [ %i.fb, %bb.ae ], [ %i.e, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8rawspeed10IiqDecoder9IiqOffsetESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13computeSripesENS2_6BufferES8_jE3$_0EEEvT_SF_SF_SF_T0_.exit.i" ]
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EESE_EEbT_T0_.exit.i13.i"

._crit_edge.i.i:                                  ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8rawspeed10IiqDecoder9IiqOffsetESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13computeSripesENS2_6BufferES8_jE3$_0EEEvT_SF_SF_SF_T0_.exit.i", %bb.ae, %bb.ab
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN8rawspeed10IiqDecoder13computeSripesENS_6BufferESt6vectorINS0_9IiqOffsetESaIS3_EEjENK3$_0clERKS3_S8_") #18
  unreachable

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EESE_EEbT_T0_.exit.i13.i": ; preds = %bb.ab, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EESE_EEbT_T0_.exit.lr.ph.i.i"
  %i.ep = phi i32 [ %i.en, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EESE_EEbT_T0_.exit.lr.ph.i.i" ], [ %i.et, %bb.ab ]
  %.sroa.015.124.i.i = phi ptr [ %.sroa.015.028.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EESE_EEbT_T0_.exit.lr.ph.i.i" ], [ %i.er, %bb.ab ] ; 11 uses
  %i.eq = icmp ult i32 %i.ep, %i.eo
  br i1 %i.eq, label %bb.ab, label %.preheader.i.i

bb.ab:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EESE_EEbT_T0_.exit.i13.i"
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.015.124.i.i, i64 8 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.015.124.i.i, i64 12
  %i.et = load i32, ptr %i.es, align 4, !tbaa !23 ; 2 uses
  %i.eu = icmp ne i32 %i.et, %i.eo
  %.not.i.i.i14.i = icmp eq ptr %i.er, %0
  %or.cond.i.i.i15.i = or i1 %.not.i.i.i14.i, %i.eu
  br i1 %or.cond.i.i.i15.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EESE_EEbT_T0_.exit.i13.i", label %._crit_edge.i.i, !llvm.loop !377

.preheader.i.i:                                   ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EESE_EEbT_T0_.exit.i13.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EESE_EEbT_T0_.exit12.i.i"
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EESE_EEbT_T0_.exit12.i.i" ], [ %.sroa.0.029.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EESE_EEbT_T0_.exit.i13.i" ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 6 uses
  %i.ev = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -4
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !23 ; 2 uses
  %i.ex = icmp ne i32 %i.eo, %i.ew
  %.not.i.i10.i.i = icmp eq ptr %0, %.sroa.0.1.i.i
  %or.cond.i.i11.i.i = or i1 %.not.i.i10.i.i, %i.ex
  br i1 %or.cond.i.i11.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EESE_EEbT_T0_.exit12.i.i", label %bb.ac

bb.ac:                                            ; preds = %.preheader.i.i
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN8rawspeed10IiqDecoder13computeSripesENS_6BufferESt6vectorINS0_9IiqOffsetESaIS3_EEjENK3$_0clERKS3_S8_") #18
  unreachable

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EESE_EEbT_T0_.exit12.i.i": ; preds = %.preheader.i.i
  %i.ey = icmp ult i32 %i.eo, %i.ew
  br i1 %i.ey, label %.preheader.i.i, label %bb.ad, !llvm.loop !378

bb.ad:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EESE_EEbT_T0_.exit12.i.i"
  %.not.i.i = icmp ult ptr %.sroa.015.124.i.i, %.sroa.0.1.i.i
  br i1 %.not.i.i, label %bb.ae, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN8rawspeed10IiqDecoder9IiqOffsetESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13computeSripesENS2_6BufferES8_jE3$_0EEET_SF_SF_T0_.exit"

bb.ae:                                            ; preds = %bb.ad
  %i.ez = load i64, ptr %.sroa.015.124.i.i, align 4, !tbaa !24
  %i.fa = load i64, ptr %.sroa.0.1.i.i, align 4, !tbaa !24
  store i64 %i.fa, ptr %.sroa.015.124.i.i, align 4, !tbaa !24
  store i64 %i.ez, ptr %.sroa.0.1.i.i, align 4, !tbaa !24
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.015.124.i.i, i64 8 ; 2 uses
  %i.fc = load i32, ptr %i.g, align 4, !tbaa !23  ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.015.124.i.i, i64 12
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !23 ; 2 uses
  %i.ff = icmp ne i32 %i.fe, %i.fc
  %.not.i.i22.i.i = icmp eq ptr %i.fb, %0
  %or.cond.i.i23.i.i = or i1 %.not.i.i22.i.i, %i.ff
  br i1 %or.cond.i.i23.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8rawspeed10IiqDecoder13computeSripesENS2_6BufferESt6vectorINS3_9IiqOffsetESaIS6_EEjE3$_0EclINS_17__normal_iteratorIPS6_S8_EESE_EEbT_T0_.exit.lr.ph.i.i", label %._crit_edge.i.i, !llvm.loop !379

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN8rawspeed10IiqDecoder9IiqOffsetESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13computeSripesENS2_6BufferES8_jE3$_0EEET_SF_SF_T0_.exit": ; preds = %bb.ad
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN8rawspeed10IiqDecoder9IiqOffsetESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_13computeSripesENS2_6BufferES8_jE3$_0EEEvT_SF_T0_T1_"(ptr %.sroa.015.124.i.i, ptr %storemerge59171, i64 noundef %i.dj)
  %i.fg = ptrtoint ptr %.sroa.015.124.i.i to i64
  %i.fh = sub i64 %i.fg, %i.a
  %.fr.i.i.i = freeze i64 %i.fh                   ; 3 uses
  %i.fi = icmp sgt i64 %.fr.i.i.i, 128
  br i1 %i.fi, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN8rawspeed10IiqDecoder9IiqOffsetESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13computeSripesENS2_6BufferES8_jE3$_0EEEvT_SF_SF_T0_.exit", !llvm.loop !372

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN8rawspeed10IiqDecoder9IiqOffsetESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13computeSripesENS2_6BufferES8_jE3$_0EEEvT_SF_SF_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN8rawspeed10IiqDecoder9IiqOffsetESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13computeSripesENS2_6BufferES8_jE3$_0EEET_SF_SF_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8rawspeed10IiqDecoder9IiqOffsetESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13computeSripesENS2_6BufferES8_jE3$_0EEEvT_SF_SF_RT0_.exit.i16.i", %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef %0, ...) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKczE3buf) ; 3 uses
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 8192, ptr noundef %0, ptr noundef nonnull %1) #25 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.18, ptr noundef nonnull %i.a)
  %i.c = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN8rawspeed11IOExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN8rawspeed11IOExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #15

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #15

declare void @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed11IOExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #17 comdat align 2 {
bb.a:
  tail call void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #30
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed11IOExceptionE, i64 16), ptr %0, align 8, !tbaa !74
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #18

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed17RawspeedExceptionE, i64 16), ptr %0, align 8, !tbaa !74
  invoke void @_ZN8rawspeed17RawspeedException3logEPKc(ptr noundef %1) #30
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #25
  resume { ptr, i32 } %i.a
}

declare void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #2

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed17RawspeedException3logEPKc(ptr noundef %0) local_unnamed_addr #19 comdat align 2 {
bb.a:
  tail call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.18, ptr noundef %0)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #25, !call_target !79, !inline_history !380
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !24   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !24
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !74
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #25, !call_target !81, !inline_history !380
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #8

declare noundef zeroext i1 @_ZN8rawspeed10RawDecoder20checkCameraSupportedEPKNS_14CameraMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_SB_(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !381
  %i.c = load ptr, ptr %1, align 8, !tbaa !382    ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !383
  %i.i = load ptr, ptr %0, align 8, !tbaa !382    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.n = icmp slt i64 %i.f, 0
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE11_M_allocateEm.exit.i, !prof !82

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

_ZNSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 1
  br i1 %i.p, label %bb.e, label %bb.f, !prof !25

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE11_M_allocateEm.exit.i
  %i.q = load i8, ptr %i.c, align 1, !tbaa !385
  store i8 %i.q, ptr %i.o, align 1, !tbaa !385
  br label %_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %bb.e, %bb.f
  %i.r = load ptr, ptr %0, align 8, !tbaa !382    ; 3 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !383
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.v) #26
  br label %_ZNSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, %bb.g
  store ptr %i.o, ptr %0, align 8, !tbaa !382
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.w, ptr %i.g, align 8, !tbaa !383
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed8CFAColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.h:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !381  ; 3 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.k                      ; 5 uses
  %.not24 = icmp ult i64 %i.aa, %i.f
  br i1 %.not24, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = icmp sgt i64 %i.f, 1
  br i1 %i.ab, label %bb.j, label %bb.k, !prof !25

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed8CFAColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.k:                                             ; preds = %bb.i
  %i.ac = icmp eq i64 %i.f, 1
  br i1 %i.ac, label %bb.l, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed8CFAColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.l:                                             ; preds = %bb.k
  %i.ad = load i8, ptr %i.c, align 1, !tbaa !385
  store i8 %i.ad, ptr %i.i, align 1, !tbaa !385
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed8CFAColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.m:                                             ; preds = %bb.h
  %i.ae = icmp sgt i64 %i.aa, 1
  br i1 %i.ae, label %bb.n, label %bb.o, !prof !25

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.aa, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !382
  %.pre25 = load ptr, ptr %i.x, align 8, !tbaa !381 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !382
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !381
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPN8rawspeed8CFAColorES2_ET0_T_S4_S3_.exit

bb.o:                                             ; preds = %bb.m
  %i.af = icmp eq i64 %i.aa, 1
  br i1 %i.af, label %bb.p, label %_ZSt4copyIPN8rawspeed8CFAColorES2_ET0_T_S4_S3_.exit

bb.p:                                             ; preds = %bb.o
  %i.ag = load i8, ptr %i.c, align 1, !tbaa !385
  store i8 %i.ag, ptr %i.i, align 1, !tbaa !385
  br label %_ZSt4copyIPN8rawspeed8CFAColorES2_ET0_T_S4_S3_.exit

_ZSt4copyIPN8rawspeed8CFAColorES2_ET0_T_S4_S3_.exit: ; preds = %bb.n, %bb.o, %bb.p
  %.pre-phi34 = phi i64 [ %.pre33, %bb.n ], [ %i.d, %bb.o ], [ %i.d, %bb.p ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.n ], [ %i.aa, %bb.o ], [ 1, %bb.p ]
  %i.ah = phi ptr [ %.pre25, %bb.n ], [ %i.y, %bb.o ], [ %i.y, %bb.p ] ; 2 uses
  %i.ai = phi ptr [ %.pre, %bb.n ], [ %i.c, %bb.o ], [ %i.c, %bb.p ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.pre-phi32 ; 3 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %.pre-phi34, %i.ak              ; 3 uses
  %i.am = icmp sgt i64 %i.al, 1
  br i1 %i.am, label %bb.q, label %bb.r, !prof !25

bb.q:                                             ; preds = %_ZSt4copyIPN8rawspeed8CFAColorES2_ET0_T_S4_S3_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ah, ptr align 1 %i.aj, i64 %i.al, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed8CFAColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.r:                                             ; preds = %_ZSt4copyIPN8rawspeed8CFAColorES2_ET0_T_S4_S3_.exit
  %i.an = icmp eq i64 %i.al, 1
  br i1 %i.an, label %bb.s, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed8CFAColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.s:                                             ; preds = %bb.r
  %i.ao = load i8, ptr %i.aj, align 1, !tbaa !385
  store i8 %i.ao, ptr %i.ah, align 1, !tbaa !385
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed8CFAColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed8CFAColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %bb.s, %bb.r, %bb.q, %bb.l, %bb.k, %bb.j, %_ZNSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.ap = load ptr, ptr %0, align 8, !tbaa !382
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.f
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !381
  br label %bb.t

bb.t:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN8rawspeed8CFAColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt6vectorIjSaIjEE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKjS1_EEOj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !152    ; 9 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.d = sub i64 %i.b, %i.c                       ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !386  ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !387
  %.not = icmp eq ptr %i.f, %i.h
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq ptr %1, %i.f
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %2, align 4, !tbaa !24
  store i32 %i.j, ptr %i.f, align 4, !tbaa !24
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store ptr %i.k, ptr %i.e, align 8, !tbaa !386
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !24
  store i32 %i.n, ptr %i.f, align 4, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store ptr %i.o, ptr %i.e, align 8, !tbaa !386
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.b                       ; 3 uses
  %i.r = ashr exact i64 %i.q, 2                   ; 2 uses
  %i.s = icmp sgt i64 %i.r, 1
  br i1 %i.s, label %bb.e, label %bb.f, !prof !25

bb.e:                                             ; preds = %bb.d
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.t
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.u, ptr align 4 %i.l, i64 %i.q, i1 false)
  %.pre.pre = load ptr, ptr %0, align 8, !tbaa !388
  br label %_ZNSt6vectorIjSaIjEE13_M_insert_auxIjEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.v = icmp eq i64 %i.q, 4
  br i1 %i.v, label %bb.g, label %_ZNSt6vectorIjSaIjEE13_M_insert_auxIjEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEOT_.exit

bb.g:                                             ; preds = %bb.f
  %i.w = load i32, ptr %i.l, align 4, !tbaa !24
  store i32 %i.w, ptr %i.m, align 4, !tbaa !24
  br label %_ZNSt6vectorIjSaIjEE13_M_insert_auxIjEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEOT_.exit

_ZNSt6vectorIjSaIjEE13_M_insert_auxIjEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEOT_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.pre = phi ptr [ %.pre.pre, %bb.e ], [ %i.a, %bb.f ], [ %i.a, %bb.g ]
  %i.x = load i32, ptr %2, align 4, !tbaa !24
  store i32 %i.x, ptr %i.l, align 4, !tbaa !24
  br label %bb.m

bb.h:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.z = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.aa = sub i64 %i.z, %i.c                      ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775804
  br i1 %i.ab, label %bb.i, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #28
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.h
  %i.ac = ashr exact i64 %i.aa, 2                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add nsw i64 %.sroa.speculated.i.i, %i.ac ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 2305843009213693951)
  %i.ag = select i1 %i.ae, i64 2305843009213693951, i64 %i.af ; 3 uses
  %.not.i.i = icmp ne i64 %i.ag, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.ah = shl nuw nsw i64 %i.ag, 2
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #27 ; 5 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %i.d ; 2 uses
  %i.ak = load i32, ptr %2, align 4, !tbaa !24
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !24
  %i.al = icmp sgt i64 %i.d, 0
  br i1 %i.al, label %bb.j, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

bb.j:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr align 4 %i.a, i64 %i.d, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i: ; preds = %bb.j, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 4 ; 2 uses
  %i.an = sub i64 %i.z, %i.b                      ; 3 uses
  %i.ao = icmp sgt i64 %i.an, 0
  br i1 %i.ao, label %bb.k, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i

bb.k:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.am, ptr align 4 %i.y, i64 %i.an, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i: ; preds = %bb.k, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  %.not.i17.i = icmp eq ptr %i.a, null
  br i1 %.not.i17.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i
  %i.ap = load ptr, ptr %i.g, align 8, !tbaa !387
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.ar) #26
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit: ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i, %bb.l
  %i.as = getelementptr inbounds i8, ptr %i.am, i64 %i.an
  store ptr %i.ai, ptr %0, align 8, !tbaa !388
  store ptr %i.as, ptr %i.e, align 8, !tbaa !386
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ag
  store ptr %i.at, ptr %i.g, align 8, !tbaa !387
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %_ZNSt6vectorIjSaIjEE13_M_insert_auxIjEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEOT_.exit, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit
  %i.au = phi ptr [ %i.a, %bb.c ], [ %.pre, %_ZNSt6vectorIjSaIjEE13_M_insert_auxIjEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEOT_.exit ], [ %i.ai, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit ]
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.d
  ret ptr %i.av
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit ], [ %1, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !187
  tail call void @_ZNSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !188  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !393  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit, label %_ZNKSt14default_deleteIN8rawspeed9TiffEntryEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN8rawspeed9TiffEntryEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !74
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(48) %i.f) #25, !call_target !398, !inline_history !390
  br label %_ZNSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit

_ZNSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit: ; preds = %.lr.ph, %_ZNKSt14default_deleteIN8rawspeed9TiffEntryEEclEPS1_.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #26
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !391

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIvESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIvESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIvESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit ], [ %1, %bb.a ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !187
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIvESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !188  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.07, i64 80 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph
  %i.j = load i64, ptr %i.h, align 8, !tbaa !20
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIvESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !20
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #26
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIvESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIvESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 96) #26
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !399

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIvESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #17 comdat align 2 {
bb.a:
  tail call void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #30
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed19RawDecoderExceptionE, i64 16), ptr %0, align 8, !tbaa !74
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed6SplineItE7prepareEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !174  ; 3 uses
  %i.c = sext i32 %i.b to i64                     ; 3 uses
  %i.d = icmp slt i32 %i.b, 0
  br i1 %i.d, label %.noexc, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #28
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit71, label %.noexc62

.noexc62:                                         ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.e = shl nuw nsw i64 %i.c, 3
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #27 ; 7 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.c ; 4 uses
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !178
  %i.h = add nsw i64 %i.c, -1                     ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc62
  %i.j = getelementptr i8, ptr %i.f, i64 8
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.h, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !178
  br label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit

_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc62
  %.pr = load i32, ptr %i.a, align 4, !tbaa !174  ; 3 uses
  %i.k = zext nneg i32 %.pr to i64                ; 3 uses
  %i.l = icmp slt i32 %.pr, 0
  br i1 %i.l, label %bb.b, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i63

bb.b:                                             ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #28
          to label %.noexc69 unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit99.thread

.noexc69:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i63: ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  %.not.i.i.i.i64 = icmp eq i32 %.pr, 0
  br i1 %.not.i.i.i.i64, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit71, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i63
  %i.m = shl nuw nsw i64 %i.k, 3
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #27
          to label %.noexc70 unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit99.thread ; 5 uses

.noexc70:                                         ; preds = %bb.c
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.k ; 2 uses
  store double 0.000000e+00, ptr %i.n, align 8, !tbaa !178
  %i.p = add nsw i64 %i.k, -1                     ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit71, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i65

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i65: ; preds = %.noexc70
  %i.r = getelementptr i8, ptr %i.n, i64 8
  %.idx.i.i.i.i.i.i.i66 = shl nuw nsw i64 %i.p, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.r, i8 0, i64 %.idx.i.i.i.i.i.i.i66, i1 false), !tbaa !178
  br label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit71

_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit71:             ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i65, %.noexc70, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i63
  %.sroa.18.0177185 = phi ptr [ %i.g, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i65 ], [ %i.g, %.noexc70 ], [ %i.g, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i63 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0124.0180184 = phi ptr [ %i.f, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i65 ], [ %i.f, %.noexc70 ], [ %i.f, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i63 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ] ; 19 uses
  %.sroa.0117.0 = phi ptr [ %i.n, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i65 ], [ %i.n, %.noexc70 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i63 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ] ; 15 uses
  %.sroa.11121.0 = phi ptr [ %i.o, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i65 ], [ %i.o, %.noexc70 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i63 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %i.s = load i32, ptr %0, align 8, !tbaa !173    ; 3 uses
  %i.t = sext i32 %i.s to i64                     ; 4 uses
  %i.u = icmp slt i32 %i.s, 0
  br i1 %i.u, label %bb.d, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i72

bb.d:                                             ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit71
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #28
          to label %.noexc78 unwind label %bb.h

.noexc78:                                         ; preds = %bb.d
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i72: ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit71
  %.not.i.i.i.i73 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i.i73, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit89, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i72
  %i.v = shl nuw nsw i64 %i.t, 3
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #27
          to label %.noexc79 unwind label %bb.h   ; 7 uses

.noexc79:                                         ; preds = %bb.e
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.t ; 3 uses
  store double 0.000000e+00, ptr %i.w, align 8, !tbaa !178
  %i.y = add nsw i64 %i.t, -1                     ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit80, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i74

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i74: ; preds = %.noexc79
  %i.aa = getelementptr i8, ptr %i.w, i64 8
  %.idx.i.i.i.i.i.i.i75 = shl nuw nsw i64 %i.y, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aa, i8 0, i64 %.idx.i.i.i.i.i.i.i75, i1 false), !tbaa !178
  br label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit80

_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit80:             ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i74, %.noexc79
  %.pr186 = load i32, ptr %0, align 8, !tbaa !173 ; 3 uses
  %i.ab = zext nneg i32 %.pr186 to i64            ; 3 uses
  %i.ac = icmp slt i32 %.pr186, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i81

bb.f:                                             ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit80
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #28
          to label %.noexc87 unwind label %bb.i

.noexc87:                                         ; preds = %bb.f
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i81: ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit80
  %.not.i.i.i.i82 = icmp eq i32 %.pr186, 0
  br i1 %.not.i.i.i.i82, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit89, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i81
  %i.ad = shl nuw nsw i64 %i.ab, 3
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #27
          to label %.noexc88 unwind label %bb.i   ; 5 uses

.noexc88:                                         ; preds = %bb.g
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ab ; 2 uses
  store double 0.000000e+00, ptr %i.ae, align 8, !tbaa !178
  %i.ag = getelementptr i8, ptr %i.ae, i64 8      ; 3 uses
  %i.ah = add nsw i64 %i.ab, -1                   ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit89, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i83

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i83: ; preds = %.noexc88
  %.idx.i.i.i.i.i.i.i84 = shl nuw nsw i64 %i.ah, 3 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ag, i8 0, i64 %.idx.i.i.i.i.i.i.i84, i1 false), !tbaa !178
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx.i.i.i.i.i.i.i84
  br label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit89

_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit89:             ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i72, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i83, %.noexc88, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i81
  %.sroa.0108.0190197 = phi ptr [ %i.w, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i83 ], [ %i.w, %.noexc88 ], [ %i.w, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i81 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i72 ] ; 9 uses
  %.sroa.13114.0192196 = phi ptr [ %i.x, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i83 ], [ %i.x, %.noexc88 ], [ %i.x, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i81 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i72 ]
  %.sroa.0102.0 = phi ptr [ %i.ae, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i83 ], [ %i.ae, %.noexc88 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i81 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i72 ] ; 9 uses
  %.sroa.13.0 = phi ptr [ %i.af, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i83 ], [ %i.af, %.noexc88 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i81 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i72 ]
  %.0.i.i.i.i.i85 = phi ptr [ %i.aj, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i83 ], [ %i.ag, %.noexc88 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i81 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i72 ] ; 2 uses
  %i.ak = load i32, ptr %i.a, align 4, !tbaa !174 ; 8 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph, label %._crit_edge142

.lr.ph:                                           ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit89
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !175 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.ak to i64   ; 8 uses
  %.pre = load i32, ptr %i.an, align 4, !tbaa !24 ; 2 uses
  %min.iters.check = icmp ult i32 %i.ak, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 3 uses
  %vector.recur.init = insertelement <4 x i32> poison, i32 %.pre, i64 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph ], [ %wide.load212, %vector.body ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 20
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 36
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 52
  %wide.load = load <4 x i32>, ptr %i.ap, align 4, !tbaa !24 ; 3 uses
  %wide.load210 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !24 ; 3 uses
  %wide.load211 = load <4 x i32>, ptr %i.ar, align 4, !tbaa !24 ; 3 uses
  %wide.load212 = load <4 x i32>, ptr %i.as, align 4, !tbaa !24 ; 4 uses
  %i.at = shufflevector <4 x i32> %vector.recur, <4 x i32> %wide.load, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.au = shufflevector <4 x i32> %wide.load, <4 x i32> %wide.load210, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.av = shufflevector <4 x i32> %wide.load210, <4 x i32> %wide.load211, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.aw = shufflevector <4 x i32> %wide.load211, <4 x i32> %wide.load212, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ax = sub nsw <4 x i32> %wide.load, %i.at
  %i.ay = sub nsw <4 x i32> %wide.load210, %i.au
  %i.az = sub nsw <4 x i32> %wide.load211, %i.av
  %i.ba = sub nsw <4 x i32> %wide.load212, %i.aw
  %i.bb = sitofp <4 x i32> %i.ax to <4 x double>
  %i.bc = sitofp <4 x i32> %i.ay to <4 x double>
  %i.bd = sitofp <4 x i32> %i.az to <4 x double>
  %i.be = sitofp <4 x i32> %i.ba to <4 x double>
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0124.0180184, i64 %index ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 96
  store <4 x double> %i.bb, ptr %i.bf, align 8, !tbaa !178
  store <4 x double> %i.bc, ptr %i.bg, align 8, !tbaa !178
  store <4 x double> %i.bd, ptr %i.bh, align 8, !tbaa !178
  store <4 x double> %i.be, ptr %i.bi, align 8, !tbaa !178
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
end_hunk_1
begin_hunk_2_@_ZN8rawspeed6SplineItE7prepareEv:bb.a
  %i.gk = extractelement <2 x double> %i.gj, i64 0
  store double %i.gk, ptr %i.gb, align 8, !tbaa !178
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0102.0, i64 %indvars.iv152.epil.init
  %i.gm = extractelement <2 x double> %i.gj, i64 1
  store double %i.gm, ptr %i.gl, align 8, !tbaa !178
  br label %.lr.ph145

.lr.ph145:                                        ; preds = %.epil.preheader, %.lr.ph145.loopexit.unr-lcssa, %._crit_edge142.thread198
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !414 ; 2 uses
  %i.gp = getelementptr inbounds i8, ptr %i.go, i64 -16
  store double 0.000000e+00, ptr %i.gp, align 8, !tbaa !182
  %i.gq = getelementptr inbounds i8, ptr %.0.i.i.i.i.i85, i64 -8
  store double 0.000000e+00, ptr %i.gq, align 8, !tbaa !178
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !176 ; 2 uses
  %i.gt = zext nneg i32 %i.ak to i64              ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [32 x i8], ptr %i.gs, i64 %i.gt ; 2 uses
  %.phi.trans.insert162 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 16
  %.pre163 = load double, ptr %.phi.trans.insert162, align 8, !tbaa !182
  %.pre164 = load double, ptr %.phi.trans.insert, align 8, !tbaa !180
  br label %bb.m

bb.j:                                             ; preds = %bb.j, %.lr.ph141.new
  %i.gu = phi double [ 0.000000e+00, %.lr.ph141.new ], [ %i.is, %bb.j ]
  %i.gv = phi double [ 0.000000e+00, %.lr.ph141.new ], [ %i.iq, %bb.j ]
  %i.gw = phi double [ %.pre161, %.lr.ph141.new ], [ %i.ig, %bb.j ]
  %indvars.iv152 = phi i64 [ 1, %.lr.ph141.new ], [ %indvars.iv.next153.1, %bb.j ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph141.new ], [ %niter.next.1, %bb.j ]
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1 ; 6 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %indvars.iv.next153
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !24
  %i.gz = getelementptr [4 x i8], ptr %i.dt, i64 %indvars.iv152
  %i.ha = getelementptr i8, ptr %i.gz, i64 -4
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !24
  %i.hc = sub nsw i32 %i.gy, %i.hb
  %i.hd = shl nsw i32 %i.hc, 1
  %i.he = sitofp i32 %i.hd to double
  %i.hf = fneg double %i.gw                       ; 2 uses
  %i.hg = tail call double @llvm.fmuladd.f64(double %i.hf, double %i.gv, double %i.he)
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0124.0180184, i64 %indvars.iv152
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !178 ; 2 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0108.0190197, i64 %indvars.iv152
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0117.0, i64 %indvars.iv152
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !178
  %i.hm = tail call double @llvm.fmuladd.f64(double %i.hf, double %i.gu, double %i.hl)
  %i.hn = insertelement <2 x double> poison, double %i.hi, i64 0
  %i.ho = insertelement <2 x double> %i.hn, double %i.hm, i64 1
  %i.hp = insertelement <2 x double> poison, double %i.hg, i64 0
  %i.hq = shufflevector <2 x double> %i.hp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hr = fdiv <2 x double> %i.ho, %i.hq          ; 2 uses
  %i.hs = extractelement <2 x double> %i.hr, i64 0 ; 2 uses
  store double %i.hs, ptr %i.hj, align 8, !tbaa !178
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0102.0, i64 %indvars.iv152
  %i.hu = extractelement <2 x double> %i.hr, i64 1 ; 2 uses
  store double %i.hu, ptr %i.ht, align 8, !tbaa !178
  %indvars.iv.next153.1 = add nuw nsw i64 %indvars.iv152, 2 ; 3 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %indvars.iv.next153.1
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !24
  %i.hx = getelementptr [4 x i8], ptr %i.dt, i64 %indvars.iv.next153
  %i.hy = getelementptr i8, ptr %i.hx, i64 -4
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !24
  %i.ia = sub nsw i32 %i.hw, %i.hz
  %i.ib = shl nsw i32 %i.ia, 1
  %i.ic = sitofp i32 %i.ib to double
  %i.id = fneg double %i.hi                       ; 2 uses
  %i.ie = tail call double @llvm.fmuladd.f64(double %i.id, double %i.hs, double %i.ic)
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0124.0180184, i64 %indvars.iv.next153
  %i.ig = load double, ptr %i.if, align 8, !tbaa !178 ; 3 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0108.0190197, i64 %indvars.iv.next153
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0117.0, i64 %indvars.iv.next153
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !178
  %i.ik = tail call double @llvm.fmuladd.f64(double %i.id, double %i.hu, double %i.ij)
  %i.il = insertelement <2 x double> poison, double %i.ig, i64 0
  %i.im = insertelement <2 x double> %i.il, double %i.ik, i64 1
  %i.in = insertelement <2 x double> poison, double %i.ie, i64 0
  %i.io = shufflevector <2 x double> %i.in, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ip = fdiv <2 x double> %i.im, %i.io          ; 2 uses
  %i.iq = extractelement <2 x double> %i.ip, i64 0 ; 3 uses
  store double %i.iq, ptr %i.ih, align 8, !tbaa !178
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0102.0, i64 %indvars.iv.next153
  %i.is = extractelement <2 x double> %i.ip, i64 1 ; 3 uses
  store double %i.is, ptr %i.ir, align 8, !tbaa !178
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph145.loopexit.unr-lcssa, label %bb.j, !llvm.loop !408

_ZNSt6vectorIdSaIdEED2Ev.exit93:                  ; preds = %bb.m, %._crit_edge142
  %.pn209 = phi ptr [ %i.fl, %._crit_edge142 ], [ %i.go, %bb.m ]
  %i.it = phi ptr [ %i.fk, %._crit_edge142 ], [ %i.gn, %bb.m ]
  %i.iu = getelementptr inbounds i8, ptr %.pn209, i64 -32
  store ptr %i.iu, ptr %i.it, align 8, !tbaa !177
  %i.iv = ptrtoint ptr %.sroa.13.0 to i64
  %i.iw = ptrtoint ptr %.sroa.0102.0 to i64
  %i.ix = sub i64 %i.iv, %i.iw
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0102.0, i64 noundef %i.ix) #26
  %i.iy = ptrtoint ptr %.sroa.13114.0192196 to i64
  %i.iz = ptrtoint ptr %.sroa.0108.0190197 to i64
  %i.ja = sub i64 %i.iy, %i.iz
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0108.0190197, i64 noundef %i.ja) #26
  %.not.i.i.i94 = icmp eq ptr %.sroa.0117.0, null
  br i1 %.not.i.i.i94, label %_ZNSt6vectorIdSaIdEED2Ev.exit95, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit93
  %i.jb = ptrtoint ptr %.sroa.11121.0 to i64
  %i.jc = ptrtoint ptr %.sroa.0117.0 to i64
  %i.jd = sub i64 %i.jb, %i.jc
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0117.0, i64 noundef %i.jd) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit95

_ZNSt6vectorIdSaIdEED2Ev.exit95:                  ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit93, %bb.k
  %.not.i.i.i96 = icmp eq ptr %.sroa.0124.0180184, null
  br i1 %.not.i.i.i96, label %_ZNSt6vectorIdSaIdEED2Ev.exit97, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit95
  %i.je = ptrtoint ptr %.sroa.18.0177185 to i64
  %i.jf = ptrtoint ptr %.sroa.0124.0180184 to i64
  %i.jg = sub i64 %i.je, %i.jf
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0124.0180184, i64 noundef %i.jg) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit97

_ZNSt6vectorIdSaIdEED2Ev.exit97:                  ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit95, %bb.l
  ret void

bb.m:                                             ; preds = %.lr.ph145, %bb.m
  %i.jh = phi double [ %.pre164, %.lr.ph145 ], [ %i.js, %bb.m ]
  %i.ji = phi double [ %.pre163, %.lr.ph145 ], [ %i.jr, %bb.m ] ; 3 uses
  %indvars.iv157 = phi i64 [ %i.gt, %.lr.ph145 ], [ %indvars.iv.next158, %bb.m ] ; 2 uses
  %indvars.iv.next158 = add nsw i64 %indvars.iv157, -1 ; 5 uses
  %i.jj = getelementptr inbounds nuw [32 x i8], ptr %i.gs, i64 %indvars.iv.next158 ; 4 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0102.0, i64 %indvars.iv.next158
  %i.jl = load double, ptr %i.jk, align 8, !tbaa !178
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0108.0190197, i64 %indvars.iv.next158
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !178
  %i.jo = fneg double %i.jn
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0124.0180184, i64 %indvars.iv.next158 ; 2 uses
  %i.jr = tail call double @llvm.fmuladd.f64(double %i.jo, double %i.ji, double %i.jl) ; 4 uses
  store double %i.jr, ptr %i.jp, align 8, !tbaa !182
  %i.js = load double, ptr %i.jj, align 8, !tbaa !180 ; 2 uses
  %i.jt = fsub double %i.jh, %i.js
  %i.ju = load double, ptr %i.jq, align 8, !tbaa !178 ; 2 uses
  %i.jv = tail call double @llvm.fmuladd.f64(double %i.jr, double 2.000000e+00, double %i.ji)
  %i.jw = fmul double %i.jv, %i.ju
  %i.jx = insertelement <2 x double> poison, double %i.jt, i64 0
  %i.jy = insertelement <2 x double> %i.jx, double %i.jw, i64 1
  %i.jz = insertelement <2 x double> <double poison, double 3.000000e+00>, double %i.ju, i64 0
  %i.ka = fdiv <2 x double> %i.jy, %i.jz          ; 2 uses
  %shift = shufflevector <2 x double> %i.ka, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.ka, %shift
  %i.kb = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  store double %i.kb, ptr %i.kc, align 8, !tbaa !181
  %i.kd = fsub double %i.ji, %i.jr
  %i.ke = load double, ptr %i.jq, align 8, !tbaa !178
  %i.kf = fmul double %i.ke, 3.000000e+00
  %i.kg = fdiv double %i.kd, %i.kf
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jj, i64 24
  store double %i.kg, ptr %i.kh, align 8, !tbaa !183
  %i.ki = icmp samesign ugt i64 %indvars.iv157, 1
  br i1 %i.ki, label %bb.m, label %_ZNSt6vectorIdSaIdEED2Ev.exit93, !llvm.loop !409

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.dk, %bb.h ], [ %i.dl, %bb.i ] ; 2 uses
  %.not.i.i.i98 = icmp eq ptr %.sroa.0117.0, null
  br i1 %.not.i.i.i98, label %_ZNSt6vectorIdSaIdEED2Ev.exit99, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.kj = ptrtoint ptr %.sroa.11121.0 to i64
  %i.kk = ptrtoint ptr %.sroa.0117.0 to i64
  %i.kl = sub i64 %i.kj, %i.kk
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0117.0, i64 noundef %i.kl) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit99

_ZNSt6vectorIdSaIdEED2Ev.exit99:                  ; preds = %bb.n, %_ZNSt6vectorIdSaIdEED2Ev.exit
  %.not.i.i.i100 = icmp eq ptr %.sroa.0124.0180184, null
  br i1 %.not.i.i.i100, label %_ZNSt6vectorIdSaIdEED2Ev.exit101, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit99.thread, %_ZNSt6vectorIdSaIdEED2Ev.exit99
  %.pn.pn205 = phi { ptr, i32 } [ %i.dj, %_ZNSt6vectorIdSaIdEED2Ev.exit99.thread ], [ %.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit99 ]
  %.sroa.18.0175204 = phi ptr [ %i.g, %_ZNSt6vectorIdSaIdEED2Ev.exit99.thread ], [ %.sroa.18.0177185, %_ZNSt6vectorIdSaIdEED2Ev.exit99 ]
  %.sroa.0124.0178203 = phi ptr [ %i.f, %_ZNSt6vectorIdSaIdEED2Ev.exit99.thread ], [ %.sroa.0124.0180184, %_ZNSt6vectorIdSaIdEED2Ev.exit99 ] ; 2 uses
  %i.km = ptrtoint ptr %.sroa.18.0175204 to i64
  %i.kn = ptrtoint ptr %.sroa.0124.0178203 to i64
  %i.ko = sub i64 %i.km, %i.kn
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0124.0178203, i64 noundef %i.ko) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit101

_ZNSt6vectorIdSaIdEED2Ev.exit101:                 ; preds = %bb.o, %_ZNSt6vectorIdSaIdEED2Ev.exit99
  %.pn.pn206 = phi { ptr, i32 } [ %.pn.pn205, %bb.o ], [ %.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit99 ]
  resume { ptr, i32 } %.pn.pn206
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.bswap.v2i32(<2 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.bswap.v2i16(<2 x i16>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x double> @llvm.fmuladd.v16f64(<16 x double>, <16 x double>, <16 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr>, <4 x i1>, <4 x double>) #24

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { nocallback nofree nosync nounwind willreturn }
attributes #16 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { cold noreturn }
attributes #19 = { cold mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #25 = { nounwind }
attributes #26 = { builtin nounwind }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { noreturn }
attributes #29 = { noreturn nounwind }
attributes #30 = { cold }

!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>", scope: !80, file: !75, line: 125, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE")
!1 = distinct !{ptr @_ZN8rawspeed8RawImageD2Ev, null, null, null}
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!16 = !{!"long", !9, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !16, i64 8, !9, i64 16}
!18 = !{!17, !16, i64 8}
!19 = !{!17, !14, i64 0}
!20 = !{!9, !9, i64 0}
!21 = !{!"p1 _ZTSN8rawspeed10IiqDecoder9IiqOffsetE", !13, i64 0}
!22 = !{!"_ZTSN8rawspeed10IiqDecoder9IiqOffsetE", !10, i64 0, !10, i64 4}
!23 = !{!22, !10, i64 4}
!24 = !{!10, !10, i64 0}
!25 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!"p1 _ZTSN8rawspeed13PhaseOneStripE", !13, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed13PhaseOneStripESaIS1_EE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!29 = !{!28, !27, i64 0}
!30 = !{!28, !27, i64 8}
!31 = !{!28, !27, i64 16}
!32 = !{!"_ZTSN8rawspeed6BufferE", !14, i64 0, !10, i64 8}
!33 = !{!"_ZTSN8rawspeed10EndiannessE", !9, i64 0}
!34 = !{!"_ZTSN8rawspeed10DataBufferE", !32, i64 0, !33, i64 12}
!35 = !{!"_ZTSN8rawspeed10ByteStreamE", !34, i64 0, !10, i64 16}
!36 = !{!35, !10, i64 16}
!37 = !{!32, !10, i64 8}
!38 = !{!32, !14, i64 0}
!39 = !{!"p1 _ZTSN8rawspeed12RawImageDataE", !13, i64 0}
!40 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0}
!41 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !40, i64 0}
!42 = !{!"_ZTSSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EE", !39, i64 0, !41, i64 8}
!43 = !{!"_ZTSSt10shared_ptrIN8rawspeed12RawImageDataEE", !42, i64 0}
!44 = !{!"_ZTSN8rawspeed8RawImageE", !43, i64 0}
!45 = !{!"bool", !9, i64 0}
!46 = !{!"_ZTSN8rawspeed10RawDecoderUt_E", !45, i64 0}
!47 = !{!"_ZTSSt4lessIvE"}
!48 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIvEE", !47, i64 0}
!49 = !{!"_ZTSSt14_Rb_tree_color", !9, i64 0}
!50 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !13, i64 0}
!51 = !{!"_ZTSSt18_Rb_tree_node_base", !49, i64 0, !50, i64 8, !50, i64 16, !50, i64 24}
!52 = !{!"_ZTSSt15_Rb_tree_header", !51, i64 0, !16, i64 32}
!53 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIvESaIS8_EE13_Rb_tree_implISC_Lb1EEE", !48, i64 0, !52, i64 8}
!54 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIvESaIS8_EE", !53, i64 0}
!55 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIvESaISt4pairIKS5_S5_EEE", !54, i64 0}
!56 = !{!"_ZTSN8rawspeed5HintsE", !55, i64 0}
!57 = !{!"_ZTSN8rawspeed10RawDecoderE", !44, i64 8, !45, i64 24, !45, i64 25, !45, i64 26, !45, i64 27, !45, i64 28, !45, i64 29, !46, i64 30, !45, i64 31, !32, i64 32, !56, i64 48}
!58 = !{!"p1 _ZTSN8rawspeed11TiffRootIFDE", !13, i64 0}
!59 = !{!"_ZTSSt10_Head_baseILm0EPN8rawspeed11TiffRootIFDELb0EE", !58, i64 0}
!60 = !{!"_ZTSSt11_Tuple_implILm0EJPN8rawspeed11TiffRootIFDESt14default_deleteIS1_EEE", !59, i64 0}
!61 = !{!"_ZTSSt5tupleIJPN8rawspeed11TiffRootIFDESt14default_deleteIS1_EEE", !60, i64 0}
!62 = !{!"_ZTSSt15__uniq_ptr_implIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EE", !61, i64 0}
!63 = !{!"_ZTSSt15__uniq_ptr_dataIN8rawspeed11TiffRootIFDESt14default_deleteIS1_ELb1ELb1EE", !62, i64 0}
!64 = !{!"_ZTSSt10unique_ptrIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EE", !63, i64 0}
!65 = !{!"_ZTSN8rawspeed19AbstractTiffDecoderE", !57, i64 0, !64, i64 96}
!66 = !{!"_ZTSN8rawspeed10IiqDecoderE", !65, i64 0, !10, i64 104}
!67 = !{!66, !10, i64 104}
!68 = !{!42, !39, i64 0}
!69 = !{!41, !40, i64 0}
!70 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 8, !10, i64 12}
!71 = !{!70, !10, i64 8}
!72 = !{!70, !10, i64 12}
!73 = !{!"vtable pointer", !8, i64 0}
!74 = !{!73, !73, i64 0}
!75 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/shared_ptr_base.h", directory: "", checksumkind: CSK_MD5, checksum: "398b697f034a380e2062e59e71a6eec9")
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !0, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!77 = !{null, !76}
!78 = !DISubroutineType(types: !77)
!79 = !DISubprogram(name: "_M_dispose", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv", scope: !0, file: !75, line: 139, type: !78, scopeLine: 139, containingType: !0, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!80 = !DINamespace(name: "std", scope: null)
!81 = !DISubprogram(name: "_M_destroy", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv", scope: !0, file: !75, line: 143, type: !78, scopeLine: 143, containingType: !0, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!82 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!83 = !{i8 0, i8 2}
!84 = !{}
!85 = !{!34, !33, i64 12}
!86 = !{!"_ZTSN8rawspeed5MutexE"}
!87 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0}
!88 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !87, i64 0, !87, i64 8, !87, i64 16}
!89 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !88, i64 0}
!90 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !89, i64 0}
!91 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !90, i64 0}
!92 = !{!"_ZTSN8rawspeed8ErrorLogE", !86, i64 0, !91, i64 8}
!93 = !{!"_ZTSN8rawspeed8iPoint2DE", !10, i64 0, !10, i64 4}
!94 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!95 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE12_Vector_implE", !94, i64 0}
!96 = !{!"_ZTSSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE", !95, i64 0}
!97 = !{!"_ZTSSt6vectorIN8rawspeed8CFAColorESaIS1_EE", !96, i64 0}
!98 = !{!"_ZTSN8rawspeed16ColorFilterArrayE", !97, i64 0, !93, i64 24}
!99 = !{!"_ZTSSt5arrayIiLm4EE", !9, i64 0}
!100 = !{!"_ZTSSt22_Optional_payload_baseIN8rawspeed10Array2DRefIiEEE", !9, i64 0, !45, i64 32}
!101 = !{!"_ZTSSt17_Optional_payloadIN8rawspeed10Array2DRefIiEELb1ELb1ELb1EE", !100, i64 0}
!102 = !{!"_ZTSSt14_Optional_baseIN8rawspeed10Array2DRefIiEELb1ELb1EE", !101, i64 0}
!103 = !{!"_ZTSSt8optionalIN8rawspeed10Array2DRefIiEEE", !102, i64 0}
!104 = !{!"_ZTSN8rawspeed8OptionalINS_10Array2DRefIiEEEE", !103, i64 0}
!105 = !{!"_ZTSSt22_Optional_payload_baseIiE", !9, i64 0, !45, i64 4}
!106 = !{!"_ZTSSt17_Optional_payloadIiLb1ELb1ELb1EE", !105, i64 0}
!107 = !{!"_ZTSSt14_Optional_baseIiLb1ELb1EE", !106, i64 0}
!108 = !{!"_ZTSSt8optionalIiE", !107, i64 0}
!109 = !{!"_ZTSN8rawspeed8OptionalIiEE", !108, i64 0}
!110 = !{!"p1 _ZTSN8rawspeed9BlackAreaE", !13, i64 0}
!111 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed9BlackAreaESaIS1_EE17_Vector_impl_dataE", !110, i64 0, !110, i64 8, !110, i64 16}
!112 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed9BlackAreaESaIS1_EE12_Vector_implE", !111, i64 0}
!113 = !{!"_ZTSSt12_Vector_baseIN8rawspeed9BlackAreaESaIS1_EE", !112, i64 0}
!114 = !{!"_ZTSSt6vectorIN8rawspeed9BlackAreaESaIS1_EE", !113, i64 0}
!115 = !{!"p1 int", !13, i64 0}
!116 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !115, i64 0, !115, i64 8, !115, i64 16}
!117 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !116, i64 0}
!118 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !117, i64 0}
!119 = !{!"_ZTSSt6vectorIjSaIjEE", !118, i64 0}
!120 = !{!"_ZTSNSt12_Vector_baseIhN8rawspeed16AlignedAllocatorIhLi16EEEE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!121 = !{!"_ZTSNSt12_Vector_baseIhN8rawspeed16AlignedAllocatorIhLi16EEEE12_Vector_implE", !120, i64 0}
!122 = !{!"_ZTSSt12_Vector_baseIhN8rawspeed16AlignedAllocatorIhLi16EEEE", !121, i64 0}
!123 = !{!"_ZTSSt6vectorIhN8rawspeed16AlignedAllocatorIhLi16EEEE", !122, i64 0}
!124 = !{!"double", !9, i64 0}
!125 = !{!"_ZTSSt22_Optional_payload_baseISt5arrayIfLm4EEE", !9, i64 0, !45, i64 16}
!126 = !{!"_ZTSSt17_Optional_payloadISt5arrayIfLm4EELb1ELb1ELb1EE", !125, i64 0}
!127 = !{!"_ZTSSt14_Optional_baseISt5arrayIfLm4EELb1ELb1EE", !126, i64 0}
!128 = !{!"_ZTSSt8optionalISt5arrayIfLm4EEE", !127, i64 0}
!129 = !{!"_ZTSN8rawspeed8OptionalISt5arrayIfLm4EEEE", !128, i64 0}
!130 = !{!"p1 _ZTSN8rawspeed12NotARationalIiEE", !13, i64 0}
!131 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed12NotARationalIiEESaIS2_EE17_Vector_impl_dataE", !130, i64 0, !130, i64 8, !130, i64 16}
!132 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed12NotARationalIiEESaIS2_EE12_Vector_implE", !131, i64 0}
!133 = !{!"_ZTSSt12_Vector_baseIN8rawspeed12NotARationalIiEESaIS2_EE", !132, i64 0}
!134 = !{!"_ZTSSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EE", !133, i64 0}
!135 = !{!"_ZTSN8rawspeed13ImageMetaDataE", !124, i64 0, !129, i64 8, !134, i64 32, !10, i64 56, !93, i64 60, !17, i64 72, !17, i64 104, !17, i64 136, !17, i64 168, !17, i64 200, !17, i64 232, !17, i64 264, !10, i64 296}
!136 = !{!"_ZTSN8rawspeed12RawImageTypeE", !9, i64 0}
!137 = !{!"_ZTSN8rawspeed16AlignedAllocatorIhLi16EEE"}
!138 = !{!"_ZTSN8rawspeed27DefaultInitAllocatorAdaptorIhNS_16AlignedAllocatorIhLi16EEEEE", !137, i64 0}
!139 = !{!"_ZTSNSt12_Vector_baseIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS0_16AlignedAllocatorIhLi16EEEEEE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!140 = !{!"_ZTSNSt12_Vector_baseIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS0_16AlignedAllocatorIhLi16EEEEEE12_Vector_implE", !138, i64 0, !139, i64 8}
!141 = !{!"_ZTSSt12_Vector_baseIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS0_16AlignedAllocatorIhLi16EEEEEE", !140, i64 0}
!142 = !{!"_ZTSSt6vectorIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS0_16AlignedAllocatorIhLi16EEEEEE", !141, i64 0}
!143 = !{!"p1 _ZTSN8rawspeed11TableLookUpE", !13, i64 0}
!144 = !{!"_ZTSSt10_Head_baseILm0EPN8rawspeed11TableLookUpELb0EE", !143, i64 0}
!145 = !{!"_ZTSSt11_Tuple_implILm0EJPN8rawspeed11TableLookUpESt14default_deleteIS1_EEE", !144, i64 0}
!146 = !{!"_ZTSSt5tupleIJPN8rawspeed11TableLookUpESt14default_deleteIS1_EEE", !145, i64 0}
!147 = !{!"_ZTSSt15__uniq_ptr_implIN8rawspeed11TableLookUpESt14default_deleteIS1_EE", !146, i64 0}
!148 = !{!"_ZTSSt15__uniq_ptr_dataIN8rawspeed11TableLookUpESt14default_deleteIS1_ELb1ELb1EE", !147, i64 0}
!149 = !{!"_ZTSSt10unique_ptrIN8rawspeed11TableLookUpESt14default_deleteIS1_EE", !148, i64 0}
!150 = !{!"_ZTSN8rawspeed12RawImageDataE", !92, i64 8, !93, i64 40, !10, i64 48, !10, i64 52, !45, i64 56, !98, i64 64, !10, i64 96, !99, i64 100, !104, i64 120, !109, i64 160, !114, i64 168, !119, i64 192, !123, i64 216, !10, i64 240, !45, i64 244, !135, i64 248, !86, i64 552, !136, i64 553, !142, i64 560, !10, i64 592, !10, i64 596, !93, i64 600, !93, i64 608, !149, i64 616}
!151 = !{!150, !10, i64 40}
!152 = !{!115, !115, i64 0}
!153 = !{!139, !14, i64 0}
!154 = !{!150, !10, i64 592}
!155 = !{!150, !10, i64 608}
!156 = !{!150, !10, i64 612}
!157 = !{!150, !10, i64 48}
!158 = !{!150, !10, i64 44}
!159 = !{!"short", !9, i64 0}
!160 = !{!159, !159, i64 0}
!161 = !{!"llvm.loop.isvectorized", i32 1}
!162 = !{!"llvm.loop.unroll.runtime.disable"}
!163 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !115, i64 0, !115, i64 8, !115, i64 16}
!164 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !163, i64 0}
!165 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !164, i64 0}
!166 = !{!"_ZTSSt6vectorIiSaIiEE", !165, i64 0}
!167 = !{!"p1 _ZTSN8rawspeed6SplineItE7SegmentE", !13, i64 0}
!168 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed6SplineItE7SegmentESaIS3_EE17_Vector_impl_dataE", !167, i64 0, !167, i64 8, !167, i64 16}
!169 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed6SplineItE7SegmentESaIS3_EE12_Vector_implE", !168, i64 0}
!170 = !{!"_ZTSSt12_Vector_baseIN8rawspeed6SplineItE7SegmentESaIS3_EE", !169, i64 0}
!171 = !{!"_ZTSSt6vectorIN8rawspeed6SplineItE7SegmentESaIS3_EE", !170, i64 0}
!172 = !{!"_ZTSN8rawspeed6SplineItEE", !10, i64 0, !10, i64 4, !166, i64 8, !171, i64 32}
!173 = !{!172, !10, i64 0}
!174 = !{!172, !10, i64 4}
!175 = !{!163, !115, i64 0}
end_hunk_2
