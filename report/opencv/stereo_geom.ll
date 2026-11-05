Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/stereo_geom?download=true
inline.NumInlined: 988
inline.NumDeleted: 267
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN2cv17rectify3CollinearERKNS_11_InputArrayES2_S2_S2_S2_S2_S2_S2_NS_5Size_IiEES2_S2_S2_S2_RKNS_12_OutputArrayES7_S7_S7_S7_S7_S7_dS4_PNS_5Rect_IiEESA_i:bb.a
  %i.vt = icmp sgt i32 %i.vs, 1
  %i.vu = getelementptr inbounds nuw i8, ptr %63, i64 24
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !40
  %i.vw = getelementptr inbounds nuw i8, ptr %63, i64 128
  %i.vx = load i64, ptr %i.vw, align 8
  %.not291 = select i1 %i.vt, i1 %i.dy, i1 false
  %.sink.idx.i275 = select i1 %.not291, i64 %i.vx, i64 0
  %.sink.i276 = getelementptr inbounds nuw i8, ptr %i.vv, i64 %.sink.idx.i275 ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %.sink.i276, i64 24
  %i.vz = load double, ptr %i.vy, align 8, !tbaa !29
  %i.wa = getelementptr inbounds nuw [8 x i8], ptr %.sink.i276, i64 %i.vh
  %i.wb = load double, ptr %i.wa, align 8, !tbaa !29
  %i.wc = fdiv double %i.vz, %i.wb
  %i.wd = fdiv double %i.vq, %i.wc
  %i.we = fptrunc double %i.wd to float
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %98) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #19
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %95) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #19
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %85) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #19
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %84) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #19
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %82) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #19
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %77) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %68) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %67) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %66) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %65) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %64) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %63) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %62) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %61) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %60) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %59) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %58) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #19
  ret float %i.we

bb.fu:                                            ; preds = %bb.fs, %bb.fh, %bb.fg
  %.pn136.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn136.pn.pn.pn.pn, %bb.fs ], [ %i.va, %bb.fh ], [ %i.uz, %bb.fg ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %98) #19
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ff
  %.pn136.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn136.pn.pn.pn.pn.pn, %bb.fu ], [ %i.uy, %bb.ff ]
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #19
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fe
  %.pn136.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn136.pn.pn.pn.pn.pn.pn, %bb.fv ], [ %i.ux, %bb.fe ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %95) #19
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fd
  %.pn136.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn136.pn.pn.pn.pn.pn.pn.pn, %bb.fw ], [ %.pn130, %bb.fd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #19
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fb, %bb.es, %bb.er, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227, %bb.by
  %.pn136.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn136.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fx ], [ %.pn125.pn.pn.pn, %bb.fb ], [ %i.uq, %bb.es ], [ %i.up, %bb.er ], [ %.pn120, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227 ], [ %i.gf, %bb.by ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %85) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #19
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %84) #19
  br label %.body223

.body223:                                         ; preds = %bb.bx, %.body.i221, %bb.fy
  %.pn136.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn136.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fy ], [ %i.ge, %bb.bx ], [ %i.ft, %.body.i221 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #19
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %82) #19
  br label %bb.fz

bb.fz:                                            ; preds = %.body223, %bb.bw
  %.pn136.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn136.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body223 ], [ %.pn116, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #19
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.bk
  %.pn136.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn136.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fz ], [ %.pn114, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ej, %bb.bk ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %77) #19
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.bj
  %.pn136.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn136.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ga ], [ %.pn110, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #19
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i198, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.gb, %bb.bh, %bb.bg, %bb.ax, %bb.av, %bb.al, %bb.ai
  %.pn136.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn136.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.gb ], [ %i.eh, %bb.bh ], [ %i.eg, %bb.bg ], [ %i.cp, %bb.av ], [ %i.cs, %bb.ax ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bm, %bb.ai ], [ %i.bp, %bb.al ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i198 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %68) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %67) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %66) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %65) #19
  br label %bb.gc

bb.gc:                                            ; preds = %.body, %bb.ah
  %.pn136.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn136.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body ], [ %i.bl, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %64) #19
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.ag
  %.pn136.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn136.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.gc ], [ %i.bk, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %63) #19
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.af
  %.pn136.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn136.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.gd ], [ %i.bj, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %62) #19
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.ae
  %.pn136.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn136.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ge ], [ %i.bi, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #19
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ad
  %.pn136.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn136.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.gf ], [ %i.bh, %bb.ad ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %61) #19
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.ac
  %.pn136.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn136.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.gg ], [ %i.bg, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %60) #19
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.ab
  %.pn136.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn136.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.gh ], [ %i.bf, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %59) #19
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.aa
  %.pn136.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn136.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.gi ], [ %i.be, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %58) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #19
  resume { ptr, i32 } %.pn136.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

declare void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare void @_ZN2cvmlERKNS_7MatExprES2_(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(688), ptr noundef nonnull align 8 dereferenceable(688)) local_unnamed_addr #2

declare void @_ZN2cvmlERKNS_3MatERKNS_7MatExprE(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(688)) local_unnamed_addr #2

declare void @_ZNK2cv3Mat1tEv(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN2cv7fisheye13stereoRectifyERKNS_11_InputArrayES3_S3_S3_RKNS_5Size_IiEES3_S3_RKNS_12_OutputArrayESA_SA_SA_SA_iS7_dd(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef %12, ptr noundef nonnull align 4 dereferenceable(8) %13, double noundef %14, double noundef %15) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::allocator", align 1   ; 3 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::allocator", align 1   ; 3 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %21 = alloca %"class.std::allocator", align 1   ; 3 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.std::allocator", align 1   ; 3 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %25 = alloca %"class.std::allocator", align 1   ; 3 uses
  %26 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %28 = alloca %"class.std::allocator", align 1   ; 3 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %30 = alloca %"class.std::allocator", align 1   ; 3 uses
  %31 = alloca %"class.cv::Mat", align 8          ; 6 uses
  %32 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %33 = alloca %"class.cv::Vec.11", align 16      ; 10 uses
  %34 = alloca %"class.cv::Matx.20", align 16     ; 11 uses
  %35 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %36 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %37 = alloca %"class.cv::Vec.11", align 8       ; 5 uses
  %38 = alloca %"class.cv::Affine3", align 16     ; 14 uses
  %39 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %40 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %41 = alloca %"class.cv::Vec.11", align 8       ; 9 uses
  %42 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %43 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %44 = alloca %"class.cv::Matx.20", align 16     ; 16 uses
  %45 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %46 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %47 = alloca %"class.cv::Vec.11", align 16      ; 8 uses
  %48 = alloca %"class.cv::Matx.20", align 16     ; 11 uses
  %49 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %50 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %51 = alloca %"class.cv::Matx.20", align 8      ; 12 uses
  %52 = alloca %"class.cv::Mat", align 16         ; 17 uses
  %53 = alloca %"class.cv::Matx.20", align 8      ; 14 uses
  %54 = alloca %"class.cv::Mat", align 16         ; 17 uses
  %55 = alloca %"class.cv::Matx.20", align 8      ; 8 uses
  %56 = alloca %"class.cv::Matx.20", align 8      ; 8 uses
  %57 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %58 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %59 = alloca %"class.cv::Mat", align 16         ; 17 uses
  %60 = alloca %"class.cv::Matx.23", align 8      ; 14 uses
  %61 = alloca %"class.cv::Mat", align 16         ; 17 uses
  %62 = alloca %"class.cv::Matx.23", align 8      ; 15 uses
  %63 = alloca %"class.cv::Mat", align 16         ; 17 uses
  %64 = alloca %"class.cv::Matx", align 8         ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #19
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %26, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv7fisheye13stereoRectifyERKNS_11_InputArrayES3_S3_S3_RKNS_5Size_IiEES3_S3_RKNS_12_OutputArrayESA_SA_SA_SA_iS7_ddE25__cv_trace_location_fn635)
  %i.a = invoke i64 @_ZNK2cv11_InputArray4sizeEi(ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef -1)
          to label %bb.b unwind label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %i.a, 12884901891
  br i1 %i.b, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = invoke noundef i64 @_ZNK2cv11_InputArray5totalEi(ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef -1)
          to label %bb.d unwind label %bb.t

bb.d:                                             ; preds = %bb.c
  %i.d = invoke noundef i32 @_ZNK2cv11_InputArray8channelsEi(ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef -1)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %bb.d
  %i.e = sext i32 %i.d to i64
  %i.f = mul i64 %i.c, %i.e
  %i.g = icmp eq i64 %i.f, 3
  br i1 %i.g, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.h = invoke noundef i32 @_ZNK2cv11_InputArray5depthEi(ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef -1)
          to label %bb.g unwind label %bb.t

bb.g:                                             ; preds = %bb.f
  %i.i = icmp eq i32 %i.h, 5
  br i1 %i.i, label %.critedge151, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = invoke noundef i32 @_ZNK2cv11_InputArray5depthEi(ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef -1)
          to label %bb.i unwind label %bb.t

bb.i:                                             ; preds = %bb.h
  %i.k = icmp eq i32 %i.j, 6
  br i1 %i.k, label %.critedge151, label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %28)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %.critedge
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull @__func__._ZN2cv13stereoRectifyERKNS_11_InputArrayES2_S2_S2_NS_5Size_IiEES2_S2_RKNS_12_OutputArrayES7_S7_S7_S7_idS4_PNS_5Rect_IiEESA_, ptr noundef nonnull @.str.1, i32 noundef 637) #20
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %.critedge
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.m:                                             ; preds = %bb.j
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %27, align 8, !tbaa !24    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.q = load i64, ptr %i.o, align 8, !tbaa !25
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.l
  %.pn96 = phi { ptr, i32 } [ %i.l, %bb.l ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.m, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19
  br label %bb.ek

.critedge151:                                     ; preds = %bb.g, %bb.i
  %i.s = invoke noundef i64 @_ZNK2cv11_InputArray5totalEi(ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef -1)
          to label %bb.n unwind label %bb.t

bb.n:                                             ; preds = %.critedge151
  %i.t = invoke noundef i32 @_ZNK2cv11_InputArray8channelsEi(ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef -1)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.u = sext i32 %i.t to i64
  %i.v = mul i64 %i.s, %i.u
  %i.w = icmp eq i64 %i.v, 3
  br i1 %i.w, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.x = invoke noundef i32 @_ZNK2cv11_InputArray5depthEi(ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef -1)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.y = icmp eq i32 %i.x, 5
  br i1 %i.y, label %bb.z, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.z = invoke noundef i32 @_ZNK2cv11_InputArray5depthEi(ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef -1)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.aa = icmp eq i32 %i.z, 6
  br i1 %i.aa, label %bb.z, label %bb.u

bb.t:                                             ; preds = %bb.c, %bb.d, %bb.f, %bb.h, %bb.a, %bb.r, %bb.p, %bb.n, %.critedge151
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek

bb.u:                                             ; preds = %bb.s, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %30)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull @__func__._ZN2cv13stereoRectifyERKNS_11_InputArrayES2_S2_S2_NS_5Size_IiEES2_S2_RKNS_12_OutputArrayES7_S7_S7_S7_idS4_PNS_5Rect_IiEESA_, ptr noundef nonnull @.str.1, i32 noundef 638) #20
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  unreachable

bb.x:                                             ; preds = %bb.u
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167

bb.y:                                             ; preds = %bb.v
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = load ptr, ptr %29, align 8, !tbaa !24   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165: ; preds = %bb.y
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !25
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165, %bb.x
  %.pn98 = phi { ptr, i32 } [ %i.ac, %bb.x ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165 ], [ %i.ad, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #19
  br label %bb.ek

bb.z:                                             ; preds = %bb.q, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #19
  %i.aj = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %.noexc unwind label %bb.ak

.noexc:                                           ; preds = %bb.z
  %i.ak = icmp eq i32 %i.aj, 65536
  br i1 %i.ak, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.noexc
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !12, !noalias !271
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %32, ptr noundef nonnull align 8 dereferenceable(208) %i.am)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.ak

bb.ab:                                            ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %32, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.ak

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.aa, %bb.ab
  invoke void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %31, ptr noundef nonnull align 8 dereferenceable(208) %32, i32 noundef 3, i32 noundef 1)
          to label %bb.ac unwind label %bb.al

bb.ac:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %32) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %33, i8 0, i64 24, i1 false), !tbaa !29
  %i.an = invoke i64 @_ZNK2cv11_InputArray4sizeEi(ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef -1)
          to label %bb.ad unwind label %bb.an

bb.ad:                                            ; preds = %bb.ac
end_hunk_0
begin_hunk_1_@_ZN2cv7fisheye13stereoRectifyERKNS_11_InputArrayES3_S3_S3_RKNS_5Size_IiEES3_S3_RKNS_12_OutputArrayESA_SA_SA_SA_iS7_dd:bb.a
  %.pn100 = phi { ptr, i32 } [ %i.bq, %bb.al ], [ %i.bp, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #19
  br label %bb.ej

bb.an:                                            ; preds = %bb.at, %bb.au, %bb.ac
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

bb.ao:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ah
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %35) #19
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pn105.pn = phi { ptr, i32 } [ %i.bt, %bb.ap ], [ %i.bs, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #19
  br label %bb.as

bb.ar:                                            ; preds = %bb.ai
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #19
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.pn108 = phi { ptr, i32 } [ %i.bu, %bb.ar ], [ %.pn105.pn, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #19
  br label %bb.ei

bb.at:                                            ; preds = %bb.ad
  %i.bv = invoke noundef i64 @_ZNK2cv11_InputArray5totalEi(ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef -1)
          to label %bb.au unwind label %bb.an

bb.au:                                            ; preds = %bb.at
  %i.bw = invoke noundef i32 @_ZNK2cv11_InputArray8channelsEi(ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef -1)
          to label %bb.av unwind label %bb.an

bb.av:                                            ; preds = %bb.au
  %i.bx = sext i32 %i.bw to i64
  %i.by = mul i64 %i.bv, %i.bx
  %i.bz = icmp eq i64 %i.by, 3
  br i1 %i.bz, label %bb.aw, label %bb.be

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #19
  %i.ca = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %.noexc174 unwind label %bb.bb

.noexc174:                                        ; preds = %bb.aw
  %i.cb = icmp eq i32 %i.ca, 65536
  br i1 %i.cb, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.noexc174
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !12, !noalias !273
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %39, ptr noundef nonnull align 8 dereferenceable(208) %i.cd)
          to label %bb.az unwind label %bb.bb

bb.ay:                                            ; preds = %.noexc174
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %39, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef -1)
          to label %bb.az unwind label %bb.bb

bb.az:                                            ; preds = %bb.ay, %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #19
  %i.ce = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i32 -1040056314, ptr %40, align 8, !tbaa !30
  store ptr %33, ptr %i.ce, align 8, !tbaa !12
  %i.cf = getelementptr inbounds nuw i8, ptr %40, i64 16
  store i64 12884901889, ptr %i.cf, align 8, !tbaa !27
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %39, ptr noundef nonnull align 8 dereferenceable(24) %40, i32 noundef 6, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.ba unwind label %bb.bc

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %39) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #19
  br label %bb.be

bb.bb:                                            ; preds = %bb.ay, %bb.ax, %bb.aw
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bc:                                            ; preds = %bb.az
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %39) #19
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.pn102.pn = phi { ptr, i32 } [ %i.ch, %bb.bc ], [ %i.cg, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #19
  br label %bb.ei

bb.be:                                            ; preds = %bb.aj, %bb.ba, %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %41, i8 0, i64 24, i1 false), !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #19
  %i.ci = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %.noexc178 unwind label %bb.bm

.noexc178:                                        ; preds = %bb.be
  %i.cj = icmp eq i32 %i.ci, 65536
  br i1 %i.cj, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.noexc178
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !12, !noalias !274
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %42, ptr noundef nonnull align 8 dereferenceable(208) %i.cl)
          to label %bb.bh unwind label %bb.bm

bb.bg:                                            ; preds = %.noexc178
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %42, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef -1)
          to label %bb.bh unwind label %bb.bm

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #19
  %i.cm = getelementptr inbounds nuw i8, ptr %43, i64 8
  store i32 -1040056314, ptr %43, align 8, !tbaa !30
  store ptr %41, ptr %i.cm, align 8, !tbaa !12
  %i.cn = getelementptr inbounds nuw i8, ptr %43, i64 16
  store i64 12884901889, ptr %i.cn, align 8, !tbaa !27
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %42, ptr noundef nonnull align 8 dereferenceable(24) %43, i32 noundef 6, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.bi unwind label %bb.bn

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %42) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #19
  %i.co = load <2 x double>, ptr %33, align 16, !tbaa !29
  %i.cp = fmul <2 x double> %i.co, splat (double -5.000000e-01)
  store <2 x double> %i.cp, ptr %33, align 16, !tbaa !29
  %i.cq = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.cr = load double, ptr %i.cq, align 16, !tbaa !29
  %i.cs = fmul double %i.cr, -5.000000e-01
  store double %i.cs, ptr %i.cq, align 16, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %44, i8 0, i64 72, i1 false), !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #19
  %i.ct = getelementptr inbounds nuw i8, ptr %45, i64 16
  store i32 -1056833530, ptr %45, align 8, !tbaa !30
  %i.cu = getelementptr inbounds nuw i8, ptr %45, i64 8
  store ptr %33, ptr %i.cu, align 8, !tbaa !12
  store i64 12884901889, ptr %i.ct, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #19
  %i.cv = getelementptr inbounds nuw i8, ptr %46, i64 8
  store i32 -1040056314, ptr %46, align 8, !tbaa !30
  store ptr %44, ptr %i.cv, align 8, !tbaa !12
  %i.cw = getelementptr inbounds nuw i8, ptr %46, i64 16
  store i64 12884901891, ptr %i.cw, align 8, !tbaa !27
  %i.cx = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.bj unwind label %bb.bp

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZN2cv9RodriguesERKNS_11_InputArrayERKNS_12_OutputArrayES5_(ptr noundef nonnull align 8 dereferenceable(24) %45, ptr noundef nonnull align 8 dereferenceable(24) %46, ptr noundef nonnull align 8 dereferenceable(24) %i.cx)
          to label %bb.bk unwind label %bb.bp

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #19
  %i.cy = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %44, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %44, i64 24 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %44, i64 32
  %i.de = getelementptr inbounds nuw i8, ptr %44, i64 40 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %44, i64 48 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %44, i64 56
  %i.dh = getelementptr inbounds nuw i8, ptr %44, i64 64 ; 3 uses
  %i.di = load double, ptr %i.dh, align 16, !tbaa !29, !noalias !275
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #19
  %i.dj = load <1 x double>, ptr %41, align 8
  %i.dk = load <1 x double>, ptr %i.cz, align 8
  %i.dl = load double, ptr %i.db, align 8, !tbaa !29, !noalias !275
  %i.dm = load <8 x double>, ptr %44, align 16, !tbaa !29, !noalias !275 ; 6 uses
  %i.dn = shufflevector <8 x double> %i.dm, <8 x double> poison, <2 x i32> <i32 3, i32 6>
  %i.do = shufflevector <1 x double> %i.dj, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dn, <2 x double> %i.do, <2 x double> zeroinitializer)
  %i.dq = shufflevector <8 x double> %i.dm, <8 x double> poison, <2 x i32> <i32 6, i32 0>
  %i.dr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dq, <2 x double> %i.do, <2 x double> zeroinitializer)
  %i.ds = shufflevector <8 x double> %i.dm, <8 x double> poison, <2 x i32> <i32 4, i32 7>
  %i.dt = shufflevector <1 x double> %i.dk, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.du = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ds, <2 x double> %i.dt, <2 x double> %i.dp)
  %i.dv = shufflevector <8 x double> %i.dm, <8 x double> poison, <2 x i32> <i32 7, i32 1>
  %i.dw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dv, <2 x double> %i.dt, <2 x double> %i.dr)
  %i.dx = shufflevector <8 x double> %i.dm, <8 x double> poison, <2 x i32> <i32 5, i32 poison>
  %i.dy = insertelement <2 x double> %i.dx, double %i.di, i64 1 ; 2 uses
  %i.dz = insertelement <2 x double> poison, double %i.dl, i64 0
  %i.ea = shufflevector <2 x double> %i.dz, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dy, <2 x double> %i.ea, <2 x double> %i.du) ; 3 uses
  %i.ec = shufflevector <2 x double> %i.dy, <2 x double> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ed = shufflevector <8 x double> %i.ec, <8 x double> %i.dm, <2 x i32> <i32 1, i32 10>
  %i.ee = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ed, <2 x double> %i.ea, <2 x double> %i.dw) ; 2 uses
  %i.ef = extractelement <2 x double> %i.ee, i64 1 ; 5 uses
  %i.eg = fcmp ogt double %i.ef, 0.000000e+00
  %i.eh = select i1 %i.eg, double 1.000000e+00, double -1.000000e+00 ; 2 uses
  %i.ei = fmul <2 x double> %i.ee, splat (double -0.000000e+00)
  %i.ej = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.eh, i64 1
  %i.ek = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eb, <2 x double> %i.ej, <2 x double> %i.ei) ; 3 uses
  %i.el = fneg double %i.eh
  %65 = extractelement <2 x double> %i.eb, i64 0  ; 3 uses
  %66 = fmul double %65, %i.el
  %67 = extractelement <2 x double> %i.ek, i64 0  ; 3 uses
  store double %67, ptr %47, align 16, !tbaa !29, !alias.scope !276
  %68 = getelementptr inbounds nuw i8, ptr %47, i64 8
  %69 = extractelement <2 x double> %i.ek, i64 1  ; 3 uses
  store double %69, ptr %68, align 8, !tbaa !29, !alias.scope !276
  %70 = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 2 uses
  %71 = call double @llvm.fmuladd.f64(double %i.ef, double 0.000000e+00, double %66) ; 4 uses
  store double %71, ptr %70, align 16, !tbaa !29, !alias.scope !276
  %72 = call double @llvm.fmuladd.f64(double %67, double %67, double 0.000000e+00)
  %73 = call double @llvm.fmuladd.f64(double %69, double %69, double %72)
  %i.em = call noundef double @llvm.fmuladd.f64(double %71, double %71, double %73) ; 2 uses
  %i.en = fcmp ogt double %i.em, 0.000000e+00
  br i1 %i.en, label %bb.bl, label %bb.bq

bb.bl:                                            ; preds = %bb.bk
  %i.eo = extractelement <2 x double> %i.eb, i64 1 ; 2 uses
  %74 = call double @llvm.fmuladd.f64(double %i.ef, double %i.ef, double 0.000000e+00)
  %i.ep = call double @llvm.fmuladd.f64(double %65, double %65, double %74)
  %i.eq = call noundef double @llvm.fmuladd.f64(double %i.eo, double %i.eo, double %i.ep)
  %i.er = insertelement <2 x double> poison, double %i.em, i64 0
  %i.es = insertelement <2 x double> %i.er, double %i.eq, i64 1
  %i.et = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.es) ; 2 uses
  %i.eu = call double @llvm.fabs.f64(double %i.ef)
  %i.ev = extractelement <2 x double> %i.et, i64 1
  %i.ew = fdiv double %i.eu, %i.ev
  %i.ex = call double @acos(double noundef %i.ew) #19
  %i.ey = extractelement <2 x double> %i.et, i64 0
  %i.ez = fdiv double %i.ex, %i.ey                ; 2 uses
  %i.fa = insertelement <2 x double> poison, double %i.ez, i64 0
  %i.fb = shufflevector <2 x double> %i.fa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fc = fmul <2 x double> %i.ek, %i.fb
  store <2 x double> %i.fc, ptr %47, align 16, !tbaa !29
  %i.fd = fmul double %71, %i.ez
  store double %i.fd, ptr %70, align 16, !tbaa !29
  br label %bb.bq

bb.bm:                                            ; preds = %bb.bg, %bb.bf, %bb.be
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bh
  %i.ff = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %42) #19
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.pn110.pn = phi { ptr, i32 } [ %i.ff, %bb.bn ], [ %i.fe, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #19
  br label %bb.eh

bb.bp:                                            ; preds = %bb.bj, %bb.bi
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #19
  br label %bb.eg

bb.bq:                                            ; preds = %bb.bl, %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %48, i8 0, i64 72, i1 false), !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #19
  %i.fh = getelementptr inbounds nuw i8, ptr %49, i64 16
  store i32 -1056833530, ptr %49, align 8, !tbaa !30
  %i.fi = getelementptr inbounds nuw i8, ptr %49, i64 8
  store ptr %47, ptr %i.fi, align 8, !tbaa !12
  store i64 12884901889, ptr %i.fh, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #19
  %i.fj = getelementptr inbounds nuw i8, ptr %50, i64 8
  store i32 -1040056314, ptr %50, align 8, !tbaa !30
  store ptr %48, ptr %i.fj, align 8, !tbaa !12
  %i.fk = getelementptr inbounds nuw i8, ptr %50, i64 16
  store i64 12884901891, ptr %i.fk, align 8, !tbaa !27
  %i.fl = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.br unwind label %bb.cl

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZN2cv9RodriguesERKNS_11_InputArrayERKNS_12_OutputArrayES5_(ptr noundef nonnull align 8 dereferenceable(24) %49, ptr noundef nonnull align 8 dereferenceable(24) %50, ptr noundef nonnull align 8 dereferenceable(24) %i.fl)
          to label %bb.bs unwind label %bb.cl

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #19
  %i.fm = load double, ptr %i.de, align 8, !tbaa !29, !noalias !277 ; 2 uses
  %i.fn = load double, ptr %i.dh, align 16, !tbaa !29, !noalias !277 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %i.fo = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.fq = load <2 x double>, ptr %48, align 16, !tbaa !29, !noalias !278 ; 5 uses
  %i.fr = load <2 x double>, ptr %i.fo, align 16, !tbaa !29, !noalias !278 ; 5 uses
  %i.fs = shufflevector <2 x double> %i.fq, <2 x double> %i.fr, <2 x i32> <i32 1, i32 2>
  %i.ft = insertelement <2 x double> poison, double %i.fn, i64 0
  %i.fu = getelementptr inbounds nuw i8, ptr %48, i64 32 ; 2 uses
  %i.fv = load double, ptr %i.fu, align 16, !tbaa !29, !noalias !278 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %48, i64 40 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %51, i64 24
  %i.fy = getelementptr inbounds nuw i8, ptr %51, i64 40
  %i.fz = load <2 x double>, ptr %i.fw, align 8, !tbaa !29, !noalias !278 ; 4 uses
  %i.ga = insertelement <2 x double> poison, double %i.fv, i64 0
  %i.gb = shufflevector <2 x double> %i.ga, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gc = shufflevector <2 x double> %i.fz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gd = getelementptr inbounds nuw i8, ptr %48, i64 56 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %51, i64 48
  %i.gf = load <2 x double>, ptr %i.da, align 16  ; 2 uses
  %i.gg = load double, ptr %i.dc, align 8, !tbaa !29, !noalias !277 ; 2 uses
  %i.gh = load double, ptr %i.dd, align 16, !tbaa !29, !noalias !277 ; 2 uses
  %i.gi = shufflevector <2 x double> %i.fq, <2 x double> %i.fr, <2 x i32> <i32 0, i32 3>
  %i.gj = insertelement <2 x double> poison, double %i.gg, i64 0
  %i.gk = shufflevector <2 x double> %i.gj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gi, <2 x double> %i.gk, <2 x double> zeroinitializer) ; 2 uses
  %i.gm = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.gl, <2 x i32> <i32 0, i32 2>
  %i.gn = insertelement <2 x double> %i.gf, double %i.fm, i64 1 ; 2 uses
  %i.go = load <2 x double>, ptr %44, align 16, !tbaa !29, !noalias !277 ; 4 uses
  %i.gp = shufflevector <2 x double> %i.ft, <2 x double> %i.go, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.gq = load <2 x double>, ptr %i.df, align 16, !tbaa !29, !noalias !277 ; 4 uses
  %i.gr = load double, ptr %i.dg, align 8, !tbaa !29, !noalias !277
  %i.gs = shufflevector <2 x double> %i.gq, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gt = insertelement <2 x double> %i.gs, double %i.fm, i64 1
  %i.gu = shufflevector <2 x double> %i.fz, <2 x double> %i.fr, <2 x i32> <i32 1, i32 3>
  %i.gv = insertelement <2 x double> %i.gs, double %i.gg, i64 0
  %i.gw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gu, <2 x double> %i.gv, <2 x double> zeroinitializer) ; 2 uses
  %i.gx = extractelement <2 x double> %i.gw, i64 1
  %i.gy = call double @llvm.fmuladd.f64(double %i.fv, double %i.gr, double %i.gx)
  %i.gz = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.gy, i64 0
  %i.ha = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fz, <2 x double> %i.gp, <2 x double> %i.gz) ; 2 uses
  %i.hb = extractelement <2 x double> %i.ha, i64 0
  store double %i.hb, ptr %i.fy, align 8, !tbaa !29, !alias.scope !278
  %i.hc = load <2 x double>, ptr %i.gd, align 8, !tbaa !29, !noalias !278 ; 4 uses
  %i.hd = shufflevector <2 x double> %i.fq, <2 x double> %i.fz, <2 x i32> <i32 0, i32 3>
  %i.he = shufflevector <2 x double> %i.go, <2 x double> %i.gq, <2 x i32> <i32 0, i32 2>
  %i.hf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hd, <2 x double> %i.he, <2 x double> zeroinitializer)
  %i.hg = shufflevector <2 x double> %i.fq, <2 x double> %i.hc, <2 x i32> <i32 1, i32 2>
  %i.hh = shufflevector <2 x double> %i.go, <2 x double> %i.gq, <2 x i32> <i32 1, i32 3>
  %i.hi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hg, <2 x double> %i.hh, <2 x double> %i.hf)
  %i.hj = shufflevector <2 x double> %i.fr, <2 x double> %i.hc, <2 x i32> <i32 0, i32 3>
  %i.hk = insertelement <2 x double> %i.gf, double %i.fn, i64 1
  %i.hl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hj, <2 x double> %i.hk, <2 x double> %i.hi) ; 2 uses
  %i.hm = extractelement <2 x double> %i.hl, i64 0
  store double %i.hm, ptr %51, align 8, !tbaa !29, !alias.scope !278
  %i.hn = insertelement <2 x double> %i.gq, double %i.gh, i64 1
  %i.ho = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fq, <2 x double> %i.hn, <2 x double> %i.gm)
  %i.hp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fs, <2 x double> %i.gt, <2 x double> %i.ho) ; 2 uses
  %i.hq = insertelement <2 x double> %i.hp, double 0.000000e+00, i64 1
  %i.hr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fr, <2 x double> %i.gp, <2 x double> %i.hq) ; 2 uses
  %i.hs = shufflevector <2 x double> %i.hp, <2 x double> %i.hr, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.hs, ptr %i.fp, align 8, !tbaa !29, !alias.scope !278
  %i.ht = shufflevector <2 x double> %i.go, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.hu = insertelement <2 x double> %i.ht, double %i.gh, i64 1 ; 2 uses
  %i.hv = shufflevector <2 x double> %i.hr, <2 x double> %i.gl, <2 x i32> <i32 1, i32 3>
  %i.hw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gb, <2 x double> %i.hu, <2 x double> %i.hv)
  %i.hx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gc, <2 x double> %i.gn, <2 x double> %i.hw)
  store <2 x double> %i.hx, ptr %i.fx, align 8, !tbaa !29, !alias.scope !278
  %i.hy = shufflevector <2 x double> %i.hc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hz = shufflevector <2 x double> %i.ha, <2 x double> %i.gw, <2 x i32> <i32 1, i32 2>
  %i.ia = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hy, <2 x double> %i.hu, <2 x double> %i.hz)
  %i.ib = shufflevector <2 x double> %i.hc, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ic = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ib, <2 x double> %i.gn, <2 x double> %i.ia)
  store <2 x double> %i.ic, ptr %i.ge, align 8, !tbaa !29, !alias.scope !278
  %i.id = getelementptr inbounds nuw i8, ptr %51, i64 64
  %i.ie = extractelement <2 x double> %i.hl, i64 1
  store double %i.ie, ptr %i.id, align 8, !tbaa !29, !alias.scope !278
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #19
  %i.if = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 2 uses
  store <4 x i32> <i32 1124024326, i32 2, i32 3, i32 3>, ptr %52, align 16, !tbaa !27
  %i.ig = getelementptr inbounds nuw i8, ptr %52, i64 16
  store i32 153, ptr %i.ig, align 16, !tbaa !279
  %i.ih = getelementptr inbounds nuw i8, ptr %52, i64 24 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %52, i64 32
  %i.ij = getelementptr inbounds nuw i8, ptr %52, i64 40
  %i.ik = getelementptr inbounds nuw i8, ptr %52, i64 48
  %i.il = getelementptr inbounds nuw i8, ptr %52, i64 72 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ih, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.il, i64 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc183 unwind label %bb.cm

.noexc183:                                        ; preds = %bb.bs
  %i.im = getelementptr inbounds nuw i8, ptr %52, i64 128 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.im, i8 0, i64 80, i1 false)
  %i.in = load i32, ptr %i.il, align 8, !tbaa !26
  %i.io = icmp sgt i32 %i.in, 1
  br i1 %i.io, label %bb.bw, label %bb.bt

bb.bt:                                            ; preds = %.noexc183
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(1) %25)
          to label %.noexc184 unwind label %bb.cm

.noexc184:                                        ; preds = %bb.bt
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.18, i32 noundef 97) #20
          to label %bb.bu unwind label %bb.bv

bb.bu:                                            ; preds = %.noexc184
  unreachable

bb.bv:                                            ; preds = %.noexc184
  %i.ip = landingpad { ptr, i32 }
          cleanup
  %i.iq = load ptr, ptr %24, align 8, !tbaa !24   ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.is = icmp eq ptr %i.iq, %i.ir
  br i1 %i.is, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.bv
  %i.it = load i64, ptr %i.ir, align 8, !tbaa !25
  %i.iu = add i64 %i.it, 1
  call void @_ZdlPvm(ptr noundef %i.iq, i64 noundef %i.iu) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  br label %.body

bb.bw:                                            ; preds = %.noexc183
  %i.iv = getelementptr inbounds nuw i8, ptr %52, i64 136
  %i.iw = getelementptr inbounds nuw i8, ptr %52, i64 84
  %i.ix = load <2 x i32>, ptr %i.if, align 8, !tbaa !27
  %i.iy = load i32, ptr %i.if, align 8, !tbaa !36
  store <2 x i32> %i.ix, ptr %i.iw, align 4, !tbaa !27
  store i64 8, ptr %i.iv, align 8, !tbaa !41
  store i64 24, ptr %i.im, align 16, !tbaa !41
  store ptr %51, ptr %i.ih, align 8, !tbaa !40
  store ptr %51, ptr %i.ii, align 16, !tbaa !280
  %i.iz = sext i32 %i.iy to i64
  %i.ja = mul nsw i64 %i.iz, 24
  %i.jb = getelementptr inbounds nuw i8, ptr %51, i64 %i.ja ; 2 uses
  store ptr %i.jb, ptr %i.ij, align 8, !tbaa !281
  store ptr %i.jb, ptr %i.ik, align 16, !tbaa !282
  %i.jc = invoke noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.bx unwind label %bb.cn
end_hunk_1
