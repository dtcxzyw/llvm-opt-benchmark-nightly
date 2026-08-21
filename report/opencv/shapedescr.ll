Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/shapedescr?download=true
inline.NumInlined: 1222
inline.NumDeleted: 193
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN2cv10fitEllipseERKNS_11_InputArrayE:bb.a
bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #21
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %.critedge31, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void

bb.i:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.j:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.thread35:                                        ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.k

.thread38:                                        ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.k

bb.k:                                             ; preds = %.thread38, %.thread35, %bb.j
  %.pn24.pn.pn = phi { ptr, i32 } [ %i.r, %.thread35 ], [ %i.q, %bb.j ], [ %i.s, %.thread38 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #17
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.pn24.pn.pn.pn = phi { ptr, i32 } [ %.pn24.pn.pn, %bb.k ], [ %i.p, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %.pn24.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv16fitEllipseDirectERKNS_11_InputArrayE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cv::RotatedRect") align 4 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %8 = alloca %"class.cv::Matx", align 8          ; 32 uses
  %9 = alloca %"class.cv::Matx.6", align 16       ; 10 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %i.a = alloca [3 x double], align 16            ; 6 uses
  %12 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %13 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %14 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %15 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %16 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %17 = alloca %"class.cv::RotatedRect", align 4  ; 5 uses
  %18 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.b = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1), !noalias !60
  %i.c = icmp eq i32 %i.b, 65536
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8, !noalias !60
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(208) %i.e)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.b, %bb.c
  %i.f = invoke noundef i32 @_ZNK2cv3Mat11checkVectorEiib(ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef 2, i32 noundef -1, i1 noundef zeroext true)
          to label %bb.d unwind label %bb.f       ; 10 uses

bb.d:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.g = icmp sgt i32 %i.f, -1
  br i1 %i.g, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.h = load i32, ptr %2, align 8, !tbaa !15     ; 2 uses
  %i.i = and i32 %i.h, 31
  %i.j = icmp eq i32 %i.i, 5                      ; 2 uses
  %i.k = and i32 %i.h, 30
  %or.cond = icmp eq i32 %i.k, 4
  br i1 %or.cond, label %bb.l, label %bb.g

bb.f:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.g:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv16fitEllipseDirectERKNS_11_InputArrayE, ptr noundef nonnull @.str.1, i32 noundef 620) #18
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %3, align 8, !tbaa !23     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.r = load i64, ptr %i.p, align 8, !tbaa !27
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %.pn = phi { ptr, i32 } [ %i.m, %bb.j ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.n, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.as

bb.l:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  %i.t = icmp samesign ult i32 %i.f, 5
  br i1 %i.t, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -201, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv16fitEllipseDirectERKNS_11_InputArrayE, ptr noundef nonnull @.str.1, i32 noundef 625) #18
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.m
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196

bb.q:                                             ; preds = %bb.n
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = load ptr, ptr %5, align 8, !tbaa !23     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194: ; preds = %bb.q
  %i.z = load i64, ptr %i.x, align 8, !tbaa !27
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194, %bb.p
  %.pn189 = phi { ptr, i32 } [ %i.u, %bb.p ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194 ], [ %i.v, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.as

bb.r:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !30 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %7, i32 noundef %i.f, i32 noundef 6, i32 noundef 6)
          to label %.lr.ph unwind label %bb.s

.lr.ph:                                           ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %8, i8 0, i64 288, i1 false), !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %9, i8 0, i64 72, i1 false), !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %10) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %11) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %wide.trip.count439 = zext nneg i32 %i.f to i64 ; 8 uses
  br i1 %i.j, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %xtraiter = and i64 %wide.trip.count439, 3      ; 3 uses
  %unroll_iter = and i64 %wide.trip.count439, 2147483644
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %xtraiter596 = and i64 %wide.trip.count439, 3   ; 3 uses
  %unroll_iter603 = and i64 %wide.trip.count439, 2147483644
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us, %.lr.ph.split.us.preheader
  %indvars.iv436 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next437.3, %.lr.ph.split.us ] ; 5 uses
  %i.ad = phi <2 x double> [ zeroinitializer, %.lr.ph.split.us.preheader ], [ %i.aw, %.lr.ph.split.us ]
  %niter604 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %niter604.next.3, %.lr.ph.split.us ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv436
  %i.af = load <2 x float>, ptr %i.ae, align 4
  %i.ag = fpext <2 x float> %i.af to <2 x double>
  %i.ah = fadd <2 x double> %i.ad, %i.ag
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv436
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load <2 x float>, ptr %i.aj, align 4
  %i.al = fpext <2 x float> %i.ak to <2 x double>
  %i.am = fadd <2 x double> %i.ah, %i.al
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv436
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load <2 x float>, ptr %i.ao, align 4
  %i.aq = fpext <2 x float> %i.ap to <2 x double>
  %i.ar = fadd <2 x double> %i.am, %i.aq
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv436
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load <2 x float>, ptr %i.at, align 4
  %i.av = fpext <2 x float> %i.au to <2 x double>
  %i.aw = fadd <2 x double> %i.ar, %i.av          ; 3 uses
  %indvars.iv.next437.3 = add nuw nsw i64 %indvars.iv436, 4 ; 2 uses
  %niter604.next.3 = add i64 %niter604, 4         ; 2 uses
  %niter604.ncmp.3 = icmp eq i64 %niter604.next.3, %unroll_iter603
  br i1 %niter604.ncmp.3, label %.lr.ph385.split.us.preheader.unr-lcssa, label %.lr.ph.split.us, !llvm.loop !65

.lr.ph.split:                                     ; preds = %.lr.ph.split, %.lr.ph.split.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next.3, %.lr.ph.split ] ; 5 uses
  %i.ax = phi <2 x double> [ zeroinitializer, %.lr.ph.split.preheader ], [ %i.bu, %.lr.ph.split ]
  %niter = phi i64 [ 0, %.lr.ph.split.preheader ], [ %niter.next.3, %.lr.ph.split ]
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv
  %i.az = load <2 x i32>, ptr %i.ay, align 4, !tbaa !31
  %i.ba = sitofp <2 x i32> %i.az to <2 x float>
  %i.bb = fpext <2 x float> %i.ba to <2 x double>
  %i.bc = fadd <2 x double> %i.ax, %i.bb
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load <2 x i32>, ptr %i.be, align 4, !tbaa !31
  %i.bg = sitofp <2 x i32> %i.bf to <2 x float>
  %i.bh = fpext <2 x float> %i.bg to <2 x double>
  %i.bi = fadd <2 x double> %i.bc, %i.bh
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load <2 x i32>, ptr %i.bk, align 4, !tbaa !31
  %i.bm = sitofp <2 x i32> %i.bl to <2 x float>
  %i.bn = fpext <2 x float> %i.bm to <2 x double>
  %i.bo = fadd <2 x double> %i.bi, %i.bn
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load <2 x i32>, ptr %i.bq, align 4, !tbaa !31
  %i.bs = sitofp <2 x i32> %i.br to <2 x float>
  %i.bt = fpext <2 x float> %i.bs to <2 x double>
  %i.bu = fadd <2 x double> %i.bo, %i.bt          ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph385.split.preheader.unr-lcssa, label %.lr.ph.split, !llvm.loop !65

bb.s:                                             ; preds = %bb.r
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.lr.ph385.split.preheader.unr-lcssa:              ; preds = %.lr.ph.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph385.split.preheader, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %.lr.ph385.split.preheader.unr-lcssa
  %lcmp.mod588 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod588)
  br label %.lr.ph.split.epil

.lr.ph.split.epil:                                ; preds = %.lr.ph.split.epil, %.lr.ph.split.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.split.epil ], [ %indvars.iv.next.3, %.lr.ph.split.epil.preheader ] ; 2 uses
  %i.bw = phi <2 x double> [ %i.cb, %.lr.ph.split.epil ], [ %i.bu, %.lr.ph.split.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.epil ], [ 0, %.lr.ph.split.epil.preheader ]
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.epil
  %i.by = load <2 x i32>, ptr %i.bx, align 4, !tbaa !31
  %i.bz = sitofp <2 x i32> %i.by to <2 x float>
  %i.ca = fpext <2 x float> %i.bz to <2 x double>
  %i.cb = fadd <2 x double> %i.bw, %i.ca          ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph385.split.preheader, label %.lr.ph.split.epil, !llvm.loop !66

.lr.ph385.split.preheader:                        ; preds = %.lr.ph.split.epil, %.lr.ph385.split.preheader.unr-lcssa
  %.lcssa586 = phi <2 x double> [ %i.bu, %.lr.ph385.split.preheader.unr-lcssa ], [ %i.cb, %.lr.ph.split.epil ]
  %i.cc = uitofp nneg i32 %i.f to double          ; 3 uses
  %i.cd = insertelement <2 x double> poison, double %i.cc, i64 0
  %i.ce = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cf = fdiv <2 x double> %.lcssa586, %i.ce     ; 5 uses
  %xtraiter589 = and i64 %wide.trip.count439, 1
  %unroll_iter594 = and i64 %wide.trip.count439, 2147483646
  br label %.lr.ph385.split

.lr.ph385.split.us.preheader.unr-lcssa:           ; preds = %.lr.ph.split.us
  %lcmp.mod600.not = icmp eq i64 %xtraiter596, 0
  br i1 %lcmp.mod600.not, label %.lr.ph385.split.us.preheader, label %.lr.ph.split.us.epil.preheader

.lr.ph.split.us.epil.preheader:                   ; preds = %.lr.ph385.split.us.preheader.unr-lcssa
  %lcmp.mod602 = icmp ne i64 %xtraiter596, 0
  call void @llvm.assume(i1 %lcmp.mod602)
  br label %.lr.ph.split.us.epil

.lr.ph.split.us.epil:                             ; preds = %.lr.ph.split.us.epil, %.lr.ph.split.us.epil.preheader
  %indvars.iv436.epil = phi i64 [ %indvars.iv.next437.epil, %.lr.ph.split.us.epil ], [ %indvars.iv.next437.3, %.lr.ph.split.us.epil.preheader ] ; 2 uses
  %i.cg = phi <2 x double> [ %i.ck, %.lr.ph.split.us.epil ], [ %i.aw, %.lr.ph.split.us.epil.preheader ]
  %epil.iter597 = phi i64 [ %epil.iter597.next, %.lr.ph.split.us.epil ], [ 0, %.lr.ph.split.us.epil.preheader ]
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv436.epil
  %i.ci = load <2 x float>, ptr %i.ch, align 4
  %i.cj = fpext <2 x float> %i.ci to <2 x double>
  %i.ck = fadd <2 x double> %i.cg, %i.cj          ; 2 uses
  %indvars.iv.next437.epil = add nuw nsw i64 %indvars.iv436.epil, 1
  %epil.iter597.next = add i64 %epil.iter597, 1   ; 2 uses
  %epil.iter597.cmp.not = icmp eq i64 %epil.iter597.next, %xtraiter596
  br i1 %epil.iter597.cmp.not, label %.lr.ph385.split.us.preheader, label %.lr.ph.split.us.epil, !llvm.loop !68

.lr.ph385.split.us.preheader:                     ; preds = %.lr.ph.split.us.epil, %.lr.ph385.split.us.preheader.unr-lcssa
  %.lcssa583 = phi <2 x double> [ %i.aw, %.lr.ph385.split.us.preheader.unr-lcssa ], [ %i.ck, %.lr.ph.split.us.epil ]
  %i.cl = uitofp nneg i32 %i.f to double          ; 3 uses
  %i.cm = insertelement <2 x double> poison, double %i.cl, i64 0
  %i.cn = shufflevector <2 x double> %i.cm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.co = fdiv <2 x double> %.lcssa583, %i.cn     ; 5 uses
  %xtraiter605 = and i64 %wide.trip.count439, 1
  %unroll_iter610 = and i64 %wide.trip.count439, 2147483646
  br label %.lr.ph385.split.us

.lr.ph385.split.us:                               ; preds = %.lr.ph385.split.us, %.lr.ph385.split.us.preheader
  %indvars.iv446 = phi i64 [ 0, %.lr.ph385.split.us.preheader ], [ %indvars.iv.next447.1, %.lr.ph385.split.us ] ; 3 uses
  %.0138382.us = phi double [ 0.000000e+00, %.lr.ph385.split.us.preheader ], [ %i.dd, %.lr.ph385.split.us ]
  %niter611 = phi i64 [ 0, %.lr.ph385.split.us.preheader ], [ %niter611.next.1, %.lr.ph385.split.us ]
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv446
  %i.cq = load <2 x float>, ptr %i.cp, align 4
  %i.cr = fpext <2 x float> %i.cq to <2 x double>
  %i.cs = fsub <2 x double> %i.cr, %i.co
  %i.ct = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cs) ; 2 uses
  %shift = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %shift, %i.ct
  %i.cu = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.cv = fadd double %.0138382.us, %i.cu
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv446
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load <2 x float>, ptr %i.cx, align 4
  %i.cz = fpext <2 x float> %i.cy to <2 x double>
  %i.da = fsub <2 x double> %i.cz, %i.co
  %i.db = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.da) ; 2 uses
  %shift.1 = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.1 = fadd <2 x double> %shift.1, %i.db
  %i.dc = extractelement <2 x double> %foldExtExtBinop.1, i64 0
  %i.dd = fadd double %i.cv, %i.dc                ; 3 uses
  %indvars.iv.next447.1 = add nuw nsw i64 %indvars.iv446, 2 ; 2 uses
  %niter611.next.1 = add i64 %niter611, 2         ; 2 uses
  %niter611.ncmp.1 = icmp eq i64 %niter611.next.1, %unroll_iter610
  br i1 %niter611.ncmp.1, label %._crit_edge386.loopexit.unr-lcssa, label %.lr.ph385.split.us, !llvm.loop !69

.lr.ph385.split:                                  ; preds = %.lr.ph385.split, %.lr.ph385.split.preheader
  %indvars.iv441 = phi i64 [ 0, %.lr.ph385.split.preheader ], [ %indvars.iv.next442.1, %.lr.ph385.split ] ; 3 uses
  %.0138382 = phi double [ 0.000000e+00, %.lr.ph385.split.preheader ], [ %i.du, %.lr.ph385.split ]
  %niter595 = phi i64 [ 0, %.lr.ph385.split.preheader ], [ %niter595.next.1, %.lr.ph385.split ]
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv441
  %i.df = load <2 x i32>, ptr %i.de, align 4, !tbaa !31
  %i.dg = sitofp <2 x i32> %i.df to <2 x float>
  %i.dh = fpext <2 x float> %i.dg to <2 x double>
  %i.di = fsub <2 x double> %i.dh, %i.cf
  %i.dj = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.di) ; 2 uses
  %shift548 = shufflevector <2 x double> %i.dj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop549 = fadd <2 x double> %shift548, %i.dj
  %i.dk = extractelement <2 x double> %foldExtExtBinop549, i64 0
  %i.dl = fadd double %.0138382, %i.dk
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv441
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load <2 x i32>, ptr %i.dn, align 4, !tbaa !31
  %i.dp = sitofp <2 x i32> %i.do to <2 x float>
  %i.dq = fpext <2 x float> %i.dp to <2 x double>
  %i.dr = fsub <2 x double> %i.dq, %i.cf
  %i.ds = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.dr) ; 2 uses
  %shift548.1 = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop549.1 = fadd <2 x double> %shift548.1, %i.ds
  %i.dt = extractelement <2 x double> %foldExtExtBinop549.1, i64 0
  %i.du = fadd double %i.dl, %i.dt                ; 3 uses
  %indvars.iv.next442.1 = add nuw nsw i64 %indvars.iv441, 2 ; 2 uses
  %niter595.next.1 = add i64 %niter595, 2         ; 2 uses
  %niter595.ncmp.1 = icmp eq i64 %niter595.next.1, %unroll_iter594
  br i1 %niter595.ncmp.1, label %._crit_edge386.loopexit584.unr-lcssa, label %.lr.ph385.split, !llvm.loop !69

._crit_edge386.loopexit.unr-lcssa:                ; preds = %.lr.ph385.split.us
  %lcmp.mod607.not = icmp eq i64 %xtraiter605, 0
  br i1 %lcmp.mod607.not, label %._crit_edge386, label %.lr.ph385.split.us.epil.preheader

.lr.ph385.split.us.epil.preheader:                ; preds = %._crit_edge386.loopexit.unr-lcssa
  %lcmp.mod609 = trunc i32 %i.f to i1
  call void @llvm.assume(i1 %lcmp.mod609)
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next447.1
  %i.dw = load <2 x float>, ptr %i.dv, align 4
  %i.dx = fpext <2 x float> %i.dw to <2 x double>
  %i.dy = fsub <2 x double> %i.dx, %i.co
  %i.dz = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.dy) ; 2 uses
  %shift.epil = shufflevector <2 x double> %i.dz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.epil = fadd <2 x double> %shift.epil, %i.dz
  %i.ea = extractelement <2 x double> %foldExtExtBinop.epil, i64 0
  %i.eb = fadd double %i.dd, %i.ea
  br label %._crit_edge386

._crit_edge386.loopexit584.unr-lcssa:             ; preds = %.lr.ph385.split
  %lcmp.mod591.not = icmp eq i64 %xtraiter589, 0
  br i1 %lcmp.mod591.not, label %._crit_edge386, label %.lr.ph385.split.epil.preheader

.lr.ph385.split.epil.preheader:                   ; preds = %._crit_edge386.loopexit584.unr-lcssa
  %lcmp.mod593 = trunc i32 %i.f to i1
  call void @llvm.assume(i1 %lcmp.mod593)
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next442.1
  %i.ed = load <2 x i32>, ptr %i.ec, align 4, !tbaa !31
  %i.ee = sitofp <2 x i32> %i.ed to <2 x float>
  %i.ef = fpext <2 x float> %i.ee to <2 x double>
  %i.eg = fsub <2 x double> %i.ef, %i.cf
  %i.eh = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.eg) ; 2 uses
  %shift548.epil = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop549.epil = fadd <2 x double> %shift548.epil, %i.eh
  %i.ei = extractelement <2 x double> %foldExtExtBinop549.epil, i64 0
  %i.ej = fadd double %i.du, %i.ei
  br label %._crit_edge386

._crit_edge386:                                   ; preds = %.lr.ph385.split.epil.preheader, %._crit_edge386.loopexit584.unr-lcssa, %.lr.ph385.split.us.epil.preheader, %._crit_edge386.loopexit.unr-lcssa
  %i.ek = phi double [ %i.cl, %.lr.ph385.split.us.epil.preheader ], [ %i.cl, %._crit_edge386.loopexit.unr-lcssa ], [ %i.cc, %._crit_edge386.loopexit584.unr-lcssa ], [ %i.cc, %.lr.ph385.split.epil.preheader ]
  %.0138.lcssa = phi double [ %i.eb, %.lr.ph385.split.us.epil.preheader ], [ %i.dd, %._crit_edge386.loopexit.unr-lcssa ], [ %i.du, %._crit_edge386.loopexit584.unr-lcssa ], [ %i.ej, %.lr.ph385.split.epil.preheader ] ; 3 uses
  %i.el = phi <2 x double> [ %i.co, %.lr.ph385.split.us.epil.preheader ], [ %i.co, %._crit_edge386.loopexit.unr-lcssa ], [ %i.cf, %._crit_edge386.loopexit584.unr-lcssa ], [ %i.cf, %.lr.ph385.split.epil.preheader ] ; 2 uses
  %i.em = fcmp ogt double %.0138.lcssa, f0x3E80000000000000
  %i.en = select i1 %i.em, double %.0138.lcssa, double f0x3E80000000000000
  %i.eo = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ep = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.eq = getelementptr inbounds nuw i8, ptr %7, i64 128 ; 6 uses
  %i.er = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.es = getelementptr inbounds nuw i8, ptr %12, i64 20
  %i.et = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ew = insertelement <2 x double> poison, double %i.en, i64 0
  %i.ex = insertelement <2 x double> %i.ew, double %i.ek, i64 1
  %i.ey = fdiv <2 x double> <double 1.000000e+02, double 1.000000e+00>, %i.ex ; 4 uses
  %i.ez = extractelement <2 x double> %i.ey, i64 1 ; 6 uses
  %i.fa = extractelement <2 x double> %i.ey, i64 0
  %i.fb = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.fe = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ff = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %8, i64 96 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %8, i64 112 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %8, i64 128 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %8, i64 144 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %8, i64 160 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %8, i64 168 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %8, i64 176
  %i.fq = getelementptr inbounds nuw i8, ptr %8, i64 184 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %8, i64 192 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %8, i64 208 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %8, i64 216 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %8, i64 224 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %8, i64 240 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %8, i64 256 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %8, i64 264 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %8, i64 272
  %i.fz = getelementptr inbounds nuw i8, ptr %8, i64 280 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.gb = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.gc = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.gd = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.ge = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.gf = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.gg = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.gh = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.gi = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.gj = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.gk = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.gl = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.gm = getelementptr inbounds nuw i8, ptr %11, i64 128
  %.pn184.in = shl nuw nsw i32 %i.f, 1
  %.pn184 = uitofp nneg i32 %.pn184.in to double
  %.1143.in.in = fdiv double %.0138.lcssa, %.pn184
  %.1143.in = fmul double %.1143.in.in, 1.000000e-02
  %.1143 = fptrunc double %.1143.in to float
  %wide.trip.count456 = zext nneg i32 %i.f to i64
  %i.gn = shufflevector <2 x double> %i.ey, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 16 uses
  %i.go = shufflevector <2 x double> %i.ey, <2 x double> poison, <2 x i32> zeroinitializer
  %.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %.lr.ph390

.lr.ph390:                                        ; preds = %bb.af, %._crit_edge386
  %i.gp = phi i1 [ true, %._crit_edge386 ], [ false, %bb.af ]
  %.0142392 = phi float [ 0.000000e+00, %._crit_edge386 ], [ %.1143, %bb.af ] ; 3 uses
  %i.gq = fneg float %.0142392
  %i.gr = fadd float %.0142392, %.0142392
  %i.gs = insertelement <2 x float> poison, float %i.gr, i64 0
  %i.gt = shufflevector <2 x float> %i.gs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gu = insertelement <2 x float> poison, float %i.gq, i64 0
  %i.gv = shufflevector <2 x float> %i.gu, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph390, %bb.x
  %indvars.iv452 = phi i64 [ 0, %.lr.ph390 ], [ %indvars.iv.next453, %bb.x ] ; 8 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv452 ; 2 uses
  br i1 %i.j, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.gx = load <2 x float>, ptr %i.gw, align 4
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.gy = load <2 x i32>, ptr %i.gw, align 4, !tbaa !31
  %i.gz = sitofp <2 x i32> %i.gy to <2 x float>
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ha = phi <2 x float> [ %i.gx, %bb.u ], [ %i.gz, %bb.v ]
  %i.hb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv6theRNGEv()
          to label %bb.x unwind label %bb.y       ; 2 uses

bb.x:                                             ; preds = %bb.w
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !70 ; 2 uses
  %i.hd = and i64 %i.hc, 4294967295
  %i.he = mul nuw i64 %i.hd, 4164903690
  %i.hf = lshr i64 %i.hc, 32
  %i.hg = add nuw i64 %i.he, %i.hf                ; 3 uses
  %i.hh = and i64 %i.hg, 4294967295
  %i.hi = mul nuw i64 %i.hh, 4164903690
  %i.hj = lshr i64 %i.hg, 32
  %i.hk = add nuw i64 %i.hi, %i.hj                ; 2 uses
  store i64 %i.hk, ptr %i.hb, align 8, !tbaa !70
  %i.hl = trunc i64 %i.hk to i32
  %i.hm = trunc i64 %i.hg to i32
  %i.hn = uitofp i32 %i.hl to float
  %i.ho = uitofp i32 %i.hm to float
  %i.hp = insertelement <2 x float> poison, float %i.ho, i64 0
  %i.hq = insertelement <2 x float> %i.hp, float %i.hn, i64 1
  %i.hr = fmul nnan <2 x float> %i.hq, splat (float f0x2F800000)
  %i.hs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hr, <2 x float> %i.gt, <2 x float> %i.gv)
  %i.ht = fadd <2 x float> %i.ha, %i.hs
  %i.hu = fpext <2 x float> %i.ht to <2 x double>
  %i.hv = fsub <2 x double> %i.hu, %i.el
  %i.hw = load i32, ptr %i.eo, align 4, !tbaa !72
  %i.hx = icmp slt i32 %i.hw, 2                   ; 6 uses
  %i.hy = load ptr, ptr %i.ep, align 8, !tbaa !30 ; 6 uses
  %i.hz = load i64, ptr %i.eq, align 8
  %i.ia = mul i64 %i.hz, %indvars.iv452
  %.sink.idx.i = select i1 %i.hx, i64 0, i64 %i.ia
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.hy, i64 %.sink.idx.i
  %i.ib = fmul <2 x double> %i.go, %i.hv          ; 4 uses
  %i.ic = shufflevector <2 x double> %i.ib, <2 x double> poison, <2 x i32> zeroinitializer
  %i.id = fmul <2 x double> %i.ic, %i.ib          ; 2 uses
  %i.ie = extractelement <2 x double> %i.id, i64 0
  store double %i.ie, ptr %.sink.i, align 8, !tbaa !63
  %i.if = load i64, ptr %i.eq, align 8
  %i.ig = mul i64 %i.if, %indvars.iv452
  %.sink.idx.i197 = select i1 %i.hx, i64 0, i64 %i.ig
  %.sink.i198 = getelementptr inbounds nuw i8, ptr %i.hy, i64 %.sink.idx.i197
  %i.ih = getelementptr inbounds nuw i8, ptr %.sink.i198, i64 8
  %i.ii = extractelement <2 x double> %i.id, i64 1
  store double %i.ii, ptr %i.ih, align 8, !tbaa !63
  %i.ij = load i64, ptr %i.eq, align 8
  %i.ik = mul i64 %i.ij, %indvars.iv452
  %.sink.idx.i199 = select i1 %i.hx, i64 0, i64 %i.ik
  %.sink.i200 = getelementptr inbounds nuw i8, ptr %i.hy, i64 %.sink.idx.i199
  %i.il = getelementptr inbounds nuw i8, ptr %.sink.i200, i64 16
  %i.im = extractelement <2 x double> %i.ib, i64 1 ; 3 uses
  %i.in = fmul double %i.im, %i.im
  store double %i.in, ptr %i.il, align 8, !tbaa !63
  %i.io = load i64, ptr %i.eq, align 8
  %i.ip = mul i64 %i.io, %indvars.iv452
  %.sink.idx.i201 = select i1 %i.hx, i64 0, i64 %i.ip
  %.sink.i202 = getelementptr inbounds nuw i8, ptr %i.hy, i64 %.sink.idx.i201
  %i.iq = getelementptr inbounds nuw i8, ptr %.sink.i202, i64 24
  %i.ir = extractelement <2 x double> %i.ib, i64 0
  store double %i.ir, ptr %i.iq, align 8, !tbaa !63
  %i.is = load i64, ptr %i.eq, align 8
  %i.it = mul i64 %i.is, %indvars.iv452
  %.sink.idx.i203 = select i1 %i.hx, i64 0, i64 %i.it
  %.sink.i204 = getelementptr inbounds nuw i8, ptr %i.hy, i64 %.sink.idx.i203
  %i.iu = getelementptr inbounds nuw i8, ptr %.sink.i204, i64 32
  store double %i.im, ptr %i.iu, align 8, !tbaa !63
  %i.iv = load i64, ptr %i.eq, align 8
  %i.iw = mul i64 %i.iv, %indvars.iv452
  %.sink.idx.i205 = select i1 %i.hx, i64 0, i64 %i.iw
  %.sink.i206 = getelementptr inbounds nuw i8, ptr %i.hy, i64 %.sink.idx.i205
  %i.ix = getelementptr inbounds nuw i8, ptr %.sink.i206, i64 40
  store double 1.000000e+00, ptr %i.ix, align 8, !tbaa !63
  %indvars.iv.next453 = add nuw nsw i64 %indvars.iv452, 1 ; 2 uses
  %exitcond457.not = icmp eq i64 %indvars.iv.next453, %wide.trip.count456
  br i1 %exitcond457.not, label %._crit_edge391, label %bb.t, !llvm.loop !73

bb.y:                                             ; preds = %bb.w
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

._crit_edge391:                                   ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  store i32 0, ptr %i.er, align 8, !tbaa !57
  store i32 0, ptr %i.es, align 4, !tbaa !58
  store i32 16842752, ptr %12, align 8, !tbaa !59
  store ptr %7, ptr %i.et, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  store i32 -1040056314, ptr %13, align 8, !tbaa !59
  store ptr %8, ptr %i.eu, align 8, !tbaa !8
  store i64 25769803782, ptr %i.ev, align 8
  %i.iz = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %._crit_edge391
  invoke void @_ZN2cv13mulTransposedERKNS_11_InputArrayERKNS_12_OutputArrayEbS2_di(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(24) %i.iz, double noundef 1.000000e+00, i32 noundef -1)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  %i.ja = load double, ptr %8, align 8, !tbaa !63
  %i.jb = fmul double %i.ez, %i.ja                ; 2 uses
  store double %i.jb, ptr %8, align 8, !tbaa !63
  %i.jc = load <2 x double>, ptr %i.fb, align 8, !tbaa !63
  %i.jd = fmul <2 x double> %i.gn, %i.jc          ; 2 uses
  store <2 x double> %i.jd, ptr %i.fb, align 8, !tbaa !63
  %i.je = load double, ptr %i.fe, align 8, !tbaa !63
  %i.jf = load <2 x double>, ptr %i.ff, align 8, !tbaa !63
  %i.jg = fmul <2 x double> %i.gn, %i.jf          ; 2 uses
  store <2 x double> %i.jg, ptr %i.ff, align 8, !tbaa !63
  %i.jh = load double, ptr %i.fg, align 8, !tbaa !63
  %i.ji = fmul double %i.ez, %i.jh                ; 2 uses
  store double %i.ji, ptr %i.fg, align 8, !tbaa !63
  %i.jj = load <2 x double>, ptr %i.fi, align 8
  %i.jk = insertelement <2 x double> %i.jj, double %i.je, i64 1
  %i.jl = fmul <2 x double> %i.gn, %i.jk          ; 7 uses
  %i.jm = extractelement <2 x double> %i.jl, i64 0
  store double %i.jm, ptr %i.fi, align 8, !tbaa !63
  %i.jn = load <2 x double>, ptr %i.fk, align 8, !tbaa !63
  %i.jo = fmul <2 x double> %i.gn, %i.jn          ; 5 uses
  store <2 x double> %i.jo, ptr %i.fk, align 8, !tbaa !63
  %i.jp = load <2 x double>, ptr %i.fl, align 8, !tbaa !63
  %i.jq = fmul <2 x double> %i.gn, %i.jp          ; 6 uses
  store <2 x double> %i.jq, ptr %i.fl, align 8, !tbaa !63
  %i.jr = load <2 x double>, ptr %i.fm, align 8, !tbaa !63
  %i.js = fmul <2 x double> %i.gn, %i.jr
  store <2 x double> %i.js, ptr %i.fm, align 8, !tbaa !63
  %i.jt = load double, ptr %i.fn, align 8, !tbaa !63
  %i.ju = fmul double %i.ez, %i.jt
  store double %i.ju, ptr %i.fn, align 8, !tbaa !63
  %i.jv = load double, ptr %i.fq, align 8, !tbaa !63
  %i.jw = load <2 x double>, ptr %i.fr, align 8, !tbaa !63
  %i.jx = fmul <2 x double> %i.gn, %i.jw
  store <2 x double> %i.jx, ptr %i.fr, align 8, !tbaa !63
  %i.jy = load double, ptr %i.fs, align 8, !tbaa !63
  %i.jz = fmul double %i.ez, %i.jy
  store double %i.jz, ptr %i.fs, align 8, !tbaa !63
  %i.ka = load double, ptr %i.ft, align 8, !tbaa !63
  %i.kb = load <2 x double>, ptr %i.fv, align 8, !tbaa !63
  %i.kc = fmul <2 x double> %i.gn, %i.kb
  store <2 x double> %i.kc, ptr %i.fv, align 8, !tbaa !63
  %i.kd = load double, ptr %i.fw, align 8, !tbaa !63
  %i.ke = fmul double %i.ez, %i.kd
  store double %i.ke, ptr %i.fw, align 8, !tbaa !63
  %i.kf = load double, ptr %i.fz, align 8, !tbaa !63
  %i.kg = fmul double %i.ez, %i.kf                ; 4 uses
  store double %i.kg, ptr %i.fz, align 8, !tbaa !63
  %i.kh = load <2 x double>, ptr %i.fo, align 8, !tbaa !63 ; 2 uses
  %i.ki = shufflevector <2 x double> %i.kh, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.kj = insertelement <2 x double> %i.ki, double %i.jv, i64 0 ; 2 uses
  %i.kk = fmul <2 x double> %i.gn, %i.kj          ; 11 uses
  %i.kl = extractelement <2 x double> %i.kk, i64 1 ; 3 uses
  store double %i.kl, ptr %i.fo, align 8, !tbaa !63
  %i.km = shufflevector <2 x double> %i.kh, <2 x double> %i.kj, <2 x i32> <i32 1, i32 2>
  %i.kn = fmul <2 x double> %i.gn, %i.km          ; 7 uses
  %i.ko = extractelement <2 x double> %i.kn, i64 0 ; 2 uses
  store double %i.ko, ptr %i.fp, align 8, !tbaa !63
  %i.kp = extractelement <2 x double> %i.kk, i64 0 ; 2 uses
  store double %i.kp, ptr %i.fq, align 8, !tbaa !63
  %i.kq = load <2 x double>, ptr %i.fu, align 8, !tbaa !63 ; 2 uses
  %i.kr = shufflevector <2 x double> %i.kq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ks = insertelement <2 x double> %i.kr, double %i.ka, i64 1
  %i.kt = fmul <2 x double> %i.gn, %i.ks          ; 4 uses
  %i.ku = extractelement <2 x double> %i.kt, i64 1 ; 3 uses
  store double %i.ku, ptr %i.ft, align 8, !tbaa !63
  %i.kv = fmul <2 x double> %i.gn, %i.kq          ; 8 uses
  %i.kw = extractelement <2 x double> %i.kv, i64 0 ; 3 uses
  store <2 x double> %i.kv, ptr %i.fu, align 8, !tbaa !63
  %i.kx = load <2 x double>, ptr %i.fx, align 8, !tbaa !63
  %i.ky = shufflevector <2 x double> %i.kx, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.kz = fmul <2 x double> %i.gn, %i.ky          ; 11 uses
  %i.la = shufflevector <2 x double> %i.kz, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.lb = extractelement <2 x double> %i.kz, i64 1 ; 4 uses
  store double %i.lb, ptr %i.fx, align 8, !tbaa !63
  %i.lc = extractelement <2 x double> %i.kz, i64 0 ; 4 uses
  store double %i.lc, ptr %i.fy, align 8, !tbaa !63
  %i.ld = shufflevector <2 x double> %i.jl, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.le = fmul <2 x double> %i.ld, %i.kn          ; 2 uses
  %i.lf = fneg double %i.kw                       ; 4 uses
  %i.lg = fmul <2 x double> %i.ld, %i.kk          ; 2 uses
  %i.lh = fneg <2 x double> %i.kt                 ; 7 uses
  %i.li = fmul <2 x double> %i.le, %i.lh
  %i.lj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lg, <2 x double> %i.kv, <2 x double> %i.li)
  %i.lk = fneg <2 x double> %i.kk
  %i.ll = shufflevector <2 x double> %i.lk, <2 x double> %i.kk, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.lm = shufflevector <2 x double> %i.kv, <2 x double> %i.lh, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.ln = fneg <2 x double> %i.kk
  %i.lo = shufflevector <2 x double> %i.kn, <2 x double> %i.ln, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.lp = insertelement <2 x double> poison, double %i.kg, i64 0
  %i.lq = shufflevector <2 x double> %i.lp, <2 x double> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.lr = insertelement <2 x double> %i.kt, double %i.lf, i64 0 ; 3 uses
  %foldExtExtBinop551 = fmul <2 x double> %i.jl, %i.kn ; 2 uses
  %i.ls = shufflevector <2 x double> %i.jl, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lt = fmul <2 x double> %i.ls, %i.kk          ; 3 uses
  %i.lu = shufflevector <2 x double> %foldExtExtBinop551, <2 x double> %i.lt, <2 x i32> <i32 0, i32 2>
  %i.lv = fmul <2 x double> %i.lu, %i.lh
  %i.lw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lt, <2 x double> %i.kv, <2 x double> %i.lv)
  %i.lx = shufflevector <2 x double> %i.jq, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.ly = fmul <2 x double> %i.lx, %i.kn          ; 2 uses
  %i.lz = fmul <2 x double> %i.lx, %i.kk          ; 2 uses
  %i.ma = fmul <2 x double> %i.ly, %i.lh
  %i.mb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lz, <2 x double> %i.kv, <2 x double> %i.ma)
  %i.mc = shufflevector <2 x double> %i.jq, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.md = fmul <2 x double> %i.mc, %i.ll
  %i.me = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.md, <2 x double> %i.kz, <2 x double> %i.mb)
  %i.mf = shufflevector <2 x double> %i.jo, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.mg = fmul <2 x double> %i.mf, %i.lm
  %i.mh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mg, <2 x double> %i.kz, <2 x double> %i.me)
  %i.mi = fmul <2 x double> %i.mc, %i.lo
  %i.mj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mi, <2 x double> %i.lq, <2 x double> %i.mh)
  %i.mk = fmul <2 x double> %i.mf, %i.lr
  %i.ml = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mk, <2 x double> %i.lq, <2 x double> %i.mj) ; 7 uses
  %i.mm = fneg double %i.ko                       ; 2 uses
  %i.mn = load <2 x double>, ptr %i.fc, align 8, !tbaa !63 ; 2 uses
  %i.mo = load <2 x double>, ptr %i.fh, align 8, !tbaa !63 ; 2 uses
  %i.mp = shufflevector <2 x double> %i.mn, <2 x double> %i.mo, <2 x i32> <i32 0, i32 2>
  %i.mq = fmul <2 x double> %i.gn, %i.mp          ; 8 uses
  %i.mr = extractelement <2 x double> %i.mq, i64 0
  store double %i.mr, ptr %i.fc, align 8, !tbaa !63
  %i.ms = shufflevector <2 x double> %i.mn, <2 x double> %i.mo, <2 x i32> <i32 1, i32 3>
  %i.mt = fmul <2 x double> %i.gn, %i.ms          ; 8 uses
  %i.mu = shufflevector <2 x double> %i.mt, <2 x double> %i.jl, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.mu, ptr %i.fd, align 8, !tbaa !63
  %i.mv = shufflevector <2 x double> %i.mq, <2 x double> %i.mt, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.mv, ptr %i.fh, align 8, !tbaa !63
  %i.mw = load <2 x double>, ptr %i.fj, align 8, !tbaa !63
  %i.mx = fmul <2 x double> %i.gn, %i.mw          ; 2 uses
  store <2 x double> %i.mx, ptr %i.fj, align 8, !tbaa !63
  %i.my = shufflevector <2 x double> %i.mt, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.mz = fmul <2 x double> %i.my, %i.ll
  %i.na = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mz, <2 x double> %i.kz, <2 x double> %i.lj)
  %i.nb = shufflevector <2 x double> %i.mq, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.nc = fmul <2 x double> %i.nb, %i.lm
  %i.nd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nc, <2 x double> %i.kz, <2 x double> %i.na)
  %i.ne = fmul <2 x double> %i.my, %i.lo
  %i.nf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ne, <2 x double> %i.lq, <2 x double> %i.nd)
  %i.ng = fmul <2 x double> %i.nb, %i.lr
  %i.nh = shufflevector <2 x double> %i.mt, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ni = fmul <2 x double> %i.nh, %i.ll
  %i.nj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ni, <2 x double> %i.kz, <2 x double> %i.lw)
  %i.nk = shufflevector <2 x double> %i.mq, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.nl = fmul <2 x double> %i.nk, %i.lm
  %i.nm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nl, <2 x double> %i.kz, <2 x double> %i.nj)
  %i.nn = fmul <2 x double> %i.nh, %i.lo
  %i.no = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nn, <2 x double> %i.lq, <2 x double> %i.nm)
  %i.np = fmul <2 x double> %i.nk, %i.lr
  %i.nq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ng, <2 x double> %i.lq, <2 x double> %i.nf) ; 5 uses
  %i.nr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.np, <2 x double> %i.lq, <2 x double> %i.no) ; 5 uses
  %i.ns = shufflevector <2 x double> %i.lg, <2 x double> %i.lt, <2 x i32> <i32 1, i32 3>
  %i.nt = insertelement <2 x double> poison, double %i.lf, i64 0
  %i.nu = shufflevector <2 x double> %i.nt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nv = fmul <2 x double> %i.ns, %i.nu
  %i.nw = shufflevector <2 x double> %i.le, <2 x double> %foldExtExtBinop551, <2 x i32> <i32 0, i32 2>
  %i.nx = shufflevector <2 x double> %i.kt, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ny = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nw, <2 x double> %i.nx, <2 x double> %i.nv)
  %i.nz = insertelement <2 x double> poison, double %i.mm, i64 0
  %i.oa = shufflevector <2 x double> %i.nz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ob = fmul <2 x double> %i.mt, %i.oa
  %i.oc = shufflevector <2 x double> %i.kz, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.od = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ob, <2 x double> %i.oc, <2 x double> %i.ny)
  %i.oe = shufflevector <2 x double> %i.kv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.of = fmul <2 x double> %i.mq, %i.oe
  %i.og = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.of, <2 x double> %i.oc, <2 x double> %i.od)
  %i.oh = shufflevector <2 x double> %i.kk, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.oi = fmul <2 x double> %i.mt, %i.oh
  %i.oj = shufflevector <2 x double> %i.kz, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ok = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oi, <2 x double> %i.oj, <2 x double> %i.og)
  %i.ol = shufflevector <2 x double> %i.lh, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.om = fmul <2 x double> %i.mq, %i.ol
  %i.on = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.om, <2 x double> %i.oj, <2 x double> %i.ok) ; 6 uses
  %i.oo = extractelement <2 x double> %i.lz, i64 1
  %i.op = fmul double %i.oo, %i.lf
  %i.oq = extractelement <2 x double> %i.ly, i64 0
  %i.or = extractelement <2 x double> %i.jq, i64 0 ; 2 uses
  %i.os = fmul double %i.or, %i.mm
  %i.ot = extractelement <2 x double> %i.jo, i64 1 ; 2 uses
  %i.ou = fmul double %i.ot, %i.kw
  %i.ov = call double @llvm.fmuladd.f64(double %i.oq, double %i.ku, double %i.op)
  %i.ow = call double @llvm.fmuladd.f64(double %i.os, double %i.lb, double %i.ov)
  %i.ox = call double @llvm.fmuladd.f64(double %i.ou, double %i.lb, double %i.ow)
  %shift553 = shufflevector <2 x double> %i.kv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop554 = fmul <2 x double> %i.kn, %shift553
  %i.oy = extractelement <2 x double> %foldExtExtBinop554, i64 0
  %i.oz = fmul double %i.or, %i.kl
  %i.pa = fmul double %i.oy, %i.lb
  %i.pb = call double @llvm.fmuladd.f64(double %i.oz, double %i.lc, double %i.ox)
  %i.pc = shufflevector <2 x double> %i.kk, <2 x double> %i.jo, <2 x i32> <i32 0, i32 3>
  %i.pd = insertelement <2 x double> %i.lh, double %i.lf, i64 0
  %i.pe = fmul <2 x double> %i.pc, %i.pd
  %i.pf = insertelement <2 x double> poison, double %i.pa, i64 0
  %i.pg = insertelement <2 x double> %i.pf, double %i.pb, i64 1
  %i.ph = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pe, <2 x double> %i.la, <2 x double> %i.pg) ; 4 uses
  %i.pi = fmul double %i.kp, %i.ku
  %i.pj = extractelement <2 x double> %i.ph, i64 0
  %i.pk = call double @llvm.fmuladd.f64(double %i.pi, double %i.lc, double %i.pj)
  %i.pl = shufflevector <2 x double> %i.kk, <2 x double> %i.kn, <2 x i32> <i32 1, i32 2>
  %i.pm = fmul <2 x double> %i.pl, %i.lh          ; 2 uses
  %i.pn = extractelement <2 x double> %i.pm, i64 0
  %i.po = call double @llvm.fmuladd.f64(double %i.pn, double %i.lc, double %i.pk)
  %i.pp = extractelement <2 x double> %i.pm, i64 1
  %i.pq = call double @llvm.fmuladd.f64(double %i.pp, double %i.kg, double %i.po)
  %i.pr = fmul double %i.kl, %i.kw
  %i.ps = call double @llvm.fmuladd.f64(double %i.pr, double %i.kg, double %i.pq) ; 4 uses
  %i.pt = call double @llvm.fabs.f64(double %i.ps)
  %i.pu = fcmp olt double %i.pt, f0x3CB0000000000000
  br i1 %i.pu, label %bb.af, label %bb.ac

bb.ab:                                            ; preds = %bb.z, %._crit_edge391
  %i.pv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %bb.aq

bb.ac:                                            ; preds = %bb.aa
  %i.pw = shufflevector <2 x double> %i.mq, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.px = shufflevector <2 x double> %i.mt, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.py = shufflevector <2 x double> %i.jl, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.pz = shufflevector <2 x double> %i.nq, <2 x double> %i.nr, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.qa = fmul <2 x double> %i.mc, %i.pz
  %i.qb = shufflevector <2 x double> %i.nq, <2 x double> %i.nr, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.qc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mf, <2 x double> %i.qb, <2 x double> %i.qa)
  %i.qd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lx, <2 x double> %i.on, <2 x double> %i.qc)
  %i.qe = insertelement <2 x double> poison, double %i.ps, i64 0
  %i.qf = shufflevector <2 x double> %i.qe, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.qg = fdiv <2 x double> %i.qd, %i.qf
  %i.qh = fadd <2 x double> %i.mx, %i.qg
  %i.qi = fmul <2 x double> %i.qh, splat (double 5.000000e-01)
  store <2 x double> %i.qi, ptr %9, align 16, !tbaa !63
  %shift556 = shufflevector <2 x double> %i.ml, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop557 = fmul <2 x double> %i.jq, %shift556
  %i.qj = extractelement <2 x double> %foldExtExtBinop557, i64 0
  %i.qk = extractelement <2 x double> %i.ml, i64 0
  %i.ql = call double @llvm.fmuladd.f64(double %i.ot, double %i.qk, double %i.qj)
  %i.qm = extractelement <2 x double> %i.jq, i64 1
  %i.qn = extractelement <2 x double> %i.ph, i64 1 ; 2 uses
  %i.qo = call double @llvm.fmuladd.f64(double %i.qm, double %i.qn, double %i.ql)
  %i.qp = fdiv double %i.qo, %i.ps
  %i.qq = extractelement <2 x double> %i.jo, i64 0
  %i.qr = fadd double %i.qq, %i.qp
  %i.qs = fmul double %i.qr, 5.000000e-01
  store double %i.qs, ptr %i.ga, align 16, !tbaa !63
  %i.qt = fneg <2 x double> %i.jg
  %i.qu = fmul <2 x double> %i.px, %i.pz
  %i.qv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pw, <2 x double> %i.qb, <2 x double> %i.qu)
  %i.qw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ls, <2 x double> %i.on, <2 x double> %i.qv)
  %i.qx = fdiv <2 x double> %i.qw, %i.qf
  %i.qy = fsub <2 x double> %i.qt, %i.qx
  store <2 x double> %i.qy, ptr %i.gb, align 8, !tbaa !63
  %i.qz = fneg double %i.ji
  %i.ra = shufflevector <2 x double> %i.nq, <2 x double> %i.ml, <2 x i32> <i32 1, i32 3>
  %i.rb = fmul <2 x double> %i.mt, %i.ra
  %i.rc = shufflevector <2 x double> %i.nq, <2 x double> %i.ml, <2 x i32> <i32 0, i32 2>
  %i.rd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mq, <2 x double> %i.rc, <2 x double> %i.rb)
  %i.re = shufflevector <2 x double> %i.rd, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.rf = shufflevector <2 x double> %i.ph, <2 x double> %i.on, <2 x i32> <i32 1, i32 2>
  %i.rg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jl, <2 x double> %i.rf, <2 x double> %i.re)
  %i.rh = fdiv <2 x double> %i.rg, %i.qf          ; 2 uses
  %i.ri = insertelement <2 x double> poison, double %i.qz, i64 0
  %i.rj = insertelement <2 x double> %i.ri, double %i.jb, i64 1 ; 2 uses
  %i.rk = fsub <2 x double> %i.rj, %i.rh
  %i.rl = fadd <2 x double> %i.rj, %i.rh
  %i.rm = shufflevector <2 x double> %i.rk, <2 x double> %i.rl, <2 x i32> <i32 0, i32 3>
  %i.rn = fmul <2 x double> %i.rm, <double 1.000000e+00, double 5.000000e-01>
  store <2 x double> %i.rn, ptr %i.gc, align 8, !tbaa !63
  %i.ro = shufflevector <2 x double> %i.nr, <2 x double> %i.ml, <2 x i32> <i32 1, i32 3>
  %i.rp = fmul <2 x double> %i.my, %i.ro
  %i.rq = shufflevector <2 x double> %i.nr, <2 x double> %i.ml, <2 x i32> <i32 0, i32 2>
  %i.rr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nb, <2 x double> %i.rq, <2 x double> %i.rp)
  %i.rs = shufflevector <2 x double> %i.on, <2 x double> %i.ph, <2 x i32> <i32 1, i32 3>
  %i.rt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.py, <2 x double> %i.rs, <2 x double> %i.rr)
  %i.ru = fdiv <2 x double> %i.rt, %i.qf
  %i.rv = fadd <2 x double> %i.jd, %i.ru
  %i.rw = fmul <2 x double> %i.rv, splat (double 5.000000e-01)
  store <2 x double> %i.rw, ptr %i.gd, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  store i32 -1056833530, ptr %14, align 8, !tbaa !59
  store ptr %9, ptr %i.gf, align 8, !tbaa !8
  store i64 12884901891, ptr %i.ge, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  store i64 0, ptr %i.gh, align 8
  store i32 33619968, ptr %15, align 8, !tbaa !59
  store ptr %10, ptr %i.gg, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  store i64 0, ptr %i.gj, align 8
  store i32 33619968, ptr %16, align 8, !tbaa !59
  store ptr %11, ptr %i.gi, align 8, !tbaa !8
  invoke void @_ZN2cv17eigenNonSymmetricERKNS_11_InputArrayERKNS_12_OutputArrayES5_(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.ae unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.rx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %bb.aq

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  %i.ry = load i32, ptr %i.gk, align 4, !tbaa !72
  %i.rz = load ptr, ptr %i.gl, align 8, !tbaa !30 ; 5 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 16
  %i.sb = load double, ptr %i.sa, align 8, !tbaa !63
  %i.sc = icmp slt i32 %i.ry, 2                   ; 3 uses
  %i.sd = load i64, ptr %i.gm, align 8            ; 3 uses
  %.sink.idx.i215 = select i1 %i.sc, i64 0, i64 %i.sd
  %.sink.i216 = getelementptr inbounds nuw i8, ptr %i.rz, i64 %.sink.idx.i215 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %.sink.i216, i64 16
  %i.sf = load double, ptr %i.se, align 8, !tbaa !63
  %i.sg = load <2 x double>, ptr %i.rz, align 8, !tbaa !63 ; 2 uses
  %i.sh = load <2 x double>, ptr %.sink.i216, align 8, !tbaa !63 ; 2 uses
  %i.si = shufflevector <2 x double> %i.sg, <2 x double> %i.sh, <2 x i32> <i32 0, i32 2>
  %i.sj = fmul <2 x double> %i.si, splat (double 4.000000e+00)
  %i.sk = shufflevector <2 x double> %i.sg, <2 x double> %i.sh, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.sl = fneg <2 x double> %i.sk
  %i.sm = fmul <2 x double> %i.sk, %i.sl
  %i.sn = insertelement <2 x double> poison, double %i.sb, i64 0
  %i.so = insertelement <2 x double> %i.sn, double %i.sf, i64 1
  %i.sp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sj, <2 x double> %i.so, <2 x double> %i.sm) ; 3 uses
  store <2 x double> %i.sp, ptr %i.a, align 16, !tbaa !63
  %i.sq = shl i64 %i.sd, 1
  %.sink.idx.i223 = select i1 %i.sc, i64 0, i64 %i.sq
  %.sink.i224 = getelementptr inbounds nuw i8, ptr %i.rz, i64 %.sink.idx.i223 ; 3 uses
  %i.sr = load double, ptr %.sink.i224, align 8, !tbaa !63
  %i.ss = fmul double %i.sr, 4.000000e+00
  %i.st = getelementptr inbounds nuw i8, ptr %.sink.i224, i64 16
  %i.su = load double, ptr %i.st, align 8, !tbaa !63
  %i.sv = getelementptr inbounds nuw i8, ptr %.sink.i224, i64 8
  %i.sw = load double, ptr %i.sv, align 8, !tbaa !63 ; 2 uses
  %i.sx = fneg double %i.sw
  %i.sy = fmul double %i.sw, %i.sx
  %i.sz = call double @llvm.fmuladd.f64(double %i.ss, double %i.su, double %i.sy) ; 3 uses
  store double %i.sz, ptr %.16..sroa_idx, align 16, !tbaa !63
  %i.ta = extractelement <2 x double> %i.sp, i64 0 ; 2 uses
  %i.tb = extractelement <2 x double> %i.sp, i64 1 ; 2 uses
  %i.tc = fcmp olt double %i.ta, %i.tb
  %i.td = fcmp olt double %i.tb, %i.sz
  %i.te = select i1 %i.td, i64 2, i64 1
  %i.tf = fcmp olt double %i.ta, %i.sz
  %i.tg = select i1 %i.tf, i64 2, i64 0
  %.4 = select i1 %i.tc, i64 %i.te, i64 %i.tg     ; 2 uses
  %i.th = mul i64 %i.sd, %.4
  %.sink.idx.i231 = select i1 %i.sc, i64 0, i64 %i.th
  %.sink.i232 = getelementptr inbounds nuw i8, ptr %i.rz, i64 %.sink.idx.i231 ; 3 uses
  %i.ti = load double, ptr %.sink.i232, align 8, !tbaa !63 ; 4 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %.sink.i232, i64 8
  %i.tk = load double, ptr %i.tj, align 8, !tbaa !63 ; 4 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %.sink.i232, i64 16
  %i.tm = load double, ptr %i.tl, align 8, !tbaa !63 ; 4 uses
  %i.tn = fmul double %i.tk, %i.tk
  %i.to = call double @llvm.fmuladd.f64(double %i.ti, double %i.ti, double %i.tn)
  %i.tp = call double @llvm.fmuladd.f64(double %i.tm, double %i.tm, double %i.to) ; 2 uses
  %.0..sroa_stride = shl nuw nsw i64 %.4, 3
  %.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0..sroa_stride
  %i.tq = load double, ptr %.0..sroa_idx, align 8, !tbaa !63
  %i.tr = fmul double %i.tp, f0x3EB0C6F7A0B5ED8D
  %i.ts = fcmp ogt double %i.tq, %i.tr
  br i1 %i.ts, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.aa
  br i1 %i.gp, label %.lr.ph390, label %bb.am, !llvm.loop !74

bb.ag:                                            ; preds = %bb.ae
  %sqrt353 = call double @llvm.sqrt.f64(double %i.tp) ; 2 uses
  %i.tt = fcmp olt double %i.tk, 0.000000e+00
  %i.tu = select i1 %i.tt, i32 -1, i32 1          ; 2 uses
  %i.tv = fcmp olt double %i.ti, 0.000000e+00
  %i.tw = sub nsw i32 0, %i.tu
  %i.tx = select i1 %i.tv, i32 %i.tw, i32 %i.tu   ; 2 uses
  %i.ty = fcmp olt double %i.tm, 0.000000e+00
  %i.tz = sub nsw i32 0, %i.tx
  %i.ua = select i1 %i.ty, i32 %i.tz, i32 %i.tx
  %i.ub = icmp slt i32 %i.ua, 1
  %i.uc = fneg double %sqrt353
  %.0135 = select i1 %i.ub, double %i.uc, double %sqrt353 ; 2 uses
  %i.ud = insertelement <2 x double> poison, double %i.tm, i64 0
  %i.ue = insertelement <2 x double> %i.ud, double %i.ti, i64 1
  %i.uf = insertelement <2 x double> poison, double %.0135, i64 0
  %i.ug = shufflevector <2 x double> %i.uf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.uh = fdiv <2 x double> %i.ue, %i.ug          ; 6 uses
  %i.ui = shufflevector <2 x double> %i.uh, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.uj = shufflevector <2 x double> %i.uh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.uk = extractelement <2 x double> %i.uh, i64 1 ; 7 uses
  %i.ul = extractelement <2 x double> %i.uh, i64 0 ; 6 uses
  %i.um = fmul double %i.uk, %i.ul
  %i.un = fsub double %i.uk, %i.ul                ; 3 uses
  %i.uo = fmul double %i.un, %i.un
  %i.up = fadd double %i.uk, %i.ul                ; 2 uses
  %i.uq = fneg double %i.ul
  %i.ur = fmul <2 x double> %i.uh, splat (double 2.000000e+00)
  %i.us = fdiv double %i.tk, %.0135               ; 9 uses
  %i.ut = extractelement <2 x double> %i.on, i64 1
  %i.uu = fmul double %i.ut, %i.us
  %i.uv = insertelement <2 x double> poison, double %i.us, i64 0 ; 2 uses
  %i.uw = shufflevector <2 x double> %i.uv, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ux = fmul <2 x double> %i.nr, %i.uw
  %i.uy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nq, <2 x double> %i.ui, <2 x double> %i.ux)
  %i.uz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ml, <2 x double> %i.uj, <2 x double> %i.uy)
  %i.va = fdiv <2 x double> %i.uz, %i.qf          ; 5 uses
  %i.vb = extractelement <2 x double> %i.on, i64 0
  %i.vc = call double @llvm.fmuladd.f64(double %i.vb, double %i.uk, double %i.uu)
  %i.vd = call double @llvm.fmuladd.f64(double %i.qn, double %i.ul, double %i.vc)
  %i.ve = fdiv double %i.vd, %i.ps                ; 2 uses
  %i.vf = extractelement <2 x double> %i.va, i64 0 ; 2 uses
  %foldExtExtBinop559 = fmul <2 x double> %i.uh, %i.va
  %i.vg = extractelement <2 x double> %foldExtExtBinop559, i64 0
  %i.vh = fmul double %i.us, %i.vf
  %i.vi = fneg <2 x double> %i.va                 ; 2 uses
  %i.vj = shufflevector <2 x double> %i.vi, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.vk = extractelement <2 x double> %i.vi, i64 1
  %i.vl = fmul double %i.vh, %i.vk
  %i.vm = call double @llvm.fmuladd.f64(double %i.vg, double %i.vf, double %i.vl)
  %i.vn = extractelement <2 x double> %i.va, i64 1 ; 2 uses
  %i.vo = fmul double %i.uk, %i.vn
  %i.vp = call double @llvm.fmuladd.f64(double %i.vo, double %i.vn, double %i.vm)
  %i.vq = fmul double %i.um, %i.ve
  %i.vr = call double @llvm.fmuladd.f64(double %i.us, double %i.us, double %i.uo)
  %sqrt = call double @llvm.sqrt.f64(double %i.vr) ; 2 uses
  %i.vs = fmul double %i.us, %i.us
  %i.vt = fmul double %i.uk, 4.000000e+00
  %i.vu = fmul double %i.vt, %i.uq
  %i.vv = call double @llvm.fmuladd.f64(double %i.vs, double %i.ve, double %i.vp)
  %i.vw = fmul <2 x double> %i.uw, %i.vj
  %i.vx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ur, <2 x double> %i.va, <2 x double> %i.vw)
  %i.vy = insertelement <2 x double> %i.uv, double %i.vq, i64 1 ; 2 uses
  %i.vz = insertelement <2 x double> %i.vy, double -4.000000e+00, i64 1
  %i.wa = insertelement <2 x double> poison, double %i.vu, i64 0
  %i.wb = insertelement <2 x double> %i.wa, double %i.vv, i64 1
  %i.wc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vy, <2 x double> %i.vz, <2 x double> %i.wb) ; 3 uses
  %i.wd = shufflevector <2 x double> %i.wc, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.we = fdiv <2 x double> %i.vx, %i.wd
  %i.wf = insertelement <2 x double> poison, double %sqrt, i64 0
  %i.wg = insertelement <2 x double> poison, double %sqrt, i64 0
  %i.wh = insertelement <2 x double> poison, double %i.up, i64 0
  %i.wi = insertelement <2 x double> poison, double %i.up, i64 0
  %i.wj = fsub <2 x double> %i.wg, %i.wi
  %i.wk = fadd <2 x double> %i.wf, %i.wh
  %i.wl = shufflevector <2 x double> %i.wj, <2 x double> %i.wk, <2 x i32> <i32 0, i32 2>
  %i.wm = fmul <2 x double> %i.wd, %i.wl
  %i.wn = fneg <2 x double> %i.wc
  %i.wo = shufflevector <2 x double> %i.wc, <2 x double> %i.wn, <2 x i32> <i32 1, i32 3>
  %i.wp = fdiv <2 x double> %i.wo, %i.wm          ; 2 uses
  %i.wq = extractelement <2 x double> %i.wp, i64 0
  %i.wr = call double @sqrt(double noundef %i.wq) #17
  %i.ws = extractelement <2 x double> %i.wp, i64 1
  %i.wt = call double @sqrt(double noundef %i.ws) #17
  %i.wu = insertelement <4 x double> poison, double %i.wr, i64 0
  %i.wv = insertelement <4 x double> %i.wu, double %i.wt, i64 1
  %i.ww = shufflevector <2 x double> %i.we, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.wx = insertelement <4 x double> <double poison, double poison, double f0x3FF6A09E667F3BCD, double f0x3FF6A09E667F3BCD>, double %i.fa, i64 0 ; 2 uses
  %i.wy = shufflevector <4 x double> %i.wx, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.wz = fdiv <4 x double> %i.ww, %i.wy
  %i.xa = fmul <4 x double> %i.wv, <double f0x3FF6A09E667F3BCD, double f0x3FF6A09E667F3BCD, double poison, double poison>
  %i.xb = shufflevector <4 x double> %i.wx, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.xc = shufflevector <2 x double> %i.el, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.xd = fadd <4 x double> %i.wz, %i.xc
  %i.xe = fdiv <4 x double> %i.xa, %i.xb
  %i.xf = shufflevector <4 x double> %i.xd, <4 x double> %i.xe, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.xg = fcmp oeq double %i.us, 0.000000e+00
  br i1 %i.xg, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.xh = fcmp olt double %i.uk, %i.ul
  %.193 = select i1 %i.xh, double 0.000000e+00, double f0x4071ABE4B73FEFB5
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.xi = call double @atan2(double noundef %i.us, double noundef %i.un) #17
  %i.xj = call double @llvm.fmuladd.f64(double %i.xi, double 5.000000e-01, double f0x3FF921FB54442D18)
  %i.xk = fmul double %i.xj, 1.800000e+02
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %.0141 = phi double [ %.193, %bb.ah ], [ %i.xk, %bb.ai ] ; 2 uses
  %i.xl = fmul <4 x double> %i.xf, <double 1.000000e+00, double 1.000000e+00, double 2.000000e+00, double 2.000000e+00>
  %i.xm = fptrunc <4 x double> %i.xl to <4 x float> ; 3 uses
  store <4 x float> %i.xm, ptr %0, align 4, !tbaa !28
  %i.xn = extractelement <4 x float> %i.xm, i64 2 ; 2 uses
  %i.xo = extractelement <4 x float> %i.xm, i64 3 ; 2 uses
  %i.xp = fcmp ogt float %i.xn, %i.xo
  br i1 %i.xp, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.xq = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.xr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.xo, ptr %i.xr, align 4, !tbaa !75
  store float %i.xn, ptr %i.xq, align 4, !tbaa !78
  %i.xs = fdiv double %.0141, f0x400921FB54442D18
  %i.xt = fadd double %i.xs, 9.000000e+01
  %i.xu = call double @fmod(double noundef %i.xt, double noundef 1.800000e+02) #17
  %i.xv = fptrunc double %i.xu to float
  %i.xw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.xv, ptr %i.xw, align 4, !tbaa !79
  br label %bb.ap

bb.al:                                            ; preds = %bb.aj
  %i.xx = fdiv double %.0141, f0x400921FB54442D18
  %i.xy = call double @fmod(double noundef %i.xx, double noundef 1.800000e+02) #17
  %i.xz = fptrunc double %i.xy to float
  %i.ya = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.xz, ptr %i.ya, align 4, !tbaa !79
  br label %bb.ap

bb.am:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  %i.yb = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i32 0, ptr %i.yb, align 8, !tbaa !57
  %i.yc = getelementptr inbounds nuw i8, ptr %18, i64 20
  store i32 0, ptr %i.yc, align 4, !tbaa !58
  store i32 16842752, ptr %18, align 8, !tbaa !59
  %i.yd = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %2, ptr %i.yd, align 8, !tbaa !8
  invoke fastcc void @_ZN2cvL18fitEllipseNoDirectERKNS_11_InputArrayE(ptr dead_on_unwind noalias nonnull writable align 4 %17, ptr noundef nonnull align 8 dereferenceable(24) %18)
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(20) %17, i64 20, i1 false), !tbaa.struct !80
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.ye = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ak, %bb.al, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void

bb.aq:                                            ; preds = %bb.y, %bb.ao, %bb.ad, %bb.ab
  %.pn185.pn = phi { ptr, i32 } [ %i.rx, %bb.ad ], [ %i.iy, %bb.y ], [ %i.ye, %bb.ao ], [ %i.pv, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #17
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.s
  %.pn185.pn.pn = phi { ptr, i32 } [ %.pn185.pn, %bb.aq ], [ %i.bv, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.as

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196, %bb.ar, %bb.f
  %.pn189.pn.pn = phi { ptr, i32 } [ %i.l, %bb.f ], [ %.pn189, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196 ], [ %.pn185.pn.pn, %bb.ar ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %.pn189.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN2cvL18fitEllipseNoDirectERKNS_11_InputArrayE(ptr dead_on_unwind noalias nofree writable writeonly align 4 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %3 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = alloca [5 x double], align 16            ; 11 uses
  %i.b = alloca [5 x double], align 16            ; 9 uses
  %i.c = alloca [25 x double], align 16           ; 5 uses
  %i.d = alloca [5 x double], align 16            ; 7 uses
  %8 = alloca %"class.cv::AutoBuffer", align 8    ; 9 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 12 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %14 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %15 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %16 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %17 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %18 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %19 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %20 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %21 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %22 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %23 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %24 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %25 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %26 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %27 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %28 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %29 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %30 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %31 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %32 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %33 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %34 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %35 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %36 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %37 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %38 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %39 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cvL18fitEllipseNoDirectERKNS_11_InputArrayEE25__cv_trace_location_fn251)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.e = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.a
  %i.f = icmp eq i32 %i.e, 65536
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8, !noalias !81
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %i.h)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.f

bb.c:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.f

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.b, %bb.c
  %i.i = invoke noundef i32 @_ZNK2cv3Mat11checkVectorEiib(ptr noundef nonnull align 8 dereferenceable(208) %3, i32 noundef 2, i32 noundef -1, i1 noundef zeroext true)
          to label %bb.d unwind label %bb.g       ; 19 uses

bb.d:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.j = icmp sgt i32 %i.i, -1
  br i1 %i.j, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.k = load i32, ptr %3, align 8, !tbaa !15     ; 2 uses
  %i.l = and i32 %i.k, 31
  %i.m = icmp eq i32 %i.l, 5
  %i.n = and i32 %i.k, 30
  %or.cond = icmp eq i32 %i.n, 4
  br i1 %or.cond, label %bb.m, label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.g:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.h:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cvL18fitEllipseNoDirectERKNS_11_InputArrayE, ptr noundef nonnull @.str.1, i32 noundef 256) #18
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.l:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %4, align 8, !tbaa !23     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.v = load i64, ptr %i.t, align 8, !tbaa !27
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.k
  %.pn = phi { ptr, i32 } [ %i.q, %bb.k ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.r, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.cp

bb.m:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  %i.x = icmp samesign ult i32 %i.i, 5
  br i1 %i.x, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -201, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN2cvL18fitEllipseNoDirectERKNS_11_InputArrayE, ptr noundef nonnull @.str.1, i32 noundef 261) #18
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271

bb.r:                                             ; preds = %bb.o
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %6, align 8, !tbaa !23    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269: ; preds = %bb.r
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !27
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269, %bb.q
  %.pn249 = phi { ptr, i32 } [ %i.y, %bb.q ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269 ], [ %i.z, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.cp

bb.s:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.b, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %i.c, i8 0, i64 200, i1 false)
end_hunk_0
