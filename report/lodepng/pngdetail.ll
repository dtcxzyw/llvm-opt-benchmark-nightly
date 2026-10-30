Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lodepng/original/pngdetail?download=true
inline.NumInlined: 2280
inline.NumDeleted: 605
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_Z15colorTypeStringB5cxx1116LodePNGColorType:bb.a
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.9, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  %i.m = load ptr, ptr %2, align 8, !tbaa !50
  %i.n = load i64, ptr %i.b, align 8, !tbaa !49
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef %i.m, i64 noundef %i.n)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.i

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.10, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !154)
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !47, !alias.scope !156
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !49, !alias.scope !156
  store i8 0, ptr %i.q, align 8, !tbaa !42, !alias.scope !156
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !158, !noalias !156 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.t, null
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !noalias !156 ; 2 uses
  %i.w = icmp ugt ptr %i.t, %i.v
  %.08.i.i.i = select i1 %i.w, ptr %i.t, ptr %i.v ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !159, !noalias !156 ; 2 uses
  %i.z = ptrtoint ptr %.08.i.i.i to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.y, i64 noundef %i.ab)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = load ptr, ptr %0, align 8, !tbaa !50, !alias.scope !156 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.q
  br i1 %i.af, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  %i.ag = load i64, ptr %i.q, align 8, !tbaa !42, !alias.scope !156
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #27
  br label %.body

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.f

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.g, %bb.e
  %i.aj = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.aj, ptr %3, align 8, !tbaa !17
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.al = getelementptr i8, ptr %i.aj, i64 -24
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds i8, ptr %3, i64 %i.am
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !17
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.ao, ptr %i.j, align 8, !tbaa !17
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ap, align 8, !tbaa !17
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !50 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.au = load i64, ptr %i.as, align 8, !tbaa !42
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #27
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ap, align 8, !tbaa !17
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aw) #26
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ax, ptr %3, align 8, !tbaa !17
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.az = getelementptr i8, ptr %i.ax, i64 -24
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = getelementptr inbounds i8, ptr %3, i64 %i.ba
  store ptr %i.ay, ptr %i.bb, align 8, !tbaa !17
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.bc, align 8, !tbaa !52
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bd) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.be = load ptr, ptr %2, align 8, !tbaa !50    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.a
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.bg = load i64, ptr %i.a, align 8, !tbaa !42
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d, %bb.c
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bj, %bb.i ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ad, %bb.f ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #26
  br label %bb.j

bb.j:                                             ; preds = %.body, %bb.h
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.bi, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.j ], [ %i.d, %bb.b ]
  %i.bk = load ptr, ptr %2, align 8, !tbaa !50    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.a
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.k
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !42
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %.pn.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #5 align 2

; Function Attrs: mustprogress uwtable
define void @_Z17displayChunkNamesR4DataRK7Options(ptr noundef nonnull align 8 dereferenceable(736) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(37) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.3", align 8     ; 22 uses
  %3 = alloca %"class.std::vector.8", align 8     ; 14 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::map", align 8          ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  tail call void @_ZN4Data11loadInspectEv(ptr noundef nonnull align 8 dereferenceable(736) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 733
  %i.b = load i8, ptr %i.a, align 1, !tbaa !71, !range !72, !noundef !73
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.an

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %_ZN4Data8loadFileEv.exit, label %_ZN4Data8loadFileEv.exit.thread

_ZN4Data8loadFileEv.exit.thread:                  ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 728
  store i32 0, ptr %i.i, align 8, !tbaa !74
  br label %bb.c

_ZN4Data8loadFileEv.exit:                         ; preds = %bb.b
  %i.j = tail call noundef i32 @_ZN7lodepng9load_fileERSt6vectorIhSaIhEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(736) %0) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 728
  store i32 %i.j, ptr %i.k, align 8, !tbaa !74
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.an

bb.c:                                             ; preds = %_ZN4Data8loadFileEv.exit.thread, %_ZN4Data8loadFileEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.m = load i8, ptr %i.l, align 4, !tbaa !78, !range !72, !noundef !73
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.p = getelementptr i8, ptr %i.o, i64 -24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.q ; 2 uses
  br i1 %i.n, label %call.1, label %call.0

call.0:                                           ; preds = %bb.c
  %9 = tail call noundef nonnull align 8 dereferenceable(216) ptr @_ZSt3decRSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.r), !inline_history !1 ; 0 uses
  br label %.tail

call.1:                                           ; preds = %bb.c
  %10 = tail call noundef nonnull align 8 dereferenceable(216) ptr @_ZSt3hexRSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.r), !inline_history !1 ; 0 uses
  br label %.tail

.tail:                                            ; preds = %call.1, %call.0
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %11 = invoke noundef i32 @_ZN7lodepng12getChunkInfoERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERS0_ImSaImEERKS0_IhSaIhEE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.d unwind label %.loopexit.split-lp199.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %.tail
  %.not36 = icmp eq i32 %11, 0                    ; 2 uses
  br i1 %.not36, label %_ZNSolsEPFRSoS_E.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %2, align 8, !tbaa !80
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !80   ; 3 uses
  %i.v = icmp eq ptr %i.s, %i.u
  br i1 %i.v, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread195, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !49
  %i.y = icmp eq i64 %i.x, 4
  br i1 %i.y, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread195

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.f
  %i.z = getelementptr inbounds i8, ptr %i.u, i64 -32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !50
  %i.ab = load i32, ptr %i.aa, align 1
  %i.ac = icmp ne i32 %i.ab, 1145980233
  %i.ad = zext i1 %i.ac to i32
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread195

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !165
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !81
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.g, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread195

bb.g:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.12, i64 noundef 60)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp199.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.g
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %.loopexit.split-lp199.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !2 ; 0 uses

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread195: ; preds = %bb.f, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.e
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.13, i64 noundef 65)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit48 unwind label %.loopexit.split-lp199.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit48: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread195
  %i.an = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.ao = getelementptr i8, ptr %i.an, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 240
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i108 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i108, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit48
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.au = load i8, ptr %i.at, align 8, !tbaa !41
  %.not.i1.i.i = icmp eq i8 %i.au, 0
  br i1 %.not.i1.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 67
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !42
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.as)
          to label %.noexc110 unwind label %.loopexit.split-lp199.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc110:                                        ; preds = %bb.i
  %i.ax = load ptr, ptr %i.as, align 8, !tbaa !17
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = invoke noundef signext i8 %i.az(ptr noundef nonnull align 8 dereferenceable(570) %i.as, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit.split-lp199.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !3

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc110, %bb.h
  %.0.i.i.i = phi i8 [ %i.aw, %bb.h ], [ %i.ba, %.noexc110 ]
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
          to label %.noexc112 unwind label %.loopexit.split-lp199.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc112:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bb)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %.loopexit.split-lp199.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc112, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !82, !range !72, !noundef !73
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.j, label %bb.o

bb.j:                                             ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.14, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50.preheader unwind label %.loopexit.split-lp199.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50.preheader: ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !84
  %i.bj = load ptr, ptr %2, align 8, !tbaa !85    ; 2 uses
  %.not221 = icmp eq ptr %i.bi, %i.bj
  br i1 %.not221, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50._crit_edge, label %.lr.ph214

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50._crit_edge: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50.preheader
  %i.bk = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.bl = getelementptr i8, ptr %i.bk, i64 -24
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 240
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i114 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i114, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i115

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i115: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50._crit_edge
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  %i.br = load i8, ptr %i.bq, align 8, !tbaa !41
  %.not.i1.i.i116 = icmp eq i8 %i.br, 0
  br i1 %.not.i1.i.i116, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i115
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 67
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !42
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i117

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i115
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bp)
          to label %.noexc120 unwind label %.loopexit.split-lp199.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc120:                                        ; preds = %bb.l
  %i.bu = load ptr, ptr %i.bp, align 8, !tbaa !17
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = invoke noundef signext i8 %i.bw(ptr noundef nonnull align 8 dereferenceable(570) %i.bp, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i117 unwind label %.loopexit.split-lp199.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !3

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i117: ; preds = %.noexc120, %bb.k
  %.0.i.i.i118 = phi i8 [ %i.bt, %bb.k ], [ %i.bx, %.noexc120 ]
  %i.by = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i118)
          to label %.noexc122 unwind label %.loopexit.split-lp199.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc122:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i117
  %i.bz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.by)
          to label %_ZNSolsEPFRSoS_E.exit51 unwind label %.loopexit.split-lp199.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.lr.ph214:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52
  %i.ca = phi ptr [ %i.cj, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52 ], [ %i.bj, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50.preheader ]
  %.028213 = phi i64 [ %i.ch, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50.preheader ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [32 x i8], ptr %i.ca, i64 %.028213 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !50
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !49
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.cc, i64 noundef %i.ce)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit.split-lp199.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %.lr.ph214
  %i.cg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52 unwind label %.loopexit.split-lp199.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ch = add nuw i64 %.028213, 1                 ; 2 uses
  %i.ci = load ptr, ptr %i.bh, align 8, !tbaa !84
  %i.cj = load ptr, ptr %2, align 8, !tbaa !85    ; 2 uses
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 5
  %i.co = icmp ult i64 %i.ch, %i.cn
  br i1 %i.co, label %.lr.ph214, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50._crit_edge, !llvm.loop !160

_ZNSolsEPFRSoS_E.exit51:                          ; preds = %.noexc122
  %i.cp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.16, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53.preheader unwind label %.loopexit.split-lp199.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53.preheader: ; preds = %_ZNSolsEPFRSoS_E.exit51
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !167
  %i.cs = load ptr, ptr %3, align 8, !tbaa !168   ; 2 uses
  %.not222 = icmp eq ptr %i.cr, %i.cs
  br i1 %.not222, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53._crit_edge, label %.lr.ph216

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53._crit_edge: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53.preheader
  %i.ct = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.cu = getelementptr i8, ptr %i.ct, i64 -24
  %i.cv = load i64, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 240
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i125 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i125, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i126

.invoke:                                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53._crit_edge, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50._crit_edge, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit48
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.cont unwind label %.loopexit.split-lp199.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i126: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53._crit_edge
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  %i.da = load i8, ptr %i.cz, align 8, !tbaa !41
  %.not.i1.i.i127 = icmp eq i8 %i.da, 0
  br i1 %.not.i1.i.i127, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i126
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 67
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !42
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i128

bb.n:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i126
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cy)
          to label %.noexc131 unwind label %.loopexit.split-lp199.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc131:                                        ; preds = %bb.n
  %i.dd = load ptr, ptr %i.cy, align 8, !tbaa !17
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 48
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = invoke noundef signext i8 %i.df(ptr noundef nonnull align 8 dereferenceable(570) %i.cy, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i128 unwind label %.loopexit.split-lp199.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !3

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i128: ; preds = %.noexc131, %bb.m
  %.0.i.i.i129 = phi i8 [ %i.dc, %bb.m ], [ %i.dg, %.noexc131 ]
  %i.dh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i129)
          to label %.noexc133 unwind label %.loopexit.split-lp199.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc133:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i128
  %i.di = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dh)
          to label %_ZNSolsEPFRSoS_E.exit54 unwind label %.loopexit.split-lp199.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.lr.ph216:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55
  %i.dj = phi ptr [ %i.dq, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55 ], [ %i.cs, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53.preheader ]
  %.027215 = phi i64 [ %i.do, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53.preheader ] ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %.027215
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !81
  %i.dm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.dl)
          to label %_ZNSolsEm.exit unwind label %.loopexit.split-lp199.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSolsEm.exit:                                   ; preds = %.lr.ph216
  %i.dn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dm, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55 unwind label %.loopexit.split-lp199.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55: ; preds = %_ZNSolsEm.exit
  %i.do = add nuw i64 %.027215, 1                 ; 2 uses
  %i.dp = load ptr, ptr %i.cq, align 8, !tbaa !167
  %i.dq = load ptr, ptr %3, align 8, !tbaa !168   ; 2 uses
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = ashr exact i64 %i.dt, 3
  %i.dv = icmp ult i64 %i.do, %i.du
  br i1 %i.dv, label %.lr.ph216, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53._crit_edge, !llvm.loop !161

.loopexit.split-lp199.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSolsEm.exit, %.lr.ph216, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %.lr.ph214, %.invoke, %.noexc133, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i128, %.noexc131, %bb.n, %.noexc122, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i117, %.noexc120, %bb.l, %.noexc112, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc110, %bb.i, %bb.o, %_ZNSolsEPFRSoS_E.exit51, %bb.j, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread195, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.g, %.tail
  %lpad.loopexit.split-lp291 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp199.loopexit.split-lp

bb.o:                                             ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.dw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.17, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit56 unwind label %.loopexit.split-lp199.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit56: ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.dx, ptr %4, align 8, !tbaa !47
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.dy, align 8, !tbaa !49
  store i8 0, ptr %i.dx, align 8, !tbaa !42
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !84
  %i.eb = load ptr, ptr %2, align 8, !tbaa !85    ; 2 uses
  %.not220 = icmp eq ptr %i.ea, %i.eb
  br i1 %.not220, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit56
  %i.ec = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.ed = getelementptr i8, ptr %i.ec, i64 -24
  %i.ee = load i64, ptr %i.ed, align 8
  %i.ef = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 240
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i136 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i136, label %.invoke273, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i137

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i137: ; preds = %._crit_edge
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 56
  %i.ej = load i8, ptr %i.ei, align 8, !tbaa !41
  %.not.i1.i.i138 = icmp eq i8 %i.ej, 0
  br i1 %.not.i1.i.i138, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i137
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 67
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !42
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i139

bb.q:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i137
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.eh)
          to label %.noexc142 unwind label %.loopexit.split-lp207.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc142:                                        ; preds = %bb.q
  %i.em = load ptr, ptr %i.eh, align 8, !tbaa !17
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 48
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = invoke noundef signext i8 %i.eo(ptr noundef nonnull align 8 dereferenceable(570) %i.eh, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i139 unwind label %.loopexit.split-lp207.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !3

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i139: ; preds = %.noexc142, %bb.p
  %.0.i.i.i140 = phi i8 [ %i.el, %bb.p ], [ %i.ep, %.noexc142 ]
  %i.eq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i140)
          to label %.noexc144 unwind label %.loopexit.split-lp207.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc144:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i139
  %i.er = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.eq)
          to label %_ZNSolsEPFRSoS_E.exit57 unwind label %.loopexit.split-lp207.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.lr.ph:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit56, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63
  %i.es = phi ptr [ %i.gi, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63 ], [ %i.eb, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit56 ] ; 3 uses
  %.026212 = phi i64 [ %i.gg, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit56 ] ; 5 uses
  %i.et = getelementptr inbounds nuw [32 x i8], ptr %i.es, i64 %.026212 ; 2 uses
  %i.eu = load i64, ptr %i.dy, align 8, !tbaa !49 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !49
  %i.ex = icmp eq i64 %i.eu, %i.ew
  br i1 %i.ex, label %bb.r, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.r:                                             ; preds = %.lr.ph
  %i.ey = icmp eq i64 %i.eu, 0
  br i1 %i.ey, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.r
  %i.ez = load ptr, ptr %i.et, align 8, !tbaa !50
  %i.fa = load ptr, ptr %4, align 8, !tbaa !50
  %bcmp.i.i = call i32 @bcmp(ptr %i.fa, ptr %i.ez, i64 %i.eu)
  %.not197 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not197, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %.lr.ph, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.fb = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.fc = getelementptr i8, ptr %i.fb, i64 -24
  %i.fd = load i64, ptr %i.fc, align 8
  %i.fe = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 240
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i147 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i147, label %.invoke273, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i148

.invoke273:                                       ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %._crit_edge
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.cont274 unwind label %.loopexit.split-lp207.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont274:                                         ; preds = %.invoke273
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i148: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 56
  %i.fi = load i8, ptr %i.fh, align 8, !tbaa !41
  %.not.i1.i.i149 = icmp eq i8 %i.fi, 0
  br i1 %.not.i1.i.i149, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i148
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 67
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !42
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i150

bb.t:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i148
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fg)
          to label %.noexc153 unwind label %.loopexit.split-lp207.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc153:                                        ; preds = %bb.t
  %i.fl = load ptr, ptr %i.fg, align 8, !tbaa !17
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 48
  %i.fn = load ptr, ptr %i.fm, align 8
  %i.fo = invoke noundef signext i8 %i.fn(ptr noundef nonnull align 8 dereferenceable(570) %i.fg, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i150 unwind label %.loopexit.split-lp207.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !3

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i150: ; preds = %.noexc153, %bb.s
  %.0.i.i.i151 = phi i8 [ %i.fk, %bb.s ], [ %i.fo, %.noexc153 ]
  %i.fp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i151)
          to label %.noexc155 unwind label %.loopexit.split-lp207.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc155:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i150
  %i.fq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fp)
          to label %_ZNSolsEPFRSoS_E.exit58 unwind label %.loopexit.split-lp207.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit58:                          ; preds = %.noexc155
  %i.fr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59 unwind label %.loopexit.split-lp207.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59: ; preds = %_ZNSolsEPFRSoS_E.exit58
  %i.fs = load ptr, ptr %2, align 8, !tbaa !85
  %i.ft = getelementptr inbounds nuw [32 x i8], ptr %i.fs, i64 %.026212 ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !50
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !49
  %i.fx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.fu, i64 noundef %i.fw)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit60 unwind label %.loopexit.split-lp207.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit60: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59
  %i.fy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fx, ptr noundef nonnull @.str.18, i64 noundef 2)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit60._ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61_crit_edge unwind label %.loopexit.split-lp207.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit60._ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61_crit_edge: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit60
  %.pre = load ptr, ptr %2, align 8, !tbaa !85
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit60._ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61_crit_edge, %bb.r, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.fz = phi ptr [ %.pre, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit60._ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61_crit_edge ], [ %i.es, %bb.r ], [ %i.es, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ]
  %i.ga = getelementptr inbounds nuw [32 x i8], ptr %i.fz, i64 %.026212
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.ga)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %.loopexit.split-lp207.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61
  %i.gb = load ptr, ptr %3, align 8, !tbaa !168
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %.026212
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !81
  %i.ge = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.gd)
          to label %_ZNSolsEm.exit62 unwind label %.loopexit.split-lp207.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSolsEm.exit62:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.gf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ge, ptr noundef nonnull @.str.15, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63 unwind label %.loopexit.split-lp207.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63: ; preds = %_ZNSolsEm.exit62
  %i.gg = add nuw i64 %.026212, 1                 ; 2 uses
  %i.gh = load ptr, ptr %i.dz, align 8, !tbaa !84
  %i.gi = load ptr, ptr %2, align 8, !tbaa !85    ; 2 uses
  %i.gj = ptrtoint ptr %i.gh to i64
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = sub i64 %i.gj, %i.gk
  %i.gm = ashr exact i64 %i.gl, 5
  %i.gn = icmp ult i64 %i.gg, %i.gm
  br i1 %i.gn, label %.lr.ph, label %._crit_edge, !llvm.loop !162

_ZNSolsEPFRSoS_E.exit57:                          ; preds = %.noexc144
  %i.go = load ptr, ptr %4, align 8, !tbaa !50    ; 2 uses
  %i.gp = icmp eq ptr %i.go, %i.dx
  br i1 %i.gp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSolsEPFRSoS_E.exit57
  %i.gq = load i64, ptr %i.dx, align 8, !tbaa !42
  %i.gr = add i64 %i.gq, 1
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gr) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSolsEPFRSoS_E.exit57, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZNSolsEPFRSoS_E.exit54

.loopexit.split-lp207.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc155, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i150, %.noexc153, %bb.t, %_ZNSolsEm.exit62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit60, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59, %_ZNSolsEPFRSoS_E.exit58, %.invoke273, %.noexc144, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i139, %.noexc142, %bb.q
  %lpad.loopexit.split-lp294 = landingpad { ptr, i32 }
          cleanup
  %i.gs = load ptr, ptr %4, align 8, !tbaa !50    ; 2 uses
  %i.gt = icmp eq ptr %i.gs, %i.dx
end_hunk_0
begin_hunk_1_@_Z16displayColorsHexRKSt6vectorIhSaIhEEjjb:bb.a
  %i.dv = load i8, ptr %i.du, align 8, !tbaa !41
  %.not.i1.i.i66.us = icmp eq i8 %i.dv, 0
  br i1 %.not.i1.i.i66.us, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i65.us
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 67
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !42
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit68.us

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i65.us
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dt)
  %i.dy = load ptr, ptr %i.dt, align 8, !tbaa !17
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 48
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = tail call noundef signext i8 %i.ea(ptr noundef nonnull align 8 dereferenceable(570) %i.dt, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit68.us

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit68.us: ; preds = %bb.j, %bb.i
  %.0.i.i.i67.us = phi i8 [ %i.dx, %bb.i ], [ %i.eb, %bb.j ]
  %i.ec = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i67.us)
  %i.ed = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ec) ; 0 uses
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1 ; 2 uses
  %exitcond94.not = icmp eq i64 %indvars.iv.next91, %wide.trip.count93
  br i1 %exitcond94.not, label %.loopexit, label %.split.us.us, !llvm.loop !193

.split:                                           ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit68
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit68 ], [ 0, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ] ; 3 uses
  %i.ee = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.ef = getelementptr i8, ptr %i.ee, i64 -24
  %i.eg = load i64, ptr %i.ef, align 8
  %i.eh = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  store i32 %i.f, ptr %i.ei, align 8, !tbaa !103
  %i.ej = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %indvars.iv80)
  %i.ek = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ej, ptr noundef nonnull @.str.27, i64 noundef 1) ; 0 uses
  %i.el = trunc nuw i64 %indvars.iv80 to i32
  %i.em = mul i32 %1, %i.el
  br label %bb.m

.split73:                                         ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit63
  %i.en = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.eo = getelementptr i8, ptr %i.en, i64 -24
  %i.ep = load i64, ptr %i.eo, align 8
  %i.eq = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 240
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i64 = icmp eq ptr %i.es, null
  br i1 %.not.i.i.i64, label %.split76.us, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i65

.split76.us:                                      ; preds = %.split73, %.split73.us.us
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i65: ; preds = %.split73
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 56
  %i.eu = load i8, ptr %i.et, align 8, !tbaa !41
  %.not.i1.i.i66 = icmp eq i8 %i.eu, 0
  br i1 %.not.i1.i.i66, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i65
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 67
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !42
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit68

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i65
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.es)
  %i.ex = load ptr, ptr %i.es, align 8, !tbaa !17
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 48
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = tail call noundef signext i8 %i.ez(ptr noundef nonnull align 8 dereferenceable(570) %i.es, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit68

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit68: ; preds = %bb.k, %bb.l
  %.0.i.i.i67 = phi i8 [ %i.ew, %bb.k ], [ %i.fa, %bb.l ]
  %i.fb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i67)
  %i.fc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fb) ; 0 uses
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %exitcond84.not = icmp eq i64 %indvars.iv.next81, %wide.trip.count93
  br i1 %exitcond84.not, label %.loopexit, label %.split, !llvm.loop !193

bb.m:                                             ; preds = %.split, %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit63
  %indvars.iv = phi i64 [ 0, %.split ], [ %indvars.iv.next, %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit63 ] ; 2 uses
  %i.fd = trunc nuw i64 %indvars.iv to i32
  %i.fe = add i32 %i.em, %i.fd
  %i.ff = shl i32 %i.fe, 3
  %i.fg = zext i32 %i.ff to i64
  %i.fh = load ptr, ptr %0, align 8, !tbaa !100
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fg ; 4 uses
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !42
  %i.fk = zext i8 %i.fj to i32
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 2
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !42
  %i.fn = zext i8 %i.fm to i32
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !42
  %i.fq = zext i8 %i.fp to i32
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fi, i64 6
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !42
  %i.ft = zext i8 %i.fs to i32
  %i.fu = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.fv = getelementptr i8, ptr %i.fu, i64 -24    ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8
  %i.fx = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 24 ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !103
  %i.ga = and i32 %i.fz, -75
  %i.gb = or disjoint i32 %i.ga, 8
  store i32 %i.gb, ptr %i.fy, align 8, !tbaa !104
  %i.gc = load i64, ptr %i.fv, align 8
  %i.gd = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.gc ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 225 ; 2 uses
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !110, !range !72, !noundef !73
  %i.gg = trunc nuw i8 %i.gf to i1
  br i1 %i.gg, label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit63, label %bb.n

.split71.us:                                      ; preds = %bb.g
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 240
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !35 ; 5 uses
  %.not.i.i.i.i.i59 = icmp eq ptr %i.gi, null
  br i1 %.not.i.i.i.i.i59, label %bb.o, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i60

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i60: ; preds = %bb.n
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 56
  %i.gk = load i8, ptr %i.gj, align 8, !tbaa !41
  %.not.i1.i.i.i.i61 = icmp eq i8 %i.gk, 0
  br i1 %.not.i1.i.i.i.i61, label %bb.p, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i62

bb.p:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i60
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.gi)
  %i.gl = load ptr, ptr %i.gi, align 8, !tbaa !17
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 48
  %i.gn = load ptr, ptr %i.gm, align 8
  %i.go = tail call noundef signext i8 %i.gn(ptr noundef nonnull align 8 dereferenceable(570) %i.gi, i8 noundef signext 32), !inline_history !6 ; 0 uses
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i62

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i62: ; preds = %bb.p, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i60
  store i8 1, ptr %i.ge, align 1, !tbaa !110
  br label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit63

_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit63: ; preds = %bb.m, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i62
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gd, i64 224
  store i8 48, ptr %i.gp, align 8, !tbaa !111
  %i.gq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.28, i64 noundef 2) ; 0 uses
  %i.gr = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.gs = getelementptr i8, ptr %i.gr, i64 -24
  %i.gt = load i64, ptr %i.gs, align 8
  %i.gu = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.gt
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  store i64 2, ptr %i.gv, align 8, !tbaa !109
  %i.gw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.fk) ; 3 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !17
  %i.gy = getelementptr i8, ptr %i.gx, i64 -24
  %i.gz = load i64, ptr %i.gy, align 8
  %i.ha = getelementptr inbounds i8, ptr %i.gw, i64 %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  store i64 2, ptr %i.hb, align 8, !tbaa !109
  %i.hc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.gw, i32 noundef %i.fn) ; 3 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !17
  %i.he = getelementptr i8, ptr %i.hd, i64 -24
  %i.hf = load i64, ptr %i.he, align 8
  %i.hg = getelementptr inbounds i8, ptr %i.hc, i64 %i.hf
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  store i64 2, ptr %i.hh, align 8, !tbaa !109
  %i.hi = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.hc, i32 noundef %i.fq) ; 3 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !17
  %i.hk = getelementptr i8, ptr %i.hj, i64 -24
  %i.hl = load i64, ptr %i.hk, align 8
  %i.hm = getelementptr inbounds i8, ptr %i.hi, i64 %i.hl
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  store i64 2, ptr %i.hn, align 8, !tbaa !109
  %i.ho = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.hi, i32 noundef %i.ft) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count88
  br i1 %exitcond.not, label %.split73, label %bb.m, !llvm.loop !192

.loopexit:                                        ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit68, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit68.us, %bb.a
  %i.hp = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.hq = getelementptr i8, ptr %i.hp, i64 -24
  %i.hr = load i64, ptr %i.hq, align 8
  %i.hs = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 24
  store i32 %i.f, ptr %i.ht, align 8, !tbaa !103
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z18displayFilterTypesR4DataRK7Options(ptr noundef nonnull align 8 dereferenceable(736) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(37) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.16", align 8    ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !78, !range !72, !noundef !73
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.f ; 2 uses
  br i1 %i.c, label %call.1, label %call.0

call.0:                                           ; preds = %bb.a
  %3 = tail call noundef nonnull align 8 dereferenceable(216) ptr @_ZSt3decRSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.g), !inline_history !1 ; 0 uses
  br label %.tail

call.1:                                           ; preds = %bb.a
  %4 = tail call noundef nonnull align 8 dereferenceable(216) ptr @_ZSt3hexRSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.g), !inline_history !1 ; 0 uses
  br label %.tail

.tail:                                            ; preds = %call.1, %call.0
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %_ZN4Data8loadFileEv.exit, label %_ZN4Data8loadFileEv.exit.thread

_ZN4Data8loadFileEv.exit.thread:                  ; preds = %.tail
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 728
  store i32 0, ptr %i.h, align 8, !tbaa !74
  br label %bb.b

_ZN4Data8loadFileEv.exit:                         ; preds = %.tail
  %i.i = tail call noundef i32 @_ZN7lodepng9load_fileERSt6vectorIhSaIhEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(736) %0) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 728
  store i32 %i.i, ptr %i.j, align 8, !tbaa !74
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.b, label %bb.q

bb.b:                                             ; preds = %_ZN4Data8loadFileEv.exit.thread, %_ZN4Data8loadFileEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.k = invoke noundef i32 @_ZN7lodepng24getFilterTypesInterlacedERSt6vectorIS0_IhSaIhEESaIS2_EERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %bb.b
  %.not23 = icmp eq i32 %i.k, 0
  br i1 %.not23, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.29, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  %i.m = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.n = getelementptr i8, ptr %i.m, i64 -24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 240
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !35   ; 5 uses
  %.not.i.i.i34 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i34, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.t = load i8, ptr %i.s, align 8, !tbaa !41
  %.not.i1.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i1.i.i, label %bb.e, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i64.invoke.sink.split

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.r)
          to label %.noexc67.invoke unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !114
  %i.w = load ptr, ptr %2, align 8, !tbaa !115
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = icmp eq i64 %i.z, 168
  br i1 %i.aa, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.30, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27: ; preds = %bb.g
  %i.ac = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 240
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i39 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i39, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i40

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i40: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !41
  %.not.i1.i.i41 = icmp eq i8 %i.aj, 0
  br i1 %.not.i1.i.i41, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 67
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !42
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i42

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i40
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ah)
          to label %.noexc45 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc45:                                         ; preds = %bb.i
  %i.am = load ptr, ptr %i.ah, align 8, !tbaa !17
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = invoke noundef signext i8 %i.ao(ptr noundef nonnull align 8 dereferenceable(570) %i.ah, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i42 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !3

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i42: ; preds = %.noexc45, %bb.h
  %.0.i.i.i43 = phi i8 [ %i.al, %bb.h ], [ %i.ap, %.noexc45 ]
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i43)
          to label %.noexc47 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc47:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i42
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aq)
          to label %_ZNSolsEPFRSoS_E.exit28.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit28:                          ; preds = %.noexc58
  %exitcond.not = icmp eq i64 %indvars.iv.next, 7
  br i1 %exitcond.not, label %_ZNSolsEPFRSoS_E.exit, label %_ZNSolsEPFRSoS_E.exit28.preheader

_ZNSolsEPFRSoS_E.exit28.preheader:                ; preds = %.noexc47, %_ZNSolsEPFRSoS_E.exit28
  %indvars.iv111 = phi i64 [ %indvars.iv.next, %_ZNSolsEPFRSoS_E.exit28 ], [ 0, %.noexc47 ] ; 3 uses
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.31, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29: ; preds = %_ZNSolsEPFRSoS_E.exit28.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv111, 1 ; 3 uses
  %i.at = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.at)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull @.str.18, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30.preheader: ; preds = %bb.j
  %i.aw = load ptr, ptr %2, align 8, !tbaa !115
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %indvars.iv111 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !99
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !100 ; 2 uses
  %.not83 = icmp eq ptr %i.az, %i.ba
  br i1 %.not83, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30._crit_edge, label %.lr.ph81

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30._crit_edge: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30.preheader
  %i.bb = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.bc = getelementptr i8, ptr %i.bb, i64 -24
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 240
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i50 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i50, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i51

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i51: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30._crit_edge
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !41
  %.not.i1.i.i52 = icmp eq i8 %i.bi, 0
  br i1 %.not.i1.i.i52, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i51
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 67
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !42
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i53

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i51
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bg)
          to label %.noexc56 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc56:                                         ; preds = %bb.l
  %i.bl = load ptr, ptr %i.bg, align 8, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = invoke noundef signext i8 %i.bn(ptr noundef nonnull align 8 dereferenceable(570) %i.bg, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i53 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !3

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i53: ; preds = %.noexc56, %bb.k
  %.0.i.i.i54 = phi i8 [ %i.bk, %bb.k ], [ %i.bo, %.noexc56 ]
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i54)
          to label %.noexc58 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc58:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i53
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bp)
          to label %_ZNSolsEPFRSoS_E.exit28 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.lr.ph81:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30
  %i.br = phi ptr [ %i.cb, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30 ], [ %i.ba, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30.preheader ]
  %.01880 = phi i64 [ %i.bw, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30.preheader ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %.01880
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !42
  %i.bu = zext i8 %i.bt to i32
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.bu)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30: ; preds = %.lr.ph81
  %i.bw = add nuw i64 %.01880, 1                  ; 2 uses
  %i.bx = load ptr, ptr %2, align 8, !tbaa !115
  %i.by = getelementptr inbounds nuw [24 x i8], ptr %i.bx, i64 %indvars.iv111 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !99
  %i.cb = load ptr, ptr %i.by, align 8, !tbaa !100 ; 2 uses
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = icmp ult i64 %i.bw, %i.ce
  br i1 %i.cf, label %.lr.ph81, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30._crit_edge, !llvm.loop !194

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc58, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i53, %.noexc56, %bb.l, %bb.j, %_ZNSolsEPFRSoS_E.exit28.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29, %.lr.ph81, %.lr.ph, %.noexc67.invoke, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i64.invoke, %.invoke, %.noexc69.invoke, %bb.n, %.noexc47, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i42, %.noexc45, %bb.i, %bb.e, %bb.m, %bb.g, %bb.d, %bb.b
  %lpad.loopexit.split-lp116 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %lpad.loopexit.split-lp116

bb.m:                                             ; preds = %bb.f
  %i.cg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.32, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32.preheader: ; preds = %bb.m
  %i.ch = load ptr, ptr %2, align 8, !tbaa !115   ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !99
  %i.ck = load ptr, ptr %i.ch, align 8, !tbaa !100 ; 2 uses
  %.not82 = icmp eq ptr %i.cj, %i.ck
  br i1 %.not82, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32._crit_edge, label %.lr.ph

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32._crit_edge: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32.preheader
  %i.cl = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.cm = getelementptr i8, ptr %i.cl, i64 -24
  %i.cn = load i64, ptr %i.cm, align 8
  %i.co = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 240
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !35 ; 5 uses
  %.not.i.i.i61 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i61, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i62

.invoke:                                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30._crit_edge, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32._crit_edge
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i62: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32._crit_edge
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 56
  %i.cs = load i8, ptr %i.cr, align 8, !tbaa !41
  %.not.i1.i.i63 = icmp eq i8 %i.cs, 0
  br i1 %.not.i1.i.i63, label %bb.n, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i64.invoke.sink.split

bb.n:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i62
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cq)
          to label %.noexc67.invoke unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc67.invoke:                                  ; preds = %bb.n, %bb.e
  %.sink = phi ptr [ %i.r, %bb.e ], [ %i.cq, %bb.n ] ; 2 uses
  %i.ct = load ptr, ptr %.sink, align 8, !tbaa !17
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = invoke noundef signext i8 %i.cv(ptr noundef nonnull align 8 dereferenceable(570) %.sink, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i64.invoke unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !3

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i64.invoke.sink.split: ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i62, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %.sink105 = phi ptr [ %i.r, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i ], [ %i.cq, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i62 ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.sink105, i64 67
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !42
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i64.invoke

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i64.invoke: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i64.invoke.sink.split, %.noexc67.invoke
  %i.cz = phi i8 [ %i.cw, %.noexc67.invoke ], [ %i.cy, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i64.invoke.sink.split ]
  %i.da = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %i.cz)
          to label %.noexc69.invoke unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc69.invoke:                                  ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i64.invoke
  %i.db = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.da)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.lr.ph:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32
  %i.dc = phi ptr [ %i.dl, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32 ], [ %i.ck, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32.preheader ]
  %.079 = phi i64 [ %i.dh, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32.preheader ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.079
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !42
  %i.df = zext i8 %i.de to i32
  %i.dg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.df)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32: ; preds = %.lr.ph
  %i.dh = add nuw i64 %.079, 1                    ; 2 uses
  %i.di = load ptr, ptr %2, align 8, !tbaa !115   ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !99
  %i.dl = load ptr, ptr %i.di, align 8, !tbaa !100 ; 2 uses
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = icmp ult i64 %i.dh, %i.do
  br i1 %i.dp, label %.lr.ph, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32._crit_edge, !llvm.loop !195

_ZNSolsEPFRSoS_E.exit:                            ; preds = %_ZNSolsEPFRSoS_E.exit28, %.noexc69.invoke
  %i.dq = load ptr, ptr %2, align 8, !tbaa !115   ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !114 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.dq, %i.ds
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSolsEPFRSoS_E.exit, %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.dz, %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i ], [ %i.dq, %_ZNSolsEPFRSoS_E.exit ] ; 3 uses
  %i.dt = load ptr, ptr %.05.i.i.i, align 8, !tbaa !100 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !107
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = ptrtoint ptr %i.dt to i64
  %i.dy = sub i64 %i.dw, %i.dx
  call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.dy) #27
  br label %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i:  ; preds = %bb.o, %.lr.ph.i.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dz, %i.ds
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !7

_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !115
  br label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSolsEPFRSoS_E.exit
  %i.ea = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.dq, %_ZNSolsEPFRSoS_E.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !116
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = ptrtoint ptr %i.ea to i64
  %i.ef = sub i64 %i.ed, %i.ee
  call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef %i.ef) #27
  br label %_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.q

bb.q:                                             ; preds = %_ZN4Data8loadFileEv.exit, %_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev.exit
  ret void
}

declare noundef i32 @_ZN7lodepng24getFilterTypesInterlacedERSt6vectorIS0_IhSaIhEESaIS2_EERKS2_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !115    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !114  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !100 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !107
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #27
  br label %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i:    ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !7

_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !115
  br label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !116
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #27
  br label %_ZNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z14displayPaletteR4DataRK7Options(ptr noundef nonnull align 8 dereferenceable(736) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(37) %1) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN4Data11loadInspectEv(ptr noundef nonnull align 8 dereferenceable(736) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.b = load i32, ptr %i.a, align 8, !tbaa !74
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %2, label %bb.m

2:                                                ; preds = %bb.a
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 36
  %4 = load i8, ptr %3, align 4, !tbaa !78, !range !72, !noundef !73
  %5 = trunc nuw i8 %4 to i1
  %6 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %7 = getelementptr i8, ptr %6, i64 -24
  %8 = load i64, ptr %7, align 8
  %9 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %8 ; 2 uses
  br i1 %5, label %call.1, label %call.0

call.0:                                           ; preds = %2
  %10 = tail call noundef nonnull align 8 dereferenceable(216) ptr @_ZSt3decRSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %9), !inline_history !1 ; 0 uses
  br label %bb.b

call.1:                                           ; preds = %2
  %11 = tail call noundef nonnull align 8 dereferenceable(216) ptr @_ZSt3hexRSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %9), !inline_history !1 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %call.1, %call.0
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.33, i64 noundef 14) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !117
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.e) ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 240
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !35   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.n = load i8, ptr %i.m, align 8, !tbaa !41
  %.not.i1.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i1.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 67
  %i.p = load i8, ptr %i.o, align 1, !tbaa !42
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.l)
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef signext i8 %i.s(ptr noundef nonnull align 8 dereferenceable(570) %i.l, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i = phi i8 [ %i.p, %bb.d ], [ %i.t, %bb.e ]
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i8 noundef signext %.0.i.i.i)
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u) ; 0 uses
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.34, i64 noundef 16) ; 0 uses
  %i.x = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.y = getelementptr i8, ptr %i.x, i64 -24      ; 2 uses
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !103 ; 2 uses
  %i.ad = and i32 %i.ac, -75
  %i.ae = or disjoint i32 %i.ad, 8
  store i32 %i.ae, ptr %i.ab, align 8, !tbaa !104
  %i.af = load i64, ptr %i.y, align 8
  %i.ag = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.af ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 225 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !110, !range !72, !noundef !73
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 240
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !35 ; 5 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i, label %bb.g, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i: ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.an = load i8, ptr %i.am, align 8, !tbaa !41
  %.not.i1.i.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i1.i.i.i.i, label %bb.h, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.al)
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !17
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call noundef signext i8 %i.aq(ptr noundef nonnull align 8 dereferenceable(570) %i.al, i8 noundef signext 32), !inline_history !6 ; 0 uses
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i: ; preds = %bb.h, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  store i8 1, ptr %i.ah, align 1, !tbaa !110
  br label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit

_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 224
  store i8 48, ptr %i.as, align 8, !tbaa !111
  %i.at = load i64, ptr %i.d, align 8, !tbaa !117
  %.not25 = icmp eq i64 %i.at, 0
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 320
  br label %bb.l

._crit_edge:                                      ; preds = %bb.l, %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit
  %i.av = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.aw = getelementptr i8, ptr %i.av, i64 -24    ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store i32 %i.ac, ptr %i.az, align 8, !tbaa !103
  %i.ba = load i64, ptr %i.aw, align 8
  %i.bb = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 240
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i19 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i19, label %bb.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i20

bb.i:                                             ; preds = %._crit_edge
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i20: ; preds = %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !41
  %.not.i1.i.i21 = icmp eq i8 %i.bf, 0
  br i1 %.not.i1.i.i21, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i20
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 67
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !42
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit23

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i20
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bd)
  %i.bi = load ptr, ptr %i.bd, align 8, !tbaa !17
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = tail call noundef signext i8 %i.bk(ptr noundef nonnull align 8 dereferenceable(570) %i.bd, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit23

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit23: ; preds = %bb.j, %bb.k
  %.0.i.i.i22 = phi i8 [ %i.bh, %bb.j ], [ %i.bl, %bb.k ]
  %i.bm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i22)
  %i.bn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bm) ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph, %bb.l
  %.024 = phi i64 [ 0, %.lr.ph ], [ %i.dc, %bb.l ] ; 2 uses
  %i.bo = load ptr, ptr %i.au, align 8, !tbaa !197
  %i.bp = shl i64 %.024, 2
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bp ; 4 uses
  %i.br = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.35, i64 noundef 1) ; 0 uses
  %i.bs = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.bt = getelementptr i8, ptr %i.bs, i64 -24
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store i64 2, ptr %i.bw, align 8, !tbaa !109
  %i.bx = load i8, ptr %i.bq, align 1, !tbaa !42
  %i.by = zext i8 %i.bx to i32
  %i.bz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.by) ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !17
  %i.cb = getelementptr i8, ptr %i.ca, i64 -24
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds i8, ptr %i.bz, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store i64 2, ptr %i.ce, align 8, !tbaa !109
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !42
  %i.ch = zext i8 %i.cg to i32
  %i.ci = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, i32 noundef %i.ch) ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !17
  %i.ck = getelementptr i8, ptr %i.cj, i64 -24
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = getelementptr inbounds i8, ptr %i.ci, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store i64 2, ptr %i.cn, align 8, !tbaa !109
  %i.co = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !42
  %i.cq = zext i8 %i.cp to i32
  %i.cr = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, i32 noundef %i.cq) ; 3 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !17
  %i.ct = getelementptr i8, ptr %i.cs, i64 -24
  %i.cu = load i64, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds i8, ptr %i.cr, i64 %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store i64 2, ptr %i.cw, align 8, !tbaa !109
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bq, i64 3
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !42
  %i.cz = zext i8 %i.cy to i32
  %i.da = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, i32 noundef %i.cz)
  %i.db = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.da, ptr noundef nonnull @.str.15, i64 noundef 1) ; 0 uses
  %i.dc = add nuw i64 %.024, 1                    ; 2 uses
  %i.dd = load i64, ptr %i.d, align 8, !tbaa !117
  %i.de = icmp ult i64 %i.dc, %i.dd
  br i1 %i.de, label %bb.l, label %._crit_edge, !llvm.loop !196

bb.m:                                             ; preds = %bb.a, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit23
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z20displayPalettePixelsRKSt6vectorIhSaIhEERK7Options(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(37) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %2 = alloca %"class.lodepng::State", align 8    ; 14 uses
end_hunk_1
begin_hunk_2_@_Z11countColorsRKSt6vectorIhSaIhEEjjPmS4_S4_S4_:bb.a
  br i1 %.not.i, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not.i.i.i91 = icmp ne ptr %i.da, null
  %i.dc = icmp eq ptr %i.db, %i.a
  %or.cond.i.i.i = or i1 %.not.i.i.i91, %i.dc
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.de = load i16, ptr %i.cv, align 8, !tbaa !124 ; 2 uses
  %i.df = load i16, ptr %i.dd, align 2, !tbaa !124 ; 2 uses
  %i.dg = icmp ult i16 %i.de, %i.df
  br i1 %i.dg, label %.thread.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dh = icmp ult i16 %i.df, %i.de
  br i1 %i.dh, label %.thread.i, label %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i.i.i.i

_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i.i.i.i:    ; preds = %bb.u
  %i.di = getelementptr inbounds nuw i8, ptr %i.cu, i64 34
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !125 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.db, i64 34
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !125 ; 2 uses
  %i.dm = icmp ult i16 %i.dj, %i.dl
  br i1 %i.dm, label %.thread.i, label %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit6.i.i.i.i.i

_ZStltIttEbRKSt4pairIT_T0_ES5_.exit6.i.i.i.i.i:   ; preds = %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i.i.i.i
  %i.dn = icmp ult i16 %i.dl, %i.dj
  br i1 %i.dn, label %.thread.i, label %bb.v

bb.v:                                             ; preds = %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit6.i.i.i.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.cu, i64 36
  %i.dp = getelementptr inbounds nuw i8, ptr %i.db, i64 36
  %i.dq = load i16, ptr %i.do, align 4, !tbaa !124 ; 2 uses
  %i.dr = load i16, ptr %i.dp, align 2, !tbaa !124 ; 2 uses
  %i.ds = icmp ult i16 %i.dq, %i.dr
  br i1 %i.ds, label %.thread.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dt = icmp ult i16 %i.dr, %i.dq
  br i1 %i.dt, label %.thread.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.du = getelementptr inbounds nuw i8, ptr %i.cu, i64 38
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !125
  %i.dw = getelementptr inbounds nuw i8, ptr %i.db, i64 38
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !125
  %i.dy = icmp ult i16 %i.dv, %i.dx
  br label %.thread.i

.thread.i:                                        ; preds = %bb.x, %bb.w, %bb.v, %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit6.i.i.i.i.i, %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i.i.i.i, %bb.u, %bb.t, %bb.s
  %i.dz = phi i1 [ false, %bb.u ], [ true, %bb.s ], [ true, %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit.i.i.i.i.i ], [ false, %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit6.i.i.i.i.i ], [ true, %bb.t ], [ %i.dy, %bb.x ], [ true, %bb.v ], [ false, %bb.w ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.dz, ptr noundef nonnull %i.cu, ptr noundef nonnull %i.db, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #26
  %i.ea = load i64, ptr %i.e, align 8, !tbaa !95
  %i.eb = add i64 %i.ea, 1
  store i64 %i.eb, ptr %i.e, align 8, !tbaa !95
  br label %bb.z

_ZNSt8_Rb_treeISt4pairIS0_IttES1_ES0_IKS2_mESt10_Select1stIS4_ESt4lessIS2_ESaIS4_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.noexc92
  %i.ec = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef 48) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

bb.y:                                             ; preds = %bb.r
  call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef 48) #27
  br label %bb.z

bb.z:                                             ; preds = %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.i, %bb.q, %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit6.i.i.i, %bb.o, %bb.y, %.thread.i
  %.sroa.06.0.i = phi ptr [ %.19.i.i.i.i, %bb.q ], [ %.19.i.i.i.i, %_ZNKSt4lessISt4pairIS0_IttES1_EEclERKS2_S5_.exit.i ], [ %.19.i.i.i.i, %bb.o ], [ %.19.i.i.i.i, %_ZStltIttEbRKSt4pairIT_T0_ES5_.exit6.i.i.i ], [ %i.cu, %.thread.i ], [ %i.da, %bb.y ]
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40 ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !81
  %i.ef = add i64 %i.ee, 1
  store i64 %i.ef, ptr %i.ed, align 8, !tbaa !81
  %i.eg = zext i16 %i.ac to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.eg
  store i8 1, ptr %i.eh, align 1, !tbaa !42
  %i.ei = zext i16 %i.ao to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ei
  store i8 1, ptr %i.ej, align 1, !tbaa !42
  %i.ek = zext i16 %i.ba to i64
  %i.el = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ek
  store i8 1, ptr %i.el, align 1, !tbaa !42
  %i.em = zext i16 %i.bm to i64
  %i.en = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.em
  store i8 1, ptr %i.en, align 1, !tbaa !42
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.j, !llvm.loop !205

bb.aa:                                            ; preds = %.critedge.i
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.aa, %_ZNSt8_Rb_treeISt4pairIS0_IttES1_ES0_IKS2_mESt10_Select1stIS4_ESt4lessIS2_ESaIS4_EE10_Auto_nodeD2Ev.exit.i
  %.pn64 = phi { ptr, i32 } [ %i.ec, %_ZNSt8_Rb_treeISt4pairIS0_IttES1_ES0_IKS2_mESt10_Select1stIS4_ESt4lessIS2_ESaIS4_EE10_Auto_nodeD2Ev.exit.i ], [ %i.eo, %bb.aa ]
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 65536) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit86

_ZNSt6vectorIhSaIhEED2Ev.exit84:                  ; preds = %bb.ac
  %i.ep = load i64, ptr %i.e, align 8, !tbaa !95
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 65536) #27
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 65536) #27
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 65536) #27
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 65536) #27
  %i.eq = load ptr, ptr %i.b, align 8, !tbaa !92
  invoke void @_ZNSt8_Rb_treeISt4pairIS0_IttES1_ES0_IKS2_mESt10_Select1stIS4_ESt4lessIS2_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %i.eq)
          to label %_ZNSt3mapISt4pairIS0_IttES1_EmSt4lessIS2_ESaIS0_IKS2_mEEED2Ev.exit unwind label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit84
  %i.er = landingpad { ptr, i32 }
          catch ptr null
  %i.es = extractvalue { ptr, i32 } %i.er, 0
  call void @__clang_call_terminate(ptr %i.es) #28
  unreachable

_ZNSt3mapISt4pairIS0_IttES1_EmSt4lessIS2_ESaIS0_IKS2_mEEED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit84
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret i64 %i.ep

bb.ac:                                            ; preds = %._crit_edge139.split, %bb.ac
  %.0140 = phi i64 [ 0, %._crit_edge139.split ], [ %i.fn, %bb.ac ] ; 5 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.f, i64 %.0140
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !42
  %i.ev = zext i8 %i.eu to i64
  %i.ew = load i64, ptr %3, align 8, !tbaa !81
  %i.ex = add i64 %i.ew, %i.ev
  store i64 %i.ex, ptr %3, align 8, !tbaa !81
  %i.ey = getelementptr inbounds nuw i8, ptr %i.g, i64 %.0140
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !42
  %i.fa = zext i8 %i.ez to i64
  %i.fb = load i64, ptr %4, align 8, !tbaa !81
  %i.fc = add i64 %i.fb, %i.fa
  store i64 %i.fc, ptr %4, align 8, !tbaa !81
  %i.fd = getelementptr inbounds nuw i8, ptr %i.h, i64 %.0140
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !42
  %i.ff = zext i8 %i.fe to i64
  %i.fg = load i64, ptr %5, align 8, !tbaa !81
  %i.fh = add i64 %i.fg, %i.ff
  store i64 %i.fh, ptr %5, align 8, !tbaa !81
  %i.fi = getelementptr inbounds nuw i8, ptr %i.i, i64 %.0140
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !42
  %i.fk = zext i8 %i.fj to i64
  %i.fl = load i64, ptr %6, align 8, !tbaa !81
  %i.fm = add i64 %i.fl, %i.fk
  store i64 %i.fm, ptr %6, align 8, !tbaa !81
  %i.fn = add nuw nsw i64 %.0140, 1               ; 2 uses
  %exitcond144.not = icmp eq i64 %i.fn, 65536
  br i1 %exitcond144.not, label %_ZNSt6vectorIhSaIhEED2Ev.exit84, label %bb.ac, !llvm.loop !206

_ZNSt6vectorIhSaIhEED2Ev.exit86:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.i
  %.pn64.pn = phi { ptr, i32 } [ %.pn64, %_ZNSt6vectorIhSaIhEED2Ev.exit ], [ %i.m, %bb.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 65536) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit88

_ZNSt6vectorIhSaIhEED2Ev.exit88:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit86, %bb.h
  %.pn64.pn.pn = phi { ptr, i32 } [ %.pn64.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit86 ], [ %i.l, %bb.h ]
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 65536) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit90

_ZNSt6vectorIhSaIhEED2Ev.exit90:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit88, %bb.g
  %.pn64.pn.pn.pn = phi { ptr, i32 } [ %.pn64.pn.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit88 ], [ %i.k, %bb.g ]
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 65536) #27
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit90, %bb.f
  %.pn64.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn64.pn.pn.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit90 ], [ %i.j, %bb.f ]
  call void @_ZNSt3mapISt4pairIS0_IttES1_EmSt4lessIS2_ESaIS0_IKS2_mEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  resume { ptr, i32 } %.pn64.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3mapISt4pairIS0_IttES1_EmSt4lessIS2_ESaIS0_IKS2_mEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92
  invoke void @_ZNSt8_Rb_treeISt4pairIS0_IttES1_ES0_IKS2_mESt10_Select1stIS4_ESt4lessIS2_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeISt4pairIS0_IttES1_ES0_IKS2_mESt10_Select1stIS4_ESt4lessIS2_ESaIS4_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #28
  unreachable

_ZNSt8_Rb_treeISt4pairIS0_IttES1_ES0_IKS2_mESt10_Select1stIS4_ESt4lessIS2_ESaIS4_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z9showErrorR4DataRK7Options(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(736) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(37) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !78, !range !72, !noundef !73
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.f ; 2 uses
  br i1 %i.c, label %call.1, label %call.0

call.0:                                           ; preds = %._crit_edge.i.i
  %3 = tail call noundef nonnull align 8 dereferenceable(216) ptr @_ZSt3decRSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.g), !inline_history !1 ; 0 uses
  br label %.tail

call.1:                                           ; preds = %._crit_edge.i.i
  %4 = tail call noundef nonnull align 8 dereferenceable(216) ptr @_ZSt3hexRSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.g), !inline_history !1 ; 0 uses
  br label %.tail

.tail:                                            ; preds = %call.1, %call.0
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %5 = load i8, ptr %i.a, align 4, !tbaa !78, !range !72, !noundef !73
  %6 = trunc nuw i8 %5 to i1                      ; 3 uses
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %7, ptr %2, align 8, !tbaa !47
  %8 = select i1 %6, i64 2, i64 0
  br i1 %6, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.tail
  store i16 30768, ptr %7, align 8
  br label %bb.b

bb.b:                                             ; preds = %.tail, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %8, ptr %i.h, align 8, !tbaa !49
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %2, i64 18
  %.sroa.sel = select i1 %6, ptr %.sroa.gep, ptr %7
  store i8 0, ptr %.sroa.sel, align 2, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !74
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.c, label %_ZNSolsEPFRSoS_E.exit

bb.c:                                             ; preds = %bb.b
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.49, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  %i.l = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 240
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !35   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.s = load i8, ptr %i.r, align 8, !tbaa !41
  %.not.i1.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i1.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 67
  %i.u = load i8, ptr %i.t, align 1, !tbaa !42
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.q)
          to label %.noexc25 unwind label %bb.f

.noexc25:                                         ; preds = %bb.e
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !17
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = invoke noundef signext i8 %i.x(ptr noundef nonnull align 8 dereferenceable(570) %i.q, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.f, !inline_history !3

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc25, %bb.d
  %.0.i.i.i = phi i8 [ %i.u, %bb.d ], [ %i.y, %.noexc25 ]
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
          to label %.noexc27 unwind label %bb.f

.noexc27:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %.invoke, %.noexc37, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i32, %.noexc35, %bb.k, %.noexc27, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc25, %bb.e, %bb.i, %bb.h, %_ZNSolsEj.exit, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %_ZNSolsEPFRSoS_E.exit, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %2, align 8, !tbaa !50    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %7
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.ae = load i64, ptr %7, align 8, !tbaa !42
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc27, %bb.b
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.50, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.ah = load ptr, ptr %2, align 8, !tbaa !50
  %i.ai = load i64, ptr %i.h, align 8, !tbaa !49
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.ah, i64 noundef %i.ai)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.f

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.ak = load i32, ptr %i.i, align 8, !tbaa !74
  %i.al = zext i32 %i.ak to i64
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, i64 noundef %i.al)
          to label %_ZNSolsEj.exit unwind label %bb.f ; 7 uses

_ZNSolsEj.exit:                                   ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull @.str.18, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15: ; preds = %_ZNSolsEj.exit
  %i.ao = load i32, ptr %i.i, align 8, !tbaa !74
  %i.ap = invoke noundef ptr @_Z18lodepng_error_textj(i32 noundef %i.ao)
          to label %bb.g unwind label %bb.f       ; 3 uses

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  %.not.i = icmp eq ptr %i.ap, null
  br i1 %.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !17
  %i.ar = getelementptr i8, ptr %i.aq, i64 -24
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds i8, ptr %i.am, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load i32, ptr %i.au, align 8, !tbaa !45
  %i.aw = or i32 %i.av, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.at, i32 noundef %i.aw)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18 unwind label %bb.f

bb.i:                                             ; preds = %bb.g
  %i.ax = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ap) #26
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull %i.ap, i64 noundef %i.ax)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18: ; preds = %bb.h, %bb.i
  %i.az = load ptr, ptr %i.am, align 8, !tbaa !17
  %i.ba = getelementptr i8, ptr %i.az, i64 -24
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds i8, ptr %i.am, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 240
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i29 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i29, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i30

.invoke:                                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.cont unwind label %bb.f

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i30: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !41
  %.not.i1.i.i31 = icmp eq i8 %i.bg, 0
  br i1 %.not.i1.i.i31, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i30
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 67
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !42
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i32

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i30
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.be)
          to label %.noexc35 unwind label %bb.f

.noexc35:                                         ; preds = %bb.k
  %i.bj = load ptr, ptr %i.be, align 8, !tbaa !17
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = invoke noundef signext i8 %i.bl(ptr noundef nonnull align 8 dereferenceable(570) %i.be, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i32 unwind label %bb.f, !inline_history !3

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i32: ; preds = %.noexc35, %bb.j
  %.0.i.i.i33 = phi i8 [ %i.bi, %bb.j ], [ %i.bm, %.noexc35 ]
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.am, i8 noundef signext %.0.i.i.i33)
          to label %.noexc37 unwind label %bb.f

.noexc37:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i32
  %i.bo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bn)
          to label %_ZNSolsEPFRSoS_E.exit20 unwind label %bb.f ; 0 uses

_ZNSolsEPFRSoS_E.exit20:                          ; preds = %.noexc37
  %i.bp = load ptr, ptr %2, align 8, !tbaa !50    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %7
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZNSolsEPFRSoS_E.exit20
  %i.br = load i64, ptr %7, align 8, !tbaa !42
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %_ZNSolsEPFRSoS_E.exit20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.ab
}

declare noundef ptr @_Z18lodepng_error_textj(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_Z21loadWithErrorRecoveryR4DataRK7Optionsb(ptr noundef nonnull align 8 dereferenceable(736) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(37) %1, i1 noundef zeroext %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %bb.b, label %._ZN4Data10loadPixelsEv.exit_crit_edge

._ZN4Data10loadPixelsEv.exit_crit_edge:           ; preds = %bb.a
  %.pre.pre.pre = load i32, ptr %i.a, align 8, !tbaa !106
  br label %_ZN4Data10loadPixelsEv.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !44
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !44
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %_ZN4Data8loadFileEv.exit.i.i, label %.thread.i

.thread.i:                                        ; preds = %bb.b
  store i32 0, ptr %i.a, align 8, !tbaa !74
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 732
  store i8 1, ptr %i.m, align 4, !tbaa !98
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i32 6, ptr %i.n, align 8, !tbaa !126
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 260
  store i32 16, ptr %i.o, align 4, !tbaa !121
  br label %_ZNSt6vectorIhSaIhEE5clearEv.exit.i.i

_ZN4Data8loadFileEv.exit.i.i:                     ; preds = %bb.b
  %i.p = tail call noundef i32 @_ZN7lodepng9load_fileERSt6vectorIhSaIhEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(736) %0) ; 3 uses
  store i32 %i.p, ptr %i.a, align 8, !tbaa !74
  %.not.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4Data10loadPixelsEv.exit

bb.c:                                             ; preds = %_ZN4Data8loadFileEv.exit.i.i
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !100 ; 2 uses
  %.pre1.i = load ptr, ptr %i.e, align 8, !tbaa !99
  %i.q = icmp eq ptr %.pre1.i, %.pre.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 732
  store i8 1, ptr %i.r, align 4, !tbaa !98
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i32 6, ptr %i.s, align 8, !tbaa !126
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 260
  store i32 16, ptr %i.t, align 4, !tbaa !121
  br i1 %i.q, label %_ZNSt6vectorIhSaIhEE5clearEv.exit.i.i, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i:    ; preds = %bb.c
  store ptr %.pre.i, ptr %i.e, align 8, !tbaa !99
  br label %_ZNSt6vectorIhSaIhEE5clearEv.exit.i.i

_ZNSt6vectorIhSaIhEE5clearEv.exit.i.i:            ; preds = %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i, %bb.c, %.thread.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.w = tail call noundef i32 @_ZN7lodepng6decodeERSt6vectorIhSaIhEERjS4_RNS_5StateERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %i.v, ptr noundef nonnull align 8 dereferenceable(640) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.h) ; 2 uses
  store i32 %i.w, ptr %i.a, align 8, !tbaa !74
  br label %_ZN4Data10loadPixelsEv.exit

_ZN4Data10loadPixelsEv.exit:                      ; preds = %._ZN4Data10loadPixelsEv.exit_crit_edge, %_ZN4Data8loadFileEv.exit.i.i, %_ZNSt6vectorIhSaIhEE5clearEv.exit.i.i
  %.pre.pre = phi i32 [ %.pre.pre.pre, %._ZN4Data10loadPixelsEv.exit_crit_edge ], [ %i.p, %_ZN4Data8loadFileEv.exit.i.i ], [ %i.w, %_ZNSt6vectorIhSaIhEE5clearEv.exit.i.i ] ; 2 uses
  %.not = icmp eq i32 %.pre.pre, 0
  %or.cond = select i1 %2, i1 %.not, i1 false
  br i1 %or.cond, label %bb.d, label %bb.h

bb.d:                                             ; preds = %_ZN4Data10loadPixelsEv.exit
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.51, i64 noundef 21) ; 0 uses
  %i.y = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.z = getelementptr i8, ptr %i.y, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 240
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i59 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i59, label %bb.e, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !41
  %.not.i1.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i1.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 67
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !42
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ad)
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !17
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call noundef signext i8 %i.ak(ptr noundef nonnull align 8 dereferenceable(570) %i.ad, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i = phi i8 [ %i.ah, %bb.f ], [ %i.al, %bb.g ]
  %i.am = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
  br label %.thread108.thread111.sink.split

bb.h:                                             ; preds = %_ZN4Data10loadPixelsEv.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 9 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 732 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.not35168 = icmp eq i32 %.pre.pre, 0
  br i1 %.not35168, label %.thread108, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %select.unfold
  tail call void @_Z9showErrorR4DataRK7Options(ptr noundef nonnull align 8 dereferenceable(736) %0, ptr noundef nonnull align 4 dereferenceable(37) %1)
  %i.ax = load i32, ptr %i.a, align 8, !tbaa !106 ; 4 uses
  switch i32 %i.ax, label %bb.ak [
    i32 57, label %bb.i
    i32 58, label %bb.p
    i32 69, label %bb.w
    i32 30, label %bb.ad
    i32 63, label %bb.ad
  ]

bb.i:                                             ; preds = %.lr.ph
  br i1 %2, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.52, i64 noundef 39) ; 0 uses
  %i.az = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !17
  %i.ba = getelementptr i8, ptr %i.az, i64 -24
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 240
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i60 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i60, label %bb.k, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i61

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i61: ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !41
  %.not.i1.i.i62 = icmp eq i8 %i.bg, 0
  br i1 %.not.i1.i.i62, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i61
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 67
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !42
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit64

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i61
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.be)
  %i.bj = load ptr, ptr %i.be, align 8, !tbaa !17
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = tail call noundef signext i8 %i.bl(ptr noundef nonnull align 8 dereferenceable(570) %i.be, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit64

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit64: ; preds = %bb.l, %bb.m
  %.0.i.i.i63 = phi i8 [ %i.bi, %bb.l ], [ %i.bm, %bb.m ]
  %i.bn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i63)
  %i.bo = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bn) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit64, %bb.i
  store i32 1, ptr %i.aw, align 8, !tbaa !210
  %i.bp = load ptr, ptr %i.ao, align 8, !tbaa !44
  %i.bq = load ptr, ptr %i.ap, align 8, !tbaa !44
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZN4Data8loadFileEv.exit.i, label %_ZN4Data8loadFileEv.exit.thread.i

_ZN4Data8loadFileEv.exit.thread.i:                ; preds = %bb.n
  store i32 0, ptr %i.a, align 8, !tbaa !74
end_hunk_2
begin_hunk_3_@_Z21loadWithErrorRecoveryR4DataRK7Optionsb:bb.a
  %.not114 = icmp eq i32 %i.fd, %i.ax
  br i1 %.not114, label %.thread108.thread.thread, label %select.unfold

bb.ap:                                            ; preds = %_ZN4Data12reloadPixelsEv.exit
  %i.fe = icmp eq i32 %i.fd, 0
  br i1 %i.fe, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %bb.ap
  %i.ff = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.57, i64 noundef 30) ; 0 uses
  %i.fg = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !17
  %i.fh = getelementptr i8, ptr %i.fg, i64 -24
  %i.fi = load i64, ptr %i.fh, align 8
  %i.fj = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 240
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i85 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i85, label %bb.ar, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i86

bb.ar:                                            ; preds = %bb.aq
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i86: ; preds = %bb.aq
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 56
  %i.fn = load i8, ptr %i.fm, align 8, !tbaa !41
  %.not.i1.i.i87 = icmp eq i8 %i.fn, 0
  br i1 %.not.i1.i.i87, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i86
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 67
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !42
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit89

bb.at:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i86
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fl)
  %i.fq = load ptr, ptr %i.fl, align 8, !tbaa !17
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 48
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = tail call noundef signext i8 %i.fs(ptr noundef nonnull align 8 dereferenceable(570) %i.fl, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit89

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit89: ; preds = %bb.as, %bb.at
  %.0.i.i.i88 = phi i8 [ %i.fp, %bb.as ], [ %i.ft, %bb.at ]
  %i.fu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i88)
  %i.fv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fu) ; 0 uses
  %.pre129 = load i32, ptr %i.a, align 8, !tbaa !106
  br label %bb.au

bb.au:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit89, %bb.ap
  %i.fw = phi i32 [ %.pre129, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit89 ], [ %i.fd, %bb.ap ] ; 2 uses
  %.not113 = icmp eq i32 %i.fw, %i.ax
  br i1 %.not113, label %bb.av, label %select.unfold

bb.av:                                            ; preds = %bb.au
  %i.fx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.58, i64 noundef 26) ; 0 uses
  %i.fy = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !17
  %i.fz = getelementptr i8, ptr %i.fy, i64 -24
  %i.ga = load i64, ptr %i.fz, align 8
  %i.gb = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 240
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i90 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i90, label %bb.aw, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i91

bb.aw:                                            ; preds = %bb.av
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i91: ; preds = %bb.av
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 56
  %i.gf = load i8, ptr %i.ge, align 8, !tbaa !41
  %.not.i1.i.i92 = icmp eq i8 %i.gf, 0
  br i1 %.not.i1.i.i92, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i91
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 67
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !42
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit94

bb.ay:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i91
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.gd)
  %i.gi = load ptr, ptr %i.gd, align 8, !tbaa !17
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 48
  %i.gk = load ptr, ptr %i.gj, align 8
  %i.gl = tail call noundef signext i8 %i.gk(ptr noundef nonnull align 8 dereferenceable(570) %i.gd, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit94

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit94: ; preds = %bb.ax, %bb.ay
  %.0.i.i.i93 = phi i8 [ %i.gh, %bb.ax ], [ %i.gl, %bb.ay ]
  %i.gm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i93)
  br label %.thread108.thread111.sink.split

select.unfold:                                    ; preds = %.thread, %bb.au
  %i.gn = phi i32 [ %i.fw, %bb.au ], [ %i.fd, %.thread ]
  %.not35 = icmp eq i32 %i.gn, 0
  br i1 %.not35, label %.thread108, label %.lr.ph

.thread108:                                       ; preds = %select.unfold, %bb.h
  br i1 %2, label %.thread108.thread, label %.thread108.thread111

.thread108.thread:                                ; preds = %.thread108, %bb.ak
  %i.go = phi i32 [ %i.ax, %bb.ak ], [ 0, %.thread108 ]
  %.not36 = icmp eq i32 %i.go, 0
  br i1 %.not36, label %bb.az, label %.thread108.thread.thread

bb.az:                                            ; preds = %.thread108.thread
  %i.gp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.59, i64 noundef 24) ; 0 uses
  %i.gq = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.gr = getelementptr i8, ptr %i.gq, i64 -24
  %i.gs = load i64, ptr %i.gr, align 8
  %i.gt = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 240
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i95 = icmp eq ptr %i.gv, null
  br i1 %.not.i.i.i95, label %bb.ba, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i96

bb.ba:                                            ; preds = %bb.az
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i96: ; preds = %bb.az
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 56
  %i.gx = load i8, ptr %i.gw, align 8, !tbaa !41
  %.not.i1.i.i97 = icmp eq i8 %i.gx, 0
  br i1 %.not.i1.i.i97, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i96
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 67
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !42
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit99

bb.bc:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i96
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.gv)
  %i.ha = load ptr, ptr %i.gv, align 8, !tbaa !17
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 48
  %i.hc = load ptr, ptr %i.hb, align 8
  %i.hd = tail call noundef signext i8 %i.hc(ptr noundef nonnull align 8 dereferenceable(570) %i.gv, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit99

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit99: ; preds = %bb.bb, %bb.bc
  %.0.i.i.i98 = phi i8 [ %i.gz, %bb.bb ], [ %i.hd, %bb.bc ]
  %i.he = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i98)
  br label %.thread108.thread111.sink.split

.thread108.thread.thread:                         ; preds = %.thread, %.thread108.thread
  %i.hf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.60, i64 noundef 28) ; 0 uses
  %i.hg = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.hh = getelementptr i8, ptr %i.hg, i64 -24
  %i.hi = load i64, ptr %i.hh, align 8
  %i.hj = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.hi
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 240
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i100 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i100, label %bb.bd, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i101

bb.bd:                                            ; preds = %.thread108.thread.thread
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i101: ; preds = %.thread108.thread.thread
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 56
  %i.hn = load i8, ptr %i.hm, align 8, !tbaa !41
  %.not.i1.i.i102 = icmp eq i8 %i.hn, 0
  br i1 %.not.i1.i.i102, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i101
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 67
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !42
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit104

bb.bf:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i101
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.hl)
  %i.hq = load ptr, ptr %i.hl, align 8, !tbaa !17
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 48
  %i.hs = load ptr, ptr %i.hr, align 8
  %i.ht = tail call noundef signext i8 %i.hs(ptr noundef nonnull align 8 dereferenceable(570) %i.hl, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit104

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit104: ; preds = %bb.be, %bb.bf
  %.0.i.i.i103 = phi i8 [ %i.hp, %bb.be ], [ %i.ht, %bb.bf ]
  %i.hu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i103)
  br label %.thread108.thread111.sink.split

.thread108.thread111.sink.split:                  ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit99, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit104, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit94, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit84
  %.sink = phi ptr [ %i.fb, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit84 ], [ %i.gm, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit94 ], [ %i.hu, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit104 ], [ %i.he, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit99 ], [ %i.am, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %i.hv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %.sink) ; 0 uses
  br label %.thread108.thread111

.thread108.thread111:                             ; preds = %.thread108.thread111.sink.split, %.thread108
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z21showSingleLineSummaryR4DataRK7Options(ptr noundef nonnull align 8 dereferenceable(736) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(37) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  tail call void @_ZN4Data11loadInspectEv(ptr noundef nonnull align 8 dereferenceable(736) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.b = load i32, ptr %i.a, align 8, !tbaa !74
  switch i32 %i.b, label %bb.p [
    i32 0, label %3
    i32 57, label %3
  ]

3:                                                ; preds = %bb.a, %bb.a
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 36
  %5 = load i8, ptr %4, align 4, !tbaa !78, !range !72, !noundef !73
  %6 = trunc nuw i8 %5 to i1
  %7 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %8 = getelementptr i8, ptr %7, i64 -24
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %9 ; 2 uses
  br i1 %6, label %call.1, label %call.0

call.0:                                           ; preds = %3
  %11 = tail call noundef nonnull align 8 dereferenceable(216) ptr @_ZSt3decRSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %10), !inline_history !1 ; 0 uses
  br label %bb.b

call.1:                                           ; preds = %3
  %12 = tail call noundef nonnull align 8 dereferenceable(216) ptr @_ZSt3hexRSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %10), !inline_history !1 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %call.1, %call.0
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.61, i64 noundef 10) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !99
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !100
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.j) ; 2 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.9, i64 noundef 2) ; 0 uses
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !99
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !100
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = lshr i64 %i.q, 10
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef %i.r)
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.62, i64 noundef 2) ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 734
  %i.v = load i8, ptr %i.u, align 2, !tbaa !102, !range !72, !noundef !73
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.63, i64 noundef 66) ; 0 uses
  %i.y = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.z = getelementptr i8, ptr %i.y, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 240
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !41
  %.not.i1.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i1.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 67
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !42
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ad)
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !17
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call noundef signext i8 %i.ak(ptr noundef nonnull align 8 dereferenceable(570) %i.ad, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.e, %bb.f
  %.0.i.i.i = phi i8 [ %i.ah, %bb.e ], [ %i.al, %bb.f ]
  %i.am = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
  %i.an = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.am) ; 0 uses
  br label %bb.p

bb.g:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 735
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !101, !range !72, !noundef !73
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.64, i64 noundef 62) ; 0 uses
  %i.as = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.at = getelementptr i8, ptr %i.as, i64 -24
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 240
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i18 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i18, label %bb.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i19

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i19: ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !41
  %.not.i1.i.i20 = icmp eq i8 %i.az, 0
  br i1 %.not.i1.i.i20, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i19
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 67
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !42
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit22

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i19
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ax)
  %i.bc = load ptr, ptr %i.ax, align 8, !tbaa !17
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = tail call noundef signext i8 %i.be(ptr noundef nonnull align 8 dereferenceable(570) %i.ax, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit22

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit22: ; preds = %bb.j, %bb.k
  %.0.i.i.i21 = phi i8 [ %i.bb, %bb.j ], [ %i.bf, %bb.k ]
  %i.bg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i21)
  %i.bh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bg) ; 0 uses
  br label %bb.p

bb.l:                                             ; preds = %bb.g
  %i.bi = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.39, i64 noundef 2) ; 0 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !127
  %i.bl = zext i32 %i.bk to i64
  %i.bm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.bl) ; 2 uses
  %i.bn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef nonnull @.str.65, i64 noundef 1) ; 0 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !128
  %i.bq = zext i32 %i.bp to i64
  %i.br = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, i64 noundef %i.bq)
  %i.bs = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef nonnull @.str.39, i64 noundef 2) ; 0 uses
  %i.bt = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.66, i64 noundef 7) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !119
  call void @_Z15colorTypeStringB5cxx1116LodePNGColorType(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, i32 noundef %i.bv)
  %i.bw = load ptr, ptr %2, align 8, !tbaa !50
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !49
  %i.bz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.bw, i64 noundef %i.by)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.q ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.l
  %i.ca = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef nonnull @.str.39, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !213
  %i.cd = zext i32 %i.cc to i64
  %i.ce = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, i64 noundef %i.cd)
          to label %_ZNSolsEj.exit unwind label %bb.q ; 4 uses

_ZNSolsEj.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef nonnull @.str.67, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14 unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14: ; preds = %_ZNSolsEj.exit
  %i.cg = load ptr, ptr %i.ce, align 8, !tbaa !17
  %i.ch = getelementptr i8, ptr %i.cg, i64 -24
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds i8, ptr %i.ce, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 240
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i23 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i23, label %bb.m, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i24

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.m
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i24: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 56
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !41
  %.not.i1.i.i25 = icmp eq i8 %i.cn, 0
  br i1 %.not.i1.i.i25, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i24
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 67
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !42
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.o:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i24
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cl)
          to label %.noexc27 unwind label %bb.q

.noexc27:                                         ; preds = %bb.o
  %i.cq = load ptr, ptr %i.cl, align 8, !tbaa !17
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = invoke noundef signext i8 %i.cs(ptr noundef nonnull align 8 dereferenceable(570) %i.cl, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.q, !inline_history !3

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc27, %bb.n
  %.0.i.i.i26 = phi i8 [ %i.cp, %bb.n ], [ %i.ct, %.noexc27 ]
  %i.cu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, i8 noundef signext %.0.i.i.i26)
          to label %.noexc29 unwind label %bb.q

.noexc29:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.cv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cu)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.q ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc29
  %i.cw = load ptr, ptr %2, align 8, !tbaa !50    ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
end_hunk_3
begin_hunk_4_@_Z15printICCDetailsPKhmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.apd = getelementptr inbounds nuw i8, ptr %i.apa, i64 67
  %i.ape = load i8, ptr %i.apd, align 1, !tbaa !42
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i751

bb.cy:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i749
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.apa)
          to label %.noexc754 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc754:                                        ; preds = %bb.cy
  %i.apf = load ptr, ptr %i.apa, align 8, !tbaa !17
  %i.apg = getelementptr inbounds nuw i8, ptr %i.apf, i64 48
  %i.aph = load ptr, ptr %i.apg, align 8
  %i.api = invoke noundef signext i8 %i.aph(ptr noundef nonnull align 8 dereferenceable(570) %i.apa, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i751 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !3

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i751: ; preds = %.noexc754, %bb.cx
  %.0.i.i.i752 = phi i8 [ %i.ape, %bb.cx ], [ %i.api, %.noexc754 ]
  %i.apj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i752)
          to label %.noexc756 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc756:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i751
  %i.apk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.apj)
          to label %_ZNSolsEPFRSoS_E.exit615 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit615:                         ; preds = %.noexc756
  %i.apl = load ptr, ptr %13, align 8, !tbaa !50  ; 2 uses
  %i.apm = icmp eq ptr %i.apl, %i.we
  br i1 %i.apm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i617, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i616

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i616: ; preds = %_ZNSolsEPFRSoS_E.exit615
  %i.apn = load i64, ptr %i.we, align 8, !tbaa !42
  %i.apo = add i64 %i.apn, 1
  call void @_ZdlPvm(ptr noundef %i.apl, i64 noundef %i.apo) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i617

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i617: ; preds = %_ZNSolsEPFRSoS_E.exit615, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i616
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  %i.app = add nuw nsw i64 %.0222828, 1           ; 2 uses
  %exitcond839.not = icmp eq i64 %i.app, %.0.i465
  br i1 %exitcond839.not, label %.loopexit797, label %bb.bp, !llvm.loop !242

.loopexit797:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i617, %.preheader, %.thread, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit735, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit623, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  ret void

bb.cz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit472, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit475, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit478, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit481, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit484, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit487, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit490, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit519, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit613, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit493, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit469
  %.pn251.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.acd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit519 ], [ %i.xa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit469 ], [ %i.xf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit472 ], [ %i.yj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit490 ], [ %i.ye, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit487 ], [ %i.xz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit484 ], [ %i.xu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit481 ], [ %i.xp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit478 ], [ %i.xk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit475 ], [ %i.yo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit493 ], [ %lpad.loopexit.split-lp973, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit613 ]
  resume { ptr, i32 } %.pn251.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define void @_Z7showHexPKhmRK7Options(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(37) %2) local_unnamed_addr #0 {
bb.a:
  %.not29 = icmp eq i64 %1, 0
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %bb.i, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load i32, ptr %i.b, align 4, !tbaa !129
  %.not = icmp eq i32 %i.c, 2
  br i1 %.not, label %bb.n, label %bb.j

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.028 = phi i64 [ 0, %.lr.ph ], [ %.pre-phi, %bb.i ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.028
  %i.e = load i8, ptr %i.d, align 1, !tbaa !42    ; 2 uses
  %i.f = load i32, ptr %i.a, align 4, !tbaa !129  ; 2 uses
  %i.g = icmp eq i32 %i.f, 2
  %i.h = zext i8 %i.e to i32                      ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %putchar = tail call i32 @putchar(i32 %i.h)     ; 0 uses
  %.pre = add nuw i64 %.028, 1
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.i = add i8 %i.e, -33
  %or.cond = icmp ult i8 %i.i, 94
  %i.j = icmp eq i32 %i.f, 1
  %or.cond21 = and i1 %or.cond, %i.j
  %.str.120..str.121 = select i1 %or.cond21, ptr @.str.120, ptr @.str.121
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.120..str.121, i32 noundef %i.h) ; 0 uses
  %i.l = and i64 %.028, 31
  %i.m = icmp ne i64 %i.l, 31
  %i.n = add nuw i64 %.028, 1                     ; 3 uses
  %.not20 = icmp eq i64 %i.n, %1
  %or.cond22 = or i1 %i.m, %.not20
  br i1 %or.cond22, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.p = getelementptr i8, ptr %i.o, i64 -24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 240
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !35   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %bb.f, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.v = load i8, ptr %i.u, align 8, !tbaa !41
  %.not.i1.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i1.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 67
  %i.x = load i8, ptr %i.w, align 1, !tbaa !42
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.t)
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !17
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef signext i8 %i.aa(ptr noundef nonnull align 8 dereferenceable(570) %i.t, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.g, %bb.h
  %.0.i.i.i = phi i8 [ %i.x, %bb.g ], [ %i.ab, %bb.h ]
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ac) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.c
  %.pre-phi = phi i64 [ %i.n, %bb.d ], [ %i.n, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ %.pre, %bb.c ] ; 2 uses
  %exitcond.not = icmp eq i64 %.pre-phi, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !255

bb.j:                                             ; preds = %._crit_edge
  %i.ae = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.af = getelementptr i8, ptr %i.ae, i64 -24
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 240
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i23 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i23, label %bb.k, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i24

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i24: ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !41
  %.not.i1.i.i25 = icmp eq i8 %i.al, 0
  br i1 %.not.i1.i.i25, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i24
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 67
  %i.an = load i8, ptr %i.am, align 1, !tbaa !42
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit27

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i24
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aj)
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !17
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call noundef signext i8 %i.aq(ptr noundef nonnull align 8 dereferenceable(570) %i.aj, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit27

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit27: ; preds = %bb.l, %bb.m
  %.0.i.i.i26 = phi i8 [ %i.an, %bb.l ], [ %i.ar, %bb.m ]
  %i.as = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i26)
  %i.at = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.as) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit27, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z14showHeaderInfoR4DataRK7Options(ptr noundef nonnull align 8 dereferenceable(736) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(37) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  tail call void @_ZN4Data11loadInspectEv(ptr noundef nonnull align 8 dereferenceable(736) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.b = load i32, ptr %i.a, align 8, !tbaa !74
  switch i32 %i.b, label %bb.eq [
    i32 0, label %bb.b
    i32 57, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.d = load i8, ptr %i.c, align 4, !tbaa !78, !range !72, !noundef !73
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.h ; 2 uses
  br i1 %i.e, label %call.1, label %call.0

call.0:                                           ; preds = %bb.b
  %4 = tail call noundef nonnull align 8 dereferenceable(216) ptr @_ZSt3decRSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.i), !inline_history !1 ; 0 uses
  br label %.tail

call.1:                                           ; preds = %bb.b
  %5 = tail call noundef nonnull align 8 dereferenceable(216) ptr @_ZSt3hexRSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.i), !inline_history !1 ; 0 uses
  br label %.tail

.tail:                                            ; preds = %call.1, %call.0
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 296
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 7 uses
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
  %9 = load i8, ptr %8, align 1, !tbaa !130, !range !72, !noundef !73
  %10 = trunc nuw i8 %9 to i1
  br i1 %10, label %bb.c, label %bb.bj

bb.c:                                             ; preds = %.tail
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.61, i64 noundef 10) ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !99
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !100
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.q) ; 2 uses
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.9, i64 noundef 2) ; 0 uses
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !99
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !100
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = lshr i64 %i.x, 10
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i64 noundef %i.y) ; 4 uses
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str.62, i64 noundef 2) ; 0 uses
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !17
  %i.ac = getelementptr i8, ptr %i.ab, i64 -24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr %i.z, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 240
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !41
  %.not.i1.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i1.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 67
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !42
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ag)
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !17
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef signext i8 %i.an(ptr noundef nonnull align 8 dereferenceable(570) %i.ag, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.e, %bb.f
  %.0.i.i.i = phi i8 [ %i.ak, %bb.e ], [ %i.ao, %bb.f ]
  %i.ap = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.z, i8 noundef signext %.0.i.i.i)
  %i.aq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ap) ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 734
  %i.as = load i8, ptr %i.ar, align 2, !tbaa !102, !range !72, !noundef !73
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.g, label %bb.k

bb.g:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.au = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.122, i64 noundef 57) ; 0 uses
  %i.av = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.aw = getelementptr i8, ptr %i.av, i64 -24
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 240
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i124 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i124, label %bb.h, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i125

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i125: ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !41
  %.not.i1.i.i126 = icmp eq i8 %i.bc, 0
  br i1 %.not.i1.i.i126, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i125
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 67
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !42
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit128

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i125
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ba)
  %i.bf = load ptr, ptr %i.ba, align 8, !tbaa !17
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = tail call noundef signext i8 %i.bh(ptr noundef nonnull align 8 dereferenceable(570) %i.ba, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit128

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit128: ; preds = %bb.i, %bb.j
  %.0.i.i.i127 = phi i8 [ %i.be, %bb.i ], [ %i.bi, %bb.j ]
  %i.bj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i127)
  %i.bk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bj) ; 0 uses
  br label %bb.bj

bb.k:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 735
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !101, !range !72, !noundef !73
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.bo = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.123, i64 noundef 49) ; 0 uses
  %i.bp = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.bq = getelementptr i8, ptr %i.bp, i64 -24
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 240
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i129 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i129, label %bb.m, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i130

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i130: ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 56
  %i.bw = load i8, ptr %i.bv, align 8, !tbaa !41
  %.not.i1.i.i131 = icmp eq i8 %i.bw, 0
  br i1 %.not.i1.i.i131, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i130
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 67
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !42
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit133

bb.o:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i130
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bu)
  %i.bz = load ptr, ptr %i.bu, align 8, !tbaa !17
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = tail call noundef signext i8 %i.cb(ptr noundef nonnull align 8 dereferenceable(570) %i.bu, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit133

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit133: ; preds = %bb.n, %bb.o
  %.0.i.i.i132 = phi i8 [ %i.by, %bb.n ], [ %i.cc, %bb.o ]
  %i.cd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i132)
  %i.ce = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cd) ; 0 uses
  br label %bb.bj

bb.p:                                             ; preds = %bb.k
  %i.cf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.124, i64 noundef 7) ; 0 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !127
  %i.ci = zext i32 %i.ch to i64
  %i.cj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.ci) ; 3 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !17
  %i.cl = getelementptr i8, ptr %i.ck, i64 -24
  %i.cm = load i64, ptr %i.cl, align 8
  %i.cn = getelementptr inbounds i8, ptr %i.cj, i64 %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 240
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i134 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i134, label %bb.q, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i135

bb.q:                                             ; preds = %bb.p
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i135: ; preds = %bb.p
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 56
  %i.cr = load i8, ptr %i.cq, align 8, !tbaa !41
  %.not.i1.i.i136 = icmp eq i8 %i.cr, 0
  br i1 %.not.i1.i.i136, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i135
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 67
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !42
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit138

bb.s:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i135
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cp)
  %i.cu = load ptr, ptr %i.cp, align 8, !tbaa !17
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = tail call noundef signext i8 %i.cw(ptr noundef nonnull align 8 dereferenceable(570) %i.cp, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit138

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit138: ; preds = %bb.r, %bb.s
  %.0.i.i.i137 = phi i8 [ %i.ct, %bb.r ], [ %i.cx, %bb.s ]
  %i.cy = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, i8 noundef signext %.0.i.i.i137)
  %i.cz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cy) ; 0 uses
  %i.da = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.125, i64 noundef 8) ; 0 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !128
  %i.dd = zext i32 %i.dc to i64
  %i.de = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.dd) ; 3 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !17
  %i.dg = getelementptr i8, ptr %i.df, i64 -24
  %i.dh = load i64, ptr %i.dg, align 8
  %i.di = getelementptr inbounds i8, ptr %i.de, i64 %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 240
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i139 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i139, label %bb.t, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i140
end_hunk_4
begin_hunk_5_@_Z14showHeaderInfoR4DataRK7Options:bb.a
  br i1 %.not.i1.i.i182, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i181
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jt, i64 67
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !42
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit185

bb.av:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i181
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.jt)
  %i.jy = load ptr, ptr %i.jt, align 8, !tbaa !17
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 48
  %i.ka = load ptr, ptr %i.jz, align 8
  %i.kb = call noundef signext i8 %i.ka(ptr noundef nonnull align 8 dereferenceable(570) %i.jt, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit185

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit185: ; preds = %bb.au, %bb.av
  %.0.i.i.i184 = phi i8 [ %i.jx, %bb.au ], [ %i.kb, %bb.av ]
  %i.kc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.jn, i8 noundef signext %.0.i.i.i184)
  %i.kd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.kc) ; 0 uses
  %i.ke = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.133, i64 noundef 20) ; 0 uses
  %i.kf = call noundef i32 @_Z20lodepng_get_channelsPK16LodePNGColorMode(ptr noundef nonnull %7)
  %i.kg = zext i32 %i.kf to i64
  %i.kh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.kg) ; 3 uses
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !17
  %i.kj = getelementptr i8, ptr %i.ki, i64 -24
  %i.kk = load i64, ptr %i.kj, align 8
  %i.kl = getelementptr inbounds i8, ptr %i.kh, i64 %i.kk
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 240
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i186 = icmp eq ptr %i.kn, null
  br i1 %.not.i.i.i186, label %bb.aw, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i187

bb.aw:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit185
  call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i187: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit185
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 56
  %i.kp = load i8, ptr %i.ko, align 8, !tbaa !41
  %.not.i1.i.i188 = icmp eq i8 %i.kp, 0
  br i1 %.not.i1.i.i188, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i187
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kn, i64 67
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !42
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit191

bb.ay:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i187
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.kn)
  %i.ks = load ptr, ptr %i.kn, align 8, !tbaa !17
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 48
  %i.ku = load ptr, ptr %i.kt, align 8
  %i.kv = call noundef signext i8 %i.ku(ptr noundef nonnull align 8 dereferenceable(570) %i.kn, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit191

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit191: ; preds = %bb.ax, %bb.ay
  %.0.i.i.i190 = phi i8 [ %i.kr, %bb.ax ], [ %i.kv, %bb.ay ]
  %i.kw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.kh, i8 noundef signext %.0.i.i.i190)
  %i.kx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.kw) ; 0 uses
  %i.ky = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.134, i64 noundef 19) ; 0 uses
  %i.kz = call noundef i32 @_Z25lodepng_is_greyscale_typePK16LodePNGColorMode(ptr noundef nonnull %7)
  %i.la = zext i32 %i.kz to i64
  %i.lb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.la) ; 3 uses
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !17
  %i.ld = getelementptr i8, ptr %i.lc, i64 -24
  %i.le = load i64, ptr %i.ld, align 8
  %i.lf = getelementptr inbounds i8, ptr %i.lb, i64 %i.le
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 240
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i192 = icmp eq ptr %i.lh, null
  br i1 %.not.i.i.i192, label %bb.az, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i193

bb.az:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit191
  call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i193: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit191
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 56
  %i.lj = load i8, ptr %i.li, align 8, !tbaa !41
  %.not.i1.i.i194 = icmp eq i8 %i.lj, 0
  br i1 %.not.i1.i.i194, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i193
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lh, i64 67
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !42
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit197

bb.bb:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i193
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.lh)
  %i.lm = load ptr, ptr %i.lh, align 8, !tbaa !17
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 48
  %i.lo = load ptr, ptr %i.ln, align 8
  %i.lp = call noundef signext i8 %i.lo(ptr noundef nonnull align 8 dereferenceable(570) %i.lh, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit197

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit197: ; preds = %bb.ba, %bb.bb
  %.0.i.i.i196 = phi i8 [ %i.ll, %bb.ba ], [ %i.lp, %bb.bb ]
  %i.lq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.lb, i8 noundef signext %.0.i.i.i196)
  %i.lr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.lq) ; 0 uses
  %i.ls = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.135, i64 noundef 16) ; 0 uses
  %i.lt = call noundef i32 @_Z22lodepng_can_have_alphaPK16LodePNGColorMode(ptr noundef nonnull %7)
  %i.lu = zext i32 %i.lt to i64
  %i.lv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.lu) ; 3 uses
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !17
  %i.lx = getelementptr i8, ptr %i.lw, i64 -24
  %i.ly = load i64, ptr %i.lx, align 8
  %i.lz = getelementptr inbounds i8, ptr %i.lv, i64 %i.ly
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 240
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i198 = icmp eq ptr %i.mb, null
  br i1 %.not.i.i.i198, label %bb.bc, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i199

bb.bc:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit197
  call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i199: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit197
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 56
  %i.md = load i8, ptr %i.mc, align 8, !tbaa !41
  %.not.i1.i.i200 = icmp eq i8 %i.md, 0
  br i1 %.not.i1.i.i200, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i199
  %i.me = getelementptr inbounds nuw i8, ptr %i.mb, i64 67
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !42
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit203

bb.be:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i199
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.mb)
  %i.mg = load ptr, ptr %i.mb, align 8, !tbaa !17
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 48
  %i.mi = load ptr, ptr %i.mh, align 8
  %i.mj = call noundef signext i8 %i.mi(ptr noundef nonnull align 8 dereferenceable(570) %i.mb, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit203

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit203: ; preds = %bb.bd, %bb.be
  %.0.i.i.i202 = phi i8 [ %i.mf, %bb.bd ], [ %i.mj, %bb.be ]
  %i.mk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.lv, i8 noundef signext %.0.i.i.i202)
  %i.ml = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.mk) ; 0 uses
  %i.mm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.136, i64 noundef 15) ; 0 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.mo = load i32, ptr %i.mn, align 8, !tbaa !261
  %i.mp = zext i32 %i.mo to i64
  %i.mq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.mp) ; 3 uses
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !17
  %i.ms = getelementptr i8, ptr %i.mr, i64 -24
  %i.mt = load i64, ptr %i.ms, align 8
  %i.mu = getelementptr inbounds i8, ptr %i.mq, i64 %i.mt
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 240
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i204 = icmp eq ptr %i.mw, null
  br i1 %.not.i.i.i204, label %bb.bf, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i205

bb.bf:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit203
  call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i205: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit203
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 56
  %i.my = load i8, ptr %i.mx, align 8, !tbaa !41
  %.not.i1.i.i206 = icmp eq i8 %i.my, 0
  br i1 %.not.i1.i.i206, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i205
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mw, i64 67
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !42
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit209

bb.bh:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i205
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.mw)
  %i.nb = load ptr, ptr %i.mw, align 8, !tbaa !17
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 48
  %i.nd = load ptr, ptr %i.nc, align 8
  %i.ne = call noundef signext i8 %i.nd(ptr noundef nonnull align 8 dereferenceable(570) %i.mw, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit209

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit209: ; preds = %bb.bg, %bb.bh
  %.0.i.i.i208 = phi i8 [ %i.na, %bb.bg ], [ %i.ne, %bb.bh ]
  %i.nf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.mq, i8 noundef signext %.0.i.i.i208)
  %i.ng = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.nf) ; 0 uses
  br label %bb.bj

bb.bi:                                            ; preds = %.noexc171, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc169, %bb.ao, %bb.am, %bb.al
  %i.nh = landingpad { ptr, i32 }
          cleanup
  %i.ni = load ptr, ptr %2, align 8, !tbaa !50    ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.nk = icmp eq ptr %i.ni, %i.nj
  br i1 %i.nk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113: ; preds = %bb.bi
  %i.nl = load i64, ptr %i.nj, align 8, !tbaa !42
  %i.nm = add i64 %i.nl, 1
  call void @_ZdlPvm(ptr noundef %i.ni, i64 noundef %i.nm) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.er

bb.bj:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit128, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit179, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit209, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit133, %.tail
  %i.nn = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.no = load i8, ptr %i.nn, align 2, !tbaa !132, !range !72, !noundef !73
  %i.np = trunc nuw i8 %i.no to i1
  br i1 %i.np, label %bb.bk, label %bb.dm

bb.bk:                                            ; preds = %bb.bj
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 733
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !71, !range !72, !noundef !73
  %i.ns = trunc nuw i8 %i.nr to i1
  br i1 %i.ns, label %bb.bl, label %bb.dm

bb.bl:                                            ; preds = %bb.bk
  %i.nt = load i32, ptr %7, align 8, !tbaa !259
  %i.nu = icmp eq i32 %i.nt, 3
  br i1 %i.nu, label %bb.bm, label %bb.bq

bb.bm:                                            ; preds = %bb.bl
  %i.nv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.33, i64 noundef 14) ; 0 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.nx = load i64, ptr %i.nw, align 8, !tbaa !117
  %i.ny = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.nx) ; 3 uses
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !17
  %i.oa = getelementptr i8, ptr %i.nz, i64 -24
  %i.ob = load i64, ptr %i.oa, align 8
  %i.oc = getelementptr inbounds i8, ptr %i.ny, i64 %i.ob
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 240
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i210 = icmp eq ptr %i.oe, null
  br i1 %.not.i.i.i210, label %bb.bn, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i211

bb.bn:                                            ; preds = %bb.bm
  call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i211: ; preds = %bb.bm
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 56
  %i.og = load i8, ptr %i.of, align 8, !tbaa !41
  %.not.i1.i.i212 = icmp eq i8 %i.og, 0
  br i1 %.not.i1.i.i212, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i211
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oe, i64 67
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !42
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit215

bb.bp:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i211
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.oe)
  %i.oj = load ptr, ptr %i.oe, align 8, !tbaa !17
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 48
  %i.ol = load ptr, ptr %i.ok, align 8
  %i.om = call noundef signext i8 %i.ol(ptr noundef nonnull align 8 dereferenceable(570) %i.oe, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit215

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit215: ; preds = %bb.bo, %bb.bp
  %.0.i.i.i214 = phi i8 [ %i.oi, %bb.bo ], [ %i.om, %bb.bp ]
  %i.on = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ny, i8 noundef signext %.0.i.i.i214)
  %i.oo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.on) ; 0 uses
  br label %bb.bq

bb.bq:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit215, %bb.bl
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.oq = load i32, ptr %i.op, align 8, !tbaa !261
  %.not100 = icmp eq i32 %i.oq, 0
  br i1 %.not100, label %bb.bv, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.or = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.137, i64 noundef 15) ; 0 uses
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !262
  %i.ou = zext i32 %i.ot to i64
  %i.ov = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.ou) ; 2 uses
  %i.ow = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ov, ptr noundef nonnull @.str.39, i64 noundef 2) ; 0 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.oy = load i32, ptr %i.ox, align 8, !tbaa !263
  %i.oz = zext i32 %i.oy to i64
  %i.pa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ov, i64 noundef %i.oz) ; 2 uses
  %i.pb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.pa, ptr noundef nonnull @.str.39, i64 noundef 2) ; 0 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !264
  %i.pe = zext i32 %i.pd to i64
  %i.pf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.pa, i64 noundef %i.pe) ; 3 uses
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !17
  %i.ph = getelementptr i8, ptr %i.pg, i64 -24
  %i.pi = load i64, ptr %i.ph, align 8
  %i.pj = getelementptr inbounds i8, ptr %i.pf, i64 %i.pi
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 240
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i216 = icmp eq ptr %i.pl, null
  br i1 %.not.i.i.i216, label %bb.bs, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i217

bb.bs:                                            ; preds = %bb.br
  call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i217: ; preds = %bb.br
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 56
  %i.pn = load i8, ptr %i.pm, align 8, !tbaa !41
  %.not.i1.i.i218 = icmp eq i8 %i.pn, 0
  br i1 %.not.i1.i.i218, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i217
  %i.po = getelementptr inbounds nuw i8, ptr %i.pl, i64 67
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !42
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit221

bb.bu:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i217
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.pl)
  %i.pq = load ptr, ptr %i.pl, align 8, !tbaa !17
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 48
  %i.ps = load ptr, ptr %i.pr, align 8
  %i.pt = call noundef signext i8 %i.ps(ptr noundef nonnull align 8 dereferenceable(570) %i.pl, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit221

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit221: ; preds = %bb.bt, %bb.bu
  %.0.i.i.i220 = phi i8 [ %i.pp, %bb.bt ], [ %i.pt, %bb.bu ]
  %i.pu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.pf, i8 noundef signext %.0.i.i.i220)
  %i.pv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.pu) ; 0 uses
  br label %bb.bv

bb.bv:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit221, %bb.bq
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.px = load i32, ptr %i.pw, align 8, !tbaa !265
  %.not101 = icmp eq i32 %i.px, 0
  br i1 %.not101, label %bb.cf, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.py = load i32, ptr %7, align 8, !tbaa !259
  %i.pz = icmp eq i32 %i.py, 3
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 2 uses
  br i1 %i.pz, label %bb.bx, label %bb.cb

bb.bx:                                            ; preds = %bb.bw
  %i.qb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.138, i64 noundef 18) ; 0 uses
  %i.qc = load i32, ptr %i.qa, align 4, !tbaa !266
  %i.qd = zext i32 %i.qc to i64
  %i.qe = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.qd) ; 3 uses
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !17
  %i.qg = getelementptr i8, ptr %i.qf, i64 -24
  %i.qh = load i64, ptr %i.qg, align 8
  %i.qi = getelementptr inbounds i8, ptr %i.qe, i64 %i.qh
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 240
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i222 = icmp eq ptr %i.qk, null
  br i1 %.not.i.i.i222, label %bb.by, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i223

bb.by:                                            ; preds = %bb.bx
  call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i223: ; preds = %bb.bx
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 56
  %i.qm = load i8, ptr %i.ql, align 8, !tbaa !41
  %.not.i1.i.i224 = icmp eq i8 %i.qm, 0
  br i1 %.not.i1.i.i224, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i223
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qk, i64 67
  %i.qo = load i8, ptr %i.qn, align 1, !tbaa !42
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit227

bb.ca:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i223
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.qk)
  %i.qp = load ptr, ptr %i.qk, align 8, !tbaa !17
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 48
  %i.qr = load ptr, ptr %i.qq, align 8
  %i.qs = call noundef signext i8 %i.qr(ptr noundef nonnull align 8 dereferenceable(570) %i.qk, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit227

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit227: ; preds = %bb.bz, %bb.ca
  %.0.i.i.i226 = phi i8 [ %i.qo, %bb.bz ], [ %i.qs, %bb.ca ]
  %i.qt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.qe, i8 noundef signext %.0.i.i.i226)
  br label %.sink.split

bb.cb:                                            ; preds = %bb.bw
  %i.qu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.139, i64 noundef 16) ; 0 uses
  %i.qv = load i32, ptr %i.qa, align 4, !tbaa !266
  %i.qw = zext i32 %i.qv to i64
  %i.qx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.qw) ; 2 uses
  %i.qy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.qx, ptr noundef nonnull @.str.39, i64 noundef 2) ; 0 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ra = load i32, ptr %i.qz, align 8, !tbaa !267
  %i.rb = zext i32 %i.ra to i64
  %i.rc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.qx, i64 noundef %i.rb) ; 2 uses
  %i.rd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.rc, ptr noundef nonnull @.str.39, i64 noundef 2) ; 0 uses
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !268
  %i.rg = zext i32 %i.rf to i64
  %i.rh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.rc, i64 noundef %i.rg) ; 3 uses
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !17
  %i.rj = getelementptr i8, ptr %i.ri, i64 -24
  %i.rk = load i64, ptr %i.rj, align 8
  %i.rl = getelementptr inbounds i8, ptr %i.rh, i64 %i.rk
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 240
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i228 = icmp eq ptr %i.rn, null
  br i1 %.not.i.i.i228, label %bb.cc, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i229

bb.cc:                                            ; preds = %bb.cb
  call void @_ZSt16__throw_bad_castv() #25
  unreachable
end_hunk_5
begin_hunk_6_@_Z14showHeaderInfoR4DataRK7Options:bb.a
_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i247: ; preds = %bb.cq
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 56
  %i.wi = load i8, ptr %i.wh, align 8, !tbaa !41
  %.not.i1.i.i248 = icmp eq i8 %i.wi, 0
  br i1 %.not.i1.i.i248, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i247
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wg, i64 67
  %i.wk = load i8, ptr %i.wj, align 1, !tbaa !42
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit251

bb.ct:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i247
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.wg)
  %i.wl = load ptr, ptr %i.wg, align 8, !tbaa !17
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 48
  %i.wn = load ptr, ptr %i.wm, align 8
  %i.wo = call noundef signext i8 %i.wn(ptr noundef nonnull align 8 dereferenceable(570) %i.wg, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit251

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit251: ; preds = %bb.cs, %bb.ct
  %.0.i.i.i250 = phi i8 [ %i.wk, %bb.cs ], [ %i.wo, %bb.ct ]
  %i.wp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.wa, i8 noundef signext %.0.i.i.i250)
  %i.wq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.wp) ; 0 uses
  br label %bb.cu

bb.cu:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit251, %bb.cp
  %i.wr = getelementptr inbounds nuw i8, ptr %0, i64 548
  %i.ws = load i32, ptr %i.wr, align 4, !tbaa !282
  %.not105 = icmp eq i32 %i.ws, 0
  br i1 %.not105, label %bb.de, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.wt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.146, i64 noundef 21) ; 0 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.wv = load i32, ptr %i.wu, align 8, !tbaa !283
  %i.ww = zext i32 %i.wv to i64
  %i.wx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.ww) ; 7 uses
  %i.wy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.wx, ptr noundef nonnull @.str.147, i64 noundef 15) ; 0 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.xa = load ptr, ptr %i.wz, align 8, !tbaa !284 ; 3 uses
  %.not.i = icmp eq ptr %i.xa, null
  br i1 %.not.i, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.xb = load ptr, ptr %i.wx, align 8, !tbaa !17
  %i.xc = getelementptr i8, ptr %i.xb, i64 -24
  %i.xd = load i64, ptr %i.xc, align 8
  %i.xe = getelementptr inbounds i8, ptr %i.wx, i64 %i.xd ; 2 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 32
  %i.xg = load i32, ptr %i.xf, align 8, !tbaa !45
  %i.xh = or i32 %i.xg, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.xe, i32 noundef %i.xh)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.cx:                                            ; preds = %bb.cv
  %i.xi = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.xa) #26
  %i.xj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.wx, ptr noundef nonnull %i.xa, i64 noundef %i.xi) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.cw, %bb.cx
  %i.xk = load ptr, ptr %i.wx, align 8, !tbaa !17
  %i.xl = getelementptr i8, ptr %i.xk, i64 -24
  %i.xm = load i64, ptr %i.xl, align 8
  %i.xn = getelementptr inbounds i8, ptr %i.wx, i64 %i.xm
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 240
  %i.xp = load ptr, ptr %i.xo, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i252 = icmp eq ptr %i.xp, null
  br i1 %.not.i.i.i252, label %bb.cy, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i253

bb.cy:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i253: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 56
  %i.xr = load i8, ptr %i.xq, align 8, !tbaa !41
  %.not.i1.i.i254 = icmp eq i8 %i.xr, 0
  br i1 %.not.i1.i.i254, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i253
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xp, i64 67
  %i.xt = load i8, ptr %i.xs, align 1, !tbaa !42
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit257

bb.da:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i253
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.xp)
  %i.xu = load ptr, ptr %i.xp, align 8, !tbaa !17
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 48
  %i.xw = load ptr, ptr %i.xv, align 8
  %i.xx = call noundef signext i8 %i.xw(ptr noundef nonnull align 8 dereferenceable(570) %i.xp, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit257

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit257: ; preds = %bb.cz, %bb.da
  %.0.i.i.i256 = phi i8 [ %i.xt, %bb.cz ], [ %i.xx, %bb.da ]
  %i.xy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.wx, i8 noundef signext %.0.i.i.i256)
  %i.xz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.xy) ; 0 uses
  %i.ya = load i8, ptr %1, align 4, !tbaa !131, !range !72, !noundef !73
  %i.yb = trunc nuw i8 %i.ya to i1
  br i1 %i.yb, label %bb.db, label %bb.de

bb.db:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit257
  %i.yc = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.yd = load i8, ptr %i.yc, align 1, !tbaa !133, !range !72, !noundef !73
  %i.ye = trunc nuw i8 %i.yd to i1
  br i1 %i.ye, label %bb.de, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.yf = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.yg = load i8, ptr %i.yf, align 2, !tbaa !134, !range !72, !noundef !73
  %i.yh = trunc nuw i8 %i.yg to i1
  br i1 %i.yh, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.yi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.148, i64 noundef 47) ; 0 uses
  %i.yj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout), !inline_history !2 ; 0 uses
  br label %bb.de

bb.de:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit257, %bb.db, %bb.dc, %bb.dd, %bb.cu
  %i.yk = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.yl = load i32, ptr %i.yk, align 8, !tbaa !285
  %.not106 = icmp eq i32 %i.yl, 0
  br i1 %.not106, label %bb.dm, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.ym = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.149, i64 noundef 23) ; 0 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.yo = load i32, ptr %i.yn, align 8, !tbaa !286
  %i.yp = zext i32 %i.yo to i64
  %i.yq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.yp) ; 4 uses
  %i.yr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.yq, ptr noundef nonnull @.str.150, i64 noundef 7) ; 0 uses
  %i.ys = load ptr, ptr %i.yq, align 8, !tbaa !17
  %i.yt = getelementptr i8, ptr %i.ys, i64 -24
  %i.yu = load i64, ptr %i.yt, align 8
  %i.yv = getelementptr inbounds i8, ptr %i.yq, i64 %i.yu
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 240
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i258 = icmp eq ptr %i.yx, null
  br i1 %.not.i.i.i258, label %bb.dg, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i259

bb.dg:                                            ; preds = %bb.df
  call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i259: ; preds = %bb.df
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 56
  %i.yz = load i8, ptr %i.yy, align 8, !tbaa !41
  %.not.i1.i.i260 = icmp eq i8 %i.yz, 0
  br i1 %.not.i1.i.i260, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i259
  %i.za = getelementptr inbounds nuw i8, ptr %i.yx, i64 67
  %i.zb = load i8, ptr %i.za, align 1, !tbaa !42
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit263

bb.di:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i259
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.yx)
  %i.zc = load ptr, ptr %i.yx, align 8, !tbaa !17
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 48
  %i.ze = load ptr, ptr %i.zd, align 8
  %i.zf = call noundef signext i8 %i.ze(ptr noundef nonnull align 8 dereferenceable(570) %i.yx, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit263

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit263: ; preds = %bb.dh, %bb.di
  %.0.i.i.i262 = phi i8 [ %i.zb, %bb.dh ], [ %i.zf, %bb.di ]
  %i.zg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.yq, i8 noundef signext %.0.i.i.i262)
  %i.zh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.zg) ; 0 uses
  %i.zi = load i8, ptr %1, align 4, !tbaa !131, !range !72, !noundef !73
  %i.zj = trunc nuw i8 %i.zi to i1
  br i1 %i.zj, label %bb.dj, label %bb.dm

bb.dj:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit263
  %i.zk = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.zl = load i8, ptr %i.zk, align 1, !tbaa !135, !range !72, !noundef !73
  %i.zm = trunc nuw i8 %i.zl to i1
  br i1 %i.zm, label %bb.dm, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.zn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.zo = load i8, ptr %i.zn, align 4, !tbaa !136, !range !72, !noundef !73
  %i.zp = trunc nuw i8 %i.zo to i1
  br i1 %i.zp, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.zq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.151, i64 noundef 40) ; 0 uses
  %i.zr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout), !inline_history !2 ; 0 uses
  br label %bb.dm

bb.dm:                                            ; preds = %bb.de, %bb.dl, %bb.dk, %bb.dj, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit263, %bb.bk, %bb.bj
  %i.zs = getelementptr inbounds nuw i8, ptr %0, i64 548 ; 2 uses
  %i.zt = load i32, ptr %i.zs, align 4, !tbaa !282
  %.not107 = icmp eq i32 %i.zt, 0
  br i1 %.not107, label %.thread, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.zu = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.zv = load i8, ptr %i.zu, align 1, !tbaa !133, !range !72, !noundef !73
  %i.zw = trunc nuw i8 %i.zv to i1
  br i1 %i.zw, label %bb.do, label %.thread328

bb.do:                                            ; preds = %bb.dn
  %i.zx = load i8, ptr %8, align 1, !tbaa !130, !range !72, !noundef !73
  %i.zy = trunc nuw i8 %i.zx to i1
  br i1 %i.zy, label %._crit_edge.i.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.zz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.152, i64 noundef 21) ; 0 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.aab = load i32, ptr %i.aaa, align 8, !tbaa !283
  %i.aac = zext i32 %i.aab to i64
  %i.aad = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.aac) ; 7 uses
  %i.aae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aad, ptr noundef nonnull @.str.153, i64 noundef 19) ; 0 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.aag = load ptr, ptr %i.aaf, align 8, !tbaa !284 ; 3 uses
  %.not.i116 = icmp eq ptr %i.aag, null
  br i1 %.not.i116, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.aah = load ptr, ptr %i.aad, align 8, !tbaa !17
  %i.aai = getelementptr i8, ptr %i.aah, i64 -24
  %i.aaj = load i64, ptr %i.aai, align 8
  %i.aak = getelementptr inbounds i8, ptr %i.aad, i64 %i.aaj ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 32
  %i.aam = load i32, ptr %i.aal, align 8, !tbaa !45
  %i.aan = or i32 %i.aam, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.aak, i32 noundef %i.aan)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117

bb.dr:                                            ; preds = %bb.dp
  %i.aao = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aag) #26
  %i.aap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aad, ptr noundef nonnull %i.aag, i64 noundef %i.aao) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117: ; preds = %bb.dq, %bb.dr
  %i.aaq = load ptr, ptr %i.aad, align 8, !tbaa !17
  %i.aar = getelementptr i8, ptr %i.aaq, i64 -24
  %i.aas = load i64, ptr %i.aar, align 8
  %i.aat = getelementptr inbounds i8, ptr %i.aad, i64 %i.aas
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aat, i64 240
  %i.aav = load ptr, ptr %i.aau, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i264 = icmp eq ptr %i.aav, null
  br i1 %.not.i.i.i264, label %bb.ds, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i265

bb.ds:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117
  call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i265: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 56
  %i.aax = load i8, ptr %i.aaw, align 8, !tbaa !41
  %.not.i1.i.i266 = icmp eq i8 %i.aax, 0
  br i1 %.not.i1.i.i266, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i265
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aav, i64 67
  %i.aaz = load i8, ptr %i.aay, align 1, !tbaa !42
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit269

bb.du:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i265
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aav)
  %i.aba = load ptr, ptr %i.aav, align 8, !tbaa !17
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 48
  %i.abc = load ptr, ptr %i.abb, align 8
  %i.abd = call noundef signext i8 %i.abc(ptr noundef nonnull align 8 dereferenceable(570) %i.aav, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit269

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit269: ; preds = %bb.dt, %bb.du
  %.0.i.i.i268 = phi i8 [ %i.aaz, %bb.dt ], [ %i.abd, %bb.du ]
  %i.abe = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aad, i8 noundef signext %.0.i.i.i268)
  %i.abf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.abe) ; 0 uses
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit269, %bb.do
  %i.abg = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !287
  %i.abi = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.abj = load i32, ptr %i.abi, align 8, !tbaa !283
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.abk = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.abk, ptr %3, align 8, !tbaa !47
  store i16 8224, ptr %i.abk, align 8
  %i.abl = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 2, ptr %i.abl, align 8, !tbaa !49
  %i.abm = getelementptr inbounds nuw i8, ptr %3, i64 18
  store i8 0, ptr %i.abm, align 2, !tbaa !42
  %i.abn = zext i32 %i.abj to i64
  invoke void @_Z15printICCDetailsPKhmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %i.abh, i64 noundef %i.abn, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.dv unwind label %bb.dz

bb.dv:                                            ; preds = %._crit_edge.i.i
  %i.abo = load ptr, ptr %3, align 8, !tbaa !50   ; 2 uses
  %i.abp = icmp eq ptr %i.abo, %i.abk
  br i1 %i.abp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118: ; preds = %bb.dv
  %i.abq = load i64, ptr %i.abk, align 8, !tbaa !42
  %i.abr = add i64 %i.abq, 1
  call void @_ZdlPvm(ptr noundef %i.abo, i64 noundef %i.abr) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120: ; preds = %bb.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.abs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.155, i64 noundef 18) ; 0 uses
  %i.abt = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.abu = getelementptr i8, ptr %i.abt, i64 -24
  %i.abv = load i64, ptr %i.abu, align 8
  %i.abw = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.abv
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abw, i64 240
  %i.aby = load ptr, ptr %i.abx, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i270 = icmp eq ptr %i.aby, null
  br i1 %.not.i.i.i270, label %bb.dw, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i271

bb.dw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120
  call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i271: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 56
  %i.aca = load i8, ptr %i.abz, align 8, !tbaa !41
  %.not.i1.i.i272 = icmp eq i8 %i.aca, 0
  br i1 %.not.i1.i.i272, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i271
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aby, i64 67
  %i.acc = load i8, ptr %i.acb, align 1, !tbaa !42
  br label %bb.ea

bb.dy:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i271
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aby)
  %i.acd = load ptr, ptr %i.aby, align 8, !tbaa !17
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 48
  %i.acf = load ptr, ptr %i.ace, align 8
  %i.acg = call noundef signext i8 %i.acf(ptr noundef nonnull align 8 dereferenceable(570) %i.aby, i8 noundef signext 10), !inline_history !0
  br label %bb.ea

bb.dz:                                            ; preds = %._crit_edge.i.i
  %i.ach = landingpad { ptr, i32 }
          cleanup
  %i.aci = load ptr, ptr %3, align 8, !tbaa !50   ; 2 uses
  %i.acj = icmp eq ptr %i.aci, %i.abk
  br i1 %i.acj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121: ; preds = %bb.dz
  %i.ack = load i64, ptr %i.abk, align 8, !tbaa !42
  %i.acl = add i64 %i.ack, 1
  call void @_ZdlPvm(ptr noundef %i.aci, i64 noundef %i.acl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123: ; preds = %bb.dz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.er

bb.ea:                                            ; preds = %bb.dy, %bb.dx
  %.0.i.i.i274 = phi i8 [ %i.acc, %bb.dx ], [ %i.acg, %bb.dy ]
  %i.acm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i274)
  %i.acn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.acm) ; 0 uses
  %.pr.pre = load i32, ptr %i.zs, align 4, !tbaa !282
  %i.aco = icmp eq i32 %.pr.pre, 0
  br i1 %i.aco, label %.thread, label %.thread328

.thread328:                                       ; preds = %bb.dn, %bb.ea
  %i.acp = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.acq = load i8, ptr %i.acp, align 2, !tbaa !134, !range !72, !noundef !73
  %i.acr = trunc nuw i8 %i.acq to i1
  br i1 %i.acr, label %bb.eb, label %.thread

bb.eb:                                            ; preds = %.thread328
  %i.acs = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.act = load ptr, ptr %i.acs, align 8, !tbaa !287
  %i.acu = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.acv = load i32, ptr %i.acu, align 8, !tbaa !283
  %i.acw = zext i32 %i.acv to i64
  call void @_Z7showHexPKhmRK7Options(ptr noundef %i.act, i64 noundef %i.acw, ptr noundef nonnull align 4 dereferenceable(37) %1)
  br label %.thread

.thread:                                          ; preds = %bb.dm, %bb.eb, %.thread328, %bb.ea
  %i.acx = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.acy = load i32, ptr %i.acx, align 8, !tbaa !285
  %.not111 = icmp eq i32 %i.acy, 0
  br i1 %.not111, label %bb.ee, label %bb.ec

bb.ec:                                            ; preds = %.thread
  %i.acz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ada = load i8, ptr %i.acz, align 4, !tbaa !136, !range !72, !noundef !73
  %i.adb = trunc nuw i8 %i.ada to i1
  br i1 %i.adb, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.adc = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.add = load ptr, ptr %i.adc, align 8, !tbaa !288
  %i.ade = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.adf = load i32, ptr %i.ade, align 8, !tbaa !286
  %i.adg = zext i32 %i.adf to i64
  call void @_Z7showHexPKhmRK7Options(ptr noundef %i.add, i64 noundef %i.adg, ptr noundef nonnull align 4 dereferenceable(37) %1)
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec, %.thread
  %i.adh = load i8, ptr %i.nn, align 2, !tbaa !132, !range !72, !noundef !73
  %i.adi = trunc nuw i8 %i.adh to i1
  br i1 %i.adi, label %bb.ef, label %bb.eq

bb.ef:                                            ; preds = %bb.ee
end_hunk_6
begin_hunk_7_@_Z11shortenTextRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK7Options:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.l, %bb.m
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !81, !noalias !304 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !49, !alias.scope !304
  %i.be = load ptr, ptr %4, align 8, !tbaa !50, !alias.scope !304
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bc
  store i8 0, ptr %i.bf, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !304
  %i.bg = icmp ugt i64 %spec.select, 1            ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !305)
  %i.bh = zext i1 %i.bg to i64                    ; 2 uses
  %i.bi = load i64, ptr %i.bd, align 8, !tbaa !49, !noalias !305
  %i.bj = sub i64 4611686018427387903, %i.bi
  %i.bk = icmp ult i64 %i.bj, %i.bh
  br i1 %i.bk, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.249) #25
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.n
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %i.bl = select i1 %i.bg, ptr @.str.160, ptr @.str.48
  %i.bm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %i.bl, i64 noundef %i.bh)
          to label %.noexc27 unwind label %bb.t   ; 6 uses

.noexc27:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.bn, ptr %3, align 8, !tbaa !47, !alias.scope !305
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !50 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 5 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.o:                                             ; preds = %.noexc27
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !49 ; 3 uses
  %i.bt = icmp ult i64 %i.bs, 16
  call void @llvm.assume(i1 %i.bt)
  %i.bu = add nuw nsw i64 %i.bs, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bn, ptr noundef nonnull align 8 dereferenceable(1) %i.bp, i64 %i.bu, i1 false)
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc27
  store ptr %i.bo, ptr %3, align 8, !tbaa !50, !alias.scope !305
  %i.bv = load i64, ptr %i.bp, align 8, !tbaa !42
  store i64 %i.bv, ptr %i.bn, align 8, !tbaa !42, !alias.scope !305
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !49
  br label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.o
  %i.bw = phi i64 [ %i.bs, %bb.o ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.bw, ptr %i.by, align 8, !tbaa !49, !alias.scope !305
  store ptr %i.bp, ptr %i.bm, align 8, !tbaa !50
  store i64 0, ptr %i.bx, align 8, !tbaa !49
  store i8 0, ptr %i.bp, align 8, !tbaa !42
  %i.bz = add i64 %i.bw, -4611686018427387858
  %i.ca = icmp ult i64 %i.bz, 46
  br i1 %i.ca, label %bb.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i28

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.249) #25
          to label %.noexc32 unwind label %bb.u

.noexc32:                                         ; preds = %bb.q
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i28: ; preds = %bb.p
  %i.cb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.161, i64 noundef 46)
          to label %.noexc33 unwind label %bb.u   ; 6 uses

.noexc33:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i28
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cc, ptr %0, align 8, !tbaa !47, !alias.scope !306
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !50 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 5 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

bb.r:                                             ; preds = %.noexc33
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !49 ; 3 uses
  %i.ci = icmp ult i64 %i.ch, 16
  call void @llvm.assume(i1 %i.ci)
  %i.cj = add nuw nsw i64 %i.ch, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cc, ptr noundef nonnull align 8 dereferenceable(1) %i.ce, i64 %i.cj, i1 false)
  br label %bb.s

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %.noexc33
  store ptr %i.cd, ptr %0, align 8, !tbaa !50, !alias.scope !306
  %i.ck = load i64, ptr %i.ce, align 8, !tbaa !42
  store i64 %i.ck, ptr %i.cc, align 8, !tbaa !42, !alias.scope !306
  %.phi.trans.insert.i30 = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %.pre.i31 = load i64, ptr %.phi.trans.insert.i30, align 8, !tbaa !49
  br label %bb.s

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29, %bb.r
  %i.cl = phi i64 [ %i.ch, %bb.r ], [ %.pre.i31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29 ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cl, ptr %i.cn, align 8, !tbaa !49, !alias.scope !306
  store ptr %i.ce, ptr %i.cb, align 8, !tbaa !50
  store i64 0, ptr %i.cm, align 8, !tbaa !49
  store i8 0, ptr %i.ce, align 8, !tbaa !42
  %i.co = load ptr, ptr %3, align 8, !tbaa !50    ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.bn
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.s
  %i.cq = load i64, ptr %i.bn, align 8, !tbaa !42
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  %i.cs = load ptr, ptr %4, align 8, !tbaa !50    ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.az
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cu = load i64, ptr %i.az, align 8, !tbaa !42
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.v

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.n
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i28, %bb.q
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cy = load ptr, ptr %3, align 8, !tbaa !50    ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.bn
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.u
  %i.da = load i64, ptr %i.bn, align 8, !tbaa !42
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39, %bb.t
  %.pn = phi { ptr, i32 } [ %i.cw, %bb.t ], [ %i.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39 ], [ %i.cx, %bb.u ]
  %i.dc = load ptr, ptr %4, align 8, !tbaa !50    ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.az
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %i.de = load i64, ptr %i.az, align 8, !tbaa !42
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %.pn

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z11showPNGInfoR4DataRK7Options(ptr noundef nonnull align 8 dereferenceable(736) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(37) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  tail call void @_ZN4Data11loadInspectEv(ptr noundef nonnull align 8 dereferenceable(736) %0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 733
  %i.d = load i8, ptr %i.c, align 1, !tbaa !71, !range !72, !noundef !73
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.ax

bb.b:                                             ; preds = %bb.a
  tail call void @_Z21loadWithErrorRecoveryR4DataRK7Optionsb(ptr noundef nonnull align 8 dereferenceable(736) %0, ptr noundef nonnull align 4 dereferenceable(37) %1, i1 noundef zeroext false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.g = load i32, ptr %i.f, align 8, !tbaa !74
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.ax

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.i = load i8, ptr %i.h, align 4, !tbaa !78, !range !72, !noundef !73
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.l = getelementptr i8, ptr %i.k, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.m ; 2 uses
  br i1 %i.j, label %call.1, label %call.0

call.0:                                           ; preds = %bb.c
  %6 = tail call noundef nonnull align 8 dereferenceable(216) ptr @_ZSt3decRSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.n), !inline_history !1 ; 0 uses
  br label %.tail

call.1:                                           ; preds = %bb.c
  %7 = tail call noundef nonnull align 8 dereferenceable(216) ptr @_ZSt3hexRSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.n), !inline_history !1 ; 0 uses
  br label %.tail

.tail:                                            ; preds = %call.1, %call.0
  %8 = load i8, ptr %1, align 4, !tbaa !131, !range !72, !noundef !73
  %9 = trunc nuw i8 %8 to i1
  br i1 %9, label %bb.d, label %bb.h

bb.d:                                             ; preds = %.tail
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.162, i64 noundef 7) ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.q = load i64, ptr %i.p, align 8, !tbaa !309
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.q) ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !17
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 240
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !35   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %bb.e, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.z = load i8, ptr %i.y, align 8, !tbaa !41
  %.not.i1.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i1.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 67
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !42
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.x)
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !17
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef signext i8 %i.ae(ptr noundef nonnull align 8 dereferenceable(570) %i.x, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i = phi i8 [ %i.ab, %bb.f ], [ %i.af, %bb.g ]
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i8 noundef signext %.0.i.i.i)
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %.tail
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !309
  %.not171 = icmp eq i64 %i.aj, 0
  br i1 %.not171, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  br label %bb.i

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, %bb.h
  %i.aq = load i8, ptr %1, align 4, !tbaa !131, !range !72, !noundef !73
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.v, label %bb.z

bb.i:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  %.052166 = phi i64 [ 0, %.lr.ph ], [ %i.da, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65 ] ; 4 uses
  %i.as = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.163, i64 noundef 6) ; 0 uses
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !310
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.052166
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !44
  %i.aw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.av) #30
  %i.ax = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.aw) ; 6 uses
  %i.ay = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.164, i64 noundef 9) ; 0 uses
  %i.az = load ptr, ptr %i.al, align 8, !tbaa !311
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.052166
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !44 ; 3 uses
  %.not.i = icmp eq ptr %i.bb, null
  br i1 %.not.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bc = load ptr, ptr %i.ax, align 8, !tbaa !17
  %i.bd = getelementptr i8, ptr %i.bc, i64 -24
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds i8, ptr %i.ax, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !45
  %i.bi = or i32 %i.bh, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.bf, i32 noundef %i.bi)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.k:                                             ; preds = %bb.i
  %i.bj = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bb) #26
  %i.bk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull %i.bb, i64 noundef %i.bj) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.j, %bb.k
  %i.bl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.18, i64 noundef 2) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.bm = load ptr, ptr %i.ak, align 8, !tbaa !310
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %.052166
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !44 ; 4 uses
  store ptr %i.am, ptr %3, align 8, !tbaa !47
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.244) #25
          to label %.noexc unwind label %.loopexit.split-lp139.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bq = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bo) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.bq, ptr %i.b, align 8, !tbaa !81
  %i.br = icmp ugt i64 %i.bq, 15
  br i1 %i.br, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.m
  %i.bs = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc60 unwind label %.loopexit.split-lp139.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc60:                                         ; preds = %.noexc.i
  store ptr %i.bs, ptr %3, align 8, !tbaa !50
  %i.bt = load i64, ptr %i.b, align 8, !tbaa !81
  store i64 %i.bt, ptr %i.am, align 8, !tbaa !42
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc60, %bb.m
  %i.bu = phi ptr [ %i.bs, %.noexc60 ], [ %i.am, %bb.m ] ; 2 uses
  switch i64 %i.bq, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %bb.p
  ]

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.bv = load i8, ptr %i.bo, align 1, !tbaa !42
  store i8 %i.bv, ptr %i.bu, align 1, !tbaa !42
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bu, ptr nonnull align 1 %i.bo, i64 %i.bq, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %._crit_edge.i.i
  %i.bw = load i64, ptr %i.b, align 8, !tbaa !81  ; 2 uses
  store i64 %i.bw, ptr %i.an, align 8, !tbaa !49
  %i.bx = load ptr, ptr %3, align 8, !tbaa !50
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bw
  store i8 0, ptr %i.by, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  invoke void @_Z11shortenTextRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK7Options(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(37) %1)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.bz = load ptr, ptr %2, align 8, !tbaa !50
  %i.ca = load i64, ptr %i.ao, align 8, !tbaa !49
  %i.cb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef %i.bz, i64 noundef %i.ca)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit.split-lp144.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.q
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !17
  %i.cd = getelementptr i8, ptr %i.cc, i64 -24
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds i8, ptr %i.cb, i64 %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 240
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i99 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i99, label %bb.r, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i100

bb.r:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc103 unwind label %.loopexit.split-lp144.loopexit.split-lp.loopexit.split-lp

.noexc103:                                        ; preds = %bb.r
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i100: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 56
  %i.cj = load i8, ptr %i.ci, align 8, !tbaa !41
  %.not.i1.i.i101 = icmp eq i8 %i.cj, 0
  br i1 %.not.i1.i.i101, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i100
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 67
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !42
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.t:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i100
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ch)
          to label %.noexc104 unwind label %.loopexit.split-lp144.loopexit.split-lp.loopexit.split-lp

.noexc104:                                        ; preds = %bb.t
  %i.cm = load ptr, ptr %i.ch, align 8, !tbaa !17
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 48
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = invoke noundef signext i8 %i.co(ptr noundef nonnull align 8 dereferenceable(570) %i.ch, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit.split-lp144.loopexit.split-lp.loopexit.split-lp, !inline_history !3

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc104, %bb.s
  %.0.i.i.i102 = phi i8 [ %i.cl, %bb.s ], [ %i.cp, %.noexc104 ]
  %i.cq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, i8 noundef signext %.0.i.i.i102)
          to label %.noexc106 unwind label %.loopexit.split-lp144.loopexit.split-lp.loopexit.split-lp

.noexc106:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.cr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cq)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %.loopexit.split-lp144.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc106
  %i.cs = load ptr, ptr %2, align 8, !tbaa !50    ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.ap
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.cu = load i64, ptr %i.ap, align 8, !tbaa !42
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSolsEPFRSoS_E.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.cw = load ptr, ptr %3, align 8, !tbaa !50    ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.am
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cy = load i64, ptr %i.am, align 8, !tbaa !42
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.da = add nuw i64 %.052166, 1                 ; 2 uses
  %i.db = load i64, ptr %i.ai, align 8, !tbaa !309
  %i.dc = icmp ult i64 %i.da, %i.db
  br i1 %i.dc, label %bb.i, label %._crit_edge, !llvm.loop !307

.loopexit.split-lp139.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i, %bb.l
  %lpad.loopexit.split-lp217 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

end_hunk_7
begin_hunk_8_@_Z11showPNGInfoR4DataRK7Options:bb.a
  %.not.i.i.i115 = icmp eq ptr %i.hh, null
  br i1 %.not.i.i.i115, label %bb.an, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i116

bb.an:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit84
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc120 unwind label %.loopexit.split-lp134.loopexit.split-lp.loopexit.split-lp

.noexc120:                                        ; preds = %bb.an
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i116: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit84
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 56
  %i.hj = load i8, ptr %i.hi, align 8, !tbaa !41
  %.not.i1.i.i117 = icmp eq i8 %i.hj, 0
  br i1 %.not.i1.i.i117, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i116
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 67
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !42
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i118

bb.ap:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i116
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.hh)
          to label %.noexc121 unwind label %.loopexit.split-lp134.loopexit.split-lp.loopexit.split-lp

.noexc121:                                        ; preds = %bb.ap
  %i.hm = load ptr, ptr %i.hh, align 8, !tbaa !17
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 48
  %i.ho = load ptr, ptr %i.hn, align 8
  %i.hp = invoke noundef signext i8 %i.ho(ptr noundef nonnull align 8 dereferenceable(570) %i.hh, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i118 unwind label %.loopexit.split-lp134.loopexit.split-lp.loopexit.split-lp, !inline_history !3

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i118: ; preds = %.noexc121, %bb.ao
  %.0.i.i.i119 = phi i8 [ %i.hl, %bb.ao ], [ %i.hp, %.noexc121 ]
  %i.hq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.hb, i8 noundef signext %.0.i.i.i119)
          to label %.noexc123 unwind label %.loopexit.split-lp134.loopexit.split-lp.loopexit.split-lp

.noexc123:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i118
  %i.hr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hq)
          to label %_ZNSolsEPFRSoS_E.exit86 unwind label %.loopexit.split-lp134.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit86:                          ; preds = %.noexc123
  %i.hs = load ptr, ptr %4, align 8, !tbaa !50    ; 2 uses
  %i.ht = icmp eq ptr %i.hs, %i.ep
  br i1 %i.ht, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %_ZNSolsEPFRSoS_E.exit86
  %i.hu = load i64, ptr %i.ep, align 8, !tbaa !42
  %i.hv = add i64 %i.hu, 1
  call void @_ZdlPvm(ptr noundef %i.hs, i64 noundef %i.hv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %_ZNSolsEPFRSoS_E.exit86, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87
  %i.hw = load ptr, ptr %5, align 8, !tbaa !50    ; 2 uses
  %i.hx = icmp eq ptr %i.hw, %i.em
  br i1 %i.hx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89
  %i.hy = load i64, ptr %i.em, align 8, !tbaa !42
  %i.hz = add i64 %i.hy, 1
  call void @_ZdlPvm(ptr noundef %i.hw, i64 noundef %i.hz) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.ia = add nuw i64 %.0167, 1                   ; 2 uses
  %i.ib = load i64, ptr %i.eg, align 8, !tbaa !312
  %i.ic = icmp ult i64 %i.ia, %i.ib
  br i1 %i.ic, label %bb.aa, label %._crit_edge170, !llvm.loop !308

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i79, %bb.ah
  %lpad.loopexit.split-lp212 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

bb.aq:                                            ; preds = %bb.al
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

.loopexit.split-lp134.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc123, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i118, %.noexc121, %bb.ap, %bb.am, %bb.an
  %lpad.loopexit.split-lp214 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ie = load ptr, ptr %4, align 8, !tbaa !50    ; 2 uses
  %i.if = icmp eq ptr %i.ie, %i.ep
  br i1 %i.if, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %.loopexit.split-lp134.loopexit.split-lp.loopexit.split-lp
  %i.ig = load i64, ptr %i.ep, align 8, !tbaa !42
  %i.ih = add i64 %i.ig, 1
  call void @_ZdlPvm(ptr noundef %i.ie, i64 noundef %i.ih) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95: ; preds = %.loopexit.split-lp134.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93, %bb.aq
  %.pn = phi { ptr, i32 } [ %i.id, %bb.aq ], [ %lpad.loopexit.split-lp214, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93 ], [ %lpad.loopexit.split-lp214, %.loopexit.split-lp134.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.ii = load ptr, ptr %5, align 8, !tbaa !50    ; 2 uses
  %i.ij = icmp eq ptr %i.ii, %i.em
  br i1 %i.ij, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95
  %i.ik = load i64, ptr %i.em, align 8, !tbaa !42
  %i.il = add i64 %i.ik, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.il) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96 ], [ %lpad.loopexit.split-lp212, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.ay

bb.ar:                                            ; preds = %._crit_edge170
  %i.im = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.166, i64 noundef 14) ; 0 uses
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.io = load i32, ptr %i.in, align 4, !tbaa !317
  %i.ip = zext i32 %i.io to i64
  %i.iq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.ip) ; 3 uses
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !17
  %i.is = getelementptr i8, ptr %i.ir, i64 -24
  %i.it = load i64, ptr %i.is, align 8
  %i.iu = getelementptr inbounds i8, ptr %i.iq, i64 %i.it
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 240
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i126 = icmp eq ptr %i.iw, null
  br i1 %.not.i.i.i126, label %bb.as, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i127

bb.as:                                            ; preds = %bb.ar
  call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i127: ; preds = %bb.ar
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 56
  %i.iy = load i8, ptr %i.ix, align 8, !tbaa !41
  %.not.i1.i.i128 = icmp eq i8 %i.iy, 0
  br i1 %.not.i1.i.i128, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i127
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 67
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !42
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit131

bb.au:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i127
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.iw)
  %i.jb = load ptr, ptr %i.iw, align 8, !tbaa !17
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 48
  %i.jd = load ptr, ptr %i.jc, align 8
  %i.je = call noundef signext i8 %i.jd(ptr noundef nonnull align 8 dereferenceable(570) %i.iw, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit131

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit131: ; preds = %bb.at, %bb.au
  %.0.i.i.i130 = phi i8 [ %i.ja, %bb.at ], [ %i.je, %bb.au ]
  %i.jf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.iq, i8 noundef signext %.0.i.i.i130)
  %i.jg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jf) ; 0 uses
  br label %bb.av

bb.av:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit131, %._crit_edge170
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !317
  %.not53 = icmp eq i32 %i.ji, 0
  br i1 %.not53, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !318
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !319
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.jo = load i32, ptr %i.jn, align 8, !tbaa !320
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !321
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.js = load i32, ptr %i.jr, align 8, !tbaa !322
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 476
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !323
  %i.jv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.167, i32 noundef %i.jk, i32 noundef %i.jm, i32 noundef %i.jo, i32 noundef %i.jq, i32 noundef %i.js, i32 noundef %i.ju) ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw, %bb.b, %bb.a
  ret void

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  %.pn56.pn.pn = phi { ptr, i32 } [ %.pn56.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98 ]
  resume { ptr, i32 } %.pn56.pn.pn
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define void @_Z14showColorStatsR4DataRK7Options(ptr noundef nonnull align 8 dereferenceable(736) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(37) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  tail call void @_ZN4Data11loadInspectEv(ptr noundef nonnull align 8 dereferenceable(736) %0)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 733
  %i.f = load i8, ptr %i.e, align 1, !tbaa !71, !range !72, !noundef !73
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %2, label %_ZN4Data10loadPixelsEv.exit.thread

2:                                                ; preds = %bb.a
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 36
  %4 = load i8, ptr %3, align 4, !tbaa !78, !range !72, !noundef !73
  %5 = trunc nuw i8 %4 to i1
  %6 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %7 = getelementptr i8, ptr %6, i64 -24
  %8 = load i64, ptr %7, align 8
  %9 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %8 ; 2 uses
  br i1 %5, label %call.1, label %call.0

call.0:                                           ; preds = %2
  %10 = tail call noundef nonnull align 8 dereferenceable(216) ptr @_ZSt3decRSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %9), !inline_history !1 ; 0 uses
  br label %bb.b

call.1:                                           ; preds = %2
  %11 = tail call noundef nonnull align 8 dereferenceable(216) ptr @_ZSt3hexRSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %9), !inline_history !1 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %call.1, %call.0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 4 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !44
  %i.n = icmp eq ptr %i.k, %i.m
  br i1 %i.n, label %bb.c, label %._ZN4Data10loadPixelsEv.exit_crit_edge

._ZN4Data10loadPixelsEv.exit_crit_edge:           ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 728
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !74
  br label %_ZN4Data10loadPixelsEv.exit

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !44
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !44
  %i.s = icmp eq ptr %i.p, %i.r
  br i1 %i.s, label %_ZN4Data8loadFileEv.exit.i.i, label %.thread.i

.thread.i:                                        ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 2 uses
  store i32 0, ptr %i.t, align 8, !tbaa !74
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 732
  store i8 1, ptr %i.u, align 4, !tbaa !98
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i32 6, ptr %i.v, align 8, !tbaa !126
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 260
  store i32 16, ptr %i.w, align 4, !tbaa !121
  br label %_ZNSt6vectorIhSaIhEE5clearEv.exit.i.i

_ZN4Data8loadFileEv.exit.i.i:                     ; preds = %bb.c
  %i.x = tail call noundef i32 @_ZN7lodepng9load_fileERSt6vectorIhSaIhEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(736) %0) ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 3 uses
  store i32 %i.x, ptr %i.y, align 8, !tbaa !74
  %.not.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i, label %bb.d, label %_ZN4Data10loadPixelsEv.exit.thread

bb.d:                                             ; preds = %_ZN4Data8loadFileEv.exit.i.i
  %.pre.i = load ptr, ptr %i.h, align 8, !tbaa !100 ; 2 uses
  %.pre1.i = load ptr, ptr %i.l, align 8, !tbaa !99
  %i.z = icmp eq ptr %.pre1.i, %.pre.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 732
  store i8 1, ptr %i.aa, align 4, !tbaa !98
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i32 6, ptr %i.ab, align 8, !tbaa !126
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 260
  store i32 16, ptr %i.ac, align 4, !tbaa !121
  br i1 %i.z, label %_ZNSt6vectorIhSaIhEE5clearEv.exit.i.i, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i:    ; preds = %bb.d
  store ptr %.pre.i, ptr %i.l, align 8, !tbaa !99
  br label %_ZNSt6vectorIhSaIhEE5clearEv.exit.i.i

_ZNSt6vectorIhSaIhEE5clearEv.exit.i.i:            ; preds = %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i, %bb.d, %.thread.i
  %i.ad = phi ptr [ %i.t, %.thread.i ], [ %i.y, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i ], [ %i.y, %bb.d ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.af = tail call noundef i32 @_ZN7lodepng6decodeERSt6vectorIhSaIhEERjS4_RNS_5StateERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 8 dereferenceable(640) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.o) ; 2 uses
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !74
  br label %_ZN4Data10loadPixelsEv.exit

_ZN4Data10loadPixelsEv.exit:                      ; preds = %._ZN4Data10loadPixelsEv.exit_crit_edge, %_ZNSt6vectorIhSaIhEE5clearEv.exit.i.i
  %i.ag = phi i32 [ %.pre, %._ZN4Data10loadPixelsEv.exit_crit_edge ], [ %i.af, %_ZNSt6vectorIhSaIhEE5clearEv.exit.i.i ]
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %bb.e, label %_ZN4Data10loadPixelsEv.exit.thread

bb.e:                                             ; preds = %_ZN4Data10loadPixelsEv.exit
  %i.ah = load i8, ptr %1, align 4, !tbaa !131, !range !72, !noundef !73
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.168, i64 noundef 12) ; 0 uses
  %i.ak = load i32, ptr %i.i, align 8, !tbaa !106
  %i.al = load i32, ptr %i.j, align 4, !tbaa !106
  %i.am = mul i32 %i.al, %i.ak
  %i.an = zext i32 %i.am to i64
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.an) ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !17
  %i.aq = getelementptr i8, ptr %i.ap, i64 -24
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = getelementptr inbounds i8, ptr %i.ao, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 240
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i, label %bb.g, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !41
  %.not.i1.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i1.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 67
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !42
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.au)
  %i.az = load ptr, ptr %i.au, align 8, !tbaa !17
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = tail call noundef signext i8 %i.bb(ptr noundef nonnull align 8 dereferenceable(570) %i.au, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.h, %bb.i
  %.0.i.i.i = phi i8 [ %i.ay, %bb.h ], [ %i.bc, %bb.i ]
  %i.bd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, i8 noundef signext %.0.i.i.i)
  %i.be = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bd) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  %i.bf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.169, i64 noundef 19) ; 0 uses
  %i.bg = load i32, ptr %i.i, align 8, !tbaa !106
  %i.bh = load i32, ptr %i.j, align 4, !tbaa !106
  %i.bi = call noundef i64 @_Z11countColorsRKSt6vectorIhSaIhEEjjPmS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i32 noundef %i.bg, i32 noundef %i.bh, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %i.bj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.bi) ; 0 uses
  %i.bk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.170, i64 noundef 5) ; 0 uses
  %i.bl = load i64, ptr %i.a, align 8, !tbaa !81
  %i.bm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.bl) ; 2 uses
  %i.bn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef nonnull @.str.143, i64 noundef 5) ; 0 uses
  %i.bo = load i64, ptr %i.b, align 8, !tbaa !81
  %i.bp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, i64 noundef %i.bo) ; 2 uses
  %i.bq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull @.str.144, i64 noundef 5) ; 0 uses
  %i.br = load i64, ptr %i.c, align 8, !tbaa !81
  %i.bs = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, i64 noundef %i.br) ; 2 uses
  %i.bt = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef nonnull @.str.171, i64 noundef 5) ; 0 uses
  %i.bu = load i64, ptr %i.d, align 8, !tbaa !81
  %i.bv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, i64 noundef %i.bu)
  %i.bw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.bx = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.by = getelementptr i8, ptr %i.bx, i64 -24
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 240
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i52 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i52, label %bb.k, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i53

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i53: ; preds = %bb.j
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 56
  %i.ce = load i8, ptr %i.cd, align 8, !tbaa !41
  %.not.i1.i.i54 = icmp eq i8 %i.ce, 0
  br i1 %.not.i1.i.i54, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i53
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 67
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !42
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit56

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i53
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cc)
  %i.ch = load ptr, ptr %i.cc, align 8, !tbaa !17
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = tail call noundef signext i8 %i.cj(ptr noundef nonnull align 8 dereferenceable(570) %i.cc, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit56

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit56: ; preds = %bb.l, %bb.m
  %.0.i.i.i55 = phi i8 [ %i.cg, %bb.l ], [ %i.ck, %bb.m ]
  %i.cl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i55)
  %i.cm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cl) ; 0 uses
  %i.cn = load i32, ptr %i.i, align 8, !tbaa !106 ; 4 uses
  %.not49 = icmp eq i32 %i.cn, 0
  br i1 %.not49, label %bb.ab, label %bb.n

bb.n:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit56
  %i.co = load i32, ptr %i.j, align 4, !tbaa !106 ; 3 uses
  %.not50 = icmp eq i32 %i.co, 0
  br i1 %.not50, label %bb.ab, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cp = load ptr, ptr %i.h, align 8, !tbaa !100 ; 8 uses
  %wide.trip.count = zext i32 %i.cn to i64
  br label %.preheader77

.preheader77:                                     ; preds = %bb.o, %bb.p
  %.sroa.13103.1 = phi double [ 9.999990e+05, %bb.o ], [ %.sroa.speculated75.2, %bb.p ]
  %.sroa.097.1 = phi double [ 9.999990e+05, %bb.o ], [ %.sroa.speculated75, %bb.p ]
  %.sroa.0.1 = phi double [ 0.000000e+00, %bb.o ], [ %.sroa.speculated, %bb.p ]
  %.sroa.13.1 = phi double [ 0.000000e+00, %bb.o ], [ %.sroa.speculated.2, %bb.p ]
  %.04880 = phi i32 [ 0, %bb.o ], [ %i.gc, %bb.p ] ; 2 uses
  %i.cq = phi <2 x double> [ <double 9.999990e+05, double 0.000000e+00>, %bb.o ], [ %i.fb, %bb.p ]
  %i.cr = phi <2 x double> [ <double 9.999990e+05, double 0.000000e+00>, %bb.o ], [ %i.gb, %bb.p ]
  %i.cs = phi <4 x double> [ zeroinitializer, %bb.o ], [ %i.fw, %bb.p ]
end_hunk_8
