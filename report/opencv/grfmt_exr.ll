Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/grfmt_exr?download=true
inline.NumInlined: 523
inline.NumDeleted: 289
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN2cv10ExrDecoder10readHeaderEv:bb.a
  %i.dp = extractvalue { ptr, i32 } %i.do, 0
  call void @__clang_call_terminate(ptr %i.dp) #24
  unreachable

_ZNSt7__cxx119to_stringEi.exit:                   ; preds = %bb.w, %bb.x
  %storemerge.i.i = phi i8 [ %i.dn, %bb.x ], [ %i.dl, %bb.w ]
  store i8 %storemerge.i.i, ptr %i.cm, align 1, !tbaa !87
  %i.dq = invoke noundef ptr @_ZNK7Imf_3_111ChannelList11findChannelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.z unwind label %bb.ac      ; 3 uses

bb.z:                                             ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.dr = load ptr, ptr %1, align 8, !tbaa !86    ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.bu
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.z
  %i.dt = load i64, ptr %i.bu, align 8, !tbaa !87
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.du) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  %.not35 = icmp eq ptr %i.dq, null
  br i1 %.not35, label %.critedge37, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !112
  %i.dx = icmp eq i32 %i.dw, 1
  br i1 %i.dx, label %bb.ab, label %.critedge37

bb.ab:                                            ; preds = %bb.aa
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !114
  %i.ea = icmp eq i32 %i.dz, 1
  %i.eb = add nuw nsw i32 %.02456, 1
  br i1 %i.ea, label %bb.n, label %.critedge37, !llvm.loop !115

bb.ac:                                            ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.ec = landingpad { ptr, i32 }
          cleanup
  %i.ed = load ptr, ptr %1, align 8, !tbaa !86    ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.bu
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.ac
  %i.ef = load i64, ptr %i.bu, align 8, !tbaa !87
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eg) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.ai

bb.ad:                                            ; preds = %bb.l
  %i.eh = tail call noundef ptr @_ZNK7Imf_3_111ChannelList11findChannelEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.as, ptr noundef nonnull @.str.6) ; 2 uses
  store ptr %i.eh, ptr %i.aw, align 8, !tbaa !101
  %.not31 = icmp eq ptr %i.eh, null
  br i1 %.not31, label %bb.ae, label %.thread

bb.ae:                                            ; preds = %bb.ad
  %i.ei = tail call noundef ptr @_ZNK7Imf_3_111ChannelList11findChannelEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.as, ptr noundef nonnull @.str.7) ; 2 uses
  store ptr %i.ei, ptr %i.aw, align 8, !tbaa !101
  %.not32 = icmp eq ptr %i.ei, null
  br i1 %.not32, label %.critedge37, label %.thread

.thread:                                          ; preds = %bb.ad, %bb.ae
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 748
  store i8 1, ptr %i.ej, align 4, !tbaa !71
  %i.ek = tail call noundef ptr @_ZNK7Imf_3_111ChannelList11findChannelEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.as, ptr noundef nonnull @.str.8)
  store ptr %i.ek, ptr %i.au, align 8, !tbaa !100
  %i.el = tail call noundef ptr @_ZNK7Imf_3_111ChannelList11findChannelEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.as, ptr noundef nonnull @.str.9) ; 2 uses
  store ptr %i.el, ptr %i.ay, align 8, !tbaa !102
  %.not33 = icmp eq ptr %i.el, null
  br i1 %.not33, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.thread
  %i.em = load ptr, ptr %i.au, align 8, !tbaa !100
  %i.en = icmp ne ptr %i.em, null
  %i.eo = zext i1 %i.en to i8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.thread
  %i.ep = phi i8 [ 1, %.thread ], [ %i.eo, %bb.af ]
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 821
  store i8 %i.ep, ptr %i.eq, align 1, !tbaa !94
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %bb.k, %bb.ag
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 728
  store i32 2, ptr %i.er, align 8, !tbaa !70
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 822
  store i8 1, ptr %i.es, align 2, !tbaa !90
  br label %_ZN2cv10ExrDecoder5closeEv.exit

.critedge37:                                      ; preds = %bb.ab, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %._crit_edge, %bb.ae
  %i.et = load ptr, ptr %i.e, align 8, !tbaa !19  ; 3 uses
  %.not.i = icmp eq ptr %i.et, null
  br i1 %.not.i, label %_ZN2cv10ExrDecoder5closeEv.exit, label %bb.ah

bb.ah:                                            ; preds = %.critedge37
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(16) %i.et) #22, !inline_history !88
  store ptr null, ptr %i.e, align 8, !tbaa !19
  br label %_ZN2cv10ExrDecoder5closeEv.exit

_ZN2cv10ExrDecoder5closeEv.exit:                  ; preds = %bb.ah, %.critedge37, %.loopexit
  %.144 = phi i1 [ true, %.loopexit ], [ false, %.critedge37 ], [ false, %bb.ah ]
  ret i1 %.144

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %bb.e
  %.pn = phi { ptr, i32 } [ %i.ec, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ], [ %i.ap, %bb.e ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

declare noundef i32 @_ZN7Imf_3_117globalThreadCountEv() local_unnamed_addr #1

declare void @_ZN7Imf_3_19InputFileC1EPKci(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_19InputFile6headerEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_16Header10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN7Imf_3_117hasChromaticitiesERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #1

declare noundef nonnull align 4 dereferenceable(32) ptr @_ZN7Imf_3_114chromaticitiesERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZNK7Imf_3_16Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #1

declare noundef ptr @_ZNK7Imf_3_111ChannelList11findChannelEPKc(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #1

declare ptr @_ZNK7Imf_3_111ChannelList5beginEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

declare ptr @_ZNK7Imf_3_111ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

declare noundef ptr @_ZNK7Imf_3_111ChannelList11findChannelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv10ExrDecoder8readDataERNS_3MatE(ptr nofree noundef nonnull align 8 dereferenceable(832) initializes((820, 821)) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
_ZNK2cv10ExrDecoder4typeEv.exit:
  %2 = alloca %"class.Imf_3_1::FrameBuffer", align 8 ; 28 uses
  %i.a = alloca [3 x i32], align 4                ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.cv::AutoBuffer", align 8    ; 9 uses
  %8 = alloca %"struct.Imf_3_1::Slice", align 8   ; 5 uses
  %9 = alloca %"struct.Imf_3_1::Slice", align 8   ; 5 uses
  %10 = alloca %"struct.Imf_3_1::Slice", align 8  ; 5 uses
  %11 = alloca %"struct.Imf_3_1::Slice", align 8  ; 5 uses
  %12 = alloca %"struct.Imf_3_1::Slice", align 8  ; 5 uses
  %13 = alloca %"struct.Imf_3_1::Slice", align 8  ; 5 uses
  %14 = alloca %"struct.Imf_3_1::Slice", align 8  ; 5 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"struct.Imf_3_1::Slice", align 8  ; 5 uses
  %17 = alloca %"struct.Imf_3_1::Slice", align 8  ; 5 uses
  %18 = alloca %"struct.Imf_3_1::Slice", align 8  ; 5 uses
  %19 = alloca %"struct.Imf_3_1::Slice", align 8  ; 5 uses
  %20 = alloca %"struct.Imf_3_1::Slice", align 8  ; 5 uses
  %21 = alloca %"struct.Imf_3_1::Slice", align 8  ; 5 uses
  %22 = alloca %"struct.Imf_3_1::Slice", align 8  ; 5 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.std::allocator", align 1   ; 3 uses
  %25 = alloca %"struct.Imf_3_1::Slice", align 8  ; 5 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %27 = alloca %"class.std::allocator", align 1   ; 3 uses
  %28 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %29 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 822
  %i.c = load i8, ptr %i.b, align 2, !tbaa !90, !range !91, !noundef !92
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 3 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !93, !range !91, !noundef !92 ; 2 uses
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = trunc nuw i8 %i.c to i1
  %i.h = select i1 %i.g, i32 5, i32 4             ; 2 uses
  %i.i = load i32, ptr %1, align 8, !tbaa !116    ; 2 uses
  %i.j = and i32 %i.i, 31                         ; 2 uses
  %i.k = icmp eq i32 %i.h, %i.j                   ; 19 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 820
  %i.m = zext i1 %i.k to i8
  store i8 %i.m, ptr %i.l, align 4, !tbaa !117
  %i.n = lshr i32 %i.i, 5                         ; 2 uses
  %i.o = and i32 %i.n, 127                        ; 4 uses
  %i.p = add nuw nsw i32 %i.o, 1                  ; 2 uses
  %i.q = icmp samesign ugt i32 %i.o, 3            ; 3 uses
  %i.r = icmp samesign ugt i32 %i.o, 1            ; 7 uses
  %i.s = trunc i32 %i.n to i1
  %not. = xor i1 %i.q, true                       ; 2 uses
  %i.t = and i1 %i.s, %not.                       ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !118  ; 18 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.x = load i64, ptr %i.w, align 8, !tbaa !119  ; 33 uses
  br i1 %i.k, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZNK2cv10ExrDecoder4typeEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 821
  %i.z = load i8, ptr %i.y, align 1, !tbaa !94, !range !91, !noundef !92
  %i.aa = zext i1 %i.r to i8
  %i.ab = icmp eq i8 %i.z, %i.aa
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZNK2cv10ExrDecoder4typeEv.exit
  %i.ac = phi i1 [ false, %_ZNK2cv10ExrDecoder4typeEv.exit ], [ %i.ab, %bb.a ] ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 748 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 4, !tbaa !71, !range !91, !noundef !92
  %i.af = trunc nuw i8 %i.ae to i1                ; 3 uses
  %i.ag = and i1 %i.r, %i.af                      ; 2 uses
  br i1 %i.af, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 821
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !94, !range !91, !noundef !92
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = xor i1 %i.r, true
  %spec.select = select i1 %i.aj, i1 %i.ak, i1 false
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.al = phi i1 [ %spec.select, %bb.c ], [ false, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i32 0, ptr %i.am, align 8, !tbaa !120
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr null, ptr %i.an, align 8, !tbaa !121
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !122
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.am, ptr %i.ap, align 8, !tbaa !123
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 0, ptr %i.aq, align 8, !tbaa !124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) @__const._ZN2cv10ExrDecoder8readDataERNS_3MatE.xsample, i64 12, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 18 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !70
  %i.at = icmp eq i32 %i.as, 2
  br i1 %i.at, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv10ExrDecoder8readDataERNS_3MatE, ptr noundef nonnull @.str.11, i32 noundef 226) #27
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.i:                                             ; preds = %bb.f
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = load ptr, ptr %3, align 8, !tbaa !86    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !87
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.au, %bb.h ], [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.av, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.gi

bb.j:                                             ; preds = %bb.d
  %i.bb = select i1 %i.k, i64 4, i64 1            ; 8 uses
  br i1 %i.q, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 821
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !94, !range !91, !noundef !92
  %i.be = trunc nuw i8 %i.bd to i1                ; 2 uses
  %or.cond = and i1 %i.t, %i.be
  br i1 %or.cond, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %i.be, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.not = xor i1 %i.af, true
  %or.cond3 = or i1 %i.r, %.not
  br i1 %or.cond3, label %bb.p, label %bb.o

bb.n:                                             ; preds = %bb.l
  br i1 %i.r, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.bf = select i1 %i.t, i32 2, i32 1
  br label %bb.p

bb.p:                                             ; preds = %bb.j, %bb.k, %bb.m, %bb.n, %bb.o
  %i.bg = phi i32 [ 3, %bb.m ], [ 4, %bb.k ], [ %i.bf, %bb.o ], [ 3, %bb.n ], [ %i.p, %bb.j ] ; 16 uses
  %i.bh = zext nneg i32 %i.bg to i64              ; 14 uses
  %i.bi = shl nuw nsw i64 %i.bh, 2                ; 30 uses
  br i1 %i.f, label %_ZNK2cv10ExrDecoder4typeEv.exit367, label %bb.t

_ZNK2cv10ExrDecoder4typeEv.exit367:               ; preds = %bb.p
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 828
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !72
  %i.bl = add i32 %i.bk, 127
  %i.bm = and i32 %i.bl, 127                      ; 2 uses
  %i.bn = icmp eq i32 %i.o, %i.bm
  br i1 %i.bn, label %_ZNK2cv10ExrDecoder4typeEv.exit373, label %_ZNK2cv10ExrDecoder4typeEv.exit370

bb.q:                                             ; preds = %_ZNK2cv10ExrDecoder4typeEv.exit376, %_ZNK2cv10ExrDecoder4typeEv.exit370
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.gi

_ZNK2cv10ExrDecoder4typeEv.exit370:               ; preds = %_ZNK2cv10ExrDecoder4typeEv.exit367
  %i.bp = add nuw nsw i32 %i.bm, 1
  invoke void @_ZN2cv6detail24check_failed_MatChannelsEiiRKNS0_12CheckContextE(i32 noundef %i.p, i32 noundef %i.bp, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv10ExrDecoder8readDataERNS_3MatEE15__cv_check__236) #27
          to label %bb.r unwind label %bb.q

bb.r:                                             ; preds = %_ZNK2cv10ExrDecoder4typeEv.exit370
  unreachable

_ZNK2cv10ExrDecoder4typeEv.exit373:               ; preds = %_ZNK2cv10ExrDecoder4typeEv.exit367
  br i1 %i.k, label %bb.t, label %_ZNK2cv10ExrDecoder4typeEv.exit376

_ZNK2cv10ExrDecoder4typeEv.exit376:               ; preds = %_ZNK2cv10ExrDecoder4typeEv.exit373
  invoke void @_ZN2cv6detail21check_failed_MatDepthEiiRKNS0_12CheckContextE(i32 noundef %i.j, i32 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv10ExrDecoder8readDataERNS_3MatEE15__cv_check__237) #27
          to label %bb.s unwind label %bb.q

bb.s:                                             ; preds = %_ZNK2cv10ExrDecoder4typeEv.exit376
  unreachable

bb.t:                                             ; preds = %bb.p, %_ZNK2cv10ExrDecoder4typeEv.exit373
  %i.bq = zext i1 %i.q to i8
  %i.br = icmp eq i8 %i.e, %i.bq
  %or.cond7 = or i1 %i.ac, %not.
  %or.cond362 = and i1 %i.br, %or.cond7
  br i1 %or.cond362, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv10ExrDecoder8readDataERNS_3MatE, ptr noundef nonnull @.str.11, i32 noundef 239) #27
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  unreachable

bb.x:                                             ; preds = %bb.u
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit379

bb.y:                                             ; preds = %bb.v
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bu = load ptr, ptr %5, align 8, !tbaa !86    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit379, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i377

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i377: ; preds = %bb.y
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !87
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit379

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit379: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i377, %bb.x
  %.pn294 = phi { ptr, i32 } [ %i.bs, %bb.x ], [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i377 ], [ %i.bt, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.gi

bb.z:                                             ; preds = %bb.t
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 297
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !125, !range !91, !noundef !92
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.cc = invoke noundef i32 @_ZN2cv23getDefaultAlgorithmHintEv()
          to label %bb.ab unwind label %bb.ac
end_hunk_0
begin_hunk_1_@_ZN2cv10ExrDecoder8readDataERNS_3MatE:_ZNK2cv10ExrDecoder4typeEv.exit

bb.dj:                                            ; preds = %bb.dg
  %i.ph = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pi = load ptr, ptr %23, align 8, !tbaa !86   ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.pk = icmp eq ptr %i.pi, %i.pj
  br i1 %i.pk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i386

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i386: ; preds = %bb.dj
  %i.pl = load i64, ptr %i.pj, align 8, !tbaa !87
  %i.pm = add i64 %i.pl, 1
  call void @_ZdlPvm(ptr noundef %i.pi, i64 noundef %i.pm) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388: ; preds = %bb.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i386, %bb.di
  %.pn302 = phi { ptr, i32 } [ %i.pg, %bb.di ], [ %i.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i386 ], [ %i.ph, %bb.dj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  br label %bb.gg

bb.dk:                                            ; preds = %bb.de
  %i.pn = shl nuw nsw i32 %i.bg, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  %i.po = load i32, ptr %i.ar, align 8, !tbaa !70
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 732
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !129
  %i.pr = sext i32 %i.pq to i64
  %i.ps = mul nsw i64 %i.bi, %i.pr
  %i.pt = sub nsw i64 0, %i.ps
  %i.pu = getelementptr inbounds i8, ptr %.0257, i64 %i.pt
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.pw = load i32, ptr %i.pv, align 8, !tbaa !130
  %i.px = sext i32 %i.pw to i64
  %i.py = mul i64 %.0275, %i.px
  %i.pz = sub i64 0, %i.py
  %i.qa = getelementptr inbounds i8, ptr %i.pu, i64 %i.pz
  %i.qb = zext nneg i32 %i.pn to i64
  %i.qc = getelementptr i8, ptr %i.qa, i64 %i.qb
  %i.qd = getelementptr i8, ptr %i.qc, i64 -4
  %i.qe = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !103 ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 4
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !112
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qf, i64 8
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !114
  invoke void @_ZN7Imf_3_15SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50) %25, i32 noundef %i.po, ptr noundef %i.qd, i64 noundef %i.bi, i64 noundef %.0275, i32 noundef %i.qh, i32 noundef %i.qj, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.dl unwind label %bb.dn

bb.dl:                                            ; preds = %bb.dk
  invoke void @_ZN7Imf_3_111FrameBuffer6insertEPKcRKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str.4, ptr noundef nonnull align 8 dereferenceable(50) %25)
          to label %bb.dm unwind label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  br label %bb.do

bb.dn:                                            ; preds = %bb.dl, %bb.dk
  %i.qk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  br label %bb.gg

bb.do:                                            ; preds = %bb.dm, %bb.dd, %.loopexit414
  %i.ql = invoke ptr @_ZN7Imf_3_111FrameBuffer5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %.preheader412 unwind label %bb.dr

.preheader412:                                    ; preds = %bb.do, %bb.dt
  %.sroa.0405.0 = phi ptr [ %i.qr, %bb.dt ], [ %i.ql, %bb.do ] ; 2 uses
  %.0252 = phi i32 [ %i.qq, %bb.dt ], [ 0, %bb.do ] ; 2 uses
  %i.qm = invoke ptr @_ZN7Imf_3_111FrameBuffer3endEv(ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %bb.dp unwind label %bb.ds

bb.dp:                                            ; preds = %.preheader412
  %.not406 = icmp eq ptr %.sroa.0405.0, %i.qm
  br i1 %.not406, label %bb.dq, label %bb.dt

bb.dq:                                            ; preds = %bb.dp
  %i.qn = icmp eq i32 %.0252, %i.bg
  br i1 %i.qn, label %bb.dz, label %bb.du

bb.dr:                                            ; preds = %bb.do
  %i.qo = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

bb.ds:                                            ; preds = %.preheader412
  %i.qp = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

bb.dt:                                            ; preds = %bb.dp
  %i.qq = add nuw nsw i32 %.0252, 1
  %i.qr = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0405.0) #26
  br label %.preheader412, !llvm.loop !135

bb.du:                                            ; preds = %bb.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(1) %27)
          to label %bb.dv unwind label %bb.dx

bb.dv:                                            ; preds = %bb.du
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull @__func__._ZN2cv10ExrDecoder8readDataERNS_3MatE, ptr noundef nonnull @.str.11, i32 noundef 384) #27
          to label %bb.dw unwind label %bb.dy

bb.dw:                                            ; preds = %bb.dv
  unreachable

bb.dx:                                            ; preds = %bb.du
  %i.qs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391

bb.dy:                                            ; preds = %bb.dv
  %i.qt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qu = load ptr, ptr %26, align 8, !tbaa !86   ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.qw = icmp eq ptr %i.qu, %i.qv
  br i1 %i.qw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389: ; preds = %bb.dy
  %i.qx = load i64, ptr %i.qv, align 8, !tbaa !87
  %i.qy = add i64 %i.qx, 1
  call void @_ZdlPvm(ptr noundef %i.qu, i64 noundef %i.qy) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391: ; preds = %bb.dy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389, %bb.dx
  %.pn306 = phi { ptr, i32 } [ %i.qs, %bb.dx ], [ %i.qt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389 ], [ %i.qt, %bb.dy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  br label %bb.gg

bb.dz:                                            ; preds = %bb.dq
  %i.qz = icmp samesign ult i32 %i.bg, 4
  %or.cond14.not = select i1 %i.ac, i1 true, i1 %i.qz ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 6 uses
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !19 ; 4 uses
  br i1 %or.cond14.not, label %bb.ec, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %.not.i392 = icmp eq ptr %i.rb, null
  br i1 %.not.i392, label %_ZN2cv10ExrDecoder5closeEv.exit, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !8
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 8
  %i.re = load ptr, ptr %i.rd, align 8
  call void %i.re(ptr noundef nonnull align 8 dereferenceable(16) %i.rb) #22, !inline_history !88
  store ptr null, ptr %i.ra, align 8, !tbaa !19
  br label %_ZN2cv10ExrDecoder5closeEv.exit

bb.ec:                                            ; preds = %bb.dz
  invoke void @_ZN7Imf_3_19InputFile14setFrameBufferERKNS_11FrameBufferE(ptr noundef nonnull align 8 dereferenceable(16) %i.rb, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %bb.ed unwind label %bb.ag

bb.ed:                                            ; preds = %bb.ec
  br i1 %i.ac, label %bb.ee, label %bb.fa

bb.ee:                                            ; preds = %bb.ed
  %i.rf = load ptr, ptr %i.ra, align 8, !tbaa !19
  %i.rg = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.rh = load i32, ptr %i.rg, align 8, !tbaa !130
  %i.ri = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.rj = load i32, ptr %i.ri, align 8, !tbaa !136
  invoke void @_ZN7Imf_3_19InputFile10readPixelsEii(ptr noundef nonnull align 8 dereferenceable(16) %i.rf, i32 noundef %i.rh, i32 noundef %i.rj)
          to label %bb.ef unwind label %bb.ag

bb.ef:                                            ; preds = %bb.ee
  %i.rk = load i8, ptr %i.d, align 8, !tbaa !93, !range !91, !noundef !92
  %i.rl = trunc nuw i8 %i.rk to i1
  br i1 %i.rl, label %bb.fz, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 821
  %i.rn = load i8, ptr %i.rm, align 1, !tbaa !94, !range !91, !noundef !92
  %i.ro = trunc nuw i8 %i.rn to i1
  br i1 %i.ro, label %bb.eh, label %bb.eu

bb.eh:                                            ; preds = %bb.eg
  br i1 %.0262, label %bb.ei, label %bb.eo

bb.ei:                                            ; preds = %bb.eh
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !100 ; 3 uses
  %.not346 = icmp eq ptr %i.rq, null
  br i1 %.not346, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 4
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !112 ; 2 uses
  %.not347 = icmp eq i32 %i.rs, 1
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !114 ; 2 uses
  %.not348 = icmp eq i32 %i.ru, 1
  %or.cond560 = select i1 %.not347, i1 %.not348, i1 false
  br i1 %or.cond560, label %bb.ek, label %._crit_edge486

._crit_edge486:                                   ; preds = %bb.ej
  %30 = lshr i64 %i.x, 2
  %31 = select i1 %i.k, i64 %30, i64 %i.x
  %i.rv = trunc i64 %31 to i32
  call void @_ZN2cv10ExrDecoder8UpSampleEPhiiii(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %i.v, i32 noundef %i.bg, i32 noundef %i.rv, i32 noundef %i.rs, i32 noundef %i.ru)
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %._crit_edge486, %bb.ei
  %i.rw = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !101 ; 3 uses
  %.not349 = icmp eq ptr %i.rx, null
  br i1 %.not349, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 4
  %i.rz = load i32, ptr %i.ry, align 4, !tbaa !112 ; 2 uses
  %.not350 = icmp eq i32 %i.rz, 1
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rx, i64 8
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !114 ; 2 uses
  %.not351 = icmp eq i32 %i.sb, 1
  %or.cond561 = select i1 %.not350, i1 %.not351, i1 false
  br i1 %or.cond561, label %bb.em, label %._crit_edge489

._crit_edge489:                                   ; preds = %bb.el
  %i.sc = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bb
  %32 = lshr i64 %i.x, 2
  %33 = select i1 %i.k, i64 %32, i64 %i.x
  %i.sd = trunc i64 %33 to i32
  call void @_ZN2cv10ExrDecoder8UpSampleEPhiiii(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull %i.sc, i32 noundef %i.bg, i32 noundef %i.sd, i32 noundef %i.rz, i32 noundef %i.sb)
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %._crit_edge489, %bb.ek
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !102 ; 3 uses
  %.not352 = icmp eq ptr %i.sf, null
  br i1 %.not352, label %bb.ew, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 4
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !112 ; 2 uses
  %.not353 = icmp eq i32 %i.sh, 1
  %i.si = getelementptr inbounds nuw i8, ptr %i.sf, i64 8
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !114 ; 2 uses
  %.not354 = icmp eq i32 %i.sj, 1
  %or.cond562 = select i1 %.not353, i1 %.not354, i1 false
  br i1 %or.cond562, label %bb.ew, label %._crit_edge492

._crit_edge492:                                   ; preds = %bb.en
  %i.sk = shl nuw nsw i64 %i.bb, 1
  %i.sl = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.sk
  %34 = lshr i64 %i.x, 2
  %35 = select i1 %i.k, i64 %34, i64 %i.x
  %i.sm = trunc i64 %35 to i32
  call void @_ZN2cv10ExrDecoder8UpSampleEPhiiii(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull %i.sl, i32 noundef %i.bg, i32 noundef %i.sm, i32 noundef %i.sh, i32 noundef %i.sj)
  br label %bb.ew

bb.eo:                                            ; preds = %bb.eh
  %i.sn = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !102 ; 3 uses
  %.not337 = icmp eq ptr %i.so, null
  br i1 %.not337, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 4
  %i.sq = load i32, ptr %i.sp, align 4, !tbaa !112 ; 2 uses
  %.not338 = icmp eq i32 %i.sq, 1
  %i.sr = getelementptr inbounds nuw i8, ptr %i.so, i64 8
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !114 ; 2 uses
  %.not339 = icmp eq i32 %i.ss, 1
  %or.cond563 = select i1 %.not338, i1 %.not339, i1 false
  br i1 %or.cond563, label %bb.eq, label %._crit_edge477

._crit_edge477:                                   ; preds = %bb.ep
  %36 = lshr i64 %i.x, 2
  %37 = select i1 %i.k, i64 %36, i64 %i.x
  %i.st = trunc i64 %37 to i32
  call void @_ZN2cv10ExrDecoder8UpSampleEPhiiii(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %i.v, i32 noundef %i.bg, i32 noundef %i.st, i32 noundef %i.sq, i32 noundef %i.ss)
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %._crit_edge477, %bb.eo
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !101 ; 3 uses
  %.not340 = icmp eq ptr %i.sv, null
  br i1 %.not340, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 4
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !112 ; 2 uses
  %.not341 = icmp eq i32 %i.sx, 1
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sv, i64 8
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !114 ; 2 uses
  %.not342 = icmp eq i32 %i.sz, 1
  %or.cond564 = select i1 %.not341, i1 %.not342, i1 false
  br i1 %or.cond564, label %bb.es, label %._crit_edge480

._crit_edge480:                                   ; preds = %bb.er
  %i.ta = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bb
  %38 = lshr i64 %i.x, 2
  %39 = select i1 %i.k, i64 %38, i64 %i.x
  %i.tb = trunc i64 %39 to i32
  call void @_ZN2cv10ExrDecoder8UpSampleEPhiiii(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull %i.ta, i32 noundef %i.bg, i32 noundef %i.tb, i32 noundef %i.sx, i32 noundef %i.sz)
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %._crit_edge480, %bb.eq
  %i.tc = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !100 ; 3 uses
  %.not343 = icmp eq ptr %i.td, null
  br i1 %.not343, label %bb.ew, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 4
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !112 ; 2 uses
  %.not344 = icmp eq i32 %i.tf, 1
  %i.tg = getelementptr inbounds nuw i8, ptr %i.td, i64 8
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !114 ; 2 uses
  %.not345 = icmp eq i32 %i.th, 1
  %or.cond565 = select i1 %.not344, i1 %.not345, i1 false
  br i1 %or.cond565, label %bb.ew, label %._crit_edge483

._crit_edge483:                                   ; preds = %bb.et
  %i.ti = shl nuw nsw i64 %i.bb, 1
  %i.tj = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ti
  %40 = lshr i64 %i.x, 2
  %41 = select i1 %i.k, i64 %40, i64 %i.x
  %i.tk = trunc i64 %41 to i32
  call void @_ZN2cv10ExrDecoder8UpSampleEPhiiii(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull %i.tj, i32 noundef %i.bg, i32 noundef %i.tk, i32 noundef %i.tf, i32 noundef %i.th)
  br label %bb.ew

bb.eu:                                            ; preds = %bb.eg
  %i.tl = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !101 ; 3 uses
  %.not334 = icmp eq ptr %i.tm, null
  br i1 %.not334, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 4
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !112 ; 2 uses
  %.not335 = icmp eq i32 %i.to, 1
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tm, i64 8
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !114 ; 2 uses
  %.not336 = icmp eq i32 %i.tq, 1
  %or.cond566 = select i1 %.not335, i1 %.not336, i1 false
  br i1 %or.cond566, label %bb.ew, label %._crit_edge474

._crit_edge474:                                   ; preds = %bb.ev
  %42 = lshr i64 %i.x, 2
  %43 = select i1 %i.k, i64 %42, i64 %i.x
  %i.tr = trunc i64 %43 to i32
  call void @_ZN2cv10ExrDecoder8UpSampleEPhiiii(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %i.v, i32 noundef %i.bg, i32 noundef %i.tr, i32 noundef %i.to, i32 noundef %i.tq)
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.et, %bb.en, %bb.eu, %._crit_edge474, %._crit_edge492, %bb.em, %._crit_edge483, %bb.es
  br i1 %i.ag, label %bb.ex, label %bb.fz

bb.ex:                                            ; preds = %bb.ew
  %i.ts = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !98 ; 2 uses
  %44 = lshr i64 %i.x, 2
  %45 = select i1 %i.k, i64 %44, i64 %i.x
  %i.tu = trunc i64 %45 to i32                    ; 2 uses
  br i1 %.0262, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  call void @_ZN2cv10ExrDecoder11ChromaToRGBEPfiii(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %i.v, i32 noundef %i.tt, i32 noundef %i.bg, i32 noundef %i.tu)
  br label %bb.fz

bb.ez:                                            ; preds = %bb.ex
  call void @_ZN2cv10ExrDecoder11ChromaToBGREPfiii(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %i.v, i32 noundef %i.tt, i32 noundef %i.bg, i32 noundef %i.tu)
  br label %bb.fz

bb.fa:                                            ; preds = %bb.ed
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.tw = load i32, ptr %i.tv, align 8, !tbaa !130 ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 2 uses
  %i.ty = load i32, ptr %i.tx, align 8, !tbaa !136
  %.not309429 = icmp sgt i32 %i.tw, %i.ty
  br i1 %.not309429, label %._crit_edge435, label %.lr.ph434

.lr.ph434:                                        ; preds = %bb.fa
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ua = trunc i64 %i.x to i32                   ; 2 uses
  %ident.check582.not = icmp eq i32 %i.bg, 1
  %ident.check.not = icmp eq i32 %i.bg, 1
  br label %bb.fb

bb.fb:                                            ; preds = %.lr.ph434, %.loopexit
  %.0254432 = phi i32 [ %i.tw, %.lr.ph434 ], [ %i.xo, %.loopexit ] ; 4 uses
  %.0256430 = phi ptr [ %i.v, %.lr.ph434 ], [ %i.xn, %.loopexit ] ; 4 uses
  %i.ub = load ptr, ptr %i.ra, align 8, !tbaa !19
  invoke void @_ZN7Imf_3_19InputFile10readPixelsEii(ptr noundef nonnull align 8 dereferenceable(16) %i.ub, i32 noundef %.0254432, i32 noundef %.0254432)
          to label %.lr.ph424 unwind label %bb.fc

._crit_edge:                                      ; preds = %_ZN2cv10ExrDecoder9UpSampleXEPfii.exit
  br i1 %i.al, label %bb.fe, label %bb.ff

bb.fc:                                            ; preds = %bb.fb
  %i.uc = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

.lr.ph424:                                        ; preds = %bb.fb, %_ZN2cv10ExrDecoder9UpSampleXEPfii.exit
  %indvars.iv445 = phi i64 [ %indvars.iv.next446, %_ZN2cv10ExrDecoder9UpSampleXEPfii.exit ], [ 0, %bb.fb ] ; 3 uses
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv445
  %i.ue = load i32, ptr %i.ud, align 4, !tbaa !10 ; 9 uses
  %.not333 = icmp eq i32 %i.ue, 1
  br i1 %.not333, label %_ZN2cv10ExrDecoder9UpSampleXEPfii.exit, label %bb.fd

bb.fd:                                            ; preds = %.lr.ph424
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %.0257, i64 %indvars.iv445 ; 14 uses
  %i.ug = load i32, ptr %i.tz, align 8, !tbaa !97 ; 2 uses
  %i.uh = add nsw i32 %i.ug, -1
  %i.ui = sdiv i32 %i.uh, %i.ue                   ; 2 uses
  %i.uj = icmp sgt i32 %i.ui, -1
  %i.uk = icmp sgt i32 %i.ue, 0
  %or.cond.i393 = and i1 %i.uk, %i.uj
  br i1 %or.cond.i393, label %.preheader.lr.ph.split.i, label %_ZN2cv10ExrDecoder9UpSampleXEPfii.exit

.preheader.lr.ph.split.i:                         ; preds = %bb.fd
  %.02327.i = sub nsw i32 %i.ug, %i.ue            ; 2 uses
  %i.ul = load i32, ptr %i.ar, align 8
  %i.um = icmp eq i32 %i.ul, 2
  %i.un = zext nneg i32 %i.ui to i64              ; 2 uses
  %wide.trip.count41.i = zext nneg i32 %i.ue to i64 ; 10 uses
  br i1 %i.um, label %.preheader.us.i.preheader, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader.lr.ph.split.i
  %min.iters.check584 = icmp ugt i32 %i.ue, 7
  %or.cond596 = select i1 %min.iters.check584, i1 %ident.check582.not, i1 false
  %n.vec586 = and i64 %wide.trip.count41.i, 2147483640 ; 3 uses
  %cmp.n593 = icmp eq i64 %n.vec586, %wide.trip.count41.i
  %xtraiter = and i64 %wide.trip.count41.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.us.i.preheader:                        ; preds = %.preheader.lr.ph.split.i
  %min.iters.check = icmp ugt i32 %i.ue, 7
  %or.cond595 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %n.vec = and i64 %wide.trip.count41.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count41.i
  %xtraiter604 = and i64 %wide.trip.count41.i, 3  ; 2 uses
  %lcmp.mod605.not = icmp eq i64 %xtraiter604, 0
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.preheader, %._crit_edge.split.us.us.i
  %indvars.iv43.i = phi i64 [ %indvars.iv.next44.i, %._crit_edge.split.us.us.i ], [ %i.un, %.preheader.us.i.preheader ] ; 3 uses
  %.02329.us.i = phi i32 [ %.023.us.i, %._crit_edge.split.us.us.i ], [ %.02327.i, %.preheader.us.i.preheader ] ; 2 uses
  %i.uo = mul nsw i64 %indvars.iv43.i, %i.bh
  %i.up = getelementptr inbounds [4 x i8], ptr %i.uf, i64 %i.uo
  %i.uq = sext i32 %.02329.us.i to i64            ; 6 uses
  %.pre46.i = load float, ptr %i.up, align 4, !tbaa !11 ; 6 uses
  br i1 %or.cond595, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %.preheader.us.i
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.pre46.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep616 = getelementptr [4 x i8], ptr %i.uf, i64 %i.uq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep617 = getelementptr [4 x i8], ptr %invariant.gep616, i64 %index ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %gep617, i64 16
  store <4 x float> %broadcast.splat, ptr %gep617, align 4, !tbaa !11
  store <4 x float> %broadcast.splat, ptr %i.ur, align 4, !tbaa !11
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.us = icmp eq i64 %index.next, %n.vec
  br i1 %i.us, label %middle.block, label %vector.body, !llvm.loop !137

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.split.us.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.i, %middle.block
  %indvars.iv38.i.ph = phi i64 [ 0, %.preheader.us.i ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod605.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv38.i.prol = phi i64 [ %indvars.iv.next39.i.prol, %scalar.ph.prol ], [ %indvars.iv38.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter606 = phi i64 [ %prol.iter606.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ut = add nsw i64 %indvars.iv38.i.prol, %i.uq
  %i.uu = mul nsw i64 %i.ut, %i.bh
  %i.uv = getelementptr inbounds [4 x i8], ptr %i.uf, i64 %i.uu
  store float %.pre46.i, ptr %i.uv, align 4, !tbaa !11
  %indvars.iv.next39.i.prol = add nuw nsw i64 %indvars.iv38.i.prol, 1 ; 2 uses
  %prol.iter606.next = add i64 %prol.iter606, 1   ; 2 uses
  %prol.iter606.cmp.not = icmp eq i64 %prol.iter606.next, %xtraiter604
  br i1 %prol.iter606.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !140

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv38.i.unr = phi i64 [ %indvars.iv38.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next39.i.prol, %scalar.ph.prol ]
  %i.uw = sub nsw i64 %indvars.iv38.i.ph, %wide.trip.count41.i
  %i.ux = icmp ugt i64 %i.uw, -4
  br i1 %i.ux, label %._crit_edge.split.us.us.i, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op618 = add i64 1, %i.uq
  %invariant.op620 = add i64 2, %i.uq
  %invariant.op622 = add i64 3, %i.uq
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv38.i = phi i64 [ %indvars.iv38.i.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next39.i.3, %scalar.ph ] ; 5 uses
  %i.uy = add nsw i64 %indvars.iv38.i, %i.uq
  %i.uz = mul nsw i64 %i.uy, %i.bh
  %i.va = getelementptr inbounds [4 x i8], ptr %i.uf, i64 %i.uz
  store float %.pre46.i, ptr %i.va, align 4, !tbaa !11
  %.reass619 = add i64 %indvars.iv38.i, %invariant.op618
  %i.vb = mul nsw i64 %.reass619, %i.bh
  %i.vc = getelementptr inbounds [4 x i8], ptr %i.uf, i64 %i.vb
  store float %.pre46.i, ptr %i.vc, align 4, !tbaa !11
  %.reass621 = add i64 %indvars.iv38.i, %invariant.op620
  %i.vd = mul nsw i64 %.reass621, %i.bh
  %i.ve = getelementptr inbounds [4 x i8], ptr %i.uf, i64 %i.vd
  store float %.pre46.i, ptr %i.ve, align 4, !tbaa !11
  %.reass623 = add i64 %indvars.iv38.i, %invariant.op622
  %i.vf = mul nsw i64 %.reass623, %i.bh
  %i.vg = getelementptr inbounds [4 x i8], ptr %i.uf, i64 %i.vf
  store float %.pre46.i, ptr %i.vg, align 4, !tbaa !11
  %indvars.iv.next39.i.3 = add nuw nsw i64 %indvars.iv38.i, 4 ; 2 uses
  %exitcond42.not.i.3 = icmp eq i64 %indvars.iv.next39.i.3, %wide.trip.count41.i
  br i1 %exitcond42.not.i.3, label %._crit_edge.split.us.us.i, label %scalar.ph, !llvm.loop !142

._crit_edge.split.us.us.i:                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next44.i = add nsw i64 %indvars.iv43.i, -1
  %.023.us.i = sub nsw i32 %.02329.us.i, %i.ue
  %i.vh = icmp sgt i64 %indvars.iv43.i, 0
  br i1 %i.vh, label %.preheader.us.i, label %_ZN2cv10ExrDecoder9UpSampleXEPfii.exit, !llvm.loop !143

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge.split.i
  %indvars.iv35.i = phi i64 [ %indvars.iv.next36.i, %._crit_edge.split.i ], [ %i.un, %.preheader.i.preheader ] ; 3 uses
  %.02329.i = phi i32 [ %.023.i, %._crit_edge.split.i ], [ %.02327.i, %.preheader.i.preheader ] ; 2 uses
  %i.vi = mul nsw i64 %indvars.iv35.i, %i.bh
  %i.vj = getelementptr inbounds [4 x i8], ptr %i.uf, i64 %i.vi
  %i.vk = sext i32 %.02329.i to i64               ; 6 uses
  %.pre.i = load i32, ptr %i.vj, align 4, !tbaa !10 ; 6 uses
  br i1 %or.cond596, label %vector.ph585, label %scalar.ph583.preheader

vector.ph585:                                     ; preds = %.preheader.i
  %broadcast.splatinsert587 = insertelement <4 x i32> poison, i32 %.pre.i, i64 0
  %broadcast.splat588 = shufflevector <4 x i32> %broadcast.splatinsert587, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.uf, i64 %i.vk
  br label %vector.body589

vector.body589:                                   ; preds = %vector.body589, %vector.ph585
  %index590 = phi i64 [ 0, %vector.ph585 ], [ %index.next591, %vector.body589 ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index590 ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %broadcast.splat588, ptr %gep, align 4, !tbaa !10
  store <4 x i32> %broadcast.splat588, ptr %i.vl, align 4, !tbaa !10
  %index.next591 = add nuw i64 %index590, 8       ; 2 uses
  %i.vm = icmp eq i64 %index.next591, %n.vec586
  br i1 %i.vm, label %middle.block592, label %vector.body589, !llvm.loop !144

middle.block592:                                  ; preds = %vector.body589
  br i1 %cmp.n593, label %._crit_edge.split.i, label %scalar.ph583.preheader

scalar.ph583.preheader:                           ; preds = %.preheader.i, %middle.block592
  %indvars.iv.i.ph = phi i64 [ 0, %.preheader.i ], [ %n.vec586, %middle.block592 ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph583.prol.loopexit, label %scalar.ph583.prol

scalar.ph583.prol:                                ; preds = %scalar.ph583.preheader, %scalar.ph583.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph583.prol ], [ %indvars.iv.i.ph, %scalar.ph583.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph583.prol ], [ 0, %scalar.ph583.preheader ]
  %i.vn = add nsw i64 %indvars.iv.i.prol, %i.vk
  %i.vo = mul nsw i64 %i.vn, %i.bh
  %i.vp = getelementptr inbounds [4 x i8], ptr %i.uf, i64 %i.vo
  store i32 %.pre.i, ptr %i.vp, align 4, !tbaa !10
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph583.prol.loopexit, label %scalar.ph583.prol, !llvm.loop !145

scalar.ph583.prol.loopexit:                       ; preds = %scalar.ph583.prol, %scalar.ph583.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph583.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph583.prol ]
  %i.vq = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count41.i
  %i.vr = icmp ugt i64 %i.vq, -4
  br i1 %i.vr, label %._crit_edge.split.i, label %scalar.ph583.preheader.new

scalar.ph583.preheader.new:                       ; preds = %scalar.ph583.prol.loopexit
  %invariant.op = add i64 1, %i.vk
  %invariant.op612 = add i64 2, %i.vk
  %invariant.op614 = add i64 3, %i.vk
  br label %scalar.ph583

._crit_edge.split.i:                              ; preds = %scalar.ph583.prol.loopexit, %scalar.ph583, %middle.block592
  %indvars.iv.next36.i = add nsw i64 %indvars.iv35.i, -1
  %.023.i = sub nsw i32 %.02329.i, %i.ue
  %i.vs = icmp sgt i64 %indvars.iv35.i, 0
  br i1 %i.vs, label %.preheader.i, label %_ZN2cv10ExrDecoder9UpSampleXEPfii.exit, !llvm.loop !143

scalar.ph583:                                     ; preds = %scalar.ph583, %scalar.ph583.preheader.new
  %indvars.iv.i = phi i64 [ %indvars.iv.i.unr, %scalar.ph583.preheader.new ], [ %indvars.iv.next.i.3, %scalar.ph583 ] ; 5 uses
  %i.vt = add nsw i64 %indvars.iv.i, %i.vk
  %i.vu = mul nsw i64 %i.vt, %i.bh
  %i.vv = getelementptr inbounds [4 x i8], ptr %i.uf, i64 %i.vu
  store i32 %.pre.i, ptr %i.vv, align 4, !tbaa !10
  %.reass = add i64 %indvars.iv.i, %invariant.op
  %i.vw = mul nsw i64 %.reass, %i.bh
  %i.vx = getelementptr inbounds [4 x i8], ptr %i.uf, i64 %i.vw
  store i32 %.pre.i, ptr %i.vx, align 4, !tbaa !10
  %.reass613 = add i64 %indvars.iv.i, %invariant.op612
  %i.vy = mul nsw i64 %.reass613, %i.bh
  %i.vz = getelementptr inbounds [4 x i8], ptr %i.uf, i64 %i.vy
  store i32 %.pre.i, ptr %i.vz, align 4, !tbaa !10
  %.reass615 = add i64 %indvars.iv.i, %invariant.op614
  %i.wa = mul nsw i64 %.reass615, %i.bh
  %i.wb = getelementptr inbounds [4 x i8], ptr %i.uf, i64 %i.wa
  store i32 %.pre.i, ptr %i.wb, align 4, !tbaa !10
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count41.i
  br i1 %exitcond.not.i.3, label %._crit_edge.split.i, label %scalar.ph583, !llvm.loop !146

_ZN2cv10ExrDecoder9UpSampleXEPfii.exit:           ; preds = %._crit_edge.split.i, %._crit_edge.split.us.us.i, %bb.fd, %.lr.ph424
  %indvars.iv.next446 = add nuw nsw i64 %indvars.iv445, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next446, %i.bh
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph424, !llvm.loop !147

bb.fe:                                            ; preds = %._crit_edge
  call void @_ZN2cv10ExrDecoder9RGBToGrayEPfS1_(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %.0257, ptr noundef %.0256430)
  br label %.loopexit

bb.ff:                                            ; preds = %._crit_edge
  br i1 %i.ag, label %bb.fg, label %bb.fj

bb.fg:                                            ; preds = %bb.ff
  br i1 %.0262, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  call void @_ZN2cv10ExrDecoder11ChromaToRGBEPfiii(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %.0257, i32 noundef 1, i32 noundef 3, i32 noundef %i.ua)
  br label %bb.fj

bb.fi:                                            ; preds = %bb.fg
  call void @_ZN2cv10ExrDecoder11ChromaToBGREPfiii(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %.0257, i32 noundef 1, i32 noundef 3, i32 noundef %i.ua)
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fh, %bb.fi, %bb.ff
  %i.wc = load i32, ptr %i.ar, align 8, !tbaa !70
  %i.wd = icmp eq i32 %i.wc, 2
  %i.we = load i32, ptr %i.tz, align 8, !tbaa !97
  %i.wf = load i32, ptr %1, align 8, !tbaa !116
  %i.wg = lshr i32 %i.wf, 5
  %i.wh = and i32 %i.wg, 127
  %i.wi = add nuw nsw i32 %i.wh, 1
  %i.wj = mul nsw i32 %i.wi, %i.we
  %i.wk = icmp sgt i32 %i.wj, 0                   ; 2 uses
  br i1 %i.wd, label %.preheader, label %.preheader409

.preheader409:                                    ; preds = %bb.fj
  br i1 %i.wk, label %.lr.ph426, label %.loopexit

.preheader:                                       ; preds = %bb.fj
  br i1 %i.wk, label %.lr.ph428, label %.loopexit

.lr.ph428:                                        ; preds = %.preheader, %.lr.ph428
  %indvars.iv452 = phi i64 [ %indvars.iv.next453, %.lr.ph428 ], [ 0, %.preheader ] ; 3 uses
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %.0257, i64 %indvars.iv452
  %i.wm = load float, ptr %i.wl, align 4, !tbaa !11
  %i.wn = insertelement <4 x float> poison, float %i.wm, i64 0
  %i.wo = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.wn)
  %i.wp = call i32 @llvm.smax.i32(i32 %i.wo, i32 0)
  %i.wq = call i32 @llvm.umin.i32(i32 %i.wp, i32 255)
  %i.wr = trunc nuw i32 %i.wq to i8
  %i.ws = getelementptr inbounds nuw i8, ptr %.0256430, i64 %indvars.iv452
  store i8 %i.wr, ptr %i.ws, align 1, !tbaa !87
  %indvars.iv.next453 = add nuw nsw i64 %indvars.iv452, 1 ; 2 uses
  %i.wt = load i32, ptr %i.tz, align 8, !tbaa !97
  %i.wu = load i32, ptr %1, align 8, !tbaa !116
  %i.wv = lshr i32 %i.wu, 5
  %i.ww = and i32 %i.wv, 127
  %i.wx = add nuw nsw i32 %i.ww, 1
  %i.wy = mul nsw i32 %i.wx, %i.wt
  %i.wz = sext i32 %i.wy to i64
  %i.xa = icmp slt i64 %indvars.iv.next453, %i.wz
  br i1 %i.xa, label %.lr.ph428, label %.loopexit, !llvm.loop !148

.lr.ph426:                                        ; preds = %.preheader409, %.lr.ph426
  %indvars.iv449 = phi i64 [ %indvars.iv.next450, %.lr.ph426 ], [ 0, %.preheader409 ] ; 3 uses
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %.0257, i64 %indvars.iv449
  %i.xc = load i32, ptr %i.xb, align 4, !tbaa !10
  %.sroa.speculated.i = call i32 @llvm.umin.i32(i32 %i.xc, i32 255)
  %i.xd = trunc nuw i32 %.sroa.speculated.i to i8
  %i.xe = getelementptr inbounds nuw i8, ptr %.0256430, i64 %indvars.iv449
  store i8 %i.xd, ptr %i.xe, align 1, !tbaa !87
  %indvars.iv.next450 = add nuw nsw i64 %indvars.iv449, 1 ; 2 uses
  %i.xf = load i32, ptr %i.tz, align 8, !tbaa !97
  %i.xg = load i32, ptr %1, align 8, !tbaa !116
  %i.xh = lshr i32 %i.xg, 5
  %i.xi = and i32 %i.xh, 127
  %i.xj = add nuw nsw i32 %i.xi, 1
  %i.xk = mul nsw i32 %i.xj, %i.xf
  %i.xl = sext i32 %i.xk to i64
  %i.xm = icmp slt i64 %indvars.iv.next450, %i.xl
  br i1 %i.xm, label %.lr.ph426, label %.loopexit, !llvm.loop !149

.loopexit:                                        ; preds = %.lr.ph426, %.lr.ph428, %.preheader409, %.preheader, %bb.fe
  %i.xn = getelementptr inbounds nuw i8, ptr %.0256430, i64 %i.x
  %i.xo = add nsw i32 %.0254432, 1
  %i.xp = load i32, ptr %i.tx, align 8, !tbaa !136
  %.not309.not = icmp slt i32 %.0254432, %i.xp
  br i1 %.not309.not, label %bb.fb, label %._crit_edge435, !llvm.loop !150

._crit_edge435:                                   ; preds = %.loopexit, %bb.fa
  br i1 %i.r, label %bb.fk, label %bb.fx

bb.fk:                                            ; preds = %._crit_edge435
  br i1 %.0262, label %bb.fl, label %bb.fr

bb.fl:                                            ; preds = %bb.fk
  %i.xq = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.xr = load ptr, ptr %i.xq, align 8, !tbaa !100 ; 3 uses
  %.not322 = icmp eq ptr %i.xr, null
  br i1 %.not322, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 4
  %i.xt = load i32, ptr %i.xs, align 4, !tbaa !112
  %.not323 = icmp eq i32 %i.xt, 1
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xr, i64 8
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !114 ; 2 uses
  %.not324 = icmp eq i32 %i.xv, 1
  %or.cond567 = select i1 %.not323, i1 %.not324, i1 false
  br i1 %or.cond567, label %bb.fn, label %._crit_edge465

._crit_edge465:                                   ; preds = %bb.fm
  %46 = lshr i64 %i.x, 2
  %47 = select i1 %i.k, i64 %46, i64 %i.x
  %i.xw = trunc i64 %47 to i32
  call void @_ZN2cv10ExrDecoder9UpSampleYEPhiii(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %i.v, i32 noundef 3, i32 noundef %i.xw, i32 noundef %i.xv)
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %._crit_edge465, %bb.fl
  %i.xx = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !101 ; 3 uses
  %.not325 = icmp eq ptr %i.xy, null
  br i1 %.not325, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 4
  %i.ya = load i32, ptr %i.xz, align 4, !tbaa !112
  %.not326 = icmp eq i32 %i.ya, 1
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xy, i64 8
  %i.yc = load i32, ptr %i.yb, align 4, !tbaa !114 ; 2 uses
  %.not327 = icmp eq i32 %i.yc, 1
  %or.cond568 = select i1 %.not326, i1 %.not327, i1 false
  br i1 %or.cond568, label %bb.fp, label %._crit_edge468

._crit_edge468:                                   ; preds = %bb.fo
  %i.yd = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bb
  %48 = lshr i64 %i.x, 2
  %49 = select i1 %i.k, i64 %48, i64 %i.x
  %i.ye = trunc i64 %49 to i32
  call void @_ZN2cv10ExrDecoder9UpSampleYEPhiii(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull %i.yd, i32 noundef 3, i32 noundef %i.ye, i32 noundef %i.yc)
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %._crit_edge468, %bb.fn
  %i.yf = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !102 ; 3 uses
  %.not328 = icmp eq ptr %i.yg, null
  br i1 %.not328, label %bb.fz, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 4
  %i.yi = load i32, ptr %i.yh, align 4, !tbaa !112
  %.not329 = icmp eq i32 %i.yi, 1
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yg, i64 8
  %i.yk = load i32, ptr %i.yj, align 4, !tbaa !114 ; 2 uses
  %.not330 = icmp eq i32 %i.yk, 1
  %or.cond569 = select i1 %.not329, i1 %.not330, i1 false
  br i1 %or.cond569, label %bb.fz, label %._crit_edge471

._crit_edge471:                                   ; preds = %bb.fq
  %i.yl = shl nuw nsw i64 %i.bb, 1
  %i.ym = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.yl
  %50 = lshr i64 %i.x, 2
  %51 = select i1 %i.k, i64 %50, i64 %i.x
  %i.yn = trunc i64 %51 to i32
  call void @_ZN2cv10ExrDecoder9UpSampleYEPhiii(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull %i.ym, i32 noundef 3, i32 noundef %i.yn, i32 noundef %i.yk)
  br label %bb.fz

bb.fr:                                            ; preds = %bb.fk
  %i.yo = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.yp = load ptr, ptr %i.yo, align 8, !tbaa !102 ; 3 uses
  %.not313 = icmp eq ptr %i.yp, null
  br i1 %.not313, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 4
  %i.yr = load i32, ptr %i.yq, align 4, !tbaa !112
  %.not314 = icmp eq i32 %i.yr, 1
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yp, i64 8
  %i.yt = load i32, ptr %i.ys, align 4, !tbaa !114 ; 2 uses
  %.not315 = icmp eq i32 %i.yt, 1
  %or.cond570 = select i1 %.not314, i1 %.not315, i1 false
  br i1 %or.cond570, label %bb.ft, label %._crit_edge456

._crit_edge456:                                   ; preds = %bb.fs
  %52 = lshr i64 %i.x, 2
  %53 = select i1 %i.k, i64 %52, i64 %i.x
  %i.yu = trunc i64 %53 to i32
  call void @_ZN2cv10ExrDecoder9UpSampleYEPhiii(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %i.v, i32 noundef 3, i32 noundef %i.yu, i32 noundef %i.yt)
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %._crit_edge456, %bb.fr
  %i.yv = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !101 ; 3 uses
  %.not316 = icmp eq ptr %i.yw, null
  br i1 %.not316, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 4
  %i.yy = load i32, ptr %i.yx, align 4, !tbaa !112
  %.not317 = icmp eq i32 %i.yy, 1
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yw, i64 8
  %i.za = load i32, ptr %i.yz, align 4, !tbaa !114 ; 2 uses
  %.not318 = icmp eq i32 %i.za, 1
  %or.cond571 = select i1 %.not317, i1 %.not318, i1 false
  br i1 %or.cond571, label %bb.fv, label %._crit_edge459

._crit_edge459:                                   ; preds = %bb.fu
  %i.zb = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bb
  %54 = lshr i64 %i.x, 2
  %55 = select i1 %i.k, i64 %54, i64 %i.x
  %i.zc = trunc i64 %55 to i32
  call void @_ZN2cv10ExrDecoder9UpSampleYEPhiii(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull %i.zb, i32 noundef 3, i32 noundef %i.zc, i32 noundef %i.za)
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %._crit_edge459, %bb.ft
  %i.zd = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.ze = load ptr, ptr %i.zd, align 8, !tbaa !100 ; 3 uses
  %.not319 = icmp eq ptr %i.ze, null
  br i1 %.not319, label %bb.fz, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 4
  %i.zg = load i32, ptr %i.zf, align 4, !tbaa !112
  %.not320 = icmp eq i32 %i.zg, 1
  %i.zh = getelementptr inbounds nuw i8, ptr %i.ze, i64 8
  %i.zi = load i32, ptr %i.zh, align 4, !tbaa !114 ; 2 uses
  %.not321 = icmp eq i32 %i.zi, 1
  %or.cond572 = select i1 %.not320, i1 %.not321, i1 false
  br i1 %or.cond572, label %bb.fz, label %._crit_edge462

._crit_edge462:                                   ; preds = %bb.fw
  %i.zj = shl nuw nsw i64 %i.bb, 1
  %i.zk = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.zj
  %56 = lshr i64 %i.x, 2
  %57 = select i1 %i.k, i64 %56, i64 %i.x
  %i.zl = trunc i64 %57 to i32
  call void @_ZN2cv10ExrDecoder9UpSampleYEPhiii(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull %i.zk, i32 noundef 3, i32 noundef %i.zl, i32 noundef %i.zi)
  br label %bb.fz

bb.fx:                                            ; preds = %._crit_edge435
  %i.zm = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.zn = load ptr, ptr %i.zm, align 8, !tbaa !101 ; 3 uses
  %.not310 = icmp eq ptr %i.zn, null
  br i1 %.not310, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 4
  %i.zp = load i32, ptr %i.zo, align 4, !tbaa !112
  %.not311 = icmp eq i32 %i.zp, 1
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zn, i64 8
  %i.zr = load i32, ptr %i.zq, align 4, !tbaa !114 ; 2 uses
  %.not312 = icmp eq i32 %i.zr, 1
  %or.cond573 = select i1 %.not311, i1 %.not312, i1 false
  br i1 %or.cond573, label %bb.fz, label %._crit_edge455

._crit_edge455:                                   ; preds = %bb.fy
  %58 = lshr i64 %i.x, 2
  %59 = select i1 %i.k, i64 %58, i64 %i.x
  %i.zs = trunc i64 %59 to i32
  call void @_ZN2cv10ExrDecoder9UpSampleYEPhiii(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %i.v, i32 noundef 1, i32 noundef %i.zs, i32 noundef %i.zr)
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fw, %bb.fq, %bb.ey, %bb.ez, %bb.fv, %._crit_edge462, %bb.fp, %._crit_edge471, %._crit_edge455, %bb.fx, %bb.ef, %bb.ew
  %i.zt = load ptr, ptr %i.ra, align 8, !tbaa !19 ; 3 uses
  %.not.i394 = icmp eq ptr %i.zt, null
  br i1 %.not.i394, label %_ZN2cv10ExrDecoder5closeEv.exit395, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.zu = load ptr, ptr %i.zt, align 8, !tbaa !8
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 8
  %i.zw = load ptr, ptr %i.zv, align 8
  call void %i.zw(ptr noundef nonnull align 8 dereferenceable(16) %i.zt) #22, !inline_history !88
  store ptr null, ptr %i.ra, align 8, !tbaa !19
  br label %_ZN2cv10ExrDecoder5closeEv.exit395

_ZN2cv10ExrDecoder5closeEv.exit395:               ; preds = %bb.fz, %bb.ga
  br i1 %.0261, label %bb.gb, label %_ZN2cv10ExrDecoder5closeEv.exit

bb.gb:                                            ; preds = %_ZN2cv10ExrDecoder5closeEv.exit395
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  %i.zx = getelementptr inbounds nuw i8, ptr %28, i64 16
  store i32 0, ptr %i.zx, align 8, !tbaa !151
  %i.zy = getelementptr inbounds nuw i8, ptr %28, i64 20
  store i32 0, ptr %i.zy, align 4, !tbaa !153
  store i32 16842752, ptr %28, align 8, !tbaa !154
  %i.zz = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr %1, ptr %i.zz, align 8, !tbaa !156
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  %i.aaa = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.aab = getelementptr inbounds nuw i8, ptr %29, i64 16
  store i64 0, ptr %i.aab, align 8
  store i32 33619968, ptr %29, align 8, !tbaa !154
  store ptr %1, ptr %i.aaa, align 8, !tbaa !156
  invoke void @_ZN2cv8cvtColorERKNS_11_InputArrayERKNS_12_OutputArrayEiiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(24) %29, i32 noundef 4, i32 noundef 0, i32 noundef 0)
          to label %bb.gc unwind label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  br label %_ZN2cv10ExrDecoder5closeEv.exit

bb.gd:                                            ; preds = %bb.gb
  %i.aac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  br label %bb.gg

_ZN2cv10ExrDecoder5closeEv.exit:                  ; preds = %bb.eb, %bb.ea, %_ZN2cv10ExrDecoder5closeEv.exit395, %bb.gc
  %i.aad = load ptr, ptr %7, align 8, !tbaa !126  ; 3 uses
  %.not.i.i396 = icmp eq ptr %i.aad, %i.cf
  %i.aae = icmp eq ptr %i.aad, null
  %or.cond.i397 = or i1 %.not.i.i396, %i.aae
  br i1 %or.cond.i397, label %_ZN2cv10AutoBufferIcLm1032EED2Ev.exit, label %bb.ge

bb.ge:                                            ; preds = %_ZN2cv10ExrDecoder5closeEv.exit
  call void @_ZdaPv(ptr noundef nonnull %i.aad) #23
  br label %_ZN2cv10AutoBufferIcLm1032EED2Ev.exit

_ZN2cv10AutoBufferIcLm1032EED2Ev.exit:            ; preds = %_ZN2cv10ExrDecoder5closeEv.exit, %bb.ge
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.aaf = load ptr, ptr %i.an, align 8, !tbaa !121
  invoke void @_ZNSt8_Rb_treeIN7Imf_3_14NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.aaf)
          to label %_ZN7Imf_3_111FrameBufferD2Ev.exit unwind label %bb.gf

bb.gf:                                            ; preds = %_ZN2cv10AutoBufferIcLm1032EED2Ev.exit
  %i.aag = landingpad { ptr, i32 }
          catch ptr null
  %i.aah = extractvalue { ptr, i32 } %i.aag, 0
  call void @__clang_call_terminate(ptr %i.aah) #24
  unreachable

_ZN7Imf_3_111FrameBufferD2Ev.exit:                ; preds = %_ZN2cv10AutoBufferIcLm1032EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i1 %or.cond14.not

bb.gg:                                            ; preds = %bb.dr, %bb.ds, %bb.fc, %bb.gd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391, %bb.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388, %bb.dc, %bb.cy, %bb.ct, %bb.cp, %bb.ck, %bb.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385, %bb.bm, %bb.bi, %bb.be, %bb.az, %bb.av, %bb.aq, %bb.am, %bb.ag
  %.pn355.pn.pn = phi { ptr, i32 } [ %i.aac, %bb.gd ], [ %i.cm, %bb.ag ], [ %i.lz, %bb.ck ], [ %.pn306, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391 ], [ %i.uc, %bb.fc ], [ %i.qk, %bb.dn ], [ %.pn302, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388 ], [ %i.gi, %bb.be ], [ %i.gv, %bb.bi ], [ %i.ew, %bb.av ], [ %i.fj, %bb.az ], [ %i.dl, %bb.am ], [ %i.dx, %bb.aq ], [ %i.hs, %bb.bm ], [ %i.km, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385 ], [ %i.ok, %bb.cy ], [ %i.ox, %bb.dc ], [ %i.my, %bb.cp ], [ %i.nl, %bb.ct ], [ %i.ln, %bb.cg ], [ %i.qo, %bb.dr ], [ %i.qp, %bb.ds ]
  %i.aai = load ptr, ptr %7, align 8, !tbaa !126  ; 3 uses
  %.not.i.i399 = icmp eq ptr %i.aai, %i.cf
  %i.aaj = icmp eq ptr %i.aai, null
  %or.cond.i400 = or i1 %.not.i.i399, %i.aaj
  br i1 %or.cond.i400, label %_ZN2cv10AutoBufferIcLm1032EED2Ev.exit402, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  call void @_ZdaPv(ptr noundef nonnull %i.aai) #23
  br label %_ZN2cv10AutoBufferIcLm1032EED2Ev.exit402

_ZN2cv10AutoBufferIcLm1032EED2Ev.exit402:         ; preds = %bb.gg, %bb.gh
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.gi

bb.gi:                                            ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit379, %_ZN2cv10AutoBufferIcLm1032EED2Ev.exit402, %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn355.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bo, %bb.q ], [ %.pn294, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit379 ], [ %.pn355.pn.pn, %_ZN2cv10AutoBufferIcLm1032EED2Ev.exit402 ], [ %i.ce, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @_ZN7Imf_3_111FrameBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %.pn355.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !110
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.27) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.d, ptr %i.a, align 8, !tbaa !119
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !86
  %i.g = load i64, ptr %i.a, align 8, !tbaa !119
  store i64 %i.g, ptr %i.b, align 8, !tbaa !87
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !87
  store i8 %i.i, ptr %i.h, align 1, !tbaa !87
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !119  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !13
  %i.l = load ptr, ptr %0, align 8, !tbaa !86
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

; Function Attrs: noreturn
declare void @_ZN2cv6detail24check_failed_MatChannelsEiiRKNS0_12CheckContextE(i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZN2cv6detail21check_failed_MatDepthEiiRKNS0_12CheckContextE(i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #10

declare noundef i32 @_ZN2cv23getDefaultAlgorithmHintEv() local_unnamed_addr #1

declare void @_ZN7Imf_3_111FrameBuffer6insertEPKcRKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef nonnull align 8 dereferenceable(50)) local_unnamed_addr #1

declare void @_ZN7Imf_3_15SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50), i32 noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, double noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #1

declare void @_ZN7Imf_3_111FrameBuffer6insertERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(50)) local_unnamed_addr #1

declare ptr @_ZN7Imf_3_111FrameBuffer5beginEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

declare ptr @_ZN7Imf_3_111FrameBuffer3endEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

declare void @_ZN7Imf_3_19InputFile14setFrameBufferERKNS_11FrameBufferE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

declare void @_ZN7Imf_3_19InputFile10readPixelsEii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv10ExrDecoder8UpSampleEPhiiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(832) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !98   ; 6 uses
  %i.c = add nsw i32 %i.b, -1
  %i.d = sdiv i32 %i.c, %5                        ; 2 uses
  %i.e = icmp sgt i32 %i.d, -1
  br i1 %i.e, label %.lr.ph, label %._crit_edge78

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = icmp sgt i32 %5, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 820 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 3 uses
end_hunk_1
