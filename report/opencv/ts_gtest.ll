Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/ts_gtest?download=true
inline.NumInlined: 7033
inline.NumDeleted: 1603
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN7testing8internal18PrintCharAndCodeToIhhEEvT0_PSo:bb.a
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.398, i64 noundef 1) ; 0 uses
  %i.c = zext i8 %0 to i32                        ; 3 uses
  switch i8 %0, label %bb.k [
    i8 0, label %_ZN7testing8internalL20PrintAsCharLiteralToIhhEENS0_10CharFormatET0_PSo.exit.thread21
    i8 39, label %bb.b
    i8 92, label %bb.c
    i8 7, label %bb.d
    i8 8, label %bb.e
    i8 12, label %bb.f
    i8 10, label %bb.g
    i8 13, label %bb.h
    i8 9, label %bb.i
    i8 11, label %bb.j
  ]

_ZN7testing8internalL20PrintAsCharLiteralToIhhEENS0_10CharFormatET0_PSo.exit.thread21: ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.101, i64 noundef 2) ; 0 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.398, i64 noundef 1) ; 0 uses
  br label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.511, i64 noundef 2) ; 0 uses
  br label %_ZN7testing8internalL20PrintAsCharLiteralToIhhEENS0_10CharFormatET0_PSo.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.512, i64 noundef 2) ; 0 uses
  br label %_ZN7testing8internalL20PrintAsCharLiteralToIhhEENS0_10CharFormatET0_PSo.exit.thread

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.513, i64 noundef 2) ; 0 uses
  br label %_ZN7testing8internalL20PrintAsCharLiteralToIhhEENS0_10CharFormatET0_PSo.exit.thread

bb.e:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.239, i64 noundef 2) ; 0 uses
  br label %_ZN7testing8internalL20PrintAsCharLiteralToIhhEENS0_10CharFormatET0_PSo.exit.thread

bb.f:                                             ; preds = %bb.a
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.242, i64 noundef 2) ; 0 uses
  br label %_ZN7testing8internalL20PrintAsCharLiteralToIhhEENS0_10CharFormatET0_PSo.exit.thread

bb.g:                                             ; preds = %bb.a
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.241, i64 noundef 2) ; 0 uses
  br label %_ZN7testing8internalL20PrintAsCharLiteralToIhhEENS0_10CharFormatET0_PSo.exit.thread

bb.h:                                             ; preds = %bb.a
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.243, i64 noundef 2) ; 0 uses
  br label %_ZN7testing8internalL20PrintAsCharLiteralToIhhEENS0_10CharFormatET0_PSo.exit.thread

bb.i:                                             ; preds = %bb.a
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.240, i64 noundef 2) ; 0 uses
  br label %_ZN7testing8internalL20PrintAsCharLiteralToIhhEENS0_10CharFormatET0_PSo.exit.thread

bb.j:                                             ; preds = %bb.a
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.514, i64 noundef 2) ; 0 uses
  br label %_ZN7testing8internalL20PrintAsCharLiteralToIhhEENS0_10CharFormatET0_PSo.exit.thread

bb.k:                                             ; preds = %bb.a
  %i.o = add i8 %0, -32
  %i.p = icmp ult i8 %i.o, 95
  br i1 %i.p, label %bb.l, label %_ZN7testing8internalL20PrintAsCharLiteralToIhhEENS0_10CharFormatET0_PSo.exit

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %0, ptr %i.a, align 1, !tbaa !56
  %i.q = load ptr, ptr %1, align 8, !tbaa !65
  %i.r = getelementptr i8, ptr %i.q, i64 -24
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds i8, ptr %1, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !233
  %.not.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i

bb.n:                                             ; preds = %bb.l
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %0) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i: ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN7testing8internalL20PrintAsCharLiteralToIhhEENS0_10CharFormatET0_PSo.exit.thread

_ZN7testing8internalL20PrintAsCharLiteralToIhhEENS0_10CharFormatET0_PSo.exit.thread: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.398, i64 noundef 1) ; 0 uses
  br label %bb.o

_ZN7testing8internalL20PrintAsCharLiteralToIhhEENS0_10CharFormatET0_PSo.exit: ; preds = %bb.k
  %i.z = load ptr, ptr %1, align 8, !tbaa !65
  %i.aa = getelementptr i8, ptr %i.z, i64 -24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds i8, ptr %1, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !287
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.515, i64 noundef 2) ; 0 uses
  %i.ag = load ptr, ptr %1, align 8, !tbaa !65
  %i.ah = getelementptr i8, ptr %i.ag, i64 -24    ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds i8, ptr %1, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !287
  %i.am = and i32 %i.al, -75
  %i.an = or disjoint i32 %i.am, 8
  store i32 %i.an, ptr %i.ak, align 8, !tbaa !288
  %i.ao = load i64, ptr %i.ah, align 8
  %i.ap = getelementptr inbounds i8, ptr %1, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !287
  %i.as = or i32 %i.ar, 16384
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !288
  %i.at = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.c) ; 0 uses
  %i.au = load ptr, ptr %1, align 8, !tbaa !65
  %i.av = getelementptr i8, ptr %i.au, i64 -24
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = getelementptr inbounds i8, ptr %1, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store i32 %i.ae, ptr %i.ay, align 8, !tbaa !287
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.398, i64 noundef 1) ; 0 uses
  %i.ba = icmp eq i8 %0, 0
  br i1 %i.ba, label %bb.s, label %bb.o

bb.o:                                             ; preds = %_ZN7testing8internalL20PrintAsCharLiteralToIhhEENS0_10CharFormatET0_PSo.exit.thread, %_ZN7testing8internalL20PrintAsCharLiteralToIhhEENS0_10CharFormatET0_PSo.exit
  %.0.i20 = phi i1 [ false, %_ZN7testing8internalL20PrintAsCharLiteralToIhhEENS0_10CharFormatET0_PSo.exit.thread ], [ true, %_ZN7testing8internalL20PrintAsCharLiteralToIhhEENS0_10CharFormatET0_PSo.exit ]
  %i.bb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.76, i64 noundef 2) ; 0 uses
  %i.bc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.c) ; 0 uses
  %i.bd = icmp ult i8 %0, 10
  %or.cond = or i1 %i.bd, %.0.i20
  br i1 %or.cond, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.510, i64 noundef 4) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #54
  call void @_ZN7testing8internal6String12FormatHexIntB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, i32 noundef %i.c)
  %i.bf = load ptr, ptr %2, align 8, !tbaa !55
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !58
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.bf, i64 noundef %i.bh)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.q ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.p
  %i.bj = load ptr, ptr %2, align 8, !tbaa !55    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !56
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %i.bp = load ptr, ptr %2, align 8, !tbaa !55    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.q
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !56
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54
  resume { ptr, i32 } %i.bo

bb.r:                                             ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.77, i64 noundef 1) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %_ZN7testing8internalL20PrintAsCharLiteralToIhhEENS0_10CharFormatET0_PSo.exit.thread21, %_ZN7testing8internalL20PrintAsCharLiteralToIhhEENS0_10CharFormatET0_PSo.exit, %bb.r
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal7PrintToEaPSo(i8 noundef signext %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  tail call void @_ZN7testing8internal18PrintCharAndCodeToIhaEEvT0_PSo(i8 noundef signext %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal18PrintCharAndCodeToIhaEEvT0_PSo(i8 noundef signext %0, ptr noundef %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.398, i64 noundef 1) ; 0 uses
  switch i8 %0, label %bb.j [
    i8 0, label %_ZN7testing8internalL20PrintAsCharLiteralToIhaEENS0_10CharFormatET0_PSo.exit.thread22
    i8 39, label %3
    i8 92, label %bb.b
    i8 7, label %bb.c
    i8 8, label %bb.d
    i8 12, label %bb.e
    i8 10, label %bb.f
    i8 13, label %bb.g
    i8 9, label %bb.h
    i8 11, label %bb.i
  ]

_ZN7testing8internalL20PrintAsCharLiteralToIhaEENS0_10CharFormatET0_PSo.exit.thread22: ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.101, i64 noundef 2) ; 0 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.398, i64 noundef 1) ; 0 uses
  br label %bb.s

3:                                                ; preds = %bb.a
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.511, i64 noundef 2) ; 0 uses
  br label %_ZN7testing8internalL20PrintAsCharLiteralToIhaEENS0_10CharFormatET0_PSo.exit.thread

bb.b:                                             ; preds = %bb.a
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.512, i64 noundef 2) ; 0 uses
  br label %_ZN7testing8internalL20PrintAsCharLiteralToIhaEENS0_10CharFormatET0_PSo.exit.thread

bb.c:                                             ; preds = %bb.a
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.513, i64 noundef 2) ; 0 uses
  br label %_ZN7testing8internalL20PrintAsCharLiteralToIhaEENS0_10CharFormatET0_PSo.exit.thread

bb.d:                                             ; preds = %bb.a
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.239, i64 noundef 2) ; 0 uses
  br label %_ZN7testing8internalL20PrintAsCharLiteralToIhaEENS0_10CharFormatET0_PSo.exit.thread

bb.e:                                             ; preds = %bb.a
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.242, i64 noundef 2) ; 0 uses
  br label %_ZN7testing8internalL20PrintAsCharLiteralToIhaEENS0_10CharFormatET0_PSo.exit.thread

bb.f:                                             ; preds = %bb.a
  %9 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.241, i64 noundef 2) ; 0 uses
  br label %_ZN7testing8internalL20PrintAsCharLiteralToIhaEENS0_10CharFormatET0_PSo.exit.thread

bb.g:                                             ; preds = %bb.a
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.243, i64 noundef 2) ; 0 uses
  br label %_ZN7testing8internalL20PrintAsCharLiteralToIhaEENS0_10CharFormatET0_PSo.exit.thread

bb.h:                                             ; preds = %bb.a
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.240, i64 noundef 2) ; 0 uses
  br label %_ZN7testing8internalL20PrintAsCharLiteralToIhaEENS0_10CharFormatET0_PSo.exit.thread

bb.i:                                             ; preds = %bb.a
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.514, i64 noundef 2) ; 0 uses
  br label %_ZN7testing8internalL20PrintAsCharLiteralToIhaEENS0_10CharFormatET0_PSo.exit.thread

bb.j:                                             ; preds = %bb.a
  %13 = add i8 %0, -32
  %i.e = icmp ult i8 %13, 95
  br i1 %i.e, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %0, ptr %i.a, align 1, !tbaa !56
  %i.f = load ptr, ptr %1, align 8, !tbaa !65
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %1, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !233
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i

bb.m:                                             ; preds = %bb.k
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %0) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i: ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN7testing8internalL20PrintAsCharLiteralToIhaEENS0_10CharFormatET0_PSo.exit.thread

_ZN7testing8internalL20PrintAsCharLiteralToIhaEENS0_10CharFormatET0_PSo.exit.thread: ; preds = %3, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.398, i64 noundef 1) ; 0 uses
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.n = load ptr, ptr %1, align 8, !tbaa !65
  %i.o = getelementptr i8, ptr %i.n, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %1, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !287
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.515, i64 noundef 2) ; 0 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !65
  %i.v = getelementptr i8, ptr %i.u, i64 -24      ; 2 uses
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr %1, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !287
  %i.aa = and i32 %i.z, -75
  %i.ab = or disjoint i32 %i.aa, 8
  store i32 %i.ab, ptr %i.y, align 8, !tbaa !288
  %i.ac = load i64, ptr %i.v, align 8
  %i.ad = getelementptr inbounds i8, ptr %1, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !287
  %i.ag = or i32 %i.af, 16384
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !288
  %i.ah = zext i8 %0 to i32
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.ah) ; 0 uses
  %i.aj = load ptr, ptr %1, align 8, !tbaa !65
  %i.ak = getelementptr i8, ptr %i.aj, i64 -24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %1, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store i32 %i.s, ptr %i.an, align 8, !tbaa !287
  %15 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.398, i64 noundef 1) ; 0 uses
  %16 = icmp eq i8 %0, 0
  br i1 %16, label %bb.s, label %bb.o

bb.o:                                             ; preds = %_ZN7testing8internalL20PrintAsCharLiteralToIhaEENS0_10CharFormatET0_PSo.exit.thread, %bb.n
  %.0.i21 = phi i1 [ false, %_ZN7testing8internalL20PrintAsCharLiteralToIhaEENS0_10CharFormatET0_PSo.exit.thread ], [ true, %bb.n ]
  %17 = sext i8 %0 to i32
  %i.ao = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.76, i64 noundef 2) ; 0 uses
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %17) ; 0 uses
  %or.cond = icmp ult i8 %0, 10
  %or.cond16 = or i1 %or.cond, %.0.i21
  br i1 %or.cond16, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.510, i64 noundef 4) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #54
  %i.ar = zext i8 %0 to i32
  call void @_ZN7testing8internal6String12FormatHexIntB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, i32 noundef %i.ar)
  %i.as = load ptr, ptr %2, align 8, !tbaa !55
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !58
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.as, i64 noundef %i.au)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.q ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.p
  %i.aw = load ptr, ptr %2, align 8, !tbaa !55    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !56
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bb = landingpad { ptr, i32 }
          cleanup
  %i.bc = load ptr, ptr %2, align 8, !tbaa !55    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.q
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !56
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54
  resume { ptr, i32 } %i.bb

bb.r:                                             ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.77, i64 noundef 1) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %_ZN7testing8internalL20PrintAsCharLiteralToIhaEENS0_10CharFormatET0_PSo.exit.thread22, %bb.n, %bb.r
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal7PrintToEwPSo(i32 noundef signext %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  tail call void @_ZN7testing8internal18PrintCharAndCodeToIwwEEvT0_PSo(i32 noundef signext %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal18PrintCharAndCodeToIwwEEvT0_PSo(i32 noundef signext %0, ptr noundef %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.516, i64 noundef 2) ; 0 uses
  %i.b = tail call fastcc noundef i32 @_ZN7testing8internalL20PrintAsCharLiteralToIwwEENS0_10CharFormatET0_PSo(i32 noundef signext %0, ptr noundef nonnull %1)
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.398, i64 noundef 1) ; 0 uses
  %i.d = icmp eq i32 %0, 0
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.76, i64 noundef 2) ; 0 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %0) ; 0 uses
  %i.g = icmp eq i32 %i.b, 1
  %or.cond = icmp ult i32 %0, 10
  %or.cond15 = or i1 %or.cond, %i.g
  br i1 %or.cond15, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.510, i64 noundef 4) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #54
  call void @_ZN7testing8internal6String12FormatHexIntB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, i32 noundef %0)
  %i.i = load ptr, ptr %2, align 8, !tbaa !55
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !58
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.i, i64 noundef %i.k)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.d ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.c
  %i.m = load ptr, ptr %2, align 8, !tbaa !55     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !56
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %2, align 8, !tbaa !55     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.d
  %i.v = load i64, ptr %i.t, align 8, !tbaa !56
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #55
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54
  resume { ptr, i32 } %i.r

bb.e:                                             ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.x = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.77, i64 noundef 1) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal19UniversalPrintArrayEPKcmPSo(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = add i64 %1, -1                           ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !56
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call fastcc noundef i32 @_ZN7testing8internalL20PrintCharsAsStringToIcEENS0_10CharFormatEPKT_mPSo(ptr noundef nonnull readonly %0, i64 noundef %i.a, ptr noundef %2) ; 0 uses
  br label %_ZN7testing8internalL23UniversalPrintCharArrayIcEEvPKT_mPSo.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.f = tail call fastcc noundef i32 @_ZN7testing8internalL20PrintCharsAsStringToIcEENS0_10CharFormatEPKT_mPSo(ptr noundef readonly %0, i64 noundef %1, ptr noundef %2) ; 0 uses
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.517, i64 noundef 21) ; 0 uses
  br label %_ZN7testing8internalL23UniversalPrintCharArrayIcEEvPKT_mPSo.exit

_ZN7testing8internalL23UniversalPrintCharArrayIcEEvPKT_mPSo.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal19UniversalPrintArrayEPKwmPSo(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = add i64 %1, -1                           ; 2 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !232
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN7testing8internalL20PrintCharsAsStringToIwEENS0_10CharFormatEPKT_mPSo(ptr noundef nonnull readonly %0, i64 noundef %i.a, ptr noundef %2)
  br label %_ZN7testing8internalL23UniversalPrintCharArrayIwEEvPKT_mPSo.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  tail call fastcc void @_ZN7testing8internalL20PrintCharsAsStringToIwEENS0_10CharFormatEPKT_mPSo(ptr noundef readonly %0, i64 noundef %1, ptr noundef %2)
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.517, i64 noundef 21) ; 0 uses
  br label %_ZN7testing8internalL23UniversalPrintCharArrayIwEEvPKT_mPSo.exit

_ZN7testing8internalL23UniversalPrintCharArrayIwEEvPKT_mPSo.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal7PrintToEPKcPSo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.362, i64 noundef 4) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %0)
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.363, i64 noundef 13) ; 0 uses
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #60
  %i.f = tail call fastcc noundef i32 @_ZN7testing8internalL20PrintCharsAsStringToIcEENS0_10CharFormatEPKT_mPSo(ptr noundef nonnull %0, i64 noundef %i.e, ptr noundef nonnull %1) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN7testing8internalL20PrintCharsAsStringToIcEENS0_10CharFormatEPKT_mPSo(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr noundef nonnull %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.97, i64 noundef 1) ; 0 uses
  %.not18 = icmp eq i64 %1, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN7testing8internalL22PrintAsStringLiteralToEcPSo.exit.thread, %bb.a
  %.013.lcssa = phi i32 [ 0, %bb.a ], [ %i.n, %_ZN7testing8internalL22PrintAsStringLiteralToEcPSo.exit.thread ]
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.97, i64 noundef 1) ; 0 uses
  ret i32 %.013.lcssa

.lr.ph:                                           ; preds = %bb.a, %_ZN7testing8internalL22PrintAsStringLiteralToEcPSo.exit.thread
  %.017 = phi i64 [ %i.o, %_ZN7testing8internalL22PrintAsStringLiteralToEcPSo.exit.thread ], [ 0, %bb.a ] ; 2 uses
  %.01316 = phi i32 [ %i.n, %_ZN7testing8internalL22PrintAsStringLiteralToEcPSo.exit.thread ], [ 0, %bb.a ] ; 3 uses
  %.01415 = phi i1 [ %.0.i.i21, %_ZN7testing8internalL22PrintAsStringLiteralToEcPSo.exit.thread ], [ false, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.017
  %i.d = load i8, ptr %i.c, align 1, !tbaa !56    ; 3 uses
  br i1 %.01415, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.e = zext i8 %i.d to i32
  %i.f = tail call i32 @isxdigit(i32 noundef %i.e) #60
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.518, i64 noundef 2) ; 0 uses
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.97, i64 noundef 1) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph
  switch i8 %i.d, label %_ZN7testing8internalL22PrintAsStringLiteralToEcPSo.exit [
    i8 39, label %bb.e
    i8 34, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.398, i64 noundef 1) ; 0 uses
  br label %_ZN7testing8internalL22PrintAsStringLiteralToEcPSo.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.519, i64 noundef 2) ; 0 uses
  br label %_ZN7testing8internalL22PrintAsStringLiteralToEcPSo.exit.thread

_ZN7testing8internalL22PrintAsStringLiteralToEcPSo.exit: ; preds = %bb.d
  %i.k = zext i8 %i.d to i32
end_hunk_0
