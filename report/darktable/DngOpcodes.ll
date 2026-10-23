Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/DngOpcodes?download=true
inline.NumInlined: 1596
inline.NumDeleted: 857
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN8rawspeed10DngOpcodes11PixelOpcodeC2ERKNS_8RawImageERNS_10ByteStreamERKNS_12iRectangle2DE:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.u = add nuw nsw i32 %i.b, 8                  ; 3 uses
  %i.v = icmp samesign ule i32 %i.u, %i.f
  tail call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.r
  %.0.copyload.i.i.i.i.i.i25 = load i32, ptr %i.w, align 1 ; 2 uses
  %i.x = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i25)
  %spec.select.i.i.i.i.i.i26 = select i1 %i.k, i32 %.0.copyload.i.i.i.i.i.i25, i32 %i.x ; 5 uses
  store i32 %i.u, ptr %i.a, align 8, !tbaa !116
  store i32 %spec.select.i.i.i.i.i.i26, ptr %i.t, align 4, !tbaa !2052
  %i.y = icmp eq i32 %spec.select.i.i.i.i.i.i26, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !134
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 592
  %.pre40 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !205 ; 4 uses
  br i1 %i.y, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = icmp ugt i32 %spec.select.i.i.i.i.i.i, %.pre40
  %i.aa = icmp ugt i32 %spec.select.i.i.i.i.i.i26, %.pre40
  %or.cond = or i1 %i.z, %i.aa
  %i.ab = add i32 %spec.select.i.i.i.i.i.i26, %spec.select.i.i.i.i.i.i
  %i.ac = icmp ugt i32 %i.ab, %.pre40
  %or.cond23 = or i1 %i.ac, %or.cond
  br i1 %or.cond23, label %._crit_edge, label %bb.e

._crit_edge:                                      ; preds = %bb.c, %bb.d
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.31, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10DngOpcodes11PixelOpcodeC2ERKNS_8RawImageERNS_10ByteStreamERKNS_12iRectangle2DE, i32 noundef %spec.select.i.i.i.i.i.i, i32 noundef %spec.select.i.i.i.i.i.i26, i32 noundef %.pre40) #13
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.ad = zext nneg i32 %i.u to i64               ; 2 uses
  %i.ae = add nuw nsw i64 %i.ad, 4
  %.not.i.i.i.i.i.i29 = icmp samesign ugt i64 %i.ae, %i.g
  br i1 %.not.i.i.i.i.i.i29, label %.noexc32, label %bb.f

.noexc32:                                         ; preds = %bb.e
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #13
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.af = add nuw nsw i32 %i.b, 12                ; 3 uses
  %i.ag = icmp samesign ule i32 %i.af, %i.f
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ad
  %.0.copyload.i.i.i.i.i.i30 = load i32, ptr %i.ah, align 1 ; 2 uses
  %i.ai = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i30)
  %spec.select.i.i.i.i.i.i31 = select i1 %i.k, i32 %.0.copyload.i.i.i.i.i.i30, i32 %i.ai ; 3 uses
  store i32 %i.af, ptr %i.a, align 8, !tbaa !116
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %spec.select.i.i.i.i.i.i31, ptr %i.aj, align 8, !tbaa !2051
  %i.ak = zext nneg i32 %i.af to i64              ; 2 uses
  %i.al = add nuw nsw i64 %i.ak, 4
  %.not.i.i.i.i.i.i34 = icmp samesign ugt i64 %i.al, %i.g
  br i1 %.not.i.i.i.i.i.i34, label %.noexc37, label %bb.g

.noexc37:                                         ; preds = %bb.f
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #13
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.am = add nuw nsw i32 %i.b, 16                ; 2 uses
  %i.an = icmp samesign ule i32 %i.am, %i.f
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ak
  %.0.copyload.i.i.i.i.i.i35 = load i32, ptr %i.ao, align 1 ; 2 uses
  %i.ap = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i35)
  %spec.select.i.i.i.i.i.i36 = select i1 %i.k, i32 %.0.copyload.i.i.i.i.i.i35, i32 %i.ap ; 3 uses
  store i32 %i.am, ptr %i.a, align 8, !tbaa !116
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %spec.select.i.i.i.i.i.i36, ptr %i.aq, align 4, !tbaa !2049
  %i.ar = icmp eq i32 %spec.select.i.i.i.i.i.i31, 0
  br i1 %i.ar, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.at = load i32, ptr %i.as, align 4, !tbaa !2050
  %i.au = icmp ugt i32 %spec.select.i.i.i.i.i.i31, %i.at
  %i.av = icmp eq i32 %spec.select.i.i.i.i.i.i36, 0
  %or.cond39 = select i1 %i.au, i1 true, i1 %i.av
  br i1 %or.cond39, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !2048
  %i.ay = icmp ugt i32 %spec.select.i.i.i.i.i.i36, %i.ax
  br i1 %i.ay, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.32, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10DngOpcodes11PixelOpcodeC2ERKNS_8RawImageERNS_10ByteStreamERKNS_12iRectangle2DE) #13
  unreachable

bb.k:                                             ; preds = %bb.i
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #16

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed10DngOpcodes13PolynomialMapC2ERKNS_8RawImageERNS_10ByteStreamERKNS_12iRectangle2DE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(16) %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.147", align 8   ; 13 uses
  tail call void @_ZN8rawspeed10DngOpcodes11PixelOpcodeC2ERKNS_8RawImageERNS_10ByteStreamERKNS_12iRectangle2DE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(16) %3)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN8rawspeed10DngOpcodes12LookupOpcodeE, i64 16), ptr %0, align 8, !tbaa !212
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = tail call noalias noundef nonnull dereferenceable(131072) ptr @_Znwm(i64 noundef 131072) #26 ; 3 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !2045
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 131072 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !2046
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(131072) %i.b, i8 0, i64 131072, i1 false)
  store ptr %i.c, ptr %i.e, align 8, !tbaa !2057
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN8rawspeed10DngOpcodes13PolynomialMapE, i64 16), ptr %0, align 8, !tbaa !212
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !116  ; 2 uses
  %i.h = zext i32 %i.g to i64                     ; 2 uses
  %i.i = add nuw nsw i64 %i.h, 4
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !117  ; 4 uses
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %.not.i.i.i.i.i.i = icmp samesign ugt i64 %i.i, %i.l
  br i1 %.not.i.i.i.i.i.i, label %.invoke, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.n = load i16, ptr %i.m, align 4, !tbaa !2005
  %i.o = icmp eq i16 %i.n, -8531
  %i.p = load ptr, ptr %2, align 8, !tbaa !118
  %i.q = icmp sgt i32 %i.k, -1
  tail call void @llvm.assume(i1 %i.q)
  %i.r = add nuw nsw i32 %i.g, 4                  ; 4 uses
  %i.s = icmp samesign ule i32 %i.r, %i.k
  tail call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.h
  %.0.copyload.i.i.i.i.i.i = load i32, ptr %i.t, align 1 ; 2 uses
  %i.u = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i)
  %spec.select.i.i.i.i.i.i = select i1 %i.o, i32 %.0.copyload.i.i.i.i.i.i, i32 %i.u ; 2 uses
  store i32 %i.r, ptr %i.f, align 8, !tbaa !116
  %i.v = zext i32 %spec.select.i.i.i.i.i.i to i64
  %i.w = add nuw nsw i64 %i.v, 1                  ; 3 uses
  %i.x = shl nuw nsw i64 %i.w, 3                  ; 3 uses
  %i.y = zext nneg i32 %i.r to i64
  %i.z = and i64 %i.x, 4294967288
  %i.aa = add nuw nsw i64 %i.z, %i.y
  %.not.i = icmp samesign ugt i64 %i.aa, %i.l
  br i1 %.not.i, label %.invoke, label %bb.c

.invoke:                                          ; preds = %bb.b, %bb.a
  %i.ab = phi ptr [ @.str.17, %bb.a ], [ @.str.19, %bb.b ]
  %i.ac = phi ptr [ @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj, %bb.a ], [ @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj, %bb.b ]
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ac) #13
          to label %.cont unwind label %bb.f

.cont:                                            ; preds = %.invoke
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.ad = trunc i64 %i.x to i32                   ; 2 uses
  %i.ae = add nuw nsw i32 %i.r, %i.ad
  %i.af = icmp samesign ule i32 %i.ae, %i.k
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp sgt i32 %i.ad, -1
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = icmp ugt i32 %spec.select.i.i.i.i.i.i, 8
  br i1 %i.ah, label %bb.d, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.34, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10DngOpcodes13PolynomialMapC2ERKNS_8RawImageERNS_10ByteStreamERKNS_12iRectangle2DE) #13
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %.invoke, %bb.h, %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i, %_ZNSt6vectorIdSaIdEE7reserveEm.exit, %bb.d
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load ptr, ptr %4, align 8, !tbaa !2061  ; 3 uses
  %.not.i.i.i34 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIdSaIdEED2Ev.exit35, label %bb.l

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.al = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #26
          to label %_ZNSt6vectorIdSaIdEE7reserveEm.exit unwind label %bb.f ; 3 uses

_ZNSt6vectorIdSaIdEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.al, ptr %4, align 8, !tbaa !2061
  store ptr %i.al, ptr %i.am, align 8, !tbaa !2062
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.w
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !2063
  %i.ao = invoke ptr @_ZSt10generate_nISt20back_insert_iteratorISt6vectorIdSaIdEEEmZN8rawspeed10DngOpcodes13PolynomialMapC1ERKNS5_8RawImageERNS5_10ByteStreamERKNS5_12iRectangle2DEEUlvE_ET_SH_T0_T1_(ptr nonnull %4, i64 noundef %i.w, ptr nonnull %2)
          to label %bb.g unwind label %bb.f       ; 0 uses

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEE7reserveEm.exit
  %i.ap = load ptr, ptr %i.e, align 8, !tbaa !2057 ; 4 uses
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !2045 ; 4 uses
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64               ; 3 uses
  %i.at = sub i64 %i.ar, %i.as                    ; 2 uses
  %i.au = ashr exact i64 %i.at, 1                 ; 2 uses
  %i.av = icmp ult i64 %i.au, 65536
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aw = sub nuw nsw i64 65536, %i.au
  invoke void @_ZNSt6vectorItSaItEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.aw)
          to label %._ZNSt6vectorItSaItEE6resizeEm.exit_crit_edge unwind label %bb.f

._ZNSt6vectorItSaItEE6resizeEm.exit_crit_edge:    ; preds = %bb.h
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !2057
  %.pre48 = load ptr, ptr %i.a, align 8, !tbaa !2045 ; 2 uses
  %.pre50 = ptrtoint ptr %.pre48 to i64
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit

bb.i:                                             ; preds = %bb.g
  %.not37 = icmp eq i64 %i.at, 131072
  br i1 %.not37, label %_ZNSt6vectorItSaItEE6resizeEm.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 131072 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ap, %i.ax
  br i1 %.not.i.i, label %_ZNSt6vectorItSaItEE6resizeEm.exit, label %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.j
  store ptr %i.ax, ptr %i.e, align 8, !tbaa !2057
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit.thread

_ZNSt6vectorItSaItEE6resizeEm.exit.thread:        ; preds = %bb.i, %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i
  %.ph = phi ptr [ %i.ax, %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i ], [ %i.ap, %bb.i ]
  %5 = ptrtoint ptr %.ph to i64
  %6 = sub i64 %5, %i.as
  %.pre4961 = load ptr, ptr %4, align 8, !tbaa !2061
  br label %.lr.ph41

_ZNSt6vectorItSaItEE6resizeEm.exit:               ; preds = %._ZNSt6vectorItSaItEE6resizeEm.exit_crit_edge, %bb.j
  %.pre-phi = phi i64 [ %.pre50, %._ZNSt6vectorItSaItEE6resizeEm.exit_crit_edge ], [ %i.as, %bb.j ]
  %7 = phi ptr [ %.pre48, %._ZNSt6vectorItSaItEE6resizeEm.exit_crit_edge ], [ %i.aq, %bb.j ] ; 2 uses
  %8 = phi ptr [ %.pre, %._ZNSt6vectorItSaItEE6resizeEm.exit_crit_edge ], [ %i.ap, %bb.j ] ; 2 uses
  %i.ay = ptrtoint ptr %8 to i64
  %i.az = sub i64 %i.ay, %.pre-phi
  %.not43 = icmp eq ptr %8, %7
  %.pre49 = load ptr, ptr %4, align 8, !tbaa !2061 ; 3 uses
  br i1 %.not43, label %._crit_edge42, label %.lr.ph41

.lr.ph41:                                         ; preds = %_ZNSt6vectorItSaItEE6resizeEm.exit.thread, %_ZNSt6vectorItSaItEE6resizeEm.exit
  %.pre4962 = phi ptr [ %.pre4961, %_ZNSt6vectorItSaItEE6resizeEm.exit.thread ], [ %.pre49, %_ZNSt6vectorItSaItEE6resizeEm.exit ] ; 15 uses
  %i.ba = phi i64 [ %6, %_ZNSt6vectorItSaItEE6resizeEm.exit.thread ], [ %i.az, %_ZNSt6vectorItSaItEE6resizeEm.exit ]
  %i.bb = phi ptr [ %i.aq, %_ZNSt6vectorItSaItEE6resizeEm.exit.thread ], [ %7, %_ZNSt6vectorItSaItEE6resizeEm.exit ] ; 4 uses
  %9 = ashr exact i64 %i.ba, 1                    ; 6 uses
  %i.bc = load double, ptr %.pre4962, align 8, !tbaa !2064 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !2062
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %.pre4962 to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 3                 ; 3 uses
  %i.bj = icmp ugt i64 %i.bi, 1
  br i1 %i.bj, label %.lr.ph.us.preheader, label %iter.check

.lr.ph.us.preheader:                              ; preds = %.lr.ph41
  %umax46 = call i64 @llvm.umax.i64(i64 %9, i64 1)
  %i.bk = add nsw i64 %i.bi, -1                   ; 2 uses
  %i.bl = add nsw i64 %i.bi, -2
  %xtraiter = and i64 %i.bk, 7                    ; 3 uses
  %i.bm = icmp ult i64 %i.bl, 7
  %unroll_iter = and i64 %i.bk, -8
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod78 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.02540.us = phi i64 [ %i.dx, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 3 uses
  %i.bn = uitofp i64 %.02540.us to double
  %i.bo = fmul nnan double %i.bn, f0x3EF0000000000000 ; 9 uses
  br i1 %i.bm, label %.epil.preheader, label %.lr.ph.us.new

.lr.ph.us.new:                                    ; preds = %.lr.ph.us, %.lr.ph.us.new
  %.039.us = phi i64 [ %i.dk, %.lr.ph.us.new ], [ 1, %.lr.ph.us ] ; 10 uses
  %.02438.us = phi double [ %i.dj, %.lr.ph.us.new ], [ %i.bc, %.lr.ph.us ]
  %niter = phi i64 [ %niter.next.7, %.lr.ph.us.new ], [ 0, %.lr.ph.us ]
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.pre4962, i64 %.039.us
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !2064
  %i.br = uitofp i64 %.039.us to double
  %i.bs = call double @pow(double noundef %i.bo, double noundef %i.br) #28
  %i.bt = call double @llvm.fmuladd.f64(double %i.bq, double %i.bs, double %.02438.us)
  %i.bu = add nuw nsw i64 %.039.us, 1             ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.pre4962, i64 %i.bu
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !2064
  %i.bx = uitofp i64 %i.bu to double
  %i.by = call double @pow(double noundef %i.bo, double noundef %i.bx) #28
  %i.bz = call double @llvm.fmuladd.f64(double %i.bw, double %i.by, double %i.bt)
  %i.ca = add nuw nsw i64 %.039.us, 2             ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.pre4962, i64 %i.ca
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !2064
  %i.cd = uitofp i64 %i.ca to double
  %i.ce = call double @pow(double noundef %i.bo, double noundef %i.cd) #28
  %i.cf = call double @llvm.fmuladd.f64(double %i.cc, double %i.ce, double %i.bz)
  %i.cg = add nuw nsw i64 %.039.us, 3             ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.pre4962, i64 %i.cg
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !2064
  %i.cj = uitofp i64 %i.cg to double
  %i.ck = call double @pow(double noundef %i.bo, double noundef %i.cj) #28
  %i.cl = call double @llvm.fmuladd.f64(double %i.ci, double %i.ck, double %i.cf)
  %i.cm = add nuw nsw i64 %.039.us, 4             ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.pre4962, i64 %i.cm
  %i.co = load double, ptr %i.cn, align 8, !tbaa !2064
  %i.cp = uitofp i64 %i.cm to double
  %i.cq = call double @pow(double noundef %i.bo, double noundef %i.cp) #28
  %i.cr = call double @llvm.fmuladd.f64(double %i.co, double %i.cq, double %i.cl)
  %i.cs = add nuw nsw i64 %.039.us, 5             ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.pre4962, i64 %i.cs
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !2064
  %i.cv = uitofp i64 %i.cs to double
  %i.cw = call double @pow(double noundef %i.bo, double noundef %i.cv) #28
  %i.cx = call double @llvm.fmuladd.f64(double %i.cu, double %i.cw, double %i.cr)
  %i.cy = add nuw nsw i64 %.039.us, 6             ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.pre4962, i64 %i.cy
  %i.da = load double, ptr %i.cz, align 8, !tbaa !2064
  %i.db = uitofp i64 %i.cy to double
  %i.dc = call double @pow(double noundef %i.bo, double noundef %i.db) #28
  %i.dd = call double @llvm.fmuladd.f64(double %i.da, double %i.dc, double %i.cx)
  %i.de = add nuw i64 %.039.us, 7                 ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %.pre4962, i64 %i.de
  %i.dg = load double, ptr %i.df, align 8, !tbaa !2064
  %i.dh = uitofp i64 %i.de to double
  %i.di = call double @pow(double noundef %i.bo, double noundef %i.dh) #28
  %i.dj = call double @llvm.fmuladd.f64(double %i.dg, double %i.di, double %i.dd) ; 3 uses
  %i.dk = add nuw i64 %.039.us, 8                 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.us.unr-lcssa, label %.lr.ph.us.new, !llvm.loop !3189

._crit_edge.us.unr-lcssa:                         ; preds = %.lr.ph.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.lr.ph.us
  %.039.us.epil.init = phi i64 [ 1, %.lr.ph.us ], [ %i.dk, %._crit_edge.us.unr-lcssa ]
  %.02438.us.epil.init = phi double [ %i.bc, %.lr.ph.us ], [ %i.dj, %._crit_edge.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod78)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader
  %.039.us.epil = phi i64 [ %.039.us.epil.init, %.epil.preheader ], [ %i.dq, %bb.k ] ; 3 uses
  %.02438.us.epil = phi double [ %.02438.us.epil.init, %.epil.preheader ], [ %i.dp, %bb.k ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.k ]
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.pre4962, i64 %.039.us.epil
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !2064
  %i.dn = uitofp i64 %.039.us.epil to double
  %i.do = call double @pow(double noundef %i.bo, double noundef %i.dn) #28
  %i.dp = call double @llvm.fmuladd.f64(double %i.dm, double %i.do, double %.02438.us.epil) ; 2 uses
  %i.dq = add nuw i64 %.039.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.k, !llvm.loop !3190

._crit_edge.us:                                   ; preds = %bb.k, %._crit_edge.us.unr-lcssa
  %.lcssa = phi double [ %i.dj, %._crit_edge.us.unr-lcssa ], [ %i.dp, %bb.k ]
  %i.dr = fmul double %.lcssa, 6.553550e+04       ; 2 uses
  %i.ds = fcmp olt double %i.dr, 0.000000e+00
  %i.dt = select i1 %i.ds, double 0.000000e+00, double %i.dr ; 2 uses
  %i.du = fcmp ogt double %i.dt, 6.553500e+04
  %.sroa.speculated.us = select i1 %i.du, double 6.553500e+04, double %i.dt
  %i.dv = fptoui double %.sroa.speculated.us to i16
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %.02540.us
  store i16 %i.dv, ptr %i.dw, align 2, !tbaa !2039
  %i.dx = add nuw i64 %.02540.us, 1               ; 2 uses
  %exitcond47.not = icmp eq i64 %i.dx, %umax46
  br i1 %exitcond47.not, label %._crit_edge42.thread, label %.lr.ph.us, !llvm.loop !3191

iter.check:                                       ; preds = %.lr.ph41
  %i.dy = fmul double %i.bc, 6.553550e+04         ; 2 uses
  %i.dz = fcmp olt double %i.dy, 0.000000e+00
  %i.ea = select i1 %i.dz, double 0.000000e+00, double %i.dy ; 2 uses
  %i.eb = fcmp ogt double %i.ea, 6.553500e+04
  %.sroa.speculated = select i1 %i.eb, double 6.553500e+04, double %i.ea
  %i.ec = fptoui double %.sroa.speculated to i16  ; 3 uses
  %umax = call i64 @llvm.umax.i64(i64 %9, i64 1)  ; 4 uses
  %min.iters.check = icmp ult i64 %9, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check69 = icmp ult i64 %9, 64
  br i1 %min.iters.check69, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ed = and i64 %umax, 56
  %n.vec = and i64 %umax, -64                     ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i16> poison, i16 %i.ec, i64 0
  %broadcast.splat = shufflevector <16 x i16> %broadcast.splatinsert, <16 x i16> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %index ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 32
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 96
  store <16 x i16> %broadcast.splat, ptr %i.ee, align 2, !tbaa !2039
  store <16 x i16> %broadcast.splat, ptr %i.ef, align 2, !tbaa !2039
  store <16 x i16> %broadcast.splat, ptr %i.eg, align 2, !tbaa !2039
  store <16 x i16> %broadcast.splat, ptr %i.eh, align 2, !tbaa !2039
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.ei = icmp eq i64 %index.next, %n.vec
  br i1 %i.ei, label %middle.block, label %vector.body, !llvm.loop !3192

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %9, %n.vec
  br i1 %cmp.n, label %._crit_edge42.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ed, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !2058

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec70 = and i64 %umax, -8                    ; 3 uses
  %broadcast.splatinsert71 = insertelement <8 x i16> poison, i16 %i.ec, i64 0
  %broadcast.splat72 = shufflevector <8 x i16> %broadcast.splatinsert71, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index73 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next74, %vec.epilog.vector.body ] ; 2 uses
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %index73
  store <8 x i16> %broadcast.splat72, ptr %i.ej, align 2, !tbaa !2039
  %index.next74 = add nuw i64 %index73, 8         ; 2 uses
  %i.ek = icmp eq i64 %index.next74, %n.vec70
  br i1 %i.ek, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3193

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n75 = icmp eq i64 %9, %n.vec70
  br i1 %cmp.n75, label %._crit_edge42.thread, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.02540.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec70, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge42:                                    ; preds = %_ZNSt6vectorItSaItEE6resizeEm.exit
  %.not.i.i.i = icmp eq ptr %.pre49, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %._crit_edge42.thread

._crit_edge42.thread:                             ; preds = %vec.epilog.scalar.ph, %._crit_edge.us, %middle.block, %vec.epilog.middle.block, %._crit_edge42
  %.pre496366 = phi ptr [ %.pre49, %._crit_edge42 ], [ %.pre4962, %middle.block ], [ %.pre4962, %._crit_edge.us ], [ %.pre4962, %vec.epilog.middle.block ], [ %.pre4962, %vec.epilog.scalar.ph ] ; 2 uses
  %i.el = load ptr, ptr %i.ak, align 8, !tbaa !2063
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = ptrtoint ptr %.pre496366 to i64
  %i.eo = sub i64 %i.em, %i.en
  call void @_ZdlPvm(ptr noundef nonnull %.pre496366, i64 noundef %i.eo) #27
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %._crit_edge42, %._crit_edge42.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.02540 = phi i64 [ %i.eq, %vec.epilog.scalar.ph ], [ %.02540.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %.02540
  store i16 %i.ec, ptr %i.ep, align 2, !tbaa !2039
  %i.eq = add nuw i64 %.02540, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.eq, %umax
  br i1 %exitcond.not, label %._crit_edge42.thread, label %vec.epilog.scalar.ph, !llvm.loop !3194

bb.l:                                             ; preds = %bb.f
  %i.er = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !2063
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = ptrtoint ptr %i.aj to i64
  %i.ev = sub i64 %i.et, %i.eu
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ev) #27
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit35

_ZNSt6vectorIdSaIdEED2Ev.exit35:                  ; preds = %bb.f, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN8rawspeed10DngOpcodes12LookupOpcodeE, i64 16), ptr %0, align 8, !tbaa !212
  %i.ew = load ptr, ptr %i.a, align 8, !tbaa !2045 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ew, null
  br i1 %.not.i.i.i.i, label %_ZN8rawspeed10DngOpcodes12LookupOpcodeD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit35
  %i.ex = load ptr, ptr %i.d, align 8, !tbaa !2046
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = ptrtoint ptr %i.ew to i64
  %i.fa = sub i64 %i.ey, %i.ez
  call void @_ZdlPvm(ptr noundef nonnull %i.ew, i64 noundef %i.fa) #27, !inline_history !2047
  br label %_ZN8rawspeed10DngOpcodes12LookupOpcodeD2Ev.exit

_ZN8rawspeed10DngOpcodes12LookupOpcodeD2Ev.exit:  ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit35, %bb.m
  resume { ptr, i32 } %i.ai
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZSt10generate_nISt20back_insert_iteratorISt6vectorIdSaIdEEEmZN8rawspeed10DngOpcodes13PolynomialMapC1ERKNS5_8RawImageERNS5_10ByteStreamERKNS5_12iRectangle2DEEUlvE_ET_SH_T0_T1_(ptr %0, i64 noundef %1, ptr %2) local_unnamed_addr #1 comdat {
bb.a:
  %.not5 = icmp eq i64 %1, 0
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt20back_insert_iteratorISt6vectorIdSaIdEEEaSEOd.exit, %bb.a
  ret ptr %0

bb.b:                                             ; preds = %.lr.ph, %_ZNSt20back_insert_iteratorISt6vectorIdSaIdEEEaSEOd.exit
  %.06 = phi i64 [ %1, %.lr.ph ], [ %i.ar, %_ZNSt20back_insert_iteratorISt6vectorIdSaIdEEEaSEOd.exit ]
  %i.f = load i32, ptr %i.a, align 8, !tbaa !116  ; 2 uses
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %i.h = add nuw nsw i64 %i.g, 8
  %i.i = load i32, ptr %i.b, align 8, !tbaa !117  ; 3 uses
  %i.j = zext i32 %i.i to i64
  %.not.i.i.i.i.i.i = icmp samesign ugt i64 %i.h, %i.j
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %_ZZN8rawspeed10DngOpcodes13PolynomialMapC1ERKNS_8RawImageERNS_10ByteStreamERKNS_12iRectangle2DEENKUlvE_clEv.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #13
  unreachable

_ZZN8rawspeed10DngOpcodes13PolynomialMapC1ERKNS_8RawImageERNS_10ByteStreamERKNS_12iRectangle2DEENKUlvE_clEv.exit: ; preds = %bb.b
  %i.k = load i16, ptr %i.c, align 4, !tbaa !2005
  %i.l = icmp eq i16 %i.k, -8531
  %i.m = load ptr, ptr %2, align 8, !tbaa !118
  %i.n = icmp sgt i32 %i.i, -1
  tail call void @llvm.assume(i1 %i.n)
  %i.o = add nuw nsw i32 %i.f, 8                  ; 2 uses
  %i.p = icmp samesign ule i32 %i.o, %i.i
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.g
  %.0.copyload.i.i.i.i.i.i = load double, ptr %i.q, align 1 ; 2 uses
  %i.r = bitcast double %.0.copyload.i.i.i.i.i.i to i64
  %i.s = tail call i64 @llvm.bswap.i64(i64 %i.r)
  %i.t = bitcast i64 %i.s to double
  %i.u = select i1 %i.l, double %.0.copyload.i.i.i.i.i.i, double %i.t ; 2 uses
  store i32 %i.o, ptr %i.a, align 8, !tbaa !116
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !2062 ; 4 uses
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !2063
  %.not.i.i.i = icmp eq ptr %i.v, %i.w
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZZN8rawspeed10DngOpcodes13PolynomialMapC1ERKNS_8RawImageERNS_10ByteStreamERKNS_12iRectangle2DEENKUlvE_clEv.exit
  store double %i.u, ptr %i.v, align 8, !tbaa !2064
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.x, ptr %i.d, align 8, !tbaa !2062
  br label %_ZNSt20back_insert_iteratorISt6vectorIdSaIdEEEaSEOd.exit

bb.e:                                             ; preds = %_ZZN8rawspeed10DngOpcodes13PolynomialMapC1ERKNS_8RawImageERNS_10ByteStreamERKNS_12iRectangle2DEENKUlvE_clEv.exit
  %i.y = load ptr, ptr %0, align 8, !tbaa !2061   ; 4 uses
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = ptrtoint ptr %i.y to i64                ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa                     ; 5 uses
  %i.ac = icmp eq i64 %i.ab, 9223372036854775800
  br i1 %i.ac, label %bb.f, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #29
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.e
  %i.ad = ashr exact i64 %i.ab, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 1)
  %i.ae = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ad ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.ad
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 1152921504606846975)
  %i.ah = select i1 %i.af, i64 1152921504606846975, i64 %i.ag ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.ah, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.ai = shl nuw nsw i64 %i.ah, 3
  %i.aj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #26 ; 4 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 %i.ab ; 2 uses
  store double %i.u, ptr %i.ak, align 8, !tbaa !2064
  %i.al = icmp sgt i64 %i.ab, 0
  br i1 %i.al, label %bb.g, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aj, ptr align 8 %i.y, i64 %i.ab, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.g, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.not.i17.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i.i
  %i.an = load ptr, ptr %i.e, align 8, !tbaa !2063
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ap) #27
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i.i: ; preds = %bb.h, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i.i
  store ptr %i.aj, ptr %0, align 8, !tbaa !2061
  store ptr %i.am, ptr %i.d, align 8, !tbaa !2062
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ah
  store ptr %i.aq, ptr %i.e, align 8, !tbaa !2063
  br label %_ZNSt20back_insert_iteratorISt6vectorIdSaIdEEEaSEOd.exit

_ZNSt20back_insert_iteratorISt6vectorIdSaIdEEEaSEOd.exit: ; preds = %bb.d, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i.i
  %i.ar = add i64 %.06, -1                        ; 2 uses
  %.not = icmp eq i64 %i.ar, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !3195
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #16

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorItSaItEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2057 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !2045   ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 1                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2046
  %i.j = ptrtoint ptr %i.i to i64
end_hunk_0
