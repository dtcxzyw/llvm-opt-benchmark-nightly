Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/conv2_common?download=true
inline.NumInlined: 689
inline.NumDeleted: 227
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN2cv3dnn14dnn5_v202606059ConvState11initPoolingERKNS_8MatShapeES5_RKSt6vectorIiSaIiEESA_SA_SA_NS1_11AutoPaddingEb:bb.a
bb.bj:                                            ; preds = %bb.bi
  unreachable

bb.bk:                                            ; preds = %bb.bh
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

bb.bl:                                            ; preds = %bb.bi
  %i.fv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fw = load ptr, ptr %31, align 8, !tbaa !17   ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.fy = icmp eq ptr %i.fw, %i.fx
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133: ; preds = %bb.bl
  %i.fz = load i64, ptr %i.fx, align 8, !tbaa !15
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.ga) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133, %bb.bk
  %.pn101 = phi { ptr, i32 } [ %i.fu, %bb.bk ], [ %i.fv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133 ], [ %i.fv, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #17
  br label %bb.bz

bb.bm:                                            ; preds = %.thread163
  %i.gb = load i32, ptr %i.b, align 4, !tbaa !25  ; 2 uses
  %i.gc = icmp sgt i32 %i.gb, -1
  br i1 %i.gc, label %bb.bs, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %34)
          to label %bb.bo unwind label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v202606059ConvState11initPoolingERKNS_8MatShapeES5_RKSt6vectorIiSaIiEESA_SA_SA_NS1_11AutoPaddingEb, ptr noundef nonnull @.str.15, i32 noundef 350) #16
          to label %bb.bp unwind label %bb.br

bb.bp:                                            ; preds = %bb.bo
  unreachable

bb.bq:                                            ; preds = %bb.bn
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

bb.br:                                            ; preds = %bb.bo
  %i.ge = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gf = load ptr, ptr %33, align 8, !tbaa !17   ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.gh = icmp eq ptr %i.gf, %i.gg
  br i1 %i.gh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %bb.br
  %i.gi = load i64, ptr %i.gg, align 8, !tbaa !15
  %i.gj = add i64 %i.gi, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gj) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136, %bb.bq
  %.pn103 = phi { ptr, i32 } [ %i.gd, %bb.bq ], [ %i.ge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136 ], [ %i.ge, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #17
  br label %bb.bz

bb.bs:                                            ; preds = %bb.bm
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.dq
  store i32 %i.fs, ptr %i.gk, align 4, !tbaa !25
  %i.gl = add i32 %reass.sub, 6
  %i.gm = sext i32 %i.gl to i64                   ; 2 uses
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.gm
  store i32 %i.gb, ptr %i.gn, align 4, !tbaa !25
  %i.go = load i32, ptr %i.fp, align 4, !tbaa !25 ; 4 uses
  %i.gp = add nsw i32 %i.fs, -1
  %i.gq = add i32 %i.gp, %i.go
  %i.gr = sdiv i32 %i.gq, %i.go                   ; 2 uses
  %i.gs = add nuw nsw i64 %indvars.iv, 2          ; 3 uses
  %i.gt = load i32, ptr %i.cp, align 8, !tbaa !22
  %i.gu = trunc nuw i64 %i.gs to i32              ; 2 uses
  %i.gv = icmp sgt i32 %i.gt, %i.gu
  br i1 %i.gv, label %_ZN2cv8MatShapeixEm.exit144, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.56, ptr noundef nonnull align 1 dereferenceable(1) %12)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.57, i32 noundef 97) #16
          to label %bb.bu unwind label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  unreachable

bb.bv:                                            ; preds = %bb.bt
  %i.gw = landingpad { ptr, i32 }
          cleanup
  %i.gx = load ptr, ptr %11, align 8, !tbaa !17   ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.gz = icmp eq ptr %i.gx, %i.gy
  br i1 %i.gz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.bv
  %i.ha = load i64, ptr %i.gy, align 8, !tbaa !15
  %i.hb = add i64 %i.ha, 1
  call void @_ZdlPvm(ptr noundef %i.gx, i64 noundef %i.hb) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, %bb.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i148, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.gw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.he, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i148 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123 ], [ %.pn91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120 ], [ %.pn89, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117 ], [ %.pn87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ], [ %.pn85, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111 ], [ %.pn103.pn, %bb.bz ], [ %.pn99, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132 ], [ %.pn97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129 ], [ %.pn95, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %common.resume

_ZN2cv8MatShapeixEm.exit144:                      ; preds = %bb.bs
  %i.hc = load i32, ptr %i.cr, align 4, !tbaa !22
  %i.hd = icmp sgt i32 %i.hc, %i.gu
  br i1 %i.hd, label %_ZN2cv8MatShapeixEm.exit150, label %bb.bw

bb.bw:                                            ; preds = %_ZN2cv8MatShapeixEm.exit144
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.56, ptr noundef nonnull align 1 dereferenceable(1) %10)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.57, i32 noundef 97) #16
          to label %bb.bx unwind label %bb.by

bb.bx:                                            ; preds = %bb.bw
  unreachable

bb.by:                                            ; preds = %bb.bw
  %i.he = landingpad { ptr, i32 }
          cleanup
  %i.hf = load ptr, ptr %9, align 8, !tbaa !17    ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.hh = icmp eq ptr %i.hf, %i.hg
  br i1 %i.hh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i147: ; preds = %bb.by
  %i.hi = load i64, ptr %i.hg, align 8, !tbaa !15
  %i.hj = add i64 %i.hi, 1
  call void @_ZdlPvm(ptr noundef %i.hf, i64 noundef %i.hj) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i148

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i148: ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i147
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %common.resume

_ZN2cv8MatShapeixEm.exit150:                      ; preds = %_ZN2cv8MatShapeixEm.exit144
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.gs
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !25 ; 2 uses
  %i.hm = load i32, ptr %i.dr, align 4, !tbaa !25
  %i.hn = add nsw i32 %i.hm, -1
  %i.ho = load i32, ptr %i.fq, align 4, !tbaa !25
  %i.hp = mul nsw i32 %i.hn, %i.ho                ; 2 uses
  %i.hq = add i32 %i.hl, %i.fs
  %i.hr = sub i32 %i.hq, %i.hp
  %i.hs = sdiv i32 %i.hr, %i.go                   ; 2 uses
  %i.ht = mul nsw i32 %i.hs, %i.go
  %i.hu = sub i32 %i.hp, %i.fs
  %i.hv = add i32 %i.hu, %i.ht
  %i.hw = icmp slt i32 %i.hv, %i.hl
  %i.hx = zext i1 %i.hw to i32
  %i.hy = add nsw i32 %i.hs, %i.hx
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.gs
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !25 ; 3 uses
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.ia, i32 %i.hy) ; 2 uses
  %.not = icmp slt i32 %i.gr, %.sroa.speculated   ; 2 uses
  %spec.select = select i1 %.not, i32 %.sroa.speculated, i32 %i.ia
  %spec.select166 = select i1 %.not, i32 %i.gr, i32 %i.ia
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.dq
  store i32 %spec.select166, ptr %i.ib, align 4, !tbaa !25
  %i.ic = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.gm
  store i32 %spec.select, ptr %i.ic, align 4, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.id = load i32, ptr %i.k, align 8, !tbaa !41  ; 2 uses
  %i.ie = sext i32 %i.id to i64
  %i.if = icmp slt i64 %indvars.iv.next, %i.ie
  br i1 %i.if, label %bb.an, label %._crit_edge, !llvm.loop !108

bb.bz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135
  %.pn103.pn = phi { ptr, i32 } [ %.pn103, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138 ], [ %.pn101, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv3dnn14dnn5_v2026060516deconvInferShapeERKNS_8MatShapeES4_RKSt6vectorIiSaIiEEiS9_S9_S9_S9_NS1_11AutoPaddingE(ptr dead_on_unwind noalias writable sret(%"struct.cv::MatShape") align 4 %0, ptr noundef nonnull align 4 dereferenceable(52) %1, ptr noundef nonnull align 4 dereferenceable(52) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, i32 noundef %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %8, i32 noundef %9) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator", align 1   ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator", align 1   ; 3 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::allocator", align 1   ; 3 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::allocator", align 1   ; 3 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::allocator", align 1   ; 3 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %21 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.c = alloca [10 x i32], align 16              ; 7 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.std::allocator", align 1   ; 3 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %25 = alloca %"class.std::allocator", align 1   ; 3 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %27 = alloca %"class.std::allocator", align 1   ; 3 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %29 = alloca %"class.std::allocator", align 1   ; 3 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %31 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.d = load i32, ptr %1, align 4, !tbaa !22     ; 5 uses
  %i.e = add i32 %i.d, -3                         ; 10 uses
  %i.f = icmp sgt i32 %i.d, 3
  br i1 %i.f, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.47, ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v2026060516deconvInferShapeERKNS_8MatShapeES4_RKSt6vectorIiSaIiEEiS9_S9_S9_S9_NS1_11AutoPaddingE, ptr noundef nonnull @.str.15, i32 noundef 397) #16
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load ptr, ptr %20, align 8, !tbaa !17    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.l = load i64, ptr %i.j, align 8, !tbaa !15
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.h, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  br label %common.resume

bb.g:                                             ; preds = %bb.a
  tail call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %0, ptr noundef nonnull align 4 dereferenceable(52) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.n = load ptr, ptr %3, align 8, !tbaa !24     ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !24   ; 2 uses
  %i.q = icmp eq ptr %i.n, %i.p
  br i1 %i.q, label %bb.h, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.n to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = lshr exact i64 %i.t, 2
  %i.v = trunc i64 %i.u to i32
  %reass.sub = sub i32 %i.v, %i.d
  %i.w = add i32 %reass.sub, 3
  %i.x = sext i32 %i.w to i64
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.n, i64 %i.x ; 2 uses
  %min.iters.check = icmp ult i32 %i.e, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.y = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 16
  %wide.load = load <4 x i32>, ptr %i.y, align 4, !tbaa !25
  %wide.load312 = load <4 x i32>, ptr %i.z, align 4, !tbaa !25
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <4 x i32> %wide.load, ptr %i.aa, align 16, !tbaa !25
  store <4 x i32> %wide.load312, ptr %i.ab, align 16, !tbaa !25
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !109

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ad = load i32, ptr %gep, align 4, !tbaa !25
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !110

bb.h:                                             ; preds = %bb.g
  %i.af = tail call noundef i64 @_ZNK2cv8MatShape5totalEv(ptr noundef nonnull align 4 dereferenceable(52) %2)
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = load i32, ptr %2, align 4, !tbaa !22
  %i.ai = add nsw i32 %i.d, -1
  %i.aj = icmp eq i32 %i.ah, %i.ai
  br i1 %i.aj, label %_ZNK2cv8MatShapeixEm.exit.lr.ph, label %bb.j

_ZNK2cv8MatShapeixEm.exit.lr.ph:                  ; preds = %bb.i
  %scevgep = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ak = zext nneg i32 %i.e to i64
  %i.al = shl nuw nsw i64 %i.ak, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull align 4 %scevgep, i64 %i.al, i1 false), !tbaa !25
  br label %.loopexit

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %23)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v2026060516deconvInferShapeERKNS_8MatShapeES4_RKSt6vectorIiSaIiEEiS9_S9_S9_S9_NS1_11AutoPaddingE, ptr noundef nonnull @.str.15, i32 noundef 406) #16
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

bb.n:                                             ; preds = %bb.k
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = load ptr, ptr %22, align 8, !tbaa !17   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %bb.n
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !15
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110, %bb.m
  %.pn106 = phi { ptr, i32 } [ %i.am, %bb.m ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110 ], [ %i.an, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #17
  br label %bb.bn

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i151, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i145, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i128, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i122, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i116
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i116 ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i122 ], [ %i.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i128 ], [ %i.jq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i145 ], [ %i.jw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i151 ], [ %.pn106.pn, %bb.bn ]
  resume { ptr, i32 } %common.resume.op

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %_ZNK2cv8MatShapeixEm.exit.lr.ph
  %i.at = add nsw i32 %i.d, -1                    ; 2 uses
  %i.au = load i32, ptr %1, align 4, !tbaa !22    ; 3 uses
  %narrow.i113 = tail call i32 @llvm.smax.i32(i32 %i.au, i32 1)
  %i.av = icmp samesign ult i32 %i.at, %narrow.i113
  br i1 %i.av, label %_ZNK2cv8MatShapeixEm.exit118, label %bb.o

bb.o:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.56, ptr noundef nonnull align 1 dereferenceable(1) %19)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.57, i32 noundef 103) #16
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
end_hunk_0
begin_hunk_1_@_ZN2cv3dnn14dnn5_v2026060516deconvInferShapeERKNS_8MatShapeES4_RKSt6vectorIiSaIiEEiS9_S9_S9_S9_NS1_11AutoPaddingE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #17
  br label %bb.bn

bb.ar:                                            ; preds = %bb.al, %bb.ak
  %i.ef = load ptr, ptr %8, align 8, !tbaa !24    ; 7 uses
  %i.eg = ptrtoaddr ptr %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !24 ; 2 uses
  %i.ej = icmp eq ptr %i.ef, %i.ei                ; 4 uses
  br i1 %i.ej, label %.lr.ph159, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = ptrtoint ptr %i.ef to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = lshr exact i64 %i.em, 2
  %i.eo = trunc i64 %i.en to i32
  %i.ep = icmp eq i32 %i.e, %i.eo
  br i1 %i.ep, label %.lr.ph159, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull @.str.51, ptr noundef nonnull align 1 dereferenceable(1) %31)
          to label %bb.au unwind label %bb.aw

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v2026060516deconvInferShapeERKNS_8MatShapeES4_RKSt6vectorIiSaIiEEiS9_S9_S9_S9_NS1_11AutoPaddingE, ptr noundef nonnull @.str.15, i32 noundef 418) #16
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %bb.au
  unreachable

bb.aw:                                            ; preds = %bb.at
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

bb.ax:                                            ; preds = %bb.au
  %i.er = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.es = load ptr, ptr %30, align 8, !tbaa !17   ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.eu = icmp eq ptr %i.es, %i.et
  br i1 %i.eu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %bb.ax
  %i.ev = load i64, ptr %i.et, align 8, !tbaa !15
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ew) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139, %bb.aw
  %.pn102 = phi { ptr, i32 } [ %i.eq, %bb.aw ], [ %i.er, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139 ], [ %i.er, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #17
  br label %bb.bn

.lr.ph159:                                        ; preds = %bb.as, %bb.ar
  switch i32 %9, label %.lr.ph159.split [
    i32 3, label %.lr.ph159.split.us
    i32 0, label %.lr.ph159.split.us
  ]

.lr.ph159.split.us:                               ; preds = %.lr.ph159, %.lr.ph159
  %i.ex = zext nneg i32 %i.e to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %i.au, i32 2)
  %i.ey = add nsw i32 %smax, -2
  %wide.trip.count192 = zext nneg i32 %i.ey to i64
  %i.ez = add nsw i32 %i.bo, -2
  %wide.trip.count195 = zext nneg i32 %i.ez to i64
  %wide.trip.count198 = zext nneg i32 %i.e to i64
  %invariant.gep298 = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.ex
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN2cv8MatShapeixEm.exit153.us, %.lr.ph159.split.us
  %indvars.iv189 = phi i64 [ %indvars.iv.next190, %_ZN2cv8MatShapeixEm.exit153.us ], [ 0, %.lr.ph159.split.us ] ; 10 uses
  %i.fa = add nuw nsw i64 %indvars.iv189, 2       ; 2 uses
  %exitcond193.not = icmp eq i64 %indvars.iv189, %wide.trip.count192
  br i1 %exitcond193.not, label %.split.us, label %_ZNK2cv8MatShapeixEm.exit147.us

_ZNK2cv8MatShapeixEm.exit147.us:                  ; preds = %bb.ay
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !25
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv189
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !25
  br i1 %i.ci, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZNK2cv8MatShapeixEm.exit147.us
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv189
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !25
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %_ZNK2cv8MatShapeixEm.exit147.us
  %i.fh = phi i32 [ %i.fg, %bb.az ], [ 1, %_ZNK2cv8MatShapeixEm.exit147.us ]
  br i1 %i.cz, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv189
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !25
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.fk = phi i32 [ %i.fj, %bb.bb ], [ 1, %bb.ba ]
  br i1 %i.ej, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv189
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !25
  %i.fn = add i32 %i.fm, 1
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.pn105.us = phi i32 [ %i.fn, %bb.bd ], [ 1, %bb.bc ]
  br i1 %i.dq, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv189
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !25
  %gep299 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep298, i64 %indvars.iv189
  %i.fq = load i32, ptr %gep299, align 4, !tbaa !25
  %i.fr = add nsw i32 %i.fq, %i.fp
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.0.us = phi i32 [ 0, %bb.be ], [ %i.fr, %bb.bf ]
  %exitcond196.not = icmp eq i64 %indvars.iv189, %wide.trip.count195
  br i1 %exitcond196.not, label %.split161.us, label %_ZN2cv8MatShapeixEm.exit153.us

_ZN2cv8MatShapeixEm.exit153.us:                   ; preds = %bb.bg
  %i.fs = add nsw i32 %i.fe, -1
  %i.ft = mul nsw i32 %i.fk, %i.fs
  %i.fu = add nsw i32 %i.fc, -1
  %i.fv = mul nsw i32 %i.fh, %i.fu
  %i.fw = add i32 %i.ft, %i.fv
  %i.fx = sub i32 %i.fw, %.0.us
  %.080.us = add i32 %.pn105.us, %i.fx
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.fa
  store i32 %.080.us, ptr %i.fy, align 4, !tbaa !25
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 2 uses
  %exitcond199.not = icmp eq i64 %indvars.iv.next190, %wide.trip.count198
  br i1 %exitcond199.not, label %._crit_edge, label %bb.ay, !llvm.loop !111

.lr.ph159.split:                                  ; preds = %.lr.ph159
  %smax239 = tail call i32 @llvm.smax.i32(i32 %i.au, i32 2)
  %i.fz = add nsw i32 %smax239, -2
  %wide.trip.count240 = zext i32 %i.fz to i64     ; 5 uses
  %i.ga = add nsw i32 %i.bo, -2
  %wide.trip.count243 = zext i32 %i.ga to i64     ; 5 uses
  %wide.trip.count246 = zext i32 %i.e to i64      ; 5 uses
  br i1 %i.ci, label %.lr.ph159.split.split.us, label %.lr.ph159.split.split

.lr.ph159.split.split.us:                         ; preds = %.lr.ph159.split, %_ZN2cv8MatShapeixEm.exit153.us164
  %indvars.iv236 = phi i64 [ %indvars.iv.next237, %_ZN2cv8MatShapeixEm.exit153.us164 ], [ 0, %.lr.ph159.split ] ; 5 uses
  %i.gb = add nuw nsw i64 %indvars.iv236, 2       ; 2 uses
  %exitcond241.not = icmp eq i64 %indvars.iv236, %wide.trip.count240
  br i1 %exitcond241.not, label %.split.us, label %_ZNK2cv8MatShapeixEm.exit147.us163

_ZNK2cv8MatShapeixEm.exit147.us163:               ; preds = %.lr.ph159.split.split.us
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !25
  br i1 %i.ej, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %_ZNK2cv8MatShapeixEm.exit147.us163
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv236
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !25
  %i.gg = add i32 %i.gf, 1
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %_ZNK2cv8MatShapeixEm.exit147.us163
  %.pn105.us165 = phi i32 [ %i.gg, %bb.bh ], [ 1, %_ZNK2cv8MatShapeixEm.exit147.us163 ]
  %exitcond244.not = icmp eq i64 %indvars.iv236, %wide.trip.count243
  br i1 %exitcond244.not, label %.split161.us, label %_ZN2cv8MatShapeixEm.exit153.us164

_ZN2cv8MatShapeixEm.exit153.us164:                ; preds = %bb.bi
  %i.gh = add nsw i32 %i.gd, -1
  %.080.us166 = add i32 %.pn105.us165, %i.gh
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.gb
  store i32 %.080.us166, ptr %i.gi, align 4, !tbaa !25
  %indvars.iv.next237 = add nuw nsw i64 %indvars.iv236, 1 ; 2 uses
  %exitcond247.not = icmp eq i64 %indvars.iv.next237, %wide.trip.count246
  br i1 %exitcond247.not, label %._crit_edge, label %.lr.ph159.split.split.us, !llvm.loop !111

.lr.ph159.split.split:                            ; preds = %.lr.ph159.split
  %i.gj = add nsw i64 %wide.trip.count246, -1
  %i.gk = tail call i64 @llvm.umin.i64(i64 %i.gj, i64 %wide.trip.count240)
  %i.gl = tail call i64 @llvm.umin.i64(i64 %i.gk, i64 %wide.trip.count243) ; 3 uses
  %i.gm = add nuw nsw i64 %i.gl, 1                ; 6 uses
  br i1 %i.ej, label %.lr.ph159.split.split.split.us, label %.lr.ph159.split.split.split.preheader

.lr.ph159.split.split.split.preheader:            ; preds = %.lr.ph159.split.split
  %min.iters.check317 = icmp samesign ult i64 %i.gl, 12
  br i1 %min.iters.check317, label %.lr.ph159.split.split.split.preheader373, label %vector.memcheck

.lr.ph159.split.split.split.preheader373:         ; preds = %vector.body320, %vector.memcheck, %.lr.ph159.split.split.split.preheader
  %indvars.iv200.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph159.split.split.split.preheader ], [ %n.vec319, %vector.body320 ]
  br label %.lr.ph159.split.split.split

vector.memcheck:                                  ; preds = %.lr.ph159.split.split.split.preheader
  %32 = add i64 %i.b, 20                          ; 2 uses
  %33 = sub i64 %i.cf, %32
  %diff.check = icmp ugt i64 %33, -32
  %i.gn = sub i64 %i.a, %i.b
  %diff.check313 = icmp ugt i64 %i.gn, -32
  %conflict.rdx = or i1 %diff.check, %diff.check313
  %i.go = sub i64 %i.eg, %32
  %diff.check319 = icmp ugt i64 %i.go, -32
  %conflict.rdx315 = or i1 %conflict.rdx, %diff.check319
  br i1 %conflict.rdx315, label %.lr.ph159.split.split.split.preheader373, label %vector.ph318

vector.ph318:                                     ; preds = %vector.memcheck
  %i.gp = and i64 %i.gm, 7                        ; 2 uses
  %i.gq = icmp eq i64 %i.gp, 0
  %i.gr = select i1 %i.gq, i64 8, i64 %i.gp
  %n.vec319 = sub nsw i64 %i.gm, %i.gr            ; 2 uses
  br label %vector.body320

vector.body320:                                   ; preds = %vector.body320, %vector.ph318
  %index321 = phi i64 [ 0, %vector.ph318 ], [ %index.next328, %vector.body320 ] ; 4 uses
  %i.gs = or disjoint i64 %index321, 2            ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %index321 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %wide.load322 = load <4 x i32>, ptr %i.gt, align 4, !tbaa !25
  %wide.load323 = load <4 x i32>, ptr %i.gu, align 4, !tbaa !25
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.gs ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %wide.load324 = load <4 x i32>, ptr %i.gv, align 4, !tbaa !25
  %wide.load325 = load <4 x i32>, ptr %i.gw, align 4, !tbaa !25
  %i.gx = add nsw <4 x i32> %wide.load324, splat (i32 -1)
  %i.gy = add nsw <4 x i32> %wide.load325, splat (i32 -1)
  %i.gz = mul nsw <4 x i32> %wide.load322, %i.gx
  %i.ha = mul nsw <4 x i32> %wide.load323, %i.gy
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %index321 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %wide.load326 = load <4 x i32>, ptr %i.hb, align 4, !tbaa !25
  %wide.load327 = load <4 x i32>, ptr %i.hc, align 4, !tbaa !25
  %i.hd = add <4 x i32> %wide.load326, splat (i32 1)
  %i.he = add <4 x i32> %wide.load327, splat (i32 1)
  %i.hf = add <4 x i32> %i.hd, %i.gz
  %i.hg = add <4 x i32> %i.he, %i.ha
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.gs ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  store <4 x i32> %i.hf, ptr %i.hh, align 4, !tbaa !25
  store <4 x i32> %i.hg, ptr %i.hi, align 4, !tbaa !25
  %index.next328 = add nuw i64 %index321, 8       ; 2 uses
  %i.hj = icmp eq i64 %index.next328, %n.vec319
  br i1 %i.hj, label %.lr.ph159.split.split.split.preheader373, label %vector.body320, !llvm.loop !112

.lr.ph159.split.split.split.us:                   ; preds = %.lr.ph159.split.split
  %min.iters.check353 = icmp samesign ult i64 %i.gl, 8 ; 2 uses
  br i1 %i.cz, label %.lr.ph159.split.split.split.us.split.us.preheader, label %.lr.ph159.split.split.split.us.split.preheader

.lr.ph159.split.split.split.us.split.preheader:   ; preds = %.lr.ph159.split.split.split.us
  br i1 %min.iters.check353, label %.lr.ph159.split.split.split.us.split.preheader369, label %vector.memcheck331

.lr.ph159.split.split.split.us.split.preheader369: ; preds = %vector.body339, %vector.memcheck331, %.lr.ph159.split.split.split.us.split.preheader
  %indvars.iv212.ph = phi i64 [ 0, %vector.memcheck331 ], [ 0, %.lr.ph159.split.split.split.us.split.preheader ], [ %n.vec338, %vector.body339 ]
  br label %.lr.ph159.split.split.split.us.split

vector.memcheck331:                               ; preds = %.lr.ph159.split.split.split.us.split.preheader
  %i.hk = sub i64 %i.b, %i.cf
  %i.hl = add i64 %i.hk, 19
  %diff.check332 = icmp ult i64 %i.hl, 31
  %i.hm = sub i64 %i.a, %i.b
  %diff.check333 = icmp ugt i64 %i.hm, -32
  %conflict.rdx334 = or i1 %diff.check332, %diff.check333
  br i1 %conflict.rdx334, label %.lr.ph159.split.split.split.us.split.preheader369, label %vector.ph337

vector.ph337:                                     ; preds = %vector.memcheck331
  %i.hn = and i64 %i.gm, 7                        ; 2 uses
  %i.ho = icmp eq i64 %i.hn, 0
  %i.hp = select i1 %i.ho, i64 8, i64 %i.hn
  %n.vec338 = sub nsw i64 %i.gm, %i.hp            ; 2 uses
  br label %vector.body339

vector.body339:                                   ; preds = %vector.body339, %vector.ph337
  %index340 = phi i64 [ 0, %vector.ph337 ], [ %index.next345, %vector.body339 ] ; 3 uses
  %i.hq = or disjoint i64 %index340, 2            ; 2 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %index340 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %wide.load341 = load <4 x i32>, ptr %i.hr, align 4, !tbaa !25
  %wide.load342 = load <4 x i32>, ptr %i.hs, align 4, !tbaa !25
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.hq ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %wide.load343 = load <4 x i32>, ptr %i.ht, align 4, !tbaa !25
  %wide.load344 = load <4 x i32>, ptr %i.hu, align 4, !tbaa !25
  %i.hv = add nsw <4 x i32> %wide.load343, splat (i32 -1)
  %i.hw = add nsw <4 x i32> %wide.load344, splat (i32 -1)
  %i.hx = mul nsw <4 x i32> %wide.load341, %i.hv
  %i.hy = mul nsw <4 x i32> %wide.load342, %i.hw
  %i.hz = add <4 x i32> %i.hx, splat (i32 1)
  %i.ia = add <4 x i32> %i.hy, splat (i32 1)
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.hq ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  store <4 x i32> %i.hz, ptr %i.ib, align 4, !tbaa !25
  store <4 x i32> %i.ia, ptr %i.ic, align 4, !tbaa !25
  %index.next345 = add nuw i64 %index340, 8       ; 2 uses
  %i.id = icmp eq i64 %index.next345, %n.vec338
  br i1 %i.id, label %.lr.ph159.split.split.split.us.split.preheader369, label %vector.body339, !llvm.loop !113

.lr.ph159.split.split.split.us.split.us.preheader: ; preds = %.lr.ph159.split.split.split.us
  br i1 %min.iters.check353, label %.lr.ph159.split.split.split.us.split.us.preheader365, label %vector.memcheck348

vector.memcheck348:                               ; preds = %.lr.ph159.split.split.split.us.split.us.preheader
  %i.ie = sub i64 %i.b, %i.cf
  %i.if = add i64 %i.ie, 19
  %diff.check349 = icmp ult i64 %i.if, 31
  %i.ig = sub i64 %i.a, %i.b
  %diff.check350 = icmp ugt i64 %i.ig, -32
  %conflict.rdx351 = or i1 %diff.check349, %diff.check350
  br i1 %conflict.rdx351, label %.lr.ph159.split.split.split.us.split.us.preheader365, label %vector.ph354

vector.ph354:                                     ; preds = %vector.memcheck348
  %i.ih = and i64 %i.gm, 7                        ; 2 uses
  %i.ii = icmp eq i64 %i.ih, 0
  %i.ij = select i1 %i.ii, i64 8, i64 %i.ih
  %n.vec355 = sub nsw i64 %i.gm, %i.ij            ; 2 uses
  br label %vector.body356

vector.body356:                                   ; preds = %vector.body356, %vector.ph354
  %index357 = phi i64 [ 0, %vector.ph354 ], [ %index.next362, %vector.body356 ] ; 3 uses
  %i.ik = or disjoint i64 %index357, 2            ; 2 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %index357 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  %wide.load358 = load <4 x i32>, ptr %i.il, align 4, !tbaa !25
  %wide.load359 = load <4 x i32>, ptr %i.im, align 4, !tbaa !25
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.ik ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  %wide.load360 = load <4 x i32>, ptr %i.in, align 4, !tbaa !25
  %wide.load361 = load <4 x i32>, ptr %i.io, align 4, !tbaa !25
  %i.ip = add nsw <4 x i32> %wide.load360, splat (i32 -1)
  %i.iq = add nsw <4 x i32> %wide.load361, splat (i32 -1)
  %i.ir = mul nsw <4 x i32> %wide.load358, %i.ip
  %i.is = mul nsw <4 x i32> %wide.load359, %i.iq
  %i.it = add <4 x i32> %i.ir, splat (i32 1)
  %i.iu = add <4 x i32> %i.is, splat (i32 1)
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.ik ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  store <4 x i32> %i.it, ptr %i.iv, align 4, !tbaa !25
  store <4 x i32> %i.iu, ptr %i.iw, align 4, !tbaa !25
  %index.next362 = add nuw i64 %index357, 8       ; 2 uses
  %i.ix = icmp eq i64 %index.next362, %n.vec355
  br i1 %i.ix, label %.lr.ph159.split.split.split.us.split.us.preheader365, label %vector.body356, !llvm.loop !114

.lr.ph159.split.split.split.us.split.us.preheader365: ; preds = %vector.body356, %vector.memcheck348, %.lr.ph159.split.split.split.us.split.us.preheader
  %indvars.iv224.ph = phi i64 [ 0, %vector.memcheck348 ], [ 0, %.lr.ph159.split.split.split.us.split.us.preheader ], [ %n.vec355, %vector.body356 ]
  br label %.lr.ph159.split.split.split.us.split.us

.lr.ph159.split.split.split.us.split.us:          ; preds = %.lr.ph159.split.split.split.us.split.us.preheader365, %_ZN2cv8MatShapeixEm.exit153.us169.us
  %indvars.iv224 = phi i64 [ %indvars.iv.next225, %_ZN2cv8MatShapeixEm.exit153.us169.us ], [ %indvars.iv224.ph, %.lr.ph159.split.split.split.us.split.us.preheader365 ] ; 5 uses
  %i.iy = add nuw nsw i64 %indvars.iv224, 2       ; 2 uses
  %exitcond229.not = icmp eq i64 %indvars.iv224, %wide.trip.count240
  br i1 %exitcond229.not, label %.split.us, label %_ZNK2cv8MatShapeixEm.exit147.us168.us

_ZNK2cv8MatShapeixEm.exit147.us168.us:            ; preds = %.lr.ph159.split.split.split.us.split.us
  %exitcond232.not = icmp eq i64 %indvars.iv224, %wide.trip.count243
  br i1 %exitcond232.not, label %.split161.us, label %_ZN2cv8MatShapeixEm.exit153.us169.us

_ZN2cv8MatShapeixEm.exit153.us169.us:             ; preds = %_ZNK2cv8MatShapeixEm.exit147.us168.us
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv224
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !25
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.iy
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !25
  %i.jd = add nsw i32 %i.jc, -1
  %i.je = mul nsw i32 %i.ja, %i.jd
  %.080.us171.us = add i32 %i.je, 1
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.iy
  store i32 %.080.us171.us, ptr %i.jf, align 4, !tbaa !25
  %indvars.iv.next225 = add nuw nsw i64 %indvars.iv224, 1 ; 2 uses
  %exitcond235.not = icmp eq i64 %indvars.iv.next225, %wide.trip.count246
  br i1 %exitcond235.not, label %._crit_edge, label %.lr.ph159.split.split.split.us.split.us, !llvm.loop !115

.lr.ph159.split.split.split.us.split:             ; preds = %.lr.ph159.split.split.split.us.split.preheader369, %_ZN2cv8MatShapeixEm.exit153.us169
  %indvars.iv212 = phi i64 [ %indvars.iv.next213, %_ZN2cv8MatShapeixEm.exit153.us169 ], [ %indvars.iv212.ph, %.lr.ph159.split.split.split.us.split.preheader369 ] ; 5 uses
  %i.jg = add nuw nsw i64 %indvars.iv212, 2       ; 2 uses
  %exitcond217.not = icmp eq i64 %indvars.iv212, %wide.trip.count240
  br i1 %exitcond217.not, label %.split.us, label %_ZNK2cv8MatShapeixEm.exit147.us168

_ZNK2cv8MatShapeixEm.exit147.us168:               ; preds = %.lr.ph159.split.split.split.us.split
  %exitcond220.not = icmp eq i64 %indvars.iv212, %wide.trip.count243
  br i1 %exitcond220.not, label %.split161.us, label %_ZN2cv8MatShapeixEm.exit153.us169

_ZN2cv8MatShapeixEm.exit153.us169:                ; preds = %_ZNK2cv8MatShapeixEm.exit147.us168
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv212
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !25
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.jg
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !25
  %i.jl = add nsw i32 %i.jk, -1
  %i.jm = mul nsw i32 %i.ji, %i.jl
  %.080.us171 = add i32 %i.jm, 1
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.jg
  store i32 %.080.us171, ptr %i.jn, align 4, !tbaa !25
  %indvars.iv.next213 = add nuw nsw i64 %indvars.iv212, 1 ; 2 uses
  %exitcond223.not = icmp eq i64 %indvars.iv.next213, %wide.trip.count246
  br i1 %exitcond223.not, label %._crit_edge, label %.lr.ph159.split.split.split.us.split, !llvm.loop !116

._crit_edge:                                      ; preds = %_ZN2cv8MatShapeixEm.exit153.us, %_ZN2cv8MatShapeixEm.exit153, %_ZN2cv8MatShapeixEm.exit153.us169, %_ZN2cv8MatShapeixEm.exit153.us169.us, %_ZN2cv8MatShapeixEm.exit153.us164
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.bn, ptr %i.jo, align 4, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  ret void

.lr.ph159.split.split.split:                      ; preds = %.lr.ph159.split.split.split.preheader373, %_ZN2cv8MatShapeixEm.exit153
  %indvars.iv200 = phi i64 [ %indvars.iv.next201, %_ZN2cv8MatShapeixEm.exit153 ], [ %indvars.iv200.ph, %.lr.ph159.split.split.split.preheader373 ] ; 6 uses
  %i.jp = add nuw nsw i64 %indvars.iv200, 2       ; 2 uses
  %exitcond205.not = icmp eq i64 %indvars.iv200, %wide.trip.count240
  br i1 %exitcond205.not, label %.split.us, label %_ZNK2cv8MatShapeixEm.exit147

end_hunk_1
