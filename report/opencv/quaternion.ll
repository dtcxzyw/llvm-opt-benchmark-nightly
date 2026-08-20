inline.NumInlined: 860
inline.NumDeleted: 136
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN2cv8ximgproc18colorMatchTemplateERKNS_11_InputArrayES3_RKNS_12_OutputArrayE:bb.a
bb.dr:                                            ; preds = %bb.bm
  %i.ke = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %85) #17
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %.pn177.pn = phi { ptr, i32 } [ %i.ke, %bb.dr ], [ %.pn165.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.dq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #17
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dc
  %.pn177.pn.pn = phi { ptr, i32 } [ %.pn177.pn, %bb.ds ], [ %i.jw, %bb.dc ]
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %82) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #17
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.db, %bb.da
  %.pn177.pn.pn.pn = phi { ptr, i32 } [ %.pn177.pn.pn, %bb.dt ], [ %i.jv, %bb.db ], [ %i.ju, %bb.da ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %77) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %76) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %74) #17
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.cz
  %.pn177.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn177.pn.pn.pn, %bb.du ], [ %.pn154, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #17
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.cx, %bb.cw, %bb.cv, %bb.cu
  %.pn177.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn177.pn.pn.pn.pn, %bb.dv ], [ %i.js, %bb.cx ], [ %i.jr, %bb.cw ], [ %i.jq, %bb.cv ], [ %i.jp, %bb.cu ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %63) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %62) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %61) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %60) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #17
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.ct, %bb.cs, %bb.cp, %bb.co, %bb.cn
  %.pn177.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn177.pn.pn.pn.pn.pn, %bb.dw ], [ %i.jo, %bb.ct ], [ %.pn134, %bb.cs ], [ %i.jl, %bb.cp ], [ %i.jk, %bb.co ], [ %i.jj, %bb.cn ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %46) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %45) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %44) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %42) #17
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.cm
  %.pn177.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn177.pn.pn.pn.pn.pn.pn, %bb.dx ], [ %i.ji, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #17
  br label %bb.dz

bb.dz:                                            ; preds = %bb.cl, %bb.dy, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg
  %.pn177.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jc, %bb.cg ], [ %i.jg, %bb.ck ], [ %i.jf, %bb.cj ], [ %i.je, %bb.ci ], [ %i.jd, %bb.ch ], [ %.pn177.pn.pn.pn.pn.pn.pn.pn, %bb.dy ], [ %i.jh, %bb.cl ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %31) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %30) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %29) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %28) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #17
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.cf, %bb.cc, %bb.cb
  %.pn177.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn177.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.dz ], [ %.pn104.pn, %bb.cf ], [ %i.iz, %bb.cc ], [ %.pn97.pn.pn.pn, %bb.cb ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #17
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.bw
  %.pn177.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn177.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ea ], [ %i.iv, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #17
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.bv
  %.pn177.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn177.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.eb ], [ %i.iu, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br label %bb.ed

bb.ed:                                            ; preds = %bb.bt, %bb.bu, %bb.br, %bb.bs, %bb.ec, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207
  %.pn177.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207 ], [ %i.iq, %bb.br ], [ %.pn177.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ec ], [ %i.ir, %bb.bs ], [ %i.it, %bb.bu ], [ %i.is, %bb.bt ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #17
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.m
  %.pn177.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn177.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ed ], [ %i.w, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn177.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn177.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ee ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #17
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.d
  %.pn177.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn177.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ef ], [ %i.h, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  resume { ptr, i32 } %.pn177.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

declare void @_ZN2cv3MatC1EiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #7

declare void @_ZN2cv8subtractERKNS_11_InputArrayES2_RKNS_12_OutputArrayES2_i(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv() local_unnamed_addr #2

declare void @_ZN2cv4sqrtERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #17 ; 0 uses
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

declare void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZZN2cv3Mat12forEach_implINS_3VecIdLi4EEEZNS_8ximgproc8qunitaryERKNS_11_InputArrayERKNS_12_OutputArrayEE3$_0EEvRKT0_EN21PixelOperationWrapperD0Ev"(ptr noundef nonnull align 8 dereferenceable(17) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %0) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZZN2cv3Mat12forEach_implINS_3VecIdLi4EEEZNS_8ximgproc8qunitaryERKNS_11_InputArrayERKNS_12_OutputArrayEE3$_0EEvRKT0_ENK21PixelOperationWrapperclERKNS_5RangeE"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %union.Index, align 4               ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !50   ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.f = add nsw i32 %i.d, -1                     ; 2 uses
  %i.g = load i32, ptr %i.e, align 4, !tbaa !51   ; 2 uses
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1) ; 2 uses
  %i.h = icmp ult i32 %i.f, %narrow.i
  br i1 %i.h, label %_ZN2cv8MatShapeixEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.26, i32 noundef 97) #16
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %7, align 8, !tbaa !8      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.m = load i64, ptr %i.k, align 8, !tbaa !14
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit75, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit75 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %bb.a
  %i.o = zext nneg i32 %i.f to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 84 ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.o
  %i.r = load i32, ptr %i.q, align 4, !tbaa !52   ; 6 uses
  %i.s = icmp samesign ult i32 %i.d, 3
  br i1 %i.s, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN2cv8MatShapeixEm.exit
  %i.t = load i32, ptr %1, align 4, !tbaa !53     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !55   ; 2 uses
  %i.w = icmp slt i32 %i.t, %i.v
  br i1 %i.w, label %.lr.ph.i.i.i.lr.ph, label %.loopexit

.lr.ph.i.i.i.lr.ph:                               ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !72   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 5 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.d to i64
  %i.ab = sext i32 %i.r to i64
  %.idx.i = shl nsw i64 %i.ab, 5                  ; 2 uses
  %i.ac = icmp sgt i32 %i.r, 0
  br i1 %i.ac, label %.lr.ph.i.i.i.us.preheader, label %.loopexit

.lr.ph.i.i.i.us.preheader:                        ; preds = %.lr.ph.i.i.i.lr.ph
  %i.ad = add nsw i32 %i.d, -1
  %i.ae = icmp ult i32 %i.ad, 3
  %lcmp.mod152.not = icmp eq i32 %i.d, 0
  %lcmp.mod158 = icmp ne i32 %i.d, 0
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %"_ZZN2cv3Mat12forEach_implINS_3VecIdLi4EEEZNS_8ximgproc8qunitaryERKNS_11_InputArrayERKNS_12_OutputArrayEE3$_0EEvRKT0_ENK21PixelOperationWrapper8rowCall2Eii.exit.loopexit.us"
  %.03494.us = phi i32 [ %i.by, %"_ZZN2cv3Mat12forEach_implINS_3VecIdLi4EEEZNS_8ximgproc8qunitaryERKNS_11_InputArrayERKNS_12_OutputArrayEE3$_0EEvRKT0_ENK21PixelOperationWrapper8rowCall2Eii.exit.loopexit.us" ], [ %i.t, %.lr.ph.i.i.i.us.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  store i32 %.03494.us, ptr %6, align 4, !tbaa !52
  store i32 0, ptr %i.x, align 4, !tbaa !52
  br i1 %i.ae, label %.epil.preheader149, label %.lr.ph.i.i.i.us.new

.lr.ph.i.i.i.us.new:                              ; preds = %.lr.ph.i.i.i.us, %.lr.ph.i.i.i.us.new
  %indvars.iv.i.i.i.us = phi i64 [ %indvars.iv.next.i.i.i.us.3, %.lr.ph.i.i.i.us.new ], [ 0, %.lr.ph.i.i.i.us ] ; 6 uses
  %.010.i.i.i.us = phi ptr [ %i.bg, %.lr.ph.i.i.i.us.new ], [ %i.z, %.lr.ph.i.i.i.us ]
  %niter160 = phi i64 [ %niter160.next.3, %.lr.ph.i.i.i.us.new ], [ 0, %.lr.ph.i.i.i.us ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.i.i.i.us
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !52
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.i.i.i.us
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !45
  %i.ak = mul i64 %i.aj, %i.ah
  %i.al = getelementptr inbounds nuw i8, ptr %.010.i.i.i.us, i64 %i.ak
  %indvars.iv.next.i.i.i.us = or disjoint i64 %indvars.iv.i.i.i.us, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next.i.i.i.us
  %i.an = load i32, ptr %i.am, align 4, !tbaa !52
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next.i.i.i.us
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !45
  %i.ar = mul i64 %i.aq, %i.ao
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ar
  %indvars.iv.next.i.i.i.us.1 = or disjoint i64 %indvars.iv.i.i.i.us, 2 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next.i.i.i.us.1
  %i.au = load i32, ptr %i.at, align 4, !tbaa !52
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next.i.i.i.us.1
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !45
  %i.ay = mul i64 %i.ax, %i.av
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ay ; 2 uses
  %indvars.iv.next.i.i.i.us.2 = or disjoint i64 %indvars.iv.i.i.i.us, 3 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next.i.i.i.us.2
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !52
  %i.bc = sext i32 %i.bb to i64                   ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next.i.i.i.us.2
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !45 ; 2 uses
  %i.bf = mul i64 %i.be, %i.bc                    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bf ; 3 uses
  %indvars.iv.next.i.i.i.us.3 = add nuw nsw i64 %indvars.iv.i.i.i.us, 4 ; 2 uses
  %niter160.next.3 = add i64 %niter160, 4         ; 2 uses
  %niter160.ncmp.3 = icmp eq i64 %niter160.next.3, 0
  br i1 %niter160.ncmp.3, label %_ZN2cv3Mat2atINS_3VecIdLi4EEEEERT_PKi.exit.i.loopexit.us.unr-lcssa, label %.lr.ph.i.i.i.us.new, !llvm.loop !96

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us.preheader, %.lr.ph.i.us
  %.02.i.us = phi ptr [ %i.bh, %.lr.ph.i.us ], [ %.02.i.us.ph, %.lr.ph.i.us.preheader ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.02.i.us, i64 32 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.02.i.us, i64 16 ; 2 uses
  %i.bj = load <2 x double>, ptr %.02.i.us, align 8, !tbaa !73 ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.bj, %i.bj
  %i.bk = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.bl = extractelement <2 x double> %i.bj, i64 0 ; 2 uses
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bl, double %i.bl, double %i.bk)
  %i.bn = load <2 x double>, ptr %i.bi, align 8, !tbaa !73 ; 3 uses
  %i.bo = extractelement <2 x double> %i.bn, i64 0 ; 2 uses
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.bo, double %i.bo, double %i.bm)
  %i.bq = extractelement <2 x double> %i.bn, i64 1 ; 2 uses
  %i.br = tail call double @llvm.fmuladd.f64(double %i.bq, double %i.bq, double %i.bp)
  %sqrt.i.i.us = tail call double @llvm.sqrt.f64(double %i.br)
  %i.bs = fdiv double 1.000000e+00, %sqrt.i.i.us
  %i.bt = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bv = fmul <2 x double> %i.bj, %i.bu
  store <2 x double> %i.bv, ptr %.02.i.us, align 8, !tbaa !73
  %i.bw = fmul <2 x double> %i.bn, %i.bu
  store <2 x double> %i.bw, ptr %i.bi, align 8, !tbaa !73
  %i.bx = icmp ult ptr %i.bh, %i.cg
  br i1 %i.bx, label %.lr.ph.i.us, label %"_ZZN2cv3Mat12forEach_implINS_3VecIdLi4EEEZNS_8ximgproc8qunitaryERKNS_11_InputArrayERKNS_12_OutputArrayEE3$_0EEvRKT0_ENK21PixelOperationWrapper8rowCall2Eii.exit.loopexit.us", !llvm.loop !97

"_ZZN2cv3Mat12forEach_implINS_3VecIdLi4EEEZNS_8ximgproc8qunitaryERKNS_11_InputArrayERKNS_12_OutputArrayEE3$_0EEvRKT0_ENK21PixelOperationWrapper8rowCall2Eii.exit.loopexit.us": ; preds = %.lr.ph.i.us, %middle.block133
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.by = add nsw i32 %.03494.us, 1               ; 2 uses
  %exitcond99.not = icmp eq i32 %i.by, %i.v
  br i1 %exitcond99.not, label %.loopexit, label %.lr.ph.i.i.i.us, !llvm.loop !100

_ZN2cv3Mat2atINS_3VecIdLi4EEEEERT_PKi.exit.i.loopexit.us.unr-lcssa: ; preds = %.lr.ph.i.i.i.us.new
  br i1 %lcmp.mod152.not, label %_ZN2cv3Mat2atINS_3VecIdLi4EEEEERT_PKi.exit.i.loopexit.us, label %.epil.preheader149

.epil.preheader149:                               ; preds = %_ZN2cv3Mat2atINS_3VecIdLi4EEEEERT_PKi.exit.i.loopexit.us.unr-lcssa, %.lr.ph.i.i.i.us
  %indvars.iv.i.i.i.us.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.us ], [ %indvars.iv.next.i.i.i.us.3, %_ZN2cv3Mat2atINS_3VecIdLi4EEEEERT_PKi.exit.i.loopexit.us.unr-lcssa ]
  %.010.i.i.i.us.epil.init = phi ptr [ %i.z, %.lr.ph.i.i.i.us ], [ %i.bg, %_ZN2cv3Mat2atINS_3VecIdLi4EEEEERT_PKi.exit.i.loopexit.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod158)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader149
  %indvars.iv.i.i.i.us.epil = phi i64 [ %indvars.iv.i.i.i.us.epil.init, %.epil.preheader149 ], [ %indvars.iv.next.i.i.i.us.epil, %bb.f ] ; 3 uses
  %.010.i.i.i.us.epil = phi ptr [ %.010.i.i.i.us.epil.init, %.epil.preheader149 ], [ %i.cf, %bb.f ] ; 2 uses
  %epil.iter151 = phi i64 [ 0, %.epil.preheader149 ], [ %epil.iter151.next, %bb.f ]
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.i.i.i.us.epil
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !52
  %i.cb = sext i32 %i.ca to i64                   ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.i.i.i.us.epil
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !45 ; 2 uses
  %i.ce = mul i64 %i.cd, %i.cb                    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.010.i.i.i.us.epil, i64 %i.ce ; 2 uses
  %indvars.iv.next.i.i.i.us.epil = add nuw nsw i64 %indvars.iv.i.i.i.us.epil, 1
  %epil.iter151.next = add i64 %epil.iter151, 1   ; 2 uses
  %epil.iter151.cmp.not = icmp eq i64 %epil.iter151.next, %wide.trip.count.i.i.i
  br i1 %epil.iter151.cmp.not, label %_ZN2cv3Mat2atINS_3VecIdLi4EEEEERT_PKi.exit.i.loopexit.us, label %bb.f, !llvm.loop !101

_ZN2cv3Mat2atINS_3VecIdLi4EEEEERT_PKi.exit.i.loopexit.us: ; preds = %bb.f, %_ZN2cv3Mat2atINS_3VecIdLi4EEEEERT_PKi.exit.i.loopexit.us.unr-lcssa
  %.010.i.i.i.us.lcssa = phi ptr [ %i.az, %_ZN2cv3Mat2atINS_3VecIdLi4EEEEERT_PKi.exit.i.loopexit.us.unr-lcssa ], [ %.010.i.i.i.us.epil, %bb.f ]
  %.lcssa144 = phi i64 [ %i.bc, %_ZN2cv3Mat2atINS_3VecIdLi4EEEEERT_PKi.exit.i.loopexit.us.unr-lcssa ], [ %i.cb, %bb.f ]
  %.lcssa143 = phi i64 [ %i.be, %_ZN2cv3Mat2atINS_3VecIdLi4EEEEERT_PKi.exit.i.loopexit.us.unr-lcssa ], [ %i.cd, %bb.f ]
  %.lcssa142 = phi i64 [ %i.bf, %_ZN2cv3Mat2atINS_3VecIdLi4EEEEERT_PKi.exit.i.loopexit.us.unr-lcssa ], [ %i.ce, %bb.f ]
  %.lcssa = phi ptr [ %i.bg, %_ZN2cv3Mat2atINS_3VecIdLi4EEEEERT_PKi.exit.i.loopexit.us.unr-lcssa ], [ %i.cf, %bb.f ] ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.lcssa, i64 %.idx.i
  %9 = ptrtoaddr ptr %.010.i.i.i.us.lcssa to i64  ; 2 uses
  %i.ch = add i64 %.lcssa142, %9                  ; 2 uses
  %i.ci = add i64 %i.ch, %.idx.i
  %i.cj = add i64 %i.ch, 32
  %i.ck = tail call i64 @llvm.umax.i64(i64 %i.ci, i64 %i.cj)
  %10 = mul i64 %.lcssa143, %.lcssa144
  %11 = xor i64 %10, -1
  %i.cl = add i64 %i.ck, %11
  %i.cm = sub i64 %i.cl, %9
  %i.cn = lshr i64 %i.cm, 5                       ; 2 uses
  %i.co = add nuw nsw i64 %i.cn, 1                ; 2 uses
  %min.iters.check124 = icmp eq i64 %i.cn, 0
  br i1 %min.iters.check124, label %.lr.ph.i.us.preheader, label %vector.ph125

vector.ph125:                                     ; preds = %_ZN2cv3Mat2atINS_3VecIdLi4EEEEERT_PKi.exit.i.loopexit.us
  %n.vec126 = and i64 %i.co, 1152921504606846974  ; 3 uses
  %i.cp = shl i64 %n.vec126, 5
  %i.cq = getelementptr i8, ptr %.lcssa, i64 %i.cp
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph125
  %index128 = phi i64 [ 0, %vector.ph125 ], [ %index.next132, %vector.body127 ] ; 2 uses
  %i.cr = shl i64 %index128, 5                    ; 2 uses
  %next.gep129 = getelementptr i8, ptr %.lcssa, i64 %i.cr ; 5 uses
  %i.cs = getelementptr i8, ptr %.lcssa, i64 %i.cr ; 4 uses
  %next.gep130 = getelementptr i8, ptr %i.cs, i64 32
  %i.ct = load double, ptr %next.gep129, align 8, !tbaa !73
  %i.cu = load double, ptr %next.gep130, align 8, !tbaa !73
  %i.cv = insertelement <2 x double> poison, double %i.ct, i64 0
  %i.cw = insertelement <2 x double> %i.cv, double %i.cu, i64 1 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %next.gep129, i64 8
  %i.cy = getelementptr i8, ptr %i.cs, i64 40
  %i.cz = load double, ptr %i.cx, align 8, !tbaa !73
  %i.da = load double, ptr %i.cy, align 8, !tbaa !73
  %i.db = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.dc = insertelement <2 x double> %i.db, double %i.da, i64 1 ; 3 uses
  %i.dd = fmul <2 x double> %i.dc, %i.dc
  %i.de = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cw, <2 x double> %i.cw, <2 x double> %i.dd)
  %i.df = getelementptr inbounds nuw i8, ptr %next.gep129, i64 16
  %i.dg = getelementptr i8, ptr %i.cs, i64 48
  %i.dh = load double, ptr %i.df, align 8, !tbaa !73
  %i.di = load double, ptr %i.dg, align 8, !tbaa !73
  %i.dj = insertelement <2 x double> poison, double %i.dh, i64 0
  %i.dk = insertelement <2 x double> %i.dj, double %i.di, i64 1 ; 3 uses
  %i.dl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dk, <2 x double> %i.dk, <2 x double> %i.de)
  %i.dm = getelementptr inbounds nuw i8, ptr %next.gep129, i64 24
  %i.dn = getelementptr i8, ptr %i.cs, i64 56
  %i.do = load double, ptr %i.dm, align 8, !tbaa !73
  %i.dp = load double, ptr %i.dn, align 8, !tbaa !73
  %i.dq = insertelement <2 x double> poison, double %i.do, i64 0
  %i.dr = insertelement <2 x double> %i.dq, double %i.dp, i64 1 ; 3 uses
  %i.ds = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dr, <2 x double> %i.dr, <2 x double> %i.dl)
  %i.dt = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ds)
  %i.du = fdiv <2 x double> splat (double 1.000000e+00), %i.dt ; 2 uses
  %i.dv = shufflevector <2 x double> %i.cw, <2 x double> %i.dc, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dw = shufflevector <2 x double> %i.du, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dx = fmul <4 x double> %i.dv, %i.dw
  %i.dy = shufflevector <2 x double> %i.dk, <2 x double> %i.dr, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dz = shufflevector <2 x double> %i.du, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ea = fmul <4 x double> %i.dy, %i.dz
  %interleaved.vec131 = shufflevector <4 x double> %i.dx, <4 x double> %i.ea, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec131, ptr %next.gep129, align 8, !tbaa !73
  %index.next132 = add nuw i64 %index128, 2       ; 2 uses
  %i.eb = icmp eq i64 %index.next132, %n.vec126
  br i1 %i.eb, label %middle.block133, label %vector.body127, !llvm.loop !103

middle.block133:                                  ; preds = %vector.body127
  %cmp.n134 = icmp eq i64 %i.co, %n.vec126
  br i1 %cmp.n134, label %"_ZZN2cv3Mat12forEach_implINS_3VecIdLi4EEEZNS_8ximgproc8qunitaryERKNS_11_InputArrayERKNS_12_OutputArrayEE3$_0EEvRKT0_ENK21PixelOperationWrapper8rowCall2Eii.exit.loopexit.us", label %.lr.ph.i.us.preheader

.lr.ph.i.us.preheader:                            ; preds = %_ZN2cv3Mat2atINS_3VecIdLi4EEEEERT_PKi.exit.i.loopexit.us, %middle.block133
  %.02.i.us.ph = phi ptr [ %.lcssa, %_ZN2cv3Mat2atINS_3VecIdLi4EEEEERT_PKi.exit.i.loopexit.us ], [ %i.cq, %middle.block133 ]
  br label %.lr.ph.i.us

bb.g:                                             ; preds = %_ZN2cv8MatShapeixEm.exit
  %i.ec = zext nneg i32 %i.d to i64               ; 4 uses
  %i.ed = shl nuw nsw i64 %i.ec, 2                ; 4 uses
  %i.ee = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ed) #19 ; 14 uses
  store i32 0, ptr %i.ee, align 4, !tbaa !52
  %i.ef = getelementptr i8, ptr %i.ee, i64 4
  %.idx.i.i.i.i.i.i.i = add nsw i64 %i.ed, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ef, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !52
  %i.eg = load i32, ptr %1, align 4, !tbaa !53    ; 3 uses
  %i.eh = add nsw i32 %i.eg, -1
  %i.ei = add nsw i32 %i.d, -2                    ; 2 uses
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.ej ; 3 uses
  store i32 %i.eh, ptr %i.ek, align 4, !tbaa !52
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.em = load i32, ptr %i.el, align 4, !tbaa !55 ; 2 uses
  %i.en = icmp slt i32 %i.eg, %i.em
  br i1 %i.en, label %.lr.ph93, label %_ZNSt6vectorIiSaIiEED2Ev.exit

.lr.ph93:                                         ; preds = %bb.g
  %i.eo = getelementptr [4 x i8], ptr %i.ee, i64 %i.ec
  %i.ep = getelementptr i8, ptr %i.eo, i64 -4     ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 5 uses
  %i.es = icmp sgt i32 %i.r, 0
  %i.et = zext nneg i32 %i.ei to i64              ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.et
  %narrow.i39 = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1)
  %i.eu = zext nneg i32 %narrow.i39 to i64
  %i.ev = zext nneg i32 %narrow.i to i64
  %xtraiter = and i64 %i.ec, 3                    ; 3 uses
  %i.ew = icmp eq i32 %i.d, 3
  %unroll_iter = and i64 %i.ec, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod148 = icmp ne i64 %xtraiter, 0
  %i.ex = zext nneg i32 %i.r to i64               ; 2 uses
  %min.iters.check = icmp eq i32 %i.r, 1
  %n.vec = and i64 %i.ex, 2147483646              ; 4 uses
  %i.ey = shl nuw nsw i64 %n.vec, 5
  %i.ez = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.ex
  br label %.lr.ph.preheader

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.loopexit87, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ee, i64 noundef %i.ed) #18
  br label %.loopexit

.lr.ph.preheader:                                 ; preds = %.loopexit87, %.lr.ph93
  %.03091 = phi i32 [ %i.eg, %.lr.ph93 ], [ %i.jo, %.loopexit87 ]
  %i.fa = load i32, ptr %i.ek, align 4, !tbaa !52
  %i.fb = add nsw i32 %i.fa, 1
  store i32 %i.fb, ptr %i.ek, align 4, !tbaa !52
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !52
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN2cv8MatShapeixEm.exit63
  %i.fc = phi i32 [ %.pre, %.lr.ph.preheader ], [ %i.fr, %_ZN2cv8MatShapeixEm.exit63 ] ; 3 uses
  %indvars.iv = phi i64 [ %i.et, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN2cv8MatShapeixEm.exit63 ] ; 6 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv
  %i.fe = icmp ult i64 %indvars.iv, %i.eu
  br i1 %i.fe, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc44 unwind label %bb.o

.noexc44:                                         ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.26, i32 noundef 97) #16
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.noexc44
  unreachable

bb.j:                                             ; preds = %.noexc44
  %i.ff = landingpad { ptr, i32 }
          cleanup
  %i.fg = load ptr, ptr %4, align 8, !tbaa !8     ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.fi = icmp eq ptr %i.fg, %i.fh
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i41: ; preds = %bb.j
  %i.fj = load i64, ptr %i.fh, align 8, !tbaa !14
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fk) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i42: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit75

bb.k:                                             ; preds = %.lr.ph
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !52 ; 3 uses
  %.not = icmp slt i32 %i.fc, %i.fm
  br i1 %.not, label %.lr.ph.i.i.i68, label %_ZN2cv8MatShapeixEm.exit54

_ZN2cv8MatShapeixEm.exit54:                       ; preds = %bb.k
  %i.fn = sdiv i32 %i.fc, %i.fm
  %i.fo = srem i32 %i.fc, %i.fm
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv.next ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !52
  %i.fr = add nsw i32 %i.fq, %i.fn                ; 2 uses
  store i32 %i.fr, ptr %i.fp, align 4, !tbaa !52
  %i.fs = icmp samesign ult i64 %indvars.iv, %i.ev
  br i1 %i.fs, label %_ZN2cv8MatShapeixEm.exit63, label %bb.l

bb.l:                                             ; preds = %_ZN2cv8MatShapeixEm.exit54
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.noexc60 unwind label %bb.o

.noexc60:                                         ; preds = %bb.l
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.26, i32 noundef 97) #16
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.noexc60
  unreachable

bb.n:                                             ; preds = %.noexc60
  %i.ft = landingpad { ptr, i32 }
          cleanup
  %i.fu = load ptr, ptr %2, align 8, !tbaa !8     ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.fw = icmp eq ptr %i.fu, %i.fv
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57: ; preds = %bb.n
  %i.fx = load i64, ptr %i.fv, align 8, !tbaa !14
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fy) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i58: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit75

_ZN2cv8MatShapeixEm.exit63:                       ; preds = %_ZN2cv8MatShapeixEm.exit54
  store i32 %i.fo, ptr %i.fd, align 4, !tbaa !52
  %.not118 = icmp eq i64 %indvars.iv, 0
  br i1 %.not118, label %.lr.ph.i.i.i68, label %.lr.ph, !llvm.loop !104

bb.o:                                             ; preds = %bb.l, %bb.h
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit75

.lr.ph.i.i.i68:                                   ; preds = %bb.k, %_ZN2cv8MatShapeixEm.exit63
  store i32 0, ptr %i.ep, align 4, !tbaa !52
  %i.ga = load ptr, ptr %i.eq, align 8, !tbaa !72 ; 2 uses
  br i1 %i.ew, label %.epil.preheader, label %.lr.ph.i.i.i68.new

.lr.ph.i.i.i68.new:                               ; preds = %.lr.ph.i.i.i68, %.lr.ph.i.i.i68.new
  %indvars.iv.i.i.i70 = phi i64 [ %indvars.iv.next.i.i.i72.3, %.lr.ph.i.i.i68.new ], [ 0, %.lr.ph.i.i.i68 ] ; 6 uses
  %.010.i.i.i71 = phi ptr [ %i.hc, %.lr.ph.i.i.i68.new ], [ %i.ga, %.lr.ph.i.i.i68 ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i.i.i68.new ], [ 0, %.lr.ph.i.i.i68 ]
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv.i.i.i70
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !52
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %indvars.iv.i.i.i70
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !45
  %i.gg = mul i64 %i.gf, %i.gd
  %i.gh = getelementptr inbounds nuw i8, ptr %.010.i.i.i71, i64 %i.gg
  %indvars.iv.next.i.i.i72 = or disjoint i64 %indvars.iv.i.i.i70, 1 ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv.next.i.i.i72
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !52
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %indvars.iv.next.i.i.i72
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !45
  %i.gn = mul i64 %i.gm, %i.gk
  %i.go = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gn
  %indvars.iv.next.i.i.i72.1 = or disjoint i64 %indvars.iv.i.i.i70, 2 ; 2 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv.next.i.i.i72.1
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !52
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %indvars.iv.next.i.i.i72.1
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !45
  %i.gu = mul i64 %i.gt, %i.gr
  %i.gv = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gu
  %indvars.iv.next.i.i.i72.2 = or disjoint i64 %indvars.iv.i.i.i70, 3 ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv.next.i.i.i72.2
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !52
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %indvars.iv.next.i.i.i72.2
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !45
  %i.hb = mul i64 %i.ha, %i.gy
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.hb ; 3 uses
  %indvars.iv.next.i.i.i72.3 = add nuw nsw i64 %indvars.iv.i.i.i70, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN2cv3Mat2atINS_3VecIdLi4EEEEERT_PKi.exit.i64.unr-lcssa, label %.lr.ph.i.i.i68.new, !llvm.loop !96

_ZN2cv3Mat2atINS_3VecIdLi4EEEEERT_PKi.exit.i64.unr-lcssa: ; preds = %.lr.ph.i.i.i68.new
  br i1 %lcmp.mod.not, label %_ZN2cv3Mat2atINS_3VecIdLi4EEEEERT_PKi.exit.i64, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN2cv3Mat2atINS_3VecIdLi4EEEEERT_PKi.exit.i64.unr-lcssa, %.lr.ph.i.i.i68
  %indvars.iv.i.i.i70.epil.init = phi i64 [ 0, %.lr.ph.i.i.i68 ], [ %indvars.iv.next.i.i.i72.3, %_ZN2cv3Mat2atINS_3VecIdLi4EEEEERT_PKi.exit.i64.unr-lcssa ]
  %.010.i.i.i71.epil.init = phi ptr [ %i.ga, %.lr.ph.i.i.i68 ], [ %i.hc, %_ZN2cv3Mat2atINS_3VecIdLi4EEEEERT_PKi.exit.i64.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod148)
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.epil.preheader
  %indvars.iv.i.i.i70.epil = phi i64 [ %indvars.iv.i.i.i70.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.i72.epil, %bb.p ] ; 3 uses
  %.010.i.i.i71.epil = phi ptr [ %.010.i.i.i71.epil.init, %.epil.preheader ], [ %i.hj, %bb.p ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.p ]
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv.i.i.i70.epil
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !52
  %i.hf = sext i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %indvars.iv.i.i.i70.epil
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !45
  %i.hi = mul i64 %i.hh, %i.hf
  %i.hj = getelementptr inbounds nuw i8, ptr %.010.i.i.i71.epil, i64 %i.hi ; 2 uses
  %indvars.iv.next.i.i.i72.epil = add nuw nsw i64 %indvars.iv.i.i.i70.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN2cv3Mat2atINS_3VecIdLi4EEEEERT_PKi.exit.i64, label %bb.p, !llvm.loop !105

_ZN2cv3Mat2atINS_3VecIdLi4EEEEERT_PKi.exit.i64:   ; preds = %bb.p, %_ZN2cv3Mat2atINS_3VecIdLi4EEEEERT_PKi.exit.i64.unr-lcssa
  %.lcssa146 = phi ptr [ %i.hc, %_ZN2cv3Mat2atINS_3VecIdLi4EEEEERT_PKi.exit.i64.unr-lcssa ], [ %i.hj, %bb.p ] ; 4 uses
  br i1 %i.es, label %.lr.ph.i66.preheader, label %.loopexit87

.lr.ph.i66.preheader:                             ; preds = %_ZN2cv3Mat2atINS_3VecIdLi4EEEEERT_PKi.exit.i64
  br i1 %min.iters.check, label %.lr.ph.i66.preheader145, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i66.preheader
  %i.hk = getelementptr i8, ptr %.lcssa146, i64 %i.ey
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hl = shl i64 %index, 5                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.lcssa146, i64 %i.hl ; 5 uses
  %i.hm = getelementptr i8, ptr %.lcssa146, i64 %i.hl ; 4 uses
  %next.gep121 = getelementptr i8, ptr %i.hm, i64 32
  %i.hn = load double, ptr %next.gep, align 8, !tbaa !73
  %i.ho = load double, ptr %next.gep121, align 8, !tbaa !73
  %i.hp = insertelement <2 x double> poison, double %i.hn, i64 0
  %i.hq = insertelement <2 x double> %i.hp, double %i.ho, i64 1 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.hs = getelementptr i8, ptr %i.hm, i64 40
  %i.ht = load double, ptr %i.hr, align 8, !tbaa !73
  %i.hu = load double, ptr %i.hs, align 8, !tbaa !73
  %i.hv = insertelement <2 x double> poison, double %i.ht, i64 0
  %i.hw = insertelement <2 x double> %i.hv, double %i.hu, i64 1 ; 3 uses
  %i.hx = fmul <2 x double> %i.hw, %i.hw
  %i.hy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hq, <2 x double> %i.hq, <2 x double> %i.hx)
  %i.hz = getelementptr inbounds nuw i8, ptr %next.gep, i64 16
  %i.ia = getelementptr i8, ptr %i.hm, i64 48
  %i.ib = load double, ptr %i.hz, align 8, !tbaa !73
  %i.ic = load double, ptr %i.ia, align 8, !tbaa !73
  %i.id = insertelement <2 x double> poison, double %i.ib, i64 0
  %i.ie = insertelement <2 x double> %i.id, double %i.ic, i64 1 ; 3 uses
  %i.if = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ie, <2 x double> %i.ie, <2 x double> %i.hy)
  %i.ig = getelementptr inbounds nuw i8, ptr %next.gep, i64 24
  %i.ih = getelementptr i8, ptr %i.hm, i64 56
  %i.ii = load double, ptr %i.ig, align 8, !tbaa !73
  %i.ij = load double, ptr %i.ih, align 8, !tbaa !73
  %i.ik = insertelement <2 x double> poison, double %i.ii, i64 0
  %i.il = insertelement <2 x double> %i.ik, double %i.ij, i64 1 ; 3 uses
  %i.im = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.il, <2 x double> %i.il, <2 x double> %i.if)
  %i.in = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.im)
  %i.io = fdiv <2 x double> splat (double 1.000000e+00), %i.in ; 2 uses
  %i.ip = shufflevector <2 x double> %i.hq, <2 x double> %i.hw, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.iq = shufflevector <2 x double> %i.io, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ir = fmul <4 x double> %i.ip, %i.iq
  %i.is = shufflevector <2 x double> %i.ie, <2 x double> %i.il, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.it = shufflevector <2 x double> %i.io, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.iu = fmul <4 x double> %i.is, %i.it
  %interleaved.vec = shufflevector <4 x double> %i.ir, <4 x double> %i.iu, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %next.gep, align 8, !tbaa !73
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.iv = icmp eq i64 %index.next, %n.vec
  br i1 %i.iv, label %middle.block, label %vector.body, !llvm.loop !106

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit87, label %.lr.ph.i66.preheader145

.lr.ph.i66.preheader145:                          ; preds = %.lr.ph.i66.preheader, %middle.block
  %.01.i.ph = phi ptr [ %.lcssa146, %.lr.ph.i66.preheader ], [ %i.hk, %middle.block ]
  %.ph = phi i32 [ 0, %.lr.ph.i66.preheader ], [ %i.ez, %middle.block ]
  br label %.lr.ph.i66

.lr.ph.i66:                                       ; preds = %.lr.ph.i66.preheader145, %.lr.ph.i66
  %.01.i = phi ptr [ %i.jm, %.lr.ph.i66 ], [ %.01.i.ph, %.lr.ph.i66.preheader145 ] ; 4 uses
  %i.iw = phi i32 [ %i.jn, %.lr.ph.i66 ], [ %.ph, %.lr.ph.i66.preheader145 ]
  %i.ix = getelementptr inbounds nuw i8, ptr %.01.i, i64 16 ; 2 uses
  %i.iy = load <2 x double>, ptr %.01.i, align 8, !tbaa !73 ; 4 uses
  %foldExtExtBinop140 = fmul <2 x double> %i.iy, %i.iy
  %i.iz = extractelement <2 x double> %foldExtExtBinop140, i64 1
  %i.ja = extractelement <2 x double> %i.iy, i64 0 ; 2 uses
  %i.jb = tail call double @llvm.fmuladd.f64(double %i.ja, double %i.ja, double %i.iz)
  %i.jc = load <2 x double>, ptr %i.ix, align 8, !tbaa !73 ; 3 uses
  %i.jd = extractelement <2 x double> %i.jc, i64 0 ; 2 uses
  %i.je = tail call double @llvm.fmuladd.f64(double %i.jd, double %i.jd, double %i.jb)
  %i.jf = extractelement <2 x double> %i.jc, i64 1 ; 2 uses
  %i.jg = tail call double @llvm.fmuladd.f64(double %i.jf, double %i.jf, double %i.je)
  %sqrt.i.i67 = tail call double @llvm.sqrt.f64(double %i.jg)
  %i.jh = fdiv double 1.000000e+00, %sqrt.i.i67
  %i.ji = insertelement <2 x double> poison, double %i.jh, i64 0
  %i.jj = shufflevector <2 x double> %i.ji, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jk = fmul <2 x double> %i.iy, %i.jj
  store <2 x double> %i.jk, ptr %.01.i, align 8, !tbaa !73
  %i.jl = fmul <2 x double> %i.jc, %i.jj
  store <2 x double> %i.jl, ptr %i.ix, align 8, !tbaa !73
  %i.jm = getelementptr inbounds nuw i8, ptr %.01.i, i64 32
  %i.jn = add nuw nsw i32 %i.iw, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.jn, %i.r
  br i1 %exitcond.not.i, label %.loopexit87, label %.lr.ph.i66, !llvm.loop !107

.loopexit87:                                      ; preds = %.lr.ph.i66, %middle.block, %_ZN2cv3Mat2atINS_3VecIdLi4EEEEERT_PKi.exit.i64
  store i32 0, ptr %i.ep, align 4, !tbaa !52
  %i.jo = add i32 %.03091, 1                      ; 2 uses
  %exitcond.not = icmp eq i32 %i.jo, %i.em
  br i1 %exitcond.not, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.lr.ph.preheader, !llvm.loop !108

_ZNSt6vectorIiSaIiEED2Ev.exit75:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i42, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i58
  %.pn = phi { ptr, i32 } [ %i.ft, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i58 ], [ %i.ff, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i42 ], [ %i.fz, %bb.o ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ee, i64 noundef %i.ed) #18
  br label %common.resume

.loopexit:                                        ; preds = %"_ZZN2cv3Mat12forEach_implINS_3VecIdLi4EEEZNS_8ximgproc8qunitaryERKNS_11_InputArrayERKNS_12_OutputArrayEE3$_0EEvRKT0_ENK21PixelOperationWrapper8rowCall2Eii.exit.loopexit.us", %.lr.ph.i.i.i.lr.ph, %bb.e, %_ZNSt6vectorIiSaIiEED2Ev.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #13

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { noreturn }
attributes #17 = { nounwind }
attributes #18 = { builtin nounwind }
attributes #19 = { builtin allocsize(0) }
attributes #20 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !11, i64 0}
!9 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0, !13, i64 8, !6, i64 16}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!6, !6, i64 0}
end_hunk_0
