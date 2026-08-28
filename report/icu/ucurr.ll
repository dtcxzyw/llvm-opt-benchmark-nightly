Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ucurr?download=true
inline.NumInlined: 408
inline.NumDeleted: 83
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@ucurr_isAvailable_78:bb.a
  %i.bt = add nuw nsw i32 %.038.i.i, 1
  br label %.preheader.i.i, !llvm.loop !93

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit77.jt1.i.i: ; preds = %bb.as, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %.thread.i.i

bb.au:                                            ; preds = %bb.aj
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.ai
  %.pn.i.i = phi { ptr, i32 } [ %i.bu, %bb.au ], [ %i.bj, %bb.ai ]
  call void @_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #17
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.ah
  %.pn.pn.i.i = phi { ptr, i32 } [ %.pn.i.i, %bb.av ], [ %i.bi, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.ac
  %.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.i.i, %bb.aw ], [ %i.av, %bb.ac ]
  call void @_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #17
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.ab
  %.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.pn.i.i, %bb.ax ], [ %i.au, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.aa
  %.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.i.i, %bb.ay ], [ %i.at, %bb.aa ]
  call void @_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #17
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.u
  %.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.i.i, %bb.az ], [ %i.af, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.r
  %.pn.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.i.i, %bb.ba ], [ %i.ad, %bb.r ]
  call void @_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #17
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.q
  %.pn.pn.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.i.i, %bb.bb ], [ %i.ac, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.m
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.i.i, %bb.bc ], [ %i.y, %bb.m ]
  call void @_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #17
  br label %bb.bh

bb.be:                                            ; preds = %bb.j
  store i32 %i.u, ptr %3, align 4, !tbaa !24
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.k, %bb.be, %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit77.jt1.i.i
  %.3.i.i = phi i1 [ true, %bb.be ], [ false, %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit77.jt1.i.i ], [ true, %bb.k ]
  %.not.i78.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i78.i.i, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit79.i.i, label %bb.bf

bb.bf:                                            ; preds = %.thread.i.i
  invoke void @ures_close_78(ptr noundef nonnull %i.t)
          to label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit79.i.i unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #18
  unreachable

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit79.i.i: ; preds = %bb.bf, %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.bx = add nuw nsw i32 %.036.i.i, 1
  br i1 %.3.i.i, label %.preheader84.i.i, label %.loopexit.i.i, !llvm.loop !94

bb.bh:                                            ; preds = %bb.bd, %bb.l
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i, %bb.bd ], [ %i.x, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.h
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i, %bb.bh ], [ %i.s, %bb.h ]
  call void @_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %.body.i

bb.bj:                                            ; preds = %.noexc6.i
  store i32 %i.o, ptr %3, align 4, !tbaa !24
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit79.i.i, %bb.g, %bb.bj
  %.not.i80.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i80.i.i, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %.loopexit.i.i
  invoke void @ures_close_78(ptr noundef nonnull %i.n)
          to label %bb.bm unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #18
  unreachable

bb.bm:                                            ; preds = %bb.bk, %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.ca = load i32, ptr %3, align 4, !tbaa !24    ; 3 uses
  %i.cb = icmp slt i32 %i.ca, 1
  br i1 %i.cb, label %.thread.i, label %thread-pre-split.i

bb.bn:                                            ; preds = %.noexc.i, %bb.f, %bb.e
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.bn, %bb.bi
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cc, %bb.bn ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i, %bb.bi ]
  call void @_ZN6icu_788internal16LocalOpenPointerI10UHashtableXadL_Z14uhash_close_78EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  resume { ptr, i32 } %eh.lpad-body.i

.thread.i:                                        ; preds = %bb.bm
  store ptr %i.i, ptr @_ZL9gIsoCodes, align 8, !tbaa !95
  br label %_ZL12initIsoCodesR10UErrorCode.exit

thread-pre-split.i:                               ; preds = %bb.bm, %bb.d
  %i.cd = phi i32 [ %i.ca, %bb.bm ], [ %i.j, %bb.d ]
  %.not.i7.i = icmp eq ptr %i.i, null
  br i1 %.not.i7.i, label %_ZL12initIsoCodesR10UErrorCode.exit, label %bb.bo

bb.bo:                                            ; preds = %thread-pre-split.i
  invoke void @uhash_close_78(ptr noundef nonnull %i.i)
          to label %._ZL12initIsoCodesR10UErrorCode.exit_crit_edge unwind label %bb.bp

._ZL12initIsoCodesR10UErrorCode.exit_crit_edge:   ; preds = %bb.bo
  %.pre = load i32, ptr %3, align 4, !tbaa !24
  br label %_ZL12initIsoCodesR10UErrorCode.exit

bb.bp:                                            ; preds = %bb.bo
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #18
  unreachable

_ZL12initIsoCodesR10UErrorCode.exit:              ; preds = %._ZL12initIsoCodesR10UErrorCode.exit_crit_edge, %.thread.i, %thread-pre-split.i
  %i.cg = phi i32 [ %.pre, %._ZL12initIsoCodesR10UErrorCode.exit_crit_edge ], [ %i.ca, %.thread.i ], [ %i.cd, %thread-pre-split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  store i32 %i.cg, ptr getelementptr inbounds nuw (i8, ptr @_ZL17gIsoCodesInitOnce, i64 4), align 4, !tbaa !96
  call void @_ZN6icu_7821umtx_initImplPostInitERNS_9UInitOnceE(ptr noundef nonnull align 4 dereferenceable(8) @_ZL17gIsoCodesInitOnce)
  br label %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit

bb.bq:                                            ; preds = %bb.c, %bb.b
  %i.ch = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL17gIsoCodesInitOnce, i64 4), align 4, !tbaa !96 ; 2 uses
  %i.ci = icmp slt i32 %i.ch, 1
  br i1 %i.ci, label %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  store i32 %i.ch, ptr %3, align 4, !tbaa !24
  br label %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit.thread

_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit: ; preds = %_ZL12initIsoCodesR10UErrorCode.exit, %bb.bq
  %.pr = load i32, ptr %3, align 4, !tbaa !24
  %i.cj = icmp slt i32 %.pr, 1
  br i1 %i.cj, label %bb.bs, label %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit.thread

bb.bs:                                            ; preds = %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit
  %i.ck = load ptr, ptr @_ZL9gIsoCodes, align 8, !tbaa !95
  %i.cl = call ptr @uhash_get_78(ptr noundef %i.ck, ptr noundef %0) ; 3 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit.thread, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.cn = fcmp ogt double %1, %2
  br i1 %i.cn, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  store i32 1, ptr %3, align 4, !tbaa !24
  br label %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit.thread

bb.bv:                                            ; preds = %bb.bt
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cp = load double, ptr %i.co, align 8, !tbaa !92
  %i.cq = fcmp ogt double %1, %i.cp
  br i1 %i.cq, label %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit.thread, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !91
  %11 = fcmp uge double %2, %i.cs
  %spec.select = zext i1 %11 to i8
  br label %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit.thread

_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit.thread: ; preds = %bb.br, %bb.a, %bb.bw, %bb.bu, %bb.bs, %bb.bv, %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit
  %.1 = phi i8 [ 0, %_ZN6icu_7813umtx_initOnceERNS_9UInitOnceEPFvR10UErrorCodeES3_.exit ], [ 0, %bb.bv ], [ 0, %bb.bu ], [ 0, %bb.bs ], [ %spec.select, %bb.bw ], [ 0, %bb.a ], [ 0, %bb.br ]
  ret i8 %.1
}

declare ptr @uhash_get_78(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef ptr @ucurr_openISOCurrencies_78(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(56) ptr @uprv_malloc_78(i64 noundef 56) #20 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 7, ptr %1, align 4, !tbaa !24
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) @_ZL17gEnumCurrencyList, i64 56, i1 false)
  %i.c = tail call noalias dereferenceable_or_null(8) ptr @uprv_malloc_78(i64 noundef 8) #20 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 7, ptr %1, align 4, !tbaa !24
  tail call void @uprv_free_78(ptr noundef nonnull %i.a)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i32 %0, ptr %i.c, align 4, !tbaa !100
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.e, align 4, !tbaa !102
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.f, align 8, !tbaa !103
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ %i.a, %bb.e ]
  ret ptr %.0
}

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define i32 @ucurr_countCurrencies_78(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 14 uses
  %3 = alloca %"class.icu_78::CharString", align 8 ; 10 uses
  %4 = alloca %"class.icu_78::internal::LocalOpenPointer", align 8 ; 5 uses
  %5 = alloca %"class.icu_78::internal::LocalOpenPointer", align 8 ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"class.icu_78::internal::LocalOpenPointer", align 8 ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.icu_78::internal::LocalOpenPointer", align 8 ; 5 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.ba, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %2, align 4, !tbaa !24
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.ba, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 0, ptr %i.a, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @_Z39ulocimp_getRegionForSupplementalData_78PKcbR10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::CharString") align 8 %3, ptr noundef %0, i1 noundef zeroext false, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.f = load i32, ptr %2, align 4, !tbaa !24
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.d, label %bb.av

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %3, align 8, !tbaa !26     ; 2 uses
  %i.i = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.h, i32 noundef 95) #19 ; 2 uses
  %.not63 = icmp eq ptr %i.i, null
  br i1 %.not63, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = trunc i64 %i.l to i32
  %i.n = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString8truncateEi(ptr noundef nonnull align 8 dereferenceable(60) %3, i32 noundef %i.m)
          to label %bb.g unwind label %bb.f       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.p = invoke ptr @ures_openDirect_78(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.a)
          to label %bb.h unwind label %bb.l       ; 3 uses

bb.h:                                             ; preds = %bb.g
  %i.q = invoke ptr @ures_getByKey_78(ptr noundef %i.p, ptr noundef nonnull @.str.10, ptr noundef %i.p, ptr noundef nonnull %i.a)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.r = load ptr, ptr %3, align 8, !tbaa !26
  %i.s = invoke ptr @ures_getByKey_78(ptr noundef %i.p, ptr noundef %i.r, ptr noundef %i.q, ptr noundef nonnull %i.a)
          to label %bb.j unwind label %bb.n       ; 5 uses

bb.j:                                             ; preds = %bb.i
  store ptr %i.s, ptr %4, align 8, !tbaa !42
  %i.t = load i32, ptr %i.a, align 4, !tbaa !24   ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.loopexit.thread, label %.preheader

.preheader:                                       ; preds = %bb.j, %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit79
  %.051 = phi i32 [ %.253, %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit79 ], [ 0, %bb.j ] ; 5 uses
  %.0 = phi i32 [ %i.bn, %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit79 ], [ 0, %bb.j ] ; 3 uses
  %i.v = invoke i32 @ures_getSize_78(ptr noundef %i.s)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %.preheader
  %i.w = icmp slt i32 %.0, %i.v
  br i1 %i.w, label %bb.p, label %.loopexit

bb.l:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.m:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.n:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.o:                                             ; preds = %.preheader
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.p:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.ab = invoke ptr @ures_getByIndex_78(ptr noundef %i.s, i32 noundef %.0, ptr noundef null, ptr noundef nonnull %i.a)
          to label %bb.q unwind label %bb.y       ; 6 uses

bb.q:                                             ; preds = %bb.p
  store ptr %i.ab, ptr %5, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 0, ptr %i.b, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.ac = invoke ptr @ures_getByKey_78(ptr noundef %i.ab, ptr noundef nonnull @.str.7, ptr noundef null, ptr noundef nonnull %i.a)
          to label %bb.r unwind label %bb.z       ; 4 uses

bb.r:                                             ; preds = %bb.q
  store ptr %i.ac, ptr %6, align 8, !tbaa !42
  %i.ad = invoke ptr @ures_getIntVector_78(ptr noundef %i.ac, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
          to label %bb.s unwind label %bb.aa      ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !40
  %i.af = sext i32 %i.ae to i64
  %i.ag = shl nsw i64 %i.af, 32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !40
  %i.aj = zext i32 %i.ai to i64
  %i.ak = or disjoint i64 %i.ag, %i.aj
  %i.al = sitofp i64 %i.ak to double              ; 2 uses
  %i.am = invoke i32 @ures_getSize_78(ptr noundef %i.ab)
          to label %bb.t unwind label %bb.ab

bb.t:                                             ; preds = %bb.s
  %i.an = icmp sgt i32 %i.am, 2
  br i1 %i.an, label %bb.u, label %bb.ai

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i32 0, ptr %i.c, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.ao = invoke ptr @ures_getByKey_78(ptr noundef %i.ab, ptr noundef nonnull @.str.8, ptr noundef null, ptr noundef nonnull %i.a)
          to label %bb.v unwind label %bb.ac      ; 4 uses

bb.v:                                             ; preds = %bb.u
  store ptr %i.ao, ptr %7, align 8, !tbaa !42
  %i.ap = invoke ptr @ures_getIntVector_78(ptr noundef %i.ao, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a)
          to label %bb.w unwind label %bb.ad      ; 2 uses

bb.w:                                             ; preds = %bb.v
  %i.aq = fcmp ult double %1, %i.al
  br i1 %i.aq, label %bb.ae, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !40
  %i.as = sext i32 %i.ar to i64
  %i.at = shl nsw i64 %i.as, 32
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !40
  %i.aw = zext i32 %i.av to i64
  %i.ax = or disjoint i64 %i.at, %i.aw
  %i.ay = sitofp i64 %i.ax to double
  %i.az = fcmp olt double %1, %i.ay
  %8 = zext i1 %i.az to i32
  %spec.select = add nsw i32 %.051, %8
  br label %bb.ae

bb.y:                                             ; preds = %bb.p
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.z:                                             ; preds = %bb.q
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.aa:                                            ; preds = %bb.r
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ab:                                            ; preds = %bb.s
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ac:                                            ; preds = %bb.u
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ad:                                            ; preds = %bb.v
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #17
  br label %bb.ah

bb.ae:                                            ; preds = %bb.x, %bb.w
  %.152 = phi i32 [ %.051, %bb.w ], [ %spec.select, %bb.x ]
  %.not.i = icmp eq ptr %i.ao, null
  br i1 %.not.i, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke void @ures_close_78(ptr noundef nonnull %i.ao)
          to label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #18
  unreachable

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit: ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %bb.aj

bb.ah:                                            ; preds = %bb.ad, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.ad ], [ %i.be, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %bb.ao

bb.ai:                                            ; preds = %bb.t
  %9 = fcmp oge double %1, %i.al
  %10 = zext i1 %9 to i32
  %i.bi = add nsw i32 %.051, %10
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit
  %.253 = phi i32 [ %.152, %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit ], [ %i.bi, %bb.ai ]
  %.not.i76 = icmp eq ptr %i.ac, null
  br i1 %.not.i76, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit77, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  invoke void @ures_close_78(ptr noundef nonnull %i.ac)
          to label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit77 unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #18
  unreachable

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit77: ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %.not.i78 = icmp eq ptr %i.ab, null
  br i1 %.not.i78, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit79, label %bb.am

bb.am:                                            ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit77
  invoke void @ures_close_78(ptr noundef nonnull %i.ab)
          to label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit79 unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  call void @__clang_call_terminate(ptr %i.bm) #18
  unreachable

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit79: ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit77, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.bn = add nuw nsw i32 %.0, 1
  br label %.preheader, !llvm.loop !105

bb.ao:                                            ; preds = %bb.ab, %bb.ah, %bb.aa
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bc, %bb.aa ], [ %.pn, %bb.ah ], [ %i.bd, %bb.ab ]
  call void @_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #17
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.z
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.ao ], [ %i.bb, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #17
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.y
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.ap ], [ %i.ba, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.o
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %bb.aq ], [ %i.aa, %bb.o ]
  call void @_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #17
  br label %bb.ay

.loopexit:                                        ; preds = %bb.k
  %.pre = load i32, ptr %i.a, align 4             ; 2 uses
  %i.bo = load i32, ptr %2, align 4, !tbaa !24    ; 2 uses
  %i.bp = icmp eq i32 %i.bo, 0
  %i.bq = icmp ne i32 %.pre, 0
  %or.cond = select i1 %i.bp, i1 true, i1 %i.bq
  br i1 %or.cond, label %.loopexit.thread, label %bb.as

.loopexit.thread:                                 ; preds = %bb.j, %.loopexit
  %.354114.a = phi i32 [ %.051, %.loopexit ], [ 0, %bb.j ]
  %i.br = phi i32 [ %.pre, %.loopexit ], [ %i.t, %bb.j ] ; 2 uses
  store i32 %i.br, ptr %2, align 4, !tbaa !24
  br label %bb.as

bb.as:                                            ; preds = %.loopexit, %.loopexit.thread
  %.354113 = phi i32 [ %.051, %.loopexit ], [ %.354114.a, %.loopexit.thread ]
  %i.bs = phi i32 [ %i.bo, %.loopexit ], [ %i.br, %.loopexit.thread ]
  %i.bt = icmp sgt i32 %i.bs, 0                   ; 2 uses
  %..354 = select i1 %i.bt, i32 undef, i32 %.354113
  %.not.i80 = icmp eq ptr %i.s, null
  br i1 %.not.i80, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit81, label %bb.at

bb.at:                                            ; preds = %bb.as
  invoke void @ures_close_78(ptr noundef nonnull %i.s)
          to label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit81 unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #18
  unreachable

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit81: ; preds = %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.av

bb.av:                                            ; preds = %bb.c, %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit81
  %.156 = phi i32 [ %..354, %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit81 ], [ 0, %bb.c ]
  %.1 = phi i1 [ %i.bt, %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit81 ], [ false, %bb.c ]
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.bx = load i8, ptr %i.bw, align 4, !tbaa !29
  %.not.i.i.i = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.by = load ptr, ptr %3, align 8, !tbaa !26
  invoke void @uprv_free_78(ptr noundef %i.by)
          to label %_ZN6icu_7810CharStringD2Ev.exit unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #18
  unreachable

_ZN6icu_7810CharStringD2Ev.exit:                  ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br i1 %.1, label %bb.ba, label %bb.bb

bb.ay:                                            ; preds = %bb.ar, %bb.n
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.ar ], [ %i.z, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.az

bb.az:                                            ; preds = %bb.l, %bb.ay, %bb.m, %bb.f
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.o, %bb.f ], [ %i.x, %bb.l ], [ %.pn.pn.pn.pn.pn.pn.pn, %bb.ay ], [ %i.y, %bb.m ]
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn

bb.ba:                                            ; preds = %_ZN6icu_7810CharStringD2Ev.exit, %bb.b, %bb.a
  br label %bb.bb

bb.bb:                                            ; preds = %_ZN6icu_7810CharStringD2Ev.exit, %bb.ba
  %.257 = phi i32 [ 0, %bb.ba ], [ %.156, %_ZN6icu_7810CharStringD2Ev.exit ]
  ret i32 %.257
}

declare ptr @ures_getIntVector_78(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define i32 @ucurr_forLocaleAndDate_78(ptr noundef %0, double noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 15 uses
  %6 = alloca %"class.icu_78::CharString", align 8 ; 10 uses
  %7 = alloca %"class.icu_78::internal::LocalOpenPointer", align 8 ; 6 uses
  %8 = alloca %"class.icu_78::internal::LocalOpenPointer", align 8 ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %9 = alloca %"class.icu_78::internal::LocalOpenPointer", align 8 ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %10 = alloca %"class.icu_78::internal::LocalOpenPointer", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 0, ptr %i.a, align 4, !tbaa !40
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.bp, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %5, align 4, !tbaa !24
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.bp, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq ptr %3, null
  %i.h = icmp ne i32 %4, 0
  %or.cond3 = and i1 %i.g, %i.h
  br i1 %or.cond3, label %bb.bo, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 0, ptr %i.b, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @_Z39ulocimp_getRegionForSupplementalData_78PKcbR10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::CharString") align 8 %6, ptr noundef %0, i1 noundef zeroext false, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %i.i = load i32, ptr %5, align 4, !tbaa !24
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %bb.e, label %bb.bl

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %6, align 8, !tbaa !26     ; 2 uses
  %i.l = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.k, i32 noundef 95) #19 ; 2 uses
  %.not100 = icmp eq ptr %i.l, null
  br i1 %.not100, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.k to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString8truncateEi(ptr noundef nonnull align 8 dereferenceable(60) %6, i32 noundef %i.p)
          to label %bb.h unwind label %bb.g       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.s = invoke ptr @ures_openDirect_78(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.b)
end_hunk_0
