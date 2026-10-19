Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/matrix_transform?download=true
inline.NumInlined: 867
inline.NumDeleted: 382
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZN2cv11transposeNDERKNS_11_InputArrayERKSt6vectorIiSaIiEERKNS_12_OutputArrayE:bb.a
  %.not.i.i.i153 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i153, label %_ZNSt6vectorIiSaIiEED2Ev.exit154, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit152
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.w) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit154

_ZNSt6vectorIiSaIiEED2Ev.exit154:                 ; preds = %bb.x, %_ZNSt6vectorIiSaIiEED2Ev.exit152, %bb.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn102.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn102, %bb.bq ], [ %i.bd, %bb.x ], [ %.pn102, %_ZNSt6vectorIiSaIiEED2Ev.exit152 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  resume { ptr, i32 } %.pn102.pn.pn
}

; Function Attrs: noreturn
declare void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

declare void @_ZNK2cv12_OutputArray6createEiPKiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare noundef i64 @_ZNK2cv3Mat5step1Ei(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define void @_ZN2cv4flipERKNS_11_InputArrayERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator", align 1   ; 3 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 16 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv4flipERKNS_11_InputArrayERKNS_12_OutputArrayEiE26__cv_trace_location_fn1029)
  %.sink135.sroa.gep = getelementptr inbounds nuw i8, ptr %12, i64 84
  %.sink135.sroa.gep290 = getelementptr inbounds nuw i8, ptr %12, i64 84
  %.sink135.sroa.gep291 = getelementptr inbounds nuw i8, ptr %13, i64 84
  %.sink135.sroa.gep292 = getelementptr inbounds nuw i8, ptr %13, i64 84
  %i.a = invoke noundef i32 @_ZNK2cv11_InputArray4dimsEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i32 %i.a, 3
  br i1 %i.b, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv4flipERKNS_11_InputArrayERKNS_12_OutputArrayEi, ptr noundef nonnull @.str.1, i32 noundef 1031) #20
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load ptr, ptr %10, align 8, !tbaa !39    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.h = load i64, ptr %i.f, align 8, !tbaa !40
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.c, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.d, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.ba

bb.h:                                             ; preds = %bb.b
  %i.j = invoke i64 @_ZNK2cv11_InputArray4sizeEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %bb.i unwind label %bb.j       ; 3 uses

bb.i:                                             ; preds = %bb.h
  %i.k = icmp slt i32 %2, 0
  %i.l = and i64 %i.j, 4294967295
  %i.m = icmp eq i64 %i.l, 1                      ; 2 uses
  %spec.select = select i1 %i.m, i32 0, i32 %2
  %.sroa.7.0.extract.shift.mask = and i64 %i.j, -4294967296
  %i.n = icmp eq i64 %.sroa.7.0.extract.shift.mask, 4294967296 ; 2 uses
  %spec.select61 = select i1 %i.n, i32 1, i32 %spec.select
  %.1 = select i1 %i.k, i32 %spec.select61, i32 %2 ; 4 uses
  %i.o = icmp sgt i32 %.1, 0
  %or.cond = and i1 %i.m, %i.o
  %i.p = icmp eq i32 %.1, 0
  %or.cond3 = and i1 %i.n, %i.p
  %or.cond102 = select i1 %or.cond, i1 true, i1 %or.cond3
  br i1 %or.cond102, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.a, %bb.k, %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.k:                                             ; preds = %bb.i
  invoke void @_ZNK2cv11_InputArray6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.au unwind label %bb.j

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %i.r = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.l
  %i.s = icmp eq i32 %i.r, 65536
  br i1 %i.s, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.noexc
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !43, !noalias !121
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %12, ptr noundef nonnull align 8 dereferenceable(208) %i.u)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.r

bb.n:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %12, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.r

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.m, %bb.n
  %i.v = load i32, ptr %12, align 8, !tbaa !52
  %i.w = and i32 %i.v, 4095                       ; 3 uses
  invoke void @_ZNK2cv12_OutputArray6createENS_5Size_IiEEiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %i.j, i32 noundef %i.w, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.o unwind label %bb.s

bb.o:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %i.x = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc64 unwind label %bb.t

.noexc64:                                         ; preds = %bb.o
  %i.y = icmp eq i32 %i.x, 65536
  br i1 %i.y, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.noexc64
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !43, !noalias !122
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %13, ptr noundef nonnull align 8 dereferenceable(208) %i.aa)
          to label %bb.u unwind label %bb.t

bb.q:                                             ; preds = %.noexc64
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %13, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.u unwind label %bb.t

bb.r:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.s:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.t:                                             ; preds = %bb.q, %bb.p, %bb.o
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.u:                                             ; preds = %bb.q, %bb.p
  %i.ae = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %12, i64 128
  %i.ag = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %13, i64 128 ; 2 uses
  %i.ai = lshr i32 %i.w, 5
  %i.aj = add nuw nsw i32 %i.ai, 1
  %i.ak = shl nuw nsw i32 %i.w, 2
  %i.al = and i32 %i.ak, 124
  %i.am = zext nneg i32 %i.al to i64
  %i.an = lshr i64 1275511473185297, %i.am
  %i.ao = trunc i64 %i.an to i32
  %i.ap = and i32 %i.ao, 15
  %i.aq = mul nuw nsw i32 %i.ap, %i.aj            ; 2 uses
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = icmp slt i32 %.1, 1
  %i.at = load ptr, ptr %i.ae, align 8, !tbaa !55 ; 11 uses
  %i.au = ptrtoaddr ptr %i.at to i64              ; 6 uses
  %i.av = load i64, ptr %i.af, align 8, !tbaa !15 ; 19 uses
  %i.aw = load ptr, ptr %i.ag, align 8, !tbaa !55 ; 11 uses
  %i.ax = ptrtoaddr ptr %i.aw to i64              ; 6 uses
  %i.ay = load i64, ptr %i.ah, align 8, !tbaa !15 ; 20 uses
  %i.az = getelementptr inbounds nuw i8, ptr %12, i64 72
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !53 ; 11 uses
  %i.bb = icmp slt i32 %i.ba, 3                   ; 2 uses
  br i1 %i.as, label %bb.v, label %bb.ag

bb.v:                                             ; preds = %bb.u
  br i1 %i.bb, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.49, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %.noexc71 unwind label %bb.af

.noexc71:                                         ; preds = %bb.w
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.50, i32 noundef 109) #20
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %.noexc71
  unreachable

bb.y:                                             ; preds = %.noexc71
  %i.bc = landingpad { ptr, i32 }
          cleanup
  %i.bd = load ptr, ptr %7, align 8, !tbaa !39    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.y
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !40
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %.body

bb.z:                                             ; preds = %bb.v
  %i.bi = icmp sgt i32 %i.ba, 0
  br i1 %i.bi, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bj = icmp eq i32 %i.ba, 2
  %.sroa.sel101.v.sroa.sel.v.sroa.sel.v = select i1 %i.bj, i64 88, i64 84
  %.sroa.sel101.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %12, i64 %.sroa.sel101.v.sroa.sel.v.sroa.sel.v
  %i.bk = load i32, ptr %.sroa.sel101.v.sroa.sel.v.sroa.sel, align 4, !tbaa !16
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.bl = icmp eq i32 %i.ba, 0
  %i.bm = zext i1 %i.bl to i32
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bn = phi i32 [ %i.bk, %bb.aa ], [ %i.bm, %bb.ab ]
  %i.bo = icmp eq i32 %i.ba, 2
  %i.bp = getelementptr inbounds nuw i8, ptr %12, i64 84
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = icmp sgt i32 %i.ba, -1
  %i.bs = zext i1 %i.br to i32
  %i.bt = select i1 %i.bo, i32 %i.bq, i32 %i.bs   ; 3 uses
  %.sroa.2.0.insert.ext.i = zext i32 %i.bt to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %sext.i = add i64 %.sroa.2.0.insert.shift.i, -4294967296
  %i.bu = ashr exact i64 %sext.i, 32              ; 3 uses
  %i.bv = mul i64 %i.bu, %i.av                    ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bv ; 3 uses
  %i.bx = mul i64 %i.bu, %i.ay                    ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bx ; 3 uses
  %i.bz = mul nsw i32 %i.bn, %i.aq
  %.fr.i = freeze i32 %i.bz                       ; 11 uses
  %i.ca = add nsw i32 %i.bt, 1
  %i.cb = sdiv i32 %i.ca, 2                       ; 3 uses
  %i.cc = icmp sgt i32 %i.bt, 0
  br i1 %i.cc, label %.lr.ph110.i, label %_ZN2cvL8flipVertEPKhmPhmNS_5Size_IiEEm.exit

.lr.ph110.i:                                      ; preds = %bb.ac
  %.not96.i = icmp slt i32 %.fr.i, 16
  %i.cd = add i32 %.fr.i, -4                      ; 3 uses
  %i.ce = sub i64 0, %i.av                        ; 5 uses
  %i.cf = sub i64 0, %i.ay                        ; 8 uses
  br i1 %.not96.i, label %.lr.ph110.split.us.i, label %.lr.ph110.split.preheader.i

.lr.ph110.split.preheader.i:                      ; preds = %.lr.ph110.i
  %i.cg = add nsw i32 %.fr.i, -16
  %i.ch = zext i32 %i.cg to i64                   ; 2 uses
  %i.ci = zext i32 %i.cd to i64                   ; 3 uses
  %smax.i = call i32 @llvm.smax.i32(i32 %i.cb, i32 1) ; 2 uses
  %wide.trip.count.i = zext nneg i32 %.fr.i to i64 ; 4 uses
  %i.cj = and i64 %i.ch, 2147483632               ; 11 uses
  %i.ck = add nuw nsw i64 %i.cj, 16               ; 5 uses
  %i.cl = mul i64 %i.ay, -2
  %i.cm = add i64 %i.bv, %i.au                    ; 2 uses
  %i.cn = sub i64 %i.ax, %i.cm
  %i.co = add i64 %i.ay, %i.av
  %i.cp = sub i64 %i.ax, %i.au
  %i.cq = sub i64 %i.ay, %i.av
  %i.cr = add i64 %i.bx, %i.ax                    ; 2 uses
  %i.cs = sub i64 %i.cr, %i.cm
  %i.ct = sub i64 %i.av, %i.ay
  %i.cu = sub i64 %i.cr, %i.au
  %i.cv = sub i64 %i.cf, %i.av
  %scevgep = getelementptr i8, ptr %i.aw, i64 %i.ck ; 3 uses
  %i.cw = zext nneg i32 %smax.i to i64            ; 2 uses
  %i.cx = add nsw i64 %i.cw, -1                   ; 2 uses
  %i.cy = mul i64 %i.ay, %i.cx
  %i.cz = add nuw nsw i64 %i.cj, 20
  %i.da = add nuw nsw i64 %i.ci, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.cz, i64 %i.da)
  %i.db = add nsw i64 %umax, -17
  %i.dc = sub nsw i64 %i.db, %i.cj
  %i.dd = and i64 %i.dc, -4                       ; 4 uses
  %i.de = getelementptr i8, ptr %i.aw, i64 %i.cy
  %i.df = getelementptr i8, ptr %i.de, i64 %i.cj
  %i.dg = getelementptr i8, ptr %i.df, i64 %i.dd
  %scevgep158 = getelementptr i8, ptr %i.dg, i64 20 ; 3 uses
  %i.dh = getelementptr i8, ptr %i.aw, i64 %i.bx
  %i.di = getelementptr i8, ptr %i.dh, i64 %i.cj
  %scevgep159 = getelementptr i8, ptr %i.di, i64 16 ; 3 uses
  %i.dj = add nsw i64 %i.bu, 1
  %i.dk = sub nsw i64 %i.dj, %i.cw                ; 2 uses
  %i.dl = mul i64 %i.ay, %i.dk
  %i.dm = getelementptr i8, ptr %i.aw, i64 %i.dl
  %i.dn = getelementptr i8, ptr %i.dm, i64 %i.cj
  %i.do = getelementptr i8, ptr %i.dn, i64 %i.dd
  %scevgep160 = getelementptr i8, ptr %i.do, i64 20 ; 3 uses
  %i.dp = getelementptr i8, ptr %i.at, i64 %i.bv
  %i.dq = getelementptr i8, ptr %i.dp, i64 %i.cj
  %scevgep161 = getelementptr i8, ptr %i.dq, i64 16 ; 2 uses
  %i.dr = mul i64 %i.av, %i.dk
  %i.ds = getelementptr i8, ptr %i.at, i64 %i.dr
  %i.dt = getelementptr i8, ptr %i.ds, i64 %i.cj
  %i.du = getelementptr i8, ptr %i.dt, i64 %i.dd
  %scevgep162 = getelementptr i8, ptr %i.du, i64 20 ; 2 uses
  %scevgep163 = getelementptr i8, ptr %i.at, i64 %i.ck ; 2 uses
  %i.dv = mul i64 %i.av, %i.cx
  %i.dw = getelementptr i8, ptr %i.at, i64 %i.dv
  %i.dx = getelementptr i8, ptr %i.dw, i64 %i.cj
  %i.dy = getelementptr i8, ptr %i.dx, i64 %i.dd
  %scevgep164 = getelementptr i8, ptr %i.dy, i64 20 ; 2 uses
  %i.dz = add nuw nsw i64 %i.cj, 20
  %i.ea = add nuw nsw i64 %i.ci, 1
  %i.eb = call i64 @llvm.umax.i64(i64 %i.dz, i64 %i.ea)
  %i.ec = add nsw i64 %i.eb, -17
  %i.ed = sub nsw i64 %i.ec, %i.cj                ; 2 uses
  %i.ee = lshr i64 %i.ed, 2
  %i.ef = add nuw nsw i64 %i.ee, 1                ; 2 uses
  %min.iters.check190 = icmp ult i64 %i.ed, 124
  %bound0 = icmp ult ptr %scevgep, %scevgep160
  %bound1 = icmp ult ptr %scevgep159, %scevgep158
  %found.conflict = and i1 %bound0, %bound1
  %i.eg = or i64 %i.ay, %i.cf
  %i.eh = icmp slt i64 %i.eg, 0
  %i.ei = or i1 %found.conflict, %i.eh
  %bound0166 = icmp ult ptr %scevgep, %scevgep162
  %bound1167 = icmp ult ptr %scevgep161, %scevgep158
  %found.conflict168 = and i1 %bound0166, %bound1167
  %14 = or i64 %i.ay, %i.ce
  %i.ej = icmp slt i64 %14, 0
  %i.ek = or i1 %found.conflict168, %i.ej
  %conflict.rdx171 = or i1 %i.ei, %i.ek
  %bound0172 = icmp ult ptr %scevgep, %scevgep164
  %bound1173 = icmp ult ptr %scevgep163, %scevgep158
  %found.conflict174 = and i1 %bound0172, %bound1173
  %15 = or i64 %i.av, %i.ay
  %i.el = icmp slt i64 %15, 0
  %i.em = or i1 %found.conflict174, %i.el
  %conflict.rdx177 = or i1 %conflict.rdx171, %i.em
  %bound0178 = icmp ult ptr %scevgep159, %scevgep162
  %bound1179 = icmp ult ptr %scevgep161, %scevgep160
  %found.conflict180 = and i1 %bound0178, %bound1179
  %16 = or i64 %i.ce, %i.cf
  %17 = icmp slt i64 %16, 0
  %18 = or i1 %found.conflict180, %17
  %conflict.rdx183.a = or i1 %conflict.rdx177, %18
  %bound0184 = icmp ult ptr %scevgep159, %scevgep164
  %bound1185 = icmp ult ptr %scevgep163, %scevgep160
  %found.conflict186 = and i1 %bound0184, %bound1185
  %19 = or i64 %i.av, %i.cf
  %20 = icmp slt i64 %19, 0
  %21 = or i1 %found.conflict186, %20
  %conflict.rdx189 = or i1 %conflict.rdx183.a, %21
  %n.vec192 = and i64 %i.ef, 9223372036854775800  ; 3 uses
  %i.en = shl i64 %n.vec192, 2
  %i.eo = add i64 %i.ck, %i.en                    ; 2 uses
  %cmp.n201 = icmp eq i64 %i.ef, %n.vec192
  %invariant.op = add i64 %i.bx, -1
  %invariant.op298.a = add i64 %i.cn, -1
  %invariant.op300.a = add i64 %i.cp, -1
  %invariant.op302.a = add i64 %i.cs, -1
  %invariant.op304 = add i64 %i.cu, -1
  %i.ep = add nsw i64 %wide.trip.count.i, -1
  br label %.lr.ph110.split.i

.lr.ph110.split.us.i:                             ; preds = %.lr.ph110.i
  %.not9498.us.i = icmp slt i32 %.fr.i, 4
  br i1 %.not9498.us.i, label %.lr.ph110.split.us.split.us.i, label %.lr.ph110.split.us.split.preheader.i

.lr.ph110.split.us.split.preheader.i:             ; preds = %.lr.ph110.split.us.i
  %smax135.i = call i32 @llvm.smax.i32(i32 %i.cb, i32 1)
  %wide.trip.count133.i = zext nneg i32 %.fr.i to i64 ; 4 uses
  %i.eq = mul i64 %i.ay, -2
  %i.er = add i64 %i.bv, %i.au                    ; 2 uses
  %i.es = sub i64 %i.ax, %i.er
  %i.et = add i64 %i.ay, %i.av
  %i.eu = sub i64 %i.ax, %i.au
  %i.ev = sub i64 %i.ay, %i.av
  %i.ew = add i64 %i.bx, %i.ax                    ; 2 uses
  %i.ex = sub i64 %i.ew, %i.er
  %i.ey = sub i64 %i.av, %i.ay
  %i.ez = sub i64 %i.ew, %i.au
  %i.fa = sub i64 %i.cf, %i.av
  %i.fb = lshr i32 %i.cd, 2                       ; 2 uses
  %narrow = add nuw nsw i32 %i.fb, 1              ; 2 uses
  %i.fc = zext nneg i32 %narrow to i64            ; 2 uses
  %xtraiter283 = and i64 %i.fc, 1
  %i.fd = icmp eq i32 %i.fb, 0
  %unroll_iter = and i64 %i.fc, 2147483646
  %lcmp.mod284.not = icmp eq i64 %xtraiter283, 0
  %lcmp.mod286 = trunc i32 %narrow to i1
  %invariant.op306 = add i64 %i.bx, -1
  %invariant.op308 = add i64 %i.es, -1
  %invariant.op310 = add i64 %i.eu, -1
  %invariant.op312 = add i64 %i.ex, -1
  %invariant.op314 = add i64 %i.ez, -1
  %i.fe = add nsw i64 %wide.trip.count133.i, -1
  br label %.lr.ph110.split.us.split.i

.lr.ph110.split.us.split.us.i:                    ; preds = %.lr.ph110.split.us.i
  %i.ff = icmp sgt i32 %.fr.i, 0
  br i1 %i.ff, label %.lr.ph110.split.us.split.us.split.us.preheader.i, label %_ZN2cvL8flipVertEPKhmPhmNS_5Size_IiEEm.exit

.lr.ph110.split.us.split.us.split.us.preheader.i: ; preds = %.lr.ph110.split.us.split.us.i
  %smax142.i = call i32 @llvm.smax.i32(i32 %i.cb, i32 1)
  %exitcond141.not.i = icmp eq i32 %.fr.i, 1
  %exitcond141.not.i.1 = icmp eq i32 %.fr.i, 2
  br label %.lr.ph110.split.us.split.us.split.us.i

.lr.ph110.split.us.split.us.split.us.i:           ; preds = %._crit_edge.us.us.us.i, %.lr.ph110.split.us.split.us.split.us.preheader.i
  %.0108.us.us.us.i = phi ptr [ %i.fv, %._crit_edge.us.us.us.i ], [ %i.at, %.lr.ph110.split.us.split.us.split.us.preheader.i ] ; 4 uses
  %.089107.us.us.us.i = phi ptr [ %i.fx, %._crit_edge.us.us.us.i ], [ %i.aw, %.lr.ph110.split.us.split.us.split.us.preheader.i ] ; 4 uses
  %.090106.us.us.us.i = phi ptr [ %i.fw, %._crit_edge.us.us.us.i ], [ %i.bw, %.lr.ph110.split.us.split.us.split.us.preheader.i ] ; 4 uses
  %.091105.us.us.us.i = phi ptr [ %i.fy, %._crit_edge.us.us.us.i ], [ %i.by, %.lr.ph110.split.us.split.us.split.us.preheader.i ] ; 4 uses
  %.092104.us.us.us.i = phi i32 [ %i.fu, %._crit_edge.us.us.us.i ], [ 0, %.lr.ph110.split.us.split.us.split.us.preheader.i ]
  %i.fg = load i8, ptr %.0108.us.us.us.i, align 1, !tbaa !40
  %i.fh = load i8, ptr %.090106.us.us.us.i, align 1, !tbaa !40
  store i8 %i.fh, ptr %.089107.us.us.us.i, align 1, !tbaa !40
  store i8 %i.fg, ptr %.091105.us.us.us.i, align 1, !tbaa !40
  br i1 %exitcond141.not.i, label %._crit_edge.us.us.us.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph110.split.us.split.us.split.us.i
  %i.fi = getelementptr inbounds nuw i8, ptr %.0108.us.us.us.i, i64 1
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !40
  %i.fk = getelementptr inbounds nuw i8, ptr %.090106.us.us.us.i, i64 1
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !40
  %i.fm = getelementptr inbounds nuw i8, ptr %.089107.us.us.us.i, i64 1
  store i8 %i.fl, ptr %i.fm, align 1, !tbaa !40
  %i.fn = getelementptr inbounds nuw i8, ptr %.091105.us.us.us.i, i64 1
  store i8 %i.fj, ptr %i.fn, align 1, !tbaa !40
  br i1 %exitcond141.not.i.1, label %._crit_edge.us.us.us.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fo = getelementptr inbounds nuw i8, ptr %.0108.us.us.us.i, i64 2
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !40
  %i.fq = getelementptr inbounds nuw i8, ptr %.090106.us.us.us.i, i64 2
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !40
  %i.fs = getelementptr inbounds nuw i8, ptr %.089107.us.us.us.i, i64 2
  store i8 %i.fr, ptr %i.fs, align 1, !tbaa !40
  %i.ft = getelementptr inbounds nuw i8, ptr %.091105.us.us.us.i, i64 2
  store i8 %i.fp, ptr %i.ft, align 1, !tbaa !40
  br label %._crit_edge.us.us.us.i

._crit_edge.us.us.us.i:                           ; preds = %bb.ae, %bb.ad, %.lr.ph110.split.us.split.us.split.us.i
  %i.fu = add nuw nsw i32 %.092104.us.us.us.i, 1  ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.0108.us.us.us.i, i64 %i.av
  %i.fw = getelementptr inbounds i8, ptr %.090106.us.us.us.i, i64 %i.ce
  %i.fx = getelementptr inbounds nuw i8, ptr %.089107.us.us.us.i, i64 %i.ay
  %i.fy = getelementptr inbounds i8, ptr %.091105.us.us.us.i, i64 %i.cf
  %exitcond143.not.i = icmp eq i32 %i.fu, %smax142.i
  br i1 %exitcond143.not.i, label %_ZN2cvL8flipVertEPKhmPhmNS_5Size_IiEEm.exit, label %.lr.ph110.split.us.split.us.split.us.i, !llvm.loop !105

.lr.ph110.split.us.split.i:                       ; preds = %._crit_edge.us.i, %.lr.ph110.split.us.split.preheader.i
  %indvar203 = phi i64 [ %indvar.next204, %._crit_edge.us.i ], [ 0, %.lr.ph110.split.us.split.preheader.i ] ; 6 uses
  %.0108.us.i = phi ptr [ %i.ix, %._crit_edge.us.i ], [ %i.at, %.lr.ph110.split.us.split.preheader.i ] ; 10 uses
  %.089107.us.i = phi ptr [ %i.iz, %._crit_edge.us.i ], [ %i.aw, %.lr.ph110.split.us.split.preheader.i ] ; 10 uses
  %.090106.us.i = phi ptr [ %i.iy, %._crit_edge.us.i ], [ %i.bw, %.lr.ph110.split.us.split.preheader.i ] ; 10 uses
  %.091105.us.i = phi ptr [ %i.ja, %._crit_edge.us.i ], [ %i.by, %.lr.ph110.split.us.split.preheader.i ] ; 10 uses
  %.092104.us.i = phi i32 [ %i.iw, %._crit_edge.us.i ], [ 0, %.lr.ph110.split.us.split.preheader.i ]
  %i.fz = mul i64 %i.eq, %indvar203
  %i.ga = mul i64 %i.et, %indvar203
  %i.gb = mul i64 %i.ev, %indvar203
  %i.gc = mul i64 %i.ey, %indvar203
  %i.gd = mul i64 %i.fa, %indvar203
  %i.ge = ptrtoint ptr %.0108.us.i to i64
  %i.gf = ptrtoint ptr %.090106.us.i to i64
  %i.gg = ptrtoint ptr %.089107.us.i to i64
  %i.gh = ptrtoint ptr %.091105.us.i to i64
  %i.gi = or i64 %i.gg, %i.ge
  %i.gj = or i64 %i.gi, %i.gf
  %i.gk = or i64 %i.gj, %i.gh
  %i.gl = and i64 %i.gk, 3
  %i.gm = icmp eq i64 %i.gl, 0
  br i1 %i.gm, label %.preheader95.us.i.preheader, label %..loopexit_crit_edge.us.i

.preheader95.us.i.preheader:                      ; preds = %.lr.ph110.split.us.split.i
  br i1 %i.fd, label %.preheader95.us.i.epil.preheader, label %.preheader95.us.i

.preheader95.us.i:                                ; preds = %.preheader95.us.i.preheader, %.preheader95.us.i
  %indvars.iv127.i = phi i64 [ %indvars.iv.next128.i.1, %.preheader95.us.i ], [ 0, %.preheader95.us.i.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.1, %.preheader95.us.i ], [ 0, %.preheader95.us.i.preheader ]
  %i.gn = getelementptr inbounds nuw i8, ptr %.0108.us.i, i64 %indvars.iv127.i
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !16
  %i.gp = getelementptr inbounds nuw i8, ptr %.090106.us.i, i64 %indvars.iv127.i
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !16
  %i.gr = getelementptr inbounds nuw i8, ptr %.089107.us.i, i64 %indvars.iv127.i
  store i32 %i.gq, ptr %i.gr, align 4, !tbaa !16
  %i.gs = getelementptr inbounds nuw i8, ptr %.091105.us.i, i64 %indvars.iv127.i
  store i32 %i.go, ptr %i.gs, align 4, !tbaa !16
  %indvars.iv.next128.i = or disjoint i64 %indvars.iv127.i, 4 ; 4 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.0108.us.i, i64 %indvars.iv.next128.i
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !16
  %i.gv = getelementptr inbounds nuw i8, ptr %.090106.us.i, i64 %indvars.iv.next128.i
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !16
  %i.gx = getelementptr inbounds nuw i8, ptr %.089107.us.i, i64 %indvars.iv.next128.i
  store i32 %i.gw, ptr %i.gx, align 4, !tbaa !16
  %i.gy = getelementptr inbounds nuw i8, ptr %.091105.us.i, i64 %indvars.iv.next128.i
  store i32 %i.gu, ptr %i.gy, align 4, !tbaa !16
  %indvars.iv.next128.i.1 = add nuw nsw i64 %indvars.iv127.i, 8 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..loopexit_crit_edge.us.loopexit.i.unr-lcssa, label %.preheader95.us.i, !llvm.loop !106

..loopexit_crit_edge.us.loopexit.i.unr-lcssa:     ; preds = %.preheader95.us.i
  br i1 %lcmp.mod284.not, label %..loopexit_crit_edge.us.loopexit.i, label %.preheader95.us.i.epil.preheader

.preheader95.us.i.epil.preheader:                 ; preds = %..loopexit_crit_edge.us.loopexit.i.unr-lcssa, %.preheader95.us.i.preheader
  %indvars.iv127.i.epil.init = phi i64 [ 0, %.preheader95.us.i.preheader ], [ %indvars.iv.next128.i.1, %..loopexit_crit_edge.us.loopexit.i.unr-lcssa ] ; 5 uses
  call void @llvm.assume(i1 %lcmp.mod286)
  %i.gz = getelementptr inbounds nuw i8, ptr %.0108.us.i, i64 %indvars.iv127.i.epil.init
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !16
  %i.hb = getelementptr inbounds nuw i8, ptr %.090106.us.i, i64 %indvars.iv127.i.epil.init
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !16
  %i.hd = getelementptr inbounds nuw i8, ptr %.089107.us.i, i64 %indvars.iv127.i.epil.init
  store i32 %i.hc, ptr %i.hd, align 4, !tbaa !16
  %i.he = getelementptr inbounds nuw i8, ptr %.091105.us.i, i64 %indvars.iv127.i.epil.init
  store i32 %i.ha, ptr %i.he, align 4, !tbaa !16
  %indvars.iv.next128.i.epil = add nuw nsw i64 %indvars.iv127.i.epil.init, 4
  br label %..loopexit_crit_edge.us.loopexit.i

..loopexit_crit_edge.us.loopexit.i:               ; preds = %..loopexit_crit_edge.us.loopexit.i.unr-lcssa, %.preheader95.us.i.epil.preheader
  %indvars.iv.next128.i.lcssa = phi i64 [ %indvars.iv.next128.i.1, %..loopexit_crit_edge.us.loopexit.i.unr-lcssa ], [ %indvars.iv.next128.i.epil, %.preheader95.us.i.epil.preheader ]
  %i.hf = trunc nuw nsw i64 %indvars.iv.next128.i.lcssa to i32
  br label %..loopexit_crit_edge.us.i

..loopexit_crit_edge.us.i:                        ; preds = %..loopexit_crit_edge.us.loopexit.i, %.lr.ph110.split.us.split.i
  %.2.us.i = phi i32 [ 0, %.lr.ph110.split.us.split.i ], [ %i.hf, %..loopexit_crit_edge.us.loopexit.i ] ; 2 uses
  %i.hg = icmp slt i32 %.2.us.i, %.fr.i
  br i1 %i.hg, label %iter.check231, label %._crit_edge.us.i

iter.check231:                                    ; preds = %..loopexit_crit_edge.us.i
  %i.hh = zext i32 %.2.us.i to i64                ; 7 uses
  %i.hi = sub nsw i64 %wide.trip.count133.i, %i.hh ; 7 uses
  %min.iters.check215 = icmp ult i64 %i.hi, 8
  br i1 %min.iters.check215, label %.lr.ph103.us.i.preheader, label %vector.memcheck202

vector.memcheck202:                               ; preds = %iter.check231
  %.reass307 = add i64 %i.fz, %invariant.op306
  %diff.check205 = icmp ult i64 %.reass307, 31
  %.reass309 = add i64 %i.ga, %invariant.op308
  %diff.check206.a = icmp ult i64 %.reass309, 31
  %conflict.rdx207.a = or i1 %diff.check205, %diff.check206.a
  %.reass311 = add i64 %i.gb, %invariant.op310
  %diff.check208 = icmp ult i64 %.reass311, 31
  %conflict.rdx209 = or i1 %conflict.rdx207.a, %diff.check208
  %.reass313 = add i64 %i.gc, %invariant.op312
  %diff.check210 = icmp ult i64 %.reass313, 31
  %conflict.rdx211 = or i1 %conflict.rdx209, %diff.check210
  %.reass315 = add i64 %i.gd, %invariant.op314
  %diff.check212 = icmp ult i64 %.reass315, 31
  %conflict.rdx213 = or i1 %conflict.rdx211, %diff.check212
  br i1 %conflict.rdx213, label %.lr.ph103.us.i.preheader, label %vector.main.loop.iter.check216

end_hunk_0
