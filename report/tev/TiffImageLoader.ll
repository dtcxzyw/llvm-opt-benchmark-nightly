Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/TiffImageLoader?download=true
inline.NumInlined: 18382
inline.NumDeleted: 4972
loop-unroll.NumCompletelyUnrolled: 111
loop-unroll.NumRuntimeUnrolled: 64
loop-unroll.NumUnrolled: 175
begin_hunk_0_@"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNS_23postprocessLinearRawDngEP4tiffRKNS_16MultiChannelViewIfEERNS_9ImageDataEbbiE3$_9EENS_4TaskIvEES4_S4_mT0_i":.from.
  invoke void @__cxa_end_catch()
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %.from.70

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %bb.m, %bb.p
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = atomicrmw add ptr %i.bk, i32 -1 acq_rel, align 4 ; 2 uses
  %i.bm = icmp slt i32 %i.bl, 1
  br i1 %i.bm, label %bb.q, label %_ZN3tev5Latch9countDownEv.exit.i23

bb.q:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i27 unwind label %.from..loopexit.split-lp.i.i24

.noexc.i.i27:                                     ; preds = %bb.q
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !70 ; 7 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !72
  %i.bq = and i32 %i.bp, 8
  %.not.i.i.i.i28 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i.i28, label %bb.r, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.r:                                             ; preds = %.noexc.i.i27
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !83 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !84 ; 2 uses
  %.not12.i.i.i.i.i29 = icmp eq ptr %i.bs, %i.bu
  br i1 %.not12.i.i.i.i.i29, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i30

.from..lr.ph.i.i.i.i.i30:                         ; preds = %bb.r
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 33
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  br label %.from..noexc2.i.i34

.from..noexc2.i.i34:                              ; preds = %.noexc2.i.i34, %.from..lr.ph.i.i.i.i.i30
  %.sroa.09.013.i.i.i.i.i31 = phi ptr [ %i.bs, %.from..lr.ph.i.i.i.i.i30 ], [ %i.ck, %.noexc2.i.i34 ] ; 2 uses
  %i.bz = load ptr, ptr %.sroa.09.013.i.i.i.i.i31, align 8, !tbaa !85 ; 2 uses
  %i.ca = load i8, ptr %i.bv, align 8             ; 2 uses
  %i.cb = trunc i8 %i.ca to i1                    ; 2 uses
  %i.cc = load ptr, ptr %i.bw, align 8
  %i.cd = select i1 %i.cb, ptr %i.cc, ptr %i.bx
  %i.ce = load i64, ptr %i.by, align 8
  %i.cf = lshr i8 %i.ca, 1
  %i.cg = zext nneg i8 %i.cf to i64
  %i.ch = select i1 %i.cb, i64 %i.ce, i64 %i.cg
  %i.ci = load ptr, ptr %i.bz, align 8, !tbaa !33
  %i.cj = load ptr, ptr %i.ci, align 8
  invoke void %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr %i.cd, i64 %i.ch, i32 noundef 8, ptr nonnull @.str.187, i64 36)
          to label %.noexc2.i.i34 unwind label %.from..loopexit.i.i32, !inline_history !88

.noexc2.i.i34:                                    ; preds = %.from..noexc2.i.i34
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i31, i64 16 ; 2 uses
  %.not.i.i.i.i.i35 = icmp eq ptr %i.ck, %i.bu
  br i1 %.not.i.i.i.i.i35, label %_ZN3tev5Latch9countDownEv.exit.i23, label %.from..noexc2.i.i34

.from..loopexit.i.i32:                            ; preds = %.from..noexc2.i.i34
  %lpad.loopexit.i.i33 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.s

.from..loopexit.split-lp.i.i24:                   ; preds = %bb.q
  %lpad.loopexit.split-lp.i.i25 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.s

bb.s:                                             ; preds = %.from..loopexit.split-lp.i.i24, %.from..loopexit.i.i32
  %lpad.phi.i.i26 = phi { ptr, i32 } [ %lpad.loopexit.i.i33, %.from..loopexit.i.i32 ], [ %lpad.loopexit.split-lp.i.i25, %.from..loopexit.split-lp.i.i24 ]
  %i.cl = extractvalue { ptr, i32 } %lpad.phi.i.i26, 0
  call void @__clang_call_terminate(ptr %i.cl) #48
  unreachable

_ZN3tev5Latch9countDownEv.exit.i23:               ; preds = %.noexc2.i.i34, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.cm = icmp slt i32 %i.bl, 2
  br i1 %i.cm, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i27, %bb.r, %_ZN3tev5Latch9countDownEv.exit.i23
  %i.cn = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !48 ; 2 uses
  %i.cp = inttoptr i64 %i.co to ptr               ; 3 uses
  store ptr %i.cp, ptr %.reload.addr, align 8
  %.not.i36 = icmp eq i64 %i.co, 0
  br i1 %.not.i36, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend53

AfterCoroSuspend53:                               ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr80 = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i1 true, ptr %index.addr80, align 8
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr nonnull %i.cp)
  br label %AfterCoroEnd

bb.t:                                             ; preds = %bb.o
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.from.74 unwind label %bb.w

.from.70:                                         ; preds = %bb.p
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body.from.74

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, %_ZN3tev5Latch9countDownEv.exit.i23
  %i.ct = load ptr, ptr %i.h, align 8, !tbaa !44  ; 5 uses
  %.not.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = atomicrmw add ptr %i.cu, i64 -1 acq_rel, align 8
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %bb.v, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.cx = load ptr, ptr %i.ct, align 8, !tbaa !33
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #44, !inline_history !107
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #44
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.u, %bb.v
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr78) #44
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 96) #44
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend53, %AfterCoroSave
  ret void

.body.from.74:                                    ; preds = %bb.t, %.from.70
  %.pn17 = phi { ptr, i32 } [ %i.cs, %.from.70 ], [ %i.cr, %bb.t ]
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #44
  call void @_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.reload.addr78) #44
  br label %.body

.body:                                            ; preds = %.body.from.74, %.body.from.72, %.body.from.
  %.merged19 = phi { ptr, i32 } [ %.pn17, %.body.from.74 ], [ %i.r, %.body.from. ], [ %i.c, %.body.from.72 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 96) #44
  resume { ptr, i32 } %.merged19

bb.w:                                             ; preds = %bb.t
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #48
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZN3tev10ScopeGuardIZNS_23postprocessLinearRawDngEP4tiffRKNS_16MultiChannelViewIfEERNS_9ImageDataEbbiE3$_0ED2Ev"(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(17) dereferenceable(17) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !433, !range !251, !noundef !252
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %"_ZZN3tev23postprocessLinearRawDngEP4tiffRKNS_16MultiChannelViewIfEERNS_9ImageDataEbbiENK3$_0clEv.exit"

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !673
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.d, align 8, !tbaa !674
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !199
  %.val1.val = load i64, ptr %.val1, align 8, !tbaa !24
  %i.e = invoke i32 @TIFFSetSubDirectory(ptr noundef %.val.val, i64 noundef %.val1.val)
          to label %"_ZZN3tev23postprocessLinearRawDngEP4tiffRKNS_16MultiChannelViewIfEERNS_9ImageDataEbbiENK3$_0clEv.exit" unwind label %bb.c ; 0 uses

"_ZZN3tev23postprocessLinearRawDngEP4tiffRKNS_16MultiChannelViewIfEERNS_9ImageDataEbbiENK3$_0clEv.exit": ; preds = %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #48
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3tev14postprocessRgbEP4tiffttmRKNS_16MultiChannelViewIfEERNS_9ImageDataERKNSt3__14spanIKhLm18446744073709551615EEENS_10EAlphaKindEi(ptr dead_on_unwind writable sret(%"class.tev::Task") align 8 %0, ptr noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(144) %5, ptr noundef nonnull align 8 dereferenceable(280) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #14 personality ptr @__gxx_personality_v0 {
.from.:
  %10 = alloca %"class.std::__1::future", align 8 ; 6 uses
  %11 = alloca %"class.std::__1::basic_string", align 8 ; 10 uses
  %12 = alloca %class.anon.184, align 8           ; 7 uses
  %13 = alloca %"struct.nanogui::Array.39", align 8 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %14 = alloca %"struct.nanogui::Matrix", align 4 ; 5 uses
  %15 = alloca %"struct.std::__1::array.86", align 4 ; 5 uses
  %16 = alloca %"class.std::__1::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__1::basic_string", align 8 ; 10 uses
  %18 = alloca %class.anon.218, align 8           ; 8 uses
  %19 = alloca %class.anon.235, align 8           ; 4 uses
  %20 = alloca %"struct.std::__1::array.86", align 4 ; 5 uses
  %21 = alloca %"struct.nanogui::Matrix", align 4 ; 5 uses
  %22 = alloca %"struct.std::__1::array.86", align 4 ; 5 uses
  %23 = alloca %"struct.std::__1::array.86", align 4 ; 5 uses
  %24 = alloca %"struct.nanogui::Matrix", align 4 ; 5 uses
  %25 = alloca %"struct.std::__1::array.86", align 4 ; 5 uses
  %26 = alloca %"struct.std::__1::array.86", align 4 ; 5 uses
  %27 = alloca %class.anon.236, align 8           ; 4 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(432) ptr @_Znwm(i64 noundef 432) #47 ; 82 uses
  store ptr @_ZN3tev14postprocessRgbEP4tiffttmRKNS_16MultiChannelViewIfEERNS_9ImageDataERKNSt3__14spanIKhLm18446744073709551615EEENS_10EAlphaKindEi.resume, ptr %i.b, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_ZN3tev14postprocessRgbEP4tiffttmRKNS_16MultiChannelViewIfEERNS_9ImageDataERKNSt3__14spanIKhLm18446744073709551615EEENS_10EAlphaKindEi.destroy, ptr %destroy.addr, align 8
  %.reload.addr914 = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 5 uses
  %.reload.addr915 = getelementptr inbounds nuw i8, ptr %i.b, i64 184 ; 23 uses
  %.reload.addr916 = getelementptr inbounds nuw i8, ptr %i.b, i64 240 ; 31 uses
  %.reload.addr920 = getelementptr inbounds nuw i8, ptr %i.b, i64 360 ; 13 uses
  %.reload.addr925 = getelementptr inbounds nuw i8, ptr %i.b, i64 272 ; 13 uses
  %.reload.addr926 = getelementptr inbounds nuw i8, ptr %i.b, i64 304 ; 9 uses
  %.reload.addr930 = getelementptr inbounds nuw i8, ptr %i.b, i64 392 ; 5 uses
  %.reload.addr937 = getelementptr inbounds nuw i8, ptr %i.b, i64 232 ; 4 uses
  %.reload.addr940 = getelementptr inbounds nuw i8, ptr %i.b, i64 404 ; 2 uses
  %.reload.addr941 = getelementptr inbounds nuw i8, ptr %i.b, i64 296 ; 10 uses
  %.reload.addr942 = getelementptr inbounds nuw i8, ptr %i.b, i64 412 ; 5 uses
  %.reload.addr944 = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 8 uses
  %.spill.addr892 = getelementptr inbounds nuw i8, ptr %i.b, i64 416 ; 6 uses
  store i32 %9, ptr %.spill.addr892, align 8
  %.spill.addr887 = getelementptr inbounds nuw i8, ptr %i.b, i64 344 ; 2 uses
  store ptr %7, ptr %.spill.addr887, align 8
  %.spill.addr854 = getelementptr inbounds nuw i8, ptr %i.b, i64 336 ; 13 uses
  store ptr %6, ptr %.spill.addr854, align 8
  %.spill.addr833 = getelementptr inbounds nuw i8, ptr %i.b, i64 328 ; 7 uses
  store ptr %5, ptr %.spill.addr833, align 8
  %.spill.addr830 = getelementptr inbounds nuw i8, ptr %i.b, i64 426 ; 2 uses
  store i16 %3, ptr %.spill.addr830, align 2
  %.spill.addr825 = getelementptr inbounds nuw i8, ptr %i.b, i64 424 ; 3 uses
  store i16 %2, ptr %.spill.addr825, align 8
  %.spill.addr = getelementptr inbounds nuw i8, ptr %i.b, i64 320 ; 9 uses
  store ptr %1, ptr %.spill.addr, align 8
  store i64 %4, ptr %.reload.addr941, align 8, !tbaa !24
  store i32 %8, ptr %.reload.addr942, align 4, !tbaa !675
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr944)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !677)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !680)
  %i.c = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #46
          to label %bb.a unwind label %.body.from.804 ; 5 uses

.body.from.804:                                   ; preds = %.noexc
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr944) #44
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !683
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.c, align 8, !tbaa !33, !noalias !683
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false), !noalias !683
  store i32 2, ptr %i.h, align 8, !tbaa !35, !noalias !683
  store ptr %i.g, ptr %i.e, align 8, !tbaa !37, !alias.scope !684
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  store ptr %i.c, ptr %i.i, align 8, !tbaa !44, !alias.scope !684
  tail call void @llvm.experimental.noalias.scope.decl(metadata !687)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #44, !noalias !687
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr944)
          to label %bb.b unwind label %bb.d, !noalias !687

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %0, align 8, !tbaa !48, !alias.scope !687
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %10, align 8, !tbaa !49, !noalias !687
  store ptr %i.k, ptr %i.j, align 8, !tbaa !49, !alias.scope !687
  store ptr null, ptr %10, align 8, !tbaa !49, !noalias !687
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !44, !noalias !687 ; 2 uses
  %i.n = load <2 x ptr>, ptr %i.e, align 8, !tbaa !48, !noalias !687
  store <2 x ptr> %i.n, ptr %i.l, align 8, !tbaa !48, !alias.scope !687
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !687 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #48, !noalias !687
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #44, !noalias !687
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #44, !noalias !687
  %i.t = load i64, ptr %.reload.addr941, align 8, !tbaa !24
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !68
  %i.w = icmp ugt i64 %i.t, %i.v
  br i1 %i.w, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.x = call ptr @__cxa_allocate_exception(i64 16) #44 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #44
  %i.y = load i64, ptr %i.u, align 8, !tbaa !68
  store i64 %i.y, ptr %.reload.addr916, align 16, !tbaa !12, !noalias !690
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.aa = load i64, ptr %.reload.addr941, align 8, !tbaa !24, !noalias !690
  store i64 %i.aa, ptr %i.z, align 16, !tbaa !12, !noalias !690
  invoke void @_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %11, ptr nonnull @.str.59, i64 65, i64 68, ptr nonnull %.reload.addr916)
          to label %bb.g unwind label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread

bb.g:                                             ; preds = %bb.f
  invoke void @_ZNSt13runtime_errorC2ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3tev14ImageLoadErrorE, i64 16), ptr %i.x, align 8, !tbaa !33
  invoke void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTIN3tev14ImageLoadErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #45
          to label %bb.eq unwind label %.thread997

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread: ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.788.sink.split

bb.i:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ad = load i8, ptr %11, align 8
  %i.ae = trunc i8 %i.ad to i1
  br i1 %i.ae, label %.split, label %.from.788.sink.split

.thread997:                                       ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ag = load i8, ptr %11, align 8
  %i.ah = trunc i8 %i.ag to i1
  br i1 %i.ah, label %.split, label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit785

.split:                                           ; preds = %.thread997, %bb.i
  %i.ai = phi { ptr, i32 } [ %i.af, %.thread997 ], [ %i.ac, %bb.i ]
  %.0147999 = phi i1 [ false, %.thread997 ], [ true, %bb.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !12
  %i.al = load i64, ptr %11, align 8
  %i.am = and i64 %i.al, -2
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.am) #49
  %.0453 = extractvalue { ptr, i32 } %i.ai, 0     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #44
  br i1 %.0147999, label %.from.788, label %.from..split783

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit785: ; preds = %.thread997
  %.01003 = extractvalue { ptr, i32 } %i.af, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #44
  br label %.from..split783

.from.788.sink.split:                             ; preds = %bb.i, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread
  %.sink1078 = phi { ptr, i32 } [ %i.ab, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread ], [ %i.ac, %bb.i ]
  %.0451 = extractvalue { ptr, i32 } %.sink1078, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #44
  br label %.from.788

.from.788:                                        ; preds = %.from.788.sink.split, %.split
  %.0452 = phi ptr [ %.0453, %.split ], [ %.0451, %.from.788.sink.split ]
  call void @__cxa_free_exception(ptr %i.x) #44
  br label %.from..split783

bb.j:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 224
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 232
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !108
  %i.aq = load i32, ptr %i.an, align 8, !tbaa !108
  %i.ar = sub nsw i32 %i.ap, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 236
  %i.at = load i32, ptr %i.as, align 4, !tbaa !108
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 228
  %i.av = load i32, ptr %i.au, align 4, !tbaa !108
  %i.aw = sub nsw i32 %i.at, %i.av
  %i.ax = call noundef i32 @llvm.smax.i32(i32 %i.ar, i32 0)
  %i.ay = call noundef i32 @llvm.smax.i32(i32 %i.aw, i32 0)
  %.sroa.2.0.insert.ext.i1.i.i = zext nneg i32 %i.ay to i64
  %.sroa.2.0.insert.shift.i2.i.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i1.i.i, 32
  %.sroa.0.0.insert.ext.i3.i.i = zext nneg i32 %i.ax to i64
  %.sroa.0.0.insert.insert.i4.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i2.i.i, %.sroa.0.0.insert.ext.i3.i.i
  store i64 %.sroa.0.0.insert.insert.i4.i.i, ptr %.reload.addr940, align 4
  %i.az = invoke noundef i64 @_Z7posProdIiLm2EEDaRKN7nanogui5ArrayIT_XT0_EEE(ptr noundef nonnull align 4 dereferenceable(8) %.reload.addr940)
          to label %bb.k unwind label %.from.771  ; 3 uses

bb.k:                                             ; preds = %bb.j
  %.spill.addr904 = getelementptr inbounds nuw i8, ptr %i.b, i64 352 ; 4 uses
  store i64 %i.az, ptr %.spill.addr904, align 8
  %i.ba = icmp eq i16 %2, 3
  %narrow = select i1 %i.ba, i16 16, i16 %3
  %i.bb = zext nneg i16 %narrow to i64
  %i.bc = invoke { ptr, i64 } @_ZN3tev11tiffGetSpanIfEENSt3__14spanIKT_Lm18446744073709551615EEEP4tiffj(ptr noundef %1, i32 noundef 532)
          to label %bb.l unwind label %.from.608  ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.bd = extractvalue { ptr, i64 } %i.bc, 1
  %i.be = icmp ugt i64 %i.bd, 5
  br i1 %i.be, label %bb.m, label %bb.x

bb.m:                                             ; preds = %bb.l
end_hunk_0
begin_hunk_1_@_ZN3tev14postprocessRgbEP4tiffttmRKNS_16MultiChannelViewIfEERNS_9ImageDataERKNSt3__14spanIKhLm18446744073709551615EEENS_10EAlphaKindEi:.from.
  %.not12.i.i.i256 = icmp eq ptr %i.mi, %i.mk
  br i1 %.not12.i.i.i256, label %_ZN4tlog5debugENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit262, label %.from..lr.ph.i.i.i257

.from..lr.ph.i.i.i257:                            ; preds = %bb.bm
  %i.ml = getelementptr inbounds nuw i8, ptr %i.me, i64 32
  %i.mm = getelementptr inbounds nuw i8, ptr %i.me, i64 48
  %i.mn = getelementptr inbounds nuw i8, ptr %i.me, i64 33
  %i.mo = getelementptr inbounds nuw i8, ptr %i.me, i64 40
  br label %.from..noexc261

.from..noexc261:                                  ; preds = %.noexc261, %.from..lr.ph.i.i.i257
  %.sroa.09.013.i.i.i258 = phi ptr [ %i.mi, %.from..lr.ph.i.i.i257 ], [ %i.na, %.noexc261 ] ; 2 uses
  %i.mp = load ptr, ptr %.sroa.09.013.i.i.i258, align 8, !tbaa !85 ; 2 uses
  %i.mq = load i8, ptr %i.ml, align 8             ; 2 uses
  %i.mr = trunc i8 %i.mq to i1                    ; 2 uses
  %i.ms = load ptr, ptr %i.mm, align 8
  %i.mt = select i1 %i.mr, ptr %i.ms, ptr %i.mn
  %i.mu = load i64, ptr %i.mo, align 8
  %i.mv = lshr i8 %i.mq, 1
  %i.mw = zext nneg i8 %i.mv to i64
  %i.mx = select i1 %i.mr, i64 %i.mu, i64 %i.mw
  %i.my = load ptr, ptr %i.mp, align 8, !tbaa !33
  %i.mz = load ptr, ptr %i.my, align 8
  invoke void %i.mz(ptr noundef nonnull align 8 dereferenceable(8) %i.mp, ptr %i.mt, i64 %i.mx, i32 noundef 4, ptr nonnull @.str.64, i64 37)
          to label %.noexc261 unwind label %.from..loopexit499, !inline_history !350

.noexc261:                                        ; preds = %.from..noexc261
  %i.na = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i258, i64 16 ; 2 uses
  %.not.i.i.i259 = icmp eq ptr %i.na, %i.mk
  br i1 %.not.i.i.i259, label %_ZN4tlog5debugENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit262, label %.from..noexc261

_ZN4tlog5debugENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit262: ; preds = %.noexc261, %bb.bm, %.noexc260
  %i.nb = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %i.nc = load <2 x i32>, ptr %i.ma, align 4, !tbaa !10
  store <2 x i32> %i.nc, ptr %i.nb, align 8, !tbaa !12
  br label %bb.bn

.from..loopexit499:                               ; preds = %.from..noexc261
  %lpad.loopexit501 = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.774

.from..loopexit.split-lp500:                      ; preds = %bb.bl, %bb.bj
  %lpad.loopexit.split-lp502 = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.774

bb.bn:                                            ; preds = %_ZN4tlog5debugENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit262, %bb.bk
  %.reload884 = load ptr, ptr %.spill.addr854, align 8, !tbaa !693
  %i.nd = getelementptr inbounds nuw i8, ptr %.reload884, i64 220 ; 2 uses
  store i32 1, ptr %i.nd, align 4, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #44
  invoke void @_ZN3tev12rec709ChromaEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::__1::array.86") align 4 %15)
          to label %bb.bo unwind label %.from.765

bb.bo:                                            ; preds = %bb.bn
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !441
  invoke void @_ZN3tev23convertColorspaceMatrixERKNSt3__15arrayIN7nanogui5ArrayIfLm2EEELm4EEES7_NS_16ERenderingIntentENS0_8optionalIS4_EE(ptr dead_on_unwind nonnull writable sret(%"struct.nanogui::Matrix") align 4 %14, ptr noundef nonnull align 4 dereferenceable(32) %.reload.addr920, ptr noundef nonnull align 4 dereferenceable(32) %15, i32 noundef %i.ne, i64 0, i8 0)
          to label %bb.bp unwind label %.from.765

bb.bp:                                            ; preds = %bb.bo
  %.reload882 = load ptr, ptr %.spill.addr854, align 8, !tbaa !693 ; 3 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.reload882, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.nf, ptr noundef nonnull align 4 dereferenceable(36) %14, i64 36, i1 false), !tbaa.struct !696
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #44
  %i.ng = getelementptr inbounds nuw i8, ptr %.reload882, i64 172
  %i.nh = getelementptr inbounds nuw i8, ptr %.reload882, i64 204 ; 2 uses
  %i.ni = load i8, ptr %i.nh, align 4, !tbaa !697, !range !251, !noundef !252
  %i.nj = trunc nuw i8 %i.ni to i1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(33) %i.ng, ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr920, i64 32, i1 false)
  br i1 %i.nj, label %_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IRS5_vEERS6_OT_.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  store i8 1, ptr %i.nh, align 4, !tbaa !697
  br label %_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IRS5_vEERS6_OT_.exit

_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IRS5_vEERS6_OT_.exit: ; preds = %bb.bq, %bb.bp
  %.reload814 = load ptr, ptr %.spill.addr, align 8, !tbaa !693
  call void @llvm.experimental.noalias.scope.decl(metadata !698)
  store i16 8, ptr %.reload.addr930, align 8, !tbaa !13, !noalias !698
  %i.nk = invoke i32 (ptr, i32, ...) @TIFFGetFieldDefaulted(ptr noundef %.reload814, i32 noundef 258, ptr noundef nonnull %.reload.addr930)
          to label %.noexc264 unwind label %.from..loopexit.split-lp ; 0 uses

.noexc264:                                        ; preds = %_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IRS5_vEERS6_OT_.exit
  %.reload812 = load ptr, ptr %.spill.addr, align 8, !tbaa !693
  %i.nl = load i16, ptr %.reload.addr930, align 8, !tbaa !13, !noalias !698
  %i.nm = zext nneg i16 %i.nl to i32
  %i.nn = shl nuw i32 1, %i.nm
  %i.no = zext i32 %i.nn to i64                   ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !701)
  %i.np = invoke ptr @TIFFFindField(ptr noundef %.reload812, i32 noundef 301, i32 noundef 0)
          to label %.noexc265 unwind label %.from..loopexit.split-lp

.noexc265:                                        ; preds = %.noexc264
  %.not.i.i263 = icmp eq ptr %i.np, null
  br i1 %.not.i.i263, label %.sink.split558.sink.split, label %bb.br

bb.br:                                            ; preds = %.noexc265
  %.reload = load ptr, ptr %.spill.addr, align 8, !tbaa !693
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.reload.addr925, i8 0, i64 24, i1 false), !noalias !704
  %i.nq = getelementptr inbounds nuw i8, ptr %i.b, i64 280 ; 5 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.b, i64 288 ; 2 uses
  %i.ns = invoke i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %.reload, i32 noundef 301, ptr noundef nonnull %.reload.addr925, ptr noundef nonnull %i.nq, ptr noundef nonnull %i.nr)
          to label %.noexc266 unwind label %.from..loopexit.split-lp

.noexc266:                                        ; preds = %bb.br
  %.not15.i.i = icmp eq i32 %i.ns, 0
  br i1 %.not15.i.i, label %.sink.split558.sink.split, label %bb.bs

bb.bs:                                            ; preds = %.noexc266
  %i.nt = load ptr, ptr %.reload.addr925, align 16, !tbaa !18, !noalias !704 ; 2 uses
  %.not20.i.i = icmp eq ptr %i.nt, null           ; 2 uses
  %spec.select.i.i = select i1 %.not20.i.i, i64 0, i64 %i.no
  %i.nu = load ptr, ptr %i.nq, align 8, !tbaa !18, !noalias !704 ; 2 uses
  %.not20.1.i.i = icmp eq ptr %i.nu, null
  %.sroa.8.0.i.i = select i1 %.not20.1.i.i, i64 0, i64 %i.no
  %i.nv = load ptr, ptr %i.nr, align 16, !tbaa !18, !noalias !704 ; 2 uses
  %.not20.2.i.i = icmp eq ptr %i.nv, null
  %.sroa.10.0.i.i = select i1 %.not20.2.i.i, i64 0, i64 %i.no
  store ptr %i.nt, ptr %.reload.addr915, align 8, !alias.scope !704
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 192 ; 2 uses
  store i64 %spec.select.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 16, !alias.scope !704
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  store ptr %i.nu, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !704
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  store i64 %.sroa.8.0.i.i, ptr %.sroa.8.0..sroa_idx.i.i, align 16, !alias.scope !704
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  store ptr %i.nv, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !alias.scope !704
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  store i64 %.sroa.10.0.i.i, ptr %.sroa.10.0..sroa_idx.i.i, align 16, !tbaa !12, !alias.scope !704
  br i1 %.not20.i.i, label %.sink.split558, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.nw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc272 unwind label %.from..loopexit.split-lp

.noexc272:                                        ; preds = %bb.bt
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !70 ; 7 uses
  %i.ny = load i32, ptr %i.nx, align 8, !tbaa !72
  %i.nz = and i32 %i.ny, 4
  %.not.i.i267 = icmp eq i32 %i.nz, 0
  br i1 %.not.i.i267, label %bb.bu, label %_ZN4tlog5debugENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit274

bb.bu:                                            ; preds = %.noexc272
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !83 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nx, i64 16
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !84 ; 2 uses
  %.not12.i.i.i268 = icmp eq ptr %i.ob, %i.od
  br i1 %.not12.i.i.i268, label %_ZN4tlog5debugENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit274, label %.from..lr.ph.i.i.i269

.from..lr.ph.i.i.i269:                            ; preds = %bb.bu
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nx, i64 32
  %i.of = getelementptr inbounds nuw i8, ptr %i.nx, i64 48
  %i.og = getelementptr inbounds nuw i8, ptr %i.nx, i64 33
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nx, i64 40
  br label %.from..noexc273

.from..noexc273:                                  ; preds = %.noexc273, %.from..lr.ph.i.i.i269
  %.sroa.09.013.i.i.i270 = phi ptr [ %i.ob, %.from..lr.ph.i.i.i269 ], [ %i.ot, %.noexc273 ] ; 2 uses
  %i.oi = load ptr, ptr %.sroa.09.013.i.i.i270, align 8, !tbaa !85 ; 2 uses
  %i.oj = load i8, ptr %i.oe, align 8             ; 2 uses
  %i.ok = trunc i8 %i.oj to i1                    ; 2 uses
  %i.ol = load ptr, ptr %i.of, align 8
  %i.om = select i1 %i.ok, ptr %i.ol, ptr %i.og
  %i.on = load i64, ptr %i.oh, align 8
  %i.oo = lshr i8 %i.oj, 1
  %i.op = zext nneg i8 %i.oo to i64
  %i.oq = select i1 %i.ok, i64 %i.on, i64 %i.op
  %i.or = load ptr, ptr %i.oi, align 8, !tbaa !33
  %i.os = load ptr, ptr %i.or, align 8
  invoke void %i.os(ptr noundef nonnull align 8 dereferenceable(8) %i.oi, ptr %i.om, i64 %i.oq, i32 noundef 4, ptr nonnull @.str.65, i64 43)
          to label %.noexc273 unwind label %.from..loopexit, !inline_history !350

.noexc273:                                        ; preds = %.from..noexc273
  %i.ot = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i270, i64 16 ; 2 uses
  %.not.i.i.i271 = icmp eq ptr %i.ot, %i.od
  br i1 %.not.i.i.i271, label %_ZN4tlog5debugENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit274, label %.from..noexc273

_ZN4tlog5debugENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit274: ; preds = %.noexc273, %bb.bu, %.noexc272
  %i.ou = load i64, ptr %.reload.addr941, align 8, !tbaa !24 ; 4 uses
  %i.ov = icmp ugt i64 %i.ou, 3
  br i1 %i.ov, label %bb.bv, label %.preheader.split

.preheader.split:                                 ; preds = %_ZN4tlog5debugENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit274
  %.not512 = icmp eq i64 %i.ou, 0
  br i1 %.not512, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader.split
  %i.ow = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 16, !tbaa !92
  %i.ox = icmp ult i64 %i.ow, 2
  br i1 %i.ox, label %.lr.ph._crit_edge, label %.lr.ph.from..preheader

.lr.ph.from..preheader:                           ; preds = %.lr.ph.preheader
  %exitcond.not1080 = icmp eq i64 %i.ou, 1
  br i1 %exitcond.not1080, label %._crit_edge, label %.lr.ph.lr.ph, !llvm.loop !705

.lr.ph.lr.ph:                                     ; preds = %.lr.ph.from..preheader
  br label %.lr.ph, !llvm.loop !705

bb.bv:                                            ; preds = %_ZN4tlog5debugENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit274
  %i.oy = call ptr @__cxa_allocate_exception(i64 16) #44 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #44
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull @.str.66)
          to label %bb.bw unwind label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit277.thread

bb.bw:                                            ; preds = %bb.bv
  invoke void @_ZNSt13runtime_errorC2ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.oy, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.bx unwind label %bb.by

bb.bx:                                            ; preds = %bb.bw
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3tev14ImageLoadErrorE, i64 16), ptr %i.oy, align 8, !tbaa !33
  invoke void @__cxa_throw(ptr nonnull %i.oy, ptr nonnull @_ZTIN3tev14ImageLoadErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #45
          to label %bb.eq unwind label %.thread1005

.from.765:                                        ; preds = %bb.bn, %bb.bo
  %i.oz = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #44
  br label %.from.774

.from..loopexit:                                  ; preds = %.from..noexc273
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.774

.from..loopexit.split-lp:                         ; preds = %bb.bt, %bb.br, %.noexc264, %_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IRS5_vEERS6_OT_.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.774

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit277.thread: ; preds = %bb.bv
  %i.pa = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.757.sink.split

bb.by:                                            ; preds = %bb.bw
  %i.pb = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.pc = load i8, ptr %16, align 8
  %i.pd = trunc i8 %i.pc to i1
  br i1 %i.pd, label %.split476, label %.from.757.sink.split

.thread1005:                                      ; preds = %bb.bx
  %i.pe = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.pf = load i8, ptr %16, align 8
  %i.pg = trunc i8 %i.pf to i1
  br i1 %i.pg, label %.split476, label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit277754

.split476:                                        ; preds = %.thread1005, %bb.by
  %i.ph = phi { ptr, i32 } [ %i.pe, %.thread1005 ], [ %i.pb, %bb.by ] ; 2 uses
  %.01511007 = phi i1 [ false, %.thread1005 ], [ true, %bb.by ]
  %i.pi = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !12
  %i.pk = load i64, ptr %16, align 8
  %i.pl = and i64 %i.pk, -2
  call void @_ZdlPvm(ptr noundef %i.pj, i64 noundef %i.pl) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #44
  br i1 %.01511007, label %.from.757, label %.from.774

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit277754: ; preds = %.thread1005
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #44
  br label %.from.774

.from.757.sink.split:                             ; preds = %bb.by, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit277.thread
  %.pn180475.ph = phi { ptr, i32 } [ %i.pa, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit277.thread ], [ %i.pb, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #44
  br label %.from.757

.from.757:                                        ; preds = %.from.757.sink.split, %.split476
  %.pn180475 = phi { ptr, i32 } [ %i.ph, %.split476 ], [ %.pn180475.ph, %.from.757.sink.split ]
  call void @__cxa_free_exception(ptr %i.oy) #44
  br label %.from.774

.lr.ph.from..._crit_edge.loopexit_crit_edge:      ; preds = %.lr.ph.from..a
  br label %._crit_edge, !llvm.loop !705

._crit_edge:                                      ; preds = %.lr.ph.from..preheader, %.lr.ph.from..._crit_edge.loopexit_crit_edge, %.preheader.split
  %.reload832 = load i16, ptr %.spill.addr830, align 2, !tbaa !693
  %.reload827 = load i16, ptr %.spill.addr825, align 8, !tbaa !693
  %.reload816 = load ptr, ptr %.spill.addr, align 16, !tbaa !693
  %i.pm = icmp eq i16 %.reload827, 3
  %narrow810 = select i1 %i.pm, i16 16, i16 %.reload832
  %i.pn = zext nneg i16 %narrow810 to i64
  %notmask176 = shl nsw i64 -1, %i.pn
  %i.po = xor i64 %notmask176, -1
  store i64 %i.po, ptr %.reload.addr937, align 8, !tbaa !24
  store i32 0, ptr %.reload.addr925, align 16, !tbaa !108
  %i.pp = getelementptr inbounds nuw i8, ptr %i.b, i64 276 ; 2 uses
  store i32 0, ptr %i.pp, align 4, !tbaa !108
  store i32 0, ptr %i.nq, align 8, !tbaa !108
  store i32 65535, ptr %.reload.addr926, align 16, !tbaa !108
  %i.pq = getelementptr inbounds nuw i8, ptr %i.b, i64 308 ; 2 uses
  store i32 65535, ptr %i.pq, align 4, !tbaa !108
  %i.pr = getelementptr inbounds nuw i8, ptr %i.b, i64 312 ; 3 uses
  store i32 65535, ptr %i.pr, align 8, !tbaa !108
  %i.ps = invoke { ptr, i64 } @_ZN3tev11tiffGetSpanItEENSt3__14spanIKT_Lm18446744073709551615EEEP4tiffj(ptr noundef %.reload816, i32 noundef 342)
          to label %bb.cc unwind label %.from.695 ; 2 uses

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.lr.ph.from..a
  %28 = phi i64 [ 1, %.lr.ph.lr.ph ], [ %33, %.lr.ph.from..a ] ; 3 uses
  %29 = getelementptr inbounds nuw [16 x i8], ptr %.reload.addr915, i64 %28
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 8
  %31 = load i64, ptr %30, align 8, !tbaa !92
  %32 = icmp ult i64 %31, 2
  br i1 %32, label %.lr.ph._crit_edge, label %.lr.ph.from..a, !llvm.loop !705

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %storemerge511.lcssa = phi i64 [ 0, %.lr.ph.preheader ], [ %28, %.lr.ph ]
  %i.pt = call ptr @__cxa_allocate_exception(i64 16) #44 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #44
  store i64 %storemerge511.lcssa, ptr %.reload.addr926, align 16, !tbaa !12, !noalias !706
  invoke void @_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %17, ptr nonnull @.str.67, i64 40, i64 4, ptr nonnull %.reload.addr926)
          to label %bb.bz unwind label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit281.thread

bb.bz:                                            ; preds = %.lr.ph._crit_edge
  invoke void @_ZNSt13runtime_errorC2ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.pt, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %bb.ca unwind label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3tev14ImageLoadErrorE, i64 16), ptr %i.pt, align 8, !tbaa !33
  invoke void @__cxa_throw(ptr nonnull %i.pt, ptr nonnull @_ZTIN3tev14ImageLoadErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #45
          to label %bb.eq unwind label %.thread1011

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit281.thread: ; preds = %.lr.ph._crit_edge
  %i.pu = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.747.sink.split

bb.cb:                                            ; preds = %bb.bz
  %i.pv = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.pw = load i8, ptr %17, align 8
  %i.px = trunc i8 %i.pw to i1
  br i1 %i.px, label %.split480, label %.from.747.sink.split

.thread1011:                                      ; preds = %bb.ca
  %i.py = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.pz = load i8, ptr %17, align 8
  %i.qa = trunc i8 %i.pz to i1
  br i1 %i.qa, label %.split480, label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit281748

.split480:                                        ; preds = %.thread1011, %bb.cb
  %i.qb = phi { ptr, i32 } [ %i.py, %.thread1011 ], [ %i.pv, %bb.cb ] ; 2 uses
  %.01491013 = phi i1 [ false, %.thread1011 ], [ true, %bb.cb ]
  %i.qc = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !12
  %i.qe = load i64, ptr %17, align 8
  %i.qf = and i64 %i.qe, -2
  call void @_ZdlPvm(ptr noundef %i.qd, i64 noundef %i.qf) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #44
  br i1 %.01491013, label %.from.747, label %.from.774

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit281748: ; preds = %.thread1011
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #44
  br label %.from.774

.from.747.sink.split:                             ; preds = %bb.cb, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit281.thread
  %.pn179479.ph = phi { ptr, i32 } [ %i.pu, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit281.thread ], [ %i.pv, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #44
  br label %.from.747

.from.747:                                        ; preds = %.from.747.sink.split, %.split480
  %.pn179479 = phi { ptr, i32 } [ %i.qb, %.split480 ], [ %.pn179479.ph, %.from.747.sink.split ]
  call void @__cxa_free_exception(ptr %i.pt) #44
  br label %.from.774

.lr.ph.from..a:                                   ; preds = %.lr.ph
  %33 = add nuw nsw i64 %28, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %33, %i.ou
  br i1 %exitcond.not, label %.lr.ph.from..._crit_edge.loopexit_crit_edge, label %.lr.ph, !llvm.loop !705

bb.cc:                                            ; preds = %._crit_edge
  %i.qg = extractvalue { ptr, i64 } %i.ps, 1
  %i.qh = icmp ugt i64 %i.qg, 5
  br i1 %i.qh, label %bb.cd, label %_ZN4tlog5debugIJRN7nanogui5ArrayIiLm3EEES4_EEEvN3fmt3v127fstringIJDpT_EE1tEDpOS8_.exit

bb.cd:                                            ; preds = %bb.cc
  %i.qi = extractvalue { ptr, i64 } %i.ps, 0      ; 6 uses
  %i.qj = load i16, ptr %i.qi, align 2, !tbaa !13
  %i.qk = zext i16 %i.qj to i32
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qi, i64 4
  %i.qm = load i16, ptr %i.ql, align 2, !tbaa !13
  %i.qn = zext i16 %i.qm to i32
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qi, i64 8
  %i.qp = load i16, ptr %i.qo, align 2, !tbaa !13
  %i.qq = zext i16 %i.qp to i32
  store i32 %i.qk, ptr %.reload.addr925, align 16
  store i32 %i.qn, ptr %i.pp, align 4
  store i32 %i.qq, ptr %i.nq, align 8, !tbaa !12
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qi, i64 2
  %i.qs = load i16, ptr %i.qr, align 2, !tbaa !13
  %i.qt = zext i16 %i.qs to i32
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qi, i64 6
  %i.qv = load i16, ptr %i.qu, align 2, !tbaa !13
  %i.qw = zext i16 %i.qv to i32
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qi, i64 10
  %i.qy = load i16, ptr %i.qx, align 2, !tbaa !13
  %i.qz = zext i16 %i.qy to i32
  store i32 %i.qt, ptr %.reload.addr926, align 16
  store i32 %i.qw, ptr %i.pq, align 4
  store i32 %i.qz, ptr %i.pr, align 8, !tbaa !12
  %i.ra = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc952 unwind label %.from.695

.noexc952:                                        ; preds = %bb.cd
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !70
  invoke void @_ZN4tlog6Logger3logIJRN7nanogui5ArrayIiLm3EEES5_EEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSA_(ptr noundef nonnull align 8 dereferenceable(56) %i.rb, i32 noundef 4, ptr nonnull @.str.68, i64 29, ptr noundef nonnull align 4 dereferenceable(12) %.reload.addr925, ptr noundef nonnull align 4 dereferenceable(12) %.reload.addr926)
          to label %_ZN4tlog5debugIJRN7nanogui5ArrayIiLm3EEES4_EEEvN3fmt3v127fstringIJDpT_EE1tEDpOS8_.exit unwind label %.from.695

.from.695:                                        ; preds = %._crit_edge, %bb.cd, %.noexc952
  %i.rc = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.774

_ZN4tlog5debugIJRN7nanogui5ArrayIiLm3EEES4_EEEvN3fmt3v127fstringIJDpT_EE1tEDpOS8_.exit: ; preds = %.noexc952, %bb.cc
  %i.rd = load i32, ptr %i.pr, align 8, !tbaa !108
  %i.re = load i32, ptr %i.nq, align 8, !tbaa !108
  %i.rf = sub nsw i32 %i.rd, %i.re
  %i.rg = sitofp i32 %i.rf to float
  %i.rh = load <2 x i32>, ptr %.reload.addr926, align 16, !tbaa !108
  %i.ri = load <2 x i32>, ptr %.reload.addr925, align 16, !tbaa !108
  %i.rj = sub nsw <2 x i32> %i.rh, %i.ri
  %i.rk = sitofp <2 x i32> %i.rj to <2 x float>
  %i.rl = fdiv <2 x float> splat (float 1.000000e+00), %i.rk
  %i.rm = fdiv float 1.000000e+00, %i.rg
  store <2 x float> %i.rl, ptr %.reload.addr930, align 8
  %.sroa.225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  store float %i.rm, ptr %.sroa.225.0..sroa_idx, align 16
  %i.rn = load atomic i8, ptr @_ZGVZN3tev10ThreadPool6globalEvE4pool acquire, align 8
  %i.ro = icmp eq i8 %i.rn, 0
  br i1 %i.ro, label %bb.ce, label %_ZN3tev10ThreadPool6globalEv.exit291, !prof !94

bb.ce:                                            ; preds = %_ZN4tlog5debugIJRN7nanogui5ArrayIiLm3EEES4_EEEvN3fmt3v127fstringIJDpT_EE1tEDpOS8_.exit
  %i.rp = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #44
  %.not.i288 = icmp eq i32 %i.rp, 0
  br i1 %.not.i288, label %_ZN3tev10ThreadPool6globalEv.exit291, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZN3tev10ThreadPoolC1Ev(ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool)
          to label %bb.cg unwind label %.body289.from.689

bb.cg:                                            ; preds = %bb.cf
  %i.rq = call i32 @__cxa_atexit(ptr nonnull @_ZN3tev10ThreadPoolD1Ev, ptr nonnull @_ZZN3tev10ThreadPool6globalEvE4pool, ptr nonnull @__dso_handle) #44 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #44
  br label %_ZN3tev10ThreadPool6globalEv.exit291

.body289.from.689:                                ; preds = %bb.cf
  %i.rr = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #44
  br label %.from.774

_ZN3tev10ThreadPool6globalEv.exit291:             ; preds = %bb.cg, %bb.ce, %_ZN4tlog5debugIJRN7nanogui5ArrayIiLm3EEES4_EEEvN3fmt3v127fstringIJDpT_EE1tEDpOS8_.exit
  %.reload906 = load i64, ptr %.spill.addr904, align 16, !tbaa !693 ; 2 uses
  %.reload896 = load i32, ptr %.spill.addr892, align 16, !tbaa !693
  %.reload849 = load ptr, ptr %.spill.addr833, align 8, !tbaa !693 ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %.reload849, i64 16
  %i.rt = load i64, ptr %i.rs, align 8, !tbaa !68
  %i.ru = mul i64 %i.rt, %.reload906
  store ptr %.reload.addr942, ptr %18, align 8, !tbaa !48
  %i.rv = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %.reload849, ptr %i.rv, align 8, !tbaa !101
  %i.rw = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %.reload.addr941, ptr %i.rw, align 8, !tbaa !97
  %i.rx = getelementptr inbounds nuw i8, ptr %18, i64 24
  store ptr %.reload.addr937, ptr %i.rx, align 8, !tbaa !97
  %i.ry = getelementptr inbounds nuw i8, ptr %18, i64 32
  store ptr %.reload.addr925, ptr %i.ry, align 8, !tbaa !553
  %i.rz = getelementptr inbounds nuw i8, ptr %18, i64 40
  store ptr %.reload.addr915, ptr %i.rz, align 8, !tbaa !99
  %i.sa = getelementptr inbounds nuw i8, ptr %18, i64 48
  store ptr %.reload.addr930, ptr %i.sa, align 8, !tbaa !239
  invoke fastcc void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNS_14postprocessRgbEP4tiffttmRKNS_16MultiChannelViewIfEERNS_9ImageDataERKNS2_4spanIKhLm18446744073709551615EEENS_10EAlphaKindEiE3$_1EENS_4TaskIvEES4_S4_mT0_i"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task") align 8 %.reload.addr916, ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool, i64 noundef 0, i64 noundef %.reload906, i64 noundef %i.ru, ptr noundef nonnull byval(%class.anon.218) align 8 %18, i32 noundef %.reload896)
          to label %bb.ch unwind label %.body289.from.

bb.ch:                                            ; preds = %_ZN3tev10ThreadPool6globalEv.exit291
  %i.sb = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 2 uses
  %i.sc = load ptr, ptr %i.sb, align 16, !tbaa !37
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 8
  %i.se = load atomic i32, ptr %i.sd acquire, align 4
  %i.sf = icmp slt i32 %i.se, 2
  br i1 %i.sf, label %bb.ci, label %AfterCoroSave568

bb.ci:                                            ; preds = %bb.ch
  %i.sg = load ptr, ptr %i.sb, align 16, !tbaa !37
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 8
  %i.si = atomicrmw add ptr %i.sh, i32 -1 acq_rel, align 4
  %i.sj = icmp slt i32 %i.si, 1
  br i1 %i.sj, label %bb.cj, label %.thread485.sink.split

bb.cj:                                            ; preds = %bb.ci
  %i.sk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i296 unwind label %.from..loopexit.split-lp.i.i293

.noexc.i.i296:                                    ; preds = %bb.cj
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !70 ; 7 uses
  %i.sm = load i32, ptr %i.sl, align 8, !tbaa !72
  %i.sn = and i32 %i.sm, 8
  %.not.i.i.i.i297 = icmp eq i32 %i.sn, 0
  br i1 %.not.i.i.i.i297, label %bb.ck, label %.thread485.sink.split

bb.ck:                                            ; preds = %.noexc.i.i296
  %i.so = getelementptr inbounds nuw i8, ptr %i.sl, i64 8
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !83 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sl, i64 16
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !84 ; 2 uses
  %.not12.i.i.i.i.i298 = icmp eq ptr %i.sp, %i.sr
  br i1 %.not12.i.i.i.i.i298, label %.thread485.sink.split, label %.from..lr.ph.i.i.i.i.i299

.from..lr.ph.i.i.i.i.i299:                        ; preds = %bb.ck
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sl, i64 32
  %i.st = getelementptr inbounds nuw i8, ptr %i.sl, i64 48
  %i.su = getelementptr inbounds nuw i8, ptr %i.sl, i64 33
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sl, i64 40
  br label %.from..noexc2.i.i303

.from..noexc2.i.i303:                             ; preds = %.noexc2.i.i303, %.from..lr.ph.i.i.i.i.i299
  %.sroa.09.013.i.i.i.i.i300 = phi ptr [ %i.sp, %.from..lr.ph.i.i.i.i.i299 ], [ %i.th, %.noexc2.i.i303 ] ; 2 uses
  %i.sw = load ptr, ptr %.sroa.09.013.i.i.i.i.i300, align 8, !tbaa !85 ; 2 uses
  %i.sx = load i8, ptr %i.ss, align 8             ; 2 uses
  %i.sy = trunc i8 %i.sx to i1                    ; 2 uses
  %i.sz = load ptr, ptr %i.st, align 8
  %i.ta = select i1 %i.sy, ptr %i.sz, ptr %i.su
  %i.tb = load i64, ptr %i.sv, align 8
  %i.tc = lshr i8 %i.sx, 1
  %i.td = zext nneg i8 %i.tc to i64
  %i.te = select i1 %i.sy, i64 %i.tb, i64 %i.td
  %i.tf = load ptr, ptr %i.sw, align 8, !tbaa !33
  %i.tg = load ptr, ptr %i.tf, align 8
  invoke void %i.tg(ptr noundef nonnull align 8 dereferenceable(8) %i.sw, ptr %i.ta, i64 %i.te, i32 noundef 8, ptr nonnull @.str.187, i64 36)
          to label %.noexc2.i.i303 unwind label %.from..loopexit.i.i301, !inline_history !88

.noexc2.i.i303:                                   ; preds = %.from..noexc2.i.i303
  %i.th = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i300, i64 16 ; 2 uses
  %.not.i.i.i.i.i304 = icmp eq ptr %i.th, %i.sr
  br i1 %.not.i.i.i.i.i304, label %.thread485.sink.split, label %.from..noexc2.i.i303

.from..loopexit.i.i301:                           ; preds = %.from..noexc2.i.i303
  %lpad.loopexit.i.i302 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.cl

.from..loopexit.split-lp.i.i293:                  ; preds = %bb.cj
  %lpad.loopexit.split-lp.i.i294 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.cl

bb.cl:                                            ; preds = %.from..loopexit.split-lp.i.i293, %.from..loopexit.i.i301
  %lpad.phi.i.i295 = phi { ptr, i32 } [ %lpad.loopexit.i.i302, %.from..loopexit.i.i301 ], [ %lpad.loopexit.split-lp.i.i294, %.from..loopexit.split-lp.i.i293 ]
  %i.ti = extractvalue { ptr, i32 } %lpad.phi.i.i295, 0
  call void @__clang_call_terminate(ptr %i.ti) #48
  unreachable

AfterCoroSave568:                                 ; preds = %bb.ch
  %index.addr948 = getelementptr inbounds nuw i8, ptr %i.b, i64 428
  store i3 3, ptr %index.addr948, align 4
  %i.tj = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr916, ptr nonnull %i.b) #44
  br i1 %i.tj, label %AfterCoroEnd, label %bb.cm

.body289.from.:                                   ; preds = %_ZN3tev10ThreadPool6globalEv.exit291
  %i.tk = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.774

bb.cm:                                            ; preds = %AfterCoroSave568
  %.pr483 = load ptr, ptr %.reload.addr916, align 16, !tbaa !89 ; 3 uses
  %.not.i306 = icmp eq ptr %.pr483, null
  br i1 %.not.i306, label %.thread485, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
end_hunk_1
begin_hunk_2_@"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNS_14postprocessRgbEP4tiffttmRKNS_16MultiChannelViewIfEERNS_9ImageDataERKNS2_4spanIKhLm18446744073709551615EEENS_10EAlphaKindEiE3$_3EENS_4TaskIvEES4_S4_mT0_i.resume":bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !37
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = atomicrmw add ptr %i.j, i32 -1 acq_rel, align 4 ; 2 uses
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i23

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i27 unwind label %.from..loopexit.split-lp.i.i24

.noexc.i.i27:                                     ; preds = %bb.g
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !70   ; 7 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !72
  %i.p = and i32 %i.o, 8
  %.not.i.i.i.i28 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i28, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i27
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !83   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !84   ; 2 uses
  %.not12.i.i.i.i.i29 = icmp eq ptr %i.r, %i.t
  br i1 %.not12.i.i.i.i.i29, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i30

.from..lr.ph.i.i.i.i.i30:                         ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 33
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  br label %.from..noexc2.i.i34

.from..noexc2.i.i34:                              ; preds = %.noexc2.i.i34, %.from..lr.ph.i.i.i.i.i30
  %.sroa.09.013.i.i.i.i.i31 = phi ptr [ %i.r, %.from..lr.ph.i.i.i.i.i30 ], [ %i.aj, %.noexc2.i.i34 ] ; 2 uses
  %i.y = load ptr, ptr %.sroa.09.013.i.i.i.i.i31, align 8, !tbaa !85 ; 2 uses
  %i.z = load i8, ptr %i.u, align 8               ; 2 uses
  %i.aa = trunc i8 %i.z to i1                     ; 2 uses
  %i.ab = load ptr, ptr %i.v, align 8
  %i.ac = select i1 %i.aa, ptr %i.ab, ptr %i.w
  %i.ad = load i64, ptr %i.x, align 8
  %i.ae = lshr i8 %i.z, 1
  %i.af = zext nneg i8 %i.ae to i64
  %i.ag = select i1 %i.aa, i64 %i.ad, i64 %i.af
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !33
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr %i.ac, i64 %i.ag, i32 noundef 8, ptr nonnull @.str.187, i64 36)
          to label %.noexc2.i.i34 unwind label %.from..loopexit.i.i32, !inline_history !88

.noexc2.i.i34:                                    ; preds = %.from..noexc2.i.i34
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i31, i64 16 ; 2 uses
  %.not.i.i.i.i.i35 = icmp eq ptr %i.aj, %i.t
  br i1 %.not.i.i.i.i.i35, label %_ZN3tev5Latch9countDownEv.exit.i23, label %.from..noexc2.i.i34

.from..loopexit.i.i32:                            ; preds = %.from..noexc2.i.i34
  %lpad.loopexit.i.i33 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

.from..loopexit.split-lp.i.i24:                   ; preds = %bb.g
  %lpad.loopexit.split-lp.i.i25 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.i:                                             ; preds = %.from..loopexit.split-lp.i.i24, %.from..loopexit.i.i32
  %lpad.phi.i.i26 = phi { ptr, i32 } [ %lpad.loopexit.i.i33, %.from..loopexit.i.i32 ], [ %lpad.loopexit.split-lp.i.i25, %.from..loopexit.split-lp.i.i24 ]
  %i.ak = extractvalue { ptr, i32 } %lpad.phi.i.i26, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #48
  unreachable

_ZN3tev5Latch9countDownEv.exit.i23:               ; preds = %.noexc2.i.i34, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.al = icmp slt i32 %i.k, 2
  br i1 %i.al, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %_ZN3tev5Latch9countDownEv.exit.i23, %bb.h, %.noexc.i.i27
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !37
  %i.an = load i64, ptr %i.am, align 8, !tbaa !48 ; 2 uses
  %i.ao = inttoptr i64 %i.an to ptr               ; 3 uses
  store ptr %i.ao, ptr %.reload.addr, align 8
  %.not.i36 = icmp eq i64 %i.an, 0
  br i1 %.not.i36, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %0, align 8
  %index.addr80 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i1 true, ptr %index.addr80, align 8
  %i.ap = load ptr, ptr %i.ao, align 8
  musttail call void %i.ap(ptr nonnull %i.ao)
  ret void

bb.k:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

.from.70:                                         ; preds = %bb.f
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i23, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !44 ; 5 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = atomicrmw add ptr %i.au, i64 -1 acq_rel, align 8
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.m, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !33
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #44, !inline_history !107
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #44
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.m, %bb.l, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr78) #44
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #44
  ret void

bb.n:                                             ; preds = %bb.k, %.from.70
  %.pn17 = phi { ptr, i32 } [ %i.ar, %.from.70 ], [ %i.aq, %bb.k ]
  store ptr null, ptr %0, align 8
  %index.addr1 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i1 true, ptr %index.addr1, align 8
  resume { ptr, i32 } %.pn17

bb.o:                                             ; preds = %bb.k
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #48
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNS_14postprocessRgbEP4tiffttmRKNS_16MultiChannelViewIfEERNS_9ImageDataERKNS2_4spanIKhLm18446744073709551615EEENS_10EAlphaKindEiE3$_3EENS_4TaskIvEES4_S4_mT0_i.destroy"(ptr noundef nonnull align 8 dereferenceable(104) %0) #9 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 96
  %index = load i1, ptr %index.addr, align 8
  br i1 %index, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %_ZN3tev4TaskIvE12await_resumeEv.exit, !prof !6793

_ZN3tev4TaskIvE12await_resumeEv.exit:             ; preds = %resume.entry
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr) #44
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %resume.entry, %_ZN3tev4TaskIvE12await_resumeEv.exit
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #44, !inline_history !107
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #44
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %.reload.addr78 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr78) #44
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3tev14postprocessRgbEP4tiffttmRKNS_16MultiChannelViewIfEERNS_9ImageDataERKNSt3__14spanIKhLm18446744073709551615EEENS_10EAlphaKindEi.resume(ptr noundef nonnull align 16 dereferenceable(432) %0) #14 personality ptr @__gxx_personality_v0 {
resume.entry:
  %1 = alloca %class.anon.236, align 8            ; 4 uses
  %2 = alloca %"struct.std::__1::array.86", align 4 ; 5 uses
  %3 = alloca %"struct.std::__1::array.86", align 4 ; 5 uses
  %4 = alloca %"struct.nanogui::Matrix", align 4  ; 5 uses
  %5 = alloca %"struct.std::__1::array.86", align 4 ; 5 uses
  %6 = alloca %"struct.std::__1::array.86", align 4 ; 5 uses
  %7 = alloca %"struct.nanogui::Matrix", align 4  ; 5 uses
  %8 = alloca %"struct.std::__1::array.86", align 4 ; 5 uses
  %9 = alloca %class.anon.235, align 8            ; 4 uses
  %10 = alloca %class.anon.218, align 8           ; 8 uses
  %11 = alloca %"class.std::__1::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__1::basic_string", align 8 ; 10 uses
  %13 = alloca %"struct.std::__1::array.86", align 4 ; 5 uses
  %14 = alloca %"struct.nanogui::Matrix", align 4 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %15 = alloca %"struct.nanogui::Array.39", align 8 ; 6 uses
  %.reload.addr914 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %.reload.addr915 = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 21 uses
  %.reload.addr917 = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 27 uses
  %.reload.addr920 = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 11 uses
  %.reload.addr925 = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 11 uses
  %.reload.addr926 = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 6 uses
  %.reload.addr930 = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 5 uses
  %.reload.addr937 = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %.reload.addr941 = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 5 uses
  %.reload.addr942 = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 4 uses
  %.reload.addr944 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 428 ; 8 uses
  %index = load i3, ptr %index.addr, align 4
  switch i3 %index, label %unreachable [
    i3 0, label %AfterCoroSuspend
    i3 1, label %AfterCoroSuspend562
    i3 2, label %AfterCoroSuspend566
    i3 3, label %AfterCoroSuspend570
    i3 -4, label %AfterCoroSuspend574
    i3 -3, label %AfterCoroSuspend578
  ], !prof !6870

AfterCoroSuspend:                                 ; preds = %resume.entry
  %.pr = load ptr, ptr %.reload.addr915, align 8, !tbaa !89 ; 3 uses
  %.not.i207 = icmp eq ptr %.pr, null
  br i1 %.not.i207, label %.thread, label %bb.a

bb.a:                                             ; preds = %AfterCoroSuspend
  %i.b = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  invoke void %i.c(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.from.782, !inline_history !91

.thread.sink.split:                               ; preds = %bb.a
  store ptr null, ptr %.reload.addr915, align 8, !tbaa !89
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %AfterCoroSuspend
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.b unwind label %.from.782

bb.b:                                             ; preds = %.thread
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr915) #44
  %.reload.addr828 = getelementptr inbounds nuw i8, ptr %0, i64 424
  %.reload829 = load i16, ptr %.reload.addr828, align 8, !tbaa !693
  %i.e = icmp eq i16 %.reload829, 6
  %i.f = load i64, ptr %.reload.addr941, align 8
  %i.g = icmp ugt i64 %i.f, 2
  %or.cond = select i1 %i.e, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.c, label %_ZN3tev16MultiChannelViewIfED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %.reload.addr823 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.reload824 = load ptr, ptr %.reload.addr823, align 16, !tbaa !693
  store <4 x float> <float 1.402000e+00, float -3.441360e-01, float -7.141360e-01, float 1.772000e+00>, ptr %.reload.addr917, align 16, !tbaa !10
  %i.h = invoke { ptr, i64 } @_ZN3tev11tiffGetSpanIfEENSt3__14spanIKT_Lm18446744073709551615EEEP4tiffj(ptr noundef %.reload824, i32 noundef 529)
          to label %bb.d unwind label %.from.634  ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = extractvalue { ptr, i64 } %i.h, 1
  %i.j = icmp ugt i64 %i.i, 2
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = extractvalue { ptr, i64 } %i.h, 0        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #44
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load float, ptr %i.l, align 4, !tbaa !10 ; 2 uses
  %i.n = load <2 x float>, ptr %i.k, align 4, !tbaa !10 ; 3 uses
  store <2 x float> %i.n, ptr %15, align 8, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %15, i64 8
  store float %i.m, ptr %i.o, align 8, !tbaa !10
  %i.p = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.q = insertelement <2 x float> %i.p, float %i.m, i64 0 ; 2 uses
  %i.r = fsub <2 x float> splat (float 1.000000e+00), %i.q ; 2 uses
  %i.s = fmul <2 x float> %i.q, splat (float -2.000000e+00)
  %i.t = fmul <2 x float> %i.s, %i.r
  %i.u = shufflevector <2 x float> %i.r, <2 x float> %i.t, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.v = shufflevector <2 x float> %i.n, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 1, i32 poison>
  %i.w = shufflevector <4 x float> <float 2.000000e+00, float poison, float poison, float 2.000000e+00>, <4 x float> %i.v, <4 x i32> <i32 0, i32 5, i32 6, i32 3> ; 2 uses
  %i.x = fmul <4 x float> %i.u, %i.w
  %i.y = fdiv <4 x float> %i.u, %i.w
  %i.z = shufflevector <4 x float> %i.x, <4 x float> %i.y, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x float> %i.z, ptr %.reload.addr917, align 16
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc210 unwind label %.from.637

.noexc210:                                        ; preds = %bb.e
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !70
  invoke void @_ZN4tlog6Logger3logIJRKN7nanogui5ArrayIfLm3EEERNS3_IfLm4EEEEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSD_(ptr noundef nonnull align 8 dereferenceable(56) %i.ab, i32 noundef 4, ptr nonnull @.str.61, i64 34, ptr noundef nonnull align 4 dereferenceable(12) %15, ptr noundef nonnull align 4 dereferenceable(16) %.reload.addr917)
          to label %_ZN4tlog5debugIJRKN7nanogui5ArrayIfLm3EEERNS2_IfLm4EEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSB_.exit unwind label %.from.637

_ZN4tlog5debugIJRKN7nanogui5ArrayIfLm3EEERNS2_IfLm4EEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSB_.exit: ; preds = %.noexc210
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #44
  br label %bb.f

.from.782:                                        ; preds = %bb.a, %.thread
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.reload.addr915) #44
  %.5 = extractvalue { ptr, i32 } %i.ac, 0
  br label %.from.790

.from.634:                                        ; preds = %bb.c
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.780

.from.637:                                        ; preds = %bb.e, %.noexc210
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #44
  br label %.from.780

bb.f:                                             ; preds = %_ZN4tlog5debugIJRKN7nanogui5ArrayIfLm3EEERNS2_IfLm4EEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSB_.exit, %bb.d
  %.reload.addr836 = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %.reload837 = load ptr, ptr %.reload.addr836, align 8, !tbaa !693 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.reload837, i64 16
  store i64 4539628425446424576, ptr %.reload.addr920, align 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !68 ; 5 uses
  %i.ah = icmp ugt i64 %i.ag, 5
  br i1 %i.ah, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ai = icmp ugt i64 %i.ag, 768614336404564650
  br i1 %i.ai, label %bb.h, label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEmPKS6_.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #45
          to label %.noexc213 unwind label %_ZN3tev16MultiChannelViewIfED2Ev.exit233.from.632

.noexc213:                                        ; preds = %bb.h
  unreachable

_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEmPKS6_.exit.i.i.i.i: ; preds = %bb.g
  %i.aj = mul nuw i64 %i.ag, 24
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #46
          to label %.noexc214 unwind label %_ZN3tev16MultiChannelViewIfED2Ev.exit233.from.632 ; 2 uses

.noexc214:                                        ; preds = %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEmPKS6_.exit.i.i.i.i
  %.reload835 = load ptr, ptr %.reload.addr836, align 8, !tbaa !693 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.reload835, i64 16
  store ptr %i.ak, ptr %.reload.addr914, align 8, !tbaa !52
  %i.am = load i64, ptr %i.al, align 8, !tbaa !68 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.am, ptr %i.an, align 16, !tbaa !69
  %.not.i.i.i.i.i212 = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i.i212, label %.from..noexc214, label %.from..sink.split

bb.i:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 5, ptr %i.ao, align 16, !tbaa !69
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.ap, ptr %.reload.addr914, align 8, !tbaa !52
  %.not.i11.i.i.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i11.i.i.i.i, label %.from..noexc214, label %.from..sink.split

.from..sink.split:                                ; preds = %.noexc214, %bb.i
  %.reload845 = phi ptr [ %.reload835, %.noexc214 ], [ %.reload837, %bb.i ]
  %.sink557 = phi i64 [ %i.am, %.noexc214 ], [ %i.ag, %bb.i ] ; 2 uses
  %.sink = phi ptr [ %i.ak, %.noexc214 ], [ %i.ap, %bb.i ]
  %.idx.i.i.i.i = mul nsw i64 %.sink557, 24
  %i.aq = load ptr, ptr %.reload845, align 8, !tbaa !52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sink, ptr noundef nonnull align 8 dereferenceable(1) %i.aq, i64 %.idx.i.i.i.i, i1 false)
  br label %.from..noexc214

.from..noexc214:                                  ; preds = %bb.i, %.noexc214, %.from..sink.split
  %i.ar = phi i64 [ %.sink557, %.from..sink.split ], [ 0, %.noexc214 ], [ 0, %bb.i ]
  %.reload.addr901 = getelementptr inbounds nuw i8, ptr %0, i64 416
  %.reload902 = load i32, ptr %.reload.addr901, align 16, !tbaa !693
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !68
  invoke void @_ZN3tev10yCbCrToRgbILb0EEENS_4TaskIvEENS_16MultiChannelViewIfEEiPKfS6_(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task") align 8 %.reload.addr915, ptr nofree noundef nonnull align 8 dereferenceable(144) %.reload.addr914, i32 noundef %.reload902, ptr noundef nonnull %.reload.addr920, ptr noundef nonnull %.reload.addr917)
          to label %bb.j unwind label %.from.626

bb.j:                                             ; preds = %.from..noexc214
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !37
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load atomic i32, ptr %i.av acquire, align 4
  %i.ax = icmp slt i32 %i.aw, 2
  br i1 %i.ax, label %bb.k, label %AfterCoroSave560

bb.k:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr %i.at, align 8, !tbaa !37
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = atomicrmw add ptr %i.az, i32 -1 acq_rel, align 4
  %i.bb = icmp slt i32 %i.ba, 1
  br i1 %i.bb, label %bb.l, label %.thread464.sink.split

bb.l:                                             ; preds = %bb.k
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i219 unwind label %.from..loopexit.split-lp.i.i216

.noexc.i.i219:                                    ; preds = %bb.l
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !70 ; 7 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !72
  %i.bf = and i32 %i.be, 8
  %.not.i.i.i.i220 = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i.i.i220, label %bb.m, label %.thread464.sink.split

end_hunk_2
begin_hunk_3_@_ZN3tev14postprocessRgbEP4tiffttmRKNS_16MultiChannelViewIfEERNS_9ImageDataERKNSt3__14spanIKhLm18446744073709551615EEENS_10EAlphaKindEi.resume:resume.entry
  br i1 %.not12.i.i.i256, label %_ZN4tlog5debugENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit262, label %.from..lr.ph.i.i.i257

.from..lr.ph.i.i.i257:                            ; preds = %bb.ao
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gn, i64 32
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gn, i64 48
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gn, i64 33
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gn, i64 40
  br label %.from..noexc261

.from..noexc261:                                  ; preds = %.noexc261, %.from..lr.ph.i.i.i257
  %.sroa.09.013.i.i.i258 = phi ptr [ %i.gr, %.from..lr.ph.i.i.i257 ], [ %i.hj, %.noexc261 ] ; 2 uses
  %i.gy = load ptr, ptr %.sroa.09.013.i.i.i258, align 8, !tbaa !85 ; 2 uses
  %i.gz = load i8, ptr %i.gu, align 8             ; 2 uses
  %i.ha = trunc i8 %i.gz to i1                    ; 2 uses
  %i.hb = load ptr, ptr %i.gv, align 8
  %i.hc = select i1 %i.ha, ptr %i.hb, ptr %i.gw
  %i.hd = load i64, ptr %i.gx, align 8
  %i.he = lshr i8 %i.gz, 1
  %i.hf = zext nneg i8 %i.he to i64
  %i.hg = select i1 %i.ha, i64 %i.hd, i64 %i.hf
  %i.hh = load ptr, ptr %i.gy, align 8, !tbaa !33
  %i.hi = load ptr, ptr %i.hh, align 8
  invoke void %i.hi(ptr noundef nonnull align 8 dereferenceable(8) %i.gy, ptr %i.hc, i64 %i.hg, i32 noundef 4, ptr nonnull @.str.64, i64 37)
          to label %.noexc261 unwind label %.from..loopexit499, !inline_history !350

.noexc261:                                        ; preds = %.from..noexc261
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i258, i64 16 ; 2 uses
  %.not.i.i.i259 = icmp eq ptr %i.hj, %i.gt
  br i1 %.not.i.i.i259, label %_ZN4tlog5debugENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit262, label %.from..noexc261

_ZN4tlog5debugENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit262: ; preds = %.noexc261, %bb.ao, %.noexc260
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.hl = load <2 x i32>, ptr %i.gj, align 4, !tbaa !10
  store <2 x i32> %i.hl, ptr %i.hk, align 16, !tbaa !12
  br label %bb.ap

.from..loopexit499:                               ; preds = %.from..noexc261
  %lpad.loopexit501 = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.774

.from..loopexit.split-lp500:                      ; preds = %bb.al, %bb.an
  %lpad.loopexit.split-lp502 = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.774

bb.ap:                                            ; preds = %_ZN4tlog5debugENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit262, %bb.am
  %.reload.addr883 = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %.reload884 = load ptr, ptr %.reload.addr883, align 16, !tbaa !693
  %i.hm = getelementptr inbounds nuw i8, ptr %.reload884, i64 220 ; 2 uses
  store i32 1, ptr %i.hm, align 4, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #44
  invoke void @_ZN3tev12rec709ChromaEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::__1::array.86") align 4 %13)
          to label %bb.aq unwind label %.from.765

bb.aq:                                            ; preds = %bb.ap
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !441
  invoke void @_ZN3tev23convertColorspaceMatrixERKNSt3__15arrayIN7nanogui5ArrayIfLm2EEELm4EEES7_NS_16ERenderingIntentENS0_8optionalIS4_EE(ptr dead_on_unwind nonnull writable sret(%"struct.nanogui::Matrix") align 4 %14, ptr noundef nonnull align 4 dereferenceable(32) %.reload.addr920, ptr noundef nonnull align 4 dereferenceable(32) %13, i32 noundef %i.hn, i64 0, i8 0)
          to label %bb.ar unwind label %.from.765

bb.ar:                                            ; preds = %bb.aq
  %.reload882 = load ptr, ptr %.reload.addr883, align 16, !tbaa !693 ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.reload882, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ho, ptr noundef nonnull align 4 dereferenceable(36) %14, i64 36, i1 false), !tbaa.struct !696
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #44
  %i.hp = getelementptr inbounds nuw i8, ptr %.reload882, i64 172
  %i.hq = getelementptr inbounds nuw i8, ptr %.reload882, i64 204 ; 2 uses
  %i.hr = load i8, ptr %i.hq, align 4, !tbaa !697, !range !251, !noundef !252
  %i.hs = trunc nuw i8 %i.hr to i1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(33) %i.hp, ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr920, i64 32, i1 false)
  br i1 %i.hs, label %_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IRS5_vEERS6_OT_.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i8 1, ptr %i.hq, align 4, !tbaa !697
  br label %_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IRS5_vEERS6_OT_.exit

_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IRS5_vEERS6_OT_.exit: ; preds = %bb.as, %bb.ar
  %.reload814 = load ptr, ptr %.reload.addr821, align 16, !tbaa !693
  call void @llvm.experimental.noalias.scope.decl(metadata !6871)
  store i16 8, ptr %.reload.addr930, align 8, !tbaa !13, !noalias !6871
  %i.ht = invoke i32 (ptr, i32, ...) @TIFFGetFieldDefaulted(ptr noundef %.reload814, i32 noundef 258, ptr noundef nonnull %.reload.addr930)
          to label %.noexc264 unwind label %.from..loopexit.split-lp ; 0 uses

.noexc264:                                        ; preds = %_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IRS5_vEERS6_OT_.exit
  %.reload812 = load ptr, ptr %.reload.addr821, align 16, !tbaa !693
  %i.hu = load i16, ptr %.reload.addr930, align 8, !tbaa !13, !noalias !6871
  %i.hv = zext nneg i16 %i.hu to i32
  %i.hw = shl nuw i32 1, %i.hv
  %i.hx = zext i32 %i.hw to i64                   ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6874)
  %i.hy = invoke ptr @TIFFFindField(ptr noundef %.reload812, i32 noundef 301, i32 noundef 0)
          to label %.noexc265 unwind label %.from..loopexit.split-lp

.noexc265:                                        ; preds = %.noexc264
  %.not.i.i263 = icmp eq ptr %i.hy, null
  br i1 %.not.i.i263, label %.sink.split558.sink.split, label %bb.at

bb.at:                                            ; preds = %.noexc265
  %.reload = load ptr, ptr %.reload.addr821, align 16, !tbaa !693
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.reload.addr925, i8 0, i64 24, i1 false), !noalias !6877
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 5 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.ib = invoke i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %.reload, i32 noundef 301, ptr noundef nonnull %.reload.addr925, ptr noundef nonnull %i.hz, ptr noundef nonnull %i.ia)
          to label %.noexc266 unwind label %.from..loopexit.split-lp

.noexc266:                                        ; preds = %bb.at
  %.not15.i.i = icmp eq i32 %i.ib, 0
  br i1 %.not15.i.i, label %.sink.split558.sink.split, label %bb.au

bb.au:                                            ; preds = %.noexc266
  %i.ic = load ptr, ptr %.reload.addr925, align 16, !tbaa !18, !noalias !6877 ; 2 uses
  %.not20.i.i = icmp eq ptr %i.ic, null           ; 2 uses
  %spec.select.i.i = select i1 %.not20.i.i, i64 0, i64 %i.hx
  %i.id = load ptr, ptr %i.hz, align 8, !tbaa !18, !noalias !6877 ; 2 uses
  %.not20.1.i.i = icmp eq ptr %i.id, null
  %.sroa.8.0.i.i = select i1 %.not20.1.i.i, i64 0, i64 %i.hx
  %i.ie = load ptr, ptr %i.ia, align 16, !tbaa !18, !noalias !6877 ; 2 uses
  %.not20.2.i.i = icmp eq ptr %i.ie, null
  %.sroa.10.0.i.i = select i1 %.not20.2.i.i, i64 0, i64 %i.hx
  store ptr %i.ic, ptr %.reload.addr915, align 8, !alias.scope !6877
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  store i64 %spec.select.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 16, !alias.scope !6877
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %i.id, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !6877
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 %.sroa.8.0.i.i, ptr %.sroa.8.0..sroa_idx.i.i, align 16, !alias.scope !6877
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.ie, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !alias.scope !6877
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 %.sroa.10.0.i.i, ptr %.sroa.10.0..sroa_idx.i.i, align 16, !tbaa !12, !alias.scope !6877
  br i1 %.not20.i.i, label %.sink.split558, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.if = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc272 unwind label %.from..loopexit.split-lp

.noexc272:                                        ; preds = %bb.av
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !70 ; 7 uses
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !72
  %i.ii = and i32 %i.ih, 4
  %.not.i.i267 = icmp eq i32 %i.ii, 0
  br i1 %.not.i.i267, label %bb.aw, label %_ZN4tlog5debugENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit274

bb.aw:                                            ; preds = %.noexc272
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !83 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !84 ; 2 uses
  %.not12.i.i.i268 = icmp eq ptr %i.ik, %i.im
  br i1 %.not12.i.i.i268, label %_ZN4tlog5debugENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit274, label %.from..lr.ph.i.i.i269

.from..lr.ph.i.i.i269:                            ; preds = %bb.aw
  %i.in = getelementptr inbounds nuw i8, ptr %i.ig, i64 32
  %i.io = getelementptr inbounds nuw i8, ptr %i.ig, i64 48
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ig, i64 33
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ig, i64 40
  br label %.from..noexc273

.from..noexc273:                                  ; preds = %.noexc273, %.from..lr.ph.i.i.i269
  %.sroa.09.013.i.i.i270 = phi ptr [ %i.ik, %.from..lr.ph.i.i.i269 ], [ %i.jc, %.noexc273 ] ; 2 uses
  %i.ir = load ptr, ptr %.sroa.09.013.i.i.i270, align 8, !tbaa !85 ; 2 uses
  %i.is = load i8, ptr %i.in, align 8             ; 2 uses
  %i.it = trunc i8 %i.is to i1                    ; 2 uses
  %i.iu = load ptr, ptr %i.io, align 8
  %i.iv = select i1 %i.it, ptr %i.iu, ptr %i.ip
  %i.iw = load i64, ptr %i.iq, align 8
  %i.ix = lshr i8 %i.is, 1
  %i.iy = zext nneg i8 %i.ix to i64
  %i.iz = select i1 %i.it, i64 %i.iw, i64 %i.iy
  %i.ja = load ptr, ptr %i.ir, align 8, !tbaa !33
  %i.jb = load ptr, ptr %i.ja, align 8
  invoke void %i.jb(ptr noundef nonnull align 8 dereferenceable(8) %i.ir, ptr %i.iv, i64 %i.iz, i32 noundef 4, ptr nonnull @.str.65, i64 43)
          to label %.noexc273 unwind label %.from..loopexit, !inline_history !350

.noexc273:                                        ; preds = %.from..noexc273
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i270, i64 16 ; 2 uses
  %.not.i.i.i271 = icmp eq ptr %i.jc, %i.im
  br i1 %.not.i.i.i271, label %_ZN4tlog5debugENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit274, label %.from..noexc273

_ZN4tlog5debugENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit274: ; preds = %.noexc273, %bb.aw, %.noexc272
  %i.jd = load i64, ptr %.reload.addr941, align 8, !tbaa !24 ; 4 uses
  %i.je = icmp ugt i64 %i.jd, 3
  br i1 %i.je, label %bb.ax, label %.preheader.split

.preheader.split:                                 ; preds = %_ZN4tlog5debugENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit274
  %.not512 = icmp eq i64 %i.jd, 0
  br i1 %.not512, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader.split
  %i.jf = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 16, !tbaa !92
  %i.jg = icmp ult i64 %i.jf, 2
  br i1 %i.jg, label %.lr.ph._crit_edge, label %.lr.ph.from..preheader

.lr.ph.from..preheader:                           ; preds = %.lr.ph.preheader
  %exitcond.not94 = icmp eq i64 %i.jd, 1
  br i1 %exitcond.not94, label %._crit_edge, label %.lr.ph.lr.ph, !llvm.loop !6878

.lr.ph.lr.ph:                                     ; preds = %.lr.ph.from..preheader
  br label %.lr.ph, !llvm.loop !6878

bb.ax:                                            ; preds = %_ZN4tlog5debugENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit274
  %i.jh = call ptr @__cxa_allocate_exception(i64 16) #44 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #44
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull @.str.66)
          to label %bb.ay unwind label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit277.thread

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZNSt13runtime_errorC2ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.jh, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.az unwind label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3tev14ImageLoadErrorE, i64 16), ptr %i.jh, align 8, !tbaa !33
  invoke void @__cxa_throw(ptr nonnull %i.jh, ptr nonnull @_ZTIN3tev14ImageLoadErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #45
          to label %bb.ds unwind label %.thread28

.from.765:                                        ; preds = %bb.ap, %bb.aq
  %i.ji = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #44
  br label %.from.774

.from..loopexit:                                  ; preds = %.from..noexc273
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.774

.from..loopexit.split-lp:                         ; preds = %_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IRS5_vEERS6_OT_.exit, %.noexc264, %bb.at, %bb.av
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.774

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit277.thread: ; preds = %bb.ax
  %i.jj = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.757.sink.split

bb.ba:                                            ; preds = %bb.ay
  %i.jk = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.jl = load i8, ptr %12, align 8
  %i.jm = trunc i8 %i.jl to i1
  br i1 %i.jm, label %.split476, label %.from.757.sink.split

.thread28:                                        ; preds = %bb.az
  %i.jn = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.jo = load i8, ptr %12, align 8
  %i.jp = trunc i8 %i.jo to i1
  br i1 %i.jp, label %.split476, label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit277754

.split476:                                        ; preds = %.thread28, %bb.ba
  %i.jq = phi { ptr, i32 } [ %i.jn, %.thread28 ], [ %i.jk, %bb.ba ] ; 2 uses
  %.015130 = phi i1 [ false, %.thread28 ], [ true, %bb.ba ]
  %i.jr = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !12
  %i.jt = load i64, ptr %12, align 8
  %i.ju = and i64 %i.jt, -2
  call void @_ZdlPvm(ptr noundef %i.js, i64 noundef %i.ju) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #44
  br i1 %.015130, label %.from.757, label %.from.774

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit277754: ; preds = %.thread28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #44
  br label %.from.774

.from.757.sink.split:                             ; preds = %bb.ba, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit277.thread
  %.pn180475.ph = phi { ptr, i32 } [ %i.jj, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit277.thread ], [ %i.jk, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #44
  br label %.from.757

.from.757:                                        ; preds = %.from.757.sink.split, %.split476
  %.pn180475 = phi { ptr, i32 } [ %i.jq, %.split476 ], [ %.pn180475.ph, %.from.757.sink.split ]
  call void @__cxa_free_exception(ptr %i.jh) #44
  br label %.from.774

.lr.ph.from..._crit_edge.loopexit_crit_edge:      ; preds = %.lr.ph.from..a
  br label %._crit_edge, !llvm.loop !6878

._crit_edge:                                      ; preds = %.lr.ph.from..preheader, %.lr.ph.from..._crit_edge.loopexit_crit_edge, %.preheader.split
  %.reload.addr831 = getelementptr inbounds nuw i8, ptr %0, i64 426
  %.reload832 = load i16, ptr %.reload.addr831, align 2, !tbaa !693
  %.reload.addr826 = getelementptr inbounds nuw i8, ptr %0, i64 424
  %.reload827 = load i16, ptr %.reload.addr826, align 8, !tbaa !693
  %.reload816 = load ptr, ptr %.reload.addr821, align 16, !tbaa !693
  %i.jv = icmp eq i16 %.reload827, 3
  %narrow810 = select i1 %i.jv, i16 16, i16 %.reload832
  %i.jw = zext nneg i16 %narrow810 to i64
  %notmask176 = shl nsw i64 -1, %i.jw
  %i.jx = xor i64 %notmask176, -1
  store i64 %i.jx, ptr %.reload.addr937, align 8, !tbaa !24
  store i32 0, ptr %.reload.addr925, align 16, !tbaa !108
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 2 uses
  store i32 0, ptr %i.jy, align 4, !tbaa !108
  store i32 0, ptr %i.hz, align 8, !tbaa !108
  store i32 65535, ptr %.reload.addr926, align 16, !tbaa !108
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 2 uses
  store i32 65535, ptr %i.jz, align 4, !tbaa !108
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  store i32 65535, ptr %i.ka, align 8, !tbaa !108
  %i.kb = invoke { ptr, i64 } @_ZN3tev11tiffGetSpanItEENSt3__14spanIKT_Lm18446744073709551615EEEP4tiffj(ptr noundef %.reload816, i32 noundef 342)
          to label %bb.be unwind label %.from.695 ; 2 uses

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.lr.ph.from..a
  %16 = phi i64 [ 1, %.lr.ph.lr.ph ], [ %21, %.lr.ph.from..a ] ; 3 uses
  %17 = getelementptr inbounds nuw [16 x i8], ptr %.reload.addr915, i64 %16
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %19 = load i64, ptr %18, align 16, !tbaa !92
  %20 = icmp ult i64 %19, 2
  br i1 %20, label %.lr.ph._crit_edge, label %.lr.ph.from..a, !llvm.loop !6878

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %storemerge511.lcssa = phi i64 [ 0, %.lr.ph.preheader ], [ %16, %.lr.ph ]
  %i.kc = call ptr @__cxa_allocate_exception(i64 16) #44 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #44
  store i64 %storemerge511.lcssa, ptr %.reload.addr926, align 16, !tbaa !12, !noalias !6879
  invoke void @_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %11, ptr nonnull @.str.67, i64 40, i64 4, ptr nonnull %.reload.addr926)
          to label %bb.bb unwind label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit281.thread

bb.bb:                                            ; preds = %.lr.ph._crit_edge
  invoke void @_ZNSt13runtime_errorC2ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.kc, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.bc unwind label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3tev14ImageLoadErrorE, i64 16), ptr %i.kc, align 8, !tbaa !33
  invoke void @__cxa_throw(ptr nonnull %i.kc, ptr nonnull @_ZTIN3tev14ImageLoadErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #45
          to label %bb.ds unwind label %.thread34

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit281.thread: ; preds = %.lr.ph._crit_edge
  %i.kd = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.747.sink.split

bb.bd:                                            ; preds = %bb.bb
  %i.ke = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.kf = load i8, ptr %11, align 8
  %i.kg = trunc i8 %i.kf to i1
  br i1 %i.kg, label %.split480, label %.from.747.sink.split

.thread34:                                        ; preds = %bb.bc
  %i.kh = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ki = load i8, ptr %11, align 8
  %i.kj = trunc i8 %i.ki to i1
  br i1 %i.kj, label %.split480, label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit281748

.split480:                                        ; preds = %.thread34, %bb.bd
  %i.kk = phi { ptr, i32 } [ %i.kh, %.thread34 ], [ %i.ke, %bb.bd ] ; 2 uses
  %.014936 = phi i1 [ false, %.thread34 ], [ true, %bb.bd ]
  %i.kl = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !12
  %i.kn = load i64, ptr %11, align 8
  %i.ko = and i64 %i.kn, -2
  call void @_ZdlPvm(ptr noundef %i.km, i64 noundef %i.ko) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #44
  br i1 %.014936, label %.from.747, label %.from.774

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit281748: ; preds = %.thread34
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #44
  br label %.from.774

.from.747.sink.split:                             ; preds = %bb.bd, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit281.thread
  %.pn179479.ph = phi { ptr, i32 } [ %i.kd, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit281.thread ], [ %i.ke, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #44
  br label %.from.747

.from.747:                                        ; preds = %.from.747.sink.split, %.split480
  %.pn179479 = phi { ptr, i32 } [ %i.kk, %.split480 ], [ %.pn179479.ph, %.from.747.sink.split ]
  call void @__cxa_free_exception(ptr %i.kc) #44
  br label %.from.774

.lr.ph.from..a:                                   ; preds = %.lr.ph
  %21 = add nuw nsw i64 %16, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %21, %i.jd
  br i1 %exitcond.not, label %.lr.ph.from..._crit_edge.loopexit_crit_edge, label %.lr.ph, !llvm.loop !6878

bb.be:                                            ; preds = %._crit_edge
  %i.kp = extractvalue { ptr, i64 } %i.kb, 1
  %i.kq = icmp ugt i64 %i.kp, 5
  br i1 %i.kq, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.kr = extractvalue { ptr, i64 } %i.kb, 0      ; 6 uses
  %i.ks = load i16, ptr %i.kr, align 2, !tbaa !13
  %i.kt = zext i16 %i.ks to i32
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kr, i64 4
  %i.kv = load i16, ptr %i.ku, align 2, !tbaa !13
  %i.kw = zext i16 %i.kv to i32
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  %i.ky = load i16, ptr %i.kx, align 2, !tbaa !13
  %i.kz = zext i16 %i.ky to i32
  store i32 %i.kt, ptr %.reload.addr925, align 16
  store i32 %i.kw, ptr %i.jy, align 4
  store i32 %i.kz, ptr %i.hz, align 8, !tbaa !12
  %i.la = getelementptr inbounds nuw i8, ptr %i.kr, i64 2
  %i.lb = load i16, ptr %i.la, align 2, !tbaa !13
  %i.lc = zext i16 %i.lb to i32
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kr, i64 6
  %i.le = load i16, ptr %i.ld, align 2, !tbaa !13
  %i.lf = zext i16 %i.le to i32
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kr, i64 10
  %i.lh = load i16, ptr %i.lg, align 2, !tbaa !13
  %i.li = zext i16 %i.lh to i32
  store i32 %i.lc, ptr %.reload.addr926, align 16
  store i32 %i.lf, ptr %i.jz, align 4
  store i32 %i.li, ptr %i.ka, align 8, !tbaa !12
  invoke void @_ZN4tlog5debugIJRN7nanogui5ArrayIiLm3EEES4_EEEvN3fmt3v127fstringIJDpT_EE1tEDpOS8_(ptr nonnull @.str.68, i64 29, ptr noundef nonnull align 4 dereferenceable(12) %.reload.addr925, ptr noundef nonnull align 4 dereferenceable(12) %.reload.addr926)
          to label %bb.bg unwind label %.from.695

.from.695:                                        ; preds = %._crit_edge, %bb.bf
  %i.lj = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.774

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.lk = load i32, ptr %i.ka, align 8, !tbaa !108
  %i.ll = load i32, ptr %i.hz, align 8, !tbaa !108
  %i.lm = sub nsw i32 %i.lk, %i.ll
  %i.ln = sitofp i32 %i.lm to float
  %i.lo = load <2 x i32>, ptr %.reload.addr926, align 16, !tbaa !108
  %i.lp = load <2 x i32>, ptr %.reload.addr925, align 16, !tbaa !108
  %i.lq = sub nsw <2 x i32> %i.lo, %i.lp
  %i.lr = sitofp <2 x i32> %i.lq to <2 x float>
  %i.ls = fdiv <2 x float> splat (float 1.000000e+00), %i.lr
  %i.lt = fdiv float 1.000000e+00, %i.ln
  store <2 x float> %i.ls, ptr %.reload.addr930, align 8
  %.sroa.225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 400
  store float %i.lt, ptr %.sroa.225.0..sroa_idx, align 16
  %i.lu = load atomic i8, ptr @_ZGVZN3tev10ThreadPool6globalEvE4pool acquire, align 8
  %i.lv = icmp eq i8 %i.lu, 0
  br i1 %i.lv, label %bb.bh, label %_ZN3tev10ThreadPool6globalEv.exit291, !prof !94

bb.bh:                                            ; preds = %bb.bg
  %i.lw = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #44
  %.not.i288 = icmp eq i32 %i.lw, 0
  br i1 %.not.i288, label %_ZN3tev10ThreadPool6globalEv.exit291, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZN3tev10ThreadPoolC1Ev(ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool)
          to label %bb.bj unwind label %.body289.from.689

bb.bj:                                            ; preds = %bb.bi
  %i.lx = call i32 @__cxa_atexit(ptr nonnull @_ZN3tev10ThreadPoolD1Ev, ptr nonnull @_ZZN3tev10ThreadPool6globalEvE4pool, ptr nonnull @__dso_handle) #44 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #44
  br label %_ZN3tev10ThreadPool6globalEv.exit291

.body289.from.689:                                ; preds = %bb.bi
  %i.ly = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #44
  br label %.from.774

_ZN3tev10ThreadPool6globalEv.exit291:             ; preds = %bb.bj, %bb.bh, %bb.bg
  %.reload.addr905 = getelementptr inbounds nuw i8, ptr %0, i64 352
  %.reload906 = load i64, ptr %.reload.addr905, align 16, !tbaa !693 ; 2 uses
  %.reload.addr895 = getelementptr inbounds nuw i8, ptr %0, i64 416
  %.reload896 = load i32, ptr %.reload.addr895, align 16, !tbaa !693
  %.reload.addr848 = getelementptr inbounds nuw i8, ptr %0, i64 328
  %.reload849 = load ptr, ptr %.reload.addr848, align 8, !tbaa !693 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.reload849, i64 16
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !68
  %i.mb = mul i64 %i.ma, %.reload906
  store ptr %.reload.addr942, ptr %10, align 8, !tbaa !48
  %i.mc = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %.reload849, ptr %i.mc, align 8, !tbaa !101
  %i.md = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %.reload.addr941, ptr %i.md, align 8, !tbaa !97
  %i.me = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %.reload.addr937, ptr %i.me, align 8, !tbaa !97
  %i.mf = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %.reload.addr925, ptr %i.mf, align 8, !tbaa !553
  %i.mg = getelementptr inbounds nuw i8, ptr %10, i64 40
  store ptr %.reload.addr915, ptr %i.mg, align 8, !tbaa !99
  %i.mh = getelementptr inbounds nuw i8, ptr %10, i64 48
  store ptr %.reload.addr930, ptr %i.mh, align 8, !tbaa !239
  invoke fastcc void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNS_14postprocessRgbEP4tiffttmRKNS_16MultiChannelViewIfEERNS_9ImageDataERKNS2_4spanIKhLm18446744073709551615EEENS_10EAlphaKindEiE3$_1EENS_4TaskIvEES4_S4_mT0_i"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task") align 8 %.reload.addr917, ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool, i64 noundef 0, i64 noundef %.reload906, i64 noundef %i.mb, ptr noundef nonnull byval(%class.anon.218) align 8 %10, i32 noundef %.reload896)
          to label %bb.bk unwind label %.body289.from.

bb.bk:                                            ; preds = %_ZN3tev10ThreadPool6globalEv.exit291
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.mj = load ptr, ptr %i.mi, align 16, !tbaa !37
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %i.ml = load atomic i32, ptr %i.mk acquire, align 4
  %i.mm = icmp slt i32 %i.ml, 2
  br i1 %i.mm, label %bb.bl, label %AfterCoroSave568

bb.bl:                                            ; preds = %bb.bk
  %i.mn = load ptr, ptr %i.mi, align 16, !tbaa !37
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  %i.mp = atomicrmw add ptr %i.mo, i32 -1 acq_rel, align 4
  %i.mq = icmp slt i32 %i.mp, 1
  br i1 %i.mq, label %bb.bm, label %.thread485.sink.split

bb.bm:                                            ; preds = %bb.bl
  %i.mr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i296 unwind label %.from..loopexit.split-lp.i.i293

.noexc.i.i296:                                    ; preds = %bb.bm
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !70 ; 7 uses
  %i.mt = load i32, ptr %i.ms, align 8, !tbaa !72
  %i.mu = and i32 %i.mt, 8
  %.not.i.i.i.i297 = icmp eq i32 %i.mu, 0
  br i1 %.not.i.i.i.i297, label %bb.bn, label %.thread485.sink.split

bb.bn:                                            ; preds = %.noexc.i.i296
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !83 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ms, i64 16
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !84 ; 2 uses
  %.not12.i.i.i.i.i298 = icmp eq ptr %i.mw, %i.my
  br i1 %.not12.i.i.i.i.i298, label %.thread485.sink.split, label %.from..lr.ph.i.i.i.i.i299

.from..lr.ph.i.i.i.i.i299:                        ; preds = %bb.bn
  %i.mz = getelementptr inbounds nuw i8, ptr %i.ms, i64 32
  %i.na = getelementptr inbounds nuw i8, ptr %i.ms, i64 48
  %i.nb = getelementptr inbounds nuw i8, ptr %i.ms, i64 33
  %i.nc = getelementptr inbounds nuw i8, ptr %i.ms, i64 40
  br label %.from..noexc2.i.i303

.from..noexc2.i.i303:                             ; preds = %.noexc2.i.i303, %.from..lr.ph.i.i.i.i.i299
  %.sroa.09.013.i.i.i.i.i300 = phi ptr [ %i.mw, %.from..lr.ph.i.i.i.i.i299 ], [ %i.no, %.noexc2.i.i303 ] ; 2 uses
  %i.nd = load ptr, ptr %.sroa.09.013.i.i.i.i.i300, align 8, !tbaa !85 ; 2 uses
  %i.ne = load i8, ptr %i.mz, align 8             ; 2 uses
  %i.nf = trunc i8 %i.ne to i1                    ; 2 uses
  %i.ng = load ptr, ptr %i.na, align 8
  %i.nh = select i1 %i.nf, ptr %i.ng, ptr %i.nb
  %i.ni = load i64, ptr %i.nc, align 8
  %i.nj = lshr i8 %i.ne, 1
  %i.nk = zext nneg i8 %i.nj to i64
  %i.nl = select i1 %i.nf, i64 %i.ni, i64 %i.nk
  %i.nm = load ptr, ptr %i.nd, align 8, !tbaa !33
  %i.nn = load ptr, ptr %i.nm, align 8
  invoke void %i.nn(ptr noundef nonnull align 8 dereferenceable(8) %i.nd, ptr %i.nh, i64 %i.nl, i32 noundef 8, ptr nonnull @.str.187, i64 36)
          to label %.noexc2.i.i303 unwind label %.from..loopexit.i.i301, !inline_history !88

.noexc2.i.i303:                                   ; preds = %.from..noexc2.i.i303
  %i.no = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i300, i64 16 ; 2 uses
  %.not.i.i.i.i.i304 = icmp eq ptr %i.no, %i.my
  br i1 %.not.i.i.i.i.i304, label %.thread485.sink.split, label %.from..noexc2.i.i303

.from..loopexit.i.i301:                           ; preds = %.from..noexc2.i.i303
  %lpad.loopexit.i.i302 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bo

.from..loopexit.split-lp.i.i293:                  ; preds = %bb.bm
  %lpad.loopexit.split-lp.i.i294 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bo

bb.bo:                                            ; preds = %.from..loopexit.split-lp.i.i293, %.from..loopexit.i.i301
  %lpad.phi.i.i295 = phi { ptr, i32 } [ %lpad.loopexit.i.i302, %.from..loopexit.i.i301 ], [ %lpad.loopexit.split-lp.i.i294, %.from..loopexit.split-lp.i.i293 ]
  %i.np = extractvalue { ptr, i32 } %lpad.phi.i.i295, 0
  call void @__clang_call_terminate(ptr %i.np) #48
  unreachable

AfterCoroSave568:                                 ; preds = %bb.bk
  store i3 3, ptr %index.addr, align 4
  %i.nq = call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr917, ptr nonnull %0) #44
  br i1 %i.nq, label %CoroEnd, label %AfterCoroSuspend570

.body289.from.:                                   ; preds = %_ZN3tev10ThreadPool6globalEv.exit291
  %i.nr = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.774

AfterCoroSuspend570:                              ; preds = %resume.entry, %AfterCoroSave568
  %.pr483 = load ptr, ptr %.reload.addr917, align 16, !tbaa !89 ; 3 uses
  %.not.i306 = icmp eq ptr %.pr483, null
  br i1 %.not.i306, label %.thread485, label %bb.bp

bb.bp:                                            ; preds = %AfterCoroSuspend570
  %i.ns = getelementptr inbounds nuw i8, ptr %.pr483, i64 8
  %i.nt = load ptr, ptr %i.ns, align 8
  invoke void %i.nt(ptr nonnull %.pr483)
end_hunk_3
