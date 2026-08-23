Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/node_snapshotable?download=true
inline.NumInlined: 6455
inline.NumDeleted: 1960
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
  br i1 %i.as, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !5

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
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.av = load i8, ptr %i.a, align 16
  store i8 %i.av, ptr %i.au, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.au, ptr nonnull align 16 %i.a, i64 %i.ao, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.g, %bb.h
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

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.bd = load i64, ptr %i.ay, align 8
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
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
  %i.ar = phi i64 [ 0, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.lr.ph ], [ %i.eg, %bb.r ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1             ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !218)
  %i.au = icmp ult i8 %i.at, 10                   ; 2 uses
  %i.av = icmp ult i8 %i.at, 100
  %..peel = select i1 %i.av, i32 2, i32 3         ; 3 uses
  %i.aw = zext nneg i32 %..peel to i64
  %i.ax = select i1 %i.au, i64 1, i64 %i.aw       ; 6 uses
  store ptr %i.am, ptr %5, align 8, !alias.scope !218
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.peel.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.peel.thread: ; preds = %._crit_edge35.loopexit.peel.begin
  store i64 %i.ax, ptr %i.an, align 8, !alias.scope !218
  br label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.peel: ; preds = %._crit_edge35.loopexit.peel.begin
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, i8 45, i64 %i.ax, i1 false)
  store i64 %i.ax, ptr %i.an, align 8, !alias.scope !218
  %6 = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ax
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
  %7 = add nsw i32 %..peel, -2
  %8 = zext nneg i32 %7 to i64
  br label %bb.j, !llvm.loop !32

bb.j:                                             ; preds = %.lr.ph.preheader.i.i.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.peel.thread
  %.sink59 = phi i64 [ %8, %.lr.ph.preheader.i.i.peel ], [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.peel.thread ]
  %.sink = phi i8 [ %i.bj, %.lr.ph.preheader.i.i.peel ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.peel.thread ]
  %.0.lcssa.i.i.peel.ph = phi i8 [ %i.bb, %.lr.ph.preheader.i.i.peel ], [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.peel.thread ]
  %9 = getelementptr inbounds nuw i8, ptr %i.am, i64 %.sink59
  store i8 %.sink, ptr %9, align 1
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
  %i.ct = select i1 %i.cq, i64 1, i64 %i.cs       ; 6 uses
  store ptr %i.am, ptr %5, align 8, !alias.scope !221
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  store i64 %i.ct, ptr %i.an, align 8, !alias.scope !221
  br label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, i8 45, i64 %i.ct, i1 false)
  store i64 %i.ct, ptr %i.an, align 8, !alias.scope !221
  %10 = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ct
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
  %11 = add nsw i32 %., -2
  %12 = zext nneg i32 %11 to i64
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
  %.sink62 = phi i64 [ %12, %.lr.ph.preheader.i.i ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread ]
  %.sink60 = phi i8 [ %i.df, %.lr.ph.preheader.i.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread ]
  %.0.lcssa.i.i.ph = phi i8 [ %i.cx, %.lr.ph.preheader.i.i ], [ %i.cp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread ]
  %13 = getelementptr inbounds nuw i8, ptr %i.am, i64 %.sink62
  store i8 %.sink60, ptr %13, align 1
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
begin_hunk_1_@_ZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJmEEES6_St17basic_string_viewIcS4_EOT_DpOT0_:bb.a
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bh = load i8, ptr %i.ay, align 1
  store i8 %i.bh, ptr %i.bg, align 1
  br label %_ZN4node20ToStringOrStringViewINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT_.exit

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bg, ptr align 1 %i.ay, i64 %i.ba, i1 false)
  br label %_ZN4node20ToStringOrStringViewINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT_.exit

_ZN4node20ToStringOrStringViewINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.l, %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.ba, ptr %i.bi, align 8, !alias.scope !716
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ba
  store i8 0, ptr %i.bj, align 1
  %i.bk = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %14) ; 0 uses
  %i.bl = load ptr, ptr %14, align 8              ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.ax
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZN4node20ToStringOrStringViewINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT_.exit
  %i.bn = load i64, ptr %i.ax, align 8
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZN4node20ToStringOrStringViewINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  br label %bb.r

bb.n:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  call void @_ZN4node12ToBaseStringILj3ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.bp = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %15) ; 0 uses
  %i.bq = load ptr, ptr %15, align 8              ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.n
  %i.bt = load i64, ptr %i.br, align 8
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  br label %bb.r

bb.o:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29
  call void @_ZN4node12ToBaseStringILj4ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.bv = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %16) ; 0 uses
  %i.bw = load ptr, ptr %16, align 8              ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.o
  %i.bz = load i64, ptr %i.bx, align 8
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  br label %bb.r

bb.p:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #29
  call void @_ZN4node12ToBaseStringILj4ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(32) %3)
  call void @_ZN4node7ToUpperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES6_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(32) %18)
  %i.cb = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %17) ; 0 uses
  %i.cc = load ptr, ptr %17, align 8              ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.p
  %i.cf = load i64, ptr %i.cd, align 8
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  %i.ch = load ptr, ptr %18, align 8              ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %i.ck = load i64, ptr %i.ci, align 8
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cl) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  br label %bb.r

bb.q:                                             ; preds = %bb.c
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJmEEES6_St17basic_string_viewIcS4_EOT_DpOT0_E20error_and_abort_args_0) #29
  call void @abort() #30
  unreachable

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #29
  %i.cm = add i64 %.0.lcssa, 2                    ; 4 uses
  %i.cn = icmp ugt i64 %i.cm, %1
  br i1 %i.cn, label %bb.s, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit60

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.376, ptr noundef nonnull @.str.375, i64 noundef %i.cm, i64 noundef %1) #30
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit60: ; preds = %bb.r
  %i.co = sub nuw i64 %1, %i.cm
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 %i.cm
  call void @_ZN4node11SPrintFImplImJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, i64 %i.co, ptr %i.cp, ptr noundef nonnull align 8 dereferenceable(8) %4) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !717)
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !noalias !717
  %i.cs = load ptr, ptr %7, align 8, !noalias !717
  %i.ct = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %19, i64 noundef 0, i64 noundef 0, ptr noundef %i.cs, i64 noundef %i.cr), !noalias !717 ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cu, ptr %0, align 8, !alias.scope !717
  %i.cv = load ptr, ptr %i.ct, align 8            ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 5 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

bb.t:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit60
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cz = load i64, ptr %i.cy, align 8            ; 3 uses
  %i.da = icmp ult i64 %i.cz, 16
  call void @llvm.assume(i1 %i.da)
  %i.db = add nuw nsw i64 %i.cz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cu, ptr noundef nonnull align 8 dereferenceable(1) %i.cw, i64 %i.db, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit60
  store ptr %i.cv, ptr %0, align 8, !alias.scope !717
  %i.dc = load i64, ptr %i.cw, align 8
  store i64 %i.dc, ptr %i.cu, align 8, !alias.scope !717
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  %i.dd = phi i64 [ %i.cz, %bb.t ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61 ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dd, ptr %i.df, align 8, !alias.scope !717
  store ptr %i.cw, ptr %i.ct, align 8
  store i64 0, ptr %i.de, align 8
  store i8 0, ptr %i.cw, align 8
  %i.dg = load ptr, ptr %19, align 8              ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.di = icmp eq ptr %i.dg, %i.dh
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit
  %i.dj = load i64, ptr %i.dh, align 8
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dk) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %i.dl = load ptr, ptr %7, align 8               ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %bb.u
  %i.do = load i64, ptr %i.dm, align 8
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dp) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node16BlobDeserializerINS_20SnapshotDeserializerEE14ReadArithmeticIhEEvPT_m(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store i64 %2, ptr %i.a, align 8
  %i.d = load i8, ptr %0, align 8, !range !26, !noundef !38
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @_ZNK4node26BlobSerializerDeserializer7GetNameIhEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(1) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 1, ptr %i.b, align 8
  %i.f = load i8, ptr %0, align 8, !range !26, !noundef !38
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %_ZNK4node26BlobSerializerDeserializer5DebugIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRmEEEvPKcDpOT_.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr @stderr, align 8
  call void @_ZN4node7FPrintFIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRmEEEvP8_IO_FILESt17basic_string_viewIcS4_EDpOT_(ptr noundef %i.h, i64 31, ptr nonnull @.str.383, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #34
  br label %_ZNK4node26BlobSerializerDeserializer5DebugIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRmEEEvPKcDpOT_.exit

_ZNK4node26BlobSerializerDeserializer5DebugIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRmEEEvPKcDpOT_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.i = load ptr, ptr %3, align 8                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK4node26BlobSerializerDeserializer5DebugIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRmEEEvPKcDpOT_.exit
  %i.l = load i64, ptr %i.j, align 8
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK4node26BlobSerializerDeserializer5DebugIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRmEEEvPKcDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %.pre = load i64, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  %i.n = phi i64 [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %2, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  store i64 %i.n, ptr %i.c, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.s, i64 %i.n, i1 false)
  %i.t = load i8, ptr %0, align 8, !range !26, !noundef !38
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %bb.l

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.v = load i8, ptr %1, align 1                 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !720)
  %i.w = icmp ult i8 %i.v, 10                     ; 2 uses
  %i.x = icmp ult i8 %i.v, 100
  %. = select i1 %i.x, i32 2, i32 3               ; 3 uses
  %i.y = zext nneg i32 %. to i64
  %i.z = select i1 %i.w, i64 1, i64 %i.y          ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  store ptr %i.aa, ptr %6, align 8, !alias.scope !720
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.z, ptr %7, align 8, !alias.scope !720
  br label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i8 45, i64 %i.z, i1 false)
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.z, ptr %8, align 8, !alias.scope !720
  %9 = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.z
  store i8 0, ptr %9, align 1
  %i.ab = icmp ugt i8 %i.v, 99
  br i1 %i.ab, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %i.ac = urem i8 %i.v, 100
  %i.ad = shl nuw i8 %i.ac, 1
  %i.ae = udiv i8 %i.v, 100
  %i.af = zext i8 %i.ad to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !noalias !720
  %i.aj = zext nneg i32 %. to i64
  %i.ak = getelementptr i8, ptr %i.aa, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 -1
  store i8 %i.ai, ptr %i.al, align 1
  %i.am = load i8, ptr %i.ag, align 2, !noalias !720
  %10 = add nsw i32 %., -2
  %11 = zext nneg i32 %10 to i64
  br label %bb.e, !llvm.loop !32

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %i.an = shl nuw i8 %i.v, 1
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !noalias !720
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 %i.ar, ptr %i.as, align 1
  %i.at = load i8, ptr %i.ap, align 2, !noalias !720
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.e:                                             ; preds = %.lr.ph.preheader.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread
  %.sink32 = phi i64 [ %11, %.lr.ph.preheader.i.i ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread ]
  %.sink = phi i8 [ %i.am, %.lr.ph.preheader.i.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread ]
  %.0.lcssa.i.i.ph = phi i8 [ %i.ae, %.lr.ph.preheader.i.i ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread ]
  %12 = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sink32
  store i8 %.sink, ptr %12, align 1
  %i.au = or disjoint i8 %.0.lcssa.i.i.ph, 48
  br label %_ZNSt7__cxx119to_stringEi.exit

_ZNSt7__cxx119to_stringEi.exit:                   ; preds = %._crit_edge.i.i, %bb.e
  %storemerge.i.i = phi i8 [ %i.au, %bb.e ], [ %i.at, %._crit_edge.i.i ]
  store i8 %storemerge.i.i, ptr %i.aa, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !723)
  %i.av = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.384, i64 noundef 2), !noalias !723 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 11 uses
  store ptr %i.aw, ptr %5, align 8, !alias.scope !723
  %i.ax = load ptr, ptr %i.av, align 8            ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 5 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

bb.f:                                             ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bb = load i64, ptr %i.ba, align 8            ; 3 uses
  %i.bc = icmp ult i64 %i.bb, 16
  call void @llvm.assume(i1 %i.bc)
  %i.bd = add nuw nsw i64 %i.bb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull align 8 dereferenceable(1) %i.ay, i64 %i.bd, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %_ZNSt7__cxx119to_stringEi.exit
  store ptr %i.ax, ptr %5, align 8, !alias.scope !723
  %i.be = load i64, ptr %i.ay, align 8
  store i64 %i.be, ptr %i.aw, align 8, !alias.scope !723
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  %i.bf = phi ptr [ %i.aw, %bb.f ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3 ] ; 2 uses
  %i.bg = phi i64 [ %i.bb, %bb.f ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3 ] ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store i64 %i.bg, ptr %i.bi, align 8, !alias.scope !723
  store ptr %i.ay, ptr %i.av, align 8
  store i64 0, ptr %i.bh, align 8
  store i8 0, ptr %i.ay, align 8
  %i.bj = load i64, ptr %i.a, align 8
  %i.bk = icmp ugt i64 %i.bj, 1                   ; 2 uses
  %i.bl = select i1 %i.bk, ptr @.str.385, ptr @.str.22 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !726)
  %i.bm = select i1 %i.bk, i64 7, i64 2           ; 4 uses
  %i.bn = sub i64 9223372036854775807, %i.bg
  %i.bo = icmp ult i64 %i.bn, %i.bm
  br i1 %i.bo, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.g:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.322) #30, !noalias !726
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  %i.bp = add i64 %i.bg, %i.bm                    ; 3 uses
  %i.bq = icmp eq ptr %i.bf, %i.aw
  br i1 %i.bq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.br = icmp ult i64 %i.bg, 16
  call void @llvm.assume(i1 %i.br)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.bs = load i64, ptr %i.aw, align 8, !noalias !726
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.bt = phi i64 [ %i.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.bp, %i.bt
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2) %i.bu, ptr noundef nonnull align 1 dereferenceable(2) %i.bl, i64 %i.bm, i1 false), !noalias !726
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.bg, i64 noundef 0, ptr noundef nonnull %i.bl, i64 noundef %i.bm), !noalias !726
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.i, %bb.h
  store i64 %i.bp, ptr %i.bi, align 8, !noalias !726
  %i.bv = load ptr, ptr %5, align 8, !noalias !726
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bp
  store i8 0, ptr %i.bw, align 1, !noalias !726
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.bx, ptr %4, align 8, !alias.scope !726
  %i.by = load ptr, ptr %5, align 8, !noalias !726 ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.aw
  br i1 %i.bz, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ca = load i64, ptr %i.bi, align 8, !noalias !726 ; 3 uses
  %i.cb = icmp ult i64 %i.ca, 16
  call void @llvm.assume(i1 %i.cb)
  %i.cc = add nuw nsw i64 %i.ca, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bx, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.cc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.by, ptr %4, align 8, !alias.scope !726
  %i.cd = load i64, ptr %i.aw, align 8, !noalias !726
  store i64 %i.cd, ptr %i.bx, align 8, !alias.scope !726
  %.pre.i5 = load i64, ptr %i.bi, align 8, !noalias !726
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  %i.ce = phi i64 [ %i.ca, %bb.j ], [ %.pre.i5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4 ]
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ce, ptr %i.cf, align 8, !alias.scope !726
  store ptr %i.aw, ptr %5, align 8, !noalias !726
  store i64 0, ptr %i.bi, align 8, !noalias !726
  store i8 0, ptr %i.aw, align 8, !noalias !726
  %i.cg = load ptr, ptr %6, align 8               ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.aa
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8
  %i.ci = load i64, ptr %i.aa, align 8
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.ck = load i8, ptr %0, align 8, !range !26, !noundef !38
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.k, label %_ZNK4node26BlobSerializerDeserializer5DebugIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmEEEvPKcDpOT_.exit

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11
  %i.cm = load ptr, ptr @stderr, align 8
  call void @_ZN4node7FPrintFIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmEEEvP8_IO_FILESt17basic_string_viewIcS4_EDpOT_(ptr noundef %i.cm, i64 19, ptr nonnull @.str.386, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c) #34
  br label %_ZNK4node26BlobSerializerDeserializer5DebugIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmEEEvPKcDpOT_.exit

_ZNK4node26BlobSerializerDeserializer5DebugIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmEEEvPKcDpOT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, %bb.k
  %i.cn = load ptr, ptr %4, align 8               ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.bx
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNK4node26BlobSerializerDeserializer5DebugIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmEEEvPKcDpOT_.exit
  %i.cp = load i64, ptr %i.bx, align 8
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNK4node26BlobSerializerDeserializer5DebugIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmEEEvPKcDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %.pre15 = load i64, ptr %i.c, align 8
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %bb.d
  %i.cr = phi i64 [ %.pre15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14 ], [ %i.n, %bb.d ]
  %i.cs = load i64, ptr %i.q, align 8
  %i.ct = add i64 %i.cs, %i.cr
  store i64 %i.ct, ptr %i.q, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  ret void
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #15

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7FPrintFIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEvP8_IO_FILESt17basic_string_viewIcS4_EDpOT_(ptr noundef %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #14 comdat {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @_ZN4node7SPrintFIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES6_St17basic_string_viewIcS4_EDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) #34
  call void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #29
  %i.a = load ptr, ptr %5, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
end_hunk_1
