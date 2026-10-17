Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/csmith/original/Variable?download=true
inline.NumInlined: 1390
inline.NumDeleted: 503
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK8Variable9to_stringB5cxx11Ev:bb.a
  %i.is = load <2 x i64>, ptr %i.ho, align 8, !tbaa !35
  store <2 x i64> %i.is, ptr %i.b, align 8, !tbaa !35
  %.not.i80 = icmp eq ptr %i.ig, null
  br i1 %.not.i80, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ig, ptr %7, align 8, !tbaa !41
  store i64 %i.ir, ptr %i.hn, align 8, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.bm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.hn, ptr %7, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.bl, %bb.bm
  %i.it = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ig, %bb.bl ], [ %i.hn, %bb.bm ], [ %i.ii, %bb.bh ]
  store i64 0, ptr %i.ho, align 8, !tbaa !34
  store i8 0, ptr %i.it, align 1, !tbaa !35
  %i.iu = load ptr, ptr %7, align 8, !tbaa !41    ; 2 uses
  %i.iv = icmp eq ptr %i.iu, %i.hn
  br i1 %i.iv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.iw = load i64, ptr %i.hn, align 8, !tbaa !35
  %i.ix = add i64 %i.iw, 1
  call void @_ZdlPvm(ptr noundef %i.iu, i64 noundef %i.ix) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.iy = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.iy, ptr %6, align 8, !tbaa !96
  %i.iz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ja = getelementptr i8, ptr %i.iy, i64 -24
  %i.jb = load i64, ptr %i.ja, align 8
  %i.jc = getelementptr inbounds i8, ptr %6, i64 %i.jb
  store ptr %i.iz, ptr %i.jc, align 8, !tbaa !96
  %i.jd = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.jd, align 8, !tbaa !96
  %i.je = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !41 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.jh = icmp eq ptr %i.jf, %i.jg
  br i1 %i.jh, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
  %i.ji = load i64, ptr %i.jg, align 8, !tbaa !35
  %i.jj = add i64 %i.ji, 1
  call void @_ZdlPvm(ptr noundef %i.jf, i64 noundef %i.jj) #23
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i84
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.jd, align 8, !tbaa !96
  %i.jk = getelementptr inbounds nuw i8, ptr %6, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.jk) #25
  %i.jl = getelementptr inbounds nuw i8, ptr %6, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.jl) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %.loopexit97

bb.bn:                                            ; preds = %bb.bb
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bo:                                            ; preds = %bb.bc
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.body:                                            ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.bp

bb.bp:                                            ; preds = %.body, %bb.bo
  %.pn29 = phi { ptr, i32 } [ %i.ia, %.body ], [ %i.jn, %bb.bo ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6) #25
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bn
  %.pn29.pn = phi { ptr, i32 } [ %.pn29, %bb.bp ], [ %i.jm, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.br

.loopexit97:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel, %.preheader, %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  ret void

bb.br:                                            ; preds = %.loopexit98, %.loopexit.split-lp99, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, %bb.bq, %.loopexit
  %.pn35.pn.pn.pn = phi { ptr, i32 } [ %.pn35.pn.pn, %.loopexit ], [ %.pn29.pn, %bb.bq ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77 ], [ %lpad.loopexit133, %.loopexit98 ], [ %lpad.loopexit.split-lp101, %.loopexit.split-lp99 ]
  %i.jo = load ptr, ptr %0, align 8, !tbaa !41    ; 2 uses
  %i.jp = icmp eq ptr %i.jo, %i.a
  br i1 %i.jp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %bb.br
  %i.jq = load i64, ptr %i.a, align 8, !tbaa !35
  %i.jr = add i64 %i.jq, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.jr) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86
  resume { ptr, i32 } %.pn35.pn.pn.pn
}

declare noundef i32 @_Z20expand_within_rangesRKSt6vectorIjSaIjEERS_IS_IiSaIiEESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare noundef ptr @_ZNK13ArrayVariable7itemizeERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(288), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !145    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !144  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !146 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !147
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #23
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i:    ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !9

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !145
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !148
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #23
  br label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK8Variable20output_runtime_valueERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ib(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %7 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65
  call void @_ZNK4Type16printf_directiveB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(136) %i.b)
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i, %bb.a
  %.tr.i = phi ptr [ %0, %bb.a ], [ %i.d, %tailrecurse.i ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.tr.i, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !89   ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.b, label %tailrecurse.i

bb.b:                                             ; preds = %tailrecurse.i
  %i.e = getelementptr inbounds nuw i8, ptr %.tr.i, i64 96
  %i.f = load i8, ptr %i.e, align 8, !tbaa !97, !range !98, !noundef !99
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZNK8Variable10is_virtualEv.exit, label %_ZNK8Variable10is_virtualEv.exit.thread

_ZNK8Variable10is_virtualEv.exit:                 ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.tr.i, i64 200
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !108
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %_ZNK8Variable10is_virtualEv.exit.thread

bb.c:                                             ; preds = %_ZNK8Variable10is_virtualEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !138, !noalias !287 ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !139, !noalias !287 ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %.not.i.i.i.i.i = icmp ne ptr %i.m, %i.n
  %i.r = icmp ugt i64 %i.q, 9223372036854775804
  %or.cond = and i1 %.not.i.i.i.i.i, %i.r
  br i1 %or.cond, label %.noexc.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, !prof !288

.noexc.i.i.i:                                     ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.d
  %.in = lshr exact i64 %i.q, 2
  %i.s = trunc i64 %.in to i32
  %.030154 = add i32 %i.s, -1                     ; 2 uses
  %i.t = icmp sgt i32 %.030154, -1
  br i1 %i.t, label %.lr.ph156, label %._crit_edge

.lr.ph156:                                        ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 10 uses
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.af = zext nneg i32 %.030154 to i64
  br label %bb.h

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.ag = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ag, ptr %7, align 8, !tbaa !96
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ai = getelementptr i8, ptr %i.ag, i64 -24
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds i8, ptr %7, i64 %i.aj
  store ptr %i.ah, ptr %i.ak, align 8, !tbaa !96
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.al, align 8, !tbaa !96
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !41 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %._crit_edge
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !35
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #23
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %._crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.al, align 8, !tbaa !96
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.as) #25
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.at) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %_ZNK8Variable10is_virtualEv.exit.thread

bb.e:                                             ; preds = %.noexc131, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc129, %bb.af, %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit108, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit106, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit104, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102, %bb.ak, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit88, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit86, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit84, %bb.ag, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit79, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77, %bb.ac, %_ZNSolsEPFRSoS_E.exit, %_ZNK8Variable10is_virtualEv.exit.thread
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.f:                                             ; preds = %bb.c
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.g:                                             ; preds = %.noexc.i.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.h:                                             ; preds = %.lr.ph156, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %indvars.iv = phi i64 [ %i.af, %.lr.ph156 ], [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ] ; 3 uses
  %i.ax = load ptr, ptr %i.l, align 8, !tbaa !138, !noalias !289 ; 2 uses
  %i.ay = load ptr, ptr %i.k, align 8, !tbaa !139, !noalias !289 ; 4 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 6 uses
  %.not.i.i.i.i.i51 = icmp ne ptr %i.ax, %i.ay
  call void @llvm.assume(i1 %.not.i.i.i.i.i51)
  %i.bc = icmp ugt i64 %i.bb, 9223372036854775804
  br i1 %i.bc, label %.noexc.i.i.i52, label %bb.i, !prof !93

.noexc.i.i.i52:                                   ; preds = %bb.h
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc54 unwind label %.loopexit.split-lp

.noexc54:                                         ; preds = %.noexc.i.i.i52
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.bd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #24
          to label %.noexc55 unwind label %.loopexit ; 4 uses

.noexc55:                                         ; preds = %bb.i
  %i.be = icmp samesign ugt i64 %i.bb, 4
  br i1 %i.be, label %bb.j, label %bb.k, !prof !141

bb.j:                                             ; preds = %.noexc55
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bd, ptr align 4 %i.ay, i64 %i.bb, i1 false), !noalias !289
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit58

bb.k:                                             ; preds = %.noexc55
  %i.bf = icmp eq i64 %i.bb, 4
  br i1 %i.bf, label %bb.l, label %_ZNSt6vectorIjSaIjEED2Ev.exit58

bb.l:                                             ; preds = %bb.k
  %i.bg = load i32, ptr %i.ay, align 4, !tbaa !117, !noalias !289
  store i32 %i.bg, ptr %i.bd, align 4, !tbaa !117, !noalias !289
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit58

_ZNSt6vectorIjSaIjEED2Ev.exit58:                  ; preds = %bb.l, %bb.k, %bb.j
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !117 ; 3 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bb) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store ptr %i.u, ptr %8, align 8, !tbaa !31
  store i64 0, ptr %i.v, align 8, !tbaa !34
  store i8 0, ptr %i.u, align 8, !tbaa !35
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE(ptr noundef nonnull align 8 dereferenceable(104) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit unwind label %bb.m

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit58
  %i.bj = load ptr, ptr %8, align 8, !tbaa !41    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.u
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit
  %i.bl = load i64, ptr %i.u, align 8, !tbaa !35
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str.38, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bo = icmp sgt i32 %i.bi, 0
  br i1 %i.bo, label %.lr.ph, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge

.lr.ph:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader
  %i.bp = add nsw i32 %i.bi, -1
  br label %bb.o

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str.39, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65 unwind label %bb.n ; 0 uses

.loopexit:                                        ; preds = %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i52
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.m:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit58
  %i.br = landingpad { ptr, i32 }
          cleanup
  %i.bs = load ptr, ptr %8, align 8, !tbaa !41    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.u
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %bb.m
  %i.bu = load i64, ptr %i.u, align 8, !tbaa !35
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.z

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.o:                                             ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71
  %.0153 = phi i32 [ 0, %.lr.ph ], [ %i.cd, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71 ] ; 2 uses
  %i.bx = load ptr, ptr %6, align 8, !tbaa !41
  %i.by = load i64, ptr %i.x, align 8, !tbaa !34
  %i.bz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %i.bx, i64 noundef %i.by)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.q ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.o
  %i.ca = icmp slt i32 %.0153, %i.bp
  br i1 %i.ca, label %bb.p, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71

bb.p:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.cb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str.25, i64 noundef 2)
end_hunk_0
