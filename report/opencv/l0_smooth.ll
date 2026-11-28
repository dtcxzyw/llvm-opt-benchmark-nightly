Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/l0_smooth?download=true
inline.NumInlined: 569
inline.NumDeleted: 143
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN2cv8ximgproc8l0SmoothERKNS_11_InputArrayERKNS_12_OutputArrayEdd:bb.a
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i352

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i352: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i350, %bb.ht
  %i.tq = phi ptr [ %.pr.i351, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i350 ], [ %i.tm, %bb.ht ] ; 3 uses
  %.not.i.i1.i353 = icmp eq ptr %i.tq, null
  br i1 %.not.i.i1.i353, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit354, label %bb.hu

bb.hu:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i352
  %i.tr = getelementptr inbounds nuw i8, ptr %44, i64 16
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !45
  %i.tt = ptrtoint ptr %i.ts to i64
  %i.tu = ptrtoint ptr %i.tq to i64
  %i.tv = sub i64 %i.tt, %i.tu
  call void @_ZdlPvm(ptr noundef nonnull %i.tq, i64 noundef %i.tv) #17
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit354

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit354:       ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i352, %bb.hu
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %38) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #15
  %i.tw = load ptr, ptr %37, align 8, !tbaa !47   ; 3 uses
  %i.tx = load ptr, ptr %i.cs, align 8, !tbaa !44 ; 2 uses
  %.not4.i.i.i355 = icmp eq ptr %i.tw, %i.tx
  br i1 %.not4.i.i.i355, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i361, label %.lr.ph.i.i.i356

.lr.ph.i.i.i356:                                  ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit354, %.lr.ph.i.i.i356
  %.05.i.i.i357 = phi ptr [ %i.ty, %.lr.ph.i.i.i356 ], [ %i.tw, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit354 ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i357) #15
  %i.ty = getelementptr inbounds nuw i8, ptr %.05.i.i.i357, i64 208 ; 2 uses
  %.not.i.i.i358 = icmp eq ptr %i.ty, %i.tx
  br i1 %.not.i.i.i358, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i359, label %.lr.ph.i.i.i356, !llvm.loop !0

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i359: ; preds = %.lr.ph.i.i.i356
  %.pr.i360 = load ptr, ptr %37, align 8, !tbaa !47
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i361

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i361: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i359, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit354
  %i.tz = phi ptr [ %.pr.i360, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i359 ], [ %i.tw, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit354 ] ; 3 uses
  %.not.i.i1.i362 = icmp eq ptr %i.tz, null
  br i1 %.not.i.i1.i362, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit363, label %bb.hv

bb.hv:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i361
  %i.ua = load ptr, ptr %i.ct, align 8, !tbaa !45
  %i.ub = ptrtoint ptr %i.ua to i64
  %i.uc = ptrtoint ptr %i.tz to i64
  %i.ud = sub i64 %i.ub, %i.uc
  call void @_ZdlPvm(ptr noundef nonnull %i.tz, i64 noundef %i.ud) #17
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit363

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit363:       ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i361, %bb.hv
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %30) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %29) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  ret void

bb.hw:                                            ; preds = %bb.hs, %bb.hp, %bb.hm, %bb.hj
  %.pn163.pn = phi { ptr, i32 } [ %i.tc, %bb.hj ], [ %i.tf, %bb.hm ], [ %i.ti, %bb.hp ], [ %i.tl, %bb.hs ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %99) #15
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %bb.hi
  %.pn163.pn.pn = phi { ptr, i32 } [ %.pn163.pn, %bb.hw ], [ %i.tb, %bb.hi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #15
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hd, %bb.hx, %bb.cj
  %.pn229.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.iw, %bb.cj ], [ %.pn229.pn.pn.pn.pn.pn.pn, %bb.hd ], [ %.pn163.pn.pn, %bb.hx ]
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %44) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #15
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %bb.bt
  %.pn239 = phi { ptr, i32 } [ %i.db, %bb.bt ], [ %.pn229.pn.pn.pn.pn.pn.pn.pn.pn, %bb.hy ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %38) #15
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %bb.bs
  %.pn239.pn = phi { ptr, i32 } [ %.pn239, %bb.hz ], [ %.pn149.pn.pn.pn.pn, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #15
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %37) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #15
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ia, %bb.bm, %bb.bj
  %.pn239.pn.pn = phi { ptr, i32 } [ %.pn239.pn, %bb.ia ], [ %.pn145.pn.pn, %bb.bm ], [ %.pn141.pn.pn, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %30) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %29) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #15
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %bb.ay, %bb.av, %bb.as, %bb.ao, %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e
  %.pn243.pn = phi { ptr, i32 } [ %.pn243, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn239.pn.pn, %bb.ib ], [ %i.bh, %bb.as ], [ %i.bk, %bb.av ], [ %i.bn, %bb.ay ], [ %.pn133, %bb.ao ], [ %i.ba, %bb.al ], [ %i.h, %bb.e ], [ %.pn131, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254 ], [ %.pn129, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  resume { ptr, i32 } %.pn243.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !82
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.7) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #15 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 %i.d, ptr %i.a, align 8, !tbaa !83
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !18
  %i.g = load i64, ptr %i.a, align 8, !tbaa !83
  store i64 %i.g, ptr %i.b, align 8, !tbaa !19
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !19
  store i8 %i.i, ptr %i.h, align 1, !tbaa !19
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !84
  %i.l = load ptr, ptr %0, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZNK2cv12_OutputArray6createENS_5Size_IiEEiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24), i64, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare i64 @_ZNK2cv11_InputArray4sizeEi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #4

declare void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_17psf2otfERKN2cv11_InputArrayERKNS0_12_OutputArrayEii(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 12 uses
  %7 = alloca [2 x %"class.cv::Mat"], align 16    ; 9 uses
  %8 = alloca %"class.cv::MatExpr", align 8       ; 10 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator", align 1   ; 3 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 20 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 13 uses
  %14 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %15 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %16 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %17 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %18 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %19 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %20 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %21 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %22 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %23 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %24 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %25 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %26 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %27 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %28 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %29 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %30 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %31 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %32 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %33 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %34 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %35 = alloca %"class.cv::Mat", align 8          ; 13 uses
  %36 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %37 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %38 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %39 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %40 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %41 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %42 = alloca %"class.cv::_InputArray", align 8  ; 9 uses
  %43 = alloca %"class.cv::_OutputArray", align 8 ; 8 uses
  %44 = alloca %"class.cv::_InputArray", align 8  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #15
  %i.a = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0), !noalias !97
  %i.b = icmp eq i32 %i.a, 65536
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13, !noalias !97
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %35, ptr noundef nonnull align 8 dereferenceable(208) %i.d)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %35, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #15
  %i.e = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc unwind label %bb.i, !noalias !98

.noexc:                                           ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.f = icmp eq i32 %i.e, 65536
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13, !noalias !98
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %36, ptr noundef nonnull align 8 dereferenceable(208) %i.h)
          to label %_ZNK2cv11_InputArray6getMatEi.exit30 unwind label %bb.i

bb.e:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %36, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit30 unwind label %bb.i

_ZNK2cv11_InputArray6getMatEi.exit30:             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #15
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %37) #15
  %i.i = getelementptr inbounds nuw i8, ptr %35, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %36, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !27
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %bb.f, label %bb.m

bb.f:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit30
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #15
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %38, ptr noundef nonnull align 8 dereferenceable(208) %35)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.n = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %35, ptr noundef nonnull align 8 dereferenceable(208) %38)
          to label %bb.h unwind label %bb.k       ; 0 uses

bb.h:                                             ; preds = %bb.g
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %38) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #15
  br label %bb.m

bb.i:                                             ; preds = %bb.e, %bb.d, %_ZNK2cv11_InputArray6getMatEi.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.j:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %38) #15
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.q, %bb.k ], [ %i.p, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #15
  br label %bb.ci

bb.m:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit30, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #15
  %i.r = getelementptr inbounds nuw i8, ptr %39, i64 16
  store i32 0, ptr %i.r, align 8, !tbaa !29
  %i.s = getelementptr inbounds nuw i8, ptr %39, i64 20
  store i32 0, ptr %i.s, align 4, !tbaa !30
  store i32 16842752, ptr %39, align 8, !tbaa !28
  %i.t = getelementptr inbounds nuw i8, ptr %39, i64 8
  store ptr %35, ptr %i.t, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #15
  %i.u = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %40, i64 16
  store i64 0, ptr %i.v, align 8
  store i32 33619968, ptr %40, align 8, !tbaa !28
  store ptr %37, ptr %i.u, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !31
  %i.y = getelementptr inbounds nuw i8, ptr %35, i64 12 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #15
  %i.aa = sub nsw i32 %3, %i.z
  %i.ab = sub nsw i32 %2, %i.x
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %41, i8 0, i64 32, i1 false)
  invoke void @_ZN2cv14copyMakeBorderERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(24) %39, ptr noundef nonnull align 8 dereferenceable(24) %40, i32 noundef 0, i32 noundef %i.ab, i32 noundef 0, i32 noundef %i.aa, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %41)
          to label %bb.n unwind label %bb.cf

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #15
  %i.ac = getelementptr inbounds nuw i8, ptr %42, i64 16
  store i32 0, ptr %i.ac, align 8, !tbaa !29
  %i.ad = getelementptr inbounds nuw i8, ptr %42, i64 20
  store i32 0, ptr %i.ad, align 4, !tbaa !30
  store i32 16842752, ptr %42, align 8, !tbaa !28
  %i.ae = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 2 uses
  store ptr %37, ptr %i.ae, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #15
  %i.af = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %43, i64 16
  store i64 0, ptr %i.ag, align 8
  store i32 33619968, ptr %43, align 8, !tbaa !28
  store ptr %37, ptr %i.af, align 8, !tbaa !13
  %i.ah = load i32, ptr %i.y, align 4, !tbaa !32
  %.neg = sdiv i32 %i.ah, -2
  %i.ai = add i32 %.neg, %3                       ; 12 uses
  %i.aj = load i32, ptr %i.w, align 8, !tbaa !31
  %.neg20 = sdiv i32 %i.aj, -2
  %i.ak = add i32 %.neg20, %2                     ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  %i.al = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %42)
          to label %.noexc31 unwind label %bb.cg, !noalias !99

.noexc31:                                         ; preds = %bb.n
  %i.am = icmp eq i32 %i.al, 65536
  br i1 %i.am, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.noexc31
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !13, !noalias !99
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %12, ptr noundef nonnull align 8 dereferenceable(208) %i.an)
          to label %_ZNK2cv11_InputArray6getMatEi.exit.i unwind label %bb.cg

bb.p:                                             ; preds = %.noexc31
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %12, ptr noundef nonnull align 8 dereferenceable(24) %42, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit.i unwind label %bb.cg

_ZNK2cv11_InputArray6getMatEi.exit.i:             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  %i.ao = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %43)
          to label %.noexc.i unwind label %bb.v, !noalias !100

.noexc.i:                                         ; preds = %_ZNK2cv11_InputArray6getMatEi.exit.i
  %i.ap = icmp eq i32 %i.ao, 65536
  br i1 %i.ap, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.noexc.i
  %i.aq = load ptr, ptr %i.af, align 8, !tbaa !13, !noalias !100
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %13, ptr noundef nonnull align 8 dereferenceable(208) %i.aq)
          to label %_ZNK2cv11_InputArray6getMatEi.exit65.i unwind label %bb.v

bb.r:                                             ; preds = %.noexc.i
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %13, ptr noundef nonnull align 8 dereferenceable(24) %43, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit65.i unwind label %bb.v
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_17psf2otfERKN2cv11_InputArrayERKNS0_12_OutputArrayEii:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #15
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.av
  %.pn50.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn50.pn.pn.pn.pn.pn.pn.pn.i, %bb.bm ], [ %i.ef, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #15
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.au
  %.pn50.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn50.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.bn ], [ %i.ee, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  br label %.body.i

.body.i:                                          ; preds = %bb.bo, %bb.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.y
  %.pn50.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn50.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.bo ], [ %.pn.i, %bb.y ], [ %i.ed, %bb.at ], [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #15
  br label %bb.bp

bb.bp:                                            ; preds = %.body.i, %bb.v
  %.pn50.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn50.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %.body.i ], [ %i.ax, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  br label %.body

bb.bq:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %29) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %25) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #15
  %i.eq = getelementptr inbounds nuw i8, ptr %44, i64 16
  store i32 0, ptr %i.eq, align 8, !tbaa !29
  %i.er = getelementptr inbounds nuw i8, ptr %44, i64 20
  store i32 0, ptr %i.er, align 4, !tbaa !30
  store i32 16842752, ptr %44, align 8, !tbaa !28
  %i.es = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 2 uses
  store ptr %37, ptr %i.es, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.et = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %44)
          to label %.noexc46 unwind label %bb.ch, !noalias !106

.noexc46:                                         ; preds = %bb.bq
  %i.eu = icmp eq i32 %i.et, 65536
  br i1 %i.eu, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %.noexc46
  %i.ev = load ptr, ptr %i.es, align 8, !tbaa !13, !noalias !106
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %i.ev)
          to label %_ZNK2cv11_InputArray6getMatEi.exit.i34 unwind label %bb.ch

bb.bs:                                            ; preds = %.noexc46
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %44, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit.i34 unwind label %bb.ch

_ZNK2cv11_InputArray6getMatEi.exit.i34:           ; preds = %bb.bs, %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %7, ptr noundef nonnull align 8 dereferenceable(208) %6)
          to label %bb.bt unwind label %.thread.i

bb.bt:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit.i34
  %i.ew = getelementptr inbounds nuw i8, ptr %7, i64 208 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %i.ex = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !51 ; 6 uses
  %i.ez = icmp slt i32 %i.ey, 3
  br i1 %i.ez, label %bb.bx, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc.i36 unwind label %bb.cd

.noexc.i36:                                       ; preds = %bb.bu
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.6, i32 noundef 109) #16
          to label %bb.bv unwind label %bb.bw

bb.bv:                                            ; preds = %.noexc.i36
  unreachable

bb.bw:                                            ; preds = %.noexc.i36
  %i.fa = landingpad { ptr, i32 }
          cleanup
  %i.fb = load ptr, ptr %4, align 8, !tbaa !18    ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i37: ; preds = %bb.bw
  %i.fe = load i64, ptr %i.fc, align 8, !tbaa !19
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.ff) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i38: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %.loopexit.loopexit22.i

bb.bx:                                            ; preds = %bb.bt
  %i.fg = icmp sgt i32 %i.ey, 0
  br i1 %i.fg, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.fh = icmp eq i32 %i.ey, 2
  %.sroa.sel.v.sroa.sel.v.i44.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.fh, i64 88, i64 84
  %.sroa.sel.v.sroa.sel.v.i44.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %6, i64 %.sroa.sel.v.sroa.sel.v.i44.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %i.fi = load i32, ptr %.sroa.sel.v.sroa.sel.v.i44.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !52
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bx
  %i.fj = icmp eq i32 %i.ey, 0
  %i.fk = zext i1 %i.fj to i32
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.fl = phi i32 [ %i.fi, %bb.by ], [ %i.fk, %bb.bz ]
  %i.fm = icmp eq i32 %i.ey, 2
  %i.fn = getelementptr inbounds nuw i8, ptr %6, i64 84
  %i.fo = load i32, ptr %i.fn, align 4
  %i.fp = icmp sgt i32 %i.ey, -1
  %i.fq = zext i1 %i.fp to i32
  %i.fr = select i1 %i.fm, i32 %i.fo, i32 %i.fq
  %.sroa.2.0.insert.ext.i.i40 = zext i32 %i.fr to i64
  %.sroa.2.0.insert.shift.i.i41 = shl nuw i64 %.sroa.2.0.insert.ext.i.i40, 32
  %.sroa.0.0.insert.ext.i.i42 = zext i32 %i.fl to i64
  %.sroa.0.0.insert.insert.i.i43 = or disjoint i64 %.sroa.2.0.insert.shift.i.i41, %.sroa.0.0.insert.ext.i.i42
  %i.fs = load i32, ptr %6, align 8, !tbaa !26
  %i.ft = and i32 %i.fs, 4095
  invoke void @_ZN2cv3Mat5zerosENS_5Size_IiEEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %8, i64 %.sroa.0.0.insert.insert.i.i43, i32 noundef %i.ft)
          to label %bb.cb unwind label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.ew) #15
  %i.fu = load ptr, ptr %8, align 8, !tbaa !39, !noalias !107 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !41
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.fx = load ptr, ptr %i.fw, align 8
  invoke void %i.fx(ptr noundef nonnull align 8 dereferenceable(8) %i.fu, ptr noundef nonnull align 8 dereferenceable(688) %8, ptr noundef nonnull align 8 dereferenceable(208) %i.ew, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i unwind label %.body16.i

.body16.i:                                        ; preds = %bb.cb
  %i.fy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ew) #15
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %8) #15
  br label %.loopexit.loopexit22.i

_ZNK2cv7MatExprcvNS_3MatEEv.exit.i:               ; preds = %bb.cb
  %i.fz = getelementptr inbounds nuw i8, ptr %8, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.fz) #15
  %i.ga = getelementptr inbounds nuw i8, ptr %8, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ga) #15
  %i.gb = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.gb) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %9) #15
  invoke void @_ZN2cv5mergeEPKNS_3MatEmRKNS_12_OutputArrayE(ptr noundef nonnull %7, i64 noundef 2, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.cc unwind label %.loopexit.loopexit.i

bb.cc:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i
  invoke void @_ZN2cv3dftERKNS_11_InputArrayERKNS_12_OutputArrayEii(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 0, i32 noundef 0)
          to label %bb.ce unwind label %.loopexit.loopexit.i

.thread.i:                                        ; preds = %_ZNK2cv11_InputArray6getMatEi.exit.i34
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

bb.cd:                                            ; preds = %bb.ca, %bb.bu
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.loopexit22.i

.loopexit.loopexit22.i:                           ; preds = %bb.cd, %.body16.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i38
  %.pn.i35 = phi { ptr, i32 } [ %i.fy, %.body16.i ], [ %i.gd, %bb.cd ], [ %i.fa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i38 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #15
  br label %.loopexit.i

.loopexit.loopexit.i:                             ; preds = %bb.cc, %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i
  %i.ge = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ew) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #15
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %.loopexit.loopexit22.i, %.thread.i
  %.pn14.i = phi { ptr, i32 } [ %i.ge, %.loopexit.loopexit.i ], [ %i.gc, %.thread.i ], [ %.pn.i35, %.loopexit.loopexit22.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %.body49

bb.ce:                                            ; preds = %bb.cc
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ew) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %37) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %36) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %35) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #15
  ret void

bb.cf:                                            ; preds = %bb.m
  %i.gf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #15
  br label %bb.ci

bb.cg:                                            ; preds = %bb.p, %bb.o, %bb.n
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.cg, %bb.bp
  %.pn21 = phi { ptr, i32 } [ %.pn50.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.bp ], [ %i.gg, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #15
  br label %bb.ci

bb.ch:                                            ; preds = %bb.bs, %bb.br, %bb.bq
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %.body49

.body49:                                          ; preds = %bb.ch, %.loopexit.i
  %.pn24 = phi { ptr, i32 } [ %.pn14.i, %.loopexit.i ], [ %i.gh, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #15
  br label %bb.ci

bb.ci:                                            ; preds = %.body49, %.body, %bb.cf, %bb.l
  %.pn24.pn = phi { ptr, i32 } [ %.pn24, %.body49 ], [ %.pn21, %.body ], [ %i.gf, %bb.cf ], [ %.pn, %bb.l ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %37) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %36) #15
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.i
  %.pn24.pn.pn = phi { ptr, i32 } [ %.pn24.pn, %bb.ci ], [ %i.o, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %35) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #15
  resume { ptr, i32 } %.pn24.pn.pn
}

declare void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) unnamed_addr #2

declare void @_ZN2cvplERKNS_3MatES2_(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_114pow2absComplexERKN2cv11_InputArrayE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %3 = alloca [2 x %"class.cv::Mat"], align 16    ; 11 uses
  %4 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %6 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %7 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %8 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.a = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1), !noalias !110
  %i.b = icmp eq i32 %i.a, 65536
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13, !noalias !110
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(208) %i.d)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %3) #15
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 2 uses
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.ptr.1) #15
  invoke void @_ZN2cv5splitERKNS_3MatEPS0_(ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull %3)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.e, align 8, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 0, ptr %i.f, align 4, !tbaa !30
  store i32 16842752, ptr %4, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.g, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.h, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 0, ptr %i.i, align 4, !tbaa !30
  store i32 16842752, ptr %5, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.ptr.1, ptr %i.j, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.l, align 8
  store i32 33619968, ptr %6, align 8, !tbaa !28
  store ptr %0, ptr %i.k, align 8, !tbaa !13
  invoke void @_ZN2cv9magnitudeERKNS_11_InputArrayES2_RKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.m, align 8, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 0, ptr %i.n, align 4, !tbaa !30
  store i32 16842752, ptr %7, align 8, !tbaa !28
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %i.o, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 0, ptr %i.q, align 8
  store i32 33619968, ptr %8, align 8, !tbaa !28
  store ptr %0, ptr %i.p, align 8, !tbaa !13
  invoke void @_ZN2cv3powERKNS_11_InputArrayEdRKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %7, double noundef 2.000000e+00, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 208
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.r) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void

bb.g:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.h:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn15.pn.pn = phi { ptr, i32 } [ %i.u, %bb.i ], [ %i.t, %bb.h ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #15
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.pn15.pn.pn.pn = phi { ptr, i32 } [ %.pn15.pn.pn, %bb.j ], [ %i.s, %bb.g ]
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 208
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.v) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %.pn15.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.c) #15
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_115dftMultiChannelERKN2cv11_InputArrayERSt6vectorINS0_3MatESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %6 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %7 = alloca [2 x %"class.cv::Mat"], align 16    ; 11 uses
  %8 = alloca %"class.cv::MatExpr", align 8       ; 10 uses
  %9 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %10 = alloca %"class.cv::Range", align 4        ; 6 uses
  %11 = alloca %"class.(anonymous namespace)::ParallelDft", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.a = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0), !noalias !116
  %i.b = icmp eq i32 %i.a, 65536
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13, !noalias !116
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %i.d)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.e, align 8, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 0, ptr %i.f, align 4, !tbaa !30
  store i32 16842752, ptr %5, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %i.g, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.i, align 8
  store i32 33882112, ptr %6, align 8, !tbaa !28
  store ptr %1, ptr %i.h, align 8, !tbaa !13
  invoke void @_ZN2cv5splitERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 208 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 432
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 224
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 208
  br label %bb.i

bb.f:                                             ; preds = %bb.t
  %i.q = add nuw nsw i32 %i.bj, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  store i32 0, ptr %10, align 4, !tbaa !49
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 %i.q, ptr %i.r, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN12_GLOBAL__N_111ParallelDftE, i64 16), ptr %11, align 8, !tbaa !41
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  %i.t = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN2cv3MatESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN12_GLOBAL__N_111ParallelDftC2ERSt6vectorIN2cv3MatESaIS3_EE.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.s) #15
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(32) %11) #15
  br label %.body

bb.h:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.x

bb.i:                                             ; preds = %bb.e, %bb.t
  %indvars.iv = phi i64 [ 0, %bb.e ], [ %indvars.iv.next, %bb.t ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.w = load ptr, ptr %1, align 8, !tbaa !47
  %i.x = getelementptr inbounds nuw [208 x i8], ptr %i.w, i64 %indvars.iv
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %7, ptr noundef nonnull align 8 dereferenceable(208) %i.x)
          to label %bb.j unwind label %.thread

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %i.y = load ptr, ptr %1, align 8, !tbaa !47
  %i.z = getelementptr inbounds nuw [208 x i8], ptr %i.y, i64 %indvars.iv ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !51 ; 6 uses
  %i.ac = icmp slt i32 %i.ab, 3
  br i1 %i.ac, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.k
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.6, i32 noundef 109) #16
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %.noexc
  unreachable

bb.m:                                             ; preds = %.noexc
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.m
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !19
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %.loopexit.loopexit56

bb.n:                                             ; preds = %bb.j
  %i.aj = icmp sgt i32 %i.ab, 0
  br i1 %i.aj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 84
  %i.al = icmp eq i32 %i.ab, 2
  %i.am = zext i1 %i.al to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !52
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ap = icmp eq i32 %i.ab, 0
  %i.aq = zext i1 %i.ap to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ar = phi i32 [ %i.ao, %bb.o ], [ %i.aq, %bb.p ]
  %i.as = icmp eq i32 %i.ab, 2
  %i.at = getelementptr inbounds nuw i8, ptr %i.z, i64 84
  %i.au = load i32, ptr %i.at, align 4
  %i.av = icmp sgt i32 %i.ab, -1
  %i.aw = zext i1 %i.av to i32
  %i.ax = select i1 %i.as, i32 %i.au, i32 %i.aw
  %.sroa.2.0.insert.ext.i = zext i32 %i.ax to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.ar to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.ay = load i32, ptr %i.z, align 8, !tbaa !26
  %i.az = and i32 %i.ay, 4095
  invoke void @_ZN2cv3Mat5zerosENS_5Size_IiEEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %8, i64 %.sroa.0.0.insert.insert.i, i32 noundef %i.az)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.j) #15
  %i.ba = load ptr, ptr %8, align 8, !tbaa !39, !noalias !117 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !41
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull align 8 dereferenceable(688) %8, ptr noundef nonnull align 8 dereferenceable(208) %i.j, i32 noundef -1)
          to label %bb.s unwind label %.body40

.body40:                                          ; preds = %bb.r
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.j) #15
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %8) #15
  br label %.loopexit.loopexit56

bb.s:                                             ; preds = %bb.r
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.k) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.l) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.m) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  %i.bf = load ptr, ptr %1, align 8, !tbaa !47
  %i.bg = getelementptr inbounds nuw [208 x i8], ptr %i.bf, i64 %indvars.iv
  store i64 0, ptr %i.o, align 8
  store i32 33619968, ptr %9, align 8, !tbaa !28
  store ptr %i.bg, ptr %i.n, align 8, !tbaa !13
  invoke void @_ZN2cv5mergeEPKNS_3MatEmRKNS_12_OutputArrayE(ptr noundef nonnull %7, i64 noundef 2, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.t unwind label %.loopexit.loopexit

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.p) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.bh = load i32, ptr %4, align 8, !tbaa !26
  %i.bi = lshr i32 %i.bh, 5
  %i.bj = and i32 %i.bi, 127                      ; 2 uses
  %i.bk = zext nneg i32 %i.bj to i64
  %.not.not = icmp samesign ult i64 %indvars.iv, %i.bk
  br i1 %.not.not, label %bb.i, label %bb.f, !llvm.loop !115

.thread:                                          ; preds = %bb.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.q, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.loopexit56

.loopexit.loopexit56:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.pn31 = phi { ptr, i32 } [ %i.be, %.body40 ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #15
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.s
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 208
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bn) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #15
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit56, %.loopexit.loopexit, %.thread
  %.pn34.pn = phi { ptr, i32 } [ %i.bm, %.loopexit.loopexit ], [ %i.bl, %.thread ], [ %.pn31, %.loopexit.loopexit56 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %bb.x

_ZN12_GLOBAL__N_111ParallelDftC2ERSt6vectorIN2cv3MatESaIS3_EE.exit: ; preds = %bb.f
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %11, double noundef -1.000000e+00)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %_ZN12_GLOBAL__N_111ParallelDftC2ERSt6vectorIN2cv3MatESaIS3_EE.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN12_GLOBAL__N_111ParallelDftE, i64 16), ptr %11, align 8, !tbaa !41
  %i.bo = load ptr, ptr %i.s, align 8, !tbaa !47  ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !44 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.bo, %i.bq
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.u, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i.i ], [ %i.bo, %bb.u ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i.i) #15, !inline_history !54
  %i.br = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.br, %i.bq
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.s, align 8, !tbaa !47
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.u
  %i.bs = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.bo, %bb.u ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i1.i.i, label %_ZN12_GLOBAL__N_111ParallelDftD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !45
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = sub i64 %i.bv, %i.bw
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bx) #17, !inline_history !54
  br label %_ZN12_GLOBAL__N_111ParallelDftD2Ev.exit

_ZN12_GLOBAL__N_111ParallelDftD2Ev.exit:          ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.v
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(32) %11) #15, !inline_history !54
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret void

bb.w:                                             ; preds = %_ZN12_GLOBAL__N_111ParallelDftC2ERSt6vectorIN2cv3MatESaIS3_EE.exit
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12_GLOBAL__N_111ParallelDftD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %11) #15
  br label %.body

.body:                                            ; preds = %bb.g, %bb.w
  %.pn29 = phi { ptr, i32 } [ %i.by, %bb.w ], [ %i.u, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %bb.x

bb.x:                                             ; preds = %.body, %.loopexit, %bb.h
  %.pn34.pn.pn = phi { ptr, i32 } [ %.pn34.pn, %.loopexit ], [ %.pn29, %.body ], [ %i.v, %bb.h ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  resume { ptr, i32 } %.pn34.pn.pn
}

declare void @_ZN2cv8filter2DERKNS_11_InputArrayERKNS_12_OutputArrayEiS2_NS_6Point_IiEEdi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef nonnull align 8 dereferenceable(24), i64, double noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN2cvplERKNS_7MatExprES2_(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(688), ptr noundef nonnull align 8 dereferenceable(688)) local_unnamed_addr #2

declare void @_ZNK2cv3Mat3mulERKNS_11_InputArrayEd(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), double noundef) local_unnamed_addr #2

declare noundef double @_ZN2cv9thresholdERKNS_11_InputArrayERKNS_12_OutputArrayEddi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), double noundef, double noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv5splitERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare void @_ZN2cv5mergeEPKNS_3MatEmRKNS_12_OutputArrayE(ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i) #15
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 208 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !47
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit:  ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !45
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #17
  br label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit:   ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

declare void @_ZN2cvplERKNS_7MatExprERKNS_7Scalar_IdEE(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(688), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZN2cvmlEdRKNS_3MatE(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, double noundef, ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare void @_ZN2cv11_InputArrayC1ERKNS_7MatExprE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(688)) unnamed_addr #2

declare void @_ZN2cvplERKNS_3MatERKNS_7MatExprE(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(688)) local_unnamed_addr #2

declare void @_ZN2cvmlERKNS_3MatEd(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208), double noundef) local_unnamed_addr #2

declare void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv14copyMakeBorderERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZN2cv3Mat6createENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208), i64, i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #2

declare void @_ZN2cv3Mat5zerosENS_5Size_IiEEi(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, i64, i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv3dftERKNS_11_InputArrayERKNS_12_OutputArrayEii(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv5splitERKNS_3MatEPS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef) local_unnamed_addr #2

declare void @_ZN2cv9magnitudeERKNS_11_InputArrayES2_RKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN2cv3powERKNS_11_InputArrayEdRKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24), double noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_111ParallelDftD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN12_GLOBAL__N_111ParallelDftE, i64 16), ptr %0, align 8, !tbaa !41
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i) #15
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !47
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.f = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #17
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, %bb.b
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #15
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN2cv3MatESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
end_hunk_1
