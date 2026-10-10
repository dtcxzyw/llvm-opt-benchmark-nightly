Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Number?download=true
inline.NumInlined: 2597
inline.NumDeleted: 451
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN8V3Number6setBitEic:bb.a
bb.f:                                             ; preds = %_ZN12V3NumberData3numEv.exit, %_ZN12V3NumberData3numEv.exit
  %i.ab = xor i32 %i.d, -1
  %i.ac = load i32, ptr %i.p, align 4, !tbaa !51
  %i.ad = and i32 %i.ac, %i.ab
  store i32 %i.ad, ptr %i.p, align 4, !tbaa !51
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !132
  %i.ag = or i32 %i.af, %i.d
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !132
  br label %bb.h

bb.g:                                             ; preds = %_ZN12V3NumberData3numEv.exit
  %i.ah = load <2 x i32>, ptr %i.p, align 4, !tbaa !66
  %i.ai = insertelement <2 x i32> poison, i32 %i.d, i64 0
  %i.aj = shufflevector <2 x i32> %i.ai, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ak = or <2 x i32> %i.ah, %i.aj
  store <2 x i32> %i.ak, ptr %i.p, align 4, !tbaa !66
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.f, %bb.g, %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK8V3Number5sizedEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.b = load i8, ptr %i.a, align 1
  %i.c = trunc i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK8V3Number5widthEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !47
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8V3NumberC2EPKS_ij(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i32 0, ptr %i.a, align 8, !tbaa !47
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  store i8 0, ptr %i.b, align 4, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1
  %i.e = and i8 %i.d, -128
  store i8 %i.e, ptr %i.c, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  invoke void @_ZN8V3Number4initEP7AstNodeib(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef null, i32 noundef %2, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = load i8, ptr %i.b, align 4, !tbaa !48
  %i.h = add i8 %i.g, -1
  %spec.select.i.i = icmp ult i8 %i.h, 2
  br i1 %spec.select.i.i, label %bb.d, label %bb.c, !prof !49

bb.c:                                             ; preds = %bb.b
  %i.i = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 242)
          to label %.noexc unwind label %bb.f     ; 0 uses

.noexc:                                           ; preds = %bb.c
  %i.j = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %.noexc5 unwind label %bb.f    ; 2 uses

.noexc5:                                          ; preds = %.noexc
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.118, i64 noundef 40)
          to label %.noexc6 unwind label %bb.f    ; 0 uses

.noexc6:                                          ; preds = %.noexc5
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %.noexc7 unwind label %bb.f

.noexc7:                                          ; preds = %.noexc6
  invoke void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.l) #32
          to label %.noexc8 unwind label %bb.f

.noexc8:                                          ; preds = %.noexc7
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.a, align 8, !tbaa !47
  %i.n = icmp slt i32 %i.m, 129
  %i.o = load ptr, ptr %0, align 8
  %spec.select.i = select i1 %i.n, ptr %0, ptr %i.o
  store i32 %3, ptr %spec.select.i, align 4, !tbaa !51
  invoke void @_ZN8V3Number11opCleanThisEb(ptr noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext false)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !43
  store ptr %i.r, ptr %i.p, align 8, !tbaa !43
  ret void

bb.f:                                             ; preds = %.noexc5, %.noexc7, %.noexc6, %.noexc, %bb.c, %bb.d, %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN12V3NumberDataD2Ev(ptr noundef nonnull align 8 dead_on_return(38) dereferenceable(40) %0) #30
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number5opMulERKS_S1_(ptr noundef nonnull returned align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  %i.b = icmp eq ptr %0, %2
  %.not43 = or i1 %i.a, %i.b
  br i1 %.not43, label %bb.b, label %bb.c, !prof !133

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2070) ; 0 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.73)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.e) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 3 uses
  %i.g = load i8, ptr %i.f, align 4, !tbaa !48
  %.not = icmp eq i8 %i.g, 1
  br i1 %.not, label %bb.e, label %bb.d, !prof !49

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2071) ; 0 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.74)
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8V3Number(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(56) %1)
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef signext 34)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.l) #32
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 4 uses
  %i.n = load i8, ptr %i.m, align 4, !tbaa !48
  %.not44 = icmp eq i8 %i.n, 1
  br i1 %.not44, label %bb.g, label %bb.f, !prof !49

bb.f:                                             ; preds = %bb.e
  %i.o = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2071) ; 0 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.74)
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8V3Number(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(56) %2)
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i8 noundef signext 34)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.s) #32
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.t = tail call noundef zeroext i1 @_ZNK8V3Number11isFourStateEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
  br i1 %i.t, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = tail call noundef zeroext i1 @_ZNK8V3Number11isFourStateEv(ptr noundef nonnull align 8 dereferenceable(56) %2)
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.v = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number11setAllBitsXEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 0 uses
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.w = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number7setZeroEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !47
  %.fr70 = freeze i32 %i.y                        ; 3 uses
  %i.z = icmp slt i32 %.fr70, 65
  br i1 %i.z, label %bb.k, label %.preheader56

.preheader56:                                     ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !47 ; 3 uses
  %i.ac = add nsw i32 %i.ab, 31
  %i.ad = sdiv i32 %i.ac, 32
  %i.ae = icmp sgt i32 %i.ab, 0
  br i1 %i.ae, label %.lr.ph64, label %._crit_edge

.lr.ph64:                                         ; preds = %.preheader56
  %i.af = load i8, ptr %i.f, align 4, !tbaa !48
  %i.ag = add i8 %i.af, -1
  %spec.select.i.i = icmp ult i8 %i.ag, 2
  %i.ah = icmp samesign ult i32 %i.ab, 129        ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  br i1 %spec.select.i.i, label %.lr.ph64.split, label %bb.l, !prof !49

.lr.ph64.split:                                   ; preds = %.lr.ph64
  %i.ak = add nuw nsw i32 %.fr70, 31
  %i.al = lshr i32 %i.ak, 5
  %i.am = icmp samesign ult i32 %.fr70, 129
  %i.an = zext nneg i32 %i.al to i64              ; 6 uses
  %smax113 = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 1)
  %wide.trip.count114 = zext nneg i32 %smax113 to i64 ; 2 uses
  br i1 %i.am, label %_ZNK12V3NumberData3numEv.exit.us, label %_ZNK12V3NumberData3numEv.exit

_ZNK12V3NumberData3numEv.exit.us:                 ; preds = %.lr.ph64.split, %.loopexit55.us
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %.loopexit55.us ], [ 0, %.lr.ph64.split ] ; 6 uses
  %i.ao = load ptr, ptr %1, align 8
  %spec.select.i.us = select i1 %i.ah, ptr %1, ptr %i.ao
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i.us, i64 %indvars.iv88
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !51 ; 2 uses
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = icmp eq i32 %i.aq, 0
  br i1 %i.as, label %.loopexit55.us, label %.preheader.us

.preheader.us:                                    ; preds = %_ZNK12V3NumberData3numEv.exit.us
  %i.at = load i32, ptr %i.ai, align 8, !tbaa !47
  %.fr = freeze i32 %i.at                         ; 3 uses
  %i.au = add nsw i32 %.fr, 31
  %i.av = sdiv i32 %i.au, 32
  %i.aw = icmp sgt i32 %.fr, 0
  br i1 %i.aw, label %.lr.ph60.us, label %.loopexit55.us

.lr.ph60.us:                                      ; preds = %.preheader.us
  %i.ax = load i8, ptr %i.m, align 4, !tbaa !48
  %i.ay = add i8 %i.ax, -1
  %spec.select.i.i45.us = icmp ult i8 %i.ay, 2
  br i1 %spec.select.i.i45.us, label %.lr.ph60.split.us, label %.split66.us, !prof !49

.lr.ph60.split.us:                                ; preds = %.lr.ph60.us
  %i.az = icmp samesign ult i32 %.fr, 129
  %smax109 = tail call i32 @llvm.smax.i32(i32 %i.av, i32 1)
  %wide.trip.count110 = zext nneg i32 %smax109 to i64 ; 2 uses
  br i1 %i.az, label %_ZNK12V3NumberData3numEv.exit47.us.us.us, label %_ZNK12V3NumberData3numEv.exit47.us.us

_ZNK12V3NumberData3numEv.exit47.us.us.us:         ; preds = %.lr.ph60.split.us, %.loopexit.us.us.us
  %indvars.iv106 = phi i64 [ %indvars.iv.next107, %.loopexit.us.us.us ], [ 0, %.lr.ph60.split.us ] ; 3 uses
  %indvars.iv101 = phi i64 [ %indvars.iv.next102, %.loopexit.us.us.us ], [ %indvars.iv88, %.lr.ph60.split.us ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv106
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !51 ; 2 uses
  %i.bc = icmp ne i32 %i.bb, 0
  %i.bd = add nuw nsw i64 %indvars.iv106, %indvars.iv88
  %i.be = icmp samesign ult i64 %i.bd, %i.an
  %or.cond131 = select i1 %i.bc, i1 %i.be, i1 false
  br i1 %or.cond131, label %.lr.ph.us.us.us, label %.loopexit.us.us.us

.lr.ph.us.us.us:                                  ; preds = %_ZNK12V3NumberData3numEv.exit47.us.us.us
  %i.bf = load i8, ptr %i.aj, align 4, !tbaa !48
  %i.bg = add i8 %i.bf, -1
  %spec.select.i.i48.us.us.us = icmp ult i8 %i.bg, 2
  br i1 %spec.select.i.i48.us.us.us, label %_ZN12V3NumberData3numEv.exit52.us.us.us.us.preheader, label %.split.us, !prof !49

_ZN12V3NumberData3numEv.exit52.us.us.us.us.preheader: ; preds = %.lr.ph.us.us.us
  %i.bh = zext i32 %i.bb to i64
  %i.bi = mul nuw i64 %i.bh, %i.ar
  br label %_ZN12V3NumberData3numEv.exit52.us.us.us.us

_ZN12V3NumberData3numEv.exit52.us.us.us.us:       ; preds = %_ZN12V3NumberData3numEv.exit52.us.us.us.us.preheader, %_ZN12V3NumberData3numEv.exit52.us.us.us.us
  %indvars.iv103 = phi i64 [ %indvars.iv101, %_ZN12V3NumberData3numEv.exit52.us.us.us.us.preheader ], [ %indvars.iv.next104.a, %_ZN12V3NumberData3numEv.exit52.us.us.us.us ] ; 2 uses
  %.03557.us.us.us.us = phi i64 [ %i.bi, %_ZN12V3NumberData3numEv.exit52.us.us.us.us.preheader ], [ %i.bo, %_ZN12V3NumberData3numEv.exit52.us.us.us.us ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv103 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !51
  %i.bl = zext i32 %i.bk to i64
  %i.bm = add nuw i64 %.03557.us.us.us.us, %i.bl  ; 2 uses
  %i.bn = trunc i64 %i.bm to i32
  store i32 %i.bn, ptr %i.bj, align 8, !tbaa !51
  %i.bo = lshr i64 %i.bm, 32                      ; 2 uses
  %i.bp = icmp ne i64 %i.bo, 0
  %indvars.iv.next104.a = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %i.bq = icmp samesign ult i64 %indvars.iv.next104.a, %i.an
  %or.cond.a = select i1 %i.bp, i1 %i.bq, i1 false
  br i1 %or.cond.a, label %_ZN12V3NumberData3numEv.exit52.us.us.us.us, label %.loopexit.us.us.us, !llvm.loop !261

.loopexit.us.us.us:                               ; preds = %_ZN12V3NumberData3numEv.exit52.us.us.us.us, %_ZNK12V3NumberData3numEv.exit47.us.us.us
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1
  %exitcond111.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count110
  br i1 %exitcond111.not, label %.loopexit55.us, label %_ZNK12V3NumberData3numEv.exit47.us.us.us, !llvm.loop !262

_ZNK12V3NumberData3numEv.exit47.us.us:            ; preds = %.lr.ph60.split.us, %.loopexit.us.us
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %.loopexit.us.us ], [ 0, %.lr.ph60.split.us ] ; 3 uses
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %.loopexit.us.us ], [ %indvars.iv88, %.lr.ph60.split.us ] ; 2 uses
  %i.br = load ptr, ptr %2, align 8
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv95
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !51 ; 2 uses
  %i.bu = icmp ne i32 %i.bt, 0
  %i.bv = add nuw nsw i64 %indvars.iv95, %indvars.iv88
  %i.bw = icmp samesign ult i64 %i.bv, %i.an
  %or.cond133 = select i1 %i.bu, i1 %i.bw, i1 false
  br i1 %or.cond133, label %.lr.ph.us.us, label %.loopexit.us.us

.lr.ph.us.us:                                     ; preds = %_ZNK12V3NumberData3numEv.exit47.us.us
  %i.bx = load i8, ptr %i.aj, align 4, !tbaa !48
  %i.by = add i8 %i.bx, -1
  %spec.select.i.i48.us.us = icmp ult i8 %i.by, 2
  br i1 %spec.select.i.i48.us.us, label %_ZN12V3NumberData3numEv.exit52.us.us.us.preheader, label %.split.us, !prof !49

_ZN12V3NumberData3numEv.exit52.us.us.us.preheader: ; preds = %.lr.ph.us.us
  %i.bz = zext i32 %i.bt to i64
  %i.ca = mul nuw i64 %i.bz, %i.ar
  br label %_ZN12V3NumberData3numEv.exit52.us.us.us

_ZN12V3NumberData3numEv.exit52.us.us.us:          ; preds = %_ZN12V3NumberData3numEv.exit52.us.us.us.preheader, %_ZN12V3NumberData3numEv.exit52.us.us.us
  %indvars.iv92 = phi i64 [ %indvars.iv90, %_ZN12V3NumberData3numEv.exit52.us.us.us.preheader ], [ %indvars.iv.next93.a, %_ZN12V3NumberData3numEv.exit52.us.us.us ] ; 2 uses
  %.03557.us.us.us = phi i64 [ %i.ca, %_ZN12V3NumberData3numEv.exit52.us.us.us.preheader ], [ %i.cg, %_ZN12V3NumberData3numEv.exit52.us.us.us ]
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv92 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !51
  %i.cd = zext i32 %i.cc to i64
  %i.ce = add nuw i64 %.03557.us.us.us, %i.cd     ; 2 uses
  %i.cf = trunc i64 %i.ce to i32
  store i32 %i.cf, ptr %i.cb, align 8, !tbaa !51
  %i.cg = lshr i64 %i.ce, 32                      ; 2 uses
  %i.ch = icmp ne i64 %i.cg, 0
  %indvars.iv.next93.a = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %i.ci = icmp samesign ult i64 %indvars.iv.next93.a, %i.an
  %or.cond68.a = select i1 %i.ch, i1 %i.ci, i1 false
  br i1 %or.cond68.a, label %_ZN12V3NumberData3numEv.exit52.us.us.us, label %.loopexit.us.us, !llvm.loop !261

.loopexit.us.us:                                  ; preds = %_ZN12V3NumberData3numEv.exit52.us.us.us, %_ZNK12V3NumberData3numEv.exit47.us.us
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  %exitcond100.not = icmp eq i64 %indvars.iv.next96, %wide.trip.count110
  br i1 %exitcond100.not, label %.loopexit55.us, label %_ZNK12V3NumberData3numEv.exit47.us.us, !llvm.loop !262

.loopexit55.us:                                   ; preds = %.loopexit.us.us, %.loopexit.us.us.us, %.preheader.us, %_ZNK12V3NumberData3numEv.exit.us
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %exitcond115.not = icmp eq i64 %indvars.iv.next89, %wide.trip.count114
  br i1 %exitcond115.not, label %._crit_edge, label %_ZNK12V3NumberData3numEv.exit.us, !llvm.loop !263

bb.k:                                             ; preds = %bb.j
  %i.cj = tail call noundef i64 @_ZNK8V3Number7toUQuadEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
  %i.ck = tail call noundef i64 @_ZNK8V3Number7toUQuadEv(ptr noundef nonnull align 8 dereferenceable(56) %2)
  %i.cl = mul i64 %i.ck, %i.cj
  %i.cm = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number7setQuadEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.cl) ; 0 uses
  tail call void @_ZN8V3Number11opCleanThisEb(ptr noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext false)
  br label %bb.m

._crit_edge:                                      ; preds = %.loopexit55, %.loopexit55.us, %.preheader56
  tail call void @_ZN8V3Number11opCleanThisEb(ptr noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext false)
  br label %bb.m

_ZNK12V3NumberData3numEv.exit:                    ; preds = %.lr.ph64.split, %.loopexit55
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit55 ], [ 0, %.lr.ph64.split ] ; 4 uses
  %i.cn = load ptr, ptr %1, align 8
  %spec.select.i = select i1 %i.ah, ptr %1, ptr %i.cn
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i, i64 %indvars.iv
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !51 ; 2 uses
  %i.cq = zext i32 %i.cp to i64
  %i.cr = icmp eq i32 %i.cp, 0
  br i1 %i.cr, label %.loopexit55, label %.preheader

bb.l:                                             ; preds = %.lr.ph64
  %i.cs = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 246) ; 0 uses
  %i.ct = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.cu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, ptr noundef nonnull @.str.118)
  %i.cv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.cu, ptr noundef nonnull align 1 dereferenceable(1) %i.f)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.cv) #32
  unreachable

.preheader:                                       ; preds = %_ZNK12V3NumberData3numEv.exit
  %i.cw = load i32, ptr %i.ai, align 8, !tbaa !47 ; 3 uses
  %i.cx = add nuw nsw i32 %i.cw, 31
  %i.cy = sdiv i32 %i.cx, 32
  %i.cz = icmp sgt i32 %i.cw, 0
  br i1 %i.cz, label %.lr.ph60, label %.loopexit55

.lr.ph60:                                         ; preds = %.preheader
  %i.da = load i8, ptr %i.m, align 4, !tbaa !48
  %i.db = add i8 %i.da, -1
  %spec.select.i.i45 = icmp ult i8 %i.db, 2
  %i.dc = icmp samesign ult i32 %i.cw, 129
  br i1 %spec.select.i.i45, label %_ZNK12V3NumberData3numEv.exit47.preheader, label %.split66.us, !prof !49

_ZNK12V3NumberData3numEv.exit47.preheader:        ; preds = %.lr.ph60
  %smax = tail call i32 @llvm.smax.i32(i32 %i.cy, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %_ZNK12V3NumberData3numEv.exit47

_ZNK12V3NumberData3numEv.exit47:                  ; preds = %_ZNK12V3NumberData3numEv.exit47.preheader, %.loopexit
  %indvars.iv81 = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit47.preheader ], [ %indvars.iv.next82, %.loopexit ] ; 3 uses
  %indvars.iv76 = phi i64 [ %indvars.iv, %_ZNK12V3NumberData3numEv.exit47.preheader ], [ %indvars.iv.next77, %.loopexit ] ; 2 uses
  %i.dd = load ptr, ptr %2, align 8
  %spec.select.i46 = select i1 %i.dc, ptr %2, ptr %i.dd
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i46, i64 %indvars.iv81
  %i.df = load i32, ptr %i.de, align 4, !tbaa !51 ; 2 uses
  %i.dg = icmp ne i32 %i.df, 0
  %i.dh = add nuw nsw i64 %indvars.iv81, %indvars.iv
  %i.di = icmp samesign ult i64 %i.dh, %i.an
  %or.cond135 = select i1 %i.dg, i1 %i.di, i1 false
  br i1 %or.cond135, label %.lr.ph, label %.loopexit

.split66.us:                                      ; preds = %.lr.ph60, %.lr.ph60.us
  %i.dj = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 246) ; 0 uses
  %i.dk = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.dl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.dk, ptr noundef nonnull @.str.118)
  %i.dm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.dl, ptr noundef nonnull align 1 dereferenceable(1) %i.m)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.dm) #32
  unreachable

.lr.ph:                                           ; preds = %_ZNK12V3NumberData3numEv.exit47
  %i.dn = load i8, ptr %i.aj, align 4, !tbaa !48
  %i.do = add i8 %i.dn, -1
  %spec.select.i.i48 = icmp ult i8 %i.do, 2
  br i1 %spec.select.i.i48, label %_ZN12V3NumberData3numEv.exit52.preheader, label %.split.us, !prof !49

_ZN12V3NumberData3numEv.exit52.preheader:         ; preds = %.lr.ph
  %i.dp = zext i32 %i.df to i64
  %i.dq = mul nuw i64 %i.dp, %i.cq
  br label %_ZN12V3NumberData3numEv.exit52

_ZN12V3NumberData3numEv.exit52:                   ; preds = %_ZN12V3NumberData3numEv.exit52.preheader, %_ZN12V3NumberData3numEv.exit52
  %indvars.iv78 = phi i64 [ %indvars.iv76, %_ZN12V3NumberData3numEv.exit52.preheader ], [ %indvars.iv.next79, %_ZN12V3NumberData3numEv.exit52 ] ; 2 uses
  %.03557 = phi i64 [ %i.dq, %_ZN12V3NumberData3numEv.exit52.preheader ], [ %i.dx, %_ZN12V3NumberData3numEv.exit52 ]
  %i.dr = load ptr, ptr %0, align 8
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv78 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !51
  %i.du = zext i32 %i.dt to i64
  %i.dv = add nuw i64 %.03557, %i.du              ; 2 uses
  %i.dw = trunc i64 %i.dv to i32
  store i32 %i.dw, ptr %i.ds, align 4, !tbaa !51
  %i.dx = lshr i64 %i.dv, 32                      ; 2 uses
  %i.dy = icmp ne i64 %i.dx, 0
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %i.dz = icmp samesign ult i64 %indvars.iv.next79, %i.an
  %or.cond69 = select i1 %i.dy, i1 %i.dz, i1 false
  br i1 %or.cond69, label %_ZN12V3NumberData3numEv.exit52, label %.loopexit, !llvm.loop !261

.split.us:                                        ; preds = %.lr.ph, %.lr.ph.us.us, %.lr.ph.us.us.us
  %i.ea = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 242) ; 0 uses
  %i.eb = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.ec = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.eb, ptr noundef nonnull @.str.118)
  %i.ed = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.ec, ptr noundef nonnull align 1 dereferenceable(1) %i.aj)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.ed) #32
  unreachable

.loopexit:                                        ; preds = %_ZN12V3NumberData3numEv.exit52, %_ZNK12V3NumberData3numEv.exit47
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next82, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit55, label %_ZNK12V3NumberData3numEv.exit47, !llvm.loop !262

.loopexit55:                                      ; preds = %.loopexit, %.preheader, %_ZNK12V3NumberData3numEv.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond87.not = icmp eq i64 %indvars.iv.next, %wide.trip.count114
  br i1 %exitcond87.not, label %._crit_edge, label %_ZNK12V3NumberData3numEv.exit, !llvm.loop !263

bb.m:                                             ; preds = %bb.k, %._crit_edge, %bb.i
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number5opAddERKS_S1_(ptr noundef nonnull returned align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  %i.b = icmp eq ptr %0, %2
  %.not24 = or i1 %i.a, %i.b
  br i1 %.not24, label %bb.b, label %bb.c, !prof !133

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2042) ; 0 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.73)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.e) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 3 uses
  %i.g = load i8, ptr %i.f, align 4, !tbaa !48
  %.not = icmp eq i8 %i.g, 1
  br i1 %.not, label %bb.e, label %bb.d, !prof !49

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2043) ; 0 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.74)
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8V3Number(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(56) %1)
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef signext 34)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.l) #32
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 3 uses
  %i.n = load i8, ptr %i.m, align 4, !tbaa !48
  %.not25 = icmp eq i8 %i.n, 1
  br i1 %.not25, label %bb.g, label %bb.f, !prof !49

bb.f:                                             ; preds = %bb.e
  %i.o = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2043) ; 0 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.74)
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8V3Number(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(56) %2)
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i8 noundef signext 34)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.s) #32
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.t = tail call noundef zeroext i1 @_ZNK8V3Number11isFourStateEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
  br i1 %i.t, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = tail call noundef zeroext i1 @_ZNK8V3Number11isFourStateEv(ptr noundef nonnull align 8 dereferenceable(56) %2)
  br i1 %i.u, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !47   ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph60, label %_ZN8V3Number11setAllBitsXEv.exit

.lr.ph60:                                         ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.z = load i8, ptr %i.y, align 4, !tbaa !48
  %i.aa = add i8 %i.z, -1
  %spec.select.i.i31 = icmp ult i8 %i.aa, 2
  br i1 %spec.select.i.i31, label %_ZN12V3NumberData3numEv.exit33, label %bb.j, !prof !49

_ZN12V3NumberData3numEv.exit33:                   ; preds = %.lr.ph60, %_ZN12V3NumberData3numEv.exit33
  %indvars.iv106 = phi i64 [ %indvars.iv.next107, %_ZN12V3NumberData3numEv.exit33 ], [ 0, %.lr.ph60 ] ; 2 uses
  %i.ab = phi i32 [ %i.af, %_ZN12V3NumberData3numEv.exit33 ], [ %i.w, %.lr.ph60 ]
  %i.ac = icmp slt i32 %i.ab, 129
  %i.ad = load ptr, ptr %0, align 8
  %spec.select.i32 = select i1 %i.ac, ptr %0, ptr %i.ad
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i32, i64 %indvars.iv106 ; 2 uses
  store i32 -1, ptr %i.ae, align 4, !tbaa !66
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i32 -1, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !66
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %i.af = load i32, ptr %i.v, align 8, !tbaa !47  ; 2 uses
  %i.ag = add nsw i32 %i.af, 31
  %i.ah = sdiv i32 %i.ag, 32
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next107, %i.ai
  br i1 %i.aj, label %_ZN12V3NumberData3numEv.exit33, label %_ZN8V3Number11setAllBitsXEv.exit, !llvm.loop !2

bb.j:                                             ; preds = %.lr.ph60
  %i.ak = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 242) ; 0 uses
  %i.al = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.am = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull @.str.118)
  %i.an = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 1 dereferenceable(1) %i.y)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.an) #32
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.ao = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number7setZeroEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !47
  %.fr62 = freeze i32 %i.aq                       ; 7 uses
  %i.ar = add nsw i32 %.fr62, 31
  %i.as = sdiv i32 %i.ar, 32
  %i.at = icmp sgt i32 %.fr62, 0
  br i1 %i.at, label %.lr.ph, label %_ZN8V3Number11setAllBitsXEv.exit

.lr.ph:                                           ; preds = %bb.k
  %i.au = load i8, ptr %i.f, align 4, !tbaa !48
  %i.av = add i8 %i.au, -1
  %spec.select.i.i = icmp ult i8 %i.av, 2
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.az = icmp samesign ult i32 %.fr62, 129       ; 6 uses
  br i1 %spec.select.i.i, label %.lr.ph.split, label %bb.l, !prof !49

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ba = load i8, ptr %i.m, align 4, !tbaa !48
  %i.bb = add i8 %i.ba, -1
  %spec.select.i.i26 = icmp ult i8 %i.bb, 2
  br i1 %spec.select.i.i26, label %.lr.ph.split.split, label %bb.m, !prof !49

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.bc = load i8, ptr %i.aw, align 4, !tbaa !48
  %i.bd = add i8 %i.bc, -1
  %spec.select.i.i29 = icmp ult i8 %i.bd, 2
  br i1 %spec.select.i.i29, label %.lr.ph.split.split.split, label %bb.n, !prof !49

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  %i.be = load i32, ptr %i.ax, align 8, !tbaa !47
  %.fr61 = freeze i32 %i.be
  %i.bf = icmp slt i32 %.fr61, 129
  %i.bg = load i32, ptr %i.ay, align 8, !tbaa !47
  %.fr = freeze i32 %i.bg
  %i.bh = icmp slt i32 %.fr, 129                  ; 2 uses
  %smax103 = tail call i32 @llvm.smax.i32(i32 %i.as, i32 1) ; 8 uses
  %wide.trip.count104 = zext nneg i32 %smax103 to i64 ; 14 uses
  br i1 %i.bf, label %.lr.ph.split.split.split.split.us, label %.lr.ph.split.split.split.split

.lr.ph.split.split.split.split.us:                ; preds = %.lr.ph.split.split.split
  br i1 %i.bh, label %_ZNK12V3NumberData3numEv.exit.us.us.preheader, label %.lr.ph.split.split.split.split.us.split

_ZNK12V3NumberData3numEv.exit.us.us.preheader:    ; preds = %.lr.ph.split.split.split.split.us
  %xtraiter158 = and i64 %wide.trip.count104, 1
  %i.bi = icmp slt i32 %.fr62, 33
  br i1 %i.bi, label %_ZNK12V3NumberData3numEv.exit.us.us.epil.preheader, label %_ZNK12V3NumberData3numEv.exit.us.us.preheader.new

_ZNK12V3NumberData3numEv.exit.us.us.preheader.new: ; preds = %_ZNK12V3NumberData3numEv.exit.us.us.preheader
  %unroll_iter161 = and i64 %wide.trip.count104, 67108862
  br label %_ZNK12V3NumberData3numEv.exit.us.us

_ZNK12V3NumberData3numEv.exit.us.us:              ; preds = %_ZNK12V3NumberData3numEv.exit.us.us, %_ZNK12V3NumberData3numEv.exit.us.us.preheader.new
  %indvars.iv100 = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit.us.us.preheader.new ], [ %indvars.iv.next101.1, %_ZNK12V3NumberData3numEv.exit.us.us ] ; 5 uses
  %.02138.us.us = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit.us.us.preheader.new ], [ %i.ci, %_ZNK12V3NumberData3numEv.exit.us.us ]
  %niter162 = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit.us.us.preheader.new ], [ %niter162.next.1, %_ZNK12V3NumberData3numEv.exit.us.us ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv100
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !51
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv100
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !51
  %i.bo = zext i32 %i.bn to i64
  %i.bp = add nuw nsw i64 %.02138.us.us, %i.bl
  %i.bq = add nuw nsw i64 %i.bp, %i.bo            ; 2 uses
  %i.br = trunc i64 %i.bq to i32
  %i.bs = load ptr, ptr %0, align 8
  %spec.select.i30.us.us = select i1 %i.az, ptr %0, ptr %i.bs
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i30.us.us, i64 %indvars.iv100
  store i32 %i.br, ptr %i.bt, align 4, !tbaa !51
  %i.bu = icmp samesign ugt i64 %i.bq, 4294967295
  %i.bv = zext i1 %i.bu to i64
  %indvars.iv.next101 = or disjoint i64 %indvars.iv100, 1 ; 3 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next101
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !51
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next101
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !51
  %i.cb = zext i32 %i.ca to i64
  %i.cc = add nuw nsw i64 %i.bv, %i.by
  %i.cd = add nuw nsw i64 %i.cc, %i.cb            ; 2 uses
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = load ptr, ptr %0, align 8
  %spec.select.i30.us.us.1 = select i1 %i.az, ptr %0, ptr %i.cf
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i30.us.us.1, i64 %indvars.iv.next101
  store i32 %i.ce, ptr %i.cg, align 4, !tbaa !51
  %i.ch = icmp samesign ugt i64 %i.cd, 4294967295
  %i.ci = zext i1 %i.ch to i64                    ; 2 uses
  %indvars.iv.next101.1 = add nuw nsw i64 %indvars.iv100, 2 ; 2 uses
  %niter162.next.1 = add i64 %niter162, 2         ; 2 uses
  %niter162.ncmp.1 = icmp eq i64 %niter162.next.1, %unroll_iter161
  br i1 %niter162.ncmp.1, label %_ZN8V3Number11setAllBitsXEv.exit.loopexit125.unr-lcssa, label %_ZNK12V3NumberData3numEv.exit.us.us, !llvm.loop !264

.lr.ph.split.split.split.split.us.split:          ; preds = %.lr.ph.split.split.split.split.us
  br i1 %i.az, label %_ZNK12V3NumberData3numEv.exit.us.us53.preheader, label %_ZNK12V3NumberData3numEv.exit.us.preheader

_ZNK12V3NumberData3numEv.exit.us.preheader:       ; preds = %.lr.ph.split.split.split.split.us.split
  %xtraiter148 = and i64 %wide.trip.count104, 1
  %unroll_iter151 = and i64 %wide.trip.count104, 67108862
  br label %_ZNK12V3NumberData3numEv.exit.us

end_hunk_0
