Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libphonenumber/original/unicodetext?download=true
inline.NumInlined: 200
inline.NumDeleted: 79
begin_hunk_0_@_ZN4i18n12phonenumbers11UnicodeText4Repr6appendEPKci:bb.a
  %i.t = sext i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %1, i64 %i.t, i1 false)
  %i.u = load i32, ptr %i.a, align 8, !tbaa !22
  %i.v = add nsw i32 %i.u, %2
  store i32 %i.v, ptr %i.a, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4i18n12phonenumbers11UnicodeText4Repr11DebugStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(18) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str, i64 noundef 6)
          to label %bb.b unwind label %bb.h       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !36
  %i.i = and i32 %i.h, -75
  %i.j = or disjoint i32 %i.i, 8
  store i32 %i.j, ptr %i.g, align 8, !tbaa !37
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %1)
          to label %_ZNSolsEPKv.exit unwind label %bb.h ; 8 uses

_ZNSolsEPKv.exit:                                 ; preds = %bb.b
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.1, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5: ; preds = %_ZNSolsEPKv.exit
  %i.m = load ptr, ptr %1, align 8, !tbaa !21     ; 3 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !26
  %i.o = getelementptr i8, ptr %i.n, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %i.k, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !38
  %i.t = or i32 %i.s, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.q, i32 noundef %i.t)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7 unwind label %bb.h

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5
  %i.u = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #25
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull %i.m, i64 noundef %i.u)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7: ; preds = %bb.c, %bb.d
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.2, i64 noundef 6)
          to label %bb.e unwind label %bb.h       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !26
  %i.y = getelementptr i8, ptr %i.x, i64 -24
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds i8, ptr %i.k, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !36
  %i.ad = and i32 %i.ac, -75
  %i.ae = or disjoint i32 %i.ad, 2
  store i32 %i.ae, ptr %i.ab, align 8, !tbaa !37
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !22
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i32 noundef %i.ag)
          to label %bb.f unwind label %bb.h       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull @.str.3, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !19
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, i32 noundef %i.ak)
          to label %bb.g unwind label %bb.h       ; 3 uses

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull @.str.4, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15: ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !23, !range !20, !noundef !24
  %i.ap = trunc nuw i8 %i.ao to i1
  %.str.5..str.6 = select i1 %i.ap, ptr @.str.5, ptr @.str.6
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull %.str.5..str.6, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull @.str.7, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.as, ptr %0, align 8, !tbaa !40
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !42
  store i8 0, ptr %i.as, align 8, !tbaa !13
  %i.au = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.j unwind label %bb.i       ; 0 uses

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15, %bb.g, %bb.f, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7, %bb.d, %bb.c, %_ZNSolsEPKv.exit, %bb.b, %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13, %bb.e
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %0, align 8, !tbaa !43    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.as
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.az = load i64, ptr %i.as, align 8, !tbaa !13
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20
  %i.bb = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bb, ptr %2, align 8, !tbaa !26
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bd = getelementptr i8, ptr %i.bb, i64 -24
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds i8, ptr %2, i64 %i.be
  store ptr %i.bc, ptr %i.bf, align 8, !tbaa !26
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bg, ptr %i.a, align 8, !tbaa !26
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bh, align 8, !tbaa !26
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !43 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !13
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #24
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bh, align 8, !tbaa !26
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bo) #25
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bp, ptr %2, align 8, !tbaa !26
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.br = getelementptr i8, ptr %i.bp, i64 -24
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = getelementptr inbounds i8, ptr %2, i64 %i.bs
  store ptr %i.bq, ptr %i.bt, align 8, !tbaa !26
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.bu, align 8, !tbaa !45
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bv) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.av, %bb.h ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.aw, %bb.i ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #1 align 2

declare i32 @__gxx_personality_v0(...)

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #5 align 2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4i18n12phonenumbers11UnicodeTextC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 18)) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %0, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.a, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 1, ptr %i.b, align 1, !tbaa !46
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4i18n12phonenumbers11UnicodeTextC2ERKS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) initializes((0, 18)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %0, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.a, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 1, ptr %i.b, align 1, !tbaa !46
  %2 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN4i18n12phonenumbers11UnicodeText4CopyERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = load i8, ptr %i.a, align 8, !tbaa !23, !range !20, !noundef !24
  %5 = trunc nuw i8 %4 to i1
  br i1 %5, label %bb.d, label %_ZN4i18n12phonenumbers11UnicodeText4ReprD2Ev.exit

bb.d:                                             ; preds = %bb.c
  %6 = load ptr, ptr %0, align 8, !tbaa !21       ; 2 uses
  %7 = icmp eq ptr %6, null
  br i1 %7, label %_ZN4i18n12phonenumbers11UnicodeText4ReprD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %6) #24
  br label %_ZN4i18n12phonenumbers11UnicodeText4ReprD2Ev.exit

_ZN4i18n12phonenumbers11UnicodeText4ReprD2Ev.exit: ; preds = %bb.c, %bb.d, %bb.e
  resume { ptr, i32 } %3
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN4i18n12phonenumbers11UnicodeText4CopyERKS1_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !48
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !49   ; 7 uses
  %i.d = icmp eq i32 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !23, !range !20, !noundef !24
  %i.g = trunc nuw i8 %i.f to i1                  ; 3 uses
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.c, label %_ZN4i18n12phonenumbers11UnicodeText4Repr5clearEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN4i18n12phonenumbers11UnicodeText4Repr5clearEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #24
  br label %_ZN4i18n12phonenumbers11UnicodeText4Repr5clearEv.exit.i.i

_ZN4i18n12phonenumbers11UnicodeText4Repr5clearEv.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %0, i8 0, i64 16, i1 false)
  br label %_ZN4i18n12phonenumbers11UnicodeText4Repr4CopyEPKci.exit

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %i.l = icmp sle i32 %i.c, %i.k
  %or.cond9.i.i = select i1 %i.g, i1 %i.l, i1 false
  br i1 %or.cond9.i.i, label %._ZN4i18n12phonenumbers11UnicodeText4Repr7reserveEi.exit.i_crit_edge.i, label %bb.f

._ZN4i18n12phonenumbers11UnicodeText4Repr7reserveEi.exit.i_crit_edge.i: ; preds = %bb.e
  %.pre.pre3.pre.i = load ptr, ptr %0, align 8, !tbaa !21
  br label %_ZN4i18n12phonenumbers11UnicodeText4Repr7reserveEi.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.m = mul nsw i32 %i.k, 3
  %i.n = sdiv i32 %i.m, 2
  %i.o = add nsw i32 %i.n, 20
  %.sroa.speculated.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.c, i32 %i.o) ; 2 uses
  store i32 %.sroa.speculated.i.i.i, ptr %i.j, align 4, !tbaa !19
  %i.p = sext i32 %.sroa.speculated.i.i.i to i64
  %i.q = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #23 ; 3 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !21     ; 3 uses
  %.not4.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not4.i.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !22
  %i.u = sext i32 %i.t to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 1 %i.r, i64 %i.u, i1 false)
  br i1 %i.g, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.r) #24
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  store ptr %i.q, ptr %0, align 8, !tbaa !21
  br label %_ZN4i18n12phonenumbers11UnicodeText4Repr7reserveEi.exit.i.i

_ZN4i18n12phonenumbers11UnicodeText4Repr7reserveEi.exit.i.i: ; preds = %bb.i, %._ZN4i18n12phonenumbers11UnicodeText4Repr7reserveEi.exit.i_crit_edge.i
  %.pre.pre3.i = phi ptr [ %.pre.pre3.pre.i, %._ZN4i18n12phonenumbers11UnicodeText4Repr7reserveEi.exit.i_crit_edge.i ], [ %i.q, %bb.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !22   ; 3 uses
  %i.x = icmp slt i32 %i.w, %i.c
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4i18n12phonenumbers11UnicodeText4Repr7reserveEi.exit.i.i
  %i.y = sext i32 %i.w to i64
  %i.z = getelementptr inbounds i8, ptr %.pre.pre3.i, i64 %i.y
  %i.aa = sub nsw i32 %i.c, %i.w
  %i.ab = zext nneg i32 %i.aa to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.z, i8 0, i64 %i.ab, i1 false)
  %.pre.pre.i = load ptr, ptr %0, align 8, !tbaa !21
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN4i18n12phonenumbers11UnicodeText4Repr7reserveEi.exit.i.i
  %.pre.i = phi ptr [ %.pre.pre.i, %bb.j ], [ %.pre.pre3.i, %_ZN4i18n12phonenumbers11UnicodeText4Repr7reserveEi.exit.i.i ]
  store i32 %i.c, ptr %i.v, align 8, !tbaa !22
  br label %_ZN4i18n12phonenumbers11UnicodeText4Repr4CopyEPKci.exit

_ZN4i18n12phonenumbers11UnicodeText4Repr4CopyEPKci.exit: ; preds = %_ZN4i18n12phonenumbers11UnicodeText4Repr5clearEv.exit.i.i, %bb.k
  %i.ac = phi ptr [ null, %_ZN4i18n12phonenumbers11UnicodeText4Repr5clearEv.exit.i.i ], [ %.pre.i, %bb.k ]
  store i8 1, ptr %i.e, align 8, !tbaa !23
  %i.ad = sext i32 %i.c to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr readonly align 1 %i.a, i64 %i.ad, i1 false)
  ret ptr %0
}

; Function Attrs: mustprogress memory(readwrite, target_mem: none) uwtable
define void @_ZN4i18n12phonenumbers11UnicodeTextC2ERKNS1_14const_iteratorES4_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 18)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %0, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.a, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 1, ptr %i.b, align 1, !tbaa !46
  %i.c = load ptr, ptr %1, align 8, !tbaa !12     ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !12
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = trunc i64 %i.g to i32                    ; 3 uses
  %.not.i.i.not = icmp sgt i32 %i.h, 0
  br i1 %.not.i.i.not, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = tail call i32 @llvm.umax.i32(i32 %i.h, i32 20) ; 2 uses
  store i32 %i.j, ptr %i.i, align 4, !tbaa !19
  %i.k = zext nneg i32 %i.j to i64
  %i.l = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #23 ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !21
  store i8 1, ptr %i.a, align 8, !tbaa !23
  br label %bb.b

bb.b:                                             ; preds = %.noexc, %bb.a
  %i.m = phi ptr [ %i.l, %.noexc ], [ null, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %sext = shl i64 %i.g, 32
  %i.o = ashr exact i64 %sext, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr readonly align 1 %i.c, i64 %i.o, i1 false)
  store i32 %i.h, ptr %i.n, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4i18n12phonenumbers11UnicodeText13UTF8SubstringB5cxx11ERKNS1_14const_iteratorES4_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !12     ; 4 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !12     ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !40
  %i.h = icmp eq ptr %i.b, null
  %i.i = icmp ne ptr %i.c, null
  %or.cond.i = and i1 %i.h, %i.i
  br i1 %or.cond.i, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.17) #26
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.f, ptr %i.a, align 8, !tbaa !50
  %i.j = icmp ugt i64 %i.f, 15
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !43
  %i.l = load i64, ptr %i.a, align 8, !tbaa !50
  store i64 %i.l, ptr %i.g, align 8, !tbaa !13
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.m = phi ptr [ %i.k, %.noexc.i ], [ %i.g, %bb.b ] ; 2 uses
  switch i64 %i.f, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.b, align 1, !tbaa !13
  store i8 %i.n, ptr %i.m, align 1, !tbaa !13
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.b, i64 %i.f, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.o = load i64, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !42
  %i.q = load ptr, ptr %0, align 8, !tbaa !43
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN4i18n12phonenumbers11UnicodeTextaSERKS1_(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4i18n12phonenumbers11UnicodeText4CopyERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN4i18n12phonenumbers11UnicodeText8CopyUTF8EPKci(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(24) initializes((17, 18)) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.i18n::phonenumbers::LoggerHandler", align 8 ; 7 uses
  %i.c = icmp eq i32 %2, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !23, !range !20, !noundef !24
  %i.f = trunc nuw i8 %i.e to i1                  ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.c, label %_ZN4i18n12phonenumbers11UnicodeText4Repr5clearEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZN4i18n12phonenumbers11UnicodeText4Repr5clearEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #24
  br label %_ZN4i18n12phonenumbers11UnicodeText4Repr5clearEv.exit.i.i

_ZN4i18n12phonenumbers11UnicodeText4Repr5clearEv.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %0, i8 0, i64 16, i1 false)
  br label %_ZN4i18n12phonenumbers11UnicodeText4Repr4CopyEPKci.exit

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %i.k = icmp sle i32 %2, %i.j
  %or.cond9.i.i = select i1 %i.f, i1 %i.k, i1 false
  br i1 %or.cond9.i.i, label %._ZN4i18n12phonenumbers11UnicodeText4Repr7reserveEi.exit.i_crit_edge.i, label %bb.f

._ZN4i18n12phonenumbers11UnicodeText4Repr7reserveEi.exit.i_crit_edge.i: ; preds = %bb.e
  %.pre.pre3.pre.i = load ptr, ptr %0, align 8, !tbaa !21
  br label %_ZN4i18n12phonenumbers11UnicodeText4Repr7reserveEi.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = mul nsw i32 %i.j, 3
  %i.m = sdiv i32 %i.l, 2
  %i.n = add nsw i32 %i.m, 20
  %.sroa.speculated.i.i.i = tail call i32 @llvm.smax.i32(i32 %2, i32 %i.n) ; 2 uses
  store i32 %.sroa.speculated.i.i.i, ptr %i.i, align 4, !tbaa !19
  %i.o = sext i32 %.sroa.speculated.i.i.i to i64
  %i.p = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.o) #23 ; 3 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !21     ; 3 uses
  %.not4.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not4.i.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !22
  %i.t = sext i32 %i.s to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull align 1 %i.q, i64 %i.t, i1 false)
  br i1 %i.f, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.q) #24
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !21
  br label %_ZN4i18n12phonenumbers11UnicodeText4Repr7reserveEi.exit.i.i

_ZN4i18n12phonenumbers11UnicodeText4Repr7reserveEi.exit.i.i: ; preds = %bb.i, %._ZN4i18n12phonenumbers11UnicodeText4Repr7reserveEi.exit.i_crit_edge.i
  %.pre.pre3.i = phi ptr [ %.pre.pre3.pre.i, %._ZN4i18n12phonenumbers11UnicodeText4Repr7reserveEi.exit.i_crit_edge.i ], [ %i.p, %bb.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !22   ; 3 uses
  %i.w = icmp slt i32 %i.v, %2
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4i18n12phonenumbers11UnicodeText4Repr7reserveEi.exit.i.i
  %i.x = sext i32 %i.v to i64
  %i.y = getelementptr inbounds i8, ptr %.pre.pre3.i, i64 %i.x
  %i.z = sub nsw i32 %2, %i.v
  %i.aa = zext nneg i32 %i.z to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.y, i8 0, i64 %i.aa, i1 false)
  %.pre.pre.i = load ptr, ptr %0, align 8, !tbaa !21
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN4i18n12phonenumbers11UnicodeText4Repr7reserveEi.exit.i.i
  %.pre.i = phi ptr [ %.pre.pre.i, %bb.j ], [ %.pre.pre3.i, %_ZN4i18n12phonenumbers11UnicodeText4Repr7reserveEi.exit.i.i ]
  store i32 %2, ptr %i.u, align 8, !tbaa !22
  br label %_ZN4i18n12phonenumbers11UnicodeText4Repr4CopyEPKci.exit

_ZN4i18n12phonenumbers11UnicodeText4Repr4CopyEPKci.exit: ; preds = %_ZN4i18n12phonenumbers11UnicodeText4Repr5clearEv.exit.i.i, %bb.k
  %i.ab = phi ptr [ null, %_ZN4i18n12phonenumbers11UnicodeText4Repr5clearEv.exit.i.i ], [ %.pre.i, %bb.k ]
  store i8 1, ptr %i.d, align 8, !tbaa !23
  %i.ac = sext i32 %2 to i64                      ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr readonly align 1 %1, i64 %i.ac, i1 false)
  %i.ad = tail call noundef i32 @_ZN4i18n12phonenumbers6UniLib20SpanInterchangeValidEPKci(ptr noundef %1, i32 noundef %2)
  %i.ae = icmp eq i32 %2, %i.ad                   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.ag = zext i1 %i.ae to i8
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !51
  br i1 %i.ae, label %bb.v, label %bb.l

bb.l:                                             ; preds = %_ZN4i18n12phonenumbers11UnicodeText4Repr4CopyEPKci.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %i.ah = load ptr, ptr @_ZN4i18n12phonenumbers6Logger5impl_E, align 8, !tbaa !53, !noalias !65 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
end_hunk_0
