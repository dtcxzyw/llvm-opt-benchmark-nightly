Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/gtest-all?download=true
inline.NumInlined: 6243
inline.NumDeleted: 1690
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN7testing8internal18PrintCharAndCodeToIhhEEvT0_PSo:bb.a
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i: ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN7testing8internalL20PrintAsCharLiteralToIhhEENS0_10CharFormatET0_PSo.exit.thread

bb.o:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #53
  call void @_ZN7testing8internal6String12FormatHexIntB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i32 noundef %i.c)
  %i.x = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.455, i64 noundef 2)
          to label %.noexc.i unwind label %bb.r   ; 6 uses

.noexc.i:                                         ; preds = %bb.o
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.y, ptr %2, align 8, !tbaa !47, !alias.scope !1670
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !45   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 5 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.p:                                             ; preds = %.noexc.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !49 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 16
  call void @llvm.assume(i1 %i.ae)
  %i.af = add nuw nsw i64 %i.ad, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.af, i1 false)
  br label %bb.q

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.noexc.i
  store ptr %i.z, ptr %2, align 8, !tbaa !45, !alias.scope !1670
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !46
  store i64 %i.ag, ptr %i.y, align 8, !tbaa !46, !alias.scope !1670
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !49
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.p
  %i.ah = phi ptr [ %i.y, %bb.p ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ai = phi i64 [ %i.ad, %bb.p ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ai, ptr %i.ak, align 8, !tbaa !49, !alias.scope !1670
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !45
  store i64 0, ptr %i.aj, align 8, !tbaa !49
  store i8 0, ptr %i.aa, align 8, !tbaa !46
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ah, i64 noundef %i.ai)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.s ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %bb.q
  %i.am = load ptr, ptr %2, align 8, !tbaa !45    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.y
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.ao = load i64, ptr %i.y, align 8, !tbaa !46
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i
  %i.aq = load ptr, ptr %3, align 8, !tbaa !45    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZN7testing8internalL20PrintAsCharLiteralToIhhEENS0_10CharFormatET0_PSo.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !46
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #54
  br label %_ZN7testing8internalL20PrintAsCharLiteralToIhhEENS0_10CharFormatET0_PSo.exit

bb.r:                                             ; preds = %bb.o
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i

bb.s:                                             ; preds = %bb.q
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %2, align 8, !tbaa !45    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.y
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.i: ; preds = %bb.s
  %i.az = load i64, ptr %i.y, align 8, !tbaa !46
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.i, %bb.r
  %.pn.i = phi { ptr, i32 } [ %i.av, %bb.r ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.i ], [ %i.aw, %bb.s ]
  %i.bb = load ptr, ptr %3, align 8, !tbaa !45    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !46
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i ], [ %i.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  br label %common.resume

_ZN7testing8internalL20PrintAsCharLiteralToIhhEENS0_10CharFormatET0_PSo.exit.thread: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i
  %i.bg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.347, i64 noundef 1) ; 0 uses
  br label %bb.t

_ZN7testing8internalL20PrintAsCharLiteralToIhhEENS0_10CharFormatET0_PSo.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.347, i64 noundef 1) ; 0 uses
  %i.bi = icmp eq i8 %0, 0
  br i1 %i.bi, label %bb.w, label %bb.t

bb.t:                                             ; preds = %_ZN7testing8internalL20PrintAsCharLiteralToIhhEENS0_10CharFormatET0_PSo.exit.thread, %_ZN7testing8internalL20PrintAsCharLiteralToIhhEENS0_10CharFormatET0_PSo.exit
  %i.bj = phi i1 [ false, %_ZN7testing8internalL20PrintAsCharLiteralToIhhEENS0_10CharFormatET0_PSo.exit.thread ], [ true, %_ZN7testing8internalL20PrintAsCharLiteralToIhhEENS0_10CharFormatET0_PSo.exit ]
  %i.bk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.59, i64 noundef 2) ; 0 uses
  %i.bl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.c) ; 0 uses
  %i.bm = icmp ult i8 %0, 10
  %or.cond = or i1 %i.bm, %i.bj
  br i1 %or.cond, label %.sink.split, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.446, i64 noundef 4) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #53
  call void @_ZN7testing8internal6String12FormatHexIntB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i32 noundef %i.c)
  %i.bo = load ptr, ptr %4, align 8, !tbaa !45
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !49
  %i.br = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.bo, i64 noundef %i.bq)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.v ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.u
  %i.bs = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !46
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  br label %.sink.split

bb.v:                                             ; preds = %bb.u
  %i.bx = landingpad { ptr, i32 }
          cleanup
  %i.by = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.v
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !46
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  br label %common.resume

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.t, %_ZN7testing8internalL20PrintAsCharLiteralToIhhEENS0_10CharFormatET0_PSo.exit.thread33
  %.str.347.sink = phi ptr [ @.str.347, %_ZN7testing8internalL20PrintAsCharLiteralToIhhEENS0_10CharFormatET0_PSo.exit.thread33 ], [ @.str.60, %bb.t ], [ @.str.60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.cd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.347.sink, i64 noundef 1) ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %.sink.split, %_ZN7testing8internalL20PrintAsCharLiteralToIhhEENS0_10CharFormatET0_PSo.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal7PrintToEaPSo(i8 noundef signext %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN7testing8internal18PrintCharAndCodeToIhaEEvT0_PSo(i8 noundef signext %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal18PrintCharAndCodeToIhaEEvT0_PSo(i8 noundef signext %0, ptr noundef %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.347, i64 noundef 1) ; 0 uses
  switch i8 %0, label %bb.j [
    i8 0, label %_ZN7testing8internalL20PrintAsCharLiteralToIhaEENS0_10CharFormatET0_PSo.exit.thread34
    i8 39, label %_ZN7testing8internalL20PrintAsCharLiteralToIhaEENS0_10CharFormatET0_PSo.exit.thread
    i8 92, label %bb.b
    i8 7, label %bb.c
    i8 8, label %bb.d
    i8 12, label %bb.e
    i8 10, label %bb.f
    i8 13, label %bb.g
    i8 9, label %bb.h
    i8 11, label %bb.i
  ]

_ZN7testing8internalL20PrintAsCharLiteralToIhaEENS0_10CharFormatET0_PSo.exit.thread34: ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.84, i64 noundef 2) ; 0 uses
  br label %.sink.split

bb.b:                                             ; preds = %bb.a
  br label %_ZN7testing8internalL20PrintAsCharLiteralToIhaEENS0_10CharFormatET0_PSo.exit.thread

bb.c:                                             ; preds = %bb.a
  br label %_ZN7testing8internalL20PrintAsCharLiteralToIhaEENS0_10CharFormatET0_PSo.exit.thread

bb.d:                                             ; preds = %bb.a
  br label %_ZN7testing8internalL20PrintAsCharLiteralToIhaEENS0_10CharFormatET0_PSo.exit.thread

bb.e:                                             ; preds = %bb.a
  br label %_ZN7testing8internalL20PrintAsCharLiteralToIhaEENS0_10CharFormatET0_PSo.exit.thread

bb.f:                                             ; preds = %bb.a
  br label %_ZN7testing8internalL20PrintAsCharLiteralToIhaEENS0_10CharFormatET0_PSo.exit.thread

bb.g:                                             ; preds = %bb.a
  br label %_ZN7testing8internalL20PrintAsCharLiteralToIhaEENS0_10CharFormatET0_PSo.exit.thread

bb.h:                                             ; preds = %bb.a
  br label %_ZN7testing8internalL20PrintAsCharLiteralToIhaEENS0_10CharFormatET0_PSo.exit.thread

bb.i:                                             ; preds = %bb.a
  br label %_ZN7testing8internalL20PrintAsCharLiteralToIhaEENS0_10CharFormatET0_PSo.exit.thread

bb.j:                                             ; preds = %bb.a
  %5 = sext i8 %0 to i32
  %6 = add nsw i32 %5, -127
  %i.d = icmp ult i32 %6, -95                     ; 2 uses
  br i1 %i.d, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %0, ptr %i.a, align 1, !tbaa !46
  %i.e = load ptr, ptr %1, align 8, !tbaa !57
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !272
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i

bb.m:                                             ; preds = %bb.k
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %0) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i: ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN7testing8internalL20PrintAsCharLiteralToIhaEENS0_10CharFormatET0_PSo.exit

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #53
  %i.m = zext i8 %0 to i32
  call void @_ZN7testing8internal6String12FormatHexIntB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i32 noundef %i.m)
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.455, i64 noundef 2)
          to label %.noexc.i unwind label %bb.q   ; 6 uses

.noexc.i:                                         ; preds = %bb.n
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.o, ptr %2, align 8, !tbaa !47, !alias.scope !1673
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !45   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 5 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.o:                                             ; preds = %.noexc.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !49   ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.t, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.v, i1 false)
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.noexc.i
  store ptr %i.p, ptr %2, align 8, !tbaa !45, !alias.scope !1673
  %i.w = load i64, ptr %i.q, align 8, !tbaa !46
  store i64 %i.w, ptr %i.o, align 8, !tbaa !46, !alias.scope !1673
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !49
  br label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.o
  %i.x = phi ptr [ %i.o, %bb.o ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.y = phi i64 [ %i.t, %bb.o ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.y, ptr %i.aa, align 8, !tbaa !49, !alias.scope !1673
  store ptr %i.q, ptr %i.n, align 8, !tbaa !45
  store i64 0, ptr %i.z, align 8, !tbaa !49
  store i8 0, ptr %i.q, align 8, !tbaa !46
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.x, i64 noundef %i.y)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.r ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %bb.p
  %i.ac = load ptr, ptr %2, align 8, !tbaa !45    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.o
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.ae = load i64, ptr %i.o, align 8, !tbaa !46
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i
  %i.ag = load ptr, ptr %3, align 8, !tbaa !45    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !46
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  br label %_ZN7testing8internalL20PrintAsCharLiteralToIhaEENS0_10CharFormatET0_PSo.exit

bb.q:                                             ; preds = %bb.n
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i

bb.r:                                             ; preds = %bb.p
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %2, align 8, !tbaa !45    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.o
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.i: ; preds = %bb.r
  %i.ap = load i64, ptr %i.o, align 8, !tbaa !46
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.i, %bb.q
  %.pn.i = phi { ptr, i32 } [ %i.al, %bb.q ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.i ], [ %i.am, %bb.r ]
  %i.ar = load ptr, ptr %3, align 8, !tbaa !45    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i
  %i.au = load i64, ptr %i.as, align 8, !tbaa !46
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i ], [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  br label %common.resume

_ZN7testing8internalL20PrintAsCharLiteralToIhaEENS0_10CharFormatET0_PSo.exit.thread: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.str.447.sink = phi ptr [ @.str.454, %bb.i ], [ @.str.448, %bb.b ], [ @.str.449, %bb.c ], [ @.str.450, %bb.d ], [ @.str.451, %bb.e ], [ @.str.383, %bb.f ], [ @.str.452, %bb.g ], [ @.str.453, %bb.h ], [ @.str.447, %bb.a ]
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.447.sink, i64 noundef 2) ; 0 uses
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.347, i64 noundef 1) ; 0 uses
  br label %bb.s

_ZN7testing8internalL20PrintAsCharLiteralToIhaEENS0_10CharFormatET0_PSo.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i
  %i.aw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.347, i64 noundef 1) ; 0 uses
  %i.ax = icmp eq i8 %0, 0
  br i1 %i.ax, label %bb.v, label %bb.s

bb.s:                                             ; preds = %_ZN7testing8internalL20PrintAsCharLiteralToIhaEENS0_10CharFormatET0_PSo.exit.thread, %_ZN7testing8internalL20PrintAsCharLiteralToIhaEENS0_10CharFormatET0_PSo.exit
  %i.ay = phi i1 [ false, %_ZN7testing8internalL20PrintAsCharLiteralToIhaEENS0_10CharFormatET0_PSo.exit.thread ], [ %i.d, %_ZN7testing8internalL20PrintAsCharLiteralToIhaEENS0_10CharFormatET0_PSo.exit ]
  %i.az = sext i8 %0 to i32
  %i.ba = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.59, i64 noundef 2) ; 0 uses
  %i.bb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.az) ; 0 uses
  %or.cond = icmp ult i8 %0, 10
  %or.cond16 = or i1 %or.cond, %i.ay
  br i1 %or.cond16, label %.sink.split, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.446, i64 noundef 4) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #53
  %i.bd = zext i8 %0 to i32
  call void @_ZN7testing8internal6String12FormatHexIntB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i32 noundef %i.bd)
  %i.be = load ptr, ptr %4, align 8, !tbaa !45
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !49
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.be, i64 noundef %i.bg)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.u ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.t
  %i.bi = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !46
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  br label %.sink.split

bb.u:                                             ; preds = %bb.t
  %i.bn = landingpad { ptr, i32 }
          cleanup
  %i.bo = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.u
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !46
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #53
  br label %common.resume

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.s, %_ZN7testing8internalL20PrintAsCharLiteralToIhaEENS0_10CharFormatET0_PSo.exit.thread34
  %.str.347.sink = phi ptr [ @.str.347, %_ZN7testing8internalL20PrintAsCharLiteralToIhaEENS0_10CharFormatET0_PSo.exit.thread34 ], [ @.str.60, %bb.s ], [ @.str.60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.bt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.347.sink, i64 noundef 1) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %.sink.split, %_ZN7testing8internalL20PrintAsCharLiteralToIhaEENS0_10CharFormatET0_PSo.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal7PrintToEwPSo(i32 noundef signext %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN7testing8internal18PrintCharAndCodeToIwwEEvT0_PSo(i32 noundef signext %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal18PrintCharAndCodeToIwwEEvT0_PSo(i32 noundef signext %0, ptr noundef %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.456, i64 noundef 2) ; 0 uses
  %i.b = tail call fastcc noundef i32 @_ZN7testing8internalL20PrintAsCharLiteralToIwwEENS0_10CharFormatET0_PSo(i32 noundef signext %0, ptr noundef nonnull %1)
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.347, i64 noundef 1) ; 0 uses
  %i.d = icmp eq i32 %0, 0
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.59, i64 noundef 2) ; 0 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %0) ; 0 uses
  %i.g = icmp eq i32 %i.b, 1
  %or.cond = icmp ult i32 %0, 10
  %or.cond15 = or i1 %or.cond, %i.g
  br i1 %or.cond15, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.446, i64 noundef 4) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #53
  call void @_ZN7testing8internal6String12FormatHexIntB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, i32 noundef %0)
  %i.i = load ptr, ptr %2, align 8, !tbaa !45
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !49
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.i, i64 noundef %i.k)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.d ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.c
  %i.m = load ptr, ptr %2, align 8, !tbaa !45     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !46
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %2, align 8, !tbaa !45     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.d
  %i.v = load i64, ptr %i.t, align 8, !tbaa !46
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  resume { ptr, i32 } %i.r

bb.e:                                             ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.x = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.60, i64 noundef 1) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal19UniversalPrintArrayEPKcmPSo(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = add i64 %1, -1                           ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !46
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN7testing8internalL20PrintCharsAsStringToIcEEvPKT_mPSo(ptr noundef nonnull readonly %0, i64 noundef %i.a, ptr noundef %2)
  br label %_ZN7testing8internalL23UniversalPrintCharArrayIcEEvPKT_mPSo.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  tail call fastcc void @_ZN7testing8internalL20PrintCharsAsStringToIcEEvPKT_mPSo(ptr noundef readonly %0, i64 noundef %1, ptr noundef %2)
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.457, i64 noundef 21) ; 0 uses
  br label %_ZN7testing8internalL23UniversalPrintCharArrayIcEEvPKT_mPSo.exit

_ZN7testing8internalL23UniversalPrintCharArrayIcEEvPKT_mPSo.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal19UniversalPrintArrayEPKwmPSo(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = add i64 %1, -1                           ; 2 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !224
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN7testing8internalL20PrintCharsAsStringToIwEEvPKT_mPSo(ptr noundef nonnull readonly %0, i64 noundef %i.a, ptr noundef %2)
  br label %_ZN7testing8internalL23UniversalPrintCharArrayIwEEvPKT_mPSo.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  tail call fastcc void @_ZN7testing8internalL20PrintCharsAsStringToIwEEvPKT_mPSo(ptr noundef readonly %0, i64 noundef %1, ptr noundef %2)
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.457, i64 noundef 21) ; 0 uses
  br label %_ZN7testing8internalL23UniversalPrintCharArrayIwEEvPKT_mPSo.exit

_ZN7testing8internalL23UniversalPrintCharArrayIwEEvPKT_mPSo.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7testing8internal7PrintToEPKcPSo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.324, i64 noundef 4) ; 0 uses
  br label %bb.d

end_hunk_0
