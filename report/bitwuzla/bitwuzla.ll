Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/bitwuzla?download=true
inline.NumInlined: 7819
inline.NumDeleted: 2172
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZNK8bitwuzla8Bitwuzla16print_unsat_coreERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !333
  %i.ai = icmp eq i32 %i.ah, 20
  br i1 %i.ai, label %bb.g, label %bb.ae

bb.g:                                             ; preds = %.critedge43
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.aj = load ptr, ptr %0, align 8, !tbaa !367
  invoke void @_ZN4bzla14SolvingContext14get_unsat_coreEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.441") align 8 %6, ptr noundef nonnull align 8 dereferenceable(12744) %i.aj)
          to label %bb.h unwind label %bb.q

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4bzla11Smt2Printer13print_formulaERSoRKSt6vectorINS_4NodeESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.ak = load ptr, ptr %6, align 8, !tbaa !384   ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !386 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ak, %i.am
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i ], [ %i.ak, %bb.i ] ; 2 uses
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i) #31
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.an, %i.am
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !387

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !384
  br label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.i
  %i.ao = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.ak, %bb.i ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !388
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #30
  br label %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit

_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit:       ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.ae

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.c, %bb.b
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN8bitwuzla23BitwuzlaExceptionStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %3)
          to label %bb.l unwind label %bb.ag

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.af

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49, %bb.d, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread59
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN8bitwuzla23BitwuzlaExceptionStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %4)
          to label %bb.n unwind label %bb.ag

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.af

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit54, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53, %bb.f, %bb.e
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN8bitwuzla23BitwuzlaExceptionStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %5)
          to label %bb.p unwind label %bb.ag

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.af

bb.q:                                             ; preds = %bb.g
  %i.ax = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4bzla5ErrorE
          catch ptr @_ZTIN4bzla11UnsupportedE
  br label %bb.s

bb.r:                                             ; preds = %bb.h
  %i.ay = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4bzla5ErrorE
          catch ptr @_ZTIN4bzla11UnsupportedE
  call void @_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #31
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.r ], [ %i.ax, %bb.q ] ; 3 uses
  %.025 = extractvalue { ptr, i32 } %.pn, 1       ; 2 uses
  %.026 = extractvalue { ptr, i32 } %.pn, 0       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.az = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4bzla5ErrorE) #31
  %i.ba = icmp eq i32 %.025, %i.az
  br i1 %i.ba, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bb = call ptr @__cxa_begin_catch(ptr %.026) #31
  %i.bc = call ptr @__cxa_allocate_exception(i64 40) #31 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  invoke void @_ZN8bitwuzla9ExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %i.bd)
          to label %bb.u unwind label %bb.ab

bb.u:                                             ; preds = %bb.t
  invoke void @__cxa_throw(ptr nonnull %i.bc, ptr nonnull @_ZTIN8bitwuzla9ExceptionE, ptr nonnull @_ZN8bitwuzla9ExceptionD2Ev) #32
          to label %bb.ah unwind label %bb.ac

bb.v:                                             ; preds = %bb.s
  %i.be = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4bzla11UnsupportedE) #31
  %i.bf = icmp eq i32 %.025, %i.be
  br i1 %i.bf, label %bb.w, label %bb.af

bb.w:                                             ; preds = %bb.v
  %i.bg = call ptr @__cxa_begin_catch(ptr %.026) #31
  %i.bh = call ptr @__cxa_allocate_exception(i64 40) #31 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  invoke void @_ZN8bitwuzla9ExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.bh, ptr noundef nonnull align 8 dereferenceable(32) %i.bi)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  invoke void @__cxa_throw(ptr nonnull %i.bh, ptr nonnull @_ZTIN8bitwuzla9ExceptionE, ptr nonnull @_ZN8bitwuzla9ExceptionD2Ev) #32
          to label %bb.ah unwind label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bh) #31
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn33 = phi { ptr, i32 } [ %i.bk, %bb.z ], [ %i.bj, %bb.y ]
  invoke void @__cxa_end_catch()
          to label %bb.af unwind label %bb.ag

bb.ab:                                            ; preds = %bb.t
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bc) #31
  br label %bb.ad

bb.ac:                                            ; preds = %bb.u
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pn35 = phi { ptr, i32 } [ %i.bm, %bb.ac ], [ %i.bl, %bb.ab ]
  invoke void @__cxa_end_catch()
          to label %bb.af unwind label %bb.ag

bb.ae:                                            ; preds = %.critedge43, %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit
  ret void

bb.af:                                            ; preds = %bb.ad, %bb.aa, %bb.v, %bb.p, %bb.n, %bb.l
  %.merged = phi { ptr, i32 } [ %.pn33, %bb.aa ], [ %i.au, %bb.l ], [ %.pn, %bb.v ], [ %i.aw, %bb.p ], [ %i.av, %bb.n ], [ %.pn35, %bb.ad ]
  resume { ptr, i32 } %.merged

bb.ag:                                            ; preds = %bb.ad, %bb.aa, %bb.o, %bb.m, %bb.k
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #33
  unreachable

bb.ah:                                            ; preds = %bb.x, %bb.u
  unreachable
}

declare void @_ZN4bzla11Smt2Printer13print_formulaERSoRKSt6vectorINS_4NodeESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4bzla3Env10statisticsEv(ptr noundef nonnull align 8 dereferenceable(4048)) local_unnamed_addr #6

declare void @_ZNK4bzla4util10Statistics3getB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::map.849") align 8, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN8bitwuzla8Bitwuzla8term_mgrEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !476, !nonnull !233, !align !477
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN8bitwuzla11TermManagerC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(216) ptr @_Znwm(i64 noundef 216) #34 ; 21 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) %i.a, i8 0, i64 216, i1 false)
  store i64 1, ptr %i.a, align 16, !tbaa !478
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %i.d, ptr %i.c, align 8, !tbaa !487
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 1, ptr %i.e, align 16, !tbaa !488
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.g, align 8, !tbaa !357
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i64 1, ptr %i.i, align 16, !tbaa !489
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store ptr %i.k, ptr %i.j, align 16, !tbaa !500
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i64 1, ptr %i.l, align 8, !tbaa !501
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.n, align 16, !tbaa !357
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  invoke void @_ZN4bzla4node15NodeUniqueTableC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %bb.b unwind label %.body

.body:                                            ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt13unordered_setIPN4bzla4node8NodeDataESt4hashIS3_ESt8equal_toIS3_ESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.j) #31
  tail call void @_ZN4bzla4type11TypeManagerD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(216) %i.a) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 216) #30
  resume { ptr, i32 } %i.q

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !365
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN8bitwuzla11TermManagerD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !365    ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4bzla11NodeManagerESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4bzla11NodeManagerEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4bzla11NodeManagerEEclEPS1_.exit.i: ; preds = %bb.a
  tail call void @_ZN4bzla11NodeManagerD1Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %i.a) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 216) #30
  br label %_ZNSt10unique_ptrIN4bzla11NodeManagerESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4bzla11NodeManagerESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4bzla11NodeManagerEEclEPS1_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8bitwuzla11TermManager13mk_array_sortERKNS_4SortES3_(ptr dead_on_unwind noalias writable sret(%"class.bitwuzla::Sort") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.bitwuzla::BitwuzlaExceptionStream", align 8 ; 7 uses
  %5 = alloca %"class.bitwuzla::BitwuzlaExceptionStream", align 8 ; 7 uses
  %6 = alloca %"class.bitwuzla::BitwuzlaExceptionStream", align 8 ; 7 uses
  %7 = alloca %"class.bitwuzla::BitwuzlaExceptionStream", align 8 ; 7 uses
  %8 = alloca %"class.bitwuzla::BitwuzlaExceptionStream", align 8 ; 7 uses
  %9 = alloca %"class.bzla::Type", align 8        ; 7 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !311
  %.not80 = icmp eq ptr %i.a, null
  br i1 %.not80, label %bb.b, label %.critedge42, !prof !201

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @_ZN8bitwuzla23BitwuzlaExceptionStreamC1Ev(ptr noundef nonnull align 8 dereferenceable(392) %4)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN8bitwuzla23BitwuzlaExceptionStream7ostreamEv(ptr noundef nonnull align 8 dereferenceable(392) %4)
          to label %bb.c unwind label %bb.m       ; 4 uses

bb.c:                                             ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.13, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8bitwuzla11TermManager13mk_array_sortERKNS_4SortES3_, i64 noundef 69)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.14, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit56 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit56: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.109, i64 noundef 22)
          to label %.critedge unwind label %bb.m  ; 0 uses

.critedge:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit56
  call void @_ZN8bitwuzla23BitwuzlaExceptionStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %.critedge42

.critedge42:                                      ; preds = %bb.a, %.critedge
  %i.g = load ptr, ptr %3, align 8, !tbaa !311
  %.not81 = icmp eq ptr %i.g, null
  br i1 %.not81, label %bb.d, label %.critedge45, !prof !201

bb.d:                                             ; preds = %.critedge42
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @_ZN8bitwuzla23BitwuzlaExceptionStreamC1Ev(ptr noundef nonnull align 8 dereferenceable(392) %5)
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN8bitwuzla23BitwuzlaExceptionStream7ostreamEv(ptr noundef nonnull align 8 dereferenceable(392) %5)
          to label %bb.e unwind label %bb.o       ; 4 uses

bb.e:                                             ; preds = %bb.d
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.13, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58 unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58: ; preds = %bb.e
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8bitwuzla11TermManager13mk_array_sortERKNS_4SortES3_, i64 noundef 69)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59 unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.14, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60 unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.109, i64 noundef 22)
          to label %.critedge44 unwind label %bb.o ; 0 uses

.critedge44:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  call void @_ZN8bitwuzla23BitwuzlaExceptionStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %.critedge45

.critedge45:                                      ; preds = %.critedge42, %.critedge44
  %i.m = load ptr, ptr %2, align 8, !tbaa !311    ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %.critedge48, label %_ZNK8bitwuzla4Sort8is_arrayEv.exit

_ZNK8bitwuzla4Sort8is_arrayEv.exit:               ; preds = %.critedge45
  %i.n = call noundef zeroext i1 @_ZNK4bzla4Type8is_arrayEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  br i1 %i.n, label %bb.f, label %.critedge48, !prof !502

bb.f:                                             ; preds = %_ZNK8bitwuzla4Sort8is_arrayEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @_ZN8bitwuzla23BitwuzlaExceptionStreamC1Ev(ptr noundef nonnull align 8 dereferenceable(392) %6)
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN8bitwuzla23BitwuzlaExceptionStream7ostreamEv(ptr noundef nonnull align 8 dereferenceable(392) %6)
          to label %bb.g unwind label %bb.q       ; 4 uses

bb.g:                                             ; preds = %bb.f
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.13, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62 unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62: ; preds = %bb.g
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8bitwuzla11TermManager13mk_array_sortERKNS_4SortES3_, i64 noundef 69)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63 unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.14, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64 unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.110, i64 noundef 48)
          to label %.critedge47 unwind label %bb.q ; 0 uses

.critedge47:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64
  call void @_ZN8bitwuzla23BitwuzlaExceptionStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %.critedge48

.critedge48:                                      ; preds = %.critedge45, %_ZNK8bitwuzla4Sort8is_arrayEv.exit, %.critedge47
  %i.t = load ptr, ptr %1, align 8, !tbaa !365
  %i.u = call noundef ptr @_ZN4bzla11NodeManager2tmEv(ptr noundef nonnull align 8 dereferenceable(216) %i.t)
  %i.v = load ptr, ptr %2, align 8, !tbaa !311
  %i.w = call noundef ptr @_ZN4bzla4Type2tmEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %.not = icmp eq ptr %i.u, %i.w
  br i1 %.not, label %.critedge51, label %bb.h, !prof !197

bb.h:                                             ; preds = %.critedge48
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @_ZN8bitwuzla23BitwuzlaExceptionStreamC1Ev(ptr noundef nonnull align 8 dereferenceable(392) %7)
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN8bitwuzla23BitwuzlaExceptionStream7ostreamEv(ptr noundef nonnull align 8 dereferenceable(392) %7)
          to label %bb.i unwind label %bb.s       ; 5 uses

bb.i:                                             ; preds = %bb.h
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @.str.13, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66: ; preds = %bb.i
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8bitwuzla11TermManager13mk_array_sortERKNS_4SortES3_, i64 noundef 69)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit67 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit67: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @.str.14, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit67
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @.str.79, i64 noundef 29)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @.str.111, i64 noundef 10)
          to label %.critedge50 unwind label %bb.s ; 0 uses

.critedge50:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69
  call void @_ZN8bitwuzla23BitwuzlaExceptionStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %.critedge51

.critedge51:                                      ; preds = %.critedge48, %.critedge50
  %i.ad = load ptr, ptr %1, align 8, !tbaa !365
  %i.ae = call noundef ptr @_ZN4bzla11NodeManager2tmEv(ptr noundef nonnull align 8 dereferenceable(216) %i.ad)
  %i.af = load ptr, ptr %3, align 8, !tbaa !311
  %i.ag = call noundef ptr @_ZN4bzla4Type2tmEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
  %.not40 = icmp eq ptr %i.ae, %i.ag
  br i1 %.not40, label %.critedge54, label %bb.j, !prof !197

bb.j:                                             ; preds = %.critedge51
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @_ZN8bitwuzla23BitwuzlaExceptionStreamC1Ev(ptr noundef nonnull align 8 dereferenceable(392) %8)
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN8bitwuzla23BitwuzlaExceptionStream7ostreamEv(ptr noundef nonnull align 8 dereferenceable(392) %8)
          to label %bb.k unwind label %bb.u       ; 5 uses
end_hunk_0
