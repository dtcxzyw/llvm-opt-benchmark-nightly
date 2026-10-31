Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/hog?download=true
inline.NumInlined: 1398
inline.NumDeleted: 545
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK2cv13HOGDescriptor17checkDetectorSizeEv:bb.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv13HOGDescriptor14setSVMDetectorERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(297) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.0", align 1  ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.0", align 1  ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.0", align 1  ; 3 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %9 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator.0", align 1 ; 3 uses
  %12 = alloca %"class.cv::UMat", align 8         ; 7 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %14 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.a = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1), !noalias !204
  %i.b = icmp eq i32 %i.a, 65536
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50, !noalias !204
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(208) %i.d)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.g, align 8
  store i32 -2113732603, ptr %9, align 8, !tbaa !51
  store ptr %i.e, ptr %i.f, align 8, !tbaa !50
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, i32 noundef 5, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !47   ; 2 uses
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !48   ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 2                   ; 2 uses
  %i.o = call noundef i64 @_ZNK2cv13HOGDescriptor17getDescriptorSizeEv(ptr noundef nonnull readonly align 8 dereferenceable(297) %0) ; 2 uses
  %i.p = icmp eq ptr %i.i, %i.j
  %i.q = icmp eq i64 %i.n, %i.o
  %or.cond.i = or i1 %i.p, %i.q
  %i.r = add i64 %i.o, 1
  %i.s = icmp eq i64 %i.n, %i.r
  %or.cond = or i1 %i.s, %or.cond.i
  br i1 %or.cond, label %_ZNK2cv13HOGDescriptor17checkDetectorSizeEv.exit.thread, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.ah

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv13HOGDescriptor14setSVMDetectorERKNS_11_InputArrayE, ptr noundef nonnull @.str.1, i32 noundef 120) #24
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = load ptr, ptr %10, align 8, !tbaa !19    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.z = load i64, ptr %i.x, align 8, !tbaa !20
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %.pn42 = phi { ptr, i32 } [ %i.u, %bb.j ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.v, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ah

_ZNK2cv13HOGDescriptor17checkDetectorSizeEv.exit.thread: ; preds = %bb.e
  %i.ab = call noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.ab, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZNK2cv13HOGDescriptor17checkDetectorSizeEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @_ZN2cv4UMatC1ENS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %12, i32 noundef 0) #23
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ad = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv4UMataSEOS0_(ptr noundef nonnull align 8 dereferenceable(184) %i.ac, ptr noundef nonnull align 8 dereferenceable(184) %12)
          to label %bb.m unwind label %bb.n       ; 0 uses

bb.m:                                             ; preds = %bb.l
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.ae

bb.n:                                             ; preds = %bb.l
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.ah

bb.o:                                             ; preds = %_ZNK2cv13HOGDescriptor17checkDetectorSizeEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !47
  %i.ag = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = lshr exact i64 %i.aj, 2
  %i.al = trunc i64 %i.ak to i32
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef 1, i32 noundef %i.al, i32 noundef 5)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.020.0.copyload = load i64, ptr %i.am, align 8, !tbaa !52 ; 3 uses
  %.sroa.3.0.extract.shift.i = lshr i64 %.sroa.020.0.copyload, 32
  %.sroa.04.0.extract.trunc.i = trunc i64 %.sroa.020.0.copyload to i32
  %.sroa.3.0.extract.trunc.i = trunc nuw i64 %.sroa.3.0.extract.shift.i to i32
  %i.an = icmp slt i32 %.sroa.04.0.extract.trunc.i, 1
  %i.ao = icmp slt i32 %.sroa.3.0.extract.trunc.i, 1
  %i.ap = select i1 %i.an, i1 true, i1 %i.ao
  br i1 %i.ap, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.43, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc unwind label %bb.af

.noexc:                                           ; preds = %bb.p
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN2cvL21getBlockHistogramSizeENS_5Size_IiEES1_i, ptr noundef nonnull @.str.1, i32 noundef 81) #24
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %.noexc
  unreachable

bb.r:                                             ; preds = %.noexc
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = load ptr, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.r
  %i.au = load i64, ptr %i.as, align 8, !tbaa !20
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %.body

bb.s:                                             ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !42
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.021.0.copyload = load i64, ptr %i.ay, align 8, !tbaa !52 ; 3 uses
  %.sroa.2.0.extract.shift.i = lshr i64 %.sroa.021.0.copyload, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.021.0.copyload to i32
  %i.az = bitcast i64 %.sroa.021.0.copyload to <2 x i32>
  %i.ba = bitcast i64 %.sroa.020.0.copyload to <2 x i32>
  %i.bb = sdiv <2 x i32> %i.az, %i.ba             ; 2 uses
  %i.bc = extractelement <2 x i32> %i.bb, i64 0
  %i.bd = mul i32 %i.bc, %i.ax
  %i.be = extractelement <2 x i32> %i.bb, i64 1
  %i.bf = mul i32 %i.bd, %i.be                    ; 5 uses
  %i.bg = sext i32 %i.bf to i64                   ; 12 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.016.0.copyload = load i64, ptr %i.bh, align 8, !tbaa !52 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload = load i64, ptr %i.bi, align 8, !tbaa !52 ; 2 uses
  %.sroa.0.0.extract.trunc.i51 = trunc i64 %.sroa.0.0.copyload to i32 ; 3 uses
  %.sroa.2.0.extract.shift.i52 = lshr i64 %.sroa.0.0.copyload, 32 ; 2 uses
  %.not.i.i = icmp eq i32 %.sroa.0.0.extract.trunc.i51, 0
  br i1 %.not.i.i, label %bb.t, label %_ZN2cvL14numPartsWithinEiii.exit.i

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.44, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc54 unwind label %bb.af

.noexc54:                                         ; preds = %bb.t
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cvL14numPartsWithinEiii, ptr noundef nonnull @.str.1, i32 noundef 68) #24
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %.noexc54
  unreachable

bb.v:                                             ; preds = %.noexc54
  %i.bj = landingpad { ptr, i32 }
          cleanup
  %i.bk = load ptr, ptr %4, align 8, !tbaa !19    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.v
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !20
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.body

_ZN2cvL14numPartsWithinEiii.exit.i:               ; preds = %bb.s
  %.not.i5.i = icmp eq i64 %.sroa.2.0.extract.shift.i52, 0
  br i1 %.not.i5.i, label %bb.w, label %bb.z

bb.w:                                             ; preds = %_ZN2cvL14numPartsWithinEiii.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.44, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.noexc57 unwind label %bb.af

.noexc57:                                         ; preds = %bb.w
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN2cvL14numPartsWithinEiii, ptr noundef nonnull @.str.1, i32 noundef 68) #24
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %.noexc57
  unreachable

bb.y:                                             ; preds = %.noexc57
  %i.bp = landingpad { ptr, i32 }
          cleanup
  %i.bq = load ptr, ptr %2, align 8, !tbaa !19    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i7.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i: ; preds = %bb.y
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !20
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i7.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i7.i: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %.body

bb.z:                                             ; preds = %_ZN2cvL14numPartsWithinEiii.exit.i
  %.sroa.2.0.extract.trunc.i53 = trunc nuw i64 %.sroa.2.0.extract.shift.i52 to i32 ; 2 uses
  %.sroa.03.0.extract.trunc.i = trunc i64 %.sroa.016.0.copyload to i32
  %i.bv = sub i32 %.sroa.03.0.extract.trunc.i, %.sroa.0.0.extract.trunc.i
  %i.bw = add nsw i32 %i.bv, %.sroa.0.0.extract.trunc.i51
  %i.bx = sdiv i32 %i.bw, %.sroa.0.0.extract.trunc.i51 ; 2 uses
  %.sroa.24.0.extract.shift.i = lshr i64 %.sroa.016.0.copyload, 32
  %.sroa.24.0.extract.trunc.i = trunc nuw i64 %.sroa.24.0.extract.shift.i to i32
  %i.by = sub i32 %.sroa.24.0.extract.trunc.i, %.sroa.2.0.extract.trunc.i
  %i.bz = add nsw i32 %i.by, %.sroa.2.0.extract.trunc.i53
  %i.ca = sdiv i32 %i.bz, %.sroa.2.0.extract.trunc.i53 ; 2 uses
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %.preheader.lr.ph, label %._crit_edge65.split

.preheader.lr.ph:                                 ; preds = %bb.z
  %i.cc = icmp sgt i32 %i.bx, 0
  %i.cd = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8            ; 3 uses
  br i1 %i.cc, label %.preheader.lr.ph.split, label %._crit_edge65.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %.not = icmp eq i32 %i.bf, 0
  %i.cf = load ptr, ptr %i.e, align 8, !tbaa !48  ; 3 uses
  br i1 %.not, label %._crit_edge65.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %i.cg = zext nneg i32 %i.ca to i64              ; 4 uses
  %i.ch = zext nneg i32 %i.bx to i64              ; 5 uses
  %i.ci = mul nsw i64 %i.bg, %i.cg
  %15 = add nuw nsw i64 %i.ch, 4611686018427387903
  %16 = mul i64 %15, %i.cg
  %i.cj = shl i64 %16, 2
  %i.ck = add i64 %i.cj, 4
  %i.cl = mul i64 %i.ck, %i.bg
  %i.cm = shl nsw i64 %i.bg, 2
  %17 = mul nsw i64 %i.bg, %i.ch
  %18 = shl i64 %17, 2
  %i.cn = mul nsw i64 %i.bg, %i.ch
  %19 = shl i64 %i.cn, 2
  %i.co = getelementptr i8, ptr %i.cf, i64 %i.cl
  %i.cp = getelementptr i8, ptr %i.ce, i64 %18
  %min.iters.check = icmp ult i32 %i.bf, 8
  %stride.check = icmp slt i32 %i.bf, 0
  %.mask = and i64 %i.ci, 2305843009213693952
  %stride.check87 = icmp ne i64 %.mask, 0
  %invariant.op = or i1 %stride.check, %stride.check87
  %n.vec = and i64 %i.bg, 2147483640              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.bg
  %xtraiter = and i64 %i.bg, 3
  %i.cq = and i32 %i.bf, 3
  %lcmp.mod.not = icmp eq i32 %i.cq, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge62
  %indvars.iv69 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next70, %._crit_edge62 ] ; 5 uses
  %i.cr = mul i64 %i.cm, %indvars.iv69            ; 2 uses
  %scevgep = getelementptr i8, ptr %i.co, i64 %i.cr
  %scevgep84 = getelementptr i8, ptr %i.cf, i64 %i.cr
  %i.cs = mul i64 %19, %indvars.iv69              ; 2 uses
  %scevgep85 = getelementptr i8, ptr %i.cp, i64 %i.cs
  %scevgep86 = getelementptr i8, ptr %i.ce, i64 %i.cs
  %i.ct = mul nuw nsw i64 %indvars.iv69, %i.ch
  %bound0 = icmp ult ptr %scevgep86, %scevgep
  %bound1 = icmp ult ptr %scevgep84, %scevgep85
  %found.conflict = and i1 %bound0, %bound1
  %.reass = or i1 %found.conflict, %invariant.op
  br label %.lr.ph

._crit_edge65.split:                              ; preds = %._crit_edge62, %.preheader.lr.ph, %.preheader.lr.ph.split, %bb.z
  %i.cu = invoke noundef i64 @_ZNK2cv13HOGDescriptor17getDescriptorSizeEv(ptr noundef nonnull align 8 dereferenceable(297) %0)
          to label %bb.aa unwind label %bb.af     ; 2 uses

._crit_edge62:                                    ; preds = %._crit_edge
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %exitcond73.not = icmp eq i64 %indvars.iv.next70, %i.cg
  br i1 %exitcond73.not, label %._crit_edge65.split, label %.preheader, !llvm.loop !196

.lr.ph:                                           ; preds = %.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.cv = mul nuw nsw i64 %indvars.iv, %i.cg
  %i.cw = add nuw nsw i64 %i.cv, %indvars.iv69
  %i.cx = mul nsw i64 %i.cw, %i.bg
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.cx ; 6 uses
  %i.cz = add nuw nsw i64 %indvars.iv, %i.ct
  %i.da = mul nsw i64 %i.cz, %i.bg
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.da ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %.reass
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 3 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %index ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %wide.load = load <4 x float>, ptr %i.dc, align 4, !tbaa !54, !alias.scope !205
  %wide.load88 = load <4 x float>, ptr %i.dd, align 4, !tbaa !54, !alias.scope !205
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %index ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store <4 x float> %wide.load, ptr %i.de, align 4, !tbaa !54, !alias.scope !206, !noalias !205
  store <4 x float> %wide.load88, ptr %i.df, align 4, !tbaa !54, !alias.scope !206, !noalias !205
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !200

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.059.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.059.prol = phi i64 [ %i.dk, %scalar.ph.prol ], [ %.059.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %.059.prol
  %i.di = load float, ptr %i.dh, align 4, !tbaa !54
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %.059.prol
  store float %i.di, ptr %i.dj, align 4, !tbaa !54
  %i.dk = add nuw i64 %.059.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !201

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.059.unr = phi i64 [ %.059.ph, %scalar.ph.preheader ], [ %i.dk, %scalar.ph.prol ]
  %i.dl = sub nsw i64 %.059.ph, %i.bg
  %i.dm = icmp ugt i64 %i.dl, -4
  br i1 %i.dm, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond68.not = icmp eq i64 %indvars.iv.next, %i.ch
  br i1 %exitcond68.not, label %._crit_edge62, label %.lr.ph, !llvm.loop !202

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.059 = phi i64 [ %i.ec, %scalar.ph ], [ %.059.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %.059
  %i.do = load float, ptr %i.dn, align 4, !tbaa !54
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %.059
  store float %i.do, ptr %i.dp, align 4, !tbaa !54
  %i.dq = add nuw i64 %.059, 1                    ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.dq
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !54
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.dq
  store float %i.ds, ptr %i.dt, align 4, !tbaa !54
  %i.du = add nuw i64 %.059, 2                    ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.du
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !54
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.du
  store float %i.dw, ptr %i.dx, align 4, !tbaa !54
  %i.dy = add nuw i64 %.059, 3                    ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.dy
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !54
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.dy
  store float %i.ea, ptr %i.eb, align 4, !tbaa !54
  %i.ec = add nuw i64 %.059, 4                    ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ec, %i.bg
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !203

bb.aa:                                            ; preds = %._crit_edge65.split
  %i.ed = load ptr, ptr %i.h, align 8, !tbaa !47
  %i.ee = load ptr, ptr %i.e, align 8, !tbaa !48  ; 2 uses
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = sub i64 %i.ef, %i.eg
  %i.ei = ashr exact i64 %i.eh, 2
  %i.ej = icmp ugt i64 %i.ei, %i.cu
  br i1 %i.ej, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.cu
  %i.el = load float, ptr %i.ek, align 4, !tbaa !54
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.em = phi float [ %i.el, %bb.ab ], [ 0.000000e+00, %bb.aa ]
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 288
  store float %i.em, ptr %i.en, align 8, !tbaa !207
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ep = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 0, ptr %i.eq, align 8
  store i32 34209792, ptr %14, align 8, !tbaa !51
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !50
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %13, ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.m
  ret void

bb.af:                                            ; preds = %bb.w, %bb.t, %bb.p, %._crit_edge65.split
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ag:                                            ; preds = %bb.ac
  %i.es = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i7.i, %bb.af, %bb.ag
  %.pn44.pn.pn.pn = phi { ptr, i32 } [ %i.es, %bb.ag ], [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.er, %bb.af ], [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i7.i ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.ah

bb.ah:                                            ; preds = %.body, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn49 = phi { ptr, i32 } [ %i.ae, %bb.n ], [ %.pn44.pn.pn.pn, %.body ], [ %.pn42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.t, %bb.f ]
  resume { ptr, i32 } %.pn49
}

declare void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #5

declare noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN2cv4UMatC1ENS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef) unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv4UMataSEOS0_(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184)) unnamed_addr #5

declare void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN2cv13HOGDescriptor4readERNS_8FileNodeE(ptr noundef nonnull align 8 dereferenceable(297) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::internal::VecReaderProxy", align 8 ; 4 uses
  %3 = alloca %"class.cv::FileNodeIterator", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"class.cv::FileNode", align 8      ; 4 uses
  %5 = alloca %"class.cv::FileNode", align 8      ; 4 uses
  %6 = alloca %"class.cv::FileNode", align 8      ; 4 uses
  %7 = alloca %"class.cv::FileNode", align 8      ; 4 uses
  %8 = alloca %"class.cv::FileNode", align 8      ; 4 uses
  %9 = alloca %"class.cv::FileNode", align 8      ; 4 uses
  %10 = alloca %"class.cv::FileNode", align 8     ; 4 uses
  %11 = alloca %"class.cv::FileNode", align 8     ; 4 uses
  %12 = alloca %"class.cv::FileNode", align 8     ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator.0", align 1 ; 3 uses
  %15 = alloca %"class.cv::FileNodeIterator", align 8 ; 15 uses
  %16 = alloca %"class.cv::FileNode", align 8     ; 4 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::allocator.0", align 1 ; 3 uses
  %19 = alloca %"class.cv::FileNodeIterator", align 8 ; 4 uses
end_hunk_0
