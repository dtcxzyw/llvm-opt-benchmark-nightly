Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Number?download=true
inline.NumInlined: 2597
inline.NumDeleted: 451
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 36
begin_hunk_0_@strlen
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
  br i1 %i.az, label %_ZNK12V3NumberData3numEv.exit47.us.us.us, label %_ZNK12V3NumberData3numEv.exit47.us.us.preheader

_ZNK12V3NumberData3numEv.exit47.us.us.preheader:  ; preds = %.lr.ph60.split.us
  %.pre118 = load ptr, ptr %2, align 8
  br label %_ZNK12V3NumberData3numEv.exit47.us.us

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
  %indvars.iv103 = phi i64 [ %indvars.iv101, %_ZN12V3NumberData3numEv.exit52.us.us.us.us.preheader ], [ %indvars.iv.next104, %_ZN12V3NumberData3numEv.exit52.us.us.us.us ] ; 2 uses
  %.03557.us.us.us.us = phi i64 [ %i.bi, %_ZN12V3NumberData3numEv.exit52.us.us.us.us.preheader ], [ %i.bo, %_ZN12V3NumberData3numEv.exit52.us.us.us.us ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv103 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !51
  %i.bl = zext i32 %i.bk to i64
  %i.bm = add nuw i64 %.03557.us.us.us.us, %i.bl  ; 2 uses
  %i.bn = trunc i64 %i.bm to i32
  store i32 %i.bn, ptr %i.bj, align 8, !tbaa !51
  %i.bo = lshr i64 %i.bm, 32                      ; 2 uses
  %i.bp = icmp ne i64 %i.bo, 0
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %i.bq = icmp samesign ult i64 %indvars.iv.next104, %i.an
  %or.cond = select i1 %i.bp, i1 %i.bq, i1 false
  br i1 %or.cond, label %_ZN12V3NumberData3numEv.exit52.us.us.us.us, label %.loopexit.us.us.us, !llvm.loop !261

.loopexit.us.us.us:                               ; preds = %_ZN12V3NumberData3numEv.exit52.us.us.us.us, %_ZNK12V3NumberData3numEv.exit47.us.us.us
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1
  %exitcond111.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count110
  br i1 %exitcond111.not, label %.loopexit55.us, label %_ZNK12V3NumberData3numEv.exit47.us.us.us, !llvm.loop !262

_ZNK12V3NumberData3numEv.exit47.us.us:            ; preds = %_ZNK12V3NumberData3numEv.exit47.us.us.preheader, %.loopexit.us.us
  %3 = phi ptr [ %.pre118, %_ZNK12V3NumberData3numEv.exit47.us.us.preheader ], [ %4, %.loopexit.us.us ] ; 2 uses
  %indvars.iv90.a = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit47.us.us.preheader ], [ %indvars.iv.next96, %.loopexit.us.us ] ; 3 uses
  %indvars.iv90 = phi i64 [ %indvars.iv88, %_ZNK12V3NumberData3numEv.exit47.us.us.preheader ], [ %indvars.iv.next91, %.loopexit.us.us ] ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv90.a
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !51 ; 2 uses
  %i.bt = icmp ne i32 %i.bs, 0
  %i.bu = add nuw nsw i64 %indvars.iv90.a, %indvars.iv88
  %i.bv = icmp samesign ult i64 %i.bu, %i.an
  %or.cond133 = select i1 %i.bt, i1 %i.bv, i1 false
  br i1 %or.cond133, label %.lr.ph.us.us, label %.loopexit.us.us

.lr.ph.us.us:                                     ; preds = %_ZNK12V3NumberData3numEv.exit47.us.us
  %i.bw = load i8, ptr %i.aj, align 4, !tbaa !48
  %i.bx = add i8 %i.bw, -1
  %spec.select.i.i48.us.us = icmp ult i8 %i.bx, 2
  br i1 %spec.select.i.i48.us.us, label %_ZN12V3NumberData3numEv.exit52.us.us.us.preheader, label %.split.us, !prof !49

_ZN12V3NumberData3numEv.exit52.us.us.us.preheader: ; preds = %.lr.ph.us.us
  %i.by = zext i32 %i.bs to i64
  %i.bz = mul nuw i64 %i.by, %i.ar
  br label %_ZN12V3NumberData3numEv.exit52.us.us.us

_ZN12V3NumberData3numEv.exit52.us.us.us:          ; preds = %_ZN12V3NumberData3numEv.exit52.us.us.us.preheader, %_ZN12V3NumberData3numEv.exit52.us.us.us
  %indvars.iv92 = phi i64 [ %indvars.iv90, %_ZN12V3NumberData3numEv.exit52.us.us.us.preheader ], [ %indvars.iv.next93, %_ZN12V3NumberData3numEv.exit52.us.us.us ] ; 2 uses
  %.03557.us.us.us = phi i64 [ %i.bz, %_ZN12V3NumberData3numEv.exit52.us.us.us.preheader ], [ %i.cf, %_ZN12V3NumberData3numEv.exit52.us.us.us ]
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv92 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !51
  %i.cc = zext i32 %i.cb to i64
  %i.cd = add nuw i64 %.03557.us.us.us, %i.cc     ; 2 uses
  %i.ce = trunc i64 %i.cd to i32
  store i32 %i.ce, ptr %i.ca, align 8, !tbaa !51
  %i.cf = lshr i64 %i.cd, 32                      ; 2 uses
  %i.cg = icmp ne i64 %i.cf, 0
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %i.ch = icmp samesign ult i64 %indvars.iv.next93, %i.an
  %or.cond68 = select i1 %i.cg, i1 %i.ch, i1 false
  br i1 %or.cond68, label %_ZN12V3NumberData3numEv.exit52.us.us.us, label %.loopexit.us.us.loopexit, !llvm.loop !261

.loopexit.us.us.loopexit:                         ; preds = %_ZN12V3NumberData3numEv.exit52.us.us.us
  %.pre117 = load ptr, ptr %2, align 8
  br label %.loopexit.us.us

.loopexit.us.us:                                  ; preds = %.loopexit.us.us.loopexit, %_ZNK12V3NumberData3numEv.exit47.us.us
  %4 = phi ptr [ %.pre117, %.loopexit.us.us.loopexit ], [ %3, %_ZNK12V3NumberData3numEv.exit47.us.us ]
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv90.a, 1 ; 2 uses
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  %exitcond100.not = icmp eq i64 %indvars.iv.next96, %wide.trip.count110
  br i1 %exitcond100.not, label %.loopexit55.us, label %_ZNK12V3NumberData3numEv.exit47.us.us, !llvm.loop !262

.loopexit55.us:                                   ; preds = %.loopexit.us.us, %.loopexit.us.us.us, %.preheader.us, %_ZNK12V3NumberData3numEv.exit.us
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %exitcond115.not = icmp eq i64 %indvars.iv.next89, %wide.trip.count114
  br i1 %exitcond115.not, label %._crit_edge, label %_ZNK12V3NumberData3numEv.exit.us, !llvm.loop !263

bb.k:                                             ; preds = %bb.j
  %i.ci = tail call noundef i64 @_ZNK8V3Number7toUQuadEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
  %i.cj = tail call noundef i64 @_ZNK8V3Number7toUQuadEv(ptr noundef nonnull align 8 dereferenceable(56) %2)
  %i.ck = mul i64 %i.cj, %i.ci
  %i.cl = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number7setQuadEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.ck) ; 0 uses
  tail call void @_ZN8V3Number11opCleanThisEb(ptr noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext false)
  br label %bb.m

._crit_edge:                                      ; preds = %.loopexit55, %.loopexit55.us, %.preheader56
  tail call void @_ZN8V3Number11opCleanThisEb(ptr noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext false)
  br label %bb.m

_ZNK12V3NumberData3numEv.exit:                    ; preds = %.lr.ph64.split, %.loopexit55
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit55 ], [ 0, %.lr.ph64.split ] ; 4 uses
  %i.cm = load ptr, ptr %1, align 8
  %spec.select.i = select i1 %i.ah, ptr %1, ptr %i.cm
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i, i64 %indvars.iv
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !51 ; 2 uses
  %i.cp = zext i32 %i.co to i64
  %i.cq = icmp eq i32 %i.co, 0
  br i1 %i.cq, label %.loopexit55, label %.preheader

bb.l:                                             ; preds = %.lr.ph64
  %i.cr = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 246) ; 0 uses
  %i.cs = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.ct = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.cs, ptr noundef nonnull @.str.118)
  %i.cu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, ptr noundef nonnull align 1 dereferenceable(1) %i.f)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.cu) #32
  unreachable

.preheader:                                       ; preds = %_ZNK12V3NumberData3numEv.exit
  %i.cv = load i32, ptr %i.ai, align 8, !tbaa !47 ; 3 uses
  %i.cw = add nuw nsw i32 %i.cv, 31
  %i.cx = sdiv i32 %i.cw, 32
  %i.cy = icmp sgt i32 %i.cv, 0
  br i1 %i.cy, label %.lr.ph60, label %.loopexit55

.lr.ph60:                                         ; preds = %.preheader
  %i.cz = load i8, ptr %i.m, align 4, !tbaa !48
  %i.da = add i8 %i.cz, -1
  %spec.select.i.i45 = icmp ult i8 %i.da, 2
  %i.db = icmp samesign ult i32 %i.cv, 129
  br i1 %spec.select.i.i45, label %_ZNK12V3NumberData3numEv.exit47.preheader, label %.split66.us, !prof !49

_ZNK12V3NumberData3numEv.exit47.preheader:        ; preds = %.lr.ph60
  %smax = tail call i32 @llvm.smax.i32(i32 %i.cx, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  %.pre116 = load ptr, ptr %2, align 8
  br label %_ZNK12V3NumberData3numEv.exit47

_ZNK12V3NumberData3numEv.exit47:                  ; preds = %_ZNK12V3NumberData3numEv.exit47.preheader, %.loopexit
  %5 = phi ptr [ %.pre116, %_ZNK12V3NumberData3numEv.exit47.preheader ], [ %6, %.loopexit ] ; 2 uses
  %indvars.iv76.a = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit47.preheader ], [ %indvars.iv.next82, %.loopexit ] ; 3 uses
  %indvars.iv76 = phi i64 [ %indvars.iv, %_ZNK12V3NumberData3numEv.exit47.preheader ], [ %indvars.iv.next77, %.loopexit ] ; 2 uses
  %spec.select.i46 = select i1 %i.db, ptr %2, ptr %5
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i46, i64 %indvars.iv76.a
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !51 ; 2 uses
  %i.de = icmp ne i32 %i.dd, 0
  %i.df = add nuw nsw i64 %indvars.iv76.a, %indvars.iv
  %i.dg = icmp samesign ult i64 %i.df, %i.an
  %or.cond135 = select i1 %i.de, i1 %i.dg, i1 false
  br i1 %or.cond135, label %.lr.ph, label %.loopexit

.split66.us:                                      ; preds = %.lr.ph60, %.lr.ph60.us
  %i.dh = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 246) ; 0 uses
  %i.di = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.dj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.di, ptr noundef nonnull @.str.118)
  %i.dk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.dj, ptr noundef nonnull align 1 dereferenceable(1) %i.m)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.dk) #32
  unreachable

.lr.ph:                                           ; preds = %_ZNK12V3NumberData3numEv.exit47
  %i.dl = load i8, ptr %i.aj, align 4, !tbaa !48
  %i.dm = add i8 %i.dl, -1
  %spec.select.i.i48 = icmp ult i8 %i.dm, 2
  br i1 %spec.select.i.i48, label %_ZN12V3NumberData3numEv.exit52.preheader, label %.split.us, !prof !49

_ZN12V3NumberData3numEv.exit52.preheader:         ; preds = %.lr.ph
  %i.dn = zext i32 %i.dd to i64
  %i.do = mul nuw i64 %i.dn, %i.cp
  br label %_ZN12V3NumberData3numEv.exit52

_ZN12V3NumberData3numEv.exit52:                   ; preds = %_ZN12V3NumberData3numEv.exit52.preheader, %_ZN12V3NumberData3numEv.exit52
  %indvars.iv78 = phi i64 [ %indvars.iv76, %_ZN12V3NumberData3numEv.exit52.preheader ], [ %indvars.iv.next79, %_ZN12V3NumberData3numEv.exit52 ] ; 2 uses
  %.03557 = phi i64 [ %i.do, %_ZN12V3NumberData3numEv.exit52.preheader ], [ %i.dv, %_ZN12V3NumberData3numEv.exit52 ]
  %i.dp = load ptr, ptr %0, align 8
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv78 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !51
  %i.ds = zext i32 %i.dr to i64
  %i.dt = add nuw i64 %.03557, %i.ds              ; 2 uses
  %i.du = trunc i64 %i.dt to i32
  store i32 %i.du, ptr %i.dq, align 4, !tbaa !51
  %i.dv = lshr i64 %i.dt, 32                      ; 2 uses
  %i.dw = icmp ne i64 %i.dv, 0
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %i.dx = icmp samesign ult i64 %indvars.iv.next79, %i.an
  %or.cond69 = select i1 %i.dw, i1 %i.dx, i1 false
  br i1 %or.cond69, label %_ZN12V3NumberData3numEv.exit52, label %.loopexit.loopexit, !llvm.loop !261

.split.us:                                        ; preds = %.lr.ph, %.lr.ph.us.us, %.lr.ph.us.us.us
  %i.dy = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 242) ; 0 uses
  %i.dz = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.ea = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.dz, ptr noundef nonnull @.str.118)
  %i.eb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.ea, ptr noundef nonnull align 1 dereferenceable(1) %i.aj)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.eb) #32
  unreachable

.loopexit.loopexit:                               ; preds = %_ZN12V3NumberData3numEv.exit52
  %.pre = load ptr, ptr %2, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZNK12V3NumberData3numEv.exit47
  %6 = phi ptr [ %.pre, %.loopexit.loopexit ], [ %5, %_ZNK12V3NumberData3numEv.exit47 ]
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv76.a, 1 ; 2 uses
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
end_hunk_0
