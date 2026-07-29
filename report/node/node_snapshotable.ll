inline.NumInlined: 6455
inline.NumDeleted: 1960
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumUnrolled: 17
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN4nodeL19GetCodeCacheDefNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.02.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec11, %vec.epilog.middle.block ]
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4nodeL19GetCodeCacheDefNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE20error_and_abort_args) #29
  tail call void @abort() #30
  unreachable

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  store ptr %i.am, ptr %1, align 8
  %i.an = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #29 ; 8 uses
  %i.ao = icmp ugt i64 %i.an, 15
  br i1 %i.ao, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %._crit_edge
  %i.ap = icmp slt i64 %i.an, 0
  br i1 %i.ap, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.302) #30
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.aq = add nuw i64 %i.an, 1                    ; 2 uses
  %i.ar = icmp slt i64 %i.aq, 0
  br i1 %i.ar, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !5

bb.f:                                             ; preds = %bb.e
  call void @_ZSt17__throw_bad_allocv() #30
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.e
  %i.as = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #31 ; 2 uses
  store ptr %i.as, ptr %1, align 8
  store i64 %i.an, ptr %i.am, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %._crit_edge
  %i.at = phi ptr [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.am, %._crit_edge ] ; 3 uses
  switch i64 %i.an, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.au = load i8, ptr %i.a, align 16
  store i8 %i.au, ptr %i.at, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.at, ptr nonnull align 16 %i.a, i64 %i.an, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.g, %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.an, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.an
  store i8 0, ptr %i.aw, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.ax, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.ax, ptr noundef nonnull align 1 dereferenceable(11) @.str.318, i64 11, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 11, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 27
  store i8 0, ptr %i.az, align 1
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.ba = load ptr, ptr %2, align 8               ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.ax
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.bc = load i64, ptr %i.ax, align 8
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.be = load ptr, ptr %1, align 8               ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.am
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bg = load i64, ptr %i.am, align 8
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.02 = phi i64 [ %i.bn, %.lr.ph ], [ %.02.ph, %.lr.ph.preheader ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.02
  %i.bj = load i8, ptr %i.bi, align 1             ; 2 uses
  %i.bk = and i8 %i.bj, -3
  %or.cond = icmp eq i8 %i.bk, 45
  %i.bl = select i1 %or.cond, i8 95, i8 %i.bj
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.02
  store i8 %i.bl, ptr %i.bm, align 1
  %i.bn = add nuw nsw i64 %.02, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bn, %.8.val
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !216
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node22WriteByteVectorLiteralIhEEvPSoPKT_mPKcb(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.446, i64 noundef 13) #29 ; 0 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.455, i64 noundef 7) #29 ; 0 uses
  %.not.i30 = icmp eq ptr %3, null                ; 2 uses
  br i1 %4, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.447, i64 noundef 2) #29 ; 0 uses
  br i1 %.not.i30, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %0, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load i32, ptr %i.i, align 8
  %i.k = or i32 %i.j, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.h, i32 noundef %i.k) #29
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.d:                                             ; preds = %bb.b
  %i.l = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #29
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %3, i64 noundef %i.l) #29 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c, %bb.d
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.448, i64 noundef 3) #29 ; 0 uses
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.456, i64 noundef 35) #29 ; 0 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.457, i64 noundef 4) #29 ; 0 uses
  br label %bb.s

.lr.ph:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.f
  %.02833 = phi i64 [ %i.aa, %bb.f ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %.02833
  %i.r = load i8, ptr %i.q, align 1
  %i.s = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4node12GetOctalCodeB5cxx11Eh(i8 noundef zeroext %i.r) #29 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load i64, ptr %i.u, align 8
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.t, i64 noundef %i.v) #29 ; 0 uses
  %i.x = and i64 %.02833, 63
  %i.y = icmp eq i64 %i.x, 63
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.450, i64 noundef 3) #29 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %i.aa = add nuw i64 %.02833, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !217

bb.g:                                             ; preds = %bb.a
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.411, i64 noundef 1) #29 ; 0 uses
  br i1 %.not.i30, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %0, align 8
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %0, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = or i32 %i.ah, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.af, i32 noundef %i.ai) #29
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31

bb.i:                                             ; preds = %bb.g
  %i.aj = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #29
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %3, i64 noundef %i.aj) #29 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31: ; preds = %bb.h, %bb.i
  %i.al = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.452, i64 noundef 6) #29 ; 0 uses
  %.not36 = icmp eq i64 %2, 0
  br i1 %.not36, label %._crit_edge35, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.lr.ph

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.lr.ph: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 20 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ao = add i64 %2, -1                          ; 2 uses
  %.not47 = icmp eq i64 %i.ao, 0
  br i1 %.not47, label %._crit_edge35.loopexit.peel.begin, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.lr.ph.split

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.lr.ph.split: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.lr.ph
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 17
  %i.aq = add i64 %2, -2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

._crit_edge35.loopexit.peel.begin:                ; preds = %bb.r, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.lr.ph
  %i.ar = phi i64 [ 0, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.lr.ph ], [ %i.eg, %bb.r ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1             ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !218)
  %i.au = icmp ult i8 %i.at, 10                   ; 2 uses
  %i.av = icmp ult i8 %i.at, 100
  %..peel = select i1 %i.av, i32 2, i32 3         ; 3 uses
  %i.aw = zext nneg i32 %..peel to i64
  %i.ax = select i1 %i.au, i64 1, i64 %i.aw       ; 5 uses
  store ptr %i.am, ptr %5, align 8, !alias.scope !218
  %6 = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ax ; 2 uses
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.peel.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.peel.thread: ; preds = %._crit_edge35.loopexit.peel.begin
  store i8 45, ptr %i.am, align 8, !alias.scope !218
  store i64 %i.ax, ptr %i.an, align 8, !alias.scope !218
  store i8 0, ptr %6, align 1
  br label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.peel: ; preds = %._crit_edge35.loopexit.peel.begin
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, i8 45, i64 %i.ax, i1 false)
  store i64 %i.ax, ptr %i.an, align 8, !alias.scope !218
  store i8 0, ptr %6, align 1
  %i.ay = icmp ugt i8 %i.at, 99
  br i1 %i.ay, label %.lr.ph.preheader.i.i.peel, label %._crit_edge.i.i.peel

.lr.ph.preheader.i.i.peel:                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.peel
  %i.az = urem i8 %i.at, 100
  %i.ba = shl nuw i8 %i.az, 1
  %i.bb = udiv i8 %i.at, 100
  %i.bc = zext i8 %i.ba to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.bc ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.bf = load i8, ptr %i.be, align 1, !noalias !218
  %i.bg = zext nneg i32 %..peel to i64
  %i.bh = getelementptr i8, ptr %i.am, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.bh, i64 -1
  store i8 %i.bf, ptr %i.bi, align 1
  %i.bj = load i8, ptr %i.bd, align 2, !noalias !218
  %7 = zext nneg i32 %..peel to i64
  %8 = getelementptr i8, ptr %i.am, i64 %7
  %9 = getelementptr i8, ptr %8, i64 -2
  store i8 %i.bj, ptr %9, align 1
  br label %bb.j, !llvm.loop !32

bb.j:                                             ; preds = %.lr.ph.preheader.i.i.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.peel.thread
  %.0.lcssa.i.i.peel.ph = phi i8 [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.peel.thread ], [ %i.bb, %.lr.ph.preheader.i.i.peel ]
  %i.bk = or disjoint i8 %.0.lcssa.i.i.peel.ph, 48
  br label %_ZNSt7__cxx119to_stringEi.exit.peel

._crit_edge.i.i.peel:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.peel
  %i.bl = shl nuw i8 %i.at, 1
  %i.bm = zext i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !noalias !218
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 %i.bp, ptr %i.bq, align 1
  %i.br = load i8, ptr %i.bn, align 2, !noalias !218
  br label %_ZNSt7__cxx119to_stringEi.exit.peel

_ZNSt7__cxx119to_stringEi.exit.peel:              ; preds = %._crit_edge.i.i.peel, %bb.j
  %storemerge.i.i.peel = phi i8 [ %i.bk, %bb.j ], [ %i.br, %._crit_edge.i.i.peel ]
  store i8 %storemerge.i.i.peel, ptr %i.am, align 8
  %i.bs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.am, i64 noundef %i.ax) #29 ; 4 uses
  %i.bt = icmp eq i64 %i.ar, %i.ao
  %i.bu = select i1 %i.bt, i8 10, i8 44           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.bu, ptr %i.a, align 1
  %i.bv = load ptr, ptr %i.bs, align 8
  %i.bw = getelementptr i8, ptr %i.bv, i64 -24
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = getelementptr inbounds i8, ptr %i.bs, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load i64, ptr %i.bz, align 8
  %.not.i32.peel = icmp eq i64 %i.ca, 0
  br i1 %.not.i32.peel, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx119to_stringEi.exit.peel
  %i.cb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef nonnull %i.a, i64 noundef 1) #29 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.peel

bb.l:                                             ; preds = %_ZNSt7__cxx119to_stringEi.exit.peel
  %i.cc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, i8 noundef signext %i.bu) #29 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.peel

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.peel: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cd = load ptr, ptr %5, align 8               ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.am
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.peel
  %i.cf = load i64, ptr %i.am, align 8
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.ch = and i64 %i.ar, 63
  %i.ci = icmp eq i64 %i.ch, 63
  br i1 %i.ci, label %bb.m, label %._crit_edge35

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel
  %i.cj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.453, i64 noundef 5) #29 ; 0 uses
  %i.ck = lshr i64 %i.ar, 6
  %i.cl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.ck) #29
  %i.cm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull @.str.226, i64 noundef 1) #29 ; 0 uses
  br label %._crit_edge35

._crit_edge35:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %bb.m, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31
  %i.cn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.454, i64 noundef 3) #29 ; 0 uses
  br label %bb.s

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.lr.ph.split, %bb.r
  %.034 = phi i64 [ 0, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.lr.ph.split ], [ %i.eg, %bb.r ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 %.034
  %i.cp = load i8, ptr %i.co, align 1             ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !221)
  %i.cq = icmp ult i8 %i.cp, 10                   ; 2 uses
  %i.cr = icmp ult i8 %i.cp, 100
  %. = select i1 %i.cr, i32 2, i32 3              ; 3 uses
  %i.cs = zext nneg i32 %. to i64
  %i.ct = select i1 %i.cq, i64 1, i64 %i.cs       ; 5 uses
  store ptr %i.am, ptr %5, align 8, !alias.scope !221
  %10 = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ct ; 2 uses
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  store i8 45, ptr %i.am, align 8, !alias.scope !221
  store i64 %i.ct, ptr %i.an, align 8, !alias.scope !221
  store i8 0, ptr %10, align 1
  br label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, i8 45, i64 %i.ct, i1 false)
  store i64 %i.ct, ptr %i.an, align 8, !alias.scope !221
  store i8 0, ptr %10, align 1
  %i.cu = icmp ugt i8 %i.cp, 99
  br i1 %i.cu, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %i.cv = urem i8 %i.cp, 100
  %i.cw = shl nuw i8 %i.cv, 1
  %i.cx = udiv i8 %i.cp, 100
  %i.cy = zext i8 %i.cw to i64
  %i.cz = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.cy ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 1
  %i.db = load i8, ptr %i.da, align 1, !noalias !221
  %i.dc = zext nneg i32 %. to i64
  %i.dd = getelementptr i8, ptr %i.am, i64 %i.dc
  %i.de = getelementptr i8, ptr %i.dd, i64 -1
  store i8 %i.db, ptr %i.de, align 1
  %i.df = load i8, ptr %i.cz, align 2, !noalias !221
  %11 = zext nneg i32 %. to i64
  %12 = getelementptr i8, ptr %i.am, i64 %11
  %13 = getelementptr i8, ptr %12, i64 -2
  store i8 %i.df, ptr %13, align 1
  br label %bb.n, !llvm.loop !32

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %i.dg = shl nuw i8 %i.cp, 1
  %i.dh = zext i8 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.dh ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 1
  %i.dk = load i8, ptr %i.dj, align 1, !noalias !221
  store i8 %i.dk, ptr %i.ap, align 1
  %i.dl = load i8, ptr %i.di, align 2, !noalias !221
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.n:                                             ; preds = %.lr.ph.preheader.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread
  %.0.lcssa.i.i.ph = phi i8 [ %i.cp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread ], [ %i.cx, %.lr.ph.preheader.i.i ]
  %i.dm = or disjoint i8 %.0.lcssa.i.i.ph, 48
  br label %_ZNSt7__cxx119to_stringEi.exit

_ZNSt7__cxx119to_stringEi.exit:                   ; preds = %._crit_edge.i.i, %bb.n
  %storemerge.i.i = phi i8 [ %i.dm, %bb.n ], [ %i.dl, %._crit_edge.i.i ]
  store i8 %storemerge.i.i, ptr %i.am, align 8
  %i.dn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.am, i64 noundef %i.ct) #29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 44, ptr %i.a, align 1
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = getelementptr i8, ptr %i.do, i64 -24
  %i.dq = load i64, ptr %i.dp, align 8
  %i.dr = getelementptr inbounds i8, ptr %i.dn, i64 %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load i64, ptr %i.ds, align 8
  %.not.i32 = icmp eq i64 %i.dt, 0
  br i1 %.not.i32, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.du = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dn, ptr noundef nonnull %i.a, i64 noundef 1) #29 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.p:                                             ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.dv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.dn, i8 noundef signext 44) #29 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dw = load ptr, ptr %5, align 8               ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.am
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.dy = load i64, ptr %i.am, align 8
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dz) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.ea = and i64 %.034, 63
  %i.eb = icmp eq i64 %i.ea, 63
  br i1 %i.eb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ec = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.453, i64 noundef 5) #29 ; 0 uses
  %i.ed = lshr i64 %.034, 6
  %i.ee = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.ed) #29
  %i.ef = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ee, ptr noundef nonnull @.str.226, i64 noundef 1) #29 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.q
  %i.eg = add nuw i64 %.034, 1                    ; 2 uses
  %exitcond37.not = icmp eq i64 %.034, %i.aq
  br i1 %exitcond37.not, label %._crit_edge35.loopexit.peel.begin, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, !llvm.loop !223

bb.s:                                             ; preds = %._crit_edge35, %._crit_edge
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4nodelsERSoRKNS_24IsolateDataSerializeInfoE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4nodelsERSoRKNS_16SnapshotMetadataE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(108)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN4node15SnapshotBuilder25CollectExternalReferencesEv() local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4node15SnapshotBuilder25CollectExternalReferencesEvE8registry acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !224

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4node15SnapshotBuilder25CollectExternalReferencesEvE8registry) #29
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225)
  %i.d = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31, !noalias !225 ; 2 uses
  tail call void @_ZN4node25ExternalReferenceRegistryC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.d) #29, !noalias !225
  store ptr %i.d, ptr @_ZZN4node15SnapshotBuilder25CollectExternalReferencesEvE8registry, align 8, !alias.scope !225
  %i.e = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt10unique_ptrIN4node25ExternalReferenceRegistryESt14default_deleteIS1_EED2Ev, ptr nonnull @_ZZN4node15SnapshotBuilder25CollectExternalReferencesEvE8registry, ptr nonnull @__dso_handle) #29 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4node15SnapshotBuilder25CollectExternalReferencesEvE8registry) #29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.f = load ptr, ptr @_ZZN4node15SnapshotBuilder25CollectExternalReferencesEvE8registry, align 8
  %i.g = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4node25ExternalReferenceRegistry19external_referencesEv(ptr noundef nonnull align 8 dereferenceable(32) %i.f) #29
  ret ptr %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrIN4node25ExternalReferenceRegistryESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteIN4node25ExternalReferenceRegistryEEclEPS1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #32
  br label %_ZNKSt14default_deleteIN4node25ExternalReferenceRegistryEEclEPS1_.exit

_ZNKSt14default_deleteIN4node25ExternalReferenceRegistryEEclEPS1_.exit: ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #32
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt14default_deleteIN4node25ExternalReferenceRegistryEEclEPS1_.exit, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN4node25ExternalReferenceRegistry19external_referencesEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node15SnapshotBuilder23InitializeIsolateParamsEPKNS_12SnapshotDataEPN2v87Isolate12CreateParamsE(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b, !prof !39

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node15SnapshotBuilder23InitializeIsolateParamsEPKNS_12SnapshotDataEPN2v87Isolate12CreateParamsEE20error_and_abort_args) #29
  tail call void @abort() #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.g = load atomic i8, ptr @_ZGVZN4node15SnapshotBuilder25CollectExternalReferencesEvE8registry acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.e, label %_ZN4node15SnapshotBuilder25CollectExternalReferencesEv.exit, !prof !224

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4node15SnapshotBuilder25CollectExternalReferencesEvE8registry) #29
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %_ZN4node15SnapshotBuilder25CollectExternalReferencesEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  %i.j = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31, !noalias !228 ; 2 uses
  tail call void @_ZN4node25ExternalReferenceRegistryC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.j) #29, !noalias !228
  store ptr %i.j, ptr @_ZZN4node15SnapshotBuilder25CollectExternalReferencesEvE8registry, align 8, !alias.scope !228
  %i.k = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt10unique_ptrIN4node25ExternalReferenceRegistryESt14default_deleteIS1_EED2Ev, ptr nonnull @_ZZN4node15SnapshotBuilder25CollectExternalReferencesEvE8registry, ptr nonnull @__dso_handle) #29 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4node15SnapshotBuilder25CollectExternalReferencesEvE8registry) #29
  br label %_ZN4node15SnapshotBuilder25CollectExternalReferencesEv.exit

_ZN4node15SnapshotBuilder25CollectExternalReferencesEv.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.l = load ptr, ptr @_ZZN4node15SnapshotBuilder25CollectExternalReferencesEvE8registry, align 8
  %i.m = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4node25ExternalReferenceRegistry19external_referencesEv(ptr noundef nonnull align 8 dereferenceable(32) %i.l) #29
  %i.n = load ptr, ptr %i.m, align 8
  store ptr %i.n, ptr %i.d, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZN4node15SnapshotBuilder25CollectExternalReferencesEv.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.o, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN4nodeorENS_13SnapshotFlagsES0_(i32 noundef %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = or i32 %1, %0
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN4nodeanENS_13SnapshotFlagsES0_(i32 noundef %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = and i32 %1, %0
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_ZN4nodeoRERNS_13SnapshotFlagsES0_(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %0, i32 noundef %1) local_unnamed_addr #13 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = or i32 %i.a, %1                          ; 2 uses
  store i32 %i.b, ptr %0, align 4
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN4node16WithoutCodeCacheERKNS_13SnapshotFlagsE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0) local_unnamed_addr #9 {
bb.a:
end_hunk_0
