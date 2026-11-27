Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/node_snapshotable?download=true
inline.NumInlined: 6452
inline.NumDeleted: 1964
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumUnrolled: 17
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN4nodeL19GetCodeCacheDefNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.02.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec10, %vec.epilog.middle.block ]
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4nodeL19GetCodeCacheDefNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE20error_and_abort_args) #29
  tail call void @abort() #30
  unreachable

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  store ptr %i.an, ptr %1, align 8
  %i.ao = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #29 ; 8 uses
  %i.ap = icmp ugt i64 %i.ao, 15
  br i1 %i.ap, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %._crit_edge
  %i.aq = icmp slt i64 %i.ao, 0
  br i1 %i.aq, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.302) #30
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ar = add nuw i64 %i.ao, 1                    ; 2 uses
  %i.as = icmp slt i64 %i.ar, 0
  br i1 %i.as, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !689

bb.f:                                             ; preds = %bb.e
  call void @_ZSt17__throw_bad_allocv() #30
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.e
  %i.at = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #31 ; 2 uses
  store ptr %i.at, ptr %1, align 8
  store i64 %i.ao, ptr %i.an, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %._crit_edge
  %i.au = phi ptr [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.an, %._crit_edge ] ; 3 uses
  switch i64 %i.ao, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit15
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.av = load i8, ptr %i.a, align 16
  store i8 %i.av, ptr %i.au, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit15

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.au, ptr nonnull align 16 %i.a, i64 %i.ao, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit15: ; preds = %bb.h, %bb.g, %._crit_edge.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ao, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ao
  store i8 0, ptr %i.ax, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.ay, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.ay, ptr noundef nonnull align 1 dereferenceable(11) @.str.318, i64 11, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 11, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 27
  store i8 0, ptr %i.ba, align 1
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.bb = load ptr, ptr %2, align 8               ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.ay
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit15
  %i.bd = load i64, ptr %i.ay, align 8
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.bf = load ptr, ptr %1, align 8               ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.an
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bh = load i64, ptr %i.an, align 8
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.02 = phi i64 [ %i.bo, %.lr.ph ], [ %.02.ph, %.lr.ph.preheader ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.02
  %i.bk = load i8, ptr %i.bj, align 1             ; 2 uses
  %i.bl = and i8 %i.bk, -3
  %or.cond = icmp eq i8 %i.bl, 45
  %i.bm = select i1 %or.cond, i8 95, i8 %i.bk
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %.02
  store i8 %i.bm, ptr %i.bn, align 1
  %i.bo = add nuw nsw i64 %.02, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bo, %.8.val
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !972
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node22WriteByteVectorLiteralIhEEvPSoPKT_mPKcb(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat !guid !981 {
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
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !975

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
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 18 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ao = add i64 %2, -1                          ; 2 uses
  %.not47 = icmp eq i64 %i.ao, 0
  br i1 %.not47, label %._crit_edge35.loopexit.peel.begin, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.lr.ph.split

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.lr.ph.split: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.lr.ph
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 17
  %i.aq = add i64 %2, -2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

._crit_edge35.loopexit.peel.begin:                ; preds = %bb.r, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.lr.ph
  %i.ar = phi i64 [ 0, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.lr.ph ], [ %i.eo, %bb.r ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1             ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !982)
  %i.au = icmp ult i8 %i.at, 10                   ; 2 uses
  %i.av = icmp ult i8 %i.at, 100
  %..peel = select i1 %i.av, i32 2, i32 3         ; 3 uses
  %i.aw = zext nneg i32 %..peel to i64
  %i.ax = select i1 %i.au, i64 1, i64 %i.aw       ; 6 uses
  store ptr %i.am, ptr %5, align 8, !alias.scope !982
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.peel.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.peel.thread: ; preds = %._crit_edge35.loopexit.peel.begin
  store i64 %i.ax, ptr %i.an, align 8, !alias.scope !982
  br label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.peel: ; preds = %._crit_edge35.loopexit.peel.begin
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, i8 45, i64 %i.ax, i1 false)
  store i64 %i.ax, ptr %i.an, align 8, !alias.scope !982
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ax
  store i8 0, ptr %i.ay, align 1
  %i.az = icmp ugt i8 %i.at, 99
  br i1 %i.az, label %.lr.ph.preheader.i.i.peel, label %._crit_edge.i.i.peel

.lr.ph.preheader.i.i.peel:                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.peel
  %i.ba = urem i8 %i.at, 100
  %i.bb = shl nuw i8 %i.ba, 1
  %i.bc = udiv i8 %i.at, 100
  %i.bd = zext i8 %i.bb to i64
  %i.be = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.bd ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !982
  %i.bh = zext nneg i32 %..peel to i64
  %i.bi = getelementptr i8, ptr %i.am, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.bi, i64 -1
  store i8 %i.bg, ptr %i.bj, align 1
  %i.bk = load i8, ptr %i.be, align 2, !noalias !982
  %i.bl = add nsw i32 %..peel, -2
  %i.bm = zext nneg i32 %i.bl to i64
  br label %bb.j, !llvm.loop !7

bb.j:                                             ; preds = %.lr.ph.preheader.i.i.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.peel.thread
  %.sink59 = phi i64 [ %i.bm, %.lr.ph.preheader.i.i.peel ], [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.peel.thread ]
  %.sink = phi i8 [ %i.bk, %.lr.ph.preheader.i.i.peel ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.peel.thread ]
  %.0.lcssa.i.i.peel.ph = phi i8 [ %i.bc, %.lr.ph.preheader.i.i.peel ], [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.peel.thread ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.am, i64 %.sink59
  store i8 %.sink, ptr %i.bn, align 1
  %i.bo = or disjoint i8 %.0.lcssa.i.i.peel.ph, 48
  br label %_ZNSt7__cxx119to_stringEi.exit.peel

._crit_edge.i.i.peel:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.peel
  %i.bp = shl nuw i8 %i.at, 1
  %i.bq = zext i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.bq ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !noalias !982
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 %i.bt, ptr %i.bu, align 1
  %i.bv = load i8, ptr %i.br, align 2, !noalias !982
  br label %_ZNSt7__cxx119to_stringEi.exit.peel

_ZNSt7__cxx119to_stringEi.exit.peel:              ; preds = %._crit_edge.i.i.peel, %bb.j
  %storemerge.i.i.peel = phi i8 [ %i.bo, %bb.j ], [ %i.bv, %._crit_edge.i.i.peel ]
  store i8 %storemerge.i.i.peel, ptr %i.am, align 8
  %i.bw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.am, i64 noundef %i.ax) #29 ; 4 uses
  %i.bx = icmp eq i64 %i.ar, %i.ao
  %i.by = select i1 %i.bx, i8 10, i8 44           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.by, ptr %i.a, align 1
  %i.bz = load ptr, ptr %i.bw, align 8
  %i.ca = getelementptr i8, ptr %i.bz, i64 -24
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds i8, ptr %i.bw, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load i64, ptr %i.cd, align 8
  %.not.i32.peel = icmp eq i64 %i.ce, 0
  br i1 %.not.i32.peel, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx119to_stringEi.exit.peel
  %i.cf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr noundef nonnull %i.a, i64 noundef 1) #29 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.peel

bb.l:                                             ; preds = %_ZNSt7__cxx119to_stringEi.exit.peel
  %i.cg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, i8 noundef signext %i.by) #29 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.peel

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.peel: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ch = load ptr, ptr %5, align 8               ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.am
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.peel
  %i.cj = load i64, ptr %i.am, align 8
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.cl = and i64 %i.ar, 63
  %i.cm = icmp eq i64 %i.cl, 63
  br i1 %i.cm, label %bb.m, label %._crit_edge35

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel
  %i.cn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.453, i64 noundef 5) #29 ; 0 uses
  %i.co = lshr i64 %i.ar, 6
  %i.cp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.co) #29
  %i.cq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cp, ptr noundef nonnull @.str.226, i64 noundef 1) #29 ; 0 uses
  br label %._crit_edge35

._crit_edge35:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %bb.m, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31
  %i.cr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.454, i64 noundef 3) #29 ; 0 uses
  br label %bb.s

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.lr.ph.split, %bb.r
  %.034 = phi i64 [ 0, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.lr.ph.split ], [ %i.eo, %bb.r ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 %.034
  %i.ct = load i8, ptr %i.cs, align 1             ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !983)
  %i.cu = icmp ult i8 %i.ct, 10                   ; 2 uses
  %i.cv = icmp ult i8 %i.ct, 100
  %. = select i1 %i.cv, i32 2, i32 3              ; 3 uses
  %i.cw = zext nneg i32 %. to i64
  %i.cx = select i1 %i.cu, i64 1, i64 %i.cw       ; 6 uses
  store ptr %i.am, ptr %5, align 8, !alias.scope !983
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  store i64 %i.cx, ptr %i.an, align 8, !alias.scope !983
  br label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, i8 45, i64 %i.cx, i1 false)
  store i64 %i.cx, ptr %i.an, align 8, !alias.scope !983
  %i.cy = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.cx
  store i8 0, ptr %i.cy, align 1
  %i.cz = icmp ugt i8 %i.ct, 99
  br i1 %i.cz, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %i.da = urem i8 %i.ct, 100
  %i.db = shl nuw i8 %i.da, 1
  %i.dc = udiv i8 %i.ct, 100
  %i.dd = zext i8 %i.db to i64
  %i.de = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.dd ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 1
  %i.dg = load i8, ptr %i.df, align 1, !noalias !983
  %i.dh = zext nneg i32 %. to i64
  %i.di = getelementptr i8, ptr %i.am, i64 %i.dh
  %i.dj = getelementptr i8, ptr %i.di, i64 -1
  store i8 %i.dg, ptr %i.dj, align 1
  %i.dk = load i8, ptr %i.de, align 2, !noalias !983
  %i.dl = add nsw i32 %., -2
  %i.dm = zext nneg i32 %i.dl to i64
  br label %bb.n, !llvm.loop !7

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %i.dn = shl nuw i8 %i.ct, 1
  %i.do = zext i8 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.do ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.dr = load i8, ptr %i.dq, align 1, !noalias !983
  store i8 %i.dr, ptr %i.ap, align 1
  %i.ds = load i8, ptr %i.dp, align 2, !noalias !983
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.n:                                             ; preds = %.lr.ph.preheader.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread
  %.sink62 = phi i64 [ %i.dm, %.lr.ph.preheader.i.i ], [ %i.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread ]
  %.sink60 = phi i8 [ %i.dk, %.lr.ph.preheader.i.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread ]
  %.0.lcssa.i.i.ph = phi i8 [ %i.dc, %.lr.ph.preheader.i.i ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread ]
  %i.dt = getelementptr inbounds nuw i8, ptr %i.am, i64 %.sink62
  store i8 %.sink60, ptr %i.dt, align 1
  %i.du = or disjoint i8 %.0.lcssa.i.i.ph, 48
  br label %_ZNSt7__cxx119to_stringEi.exit

_ZNSt7__cxx119to_stringEi.exit:                   ; preds = %._crit_edge.i.i, %bb.n
  %storemerge.i.i = phi i8 [ %i.du, %bb.n ], [ %i.ds, %._crit_edge.i.i ]
  store i8 %storemerge.i.i, ptr %i.am, align 8
  %i.dv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.am, i64 noundef %i.cx) #29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 44, ptr %i.a, align 1
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = getelementptr i8, ptr %i.dw, i64 -24
  %i.dy = load i64, ptr %i.dx, align 8
  %i.dz = getelementptr inbounds i8, ptr %i.dv, i64 %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = load i64, ptr %i.ea, align 8
  %.not.i32 = icmp eq i64 %i.eb, 0
  br i1 %.not.i32, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.ec = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dv, ptr noundef nonnull %i.a, i64 noundef 1) #29 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.p:                                             ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.ed = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.dv, i8 noundef signext 44) #29 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ee = load ptr, ptr %5, align 8               ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.am
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.eg = load i64, ptr %i.am, align 8
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.eh) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.ei = and i64 %.034, 63
  %i.ej = icmp eq i64 %i.ei, 63
  br i1 %i.ej, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ek = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.453, i64 noundef 5) #29 ; 0 uses
  %i.el = lshr i64 %.034, 6
  %i.em = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.el) #29
  %i.en = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.em, ptr noundef nonnull @.str.226, i64 noundef 1) #29 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.q
  %i.eo = add nuw i64 %.034, 1                    ; 2 uses
  %exitcond37.not = icmp eq i64 %.034, %i.aq
  br i1 %exitcond37.not, label %._crit_edge35.loopexit.peel.begin, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, !llvm.loop !980

bb.s:                                             ; preds = %._crit_edge35, %._crit_edge
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4nodelsERSoRKNS_24IsolateDataSerializeInfoE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4nodelsERSoRKNS_16SnapshotMetadataE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(108)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN4node15SnapshotBuilder25CollectExternalReferencesEv() local_unnamed_addr #0 align 2 !guid !986 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4node15SnapshotBuilder25CollectExternalReferencesEvE8registry acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !697

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4node15SnapshotBuilder25CollectExternalReferencesEvE8registry) #29
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !987)
  %i.d = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31, !noalias !987 ; 2 uses
  tail call void @_ZN4node25ExternalReferenceRegistryC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.d) #29, !noalias !987
  store ptr %i.d, ptr @_ZZN4node15SnapshotBuilder25CollectExternalReferencesEvE8registry, align 8, !alias.scope !987
  %i.e = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt10unique_ptrIN4node25ExternalReferenceRegistryESt14default_deleteIS1_EED2Ev, ptr nonnull @_ZZN4node15SnapshotBuilder25CollectExternalReferencesEvE8registry, ptr nonnull @__dso_handle) #29 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4node15SnapshotBuilder25CollectExternalReferencesEvE8registry) #29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.f = load ptr, ptr @_ZZN4node15SnapshotBuilder25CollectExternalReferencesEvE8registry, align 8
  %i.g = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4node25ExternalReferenceRegistry19external_referencesEv(ptr noundef nonnull align 8 dereferenceable(32) %i.f) #29
  ret ptr %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrIN4node25ExternalReferenceRegistryESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !guid !988 {
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
define dso_local void @_ZN4node15SnapshotBuilder23InitializeIsolateParamsEPKNS_12SnapshotDataEPN2v87Isolate12CreateParamsE(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 align 2 !guid !991 {
end_hunk_0
