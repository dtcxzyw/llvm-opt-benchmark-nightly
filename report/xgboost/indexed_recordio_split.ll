Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/indexed_recordio_split?download=true
inline.NumInlined: 909
inline.NumDeleted: 401
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4dmlc2io23IndexedRecordIOSplitter14ResetPartitionEjj:bb.a
  %.1.i.i30 = select i1 %i.cc, i64 %i.bz, i64 %i.cf ; 2 uses
  %i.cg = icmp sgt i64 %.1.i.i30, 0
  br i1 %i.cg, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i24, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit31.loopexit, !llvm.loop !1

_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit31.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i24
  %.pre41 = ptrtoint ptr %.sroa.011.1.i.i29 to i64
  br label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit31

_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit31: ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit31.loopexit, %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit
  %.pre-phi = phi i64 [ %.pre41, %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit31.loopexit ], [ %i.bf, %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit ]
  %i.ch = phi i64 [ %i.bv, %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit31.loopexit ], [ -1, %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit ]
  %i.ci = phi ptr [ %i.bw, %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit31.loopexit ], [ %i.br, %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit ]
  %i.cj = sub i64 %.pre-phi, %i.bf
  %i.ck = ashr exact i64 %i.cj, 3
  %i.cl = add nsw i64 %i.ck, -1
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !124
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !58 ; 3 uses
  %.not21 = icmp eq ptr %i.co, null
  br i1 %.not21, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit31
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !60
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8
  tail call void %i.cr(ptr noundef nonnull align 8 dereferenceable(8) %i.co) #9
  store ptr null, ptr %i.cn, align 8, !tbaa !58
  %.pre = load i64, ptr %i.ci, align 8, !tbaa !57
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit31
  %i.cs = phi i64 [ %.pre, %bb.h ], [ %i.ch, %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmET_S7_S7_RKT0_.exit31 ]
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !61 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !62
  %i.cx = getelementptr inbounds nuw [112 x i8], ptr %i.cw, i64 %i.cs
  %i.cy = load ptr, ptr %i.cu, align 8, !tbaa !60
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = tail call noundef ptr %i.da(ptr noundef nonnull align 8 dereferenceable(8) %i.cu, ptr noundef nonnull align 8 dereferenceable(96) %i.cx, i1 noundef zeroext false)
  store ptr %i.db, ptr %i.cn, align 8, !tbaa !58
  %i.dc = load i64, ptr %i.t, align 8, !tbaa !50
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 %i.dc, ptr %i.dd, align 8, !tbaa !63
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 0, ptr %i.de, align 8, !tbaa !64
  %i.df = load ptr, ptr %0, align 8, !tbaa !60
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8
  tail call void %i.dh(ptr noundef nonnull align 8 dereferenceable(5304) %0)
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN4dmlc2io23IndexedRecordIOSplitter13ReadIndexFileEPNS0_10FileSystemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(5304) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.20", align 8    ; 11 uses
  %4 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %6 = alloca %"class.dmlc::istream", align 8     ; 14 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @_ZN4dmlc2io14InputSplitBase13ConvertToURIsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.20") align 8 %3, ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !67
  %i.g = load ptr, ptr %3, align 8, !tbaa !68
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = sdiv exact i64 %i.j, 96
  store i64 %i.k, ptr %i.a, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i64 1, ptr %i.b, align 8, !tbaa !21
  %i.l = icmp eq i64 %i.j, 96
  br i1 %i.l, label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, label %bb.b

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit unwind label %bb.d

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.b
  %.pr = load ptr, ptr %4, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.m = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc29 unwind label %bb.e

.noexc29:                                         ; preds = %bb.c
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.m, ptr noundef nonnull @.str, i32 noundef 48)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.e

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc29
  %i.n = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.f ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.2, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.q = load ptr, ptr %4, align 8, !tbaa !70     ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !71
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !72
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef %i.r, i64 noundef %i.t)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.f ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull @.str.4, i64 noundef 61)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.h unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.k

bb.e:                                             ; preds = %.noexc29, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.g unwind label %bb.am

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.y, %bb.e ], [ %i.z, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #9
  br label %bb.k

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  %.pr106 = load ptr, ptr %4, align 8, !tbaa !70  ; 4 uses
  %.not.i = icmp eq ptr %.pr106, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr %.pr106, align 8, !tbaa !71 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pr106, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !73
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr106, i64 noundef 32) #27
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.h, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %i.af = load ptr, ptr %i.e, align 8, !tbaa !67  ; 2 uses
  %i.ag = load ptr, ptr %3, align 8, !tbaa !68    ; 3 uses
  %.not188 = icmp eq ptr %i.af, %i.ag
  br i1 %.not188, label %._crit_edge186, label %.lr.ph185

.lr.ph185:                                        ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 120 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.l

._crit_edge186:                                   ; preds = %_ZNSt10unique_ptrIN4dmlc6StreamESt14default_deleteIS1_EED2Ev.exit, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.lcssa165 = phi ptr [ %i.af, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit ], [ %i.ft, %_ZNSt10unique_ptrIN4dmlc6StreamESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %.lcssa155 = phi ptr [ %i.ag, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit ], [ %i.fu, %_ZNSt10unique_ptrIN4dmlc6StreamESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %.not4.i.i.i = icmp eq ptr %.lcssa155, %.lcssa165
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4dmlc2io3URIES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge186, %_ZSt8_DestroyIN4dmlc2io3URIEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bi, %_ZSt8_DestroyIN4dmlc2io3URIEEvPT_.exit.i.i.i ], [ %.lcssa155, %._crit_edge186 ] ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !71 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 80 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.av = load i64, ptr %i.at, align 8, !tbaa !73
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !71 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !73
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.bd = load ptr, ptr %.05.i.i.i, align 8, !tbaa !71 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZSt8_DestroyIN4dmlc2io3URIEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !73
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #27
  br label %_ZSt8_DestroyIN4dmlc2io3URIEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4dmlc2io3URIEEvPT_.exit.i.i.i:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bi, %.lcssa165
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4dmlc2io3URIES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPN4dmlc2io3URIES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4dmlc2io3URIEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !68
  br label %_ZSt8_DestroyIPN4dmlc2io3URIES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4dmlc2io3URIES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4dmlc2io3URIES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %._crit_edge186
  %7 = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4dmlc2io3URIES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %.lcssa155, %._crit_edge186 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %7, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4dmlc2io3URIESaIS2_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPN4dmlc2io3URIES2_EvT_S4_RSaIT0_E.exit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !74
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %7 to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %7, i64 noundef %i.bn) #27
  br label %_ZNSt6vectorIN4dmlc2io3URIESaIS2_EED2Ev.exit

_ZNSt6vectorIN4dmlc2io3URIESaIS2_EED2Ev.exit:     ; preds = %_ZSt8_DestroyIPN4dmlc2io3URIES2_EvT_S4_RSaIT0_E.exit.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret void

bb.k:                                             ; preds = %bb.g, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.g ], [ %i.x, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %_ZNSt10unique_ptrIN4dmlc6StreamESt14default_deleteIS1_EED2Ev.exit78

bb.l:                                             ; preds = %.lr.ph185, %_ZNSt10unique_ptrIN4dmlc6StreamESt14default_deleteIS1_EED2Ev.exit
  %i.bo = phi ptr [ %i.ag, %.lr.ph185 ], [ %i.fu, %_ZNSt10unique_ptrIN4dmlc6StreamESt14default_deleteIS1_EED2Ev.exit ]
  %.021184 = phi i64 [ 0, %.lr.ph185 ], [ %i.fs, %_ZNSt10unique_ptrIN4dmlc6StreamESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [96 x i8], ptr %i.bo, i64 %.021184
  %i.bq = load ptr, ptr %1, align 8, !tbaa !60
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = invoke noundef ptr %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(96) %i.bp, ptr noundef nonnull @.str.5, i1 noundef zeroext true)
          to label %bb.m unwind label %bb.w       ; 7 uses

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  invoke void @_ZN4dmlc7istreamC1EPNS_6StreamEm(ptr noundef nonnull align 8 dereferenceable(120) %6, ptr noundef %i.bt, i64 noundef 1024)
          to label %bb.n unwind label %bb.x

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit, %bb.n
  %.sroa.088.0 = phi ptr [ null, %bb.n ], [ %.sroa.088.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 16 uses
  %.sroa.13.0 = phi ptr [ null, %bb.n ], [ %.sroa.13.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 11 uses
  %.sroa.20.0 = phi ptr [ null, %bb.n ], [ %.sroa.20.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 9 uses
  %i.bu = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractImEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZNSirsERm.exit unwind label %.loopexit

_ZNSirsERm.exit:                                  ; preds = %bb.o
  %i.bv = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractImEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.p unwind label %.loopexit  ; 2 uses

bb.p:                                             ; preds = %_ZNSirsERm.exit
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !60
  %i.bx = getelementptr i8, ptr %i.bw, i64 -24
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds i8, ptr %i.bv, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !83
  %i.cc = and i32 %i.cb, 5
  %.not.i43 = icmp eq i32 %i.cc, 0
  br i1 %.not.i43, label %bb.q, label %bb.y

bb.q:                                             ; preds = %bb.p
  %.not.i44 = icmp eq ptr %.sroa.13.0, %.sroa.20.0
  br i1 %.not.i44, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cd = load i64, ptr %i.d, align 8, !tbaa !21
  store i64 %i.cd, ptr %.sroa.13.0, align 8, !tbaa !21
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.s:                                             ; preds = %bb.q
  %i.ce = ptrtoint ptr %.sroa.13.0 to i64
  %i.cf = ptrtoint ptr %.sroa.088.0 to i64
  %i.cg = sub i64 %i.ce, %i.cf                    ; 6 uses
  %i.ch = icmp eq i64 %i.cg, 9223372036854775800
  br i1 %i.ch, label %bb.t, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #25
          to label %.noexc46 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc46:                                         ; preds = %bb.t
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.s
  %i.ci = ashr exact i64 %i.cg, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ci, i64 1)
  %i.cj = add nsw i64 %.sroa.speculated.i.i.i, %i.ci ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %i.ci
  %i.cl = call i64 @llvm.umin.i64(i64 %i.cj, i64 1152921504606846975)
  %i.cm = select i1 %i.ck, i64 1152921504606846975, i64 %i.cl ; 3 uses
  %.not.i.i.i45 = icmp ne i64 %i.cm, 0
  call void @llvm.assume(i1 %.not.i.i.i45)
  %i.cn = shl nuw nsw i64 %i.cm, 3
  %i.co = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #26
          to label %.noexc47 unwind label %.loopexit ; 4 uses

.noexc47:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 %i.cg ; 2 uses
  %i.cq = load i64, ptr %i.d, align 8, !tbaa !21
  store i64 %i.cq, ptr %i.cp, align 8, !tbaa !21
  %i.cr = icmp sgt i64 %i.cg, 0
  br i1 %i.cr, label %bb.u, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.u:                                             ; preds = %.noexc47
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.co, ptr align 8 %.sroa.088.0, i64 %i.cg, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.u, %.noexc47
  %.not.i17.i.i = icmp eq ptr %.sroa.088.0, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.088.0, i64 noundef %i.cg) #27
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.v, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cm
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %bb.r, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i
  %.sroa.088.1 = phi ptr [ %i.co, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.088.0, %bb.r ]
  %.pn113 = phi ptr [ %i.cp, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.13.0, %bb.r ]
  %.sroa.20.1 = phi ptr [ %i.cs, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.20.0, %bb.r ]
  %.sroa.13.1 = getelementptr inbounds nuw i8, ptr %.pn113, i64 8
  br label %bb.o

bb.w:                                             ; preds = %bb.l
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4dmlc6StreamESt14default_deleteIS1_EED2Ev.exit78

bb.x:                                             ; preds = %bb.m
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit:                                        ; preds = %bb.o, %_ZNSirsERm.exit, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %.sroa.20.0.lcssa = phi ptr [ %.sroa.20.0, %bb.o ], [ %.sroa.20.0, %_ZNSirsERm.exit ], [ %.sroa.13.0, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i ]
  %lpad.loopexit114 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.noexc48, %bb.z
  %lpad.loopexit117 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.t
  %lpad.loopexit.split-lp118 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.y:                                             ; preds = %bb.p
  %.not.i.i = icmp eq ptr %.sroa.088.0, %.sroa.13.0
  %.pre225 = ptrtoint ptr %.sroa.13.0 to i64
  %.pre227 = ptrtoint ptr %.sroa.088.0 to i64     ; 3 uses
  %.pre229 = sub i64 %.pre225, %.pre227
  %.pre231 = ashr exact i64 %.pre229, 3           ; 2 uses
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cv = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.pre231, i1 true)
  %i.cw = shl nuw nsw i64 %i.cv, 1
  %i.cx = xor i64 %i.cw, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %.sroa.088.0, ptr %.sroa.13.0, i64 noundef %i.cx)
          to label %.noexc48 unwind label %.loopexit.split-lp.loopexit

.noexc48:                                         ; preds = %bb.z
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %.sroa.088.0, ptr %.sroa.13.0)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit unwind label %.loopexit.split-lp.loopexit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit: ; preds = %bb.y, %.noexc48
  %i.cy = add nsw i64 %.pre231, -1                ; 2 uses
  %.not189 = icmp eq i64 %i.cy, 0
  %.pre224 = load ptr, ptr %i.ai, align 8, !tbaa !16 ; 2 uses
  br i1 %.not189, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit, %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit
  %i.cz = phi ptr [ %i.ed, %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit ], [ %.pre224, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit ] ; 6 uses
  %.0183 = phi i64 [ %i.db, %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit ], [ 0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit ] ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.sroa.088.0, i64 %.0183
  %i.db = add nuw i64 %.0183, 1                   ; 3 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.088.0, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !21
  %i.de = load i64, ptr %i.da, align 8, !tbaa !21 ; 3 uses
  %i.df = sub i64 %i.dd, %i.de                    ; 2 uses
  %i.dg = load ptr, ptr %i.aj, align 8, !tbaa !54
  %.not.i.i52 = icmp eq ptr %i.cz, %i.dg
  br i1 %.not.i.i52, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph
  store i64 %i.de, ptr %i.cz, align 8
  %.sroa.685.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store i64 %i.df, ptr %.sroa.685.0..sroa_idx, align 8
  %i.dh = load ptr, ptr %i.ai, align 8, !tbaa !16
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16 ; 2 uses
  store ptr %i.di, ptr %i.ai, align 8, !tbaa !16
end_hunk_0
begin_hunk_1_@_ZN4dmlc2io23IndexedRecordIOSplitter13ReadIndexFileEPNS0_10FileSystemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.dr = call i64 @llvm.umin.i64(i64 %i.dp, i64 576460752303423487)
  %i.ds = select i1 %i.dq, i64 576460752303423487, i64 %i.dr ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ds, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dt = shl nuw nsw i64 %i.ds, 4
  %i.du = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dt) #26
          to label %.noexc54 unwind label %.thread108.loopexit ; 5 uses

.noexc54:                                         ; preds = %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dm ; 2 uses
  store i64 %i.de, ptr %i.dv, align 8
  %.sroa.685.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store i64 %i.df, ptr %.sroa.685.0..sroa_idx86, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.dj, %i.cz
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc54, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.dx, %.lr.ph.i.i.i.i.i.i ], [ %i.du, %.noexc54 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.i.i ], [ %i.dj, %.noexc54 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !alias.scope !134
  %i.dw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dw, %i.cz
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc54
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.du, %.noexc54 ], [ %i.dx, %.lr.ph.i.i.i.i.i.i ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.dj, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.dz = load ptr, ptr %i.aj, align 8, !tbaa !54
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = sub i64 %i.ea, %i.dl
  call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef %i.eb) #27
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.ad, %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.du, ptr %i.ah, align 8, !tbaa !17
  store ptr %i.dy, ptr %i.ai, align 8, !tbaa !16
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.du, i64 %i.ds
  store ptr %i.ec, ptr %i.aj, align 8, !tbaa !54
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.aa
  %i.ed = phi ptr [ %i.dy, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.di, %bb.aa ] ; 2 uses
  %exitcond.not = icmp eq i64 %i.db, %i.cy
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !128

.thread108.loopexit:                              ; preds = %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread108

.thread108.loopexit.split-lp:                     ; preds = %bb.ac
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread108

.thread108:                                       ; preds = %.thread108.loopexit.split-lp, %.thread108.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.thread108.loopexit ], [ %lpad.loopexit.split-lp, %.thread108.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %bb.ak

._crit_edge:                                      ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit
  %i.ee = phi ptr [ %.pre224, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit ], [ %i.ed, %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit ] ; 6 uses
  %i.ef = getelementptr inbounds i8, ptr %.sroa.13.0, i64 -8
  %i.eg = load ptr, ptr %i.ak, align 8, !tbaa !19
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 -8
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !21
  %i.ej = load i64, ptr %i.ef, align 8, !tbaa !21 ; 3 uses
  %i.ek = sub i64 %i.ei, %i.ej                    ; 2 uses
  %i.el = load ptr, ptr %i.aj, align 8, !tbaa !54
  %.not.i.i55 = icmp eq ptr %i.ee, %i.el
  br i1 %.not.i.i55, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge
  store i64 %i.ej, ptr %i.ee, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store i64 %i.ek, ptr %.sroa.6.0..sroa_idx, align 8
  %i.em = load ptr, ptr %i.ai, align 8, !tbaa !16
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store ptr %i.en, ptr %i.ai, align 8, !tbaa !16
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit70

bb.af:                                            ; preds = %._crit_edge
  %i.eo = load ptr, ptr %i.ah, align 8, !tbaa !17 ; 5 uses
  %i.ep = ptrtoint ptr %i.ee to i64
  %i.eq = ptrtoint ptr %i.eo to i64               ; 2 uses
  %i.er = sub i64 %i.ep, %i.eq                    ; 3 uses
  %i.es = icmp eq i64 %i.er, 9223372036854775792
  br i1 %i.es, label %bb.ag, label %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i56

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #25
          to label %.noexc68 unwind label %.loopexit.split-lp121

.noexc68:                                         ; preds = %bb.ag
  unreachable

_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i56: ; preds = %bb.af
  %i.et = ashr exact i64 %i.er, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i57 = call i64 @llvm.umax.i64(i64 %i.et, i64 1)
  %i.eu = add nsw i64 %.sroa.speculated.i.i.i.i57, %i.et ; 2 uses
  %i.ev = icmp ult i64 %i.eu, %i.et
  %i.ew = call i64 @llvm.umin.i64(i64 %i.eu, i64 576460752303423487)
  %i.ex = select i1 %i.ev, i64 576460752303423487, i64 %i.ew ; 3 uses
  %.not.i.i.i.i58 = icmp ne i64 %i.ex, 0
  call void @llvm.assume(i1 %.not.i.i.i.i58)
  %i.ey = shl nuw nsw i64 %i.ex, 4
  %i.ez = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ey) #26
          to label %.noexc69 unwind label %.loopexit120 ; 5 uses

.noexc69:                                         ; preds = %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i56
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.er ; 2 uses
  store i64 %i.ej, ptr %i.fa, align 8
  %.sroa.6.0..sroa_idx80 = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  store i64 %i.ek, ptr %.sroa.6.0..sroa_idx80, align 8
  %.not10.i.i.i.i.i.i59 = icmp eq ptr %i.eo, %i.ee
  br i1 %.not10.i.i.i.i.i.i59, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i64, label %.lr.ph.i.i.i.i.i.i60

.lr.ph.i.i.i.i.i.i60:                             ; preds = %.noexc69, %.lr.ph.i.i.i.i.i.i60
  %.012.i.i.i.i.i.i61 = phi ptr [ %i.fc, %.lr.ph.i.i.i.i.i.i60 ], [ %i.ez, %.noexc69 ] ; 2 uses
  %.0911.i.i.i.i.i.i62 = phi ptr [ %i.fb, %.lr.ph.i.i.i.i.i.i60 ], [ %i.eo, %.noexc69 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i61, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i62, i64 16, i1 false), !alias.scope !135
  %i.fb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i62, i64 16 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i61, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i63 = icmp eq ptr %i.fb, %i.ee
  br i1 %.not.i.i.i.i.i.i63, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i64, label %.lr.ph.i.i.i.i.i.i60, !llvm.loop !0

_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i64: ; preds = %.lr.ph.i.i.i.i.i.i60, %.noexc69
  %.0.lcssa.i.i.i.i.i.i65 = phi ptr [ %i.ez, %.noexc69 ], [ %i.fc, %.lr.ph.i.i.i.i.i.i60 ]
  %i.fd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i65, i64 16
  %.not.i23.i.i.i66 = icmp eq ptr %i.eo, null
  br i1 %.not.i23.i.i.i66, label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i67, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i64
  %i.fe = load ptr, ptr %i.aj, align 8, !tbaa !54
  %i.ff = ptrtoint ptr %i.fe to i64
  %i.fg = sub i64 %i.ff, %i.eq
  call void @_ZdlPvm(ptr noundef nonnull %i.eo, i64 noundef %i.fg) #27
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i67

_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i67: ; preds = %bb.ah, %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i64
  store ptr %i.ez, ptr %i.ah, align 8, !tbaa !17
  store ptr %i.fd, ptr %i.ai, align 8, !tbaa !16
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %i.ez, i64 %i.ex
  store ptr %i.fh, ptr %i.aj, align 8, !tbaa !54
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit70

_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit70: ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i67, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  %.not.i.i.i71 = icmp eq ptr %.sroa.088.0, null
  br i1 %.not.i.i.i71, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit70
  %i.fi = ptrtoint ptr %.sroa.20.0 to i64
  %i.fj = sub i64 %i.fi, %.pre227
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.088.0, i64 noundef %i.fj) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit70, %bb.ai
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN4dmlc7istreamE, i64 24), ptr %6, align 8, !tbaa !60
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN4dmlc7istreamE, i64 64), ptr %i.al, align 8, !tbaa !60
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4dmlc7istream5InBufE, i64 16), ptr %i.am, align 8, !tbaa !60
  %i.fk = load ptr, ptr %i.an, align 8, !tbaa !85 ; 3 uses
  %.not.i.i.i.i.i.i72 = icmp eq ptr %i.fk, null
  br i1 %.not.i.i.i.i.i.i72, label %_ZN4dmlc7istreamD1Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.fl = load ptr, ptr %i.ao, align 8, !tbaa !86
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = ptrtoint ptr %i.fk to i64
  %i.fo = sub i64 %i.fm, %i.fn
  call void @_ZdlPvm(ptr noundef nonnull %i.fk, i64 noundef %i.fo) #27, !inline_history !87
  br label %_ZN4dmlc7istreamD1Ev.exit

_ZN4dmlc7istreamD1Ev.exit:                        ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.aj
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.am, align 8, !tbaa !60
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ap) #9, !inline_history !87
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN4dmlc7istreamE0_Si, i64 24), ptr %6, align 8, !tbaa !60
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN4dmlc7istreamE0_Si, i64 64), ptr %i.al, align 8, !tbaa !60
  store i64 0, ptr %i.aq, align 8, !tbaa !89
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.al) #9, !inline_history !90
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  %.not.i73 = icmp eq ptr %i.bt, null
  br i1 %.not.i73, label %_ZNSt10unique_ptrIN4dmlc6StreamESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4dmlc6StreamEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4dmlc6StreamEEclEPS1_.exit.i: ; preds = %_ZN4dmlc7istreamD1Ev.exit
  %i.fp = load ptr, ptr %i.bt, align 8, !tbaa !60
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8
  call void %i.fr(ptr noundef nonnull align 8 dereferenceable(8) %i.bt) #9, !inline_history !132
  br label %_ZNSt10unique_ptrIN4dmlc6StreamESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4dmlc6StreamESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN4dmlc7istreamD1Ev.exit, %_ZNKSt14default_deleteIN4dmlc6StreamEEclEPS1_.exit.i
  %i.fs = add nuw i64 %.021184, 1                 ; 2 uses
  %i.ft = load ptr, ptr %i.e, align 8, !tbaa !67  ; 2 uses
  %i.fu = load ptr, ptr %3, align 8, !tbaa !68    ; 3 uses
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = ptrtoint ptr %i.fu to i64
  %i.fx = sub i64 %i.fv, %i.fw
  %i.fy = sdiv exact i64 %i.fx, 96
  %i.fz = icmp ult i64 %i.fs, %i.fy
  br i1 %i.fz, label %bb.l, label %._crit_edge186, !llvm.loop !133

.loopexit120:                                     ; preds = %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i56
  %lpad.loopexit122 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp121:                            ; preds = %bb.ag
  %lpad.loopexit.split-lp123 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit120, %.loopexit.split-lp121, %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit
  %.sroa.20.0193 = phi ptr [ %.sroa.13.0, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.20.0.lcssa, %.loopexit ], [ %.sroa.20.0, %.loopexit.split-lp.loopexit ], [ %.sroa.20.0, %.loopexit120 ], [ %.sroa.20.0, %.loopexit.split-lp121 ]
  %.pn24 = phi { ptr, i32 } [ %lpad.loopexit.split-lp118, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit114, %.loopexit ], [ %lpad.loopexit117, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit122, %.loopexit120 ], [ %lpad.loopexit.split-lp123, %.loopexit.split-lp121 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  %.not.i.i.i74 = icmp eq ptr %.sroa.088.0, null
  br i1 %.not.i.i.i74, label %_ZNSt6vectorImSaImEED2Ev.exit75, label %.loopexit.split-lp._crit_edge

.loopexit.split-lp._crit_edge:                    ; preds = %.loopexit.split-lp
  %.pre = ptrtoint ptr %.sroa.088.0 to i64
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit.split-lp._crit_edge, %.thread108
  %.pre-phi = phi i64 [ %.pre, %.loopexit.split-lp._crit_edge ], [ %.pre227, %.thread108 ]
  %.sroa.20.0192 = phi ptr [ %.sroa.20.0193, %.loopexit.split-lp._crit_edge ], [ %.sroa.20.0, %.thread108 ]
  %.pn24111 = phi { ptr, i32 } [ %.pn24, %.loopexit.split-lp._crit_edge ], [ %lpad.phi, %.thread108 ]
  %i.ga = ptrtoint ptr %.sroa.20.0192 to i64
  %i.gb = sub i64 %i.ga, %.pre-phi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.088.0, i64 noundef %i.gb) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit75

_ZNSt6vectorImSaImEED2Ev.exit75:                  ; preds = %.loopexit.split-lp, %bb.ak
  %.pn24112 = phi { ptr, i32 } [ %.pn24, %.loopexit.split-lp ], [ %.pn24111, %bb.ak ]
  call void @_ZN4dmlc7istreamD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %6) #9
  br label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit75, %bb.x
  %.pn24.pn = phi { ptr, i32 } [ %.pn24112, %_ZNSt6vectorImSaImEED2Ev.exit75 ], [ %i.cu, %bb.x ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  %.not.i76 = icmp eq ptr %i.bt, null
  br i1 %.not.i76, label %_ZNSt10unique_ptrIN4dmlc6StreamESt14default_deleteIS1_EED2Ev.exit78, label %_ZNKSt14default_deleteIN4dmlc6StreamEEclEPS1_.exit.i77

_ZNKSt14default_deleteIN4dmlc6StreamEEclEPS1_.exit.i77: ; preds = %bb.al
  %i.gc = load ptr, ptr %i.bt, align 8, !tbaa !60
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  %i.ge = load ptr, ptr %i.gd, align 8
  call void %i.ge(ptr noundef nonnull align 8 dereferenceable(8) %i.bt) #9, !inline_history !132
  br label %_ZNSt10unique_ptrIN4dmlc6StreamESt14default_deleteIS1_EED2Ev.exit78

_ZNSt10unique_ptrIN4dmlc6StreamESt14default_deleteIS1_EED2Ev.exit78: ; preds = %bb.w, %bb.al, %_ZNKSt14default_deleteIN4dmlc6StreamEEclEPS1_.exit.i77, %bb.k
  %.pn24.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.k ], [ %i.ct, %bb.w ], [ %.pn24.pn, %bb.al ], [ %.pn24.pn, %_ZNKSt14default_deleteIN4dmlc6StreamEEclEPS1_.exit.i77 ]
  call void @_ZNSt6vectorIN4dmlc2io3URIESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  resume { ptr, i32 } %.pn24.pn.pn.pn

bb.am:                                            ; preds = %bb.f
  %i.gf = landingpad { ptr, i32 }
          catch ptr null
  %i.gg = extractvalue { ptr, i32 } %i.gf, 0
  call void @__clang_call_terminate(ptr %i.gg) #28
  unreachable
}

declare void @_ZN4dmlc2io14InputSplitBase13ConvertToURIsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::vector.20") align 8, ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %0) ; 2 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.24, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.d = tail call ptr @getenv(ptr noundef nonnull @.str.34) #9 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN4dmlc18LogStackTraceLevelEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.35, ptr noundef nonnull %i.a) #9
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.c, label %_ZN4dmlc18LogStackTraceLevelEv.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %i.a, align 8, !tbaa !21
  %i.h = add i64 %i.g, 1
  br label %_ZN4dmlc18LogStackTraceLevelEv.exit

_ZN4dmlc18LogStackTraceLevelEv.exit:              ; preds = %bb.a, %bb.b, %bb.c
  %i.i = phi i64 [ %i.h, %bb.c ], [ 10, %bb.b ], [ 10, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @_ZN4dmlc10StackTraceB5cxx11Emm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, i64 noundef 1, i64 noundef %i.i)
  %i.j = load ptr, ptr %1, align 8, !tbaa !71
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !72
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.j, i64 noundef %i.l)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.f

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZN4dmlc18LogStackTraceLevelEv.exit
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.24, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.o = load ptr, ptr %1, align 8, !tbaa !71     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.r = load i64, ptr %i.p, align 8, !tbaa !73
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  %i.t = call ptr @__cxa_allocate_exception(i64 16) #9 ; 3 uses
  %i.u = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %0)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZN4dmlc15LogMessageFatal5Entry8FinalizeEv(ptr dead_on_unwind writable sret(%"struct.dmlc::Error") align 8 %i.t, ptr noundef nonnull align 8 dereferenceable(376) %i.u)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @__cxa_throw(ptr %i.t, ptr nonnull @_ZTIN4dmlc5ErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
  unreachable

bb.f:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZN4dmlc18LogStackTraceLevelEv.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %1, align 8, !tbaa !71     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.f
  %i.z = load i64, ptr %i.x, align 8, !tbaa !73
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  br label %bb.h

bb.g:                                             ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %i.t) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.g ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #9 ; 0 uses
  tail call void @_ZSt9terminatev() #28
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !70     ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.c, align 8, !tbaa !73
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #27
end_hunk_1
