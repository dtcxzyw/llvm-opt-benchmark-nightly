inline.NumInlined: 777
inline.NumDeleted: 367
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile4Data9readTilesEiiiiiib:bb.a
bb.bc:                                            ; preds = %bb.bb
  %i.eh = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ei = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eh, ptr noundef nonnull @.str.28, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit89 unwind label %bb.bj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit89: ; preds = %bb.bc
  %i.ej = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.eh, i32 noundef %.046135)
          to label %bb.bd unwind label %bb.bj     ; 2 uses

bb.bd:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit89
  %i.ek = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ej, ptr noundef nonnull @.str.5, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit91 unwind label %bb.bj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit91: ; preds = %bb.bd
  %i.el = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ej, i32 noundef %.047137)
          to label %bb.be unwind label %bb.bj     ; 2 uses

bb.be:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit91
  %i.em = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.el, ptr noundef nonnull @.str.5, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit93 unwind label %bb.bj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit93: ; preds = %bb.be
  %i.en = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.el, i32 noundef %5)
          to label %bb.bf unwind label %bb.bj     ; 2 uses

bb.bf:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit93
  %i.eo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.en, ptr noundef nonnull @.str.5, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95 unwind label %bb.bj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95: ; preds = %bb.bf
  %i.ep = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.en, i32 noundef %6)
          to label %bb.bg unwind label %bb.bj

bb.bg:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95
  %i.eq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ep, ptr noundef nonnull @.str.29, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97 unwind label %bb.bj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97: ; preds = %bb.bg
  %i.er = call ptr @__cxa_allocate_exception(i64 72) #26 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.er, ptr noundef nonnull align 8 dereferenceable(128) %14)
          to label %bb.bh unwind label %bb.bk

bb.bh:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97
  invoke void @__cxa_throw(ptr nonnull %i.er, ptr nonnull @_ZTIN7Iex_3_38InputExcE, ptr nonnull @_ZN7Iex_3_38InputExcD1Ev) #27
          to label %bb.bv unwind label %bb.bj

.loopexit104:                                     ; preds = %bb.ay, %bb.bq
  %lpad.loopexit106 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

.loopexit.split-lp105:                            ; preds = %bb.ba, %bb.bo
  %lpad.loopexit.split-lp107 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bi:                                            ; preds = %bb.bb
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bj:                                            ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bh, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit93, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit91, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit89
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bk:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.er) #26
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.pn = phi { ptr, i32 } [ %i.et, %bb.bj ], [ %i.eu, %bb.bk ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %14) #26
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bi
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.bl ], [ %i.es, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %bb.bs

bb.bn:                                            ; preds = %bb.az
  %i.ev = call ptr @__cxa_allocate_exception(i64 72) #26 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.ev, ptr noundef nonnull @.str.30)
          to label %bb.bo unwind label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  invoke void @__cxa_throw(ptr nonnull %i.ev, ptr nonnull @_ZTIN7Iex_3_38InputExcE, ptr nonnull @_ZN7Iex_3_38InputExcD1Ev) #27
          to label %bb.bv unwind label %.loopexit.split-lp105

bb.bp:                                            ; preds = %bb.bn
  %i.ew = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ev) #26
  br label %bb.bs

bb.bq:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dr, ptr noundef nonnull align 8 dereferenceable(64) %9, i64 64, i1 false), !tbaa.struct !163
  %i.ex = load ptr, ptr %0, align 8, !tbaa !23
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !56
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !60
  %i.fa = load i32, ptr %i.dq, align 8, !tbaa !55
  invoke fastcc void @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_111TileProcess10run_decodeEPK19_priv_exr_context_tiPKNS_15DeepFrameBufferERKSt6vectorINS_9DeepSliceESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(584) %13, ptr noundef %i.ez, i32 noundef %i.fa, ptr noundef nonnull %i.ds, ptr noundef nonnull align 8 dereferenceable(24) %i.dt)
          to label %bb.br unwind label %.loopexit104

bb.br:                                            ; preds = %bb.bq
  %i.fb = add i32 %.046135, 1
  %exitcond.not = icmp eq i32 %.046135, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.ay, !llvm.loop !168

bb.bs:                                            ; preds = %.loopexit104, %.loopexit.split-lp105, %bb.bp, %bb.bm
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.bm ], [ %i.ew, %bb.bp ], [ %lpad.loopexit106, %.loopexit104 ], [ %lpad.loopexit.split-lp107, %.loopexit.split-lp105 ]
  call fastcc void @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_111TileProcessD2Ev(ptr noundef nonnull align 8 dead_on_return(584) dereferenceable(584) %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.bu

bb.bt:                                            ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_111TileProcessD2Ev.exit, %_ZN33OpenImageIO_v3_1_IlmThread__3_3_512ProcessGroupIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_111TileProcessELb1EE16throw_on_failureEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  ret void

bb.bu:                                            ; preds = %bb.bs, %.body
  %.pn69.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn69.pn.pn.pn.pn, %.body ], [ %.pn.pn.pn, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %common.resume

bb.bv:                                            ; preds = %bb.bo, %bb.bh, %bb.ag, %bb.z
  unreachable
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #10

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare noundef nonnull align 8 dereferenceable(72) ptr @_ZN7Iex_3_37BaseExc6assignERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #1

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #26 ; 0 uses
  tail call void @_ZSt9terminatev() #29
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile9readTilesEiiiii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile9readTilesEiiiiii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile8readTileEiiii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile9readTilesEiiiiii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %1, i32 noundef %2, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile8readTileEiii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile9readTilesEiiiiii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %1, i32 noundef %2, i32 noundef %2, i32 noundef %3, i32 noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile11rawTileDataERiS1_S1_S1_PcRm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr noundef %5, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %struct.exr_chunk_info_t, align 8   ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.a = load ptr, ptr %0, align 8, !tbaa !56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !55
  %i.g = load i32, ptr %1, align 4, !tbaa !3
  %i.h = load i32, ptr %2, align 4, !tbaa !3
  %i.i = load i32, ptr %3, align 4, !tbaa !3
  %i.j = load i32, ptr %4, align 4, !tbaa !3
  %i.k = call i32 @exr_read_tile_chunk_info(ptr noundef %i.b, i32 noundef %i.f, i32 noundef %i.g, i32 noundef %i.h, i32 noundef %i.i, i32 noundef %i.j, ptr noundef nonnull %7)
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.n = load i64, ptr %i.m, align 8, !tbaa !169  ; 3 uses
  %i.o = add i64 %i.n, 40
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.q = load i64, ptr %i.p, align 8, !tbaa !170  ; 2 uses
  %i.r = add i64 %i.o, %i.q                       ; 2 uses
  %.not = icmp eq ptr %5, null
  %10 = load i64, ptr %6, align 8
  %11 = icmp ugt i64 %i.r, %10
  %or.cond = select i1 %.not, i1 true, i1 %11
  store i64 %i.r, ptr %6, align 8, !tbaa !103
  br i1 %or.cond, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.t = load <2 x i32>, ptr %i.s, align 4, !tbaa !3
  store <2 x i32> %i.t, ptr %5, align 1, !tbaa !3
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = load <2 x i8>, ptr %i.u, align 4, !tbaa !63
  %i.x = zext <2 x i8> %i.w to <2 x i32>
  store <2 x i32> %i.x, ptr %i.v, align 1, !tbaa !3
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.n, ptr %i.y, align 1, !tbaa !171
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.q, ptr %i.z, align 1, !tbaa !173
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !174
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %i.ab, ptr %i.ac, align 1, !tbaa !175
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.ae = load ptr, ptr %0, align 8, !tbaa !56
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !60
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !10
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !55
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.n
  %i.ak = call i32 @exr_read_deep_chunk(ptr noundef %i.af, i32 noundef %i.ai, ptr noundef nonnull %7, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ad)
  %.not35 = icmp eq i32 %i.ak, 0
  br i1 %.not35, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_Z13iex_debugTrapv()
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %8)
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull @.str.7, i64 noundef 47)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  %i.an = invoke noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_57Context8fileNameEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZNK27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile8fileNameEv.exit unwind label %bb.g

_ZNK27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile8fileNameEv.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef %i.an)
          to label %bb.e unwind label %bb.g       ; 2 uses

bb.e:                                             ; preds = %_ZNK27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile8fileNameEv.exit
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull @.str.9, i64 noundef 35)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40.a unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40.a: ; preds = %bb.e
  %i.aq = load i64, ptr %6, align 8, !tbaa !103
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, i64 noundef %i.aq)
          to label %_ZNSolsEm.exit unwind label %bb.g

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40.a
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.10, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41.a unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41.a: ; preds = %_ZNSolsEm.exit
  %i.at = call ptr @__cxa_allocate_exception(i64 72) #26 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.at, ptr noundef nonnull align 8 dereferenceable(128) %8)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41.a
  invoke void @__cxa_throw(ptr nonnull %i.at, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #27
          to label %bb.r unwind label %bb.g

bb.g:                                             ; preds = %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40.a, %bb.e, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d, %bb.f, %_ZNK27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile8fileNameEv.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41.a
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.at) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn36 = phi { ptr, i32 } [ %i.au, %bb.g ], [ %i.av, %bb.h ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.q

bb.j:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret void

bb.k:                                             ; preds = %bb.a
  call void @_Z13iex_debugTrapv()
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9)
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull @.str.11, i64 noundef 46)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42: ; preds = %bb.k
  %i.ay = invoke noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_57Context8fileNameEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZNK27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile8fileNameEv.exit43 unwind label %bb.n

_ZNK27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile8fileNameEv.exit43: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef %i.ay)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %_ZNK27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile8fileNameEv.exit43
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull @.str.12, i64 noundef 42)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44: ; preds = %bb.l
  %i.bb = call ptr @__cxa_allocate_exception(i64 72) #26 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.bb, ptr noundef nonnull align 8 dereferenceable(128) %9)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44
  invoke void @__cxa_throw(ptr nonnull %i.bb, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #27
          to label %bb.r unwind label %bb.n

bb.n:                                             ; preds = %bb.l, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42, %bb.k, %bb.m, %_ZNK27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile8fileNameEv.exit43
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bb) #26
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.n ], [ %i.bd, %bb.o ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.i
  %.pn36.pn = phi { ptr, i32 } [ %.pn36, %bb.i ], [ %.pn, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  resume { ptr, i32 } %.pn36.pn

bb.r:                                             ; preds = %bb.m, %bb.f
  unreachable
}

declare i32 @exr_read_tile_chunk_info(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @exr_read_deep_chunk(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile9tileXSizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.d = load i32, ptr %i.c, align 4, !tbaa !176
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile9tileYSizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = load i32, ptr %i.c, align 8, !tbaa !177
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile9levelModeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.d = load i32, ptr %i.c, align 4, !tbaa !107
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile17levelRoundingModeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load i32, ptr %i.c, align 8, !tbaa !178
  ret i32 %i.d
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile9numLevelsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.d = load i32, ptr %i.c, align 4, !tbaa !107
  %i.e = icmp eq i32 %i.d, 2
  br i1 %i.e, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  tail call void @_Z13iex_debugTrapv()
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %1)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.13, i64 noundef 41)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.h = invoke noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_57Context8fileNameEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZNK27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile8fileNameEv.exit unwind label %bb.e

_ZNK27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile8fileNameEv.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.h)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZNK27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile8fileNameEv.exit
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.14, i64 noundef 64)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4: ; preds = %bb.c
  %i.k = call ptr @__cxa_allocate_exception(i64 72) #26 ; 3 uses
  invoke void @_ZN7Iex_3_38LogicExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(128) %1)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTIN7Iex_3_38LogicExcE, ptr nonnull @_ZN7Iex_3_38LogicExcD1Ev) #27
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %bb.d, %_ZNK27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile8fileNameEv.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.k) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.m, %bb.f ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %.pn

bb.h:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.o = load i32, ptr %i.n, align 4, !tbaa !108
  ret i32 %i.o

bb.i:                                             ; preds = %bb.d
  unreachable
}

declare void @_ZN7Iex_3_38LogicExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN7Iex_3_38LogicExcD1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile10numXLevelsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.d = load i32, ptr %i.c, align 4, !tbaa !108
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile10numYLevelsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.d = load i32, ptr %i.c, align 8, !tbaa !109
  ret i32 %i.d
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK27OpenImageIO_v3_1_Imf__3_3_518DeepTiledInputFile10levelWidthEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !tbaa !3
end_hunk_0
