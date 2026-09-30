Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/gfluidcore?download=true
inline.NumInlined: 7926
inline.NumDeleted: 1201
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 199
loop-unroll.NumUnrolled: 208
begin_hunk_0_@_ZN2cv4gapi5fluid11GFluidCmpGT3runERKNS1_4ViewES5_RNS1_6BufferE:bb.a
  %.val32.val = load ptr, ptr %i.en, align 8, !tbaa !120
  %i.es = getelementptr i8, ptr %i.en, i64 72
  %.val32.val34 = load i32, ptr %i.es, align 8, !tbaa !119
  %i.et = sext i32 %.val31.val33 to i64
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %.val31.val, i64 %i.et
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !121 ; 6 uses
  %i.ew = sext i32 %.val32.val34 to i64
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %.val32.val, i64 %i.ew
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !121 ; 6 uses
  %i.ez = load ptr, ptr %i.b, align 8, !tbaa !123
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !121 ; 7 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !128
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !129
  %i.ff = mul i32 %i.fe, %i.fc                    ; 3 uses
  %i.fg = icmp sgt i32 %i.ff, 0
  br i1 %i.fg, label %.lr.ph13.preheader.i41, label %_ZN2cv4gapi5fluidL7run_cmpIhhhEEvRNS1_6BufferERKNS1_4ViewES7_NS1_7CompareE.exit

.lr.ph13.preheader.i41:                           ; preds = %bb.h
  %wide.trip.count31.i42 = zext nneg i32 %i.ff to i64 ; 7 uses
  %min.iters.check = icmp ult i32 %i.ff, 12
  br i1 %min.iters.check, label %.lr.ph13.i43.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph13.preheader.i41
  %i.fh = getelementptr i8, ptr %i.fa, i64 %wide.trip.count31.i42 ; 2 uses
  %i.fi = shl nuw nsw i64 %wide.trip.count31.i42, 2 ; 2 uses
  %i.fj = getelementptr i8, ptr %i.ev, i64 %i.fi
  %i.fk = getelementptr i8, ptr %i.ey, i64 %i.fi
  %bound0 = icmp ult ptr %i.fa, %i.fj
  %bound1 = icmp ult ptr %i.ev, %i.fh
  %found.conflict = and i1 %bound0, %bound1
  %bound067 = icmp ult ptr %i.fa, %i.fk
  %bound168 = icmp ult ptr %i.ey, %i.fh
  %found.conflict69 = and i1 %bound067, %bound168
  %conflict.rdx = or i1 %found.conflict, %found.conflict69
  br i1 %conflict.rdx, label %.lr.ph13.i43.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count31.i42, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %index ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %wide.load = load <4 x float>, ptr %i.fl, align 4, !tbaa !135, !alias.scope !920
  %wide.load70 = load <4 x float>, ptr %i.fm, align 4, !tbaa !135, !alias.scope !920
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %index ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %wide.load71 = load <4 x float>, ptr %i.fn, align 4, !tbaa !135, !alias.scope !921
  %wide.load72 = load <4 x float>, ptr %i.fo, align 4, !tbaa !135, !alias.scope !921
  %i.fp = fcmp ogt <4 x float> %wide.load, %wide.load71
  %i.fq = fcmp ogt <4 x float> %wide.load70, %wide.load72
  %i.fr = sext <4 x i1> %i.fp to <4 x i8>
  %i.fs = sext <4 x i1> %i.fq to <4 x i8>
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fa, i64 %index ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  store <4 x i8> %i.fr, ptr %i.ft, align 1, !tbaa !52, !alias.scope !922, !noalias !923
  store <4 x i8> %i.fs, ptr %i.fu, align 1, !tbaa !52, !alias.scope !922, !noalias !923
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fv = icmp eq i64 %index.next, %n.vec
  br i1 %i.fv, label %middle.block, label %vector.body, !llvm.loop !914

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count31.i42
  br i1 %cmp.n, label %_ZN2cv4gapi5fluidL7run_cmpIhhhEEvRNS1_6BufferERKNS1_4ViewES7_NS1_7CompareE.exit, label %.lr.ph13.i43.preheader

.lr.ph13.i43.preheader:                           ; preds = %vector.memcheck, %.lr.ph13.preheader.i41, %middle.block
  %indvars.iv28.i44.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph13.preheader.i41 ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count31.i42, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph13.i43.prol.loopexit, label %.lr.ph13.i43.prol

.lr.ph13.i43.prol:                                ; preds = %.lr.ph13.i43.preheader
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv28.i44.ph
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !135
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv28.i44.ph
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !135
  %i.ga = fcmp ogt float %i.fx, %i.fz
  %i.gb = sext i1 %i.ga to i8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fa, i64 %indvars.iv28.i44.ph
  store i8 %i.gb, ptr %i.gc, align 1, !tbaa !52
  %indvars.iv.next29.i45.prol = or disjoint i64 %indvars.iv28.i44.ph, 1
  br label %.lr.ph13.i43.prol.loopexit

.lr.ph13.i43.prol.loopexit:                       ; preds = %.lr.ph13.i43.prol, %.lr.ph13.i43.preheader
  %indvars.iv28.i44.unr = phi i64 [ %indvars.iv28.i44.ph, %.lr.ph13.i43.preheader ], [ %indvars.iv.next29.i45.prol, %.lr.ph13.i43.prol ]
  %i.gd = add nsw i64 %wide.trip.count31.i42, -1
  %i.ge = icmp eq i64 %indvars.iv28.i44.ph, %i.gd
  br i1 %i.ge, label %_ZN2cv4gapi5fluidL7run_cmpIhhhEEvRNS1_6BufferERKNS1_4ViewES7_NS1_7CompareE.exit, label %.lr.ph13.i43

.lr.ph13.i43:                                     ; preds = %.lr.ph13.i43.prol.loopexit, %.lr.ph13.i43
  %indvars.iv28.i44 = phi i64 [ %indvars.iv.next29.i45.1, %.lr.ph13.i43 ], [ %indvars.iv28.i44.unr, %.lr.ph13.i43.prol.loopexit ] ; 5 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv28.i44
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !135
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv28.i44
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !135
  %i.gj = fcmp ogt float %i.gg, %i.gi
  %i.gk = sext i1 %i.gj to i8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fa, i64 %indvars.iv28.i44
  store i8 %i.gk, ptr %i.gl, align 1, !tbaa !52
  %indvars.iv.next29.i45 = add nuw nsw i64 %indvars.iv28.i44, 1 ; 3 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv.next29.i45
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !135
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv.next29.i45
  %i.gp = load float, ptr %i.go, align 4, !tbaa !135
  %i.gq = fcmp ogt float %i.gn, %i.gp
  %i.gr = sext i1 %i.gq to i8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fa, i64 %indvars.iv.next29.i45
  store i8 %i.gr, ptr %i.gs, align 1, !tbaa !52
  %indvars.iv.next29.i45.1 = add nuw nsw i64 %indvars.iv28.i44, 2 ; 2 uses
  %exitcond32.not.i46.1 = icmp eq i64 %indvars.iv.next29.i45.1, %wide.trip.count31.i42
  br i1 %exitcond32.not.i46.1, label %_ZN2cv4gapi5fluidL7run_cmpIhhhEEvRNS1_6BufferERKNS1_4ViewES7_NS1_7CompareE.exit, label %.lr.ph13.i43, !llvm.loop !915

.thread57:                                        ; preds = %bb.b, %bb.c, %bb.e, %bb.a, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv4gapi5fluid9GFluidAdd3runERKNS1_4ViewES5_iRNS1_6BufferE, ptr noundef nonnull @.str.2, i32 noundef 1825) #29
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.thread57
  unreachable

bb.j:                                             ; preds = %.thread57
  %i.gt = landingpad { ptr, i32 }
          cleanup
  %i.gu = load ptr, ptr %3, align 8, !tbaa !51    ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.gw = icmp eq ptr %i.gu, %i.gv
  br i1 %i.gw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.gx = load i64, ptr %i.gv, align 8, !tbaa !52
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gy) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.gt

_ZN2cv4gapi5fluidL7run_cmpIhhhEEvRNS1_6BufferERKNS1_4ViewES7_NS1_7CompareE.exit: ; preds = %.lr.ph13.i43.prol.loopexit, %.lr.ph13.i43, %.lr.ph13.i37.prol.loopexit, %.lr.ph13.i37, %.lr.ph13.i.prol.loopexit, %.lr.ph13.i, %middle.block, %middle.block103, %vec.epilog.middle.block, %middle.block128, %vec.epilog.middle.block142, %bb.h, %bb.f, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core6GCmpGTESt5tupleIJNS_4GMatES6_EES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.21") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.6 = alloca [20 x i8], align 4            ; 5 uses
  %3 = alloca %"struct.cv::GMatDesc", align 8     ; 7 uses
  %4 = alloca %"struct.cv::GMatDesc", align 8     ; 5 uses
  %5 = alloca [1 x %"class.cv::util::variant.73"], align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  invoke void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1)
          to label %bb.b unwind label %bb.t

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx, i64 13, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !144, !noalias !928 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !140, !noalias !928 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ugt i64 %i.g, 9223372036854775804
  br i1 %i.h, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !61

.noexc.i.i.i.i.i:                                 ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #28
          to label %.noexc13 unwind label %bb.u

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !145, !noalias !928 ; 2 uses
  %.pre11.i.i = load ptr, ptr %i.b, align 8, !tbaa !145, !noalias !928
  %.pre12.i.i = ptrtoint ptr %.pre11.i.i to i64
  %.pre13.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %.noexc13, %bb.b
  %.pre-phi14.i.i = phi i64 [ %.pre13.i.i, %.noexc13 ], [ %i.f, %bb.b ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %.pre12.i.i, %.noexc13 ], [ %i.e, %bb.b ] ; 2 uses
  %i.j = phi ptr [ %.pre.i.i, %.noexc13 ], [ %i.d, %bb.b ] ; 3 uses
  %i.k = phi ptr [ %i.i, %.noexc13 ], [ null, %bb.b ] ; 8 uses
  %i.l = sub i64 %.pre-phi.i.i, %.pre-phi14.i.i   ; 9 uses
  %i.m = icmp sgt i64 %i.l, 4                     ; 2 uses
  br i1 %i.m, label %bb.e, label %bb.f, !prof !146

bb.e:                                             ; preds = %bb.d
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.k, ptr align 4 %i.j, i64 %i.l, i1 false), !noalias !928
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.n = icmp eq i64 %i.l, 4
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = load i32, ptr %i.j, align 4, !tbaa !60, !noalias !928
  store i32 %i.o, ptr %i.k, align 4, !tbaa !60, !noalias !928
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !140  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !141
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #27
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !140
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.h, %bb.i
  %i.w = phi ptr [ %i.j, %bb.h ], [ %.pre, %bb.i ] ; 3 uses
  %.not.i.i.i.i14 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i14, label %_ZN2cv8GMatDescD2Ev.exit15, label %bb.j

bb.j:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !141
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #27
  br label %_ZN2cv8GMatDescD2Ev.exit15

_ZN2cv8GMatDescD2Ev.exit15:                       ; preds = %_ZN2cv8GMatDescD2Ev.exit, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store i64 1, ptr %5, align 8, !tbaa !143
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.ac, align 8
  %.sroa.6.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx32, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, i64 13, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i16 = icmp eq i64 %.pre-phi.i.i, %.pre-phi14.i.i
  br i1 %.not.i.i.i.i.i.i.i16, label %.thread, label %bb.k

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit15
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.af = getelementptr inbounds i8, ptr null, i64 %i.l ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !141
  br label %bb.o

bb.k:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit15
  %i.ah = icmp ugt i64 %i.l, 9223372036854775804
  br i1 %i.ah, label %.noexc.i.i.i.i.i18, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17, !prof !61

.noexc.i.i.i.i.i18:                               ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc19 unwind label %bb.x

.noexc19:                                         ; preds = %.noexc.i.i.i.i.i18
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17: ; preds = %bb.k
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #28
          to label %.noexc20 unwind label %bb.x   ; 5 uses

.noexc20:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17
  store ptr %i.ai, ptr %i.ad, align 8, !tbaa !140
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !144
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.l ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !141
  br i1 %i.m, label %bb.l, label %bb.m, !prof !164

bb.l:                                             ; preds = %.noexc20
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr align 4 %i.k, i64 %i.l, i1 false)
  br label %bb.o

bb.m:                                             ; preds = %.noexc20
  %i.am = icmp eq i64 %i.l, 4
  br i1 %i.am, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.an = load i32, ptr %i.k, align 4, !tbaa !60
  store i32 %i.an, ptr %i.ai, align 4, !tbaa !60
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %.thread
  %i.ao = phi ptr [ %i.ak, %bb.l ], [ %i.ak, %bb.m ], [ %i.ak, %bb.n ], [ %i.af, %.thread ]
  %i.ap = phi ptr [ %i.aj, %bb.l ], [ %i.aj, %bb.m ], [ %i.aj, %bb.n ], [ %i.ae, %.thread ]
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.aq = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread48 ; 4 uses

.thread48:                                        ; preds = %bb.o
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.aq, ptr %0, align 8, !tbaa !149
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !150
  %i.av = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %5, ptr noundef nonnull %i.as, ptr noundef nonnull %i.aq)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef 56) #27
  br label %.body

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !151
  %i.ay = load i64, ptr %5, align 8, !tbaa !143
  %i.az = getelementptr inbounds nuw [8 x i8], ptr @constinit.14, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !41
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.ba(ptr noundef nonnull %i.bb)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #26
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.not.i.i.i.i21 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i21, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.s

bb.s:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.g) #27
  br label %_ZN2cv8GMatDescD2Ev.exit22

_ZN2cv8GMatDescD2Ev.exit22:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.t:                                             ; preds = %bb.a
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv8GMatDescD2Ev.exit24

bb.u:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !140 ; 3 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i23, label %_ZN2cv8GMatDescD2Ev.exit24, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !141
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bm) #27
  br label %_ZN2cv8GMatDescD2Ev.exit24

_ZN2cv8GMatDescD2Ev.exit24:                       ; preds = %bb.v, %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.be, %bb.t ], [ %i.bf, %bb.u ], [ %i.bf, %bb.v ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !140 ; 3 uses
  %.not.i.i.i.i25 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i25, label %_ZN2cv8GMatDescD2Ev.exit26, label %bb.w

bb.w:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit24
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !141
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #27
  br label %_ZN2cv8GMatDescD2Ev.exit26

bb.x:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17, %.noexc.i.i.i.i.i18
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body:                                            ; preds = %.thread48, %bb.p
  %i.bv = phi { ptr, i32 } [ %i.ar, %.thread48 ], [ %i.aw, %bb.p ]
  %i.bw = load i64, ptr %5, align 8, !tbaa !143
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr @constinit.14, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !41
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.by(ptr noundef nonnull %i.bz)
          to label %.loopexit unwind label %bb.y

bb.y:                                             ; preds = %.body
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #26
  unreachable

.loopexit:                                        ; preds = %.body, %bb.x
  %.pn10 = phi { ptr, i32 } [ %i.bu, %bb.x ], [ %i.bv, %.body ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.not.i.i.i.i28 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i28, label %_ZN2cv8GMatDescD2Ev.exit26, label %bb.z

bb.z:                                             ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.g) #27
  br label %_ZN2cv8GMatDescD2Ev.exit26

_ZN2cv8GMatDescD2Ev.exit26:                       ; preds = %bb.z, %.loopexit, %bb.w, %_ZN2cv8GMatDescD2Ev.exit24
  %.pn10.pn = phi { ptr, i32 } [ %.pn, %bb.w ], [ %.pn, %_ZN2cv8GMatDescD2Ev.exit24 ], [ %.pn10, %.loopexit ], [ %.pn10, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn10.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv14GKernelPackage13includeHelperINS_4gapi5fluid11GFluidCmpGEEEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.cv::gapi::GBackend", align 8 ; 7 uses
  %2 = alloca %"struct.cv::GKernelImpl", align 8  ; 11 uses
  %3 = alloca %"class.cv::GFluidKernel", align 8  ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"struct.std::pair", align 8        ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @_ZN2cv4gapi5fluid7backendEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::gapi::GBackend") align 8 %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZN2cv16GFluidKernelImplINS_4gapi5fluid11GFluidCmpGEENS1_4core6GCmpGEELb0EE6kernelEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::GFluidKernel") align 8 %3)
          to label %bb.b unwind label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #28
          to label %.noexc unwind label %bb.v     ; 4 uses

.noexc:                                           ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util3any11holder_implINS_12GFluidKernelEEE, i64 16), ptr %i.c, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke void @_ZN2cv12GFluidKernelC2EOS0_(ptr noundef nonnull align 8 dereferenceable(176) %i.d, ptr noundef nonnull align 8 dereferenceable(176) %3)
          to label %_ZNSt8functionIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEEC2IPSK_vEEOT_.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 184) #27
  br label %.body

_ZNSt8functionIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEEC2IPSK_vEEOT_.exit: ; preds = %.noexc
  store ptr %i.c, ptr %2, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr @_ZN2cv6detail10MetaHelperINS_4gapi4core6GCmpGEESt5tupleIJNS_4GMatES6_EES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSA_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISI_EERKS9_INS_4GArgESaISN_EE, ptr %i.f, align 8, !tbaa !41
  store ptr @_ZNSt17_Function_handlerIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEPSK_E9_M_invokeERKSt9_Any_dataSE_SJ_, ptr %i.h, align 8, !tbaa !44
  store ptr @_ZNSt17_Function_handlerIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEPSK_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation, ptr %i.i, align 8, !tbaa !45
  call void @_ZN2cv12GFluidKernelD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 39, ptr %i.b, align 8, !tbaa !49
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc18 unwind label %bb.x   ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN2cv4gapi5fluid11GFluidCmpGE3runERKNS1_4ViewES5_RNS1_6BufferE:bb.a
  %.val32.val = load ptr, ptr %i.eh, align 8, !tbaa !120
  %i.em = getelementptr i8, ptr %i.eh, i64 72
  %.val32.val34 = load i32, ptr %i.em, align 8, !tbaa !119
  %i.en = sext i32 %.val31.val33 to i64
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %.val31.val, i64 %i.en
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !121 ; 6 uses
  %i.eq = sext i32 %.val32.val34 to i64
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %.val32.val, i64 %i.eq
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !121 ; 6 uses
  %i.et = load ptr, ptr %i.b, align 8, !tbaa !123
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !121 ; 7 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !128
  %i.ex = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !129
  %i.ez = mul i32 %i.ey, %i.ew                    ; 3 uses
  %i.fa = icmp sgt i32 %i.ez, 0
  br i1 %i.fa, label %.lr.ph17.preheader.i42, label %_ZN2cv4gapi5fluidL7run_cmpIhhhEEvRNS1_6BufferERKNS1_4ViewES7_NS1_7CompareE.exit

.lr.ph17.preheader.i42:                           ; preds = %bb.h
  %wide.trip.count41.i43 = zext nneg i32 %i.ez to i64 ; 7 uses
  %min.iters.check = icmp ult i32 %i.ez, 12
  br i1 %min.iters.check, label %.lr.ph17.i44.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph17.preheader.i42
  %i.fb = getelementptr i8, ptr %i.eu, i64 %wide.trip.count41.i43 ; 2 uses
  %i.fc = shl nuw nsw i64 %wide.trip.count41.i43, 2 ; 2 uses
  %i.fd = getelementptr i8, ptr %i.ep, i64 %i.fc
  %i.fe = getelementptr i8, ptr %i.es, i64 %i.fc
  %bound0 = icmp ult ptr %i.eu, %i.fd
  %bound1 = icmp ult ptr %i.ep, %i.fb
  %found.conflict = and i1 %bound0, %bound1
  %bound068 = icmp ult ptr %i.eu, %i.fe
  %bound169 = icmp ult ptr %i.es, %i.fb
  %found.conflict70 = and i1 %bound068, %bound169
  %conflict.rdx = or i1 %found.conflict, %found.conflict70
  br i1 %conflict.rdx, label %.lr.ph17.i44.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count41.i43, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %index ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %wide.load = load <4 x float>, ptr %i.ff, align 4, !tbaa !135, !alias.scope !952
  %wide.load71 = load <4 x float>, ptr %i.fg, align 4, !tbaa !135, !alias.scope !952
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %index ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %wide.load72 = load <4 x float>, ptr %i.fh, align 4, !tbaa !135, !alias.scope !953
  %wide.load73 = load <4 x float>, ptr %i.fi, align 4, !tbaa !135, !alias.scope !953
  %i.fj = fcmp oge <4 x float> %wide.load, %wide.load72
  %i.fk = fcmp oge <4 x float> %wide.load71, %wide.load73
  %i.fl = sext <4 x i1> %i.fj to <4 x i8>
  %i.fm = sext <4 x i1> %i.fk to <4 x i8>
  %i.fn = getelementptr inbounds nuw i8, ptr %i.eu, i64 %index ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  store <4 x i8> %i.fl, ptr %i.fn, align 1, !tbaa !52, !alias.scope !954, !noalias !955
  store <4 x i8> %i.fm, ptr %i.fo, align 1, !tbaa !52, !alias.scope !954, !noalias !955
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fp = icmp eq i64 %index.next, %n.vec
  br i1 %i.fp, label %middle.block, label %vector.body, !llvm.loop !946

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count41.i43
  br i1 %cmp.n, label %_ZN2cv4gapi5fluidL7run_cmpIhhhEEvRNS1_6BufferERKNS1_4ViewES7_NS1_7CompareE.exit, label %.lr.ph17.i44.preheader

.lr.ph17.i44.preheader:                           ; preds = %vector.memcheck, %.lr.ph17.preheader.i42, %middle.block
  %indvars.iv38.i45.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph17.preheader.i42 ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count41.i43, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph17.i44.prol.loopexit, label %.lr.ph17.i44.prol

.lr.ph17.i44.prol:                                ; preds = %.lr.ph17.i44.preheader
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %indvars.iv38.i45.ph
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !135
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv38.i45.ph
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !135
  %i.fu = fcmp oge float %i.fr, %i.ft
  %i.fv = sext i1 %i.fu to i8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.eu, i64 %indvars.iv38.i45.ph
  store i8 %i.fv, ptr %i.fw, align 1, !tbaa !52
  %indvars.iv.next39.i46.prol = or disjoint i64 %indvars.iv38.i45.ph, 1
  br label %.lr.ph17.i44.prol.loopexit

.lr.ph17.i44.prol.loopexit:                       ; preds = %.lr.ph17.i44.prol, %.lr.ph17.i44.preheader
  %indvars.iv38.i45.unr = phi i64 [ %indvars.iv38.i45.ph, %.lr.ph17.i44.preheader ], [ %indvars.iv.next39.i46.prol, %.lr.ph17.i44.prol ]
  %i.fx = add nsw i64 %wide.trip.count41.i43, -1
  %i.fy = icmp eq i64 %indvars.iv38.i45.ph, %i.fx
  br i1 %i.fy, label %_ZN2cv4gapi5fluidL7run_cmpIhhhEEvRNS1_6BufferERKNS1_4ViewES7_NS1_7CompareE.exit, label %.lr.ph17.i44

.lr.ph17.i44:                                     ; preds = %.lr.ph17.i44.prol.loopexit, %.lr.ph17.i44
  %indvars.iv38.i45 = phi i64 [ %indvars.iv.next39.i46.1, %.lr.ph17.i44 ], [ %indvars.iv38.i45.unr, %.lr.ph17.i44.prol.loopexit ] ; 5 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %indvars.iv38.i45
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !135
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv38.i45
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !135
  %i.gd = fcmp oge float %i.ga, %i.gc
  %i.ge = sext i1 %i.gd to i8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.eu, i64 %indvars.iv38.i45
  store i8 %i.ge, ptr %i.gf, align 1, !tbaa !52
  %indvars.iv.next39.i46 = add nuw nsw i64 %indvars.iv38.i45, 1 ; 3 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %indvars.iv.next39.i46
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !135
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv.next39.i46
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !135
  %i.gk = fcmp oge float %i.gh, %i.gj
  %i.gl = sext i1 %i.gk to i8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.eu, i64 %indvars.iv.next39.i46
  store i8 %i.gl, ptr %i.gm, align 1, !tbaa !52
  %indvars.iv.next39.i46.1 = add nuw nsw i64 %indvars.iv38.i45, 2 ; 2 uses
  %exitcond42.not.i47.1 = icmp eq i64 %indvars.iv.next39.i46.1, %wide.trip.count41.i43
  br i1 %exitcond42.not.i47.1, label %_ZN2cv4gapi5fluidL7run_cmpIhhhEEvRNS1_6BufferERKNS1_4ViewES7_NS1_7CompareE.exit, label %.lr.ph17.i44, !llvm.loop !947

.thread58:                                        ; preds = %bb.b, %bb.c, %bb.e, %bb.a, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv4gapi5fluid9GFluidAdd3runERKNS1_4ViewES5_iRNS1_6BufferE, ptr noundef nonnull @.str.2, i32 noundef 1810) #29
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.thread58
  unreachable

bb.j:                                             ; preds = %.thread58
  %i.gn = landingpad { ptr, i32 }
          cleanup
  %i.go = load ptr, ptr %3, align 8, !tbaa !51    ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.gq = icmp eq ptr %i.go, %i.gp
  br i1 %i.gq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.gr = load i64, ptr %i.gp, align 8, !tbaa !52
  %i.gs = add i64 %i.gr, 1
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gs) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.gn

_ZN2cv4gapi5fluidL7run_cmpIhhhEEvRNS1_6BufferERKNS1_4ViewES7_NS1_7CompareE.exit: ; preds = %.lr.ph17.i44.prol.loopexit, %.lr.ph17.i44, %.lr.ph17.i37.prol.loopexit, %.lr.ph17.i37, %.lr.ph17.i.prol.loopexit, %.lr.ph17.i, %middle.block, %middle.block104, %vec.epilog.middle.block, %middle.block129, %vec.epilog.middle.block143, %bb.h, %bb.f, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core6GCmpGEESt5tupleIJNS_4GMatES6_EES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.21") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.6 = alloca [20 x i8], align 4            ; 5 uses
  %3 = alloca %"struct.cv::GMatDesc", align 8     ; 7 uses
  %4 = alloca %"struct.cv::GMatDesc", align 8     ; 5 uses
  %5 = alloca [1 x %"class.cv::util::variant.73"], align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  invoke void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1)
          to label %bb.b unwind label %bb.t

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx, i64 13, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !144, !noalias !960 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !140, !noalias !960 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ugt i64 %i.g, 9223372036854775804
  br i1 %i.h, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !61

.noexc.i.i.i.i.i:                                 ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #28
          to label %.noexc13 unwind label %bb.u

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !145, !noalias !960 ; 2 uses
  %.pre11.i.i = load ptr, ptr %i.b, align 8, !tbaa !145, !noalias !960
  %.pre12.i.i = ptrtoint ptr %.pre11.i.i to i64
  %.pre13.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %.noexc13, %bb.b
  %.pre-phi14.i.i = phi i64 [ %.pre13.i.i, %.noexc13 ], [ %i.f, %bb.b ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %.pre12.i.i, %.noexc13 ], [ %i.e, %bb.b ] ; 2 uses
  %i.j = phi ptr [ %.pre.i.i, %.noexc13 ], [ %i.d, %bb.b ] ; 3 uses
  %i.k = phi ptr [ %i.i, %.noexc13 ], [ null, %bb.b ] ; 8 uses
  %i.l = sub i64 %.pre-phi.i.i, %.pre-phi14.i.i   ; 9 uses
  %i.m = icmp sgt i64 %i.l, 4                     ; 2 uses
  br i1 %i.m, label %bb.e, label %bb.f, !prof !146

bb.e:                                             ; preds = %bb.d
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.k, ptr align 4 %i.j, i64 %i.l, i1 false), !noalias !960
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.n = icmp eq i64 %i.l, 4
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = load i32, ptr %i.j, align 4, !tbaa !60, !noalias !960
  store i32 %i.o, ptr %i.k, align 4, !tbaa !60, !noalias !960
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !140  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !141
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #27
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !140
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.h, %bb.i
  %i.w = phi ptr [ %i.j, %bb.h ], [ %.pre, %bb.i ] ; 3 uses
  %.not.i.i.i.i14 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i14, label %_ZN2cv8GMatDescD2Ev.exit15, label %bb.j

bb.j:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !141
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #27
  br label %_ZN2cv8GMatDescD2Ev.exit15

_ZN2cv8GMatDescD2Ev.exit15:                       ; preds = %_ZN2cv8GMatDescD2Ev.exit, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store i64 1, ptr %5, align 8, !tbaa !143
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.ac, align 8
  %.sroa.6.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx32, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, i64 13, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i16 = icmp eq i64 %.pre-phi.i.i, %.pre-phi14.i.i
  br i1 %.not.i.i.i.i.i.i.i16, label %.thread, label %bb.k

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit15
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.af = getelementptr inbounds i8, ptr null, i64 %i.l ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !141
  br label %bb.o

bb.k:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit15
  %i.ah = icmp ugt i64 %i.l, 9223372036854775804
  br i1 %i.ah, label %.noexc.i.i.i.i.i18, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17, !prof !61

.noexc.i.i.i.i.i18:                               ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc19 unwind label %bb.x

.noexc19:                                         ; preds = %.noexc.i.i.i.i.i18
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17: ; preds = %bb.k
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #28
          to label %.noexc20 unwind label %bb.x   ; 5 uses

.noexc20:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17
  store ptr %i.ai, ptr %i.ad, align 8, !tbaa !140
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !144
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.l ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !141
  br i1 %i.m, label %bb.l, label %bb.m, !prof !164

bb.l:                                             ; preds = %.noexc20
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr align 4 %i.k, i64 %i.l, i1 false)
  br label %bb.o

bb.m:                                             ; preds = %.noexc20
  %i.am = icmp eq i64 %i.l, 4
  br i1 %i.am, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.an = load i32, ptr %i.k, align 4, !tbaa !60
  store i32 %i.an, ptr %i.ai, align 4, !tbaa !60
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %.thread
  %i.ao = phi ptr [ %i.ak, %bb.l ], [ %i.ak, %bb.m ], [ %i.ak, %bb.n ], [ %i.af, %.thread ]
  %i.ap = phi ptr [ %i.aj, %bb.l ], [ %i.aj, %bb.m ], [ %i.aj, %bb.n ], [ %i.ae, %.thread ]
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.aq = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread48 ; 4 uses

.thread48:                                        ; preds = %bb.o
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.aq, ptr %0, align 8, !tbaa !149
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !150
  %i.av = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %5, ptr noundef nonnull %i.as, ptr noundef nonnull %i.aq)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef 56) #27
  br label %.body

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !151
  %i.ay = load i64, ptr %5, align 8, !tbaa !143
  %i.az = getelementptr inbounds nuw [8 x i8], ptr @constinit.14, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !41
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.ba(ptr noundef nonnull %i.bb)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #26
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.not.i.i.i.i21 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i21, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.s

bb.s:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.g) #27
  br label %_ZN2cv8GMatDescD2Ev.exit22

_ZN2cv8GMatDescD2Ev.exit22:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.t:                                             ; preds = %bb.a
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv8GMatDescD2Ev.exit24

bb.u:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !140 ; 3 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i23, label %_ZN2cv8GMatDescD2Ev.exit24, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !141
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bm) #27
  br label %_ZN2cv8GMatDescD2Ev.exit24

_ZN2cv8GMatDescD2Ev.exit24:                       ; preds = %bb.v, %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.be, %bb.t ], [ %i.bf, %bb.u ], [ %i.bf, %bb.v ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !140 ; 3 uses
  %.not.i.i.i.i25 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i25, label %_ZN2cv8GMatDescD2Ev.exit26, label %bb.w

bb.w:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit24
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !141
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #27
  br label %_ZN2cv8GMatDescD2Ev.exit26

bb.x:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17, %.noexc.i.i.i.i.i18
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body:                                            ; preds = %.thread48, %bb.p
  %i.bv = phi { ptr, i32 } [ %i.ar, %.thread48 ], [ %i.aw, %bb.p ]
  %i.bw = load i64, ptr %5, align 8, !tbaa !143
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr @constinit.14, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !41
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.by(ptr noundef nonnull %i.bz)
          to label %.loopexit unwind label %bb.y

bb.y:                                             ; preds = %.body
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #26
  unreachable

.loopexit:                                        ; preds = %.body, %bb.x
  %.pn10 = phi { ptr, i32 } [ %i.bu, %bb.x ], [ %i.bv, %.body ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.not.i.i.i.i28 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i28, label %_ZN2cv8GMatDescD2Ev.exit26, label %bb.z

bb.z:                                             ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.g) #27
  br label %_ZN2cv8GMatDescD2Ev.exit26

_ZN2cv8GMatDescD2Ev.exit26:                       ; preds = %bb.z, %.loopexit, %bb.w, %_ZN2cv8GMatDescD2Ev.exit24
  %.pn10.pn = phi { ptr, i32 } [ %.pn, %bb.w ], [ %.pn, %_ZN2cv8GMatDescD2Ev.exit24 ], [ %.pn10, %.loopexit ], [ %.pn10, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn10.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv14GKernelPackage13includeHelperINS_4gapi5fluid11GFluidCmpLEEEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.cv::gapi::GBackend", align 8 ; 7 uses
  %2 = alloca %"struct.cv::GKernelImpl", align 8  ; 11 uses
  %3 = alloca %"class.cv::GFluidKernel", align 8  ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"struct.std::pair", align 8        ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @_ZN2cv4gapi5fluid7backendEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::gapi::GBackend") align 8 %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZN2cv16GFluidKernelImplINS_4gapi5fluid11GFluidCmpLEENS1_4core6GCmpLEELb0EE6kernelEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::GFluidKernel") align 8 %3)
          to label %bb.b unwind label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #28
          to label %.noexc unwind label %bb.v     ; 4 uses

.noexc:                                           ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util3any11holder_implINS_12GFluidKernelEEE, i64 16), ptr %i.c, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke void @_ZN2cv12GFluidKernelC2EOS0_(ptr noundef nonnull align 8 dereferenceable(176) %i.d, ptr noundef nonnull align 8 dereferenceable(176) %3)
          to label %_ZNSt8functionIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEEC2IPSK_vEEOT_.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 184) #27
  br label %.body

_ZNSt8functionIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEEC2IPSK_vEEOT_.exit: ; preds = %.noexc
  store ptr %i.c, ptr %2, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr @_ZN2cv6detail10MetaHelperINS_4gapi4core6GCmpLEESt5tupleIJNS_4GMatES6_EES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSA_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISI_EERKS9_INS_4GArgESaISN_EE, ptr %i.f, align 8, !tbaa !41
  store ptr @_ZNSt17_Function_handlerIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEPSK_E9_M_invokeERKSt9_Any_dataSE_SJ_, ptr %i.h, align 8, !tbaa !44
  store ptr @_ZNSt17_Function_handlerIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEPSK_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation, ptr %i.i, align 8, !tbaa !45
  call void @_ZN2cv12GFluidKernelD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 39, ptr %i.b, align 8, !tbaa !49
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc18 unwind label %bb.x   ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN2cv4gapi5fluid11GFluidCmpLE3runERKNS1_4ViewES5_RNS1_6BufferE:bb.a
  %.val32.val = load ptr, ptr %i.eh, align 8, !tbaa !120
  %i.em = getelementptr i8, ptr %i.eh, i64 72
  %.val32.val34 = load i32, ptr %i.em, align 8, !tbaa !119
  %i.en = sext i32 %.val31.val33 to i64
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %.val31.val, i64 %i.en
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !121 ; 6 uses
  %i.eq = sext i32 %.val32.val34 to i64
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %.val32.val, i64 %i.eq
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !121 ; 6 uses
  %i.et = load ptr, ptr %i.b, align 8, !tbaa !123
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !121 ; 7 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !128
  %i.ex = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !129
  %i.ez = mul i32 %i.ey, %i.ew                    ; 3 uses
  %i.fa = icmp sgt i32 %i.ez, 0
  br i1 %i.fa, label %.lr.ph15.preheader.i42, label %_ZN2cv4gapi5fluidL7run_cmpIhhhEEvRNS1_6BufferERKNS1_4ViewES7_NS1_7CompareE.exit

.lr.ph15.preheader.i42:                           ; preds = %bb.h
  %wide.trip.count36.i43 = zext nneg i32 %i.ez to i64 ; 7 uses
  %min.iters.check = icmp ult i32 %i.ez, 12
  br i1 %min.iters.check, label %.lr.ph15.i44.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph15.preheader.i42
  %i.fb = getelementptr i8, ptr %i.eu, i64 %wide.trip.count36.i43 ; 2 uses
  %i.fc = shl nuw nsw i64 %wide.trip.count36.i43, 2 ; 2 uses
  %i.fd = getelementptr i8, ptr %i.ep, i64 %i.fc
  %i.fe = getelementptr i8, ptr %i.es, i64 %i.fc
  %bound0 = icmp ult ptr %i.eu, %i.fd
  %bound1 = icmp ult ptr %i.ep, %i.fb
  %found.conflict = and i1 %bound0, %bound1
  %bound068 = icmp ult ptr %i.eu, %i.fe
  %bound169 = icmp ult ptr %i.es, %i.fb
  %found.conflict70 = and i1 %bound068, %bound169
  %conflict.rdx = or i1 %found.conflict, %found.conflict70
  br i1 %conflict.rdx, label %.lr.ph15.i44.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count36.i43, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %index ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %wide.load = load <4 x float>, ptr %i.ff, align 4, !tbaa !135, !alias.scope !984
  %wide.load71 = load <4 x float>, ptr %i.fg, align 4, !tbaa !135, !alias.scope !984
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %index ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %wide.load72 = load <4 x float>, ptr %i.fh, align 4, !tbaa !135, !alias.scope !985
  %wide.load73 = load <4 x float>, ptr %i.fi, align 4, !tbaa !135, !alias.scope !985
  %i.fj = fcmp ole <4 x float> %wide.load, %wide.load72
  %i.fk = fcmp ole <4 x float> %wide.load71, %wide.load73
  %i.fl = sext <4 x i1> %i.fj to <4 x i8>
  %i.fm = sext <4 x i1> %i.fk to <4 x i8>
  %i.fn = getelementptr inbounds nuw i8, ptr %i.eu, i64 %index ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  store <4 x i8> %i.fl, ptr %i.fn, align 1, !tbaa !52, !alias.scope !986, !noalias !987
  store <4 x i8> %i.fm, ptr %i.fo, align 1, !tbaa !52, !alias.scope !986, !noalias !987
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fp = icmp eq i64 %index.next, %n.vec
  br i1 %i.fp, label %middle.block, label %vector.body, !llvm.loop !978

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count36.i43
  br i1 %cmp.n, label %_ZN2cv4gapi5fluidL7run_cmpIhhhEEvRNS1_6BufferERKNS1_4ViewES7_NS1_7CompareE.exit, label %.lr.ph15.i44.preheader

.lr.ph15.i44.preheader:                           ; preds = %vector.memcheck, %.lr.ph15.preheader.i42, %middle.block
  %indvars.iv33.i45.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph15.preheader.i42 ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count36.i43, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph15.i44.prol.loopexit, label %.lr.ph15.i44.prol

.lr.ph15.i44.prol:                                ; preds = %.lr.ph15.i44.preheader
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %indvars.iv33.i45.ph
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !135
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv33.i45.ph
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !135
  %i.fu = fcmp ole float %i.fr, %i.ft
  %i.fv = sext i1 %i.fu to i8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.eu, i64 %indvars.iv33.i45.ph
  store i8 %i.fv, ptr %i.fw, align 1, !tbaa !52
  %indvars.iv.next34.i46.prol = or disjoint i64 %indvars.iv33.i45.ph, 1
  br label %.lr.ph15.i44.prol.loopexit

.lr.ph15.i44.prol.loopexit:                       ; preds = %.lr.ph15.i44.prol, %.lr.ph15.i44.preheader
  %indvars.iv33.i45.unr = phi i64 [ %indvars.iv33.i45.ph, %.lr.ph15.i44.preheader ], [ %indvars.iv.next34.i46.prol, %.lr.ph15.i44.prol ]
  %i.fx = add nsw i64 %wide.trip.count36.i43, -1
  %i.fy = icmp eq i64 %indvars.iv33.i45.ph, %i.fx
  br i1 %i.fy, label %_ZN2cv4gapi5fluidL7run_cmpIhhhEEvRNS1_6BufferERKNS1_4ViewES7_NS1_7CompareE.exit, label %.lr.ph15.i44

.lr.ph15.i44:                                     ; preds = %.lr.ph15.i44.prol.loopexit, %.lr.ph15.i44
  %indvars.iv33.i45 = phi i64 [ %indvars.iv.next34.i46.1, %.lr.ph15.i44 ], [ %indvars.iv33.i45.unr, %.lr.ph15.i44.prol.loopexit ] ; 5 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %indvars.iv33.i45
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !135
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv33.i45
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !135
  %i.gd = fcmp ole float %i.ga, %i.gc
  %i.ge = sext i1 %i.gd to i8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.eu, i64 %indvars.iv33.i45
  store i8 %i.ge, ptr %i.gf, align 1, !tbaa !52
  %indvars.iv.next34.i46 = add nuw nsw i64 %indvars.iv33.i45, 1 ; 3 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %indvars.iv.next34.i46
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !135
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv.next34.i46
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !135
  %i.gk = fcmp ole float %i.gh, %i.gj
  %i.gl = sext i1 %i.gk to i8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.eu, i64 %indvars.iv.next34.i46
  store i8 %i.gl, ptr %i.gm, align 1, !tbaa !52
  %indvars.iv.next34.i46.1 = add nuw nsw i64 %indvars.iv33.i45, 2 ; 2 uses
  %exitcond37.not.i47.1 = icmp eq i64 %indvars.iv.next34.i46.1, %wide.trip.count36.i43
  br i1 %exitcond37.not.i47.1, label %_ZN2cv4gapi5fluidL7run_cmpIhhhEEvRNS1_6BufferERKNS1_4ViewES7_NS1_7CompareE.exit, label %.lr.ph15.i44, !llvm.loop !979

.thread58:                                        ; preds = %bb.b, %bb.c, %bb.e, %bb.a, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv4gapi5fluid9GFluidAdd3runERKNS1_4ViewES5_iRNS1_6BufferE, ptr noundef nonnull @.str.2, i32 noundef 1840) #29
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.thread58
  unreachable

bb.j:                                             ; preds = %.thread58
  %i.gn = landingpad { ptr, i32 }
          cleanup
  %i.go = load ptr, ptr %3, align 8, !tbaa !51    ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.gq = icmp eq ptr %i.go, %i.gp
  br i1 %i.gq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.gr = load i64, ptr %i.gp, align 8, !tbaa !52
  %i.gs = add i64 %i.gr, 1
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gs) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.gn

_ZN2cv4gapi5fluidL7run_cmpIhhhEEvRNS1_6BufferERKNS1_4ViewES7_NS1_7CompareE.exit: ; preds = %.lr.ph15.i44.prol.loopexit, %.lr.ph15.i44, %.lr.ph15.i37.prol.loopexit, %.lr.ph15.i37, %.lr.ph15.i.prol.loopexit, %.lr.ph15.i, %middle.block, %middle.block104, %vec.epilog.middle.block, %middle.block129, %vec.epilog.middle.block143, %bb.h, %bb.f, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core6GCmpLEESt5tupleIJNS_4GMatES6_EES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.21") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.6 = alloca [20 x i8], align 4            ; 5 uses
  %3 = alloca %"struct.cv::GMatDesc", align 8     ; 7 uses
  %4 = alloca %"struct.cv::GMatDesc", align 8     ; 5 uses
  %5 = alloca [1 x %"class.cv::util::variant.73"], align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  invoke void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1)
          to label %bb.b unwind label %bb.t

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx, i64 13, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !144, !noalias !992 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !140, !noalias !992 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ugt i64 %i.g, 9223372036854775804
  br i1 %i.h, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !61

.noexc.i.i.i.i.i:                                 ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #28
          to label %.noexc13 unwind label %bb.u

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !145, !noalias !992 ; 2 uses
  %.pre11.i.i = load ptr, ptr %i.b, align 8, !tbaa !145, !noalias !992
  %.pre12.i.i = ptrtoint ptr %.pre11.i.i to i64
  %.pre13.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %.noexc13, %bb.b
  %.pre-phi14.i.i = phi i64 [ %.pre13.i.i, %.noexc13 ], [ %i.f, %bb.b ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %.pre12.i.i, %.noexc13 ], [ %i.e, %bb.b ] ; 2 uses
  %i.j = phi ptr [ %.pre.i.i, %.noexc13 ], [ %i.d, %bb.b ] ; 3 uses
  %i.k = phi ptr [ %i.i, %.noexc13 ], [ null, %bb.b ] ; 8 uses
  %i.l = sub i64 %.pre-phi.i.i, %.pre-phi14.i.i   ; 9 uses
  %i.m = icmp sgt i64 %i.l, 4                     ; 2 uses
  br i1 %i.m, label %bb.e, label %bb.f, !prof !146

bb.e:                                             ; preds = %bb.d
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.k, ptr align 4 %i.j, i64 %i.l, i1 false), !noalias !992
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.n = icmp eq i64 %i.l, 4
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = load i32, ptr %i.j, align 4, !tbaa !60, !noalias !992
  store i32 %i.o, ptr %i.k, align 4, !tbaa !60, !noalias !992
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !140  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !141
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #27
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !140
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.h, %bb.i
  %i.w = phi ptr [ %i.j, %bb.h ], [ %.pre, %bb.i ] ; 3 uses
  %.not.i.i.i.i14 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i14, label %_ZN2cv8GMatDescD2Ev.exit15, label %bb.j

bb.j:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !141
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #27
  br label %_ZN2cv8GMatDescD2Ev.exit15

_ZN2cv8GMatDescD2Ev.exit15:                       ; preds = %_ZN2cv8GMatDescD2Ev.exit, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store i64 1, ptr %5, align 8, !tbaa !143
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.ac, align 8
  %.sroa.6.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx32, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, i64 13, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i16 = icmp eq i64 %.pre-phi.i.i, %.pre-phi14.i.i
  br i1 %.not.i.i.i.i.i.i.i16, label %.thread, label %bb.k

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit15
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.af = getelementptr inbounds i8, ptr null, i64 %i.l ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !141
  br label %bb.o

bb.k:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit15
  %i.ah = icmp ugt i64 %i.l, 9223372036854775804
  br i1 %i.ah, label %.noexc.i.i.i.i.i18, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17, !prof !61

.noexc.i.i.i.i.i18:                               ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc19 unwind label %bb.x

.noexc19:                                         ; preds = %.noexc.i.i.i.i.i18
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17: ; preds = %bb.k
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #28
          to label %.noexc20 unwind label %bb.x   ; 5 uses

.noexc20:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17
  store ptr %i.ai, ptr %i.ad, align 8, !tbaa !140
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !144
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.l ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !141
  br i1 %i.m, label %bb.l, label %bb.m, !prof !164

bb.l:                                             ; preds = %.noexc20
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr align 4 %i.k, i64 %i.l, i1 false)
  br label %bb.o

bb.m:                                             ; preds = %.noexc20
  %i.am = icmp eq i64 %i.l, 4
  br i1 %i.am, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.an = load i32, ptr %i.k, align 4, !tbaa !60
  store i32 %i.an, ptr %i.ai, align 4, !tbaa !60
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %.thread
  %i.ao = phi ptr [ %i.ak, %bb.l ], [ %i.ak, %bb.m ], [ %i.ak, %bb.n ], [ %i.af, %.thread ]
  %i.ap = phi ptr [ %i.aj, %bb.l ], [ %i.aj, %bb.m ], [ %i.aj, %bb.n ], [ %i.ae, %.thread ]
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.aq = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread48 ; 4 uses

.thread48:                                        ; preds = %bb.o
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.aq, ptr %0, align 8, !tbaa !149
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !150
  %i.av = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %5, ptr noundef nonnull %i.as, ptr noundef nonnull %i.aq)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef 56) #27
  br label %.body

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !151
  %i.ay = load i64, ptr %5, align 8, !tbaa !143
  %i.az = getelementptr inbounds nuw [8 x i8], ptr @constinit.14, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !41
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.ba(ptr noundef nonnull %i.bb)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #26
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.not.i.i.i.i21 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i21, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.s

bb.s:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.g) #27
  br label %_ZN2cv8GMatDescD2Ev.exit22

_ZN2cv8GMatDescD2Ev.exit22:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.t:                                             ; preds = %bb.a
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv8GMatDescD2Ev.exit24

bb.u:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !140 ; 3 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i23, label %_ZN2cv8GMatDescD2Ev.exit24, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !141
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bm) #27
  br label %_ZN2cv8GMatDescD2Ev.exit24

_ZN2cv8GMatDescD2Ev.exit24:                       ; preds = %bb.v, %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.be, %bb.t ], [ %i.bf, %bb.u ], [ %i.bf, %bb.v ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !140 ; 3 uses
  %.not.i.i.i.i25 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i25, label %_ZN2cv8GMatDescD2Ev.exit26, label %bb.w

bb.w:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit24
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !141
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #27
  br label %_ZN2cv8GMatDescD2Ev.exit26

bb.x:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17, %.noexc.i.i.i.i.i18
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body:                                            ; preds = %.thread48, %bb.p
  %i.bv = phi { ptr, i32 } [ %i.ar, %.thread48 ], [ %i.aw, %bb.p ]
  %i.bw = load i64, ptr %5, align 8, !tbaa !143
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr @constinit.14, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !41
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.by(ptr noundef nonnull %i.bz)
          to label %.loopexit unwind label %bb.y

bb.y:                                             ; preds = %.body
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #26
  unreachable

.loopexit:                                        ; preds = %.body, %bb.x
  %.pn10 = phi { ptr, i32 } [ %i.bu, %bb.x ], [ %i.bv, %.body ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.not.i.i.i.i28 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i28, label %_ZN2cv8GMatDescD2Ev.exit26, label %bb.z

bb.z:                                             ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.g) #27
  br label %_ZN2cv8GMatDescD2Ev.exit26

_ZN2cv8GMatDescD2Ev.exit26:                       ; preds = %bb.z, %.loopexit, %bb.w, %_ZN2cv8GMatDescD2Ev.exit24
  %.pn10.pn = phi { ptr, i32 } [ %.pn, %bb.w ], [ %.pn, %_ZN2cv8GMatDescD2Ev.exit24 ], [ %.pn10, %.loopexit ], [ %.pn10, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn10.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv14GKernelPackage13includeHelperINS_4gapi5fluid11GFluidCmpLTEEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.cv::gapi::GBackend", align 8 ; 7 uses
  %2 = alloca %"struct.cv::GKernelImpl", align 8  ; 11 uses
  %3 = alloca %"class.cv::GFluidKernel", align 8  ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"struct.std::pair", align 8        ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @_ZN2cv4gapi5fluid7backendEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::gapi::GBackend") align 8 %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZN2cv16GFluidKernelImplINS_4gapi5fluid11GFluidCmpLTENS1_4core6GCmpLTELb0EE6kernelEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::GFluidKernel") align 8 %3)
          to label %bb.b unwind label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #28
          to label %.noexc unwind label %bb.v     ; 4 uses

.noexc:                                           ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util3any11holder_implINS_12GFluidKernelEEE, i64 16), ptr %i.c, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke void @_ZN2cv12GFluidKernelC2EOS0_(ptr noundef nonnull align 8 dereferenceable(176) %i.d, ptr noundef nonnull align 8 dereferenceable(176) %3)
          to label %_ZNSt8functionIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEEC2IPSK_vEEOT_.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 184) #27
  br label %.body

_ZNSt8functionIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEEC2IPSK_vEEOT_.exit: ; preds = %.noexc
  store ptr %i.c, ptr %2, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr @_ZN2cv6detail10MetaHelperINS_4gapi4core6GCmpLTESt5tupleIJNS_4GMatES6_EES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSA_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISI_EERKS9_INS_4GArgESaISN_EE, ptr %i.f, align 8, !tbaa !41
  store ptr @_ZNSt17_Function_handlerIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEPSK_E9_M_invokeERKSt9_Any_dataSE_SJ_, ptr %i.h, align 8, !tbaa !44
  store ptr @_ZNSt17_Function_handlerIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEPSK_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation, ptr %i.i, align 8, !tbaa !45
  call void @_ZN2cv12GFluidKernelD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 39, ptr %i.b, align 8, !tbaa !49
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc18 unwind label %bb.x   ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN2cv4gapi5fluid11GFluidCmpLT3runERKNS1_4ViewES5_RNS1_6BufferE:bb.a
  %.val32.val = load ptr, ptr %i.en, align 8, !tbaa !120
  %i.es = getelementptr i8, ptr %i.en, i64 72
  %.val32.val34 = load i32, ptr %i.es, align 8, !tbaa !119
  %i.et = sext i32 %.val31.val33 to i64
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %.val31.val, i64 %i.et
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !121 ; 6 uses
  %i.ew = sext i32 %.val32.val34 to i64
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %.val32.val, i64 %i.ew
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !121 ; 6 uses
  %i.ez = load ptr, ptr %i.b, align 8, !tbaa !123
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !121 ; 7 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !128
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !129
  %i.ff = mul i32 %i.fe, %i.fc                    ; 3 uses
  %i.fg = icmp sgt i32 %i.ff, 0
  br i1 %i.fg, label %.lr.ph.preheader.i41, label %_ZN2cv4gapi5fluidL7run_cmpIhhhEEvRNS1_6BufferERKNS1_4ViewES7_NS1_7CompareE.exit

.lr.ph.preheader.i41:                             ; preds = %bb.h
  %wide.trip.count.i42 = zext nneg i32 %i.ff to i64 ; 7 uses
  %min.iters.check = icmp ult i32 %i.ff, 12
  br i1 %min.iters.check, label %.lr.ph.i43.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i41
  %i.fh = getelementptr i8, ptr %i.fa, i64 %wide.trip.count.i42 ; 2 uses
  %i.fi = shl nuw nsw i64 %wide.trip.count.i42, 2 ; 2 uses
  %i.fj = getelementptr i8, ptr %i.ev, i64 %i.fi
  %i.fk = getelementptr i8, ptr %i.ey, i64 %i.fi
  %bound0 = icmp ult ptr %i.fa, %i.fj
  %bound1 = icmp ult ptr %i.ev, %i.fh
  %found.conflict = and i1 %bound0, %bound1
  %bound067 = icmp ult ptr %i.fa, %i.fk
  %bound168 = icmp ult ptr %i.ey, %i.fh
  %found.conflict69 = and i1 %bound067, %bound168
  %conflict.rdx = or i1 %found.conflict, %found.conflict69
  br i1 %conflict.rdx, label %.lr.ph.i43.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i42, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %index ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %wide.load = load <4 x float>, ptr %i.fl, align 4, !tbaa !135, !alias.scope !1016
  %wide.load70 = load <4 x float>, ptr %i.fm, align 4, !tbaa !135, !alias.scope !1016
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %index ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %wide.load71 = load <4 x float>, ptr %i.fn, align 4, !tbaa !135, !alias.scope !1017
  %wide.load72 = load <4 x float>, ptr %i.fo, align 4, !tbaa !135, !alias.scope !1017
  %i.fp = fcmp olt <4 x float> %wide.load, %wide.load71
  %i.fq = fcmp olt <4 x float> %wide.load70, %wide.load72
  %i.fr = sext <4 x i1> %i.fp to <4 x i8>
  %i.fs = sext <4 x i1> %i.fq to <4 x i8>
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fa, i64 %index ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  store <4 x i8> %i.fr, ptr %i.ft, align 1, !tbaa !52, !alias.scope !1018, !noalias !1019
  store <4 x i8> %i.fs, ptr %i.fu, align 1, !tbaa !52, !alias.scope !1018, !noalias !1019
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fv = icmp eq i64 %index.next, %n.vec
  br i1 %i.fv, label %middle.block, label %vector.body, !llvm.loop !1010

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i42
  br i1 %cmp.n, label %_ZN2cv4gapi5fluidL7run_cmpIhhhEEvRNS1_6BufferERKNS1_4ViewES7_NS1_7CompareE.exit, label %.lr.ph.i43.preheader

.lr.ph.i43.preheader:                             ; preds = %vector.memcheck, %.lr.ph.preheader.i41, %middle.block
  %indvars.iv.i44.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i41 ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count.i42, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i43.prol.loopexit, label %.lr.ph.i43.prol

.lr.ph.i43.prol:                                  ; preds = %.lr.ph.i43.preheader
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv.i44.ph
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !135
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv.i44.ph
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !135
  %i.ga = fcmp olt float %i.fx, %i.fz
  %i.gb = sext i1 %i.ga to i8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fa, i64 %indvars.iv.i44.ph
  store i8 %i.gb, ptr %i.gc, align 1, !tbaa !52
  %indvars.iv.next.i45.prol = or disjoint i64 %indvars.iv.i44.ph, 1
  br label %.lr.ph.i43.prol.loopexit

.lr.ph.i43.prol.loopexit:                         ; preds = %.lr.ph.i43.prol, %.lr.ph.i43.preheader
  %indvars.iv.i44.unr = phi i64 [ %indvars.iv.i44.ph, %.lr.ph.i43.preheader ], [ %indvars.iv.next.i45.prol, %.lr.ph.i43.prol ]
  %i.gd = add nsw i64 %wide.trip.count.i42, -1
  %i.ge = icmp eq i64 %indvars.iv.i44.ph, %i.gd
  br i1 %i.ge, label %_ZN2cv4gapi5fluidL7run_cmpIhhhEEvRNS1_6BufferERKNS1_4ViewES7_NS1_7CompareE.exit, label %.lr.ph.i43

.lr.ph.i43:                                       ; preds = %.lr.ph.i43.prol.loopexit, %.lr.ph.i43
  %indvars.iv.i44 = phi i64 [ %indvars.iv.next.i45.1, %.lr.ph.i43 ], [ %indvars.iv.i44.unr, %.lr.ph.i43.prol.loopexit ] ; 5 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv.i44
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !135
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv.i44
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !135
  %i.gj = fcmp olt float %i.gg, %i.gi
  %i.gk = sext i1 %i.gj to i8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fa, i64 %indvars.iv.i44
  store i8 %i.gk, ptr %i.gl, align 1, !tbaa !52
  %indvars.iv.next.i45 = add nuw nsw i64 %indvars.iv.i44, 1 ; 3 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv.next.i45
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !135
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv.next.i45
  %i.gp = load float, ptr %i.go, align 4, !tbaa !135
  %i.gq = fcmp olt float %i.gn, %i.gp
  %i.gr = sext i1 %i.gq to i8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fa, i64 %indvars.iv.next.i45
  store i8 %i.gr, ptr %i.gs, align 1, !tbaa !52
  %indvars.iv.next.i45.1 = add nuw nsw i64 %indvars.iv.i44, 2 ; 2 uses
  %exitcond.not.i46.1 = icmp eq i64 %indvars.iv.next.i45.1, %wide.trip.count.i42
  br i1 %exitcond.not.i46.1, label %_ZN2cv4gapi5fluidL7run_cmpIhhhEEvRNS1_6BufferERKNS1_4ViewES7_NS1_7CompareE.exit, label %.lr.ph.i43, !llvm.loop !1011

.thread57:                                        ; preds = %bb.b, %bb.c, %bb.e, %bb.a, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv4gapi5fluid9GFluidAdd3runERKNS1_4ViewES5_iRNS1_6BufferE, ptr noundef nonnull @.str.2, i32 noundef 1855) #29
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.thread57
  unreachable

bb.j:                                             ; preds = %.thread57
  %i.gt = landingpad { ptr, i32 }
          cleanup
  %i.gu = load ptr, ptr %3, align 8, !tbaa !51    ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.gw = icmp eq ptr %i.gu, %i.gv
  br i1 %i.gw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.gx = load i64, ptr %i.gv, align 8, !tbaa !52
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gy) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.gt

_ZN2cv4gapi5fluidL7run_cmpIhhhEEvRNS1_6BufferERKNS1_4ViewES7_NS1_7CompareE.exit: ; preds = %.lr.ph.i43.prol.loopexit, %.lr.ph.i43, %.lr.ph.i37.prol.loopexit, %.lr.ph.i37, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %middle.block103, %vec.epilog.middle.block, %middle.block128, %vec.epilog.middle.block142, %bb.h, %bb.f, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core6GCmpLTESt5tupleIJNS_4GMatES6_EES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.21") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.6 = alloca [20 x i8], align 4            ; 5 uses
  %3 = alloca %"struct.cv::GMatDesc", align 8     ; 7 uses
  %4 = alloca %"struct.cv::GMatDesc", align 8     ; 5 uses
  %5 = alloca [1 x %"class.cv::util::variant.73"], align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  invoke void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1)
          to label %bb.b unwind label %bb.t

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx, i64 13, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !144, !noalias !1024 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !140, !noalias !1024 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ugt i64 %i.g, 9223372036854775804
  br i1 %i.h, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !61

.noexc.i.i.i.i.i:                                 ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #28
          to label %.noexc13 unwind label %bb.u

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !145, !noalias !1024 ; 2 uses
  %.pre11.i.i = load ptr, ptr %i.b, align 8, !tbaa !145, !noalias !1024
  %.pre12.i.i = ptrtoint ptr %.pre11.i.i to i64
  %.pre13.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %.noexc13, %bb.b
  %.pre-phi14.i.i = phi i64 [ %.pre13.i.i, %.noexc13 ], [ %i.f, %bb.b ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %.pre12.i.i, %.noexc13 ], [ %i.e, %bb.b ] ; 2 uses
  %i.j = phi ptr [ %.pre.i.i, %.noexc13 ], [ %i.d, %bb.b ] ; 3 uses
  %i.k = phi ptr [ %i.i, %.noexc13 ], [ null, %bb.b ] ; 8 uses
  %i.l = sub i64 %.pre-phi.i.i, %.pre-phi14.i.i   ; 9 uses
  %i.m = icmp sgt i64 %i.l, 4                     ; 2 uses
  br i1 %i.m, label %bb.e, label %bb.f, !prof !146

bb.e:                                             ; preds = %bb.d
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.k, ptr align 4 %i.j, i64 %i.l, i1 false), !noalias !1024
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.n = icmp eq i64 %i.l, 4
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = load i32, ptr %i.j, align 4, !tbaa !60, !noalias !1024
  store i32 %i.o, ptr %i.k, align 4, !tbaa !60, !noalias !1024
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !140  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !141
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #27
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !140
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.h, %bb.i
  %i.w = phi ptr [ %i.j, %bb.h ], [ %.pre, %bb.i ] ; 3 uses
  %.not.i.i.i.i14 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i14, label %_ZN2cv8GMatDescD2Ev.exit15, label %bb.j

bb.j:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !141
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #27
  br label %_ZN2cv8GMatDescD2Ev.exit15

_ZN2cv8GMatDescD2Ev.exit15:                       ; preds = %_ZN2cv8GMatDescD2Ev.exit, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store i64 1, ptr %5, align 8, !tbaa !143
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.ac, align 8
  %.sroa.6.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx32, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, i64 13, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i16 = icmp eq i64 %.pre-phi.i.i, %.pre-phi14.i.i
  br i1 %.not.i.i.i.i.i.i.i16, label %.thread, label %bb.k

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit15
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.af = getelementptr inbounds i8, ptr null, i64 %i.l ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !141
  br label %bb.o

bb.k:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit15
  %i.ah = icmp ugt i64 %i.l, 9223372036854775804
  br i1 %i.ah, label %.noexc.i.i.i.i.i18, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17, !prof !61

.noexc.i.i.i.i.i18:                               ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc19 unwind label %bb.x

.noexc19:                                         ; preds = %.noexc.i.i.i.i.i18
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17: ; preds = %bb.k
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #28
          to label %.noexc20 unwind label %bb.x   ; 5 uses

.noexc20:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17
  store ptr %i.ai, ptr %i.ad, align 8, !tbaa !140
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !144
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.l ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !141
  br i1 %i.m, label %bb.l, label %bb.m, !prof !164

bb.l:                                             ; preds = %.noexc20
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr align 4 %i.k, i64 %i.l, i1 false)
  br label %bb.o

bb.m:                                             ; preds = %.noexc20
  %i.am = icmp eq i64 %i.l, 4
  br i1 %i.am, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.an = load i32, ptr %i.k, align 4, !tbaa !60
  store i32 %i.an, ptr %i.ai, align 4, !tbaa !60
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %.thread
  %i.ao = phi ptr [ %i.ak, %bb.l ], [ %i.ak, %bb.m ], [ %i.ak, %bb.n ], [ %i.af, %.thread ]
  %i.ap = phi ptr [ %i.aj, %bb.l ], [ %i.aj, %bb.m ], [ %i.aj, %bb.n ], [ %i.ae, %.thread ]
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.aq = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread48 ; 4 uses

.thread48:                                        ; preds = %bb.o
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.aq, ptr %0, align 8, !tbaa !149
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !150
  %i.av = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %5, ptr noundef nonnull %i.as, ptr noundef nonnull %i.aq)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef 56) #27
  br label %.body

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !151
  %i.ay = load i64, ptr %5, align 8, !tbaa !143
  %i.az = getelementptr inbounds nuw [8 x i8], ptr @constinit.14, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !41
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.ba(ptr noundef nonnull %i.bb)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #26
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.not.i.i.i.i21 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i21, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.s

bb.s:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.g) #27
  br label %_ZN2cv8GMatDescD2Ev.exit22

_ZN2cv8GMatDescD2Ev.exit22:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.t:                                             ; preds = %bb.a
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv8GMatDescD2Ev.exit24

bb.u:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !140 ; 3 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i23, label %_ZN2cv8GMatDescD2Ev.exit24, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !141
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bm) #27
  br label %_ZN2cv8GMatDescD2Ev.exit24

_ZN2cv8GMatDescD2Ev.exit24:                       ; preds = %bb.v, %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.be, %bb.t ], [ %i.bf, %bb.u ], [ %i.bf, %bb.v ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !140 ; 3 uses
  %.not.i.i.i.i25 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i25, label %_ZN2cv8GMatDescD2Ev.exit26, label %bb.w

bb.w:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit24
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !141
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #27
  br label %_ZN2cv8GMatDescD2Ev.exit26

bb.x:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17, %.noexc.i.i.i.i.i18
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body:                                            ; preds = %.thread48, %bb.p
  %i.bv = phi { ptr, i32 } [ %i.ar, %.thread48 ], [ %i.aw, %bb.p ]
  %i.bw = load i64, ptr %5, align 8, !tbaa !143
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr @constinit.14, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !41
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.by(ptr noundef nonnull %i.bz)
          to label %.loopexit unwind label %bb.y

bb.y:                                             ; preds = %.body
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #26
  unreachable

.loopexit:                                        ; preds = %.body, %bb.x
  %.pn10 = phi { ptr, i32 } [ %i.bu, %bb.x ], [ %i.bv, %.body ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.not.i.i.i.i28 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i28, label %_ZN2cv8GMatDescD2Ev.exit26, label %bb.z

bb.z:                                             ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.g) #27
  br label %_ZN2cv8GMatDescD2Ev.exit26

_ZN2cv8GMatDescD2Ev.exit26:                       ; preds = %bb.z, %.loopexit, %bb.w, %_ZN2cv8GMatDescD2Ev.exit24
  %.pn10.pn = phi { ptr, i32 } [ %.pn, %bb.w ], [ %.pn, %_ZN2cv8GMatDescD2Ev.exit24 ], [ %.pn10, %.loopexit ], [ %.pn10, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn10.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv14GKernelPackage13includeHelperINS_4gapi5fluid11GFluidCmpEQEEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.cv::gapi::GBackend", align 8 ; 7 uses
  %2 = alloca %"struct.cv::GKernelImpl", align 8  ; 11 uses
  %3 = alloca %"class.cv::GFluidKernel", align 8  ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"struct.std::pair", align 8        ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @_ZN2cv4gapi5fluid7backendEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::gapi::GBackend") align 8 %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZN2cv16GFluidKernelImplINS_4gapi5fluid11GFluidCmpEQENS1_4core6GCmpEQELb0EE6kernelEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::GFluidKernel") align 8 %3)
          to label %bb.b unwind label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #28
          to label %.noexc unwind label %bb.v     ; 4 uses

.noexc:                                           ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util3any11holder_implINS_12GFluidKernelEEE, i64 16), ptr %i.c, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke void @_ZN2cv12GFluidKernelC2EOS0_(ptr noundef nonnull align 8 dereferenceable(176) %i.d, ptr noundef nonnull align 8 dereferenceable(176) %3)
          to label %_ZNSt8functionIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEEC2IPSK_vEEOT_.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 184) #27
  br label %.body

_ZNSt8functionIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEEC2IPSK_vEEOT_.exit: ; preds = %.noexc
  store ptr %i.c, ptr %2, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr @_ZN2cv6detail10MetaHelperINS_4gapi4core6GCmpEQESt5tupleIJNS_4GMatES6_EES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSA_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISI_EERKS9_INS_4GArgESaISN_EE, ptr %i.f, align 8, !tbaa !41
  store ptr @_ZNSt17_Function_handlerIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEPSK_E9_M_invokeERKSt9_Any_dataSE_SJ_, ptr %i.h, align 8, !tbaa !44
  store ptr @_ZNSt17_Function_handlerIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEPSK_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation, ptr %i.i, align 8, !tbaa !45
  call void @_ZN2cv12GFluidKernelD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 39, ptr %i.b, align 8, !tbaa !49
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc18 unwind label %bb.x   ; 3 uses
end_hunk_3
begin_hunk_4_@_ZN2cv4gapi5fluid11GFluidCmpEQ3runERKNS1_4ViewES5_RNS1_6BufferE:bb.a
  %.val32.val = load ptr, ptr %i.en, align 8, !tbaa !120
  %i.es = getelementptr i8, ptr %i.en, i64 72
  %.val32.val34 = load i32, ptr %i.es, align 8, !tbaa !119
  %i.et = sext i32 %.val31.val33 to i64
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %.val31.val, i64 %i.et
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !121 ; 6 uses
  %i.ew = sext i32 %.val32.val34 to i64
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %.val32.val, i64 %i.ew
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !121 ; 6 uses
  %i.ez = load ptr, ptr %i.b, align 8, !tbaa !123
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !121 ; 7 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !128
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !129
  %i.ff = mul i32 %i.fe, %i.fc                    ; 3 uses
  %i.fg = icmp sgt i32 %i.ff, 0
  br i1 %i.fg, label %.lr.ph21.preheader.i41, label %_ZN2cv4gapi5fluidL7run_cmpIhhhEEvRNS1_6BufferERKNS1_4ViewES7_NS1_7CompareE.exit

.lr.ph21.preheader.i41:                           ; preds = %bb.h
  %wide.trip.count51.i42 = zext nneg i32 %i.ff to i64 ; 7 uses
  %min.iters.check = icmp ult i32 %i.ff, 12
  br i1 %min.iters.check, label %.lr.ph21.i43.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph21.preheader.i41
  %i.fh = getelementptr i8, ptr %i.fa, i64 %wide.trip.count51.i42 ; 2 uses
  %i.fi = shl nuw nsw i64 %wide.trip.count51.i42, 2 ; 2 uses
  %i.fj = getelementptr i8, ptr %i.ev, i64 %i.fi
  %i.fk = getelementptr i8, ptr %i.ey, i64 %i.fi
  %bound0 = icmp ult ptr %i.fa, %i.fj
  %bound1 = icmp ult ptr %i.ev, %i.fh
  %found.conflict = and i1 %bound0, %bound1
  %bound067 = icmp ult ptr %i.fa, %i.fk
  %bound168 = icmp ult ptr %i.ey, %i.fh
  %found.conflict69 = and i1 %bound067, %bound168
  %conflict.rdx = or i1 %found.conflict, %found.conflict69
  br i1 %conflict.rdx, label %.lr.ph21.i43.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count51.i42, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %index ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %wide.load = load <4 x float>, ptr %i.fl, align 4, !tbaa !135, !alias.scope !1048
  %wide.load70 = load <4 x float>, ptr %i.fm, align 4, !tbaa !135, !alias.scope !1048
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %index ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %wide.load71 = load <4 x float>, ptr %i.fn, align 4, !tbaa !135, !alias.scope !1049
  %wide.load72 = load <4 x float>, ptr %i.fo, align 4, !tbaa !135, !alias.scope !1049
  %i.fp = fcmp oeq <4 x float> %wide.load, %wide.load71
  %i.fq = fcmp oeq <4 x float> %wide.load70, %wide.load72
  %i.fr = sext <4 x i1> %i.fp to <4 x i8>
  %i.fs = sext <4 x i1> %i.fq to <4 x i8>
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fa, i64 %index ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  store <4 x i8> %i.fr, ptr %i.ft, align 1, !tbaa !52, !alias.scope !1050, !noalias !1051
  store <4 x i8> %i.fs, ptr %i.fu, align 1, !tbaa !52, !alias.scope !1050, !noalias !1051
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fv = icmp eq i64 %index.next, %n.vec
  br i1 %i.fv, label %middle.block, label %vector.body, !llvm.loop !1042

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count51.i42
  br i1 %cmp.n, label %_ZN2cv4gapi5fluidL7run_cmpIhhhEEvRNS1_6BufferERKNS1_4ViewES7_NS1_7CompareE.exit, label %.lr.ph21.i43.preheader

.lr.ph21.i43.preheader:                           ; preds = %vector.memcheck, %.lr.ph21.preheader.i41, %middle.block
  %indvars.iv48.i44.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph21.preheader.i41 ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count51.i42, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph21.i43.prol.loopexit, label %.lr.ph21.i43.prol

.lr.ph21.i43.prol:                                ; preds = %.lr.ph21.i43.preheader
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv48.i44.ph
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !135
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv48.i44.ph
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !135
  %i.ga = fcmp oeq float %i.fx, %i.fz
  %i.gb = sext i1 %i.ga to i8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fa, i64 %indvars.iv48.i44.ph
  store i8 %i.gb, ptr %i.gc, align 1, !tbaa !52
  %indvars.iv.next49.i45.prol = or disjoint i64 %indvars.iv48.i44.ph, 1
  br label %.lr.ph21.i43.prol.loopexit

.lr.ph21.i43.prol.loopexit:                       ; preds = %.lr.ph21.i43.prol, %.lr.ph21.i43.preheader
  %indvars.iv48.i44.unr = phi i64 [ %indvars.iv48.i44.ph, %.lr.ph21.i43.preheader ], [ %indvars.iv.next49.i45.prol, %.lr.ph21.i43.prol ]
  %i.gd = add nsw i64 %wide.trip.count51.i42, -1
  %i.ge = icmp eq i64 %indvars.iv48.i44.ph, %i.gd
  br i1 %i.ge, label %_ZN2cv4gapi5fluidL7run_cmpIhhhEEvRNS1_6BufferERKNS1_4ViewES7_NS1_7CompareE.exit, label %.lr.ph21.i43

.lr.ph21.i43:                                     ; preds = %.lr.ph21.i43.prol.loopexit, %.lr.ph21.i43
  %indvars.iv48.i44 = phi i64 [ %indvars.iv.next49.i45.1, %.lr.ph21.i43 ], [ %indvars.iv48.i44.unr, %.lr.ph21.i43.prol.loopexit ] ; 5 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv48.i44
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !135
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv48.i44
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !135
  %i.gj = fcmp oeq float %i.gg, %i.gi
  %i.gk = sext i1 %i.gj to i8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fa, i64 %indvars.iv48.i44
  store i8 %i.gk, ptr %i.gl, align 1, !tbaa !52
  %indvars.iv.next49.i45 = add nuw nsw i64 %indvars.iv48.i44, 1 ; 3 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv.next49.i45
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !135
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv.next49.i45
  %i.gp = load float, ptr %i.go, align 4, !tbaa !135
  %i.gq = fcmp oeq float %i.gn, %i.gp
  %i.gr = sext i1 %i.gq to i8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fa, i64 %indvars.iv.next49.i45
  store i8 %i.gr, ptr %i.gs, align 1, !tbaa !52
  %indvars.iv.next49.i45.1 = add nuw nsw i64 %indvars.iv48.i44, 2 ; 2 uses
  %exitcond52.not.i46.1 = icmp eq i64 %indvars.iv.next49.i45.1, %wide.trip.count51.i42
  br i1 %exitcond52.not.i46.1, label %_ZN2cv4gapi5fluidL7run_cmpIhhhEEvRNS1_6BufferERKNS1_4ViewES7_NS1_7CompareE.exit, label %.lr.ph21.i43, !llvm.loop !1043

.thread57:                                        ; preds = %bb.b, %bb.c, %bb.e, %bb.a, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv4gapi5fluid9GFluidAdd3runERKNS1_4ViewES5_iRNS1_6BufferE, ptr noundef nonnull @.str.2, i32 noundef 1780) #29
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.thread57
  unreachable

bb.j:                                             ; preds = %.thread57
  %i.gt = landingpad { ptr, i32 }
          cleanup
  %i.gu = load ptr, ptr %3, align 8, !tbaa !51    ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.gw = icmp eq ptr %i.gu, %i.gv
  br i1 %i.gw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.gx = load i64, ptr %i.gv, align 8, !tbaa !52
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gy) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.gt

_ZN2cv4gapi5fluidL7run_cmpIhhhEEvRNS1_6BufferERKNS1_4ViewES7_NS1_7CompareE.exit: ; preds = %.lr.ph21.i43.prol.loopexit, %.lr.ph21.i43, %.lr.ph21.i37.prol.loopexit, %.lr.ph21.i37, %.lr.ph21.i.prol.loopexit, %.lr.ph21.i, %middle.block, %middle.block103, %vec.epilog.middle.block, %middle.block128, %vec.epilog.middle.block142, %bb.h, %bb.f, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core6GCmpEQESt5tupleIJNS_4GMatES6_EES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.21") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.6 = alloca [20 x i8], align 4            ; 5 uses
  %3 = alloca %"struct.cv::GMatDesc", align 8     ; 7 uses
  %4 = alloca %"struct.cv::GMatDesc", align 8     ; 5 uses
  %5 = alloca [1 x %"class.cv::util::variant.73"], align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  invoke void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1)
          to label %bb.b unwind label %bb.t

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx, i64 13, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !144, !noalias !1056 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !140, !noalias !1056 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ugt i64 %i.g, 9223372036854775804
  br i1 %i.h, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !61

.noexc.i.i.i.i.i:                                 ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #28
          to label %.noexc13 unwind label %bb.u

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !145, !noalias !1056 ; 2 uses
  %.pre11.i.i = load ptr, ptr %i.b, align 8, !tbaa !145, !noalias !1056
  %.pre12.i.i = ptrtoint ptr %.pre11.i.i to i64
  %.pre13.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %.noexc13, %bb.b
  %.pre-phi14.i.i = phi i64 [ %.pre13.i.i, %.noexc13 ], [ %i.f, %bb.b ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %.pre12.i.i, %.noexc13 ], [ %i.e, %bb.b ] ; 2 uses
  %i.j = phi ptr [ %.pre.i.i, %.noexc13 ], [ %i.d, %bb.b ] ; 3 uses
  %i.k = phi ptr [ %i.i, %.noexc13 ], [ null, %bb.b ] ; 8 uses
  %i.l = sub i64 %.pre-phi.i.i, %.pre-phi14.i.i   ; 9 uses
  %i.m = icmp sgt i64 %i.l, 4                     ; 2 uses
  br i1 %i.m, label %bb.e, label %bb.f, !prof !146

bb.e:                                             ; preds = %bb.d
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.k, ptr align 4 %i.j, i64 %i.l, i1 false), !noalias !1056
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.n = icmp eq i64 %i.l, 4
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = load i32, ptr %i.j, align 4, !tbaa !60, !noalias !1056
  store i32 %i.o, ptr %i.k, align 4, !tbaa !60, !noalias !1056
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !140  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !141
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #27
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !140
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.h, %bb.i
  %i.w = phi ptr [ %i.j, %bb.h ], [ %.pre, %bb.i ] ; 3 uses
  %.not.i.i.i.i14 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i14, label %_ZN2cv8GMatDescD2Ev.exit15, label %bb.j

bb.j:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !141
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #27
  br label %_ZN2cv8GMatDescD2Ev.exit15

_ZN2cv8GMatDescD2Ev.exit15:                       ; preds = %_ZN2cv8GMatDescD2Ev.exit, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store i64 1, ptr %5, align 8, !tbaa !143
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.ac, align 8
  %.sroa.6.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx32, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, i64 13, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i16 = icmp eq i64 %.pre-phi.i.i, %.pre-phi14.i.i
  br i1 %.not.i.i.i.i.i.i.i16, label %.thread, label %bb.k

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit15
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.af = getelementptr inbounds i8, ptr null, i64 %i.l ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !141
  br label %bb.o

bb.k:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit15
  %i.ah = icmp ugt i64 %i.l, 9223372036854775804
  br i1 %i.ah, label %.noexc.i.i.i.i.i18, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17, !prof !61

.noexc.i.i.i.i.i18:                               ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc19 unwind label %bb.x

.noexc19:                                         ; preds = %.noexc.i.i.i.i.i18
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17: ; preds = %bb.k
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #28
          to label %.noexc20 unwind label %bb.x   ; 5 uses

.noexc20:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17
  store ptr %i.ai, ptr %i.ad, align 8, !tbaa !140
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !144
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.l ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !141
  br i1 %i.m, label %bb.l, label %bb.m, !prof !164

bb.l:                                             ; preds = %.noexc20
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr align 4 %i.k, i64 %i.l, i1 false)
  br label %bb.o

bb.m:                                             ; preds = %.noexc20
  %i.am = icmp eq i64 %i.l, 4
  br i1 %i.am, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.an = load i32, ptr %i.k, align 4, !tbaa !60
  store i32 %i.an, ptr %i.ai, align 4, !tbaa !60
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %.thread
  %i.ao = phi ptr [ %i.ak, %bb.l ], [ %i.ak, %bb.m ], [ %i.ak, %bb.n ], [ %i.af, %.thread ]
  %i.ap = phi ptr [ %i.aj, %bb.l ], [ %i.aj, %bb.m ], [ %i.aj, %bb.n ], [ %i.ae, %.thread ]
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.aq = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread48 ; 4 uses

.thread48:                                        ; preds = %bb.o
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.aq, ptr %0, align 8, !tbaa !149
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !150
  %i.av = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %5, ptr noundef nonnull %i.as, ptr noundef nonnull %i.aq)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef 56) #27
  br label %.body

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !151
  %i.ay = load i64, ptr %5, align 8, !tbaa !143
  %i.az = getelementptr inbounds nuw [8 x i8], ptr @constinit.14, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !41
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.ba(ptr noundef nonnull %i.bb)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #26
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.not.i.i.i.i21 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i21, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.s

bb.s:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.g) #27
  br label %_ZN2cv8GMatDescD2Ev.exit22

_ZN2cv8GMatDescD2Ev.exit22:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.t:                                             ; preds = %bb.a
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv8GMatDescD2Ev.exit24

bb.u:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !140 ; 3 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i23, label %_ZN2cv8GMatDescD2Ev.exit24, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !141
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bm) #27
  br label %_ZN2cv8GMatDescD2Ev.exit24

_ZN2cv8GMatDescD2Ev.exit24:                       ; preds = %bb.v, %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.be, %bb.t ], [ %i.bf, %bb.u ], [ %i.bf, %bb.v ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !140 ; 3 uses
  %.not.i.i.i.i25 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i25, label %_ZN2cv8GMatDescD2Ev.exit26, label %bb.w

bb.w:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit24
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !141
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #27
  br label %_ZN2cv8GMatDescD2Ev.exit26

bb.x:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17, %.noexc.i.i.i.i.i18
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body:                                            ; preds = %.thread48, %bb.p
  %i.bv = phi { ptr, i32 } [ %i.ar, %.thread48 ], [ %i.aw, %bb.p ]
  %i.bw = load i64, ptr %5, align 8, !tbaa !143
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr @constinit.14, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !41
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.by(ptr noundef nonnull %i.bz)
          to label %.loopexit unwind label %bb.y

bb.y:                                             ; preds = %.body
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #26
  unreachable

.loopexit:                                        ; preds = %.body, %bb.x
  %.pn10 = phi { ptr, i32 } [ %i.bu, %bb.x ], [ %i.bv, %.body ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.not.i.i.i.i28 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i28, label %_ZN2cv8GMatDescD2Ev.exit26, label %bb.z

bb.z:                                             ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.g) #27
  br label %_ZN2cv8GMatDescD2Ev.exit26

_ZN2cv8GMatDescD2Ev.exit26:                       ; preds = %bb.z, %.loopexit, %bb.w, %_ZN2cv8GMatDescD2Ev.exit24
  %.pn10.pn = phi { ptr, i32 } [ %.pn, %bb.w ], [ %.pn, %_ZN2cv8GMatDescD2Ev.exit24 ], [ %.pn10, %.loopexit ], [ %.pn10, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn10.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv14GKernelPackage13includeHelperINS_4gapi5fluid11GFluidCmpNEEEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.cv::gapi::GBackend", align 8 ; 7 uses
  %2 = alloca %"struct.cv::GKernelImpl", align 8  ; 11 uses
  %3 = alloca %"class.cv::GFluidKernel", align 8  ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"struct.std::pair", align 8        ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @_ZN2cv4gapi5fluid7backendEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::gapi::GBackend") align 8 %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZN2cv16GFluidKernelImplINS_4gapi5fluid11GFluidCmpNEENS1_4core6GCmpNEELb0EE6kernelEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::GFluidKernel") align 8 %3)
          to label %bb.b unwind label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #28
          to label %.noexc unwind label %bb.v     ; 4 uses

.noexc:                                           ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util3any11holder_implINS_12GFluidKernelEEE, i64 16), ptr %i.c, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke void @_ZN2cv12GFluidKernelC2EOS0_(ptr noundef nonnull align 8 dereferenceable(176) %i.d, ptr noundef nonnull align 8 dereferenceable(176) %3)
          to label %_ZNSt8functionIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEEC2IPSK_vEEOT_.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 184) #27
  br label %.body

_ZNSt8functionIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEEC2IPSK_vEEOT_.exit: ; preds = %.noexc
  store ptr %i.c, ptr %2, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr @_ZN2cv6detail10MetaHelperINS_4gapi4core6GCmpNEESt5tupleIJNS_4GMatES6_EES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSA_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISI_EERKS9_INS_4GArgESaISN_EE, ptr %i.f, align 8, !tbaa !41
  store ptr @_ZNSt17_Function_handlerIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEPSK_E9_M_invokeERKSt9_Any_dataSE_SJ_, ptr %i.h, align 8, !tbaa !44
  store ptr @_ZNSt17_Function_handlerIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEPSK_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation, ptr %i.i, align 8, !tbaa !45
  call void @_ZN2cv12GFluidKernelD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 39, ptr %i.b, align 8, !tbaa !49
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc18 unwind label %bb.x   ; 3 uses
end_hunk_4
begin_hunk_5_@_ZN2cv4gapi5fluid11GFluidCmpNE3runERKNS1_4ViewES5_RNS1_6BufferE:bb.a
  %.val32.val = load ptr, ptr %i.eh, align 8, !tbaa !120
  %i.em = getelementptr i8, ptr %i.eh, i64 72
  %.val32.val34 = load i32, ptr %i.em, align 8, !tbaa !119
  %i.en = sext i32 %.val31.val33 to i64
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %.val31.val, i64 %i.en
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !121 ; 6 uses
  %i.eq = sext i32 %.val32.val34 to i64
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %.val32.val, i64 %i.eq
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !121 ; 6 uses
  %i.et = load ptr, ptr %i.b, align 8, !tbaa !123
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !121 ; 7 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !128
  %i.ex = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !129
  %i.ez = mul i32 %i.ey, %i.ew                    ; 3 uses
  %i.fa = icmp sgt i32 %i.ez, 0
  br i1 %i.fa, label %.lr.ph19.preheader.i42, label %_ZN2cv4gapi5fluidL7run_cmpIhhhEEvRNS1_6BufferERKNS1_4ViewES7_NS1_7CompareE.exit

.lr.ph19.preheader.i42:                           ; preds = %bb.h
  %wide.trip.count46.i43 = zext nneg i32 %i.ez to i64 ; 7 uses
  %min.iters.check = icmp ult i32 %i.ez, 12
  br i1 %min.iters.check, label %.lr.ph19.i44.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph19.preheader.i42
  %i.fb = getelementptr i8, ptr %i.eu, i64 %wide.trip.count46.i43 ; 2 uses
  %i.fc = shl nuw nsw i64 %wide.trip.count46.i43, 2 ; 2 uses
  %i.fd = getelementptr i8, ptr %i.ep, i64 %i.fc
  %i.fe = getelementptr i8, ptr %i.es, i64 %i.fc
  %bound0 = icmp ult ptr %i.eu, %i.fd
  %bound1 = icmp ult ptr %i.ep, %i.fb
  %found.conflict = and i1 %bound0, %bound1
  %bound068 = icmp ult ptr %i.eu, %i.fe
  %bound169 = icmp ult ptr %i.es, %i.fb
  %found.conflict70 = and i1 %bound068, %bound169
  %conflict.rdx = or i1 %found.conflict, %found.conflict70
  br i1 %conflict.rdx, label %.lr.ph19.i44.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count46.i43, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %index ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %wide.load = load <4 x float>, ptr %i.ff, align 4, !tbaa !135, !alias.scope !1080
  %wide.load71 = load <4 x float>, ptr %i.fg, align 4, !tbaa !135, !alias.scope !1080
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %index ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %wide.load72 = load <4 x float>, ptr %i.fh, align 4, !tbaa !135, !alias.scope !1081
  %wide.load73 = load <4 x float>, ptr %i.fi, align 4, !tbaa !135, !alias.scope !1081
  %i.fj = fcmp une <4 x float> %wide.load, %wide.load72
  %i.fk = fcmp une <4 x float> %wide.load71, %wide.load73
  %i.fl = sext <4 x i1> %i.fj to <4 x i8>
  %i.fm = sext <4 x i1> %i.fk to <4 x i8>
  %i.fn = getelementptr inbounds nuw i8, ptr %i.eu, i64 %index ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  store <4 x i8> %i.fl, ptr %i.fn, align 1, !tbaa !52, !alias.scope !1082, !noalias !1083
  store <4 x i8> %i.fm, ptr %i.fo, align 1, !tbaa !52, !alias.scope !1082, !noalias !1083
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fp = icmp eq i64 %index.next, %n.vec
  br i1 %i.fp, label %middle.block, label %vector.body, !llvm.loop !1074

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count46.i43
  br i1 %cmp.n, label %_ZN2cv4gapi5fluidL7run_cmpIhhhEEvRNS1_6BufferERKNS1_4ViewES7_NS1_7CompareE.exit, label %.lr.ph19.i44.preheader

.lr.ph19.i44.preheader:                           ; preds = %vector.memcheck, %.lr.ph19.preheader.i42, %middle.block
  %indvars.iv43.i45.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph19.preheader.i42 ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count46.i43, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph19.i44.prol.loopexit, label %.lr.ph19.i44.prol

.lr.ph19.i44.prol:                                ; preds = %.lr.ph19.i44.preheader
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %indvars.iv43.i45.ph
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !135
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv43.i45.ph
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !135
  %i.fu = fcmp une float %i.fr, %i.ft
  %i.fv = sext i1 %i.fu to i8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.eu, i64 %indvars.iv43.i45.ph
  store i8 %i.fv, ptr %i.fw, align 1, !tbaa !52
  %indvars.iv.next44.i46.prol = or disjoint i64 %indvars.iv43.i45.ph, 1
  br label %.lr.ph19.i44.prol.loopexit

.lr.ph19.i44.prol.loopexit:                       ; preds = %.lr.ph19.i44.prol, %.lr.ph19.i44.preheader
  %indvars.iv43.i45.unr = phi i64 [ %indvars.iv43.i45.ph, %.lr.ph19.i44.preheader ], [ %indvars.iv.next44.i46.prol, %.lr.ph19.i44.prol ]
  %i.fx = add nsw i64 %wide.trip.count46.i43, -1
  %i.fy = icmp eq i64 %indvars.iv43.i45.ph, %i.fx
  br i1 %i.fy, label %_ZN2cv4gapi5fluidL7run_cmpIhhhEEvRNS1_6BufferERKNS1_4ViewES7_NS1_7CompareE.exit, label %.lr.ph19.i44

.lr.ph19.i44:                                     ; preds = %.lr.ph19.i44.prol.loopexit, %.lr.ph19.i44
  %indvars.iv43.i45 = phi i64 [ %indvars.iv.next44.i46.1, %.lr.ph19.i44 ], [ %indvars.iv43.i45.unr, %.lr.ph19.i44.prol.loopexit ] ; 5 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %indvars.iv43.i45
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !135
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv43.i45
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !135
  %i.gd = fcmp une float %i.ga, %i.gc
  %i.ge = sext i1 %i.gd to i8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.eu, i64 %indvars.iv43.i45
  store i8 %i.ge, ptr %i.gf, align 1, !tbaa !52
  %indvars.iv.next44.i46 = add nuw nsw i64 %indvars.iv43.i45, 1 ; 3 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %indvars.iv.next44.i46
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !135
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv.next44.i46
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !135
  %i.gk = fcmp une float %i.gh, %i.gj
  %i.gl = sext i1 %i.gk to i8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.eu, i64 %indvars.iv.next44.i46
  store i8 %i.gl, ptr %i.gm, align 1, !tbaa !52
  %indvars.iv.next44.i46.1 = add nuw nsw i64 %indvars.iv43.i45, 2 ; 2 uses
  %exitcond47.not.i47.1 = icmp eq i64 %indvars.iv.next44.i46.1, %wide.trip.count46.i43
  br i1 %exitcond47.not.i47.1, label %_ZN2cv4gapi5fluidL7run_cmpIhhhEEvRNS1_6BufferERKNS1_4ViewES7_NS1_7CompareE.exit, label %.lr.ph19.i44, !llvm.loop !1075

.thread58:                                        ; preds = %bb.b, %bb.c, %bb.e, %bb.a, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv4gapi5fluid9GFluidAdd3runERKNS1_4ViewES5_iRNS1_6BufferE, ptr noundef nonnull @.str.2, i32 noundef 1795) #29
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.thread58
  unreachable

bb.j:                                             ; preds = %.thread58
  %i.gn = landingpad { ptr, i32 }
          cleanup
  %i.go = load ptr, ptr %3, align 8, !tbaa !51    ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.gq = icmp eq ptr %i.go, %i.gp
  br i1 %i.gq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.gr = load i64, ptr %i.gp, align 8, !tbaa !52
  %i.gs = add i64 %i.gr, 1
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gs) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.gn

_ZN2cv4gapi5fluidL7run_cmpIhhhEEvRNS1_6BufferERKNS1_4ViewES7_NS1_7CompareE.exit: ; preds = %.lr.ph19.i44.prol.loopexit, %.lr.ph19.i44, %.lr.ph19.i37.prol.loopexit, %.lr.ph19.i37, %.lr.ph19.i.prol.loopexit, %.lr.ph19.i, %middle.block, %middle.block104, %vec.epilog.middle.block, %middle.block129, %vec.epilog.middle.block143, %bb.h, %bb.f, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core6GCmpNEESt5tupleIJNS_4GMatES6_EES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.21") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.6 = alloca [20 x i8], align 4            ; 5 uses
  %3 = alloca %"struct.cv::GMatDesc", align 8     ; 7 uses
  %4 = alloca %"struct.cv::GMatDesc", align 8     ; 5 uses
  %5 = alloca [1 x %"class.cv::util::variant.73"], align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  invoke void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1)
          to label %bb.b unwind label %bb.t

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx, i64 13, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !144, !noalias !1088 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !140, !noalias !1088 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ugt i64 %i.g, 9223372036854775804
  br i1 %i.h, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !61

.noexc.i.i.i.i.i:                                 ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #28
          to label %.noexc13 unwind label %bb.u

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !145, !noalias !1088 ; 2 uses
  %.pre11.i.i = load ptr, ptr %i.b, align 8, !tbaa !145, !noalias !1088
  %.pre12.i.i = ptrtoint ptr %.pre11.i.i to i64
  %.pre13.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %.noexc13, %bb.b
  %.pre-phi14.i.i = phi i64 [ %.pre13.i.i, %.noexc13 ], [ %i.f, %bb.b ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %.pre12.i.i, %.noexc13 ], [ %i.e, %bb.b ] ; 2 uses
  %i.j = phi ptr [ %.pre.i.i, %.noexc13 ], [ %i.d, %bb.b ] ; 3 uses
  %i.k = phi ptr [ %i.i, %.noexc13 ], [ null, %bb.b ] ; 8 uses
  %i.l = sub i64 %.pre-phi.i.i, %.pre-phi14.i.i   ; 9 uses
  %i.m = icmp sgt i64 %i.l, 4                     ; 2 uses
  br i1 %i.m, label %bb.e, label %bb.f, !prof !146

bb.e:                                             ; preds = %bb.d
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.k, ptr align 4 %i.j, i64 %i.l, i1 false), !noalias !1088
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.n = icmp eq i64 %i.l, 4
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = load i32, ptr %i.j, align 4, !tbaa !60, !noalias !1088
  store i32 %i.o, ptr %i.k, align 4, !tbaa !60, !noalias !1088
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !140  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !141
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #27
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !140
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.h, %bb.i
  %i.w = phi ptr [ %i.j, %bb.h ], [ %.pre, %bb.i ] ; 3 uses
  %.not.i.i.i.i14 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i14, label %_ZN2cv8GMatDescD2Ev.exit15, label %bb.j

bb.j:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !141
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #27
  br label %_ZN2cv8GMatDescD2Ev.exit15

_ZN2cv8GMatDescD2Ev.exit15:                       ; preds = %_ZN2cv8GMatDescD2Ev.exit, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store i64 1, ptr %5, align 8, !tbaa !143
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.ac, align 8
  %.sroa.6.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx32, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, i64 13, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i16 = icmp eq i64 %.pre-phi.i.i, %.pre-phi14.i.i
  br i1 %.not.i.i.i.i.i.i.i16, label %.thread, label %bb.k

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit15
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.af = getelementptr inbounds i8, ptr null, i64 %i.l ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !141
  br label %bb.o

bb.k:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit15
  %i.ah = icmp ugt i64 %i.l, 9223372036854775804
  br i1 %i.ah, label %.noexc.i.i.i.i.i18, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17, !prof !61

.noexc.i.i.i.i.i18:                               ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc19 unwind label %bb.x

.noexc19:                                         ; preds = %.noexc.i.i.i.i.i18
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17: ; preds = %bb.k
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #28
          to label %.noexc20 unwind label %bb.x   ; 5 uses

.noexc20:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17
  store ptr %i.ai, ptr %i.ad, align 8, !tbaa !140
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !144
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.l ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !141
  br i1 %i.m, label %bb.l, label %bb.m, !prof !164

bb.l:                                             ; preds = %.noexc20
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr align 4 %i.k, i64 %i.l, i1 false)
  br label %bb.o

bb.m:                                             ; preds = %.noexc20
  %i.am = icmp eq i64 %i.l, 4
  br i1 %i.am, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.an = load i32, ptr %i.k, align 4, !tbaa !60
  store i32 %i.an, ptr %i.ai, align 4, !tbaa !60
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %.thread
  %i.ao = phi ptr [ %i.ak, %bb.l ], [ %i.ak, %bb.m ], [ %i.ak, %bb.n ], [ %i.af, %.thread ]
  %i.ap = phi ptr [ %i.aj, %bb.l ], [ %i.aj, %bb.m ], [ %i.aj, %bb.n ], [ %i.ae, %.thread ]
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.aq = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread48 ; 4 uses

.thread48:                                        ; preds = %bb.o
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.aq, ptr %0, align 8, !tbaa !149
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !150
  %i.av = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %5, ptr noundef nonnull %i.as, ptr noundef nonnull %i.aq)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef 56) #27
  br label %.body

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !151
  %i.ay = load i64, ptr %5, align 8, !tbaa !143
  %i.az = getelementptr inbounds nuw [8 x i8], ptr @constinit.14, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !41
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.ba(ptr noundef nonnull %i.bb)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #26
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.not.i.i.i.i21 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i21, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.s

bb.s:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.g) #27
  br label %_ZN2cv8GMatDescD2Ev.exit22

_ZN2cv8GMatDescD2Ev.exit22:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.t:                                             ; preds = %bb.a
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv8GMatDescD2Ev.exit24

bb.u:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !140 ; 3 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i23, label %_ZN2cv8GMatDescD2Ev.exit24, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !141
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bm) #27
  br label %_ZN2cv8GMatDescD2Ev.exit24

_ZN2cv8GMatDescD2Ev.exit24:                       ; preds = %bb.v, %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.be, %bb.t ], [ %i.bf, %bb.u ], [ %i.bf, %bb.v ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !140 ; 3 uses
  %.not.i.i.i.i25 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i25, label %_ZN2cv8GMatDescD2Ev.exit26, label %bb.w

bb.w:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit24
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !141
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #27
  br label %_ZN2cv8GMatDescD2Ev.exit26

bb.x:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i17, %.noexc.i.i.i.i.i18
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body:                                            ; preds = %.thread48, %bb.p
  %i.bv = phi { ptr, i32 } [ %i.ar, %.thread48 ], [ %i.aw, %bb.p ]
  %i.bw = load i64, ptr %5, align 8, !tbaa !143
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr @constinit.14, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !41
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.by(ptr noundef nonnull %i.bz)
          to label %.loopexit unwind label %bb.y

bb.y:                                             ; preds = %.body
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #26
  unreachable

.loopexit:                                        ; preds = %.body, %bb.x
  %.pn10 = phi { ptr, i32 } [ %i.bu, %bb.x ], [ %i.bv, %.body ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.not.i.i.i.i28 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i28, label %_ZN2cv8GMatDescD2Ev.exit26, label %bb.z

bb.z:                                             ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.g) #27
  br label %_ZN2cv8GMatDescD2Ev.exit26

_ZN2cv8GMatDescD2Ev.exit26:                       ; preds = %bb.z, %.loopexit, %bb.w, %_ZN2cv8GMatDescD2Ev.exit24
  %.pn10.pn = phi { ptr, i32 } [ %.pn, %bb.w ], [ %.pn, %_ZN2cv8GMatDescD2Ev.exit24 ], [ %.pn10, %.loopexit ], [ %.pn10, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn10.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv14GKernelPackage13includeHelperINS_4gapi5fluid10GFluidAddWEEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.cv::gapi::GBackend", align 8 ; 7 uses
  %2 = alloca %"struct.cv::GKernelImpl", align 8  ; 11 uses
  %3 = alloca %"class.cv::GFluidKernel", align 8  ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"struct.std::pair", align 8        ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @_ZN2cv4gapi5fluid7backendEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::gapi::GBackend") align 8 %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZN2cv16GFluidKernelImplINS_4gapi5fluid10GFluidAddWENS1_4core5GAddWELb0EE6kernelEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::GFluidKernel") align 8 %3)
          to label %bb.b unwind label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #28
          to label %.noexc unwind label %bb.v     ; 4 uses

.noexc:                                           ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util3any11holder_implINS_12GFluidKernelEEE, i64 16), ptr %i.c, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke void @_ZN2cv12GFluidKernelC2EOS0_(ptr noundef nonnull align 8 dereferenceable(176) %i.d, ptr noundef nonnull align 8 dereferenceable(176) %3)
          to label %_ZNSt8functionIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEEC2IPSK_vEEOT_.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 184) #27
  br label %.body

_ZNSt8functionIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEEC2IPSK_vEEOT_.exit: ; preds = %.noexc
  store ptr %i.c, ptr %2, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr @_ZN2cv6detail10MetaHelperINS_4gapi4core5GAddWESt5tupleIJNS_4GMatEdS6_ddiEES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSA_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISI_EERKS9_INS_4GArgESaISN_EE, ptr %i.f, align 8, !tbaa !41
  store ptr @_ZNSt17_Function_handlerIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEPSK_E9_M_invokeERKSt9_Any_dataSE_SJ_, ptr %i.h, align 8, !tbaa !44
  store ptr @_ZNSt17_Function_handlerIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEPSK_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation, ptr %i.i, align 8, !tbaa !45
  call void @_ZN2cv12GFluidKernelD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 36, ptr %i.b, align 8, !tbaa !49
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc18 unwind label %bb.x   ; 3 uses
end_hunk_5
begin_hunk_6_@_ZN2cv4gapi5fluid11GFluidPhase3runERKNS1_4ViewES5_bRNS1_6BufferE:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !129
  %i.g = mul nsw i32 %i.f, %i.d                   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !112  ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !102
  switch i32 %i.k, label %.thread [
    i32 5, label %bb.b
    i32 6, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !112  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !102
  %i.p = icmp eq i32 %i.o, 5
  br i1 %i.p, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.r = load i32, ptr %i.q, align 8, !tbaa !119
  %i.s = sext i32 %i.r to i64
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !120
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !121
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.x = load i32, ptr %i.w, align 8, !tbaa !119
  %i.y = sext i32 %i.x to i64
  %i.z = load ptr, ptr %i.i, align 8, !tbaa !120
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.y
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !121
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !123
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !121
  tail call void @_ZN2cv3hal11fastAtan32fEPKfS2_Pfib(ptr noundef %i.v, ptr noundef %i.ab, ptr noundef %i.ad, i32 noundef %i.g, i1 noundef zeroext %2)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !112 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !102
  %i.ai = icmp eq i32 %i.ah, 6
  br i1 %i.ai, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !119
  %i.al = sext i32 %i.ak to i64
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !120
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.al
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !121
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !119
  %i.ar = sext i32 %i.aq to i64
  %i.as = load ptr, ptr %i.i, align 8, !tbaa !120
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ar
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !121
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !123
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !121
  tail call void @_ZN2cv3hal11fastAtan64fEPKdS2_Pdib(ptr noundef %i.ao, ptr noundef %i.au, ptr noundef %i.aw, i32 noundef %i.g, i1 noundef zeroext %2)
  br label %bb.h

.thread:                                          ; preds = %bb.a, %bb.b, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.63, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv4gapi5fluid9GFluidAdd3runERKNS1_4ViewES5_iRNS1_6BufferE, ptr noundef nonnull @.str.2, i32 noundef 2511) #29
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.thread
  unreachable

bb.g:                                             ; preds = %.thread
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %i.ay = load ptr, ptr %4, align 8, !tbaa !51    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !52
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %i.ax

bb.h:                                             ; preds = %bb.e, %bb.c
  ret void
}

declare void @_ZN2cv3hal11fastAtan32fEPKfS2_Pfib(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN2cv3hal11fastAtan64fEPKdS2_Pdib(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core6GPhaseESt5tupleIJNS_4GMatES6_bEES6_E15getOutMeta_implIJLi0ELi1ELi2EEEESt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSL_RKSA_INS_4GArgESaISO_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.21") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::util::bad_any_cast", align 8 ; 5 uses
  %.sroa.033 = alloca [24 x i8], align 8          ; 5 uses
  %4 = alloca %"struct.cv::GMatDesc", align 8     ; 10 uses
  %5 = alloca %"struct.cv::GMatDesc", align 8     ; 8 uses
  %6 = alloca [1 x %"class.cv::util::variant.73"], align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.033)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 1)
          to label %bb.b unwind label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !139
  %i.c = load ptr, ptr %2, align 8, !tbaa !74     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 4                   ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.g, 2
  br i1 %.not.i.i.i, label %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.12, i64 noundef 2, i64 noundef %i.g) #29
          to label %.noexc unwind label %bb.y

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i:     ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !40   ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN2cv4util8any_castIbEEPKT_PKNS0_3anyE.exit.thread.i.i.i, label %_ZN2cv4util8any_castIbEEPKT_PKNS0_3anyE.exit.i.i.i

_ZN2cv4util8any_castIbEEPKT_PKNS0_3anyE.exit.i.i.i: ; preds = %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i
  %i.k = call ptr @__dynamic_cast(ptr nonnull %i.i, ptr nonnull @_ZTIN2cv4util3any6holderE, ptr nonnull @_ZTIN2cv4util3any11holder_implIbEE, i64 0) #25
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZN2cv4util8any_castIbEEPKT_PKNS0_3anyE.exit.thread.i.i.i, label %bb.f

_ZN2cv4util8any_castIbEEPKT_PKNS0_3anyE.exit.thread.i.i.i: ; preds = %_ZN2cv4util8any_castIbEEPKT_PKNS0_3anyE.exit.i.i.i, %_ZNKSt6vectorIN2cv4GArgESaIS1_EE2atEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util12bad_any_castE, i64 16), ptr %3, align 8, !tbaa !38
  invoke void @_ZN2cv4util11throw_errorINS0_12bad_any_castEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %3) #29
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN2cv4util8any_castIbEEPKT_PKNS0_3anyE.exit.thread.i.i.i
  unreachable

bb.e:                                             ; preds = %_ZN2cv4util8any_castIbEEPKT_PKNS0_3anyE.exit.thread.i.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.body

bb.f:                                             ; preds = %_ZN2cv4util8any_castIbEEPKT_PKNS0_3anyE.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.033, ptr noundef nonnull align 8 dereferenceable(17) %4, i64 17, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !144, !noalias !1404 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !140, !noalias !1404 ; 3 uses
  %i.q = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r                       ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = icmp ugt i64 %i.s, 9223372036854775804
  br i1 %i.t, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !61

.noexc.i.i.i.i:                                   ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc15 unwind label %bb.y

.noexc15:                                         ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.g
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #28
          to label %.noexc16 unwind label %bb.y

.noexc16:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %i.m, align 8, !tbaa !145, !noalias !1404 ; 2 uses
  %.pre1.i = load ptr, ptr %i.n, align 8, !tbaa !145, !noalias !1404
  %.pre2.i = ptrtoint ptr %.pre1.i to i64
  %.pre3.i = ptrtoint ptr %.pre.i to i64
  br label %bb.h

bb.h:                                             ; preds = %.noexc16, %bb.f
  %.pre-phi4.i = phi i64 [ %.pre3.i, %.noexc16 ], [ %i.r, %bb.f ] ; 2 uses
  %.pre-phi.i = phi i64 [ %.pre2.i, %.noexc16 ], [ %i.q, %bb.f ] ; 2 uses
  %i.v = phi ptr [ %.pre.i, %.noexc16 ], [ %i.p, %bb.f ] ; 3 uses
  %i.w = phi ptr [ %i.u, %.noexc16 ], [ null, %bb.f ] ; 8 uses
  %i.x = sub i64 %.pre-phi.i, %.pre-phi4.i        ; 9 uses
  %i.y = icmp sgt i64 %i.x, 4                     ; 2 uses
  br i1 %i.y, label %bb.i, label %bb.j, !prof !146

bb.i:                                             ; preds = %bb.h
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.w, ptr align 4 %i.v, i64 %i.x, i1 false), !noalias !1404
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.z = icmp eq i64 %i.x, 4
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aa = load i32, ptr %i.v, align 4, !tbaa !60, !noalias !1404
  store i32 %i.aa, ptr %i.w, align 4, !tbaa !60, !noalias !1404
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !140 ; 3 uses
  %.not.i.i.i.i17 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i17, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !141
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #27
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !140
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.l, %bb.m
  %i.ai = phi ptr [ %i.v, %bb.l ], [ %.pre, %bb.m ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.not.i.i.i.i18 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i18, label %_ZN2cv8GMatDescD2Ev.exit19, label %bb.n

bb.n:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !141
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.an) #27
  br label %_ZN2cv8GMatDescD2Ev.exit19

_ZN2cv8GMatDescD2Ev.exit19:                       ; preds = %_ZN2cv8GMatDescD2Ev.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store i64 1, ptr %6, align 8, !tbaa !143
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.ao, ptr noundef nonnull align 8 dereferenceable(17) %.sroa.033, i64 17, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.pre-phi.i, %.pre-phi4.i
  br i1 %.not.i.i.i.i.i.i.i, label %.thread, label %bb.o

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit19
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ar = getelementptr inbounds i8, ptr null, i64 %i.x ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !141
  br label %bb.s

bb.o:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit19
  %i.at = icmp ugt i64 %i.x, 9223372036854775804
  br i1 %i.at, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !61

.noexc.i.i.i.i.i:                                 ; preds = %bb.o
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc20 unwind label %bb.ab

.noexc20:                                         ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.o
  %i.au = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #28
          to label %.noexc21 unwind label %bb.ab  ; 5 uses

.noexc21:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  store ptr %i.au, ptr %i.ap, align 8, !tbaa !140
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 4 uses
  store ptr %i.au, ptr %i.av, align 8, !tbaa !144
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.x ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !141
  br i1 %i.y, label %bb.p, label %bb.q, !prof !164

bb.p:                                             ; preds = %.noexc21
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.au, ptr align 4 %i.w, i64 %i.x, i1 false)
  br label %bb.s

bb.q:                                             ; preds = %.noexc21
  %i.ay = icmp eq i64 %i.x, 4
  br i1 %i.ay, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.az = load i32, ptr %i.w, align 4, !tbaa !60
  store i32 %i.az, ptr %i.au, align 4, !tbaa !60
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %.thread
  %i.ba = phi ptr [ %i.aw, %bb.p ], [ %i.aw, %bb.q ], [ %i.aw, %bb.r ], [ %i.ar, %.thread ]
  %i.bb = phi ptr [ %i.av, %bb.p ], [ %i.av, %bb.q ], [ %i.av, %bb.r ], [ %i.aq, %.thread ]
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.bc = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread50 ; 4 uses

.thread50:                                        ; preds = %bb.s
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body22

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %i.bc, ptr %0, align 8, !tbaa !149
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !150
  %i.bh = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %6, ptr noundef nonnull %i.be, ptr noundef nonnull %i.bc)
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef 56) #27
  br label %.body22

bb.u:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bh, ptr %i.bj, align 8, !tbaa !151
  %i.bk = load i64, ptr %6, align 8, !tbaa !143
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr @constinit.14, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !41
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 8
  invoke void %i.bm(ptr noundef nonnull %i.bn)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  call void @__clang_call_terminate(ptr %i.bp) #26
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %.not.i.i.i.i24 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i24, label %_ZN2cv8GMatDescD2Ev.exit25, label %bb.w

bb.w:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.s) #27
  br label %_ZN2cv8GMatDescD2Ev.exit25

_ZN2cv8GMatDescD2Ev.exit25:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.033)
  ret void

bb.x:                                             ; preds = %bb.a
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv8GMatDescD2Ev.exit27

bb.y:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc.i.i.i.i, %bb.c
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.y
  %eh.lpad-body = phi { ptr, i32 } [ %i.br, %bb.y ], [ %i.l, %bb.e ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !140 ; 3 uses
  %.not.i.i.i.i26 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i26, label %_ZN2cv8GMatDescD2Ev.exit27, label %bb.z

bb.z:                                             ; preds = %.body
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !141
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #27
  br label %_ZN2cv8GMatDescD2Ev.exit27

_ZN2cv8GMatDescD2Ev.exit27:                       ; preds = %bb.z, %.body, %bb.x
  %.pn = phi { ptr, i32 } [ %i.bq, %bb.x ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !140 ; 3 uses
  %.not.i.i.i.i28 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i28, label %_ZN2cv8GMatDescD2Ev.exit29, label %bb.aa

bb.aa:                                            ; preds = %_ZN2cv8GMatDescD2Ev.exit27
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !141
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.ca to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.cf) #27
  br label %_ZN2cv8GMatDescD2Ev.exit29

_ZN2cv8GMatDescD2Ev.exit29:                       ; preds = %_ZN2cv8GMatDescD2Ev.exit27, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZN2cv8GMatDescD2Ev.exit32

bb.ab:                                            ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body22:                                          ; preds = %.thread50, %bb.t
  %i.ch = phi { ptr, i32 } [ %i.bd, %.thread50 ], [ %i.bi, %bb.t ]
  %i.ci = load i64, ptr %6, align 8, !tbaa !143
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr @constinit.14, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !41
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 8
  invoke void %i.ck(ptr noundef nonnull %i.cl)
          to label %.loopexit unwind label %bb.ac

bb.ac:                                            ; preds = %.body22
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  %i.cn = extractvalue { ptr, i32 } %i.cm, 0
  call void @__clang_call_terminate(ptr %i.cn) #26
  unreachable

.loopexit:                                        ; preds = %.body22, %bb.ab
  %.pn12 = phi { ptr, i32 } [ %i.cg, %bb.ab ], [ %i.ch, %.body22 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %.not.i.i.i.i31 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i31, label %_ZN2cv8GMatDescD2Ev.exit32, label %bb.ad

bb.ad:                                            ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.s) #27
  br label %_ZN2cv8GMatDescD2Ev.exit32

_ZN2cv8GMatDescD2Ev.exit32:                       ; preds = %bb.ad, %.loopexit, %_ZN2cv8GMatDescD2Ev.exit29
  %.pn12.pn = phi { ptr, i32 } [ %.pn, %_ZN2cv8GMatDescD2Ev.exit29 ], [ %.pn12, %.loopexit ], [ %.pn12, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.033)
  resume { ptr, i32 } %.pn12.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv14GKernelPackage13includeHelperINS_4gapi5fluid10GFluidAddCEEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.cv::gapi::GBackend", align 8 ; 7 uses
  %2 = alloca %"struct.cv::GKernelImpl", align 8  ; 11 uses
  %3 = alloca %"class.cv::GFluidKernel", align 8  ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"struct.std::pair", align 8        ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @_ZN2cv4gapi5fluid7backendEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::gapi::GBackend") align 8 %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZN2cv16GFluidKernelImplINS_4gapi5fluid10GFluidAddCENS1_4core5GAddCELb1EE6kernelEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::GFluidKernel") align 8 %3)
          to label %bb.b unwind label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #28
          to label %.noexc unwind label %bb.v     ; 4 uses

.noexc:                                           ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util3any11holder_implINS_12GFluidKernelEEE, i64 16), ptr %i.c, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke void @_ZN2cv12GFluidKernelC2EOS0_(ptr noundef nonnull align 8 dereferenceable(176) %i.d, ptr noundef nonnull align 8 dereferenceable(176) %3)
          to label %_ZNSt8functionIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEEC2IPSK_vEEOT_.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 184) #27
  br label %.body

_ZNSt8functionIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEEC2IPSK_vEEOT_.exit: ; preds = %.noexc
  store ptr %i.c, ptr %2, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr @_ZN2cv6detail10MetaHelperINS_4gapi4core5GAddCESt5tupleIJNS_4GMatENS_7GScalarEiEES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EE, ptr %i.f, align 8, !tbaa !41
  store ptr @_ZNSt17_Function_handlerIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEPSK_E9_M_invokeERKSt9_Any_dataSE_SJ_, ptr %i.h, align 8, !tbaa !44
  store ptr @_ZNSt17_Function_handlerIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEPSK_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation, ptr %i.i, align 8, !tbaa !45
end_hunk_6
begin_hunk_7_@_ZN2cv6detail14scratch_helperILb1ENS_4gapi5fluid14GFluidAbsDiffCEJNS_4GMatENS_7GScalarEEE14help_init_implIJLi0ELi1EEEEvRKSt6vectorINS_4util7variantIJNSA_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISI_EERKS9_INS_4GArgESaISN_EERNS3_6BufferENS0_3SeqIJXspT_EEEE:bb.a
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #27
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void

bb.h:                                             ; preds = %bb.b, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.r, %bb.h ], [ %i.j, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !140  ; 3 uses
  %.not.i.i.i.i6 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i6, label %_ZN2cv8GMatDescD2Ev.exit7, label %bb.i

bb.i:                                             ; preds = %.body
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !141
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #27
  br label %_ZN2cv8GMatDescD2Ev.exit7

_ZN2cv8GMatDescD2Ev.exit7:                        ; preds = %.body, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv4gapi5fluid14GFluidAbsDiffC11initScratchERKNS_8GMatDescERKNS_11GScalarDescERNS1_6BufferE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.cv::GMatDesc", align 8     ; 11 uses
  %4 = alloca %"class.cv::gapi::fluid::Buffer", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store i32 5, ptr %3, align 8, !tbaa !102
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %i.a, align 4, !tbaa !129
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 4294967300, ptr %i.b, align 8, !tbaa !60
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 0, ptr %i.c, align 8, !tbaa !170
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZN2cv4gapi5fluid6BufferC1ERKNS_8GMatDescE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN2cv4gapi5fluid6BufferaSEOS2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN2cv4gapi5fluid14setScratchSizeERNS1_6BufferEi.exit unwind label %bb.d ; 0 uses

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv4gapi5fluid6BufferD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.f, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !140  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !141
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #27
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %.pn.i

_ZN2cv4gapi5fluid14setScratchSizeERNS1_6BufferEi.exit: ; preds = %bb.b
  call void @_ZN2cv4gapi5fluid6BufferD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !140  ; 3 uses
  %.not.i.i.i.i1 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i1, label %_ZN2cv8GMatDescD2Ev.exit2, label %bb.g

bb.g:                                             ; preds = %_ZN2cv4gapi5fluid14setScratchSizeERNS1_6BufferEi.exit
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !141
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #27
  br label %_ZN2cv8GMatDescD2Ev.exit2

_ZN2cv8GMatDescD2Ev.exit2:                        ; preds = %_ZN2cv4gapi5fluid14setScratchSizeERNS1_6BufferEi.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core9GAbsDiffCESt5tupleIJNS_4GMatENS_7GScalarEEES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSM_RKSB_INS_4GArgESaISP_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.21") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::util::bad_variant_access", align 8 ; 5 uses
  %.sroa.024 = alloca [24 x i8], align 8          ; 5 uses
  %4 = alloca %"struct.cv::GMatDesc", align 8     ; 10 uses
  %5 = alloca [1 x %"class.cv::util::variant.73"], align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.024)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !151
  %i.c = load ptr, ptr %1, align 8, !tbaa !149    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 56                  ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.g, 1
  br i1 %.not.i.i.i, label %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.12, i64 noundef 1, i64 noundef %i.g) #29
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !143
  %.not.i.i = icmp eq i64 %i.i, 2
  br i1 %.not.i.i, label %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util18bad_variant_accessE, i64 16), ptr %3, align 8, !tbaa !38
  invoke void @_ZN2cv4util11throw_errorINS0_18bad_variant_accessEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %3) #29
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.body

_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit: ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.024, ptr noundef nonnull align 8 dereferenceable(17) %4, i64 17, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !144, !noalias !1707 ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !140, !noalias !1707 ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit
  %i.r = icmp ugt i64 %i.q, 9223372036854775804
  br i1 %i.r, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !61

.noexc.i.i.i.i:                                   ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc10 unwind label %bb.u

.noexc10:                                         ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #28
          to label %.noexc11 unwind label %bb.u

.noexc11:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %i.k, align 8, !tbaa !145, !noalias !1707 ; 2 uses
  %.pre1.i = load ptr, ptr %i.l, align 8, !tbaa !145, !noalias !1707
  %.pre2.i = ptrtoint ptr %.pre1.i to i64
  %.pre3.i = ptrtoint ptr %.pre.i to i64
  br label %bb.g

bb.g:                                             ; preds = %.noexc11, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit
  %.pre-phi4.i = phi i64 [ %.pre3.i, %.noexc11 ], [ %i.p, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 2 uses
  %.pre-phi.i = phi i64 [ %.pre2.i, %.noexc11 ], [ %i.o, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 2 uses
  %i.t = phi ptr [ %.pre.i, %.noexc11 ], [ %i.n, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 5 uses
  %i.u = phi ptr [ %i.s, %.noexc11 ], [ null, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 8 uses
  %i.v = sub i64 %.pre-phi.i, %.pre-phi4.i        ; 9 uses
  %i.w = icmp sgt i64 %i.v, 4                     ; 2 uses
  br i1 %i.w, label %bb.h, label %bb.i, !prof !146

bb.h:                                             ; preds = %bb.g
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.u, ptr align 4 %i.t, i64 %i.v, i1 false), !noalias !1707
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.x = icmp eq i64 %i.v, 4
  br i1 %i.x, label %.thread38, label %bb.j

.thread38:                                        ; preds = %bb.i
  %i.y = load i32, ptr %i.t, align 4, !tbaa !60, !noalias !1707
  store i32 %i.y, ptr %i.u, align 4, !tbaa !60, !noalias !1707
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.thread38, %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !141
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.t to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.ad) #27
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store i64 1, ptr %5, align 8, !tbaa !143
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.ae, ptr noundef nonnull align 8 dereferenceable(17) %.sroa.024, i64 17, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.pre-phi.i, %.pre-phi4.i
  br i1 %.not.i.i.i.i.i.i.i, label %.thread, label %bb.l

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ah = getelementptr inbounds i8, ptr null, i64 %i.v ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !141
  br label %bb.p

bb.l:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.aj = icmp ugt i64 %i.v, 9223372036854775804
  br i1 %i.aj, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !61

.noexc.i.i.i.i.i:                                 ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc12 unwind label %bb.w

.noexc12:                                         ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #28
          to label %.noexc13 unwind label %bb.w   ; 5 uses

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  store ptr %i.ak, ptr %i.af, align 8, !tbaa !140
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !144
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.v ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.am, ptr %i.an, align 8, !tbaa !141
  br i1 %i.w, label %bb.m, label %bb.n, !prof !164

bb.m:                                             ; preds = %.noexc13
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ak, ptr align 4 %i.u, i64 %i.v, i1 false)
  br label %bb.p

bb.n:                                             ; preds = %.noexc13
  %i.ao = icmp eq i64 %i.v, 4
  br i1 %i.ao, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ap = load i32, ptr %i.u, align 4, !tbaa !60
  store i32 %i.ap, ptr %i.ak, align 4, !tbaa !60
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %.thread
  %i.aq = phi ptr [ %i.am, %bb.m ], [ %i.am, %bb.n ], [ %i.am, %bb.o ], [ %i.ah, %.thread ]
  %i.ar = phi ptr [ %i.al, %bb.m ], [ %i.al, %bb.n ], [ %i.al, %bb.o ], [ %i.ag, %.thread ]
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.as = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread40 ; 4 uses

.thread40:                                        ; preds = %bb.p
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body14

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.as, ptr %0, align 8, !tbaa !149
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !150
  %i.ax = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %5, ptr noundef nonnull %i.au, ptr noundef nonnull %i.as)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef 56) #27
  br label %.body14

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !151
  %i.ba = load i64, ptr %5, align 8, !tbaa !143
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr @constinit.14, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !41
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.bc(ptr noundef nonnull %i.bd)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #26
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.not.i.i.i.i16 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i16, label %_ZN2cv8GMatDescD2Ev.exit17, label %bb.t

bb.t:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.q) #27
  br label %_ZN2cv8GMatDescD2Ev.exit17

_ZN2cv8GMatDescD2Ev.exit17:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.024)
  ret void

bb.u:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc.i.i.i.i, %bb.b
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %i.bg, %bb.u ], [ %i.j, %bb.e ]
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !140 ; 3 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i18, label %_ZN2cv8GMatDescD2Ev.exit19, label %bb.v

bb.v:                                             ; preds = %.body
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !141
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bn) #27
  br label %_ZN2cv8GMatDescD2Ev.exit19

_ZN2cv8GMatDescD2Ev.exit19:                       ; preds = %.body, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZN2cv8GMatDescD2Ev.exit22

bb.w:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body14:                                          ; preds = %.thread40, %bb.q
  %i.bp = phi { ptr, i32 } [ %i.at, %.thread40 ], [ %i.ay, %bb.q ]
  %i.bq = load i64, ptr %5, align 8, !tbaa !143
  %i.br = getelementptr inbounds nuw [8 x i8], ptr @constinit.14, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !41
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.bs(ptr noundef nonnull %i.bt)
          to label %.loopexit unwind label %bb.x

bb.x:                                             ; preds = %.body14
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #26
  unreachable

.loopexit:                                        ; preds = %.body14, %bb.w
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.w ], [ %i.bp, %.body14 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.not.i.i.i.i21 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i21, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.y

bb.y:                                             ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.q) #27
  br label %_ZN2cv8GMatDescD2Ev.exit22

_ZN2cv8GMatDescD2Ev.exit22:                       ; preds = %bb.y, %.loopexit, %_ZN2cv8GMatDescD2Ev.exit19
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %_ZN2cv8GMatDescD2Ev.exit19 ], [ %.pn, %.loopexit ], [ %.pn, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.024)
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv14GKernelPackage13includeHelperINS_4gapi5fluid17GFluidCmpGTScalarEEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.cv::gapi::GBackend", align 8 ; 7 uses
  %2 = alloca %"struct.cv::GKernelImpl", align 8  ; 11 uses
  %3 = alloca %"class.cv::GFluidKernel", align 8  ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"struct.std::pair", align 8        ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @_ZN2cv4gapi5fluid7backendEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::gapi::GBackend") align 8 %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZN2cv16GFluidKernelImplINS_4gapi5fluid17GFluidCmpGTScalarENS1_4core12GCmpGTScalarELb0EE6kernelEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::GFluidKernel") align 8 %3)
          to label %bb.b unwind label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #28
          to label %.noexc unwind label %bb.v     ; 4 uses

.noexc:                                           ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util3any11holder_implINS_12GFluidKernelEEE, i64 16), ptr %i.c, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke void @_ZN2cv12GFluidKernelC2EOS0_(ptr noundef nonnull align 8 dereferenceable(176) %i.d, ptr noundef nonnull align 8 dereferenceable(176) %3)
          to label %_ZNSt8functionIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEEC2IPSK_vEEOT_.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 184) #27
  br label %.body

_ZNSt8functionIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEEC2IPSK_vEEOT_.exit: ; preds = %.noexc
  store ptr %i.c, ptr %2, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr @_ZN2cv6detail10MetaHelperINS_4gapi4core12GCmpGTScalarESt5tupleIJNS_4GMatENS_7GScalarEEES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EE, ptr %i.f, align 8, !tbaa !41
  store ptr @_ZNSt17_Function_handlerIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEPSK_E9_M_invokeERKSt9_Any_dataSE_SJ_, ptr %i.h, align 8, !tbaa !44
  store ptr @_ZNSt17_Function_handlerIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEPSK_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation, ptr %i.i, align 8, !tbaa !45
  call void @_ZN2cv12GFluidKernelD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 45, ptr %i.b, align 8, !tbaa !49
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc18 unwind label %bb.x   ; 3 uses

.noexc18:                                         ; preds = %_ZNSt8functionIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEEC2IPSK_vEEOT_.exit
  store ptr %i.k, ptr %4, align 8, !tbaa !51
  %i.l = load i64, ptr %i.b, align 8, !tbaa !49   ; 3 uses
  store i64 %i.l, ptr %i.j, align 8, !tbaa !52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(45) %i.k, ptr noundef nonnull align 1 dereferenceable(45) @.str.77, i64 45, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  store i8 0, ptr %i.n, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  invoke void @_ZN2cv14GKernelPackage9removeAPIERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.d unwind label %bb.y
end_hunk_7
begin_hunk_8_@_ZN2cv4gapi5fluid17GFluidCmpGTScalar3runERKNS1_4ViewERKNS_7Scalar_IdEERNS1_6BufferE:bb.a
  %bound0 = icmp ult ptr %i.gp, %i.io
  %bound1 = icmp ult ptr %i.gn, %i.im
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph69.i29.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count87.i28.i, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %.val27, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %index ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %wide.load = load <4 x float>, ptr %i.ip, align 4, !tbaa !135, !alias.scope !1750
  %wide.load76 = load <4 x float>, ptr %i.iq, align 4, !tbaa !135, !alias.scope !1750
  %i.ir = fpext <4 x float> %wide.load to <4 x double>
  %i.is = fpext <4 x float> %wide.load76 to <4 x double>
  %i.it = fcmp olt <4 x double> %broadcast.splat, %i.ir
  %i.iu = fcmp olt <4 x double> %broadcast.splat, %i.is
  %i.iv = sext <4 x i1> %i.it to <4 x i8>
  %i.iw = sext <4 x i1> %i.iu to <4 x i8>
  %i.ix = getelementptr inbounds nuw i8, ptr %i.gp, i64 %index ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 4
  store <4 x i8> %i.iv, ptr %i.ix, align 1, !tbaa !52, !alias.scope !1751, !noalias !1750
  store <4 x i8> %i.iw, ptr %i.iy, align 1, !tbaa !52, !alias.scope !1751, !noalias !1750
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.iz = icmp eq i64 %index.next, %n.vec
  br i1 %i.iz, label %middle.block, label %vector.body, !llvm.loop !1742

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count87.i28.i
  br i1 %cmp.n, label %_ZN2cv4gapi5fluidL7run_cmpIhhEEvRNS1_6BufferERKNS1_4ViewENS1_7CompareERKNS_7Scalar_IdEE.exit, label %.lr.ph69.i29.i.preheader

.lr.ph69.i29.i.preheader:                         ; preds = %vector.memcheck, %.lr.ph69.preheader.i27.i, %middle.block
  %indvars.iv84.i30.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph69.preheader.i27.i ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count87.i28.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph69.i29.i.prol.loopexit, label %.lr.ph69.i29.i.prol

.lr.ph69.i29.i.prol:                              ; preds = %.lr.ph69.i29.i.preheader
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv84.i30.i.ph
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !135
  %i.jc = fpext float %i.jb to double
  %i.jd = fcmp olt double %.val27, %i.jc
  %i.je = sext i1 %i.jd to i8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.gp, i64 %indvars.iv84.i30.i.ph
  store i8 %i.je, ptr %i.jf, align 1, !tbaa !52
  %indvars.iv.next85.i31.i.prol = or disjoint i64 %indvars.iv84.i30.i.ph, 1
  br label %.lr.ph69.i29.i.prol.loopexit

.lr.ph69.i29.i.prol.loopexit:                     ; preds = %.lr.ph69.i29.i.prol, %.lr.ph69.i29.i.preheader
  %indvars.iv84.i30.i.unr = phi i64 [ %indvars.iv84.i30.i.ph, %.lr.ph69.i29.i.preheader ], [ %indvars.iv.next85.i31.i.prol, %.lr.ph69.i29.i.prol ]
  %i.jg = add nsw i64 %wide.trip.count87.i28.i, -1
  %i.jh = icmp eq i64 %indvars.iv84.i30.i.ph, %i.jg
  br i1 %i.jh, label %_ZN2cv4gapi5fluidL7run_cmpIhhEEvRNS1_6BufferERKNS1_4ViewENS1_7CompareERKNS_7Scalar_IdEE.exit, label %.lr.ph69.i29.i

.lr.ph69.i29.i:                                   ; preds = %.lr.ph69.i29.i.prol.loopexit, %.lr.ph69.i29.i
  %indvars.iv84.i30.i = phi i64 [ %indvars.iv.next85.i31.i.1, %.lr.ph69.i29.i ], [ %indvars.iv84.i30.i.unr, %.lr.ph69.i29.i.prol.loopexit ] ; 4 uses
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv84.i30.i
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !135
  %i.jk = fpext float %i.jj to double
  %i.jl = fcmp olt double %.val27, %i.jk
  %i.jm = sext i1 %i.jl to i8
  %i.jn = getelementptr inbounds nuw i8, ptr %i.gp, i64 %indvars.iv84.i30.i
  store i8 %i.jm, ptr %i.jn, align 1, !tbaa !52
  %indvars.iv.next85.i31.i = add nuw nsw i64 %indvars.iv84.i30.i, 1 ; 2 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv.next85.i31.i
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !135
  %i.jq = fpext float %i.jp to double
  %i.jr = fcmp olt double %.val27, %i.jq
  %i.js = sext i1 %i.jr to i8
  %i.jt = getelementptr inbounds nuw i8, ptr %i.gp, i64 %indvars.iv.next85.i31.i
  store i8 %i.js, ptr %i.jt, align 1, !tbaa !52
  %indvars.iv.next85.i31.i.1 = add nuw nsw i64 %indvars.iv84.i30.i, 2 ; 2 uses
  %exitcond88.not.i32.i.1 = icmp eq i64 %indvars.iv.next85.i31.i.1, %wide.trip.count87.i28.i
  br i1 %exitcond88.not.i32.i.1, label %_ZN2cv4gapi5fluidL7run_cmpIhhEEvRNS1_6BufferERKNS1_4ViewENS1_7CompareERKNS_7Scalar_IdEE.exit, label %.lr.ph69.i29.i, !llvm.loop !1743

bb.l:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv4gapi5fluid9GFluidAdd3runERKNS1_4ViewES5_iRNS1_6BufferE, ptr noundef nonnull @.str.2, i32 noundef 1978) #29
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ju = landingpad { ptr, i32 }
          cleanup
  %i.jv = load ptr, ptr %3, align 8, !tbaa !51    ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.jx = icmp eq ptr %i.jv, %i.jw
  br i1 %i.jx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.jy = load i64, ptr %i.jw, align 8, !tbaa !52
  %i.jz = add i64 %i.jy, 1
  call void @_ZdlPvm(ptr noundef %i.jv, i64 noundef %i.jz) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.ju

_ZN2cv4gapi5fluidL7run_cmpIhhEEvRNS1_6BufferERKNS1_4ViewENS1_7CompareERKNS_7Scalar_IdEE.exit: ; preds = %.lr.ph69.i29.i.prol.loopexit, %.lr.ph69.i29.i, %.lr.ph69.i.i43.prol.loopexit, %.lr.ph69.i.i43, %.lr.ph69.i.i31.prol.loopexit, %.lr.ph69.i.i31, %.lr.ph71.i.i37.prol.loopexit, %.lr.ph71.i.i37, %.lr.ph69.i.i.prol.loopexit, %.lr.ph69.i.i, %.lr.ph71.i.i.prol.loopexit, %.lr.ph71.i.i, %middle.block, %middle.block97, %middle.block119, %middle.block143, %vec.epilog.middle.block, %middle.block166, %vec.epilog.middle.block181, %middle.block199, %vec.epilog.middle.block214, %bb.k, %bb.j, %bb.h, %bb.g, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core12GCmpGTScalarESt5tupleIJNS_4GMatENS_7GScalarEEES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSM_RKSB_INS_4GArgESaISP_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.21") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::util::bad_variant_access", align 8 ; 5 uses
  %.sroa.6 = alloca [20 x i8], align 4            ; 5 uses
  %4 = alloca %"struct.cv::GMatDesc", align 8     ; 7 uses
  %5 = alloca [1 x %"class.cv::util::variant.73"], align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !151
  %i.c = load ptr, ptr %1, align 8, !tbaa !149    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 56                  ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.g, 1
  br i1 %.not.i.i.i, label %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.12, i64 noundef 1, i64 noundef %i.g) #29
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !143
  %.not.i.i = icmp eq i64 %i.i, 2
  br i1 %.not.i.i, label %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util18bad_variant_accessE, i64 16), ptr %3, align 8, !tbaa !38
  invoke void @_ZN2cv4util11throw_errorINS0_18bad_variant_accessEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %3) #29
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.body

_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit: ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx, i64 13, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !144, !noalias !1756 ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !140, !noalias !1756 ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit
  %i.r = icmp ugt i64 %i.q, 9223372036854775804
  br i1 %i.r, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !61

.noexc.i.i.i.i.i:                                 ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc10 unwind label %bb.u

.noexc10:                                         ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #28
          to label %.noexc11 unwind label %bb.u

.noexc11:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !145, !noalias !1756 ; 2 uses
  %.pre11.i.i = load ptr, ptr %i.l, align 8, !tbaa !145, !noalias !1756
  %.pre12.i.i = ptrtoint ptr %.pre11.i.i to i64
  %.pre13.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.g

bb.g:                                             ; preds = %.noexc11, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit
  %.pre-phi14.i.i = phi i64 [ %.pre13.i.i, %.noexc11 ], [ %i.p, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %.pre12.i.i, %.noexc11 ], [ %i.o, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 2 uses
  %i.t = phi ptr [ %.pre.i.i, %.noexc11 ], [ %i.n, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 5 uses
  %i.u = phi ptr [ %i.s, %.noexc11 ], [ null, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 8 uses
  %i.v = sub i64 %.pre-phi.i.i, %.pre-phi14.i.i   ; 9 uses
  %i.w = icmp sgt i64 %i.v, 4                     ; 2 uses
  br i1 %i.w, label %bb.h, label %bb.i, !prof !146

bb.h:                                             ; preds = %bb.g
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.u, ptr align 4 %i.t, i64 %i.v, i1 false), !noalias !1756
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.x = icmp eq i64 %i.v, 4
  br i1 %i.x, label %.thread43, label %bb.j

.thread43:                                        ; preds = %bb.i
  %i.y = load i32, ptr %i.t, align 4, !tbaa !60, !noalias !1756
  store i32 %i.y, ptr %i.u, align 4, !tbaa !60, !noalias !1756
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.thread43, %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !141
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.t to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.ad) #27
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store i64 1, ptr %5, align 8, !tbaa !143
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.ae, align 8
  %.sroa.6.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx28, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, i64 13, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i12 = icmp eq i64 %.pre-phi.i.i, %.pre-phi14.i.i
  br i1 %.not.i.i.i.i.i.i.i12, label %.thread, label %bb.l

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ah = getelementptr inbounds i8, ptr null, i64 %i.v ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !141
  br label %bb.p

bb.l:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.aj = icmp ugt i64 %i.v, 9223372036854775804
  br i1 %i.aj, label %.noexc.i.i.i.i.i14, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13, !prof !61

.noexc.i.i.i.i.i14:                               ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc15 unwind label %bb.w

.noexc15:                                         ; preds = %.noexc.i.i.i.i.i14
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13: ; preds = %bb.l
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #28
          to label %.noexc16 unwind label %bb.w   ; 5 uses

.noexc16:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13
  store ptr %i.ak, ptr %i.af, align 8, !tbaa !140
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !144
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.v ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.am, ptr %i.an, align 8, !tbaa !141
  br i1 %i.w, label %bb.m, label %bb.n, !prof !164

bb.m:                                             ; preds = %.noexc16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ak, ptr align 4 %i.u, i64 %i.v, i1 false)
  br label %bb.p

bb.n:                                             ; preds = %.noexc16
  %i.ao = icmp eq i64 %i.v, 4
  br i1 %i.ao, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ap = load i32, ptr %i.u, align 4, !tbaa !60
  store i32 %i.ap, ptr %i.ak, align 4, !tbaa !60
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %.thread
  %i.aq = phi ptr [ %i.am, %bb.m ], [ %i.am, %bb.n ], [ %i.am, %bb.o ], [ %i.ah, %.thread ]
  %i.ar = phi ptr [ %i.al, %bb.m ], [ %i.al, %bb.n ], [ %i.al, %bb.o ], [ %i.ag, %.thread ]
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.as = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread45 ; 4 uses

.thread45:                                        ; preds = %bb.p
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body17

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.as, ptr %0, align 8, !tbaa !149
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !150
  %i.ax = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %5, ptr noundef nonnull %i.au, ptr noundef nonnull %i.as)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef 56) #27
  br label %.body17

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !151
  %i.ba = load i64, ptr %5, align 8, !tbaa !143
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr @constinit.14, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !41
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.bc(ptr noundef nonnull %i.bd)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #26
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.not.i.i.i.i19 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i19, label %_ZN2cv8GMatDescD2Ev.exit20, label %bb.t

bb.t:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.q) #27
  br label %_ZN2cv8GMatDescD2Ev.exit20

_ZN2cv8GMatDescD2Ev.exit20:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.u:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i, %bb.b
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %i.bg, %bb.u ], [ %i.j, %bb.e ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !140 ; 3 uses
  %.not.i.i.i.i21 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i21, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.v

bb.v:                                             ; preds = %.body
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !141
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bn) #27
  br label %_ZN2cv8GMatDescD2Ev.exit22

bb.w:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13, %.noexc.i.i.i.i.i14
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body17:                                          ; preds = %.thread45, %bb.q
  %i.bp = phi { ptr, i32 } [ %i.at, %.thread45 ], [ %i.ay, %bb.q ]
  %i.bq = load i64, ptr %5, align 8, !tbaa !143
  %i.br = getelementptr inbounds nuw [8 x i8], ptr @constinit.14, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !41
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.bs(ptr noundef nonnull %i.bt)
          to label %.loopexit unwind label %bb.x

bb.x:                                             ; preds = %.body17
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #26
  unreachable

.loopexit:                                        ; preds = %.body17, %bb.w
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.w ], [ %i.bp, %.body17 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.not.i.i.i.i24 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i24, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.y

bb.y:                                             ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.q) #27
  br label %_ZN2cv8GMatDescD2Ev.exit22

_ZN2cv8GMatDescD2Ev.exit22:                       ; preds = %bb.y, %.loopexit, %bb.v, %.body
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %bb.v ], [ %eh.lpad-body, %.body ], [ %.pn, %.loopexit ], [ %.pn, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv14GKernelPackage13includeHelperINS_4gapi5fluid17GFluidCmpGEScalarEEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.cv::gapi::GBackend", align 8 ; 7 uses
  %2 = alloca %"struct.cv::GKernelImpl", align 8  ; 11 uses
  %3 = alloca %"class.cv::GFluidKernel", align 8  ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"struct.std::pair", align 8        ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @_ZN2cv4gapi5fluid7backendEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::gapi::GBackend") align 8 %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZN2cv16GFluidKernelImplINS_4gapi5fluid17GFluidCmpGEScalarENS1_4core12GCmpGEScalarELb0EE6kernelEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::GFluidKernel") align 8 %3)
          to label %bb.b unwind label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #28
          to label %.noexc unwind label %bb.v     ; 4 uses

.noexc:                                           ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util3any11holder_implINS_12GFluidKernelEEE, i64 16), ptr %i.c, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke void @_ZN2cv12GFluidKernelC2EOS0_(ptr noundef nonnull align 8 dereferenceable(176) %i.d, ptr noundef nonnull align 8 dereferenceable(176) %3)
          to label %_ZNSt8functionIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEEC2IPSK_vEEOT_.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 184) #27
  br label %.body

_ZNSt8functionIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEEC2IPSK_vEEOT_.exit: ; preds = %.noexc
  store ptr %i.c, ptr %2, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr @_ZN2cv6detail10MetaHelperINS_4gapi4core12GCmpGEScalarESt5tupleIJNS_4GMatENS_7GScalarEEES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EE, ptr %i.f, align 8, !tbaa !41
  store ptr @_ZNSt17_Function_handlerIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEPSK_E9_M_invokeERKSt9_Any_dataSE_SJ_, ptr %i.h, align 8, !tbaa !44
  store ptr @_ZNSt17_Function_handlerIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEPSK_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation, ptr %i.i, align 8, !tbaa !45
  call void @_ZN2cv12GFluidKernelD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 45, ptr %i.b, align 8, !tbaa !49
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc18 unwind label %bb.x   ; 3 uses

.noexc18:                                         ; preds = %_ZNSt8functionIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEEC2IPSK_vEEOT_.exit
  store ptr %i.k, ptr %4, align 8, !tbaa !51
  %i.l = load i64, ptr %i.b, align 8, !tbaa !49   ; 3 uses
  store i64 %i.l, ptr %i.j, align 8, !tbaa !52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(45) %i.k, ptr noundef nonnull align 1 dereferenceable(45) @.str.78, i64 45, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  store i8 0, ptr %i.n, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  invoke void @_ZN2cv14GKernelPackage9removeAPIERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.d unwind label %bb.y

bb.d:                                             ; preds = %.noexc18
  %i.o = load ptr, ptr %4, align 8, !tbaa !51     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.j
end_hunk_8
begin_hunk_9_@_ZN2cv4gapi5fluid17GFluidCmpGEScalar3runERKNS1_4ViewERKNS_7Scalar_IdEERNS1_6BufferE:bb.a
  %bound0 = icmp ult ptr %i.gf, %i.ie
  %bound1 = icmp ult ptr %i.gd, %i.ic
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph73.i43.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count97.i42.i, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %.val27, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %index ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %wide.load = load <4 x float>, ptr %i.if, align 4, !tbaa !135, !alias.scope !1799
  %wide.load75 = load <4 x float>, ptr %i.ig, align 4, !tbaa !135, !alias.scope !1799
  %i.ih = fpext <4 x float> %wide.load to <4 x double>
  %i.ii = fpext <4 x float> %wide.load75 to <4 x double>
  %i.ij = fcmp ole <4 x double> %broadcast.splat, %i.ih
  %i.ik = fcmp ole <4 x double> %broadcast.splat, %i.ii
  %i.il = sext <4 x i1> %i.ij to <4 x i8>
  %i.im = sext <4 x i1> %i.ik to <4 x i8>
  %i.in = getelementptr inbounds nuw i8, ptr %i.gf, i64 %index ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 4
  store <4 x i8> %i.il, ptr %i.in, align 1, !tbaa !52, !alias.scope !1800, !noalias !1799
  store <4 x i8> %i.im, ptr %i.io, align 1, !tbaa !52, !alias.scope !1800, !noalias !1799
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ip = icmp eq i64 %index.next, %n.vec
  br i1 %i.ip, label %middle.block, label %vector.body, !llvm.loop !1791

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count97.i42.i
  br i1 %cmp.n, label %_ZN2cv4gapi5fluidL7run_cmpIhhEEvRNS1_6BufferERKNS1_4ViewENS1_7CompareERKNS_7Scalar_IdEE.exit, label %.lr.ph73.i43.i.preheader

.lr.ph73.i43.i.preheader:                         ; preds = %vector.memcheck, %.lr.ph73.preheader.i41.i, %middle.block
  %indvars.iv94.i44.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph73.preheader.i41.i ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count97.i42.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph73.i43.i.prol.loopexit, label %.lr.ph73.i43.i.prol

.lr.ph73.i43.i.prol:                              ; preds = %.lr.ph73.i43.i.preheader
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv94.i44.i.ph
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !135
  %i.is = fpext float %i.ir to double
  %i.it = fcmp ole double %.val27, %i.is
  %i.iu = sext i1 %i.it to i8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.gf, i64 %indvars.iv94.i44.i.ph
  store i8 %i.iu, ptr %i.iv, align 1, !tbaa !52
  %indvars.iv.next95.i45.i.prol = or disjoint i64 %indvars.iv94.i44.i.ph, 1
  br label %.lr.ph73.i43.i.prol.loopexit

.lr.ph73.i43.i.prol.loopexit:                     ; preds = %.lr.ph73.i43.i.prol, %.lr.ph73.i43.i.preheader
  %indvars.iv94.i44.i.unr = phi i64 [ %indvars.iv94.i44.i.ph, %.lr.ph73.i43.i.preheader ], [ %indvars.iv.next95.i45.i.prol, %.lr.ph73.i43.i.prol ]
  %i.iw = add nsw i64 %wide.trip.count97.i42.i, -1
  %i.ix = icmp eq i64 %indvars.iv94.i44.i.ph, %i.iw
  br i1 %i.ix, label %_ZN2cv4gapi5fluidL7run_cmpIhhEEvRNS1_6BufferERKNS1_4ViewENS1_7CompareERKNS_7Scalar_IdEE.exit, label %.lr.ph73.i43.i

.lr.ph73.i43.i:                                   ; preds = %.lr.ph73.i43.i.prol.loopexit, %.lr.ph73.i43.i
  %indvars.iv94.i44.i = phi i64 [ %indvars.iv.next95.i45.i.1, %.lr.ph73.i43.i ], [ %indvars.iv94.i44.i.unr, %.lr.ph73.i43.i.prol.loopexit ] ; 4 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv94.i44.i
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !135
  %i.ja = fpext float %i.iz to double
  %i.jb = fcmp ole double %.val27, %i.ja
  %i.jc = sext i1 %i.jb to i8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.gf, i64 %indvars.iv94.i44.i
  store i8 %i.jc, ptr %i.jd, align 1, !tbaa !52
  %indvars.iv.next95.i45.i = add nuw nsw i64 %indvars.iv94.i44.i, 1 ; 2 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv.next95.i45.i
  %i.jf = load float, ptr %i.je, align 4, !tbaa !135
  %i.jg = fpext float %i.jf to double
  %i.jh = fcmp ole double %.val27, %i.jg
  %i.ji = sext i1 %i.jh to i8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.gf, i64 %indvars.iv.next95.i45.i
  store i8 %i.ji, ptr %i.jj, align 1, !tbaa !52
  %indvars.iv.next95.i45.i.1 = add nuw nsw i64 %indvars.iv94.i44.i, 2 ; 2 uses
  %exitcond98.not.i46.i.1 = icmp eq i64 %indvars.iv.next95.i45.i.1, %wide.trip.count97.i42.i
  br i1 %exitcond98.not.i46.i.1, label %_ZN2cv4gapi5fluidL7run_cmpIhhEEvRNS1_6BufferERKNS1_4ViewENS1_7CompareERKNS_7Scalar_IdEE.exit, label %.lr.ph73.i43.i, !llvm.loop !1792

bb.l:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv4gapi5fluid9GFluidAdd3runERKNS1_4ViewES5_iRNS1_6BufferE, ptr noundef nonnull @.str.2, i32 noundef 1963) #29
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.jk = landingpad { ptr, i32 }
          cleanup
  %i.jl = load ptr, ptr %3, align 8, !tbaa !51    ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.jn = icmp eq ptr %i.jl, %i.jm
  br i1 %i.jn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.jo = load i64, ptr %i.jm, align 8, !tbaa !52
  %i.jp = add i64 %i.jo, 1
  call void @_ZdlPvm(ptr noundef %i.jl, i64 noundef %i.jp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.jk

_ZN2cv4gapi5fluidL7run_cmpIhhEEvRNS1_6BufferERKNS1_4ViewENS1_7CompareERKNS_7Scalar_IdEE.exit: ; preds = %.lr.ph73.i43.i.prol.loopexit, %.lr.ph73.i43.i, %.lr.ph73.i.i.prol.loopexit, %.lr.ph73.i.i, %.lr.ph73.i32.i31.prol.loopexit, %.lr.ph73.i32.i31, %.lr.ph75.i.i37.prol.loopexit, %.lr.ph75.i.i37, %.lr.ph73.i32.i.prol.loopexit, %.lr.ph73.i32.i, %.lr.ph75.i.i.prol.loopexit, %.lr.ph75.i.i, %middle.block, %middle.block96, %middle.block118, %middle.block142, %vec.epilog.middle.block, %middle.block165, %vec.epilog.middle.block180, %middle.block198, %vec.epilog.middle.block213, %bb.k, %bb.j, %bb.h, %bb.g, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core12GCmpGEScalarESt5tupleIJNS_4GMatENS_7GScalarEEES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSM_RKSB_INS_4GArgESaISP_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.21") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::util::bad_variant_access", align 8 ; 5 uses
  %.sroa.6 = alloca [20 x i8], align 4            ; 5 uses
  %4 = alloca %"struct.cv::GMatDesc", align 8     ; 7 uses
  %5 = alloca [1 x %"class.cv::util::variant.73"], align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !151
  %i.c = load ptr, ptr %1, align 8, !tbaa !149    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 56                  ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.g, 1
  br i1 %.not.i.i.i, label %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.12, i64 noundef 1, i64 noundef %i.g) #29
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !143
  %.not.i.i = icmp eq i64 %i.i, 2
  br i1 %.not.i.i, label %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util18bad_variant_accessE, i64 16), ptr %3, align 8, !tbaa !38
  invoke void @_ZN2cv4util11throw_errorINS0_18bad_variant_accessEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %3) #29
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.body

_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit: ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx, i64 13, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !144, !noalias !1805 ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !140, !noalias !1805 ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit
  %i.r = icmp ugt i64 %i.q, 9223372036854775804
  br i1 %i.r, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !61

.noexc.i.i.i.i.i:                                 ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc10 unwind label %bb.u

.noexc10:                                         ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #28
          to label %.noexc11 unwind label %bb.u

.noexc11:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !145, !noalias !1805 ; 2 uses
  %.pre11.i.i = load ptr, ptr %i.l, align 8, !tbaa !145, !noalias !1805
  %.pre12.i.i = ptrtoint ptr %.pre11.i.i to i64
  %.pre13.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.g

bb.g:                                             ; preds = %.noexc11, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit
  %.pre-phi14.i.i = phi i64 [ %.pre13.i.i, %.noexc11 ], [ %i.p, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %.pre12.i.i, %.noexc11 ], [ %i.o, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 2 uses
  %i.t = phi ptr [ %.pre.i.i, %.noexc11 ], [ %i.n, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 5 uses
  %i.u = phi ptr [ %i.s, %.noexc11 ], [ null, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 8 uses
  %i.v = sub i64 %.pre-phi.i.i, %.pre-phi14.i.i   ; 9 uses
  %i.w = icmp sgt i64 %i.v, 4                     ; 2 uses
  br i1 %i.w, label %bb.h, label %bb.i, !prof !146

bb.h:                                             ; preds = %bb.g
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.u, ptr align 4 %i.t, i64 %i.v, i1 false), !noalias !1805
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.x = icmp eq i64 %i.v, 4
  br i1 %i.x, label %.thread43, label %bb.j

.thread43:                                        ; preds = %bb.i
  %i.y = load i32, ptr %i.t, align 4, !tbaa !60, !noalias !1805
  store i32 %i.y, ptr %i.u, align 4, !tbaa !60, !noalias !1805
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.thread43, %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !141
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.t to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.ad) #27
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store i64 1, ptr %5, align 8, !tbaa !143
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.ae, align 8
  %.sroa.6.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx28, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, i64 13, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i12 = icmp eq i64 %.pre-phi.i.i, %.pre-phi14.i.i
  br i1 %.not.i.i.i.i.i.i.i12, label %.thread, label %bb.l

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ah = getelementptr inbounds i8, ptr null, i64 %i.v ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !141
  br label %bb.p

bb.l:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.aj = icmp ugt i64 %i.v, 9223372036854775804
  br i1 %i.aj, label %.noexc.i.i.i.i.i14, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13, !prof !61

.noexc.i.i.i.i.i14:                               ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc15 unwind label %bb.w

.noexc15:                                         ; preds = %.noexc.i.i.i.i.i14
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13: ; preds = %bb.l
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #28
          to label %.noexc16 unwind label %bb.w   ; 5 uses

.noexc16:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13
  store ptr %i.ak, ptr %i.af, align 8, !tbaa !140
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !144
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.v ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.am, ptr %i.an, align 8, !tbaa !141
  br i1 %i.w, label %bb.m, label %bb.n, !prof !164

bb.m:                                             ; preds = %.noexc16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ak, ptr align 4 %i.u, i64 %i.v, i1 false)
  br label %bb.p

bb.n:                                             ; preds = %.noexc16
  %i.ao = icmp eq i64 %i.v, 4
  br i1 %i.ao, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ap = load i32, ptr %i.u, align 4, !tbaa !60
  store i32 %i.ap, ptr %i.ak, align 4, !tbaa !60
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %.thread
  %i.aq = phi ptr [ %i.am, %bb.m ], [ %i.am, %bb.n ], [ %i.am, %bb.o ], [ %i.ah, %.thread ]
  %i.ar = phi ptr [ %i.al, %bb.m ], [ %i.al, %bb.n ], [ %i.al, %bb.o ], [ %i.ag, %.thread ]
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.as = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread45 ; 4 uses

.thread45:                                        ; preds = %bb.p
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body17

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.as, ptr %0, align 8, !tbaa !149
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !150
  %i.ax = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %5, ptr noundef nonnull %i.au, ptr noundef nonnull %i.as)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef 56) #27
  br label %.body17

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !151
  %i.ba = load i64, ptr %5, align 8, !tbaa !143
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr @constinit.14, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !41
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.bc(ptr noundef nonnull %i.bd)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #26
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.not.i.i.i.i19 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i19, label %_ZN2cv8GMatDescD2Ev.exit20, label %bb.t

bb.t:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.q) #27
  br label %_ZN2cv8GMatDescD2Ev.exit20

_ZN2cv8GMatDescD2Ev.exit20:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.u:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i, %bb.b
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %i.bg, %bb.u ], [ %i.j, %bb.e ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !140 ; 3 uses
  %.not.i.i.i.i21 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i21, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.v

bb.v:                                             ; preds = %.body
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !141
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bn) #27
  br label %_ZN2cv8GMatDescD2Ev.exit22

bb.w:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13, %.noexc.i.i.i.i.i14
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body17:                                          ; preds = %.thread45, %bb.q
  %i.bp = phi { ptr, i32 } [ %i.at, %.thread45 ], [ %i.ay, %bb.q ]
  %i.bq = load i64, ptr %5, align 8, !tbaa !143
  %i.br = getelementptr inbounds nuw [8 x i8], ptr @constinit.14, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !41
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.bs(ptr noundef nonnull %i.bt)
          to label %.loopexit unwind label %bb.x

bb.x:                                             ; preds = %.body17
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #26
  unreachable

.loopexit:                                        ; preds = %.body17, %bb.w
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.w ], [ %i.bp, %.body17 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.not.i.i.i.i24 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i24, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.y

bb.y:                                             ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.q) #27
  br label %_ZN2cv8GMatDescD2Ev.exit22

_ZN2cv8GMatDescD2Ev.exit22:                       ; preds = %bb.y, %.loopexit, %bb.v, %.body
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %bb.v ], [ %eh.lpad-body, %.body ], [ %.pn, %.loopexit ], [ %.pn, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv14GKernelPackage13includeHelperINS_4gapi5fluid17GFluidCmpLEScalarEEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.cv::gapi::GBackend", align 8 ; 7 uses
  %2 = alloca %"struct.cv::GKernelImpl", align 8  ; 11 uses
  %3 = alloca %"class.cv::GFluidKernel", align 8  ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"struct.std::pair", align 8        ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @_ZN2cv4gapi5fluid7backendEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::gapi::GBackend") align 8 %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZN2cv16GFluidKernelImplINS_4gapi5fluid17GFluidCmpLEScalarENS1_4core12GCmpLEScalarELb0EE6kernelEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::GFluidKernel") align 8 %3)
          to label %bb.b unwind label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #28
          to label %.noexc unwind label %bb.v     ; 4 uses

.noexc:                                           ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util3any11holder_implINS_12GFluidKernelEEE, i64 16), ptr %i.c, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke void @_ZN2cv12GFluidKernelC2EOS0_(ptr noundef nonnull align 8 dereferenceable(176) %i.d, ptr noundef nonnull align 8 dereferenceable(176) %3)
          to label %_ZNSt8functionIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEEC2IPSK_vEEOT_.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 184) #27
  br label %.body

_ZNSt8functionIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEEC2IPSK_vEEOT_.exit: ; preds = %.noexc
  store ptr %i.c, ptr %2, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr @_ZN2cv6detail10MetaHelperINS_4gapi4core12GCmpLEScalarESt5tupleIJNS_4GMatENS_7GScalarEEES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EE, ptr %i.f, align 8, !tbaa !41
  store ptr @_ZNSt17_Function_handlerIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEPSK_E9_M_invokeERKSt9_Any_dataSE_SJ_, ptr %i.h, align 8, !tbaa !44
  store ptr @_ZNSt17_Function_handlerIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEPSK_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation, ptr %i.i, align 8, !tbaa !45
  call void @_ZN2cv12GFluidKernelD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 45, ptr %i.b, align 8, !tbaa !49
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc18 unwind label %bb.x   ; 3 uses

.noexc18:                                         ; preds = %_ZNSt8functionIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEEC2IPSK_vEEOT_.exit
  store ptr %i.k, ptr %4, align 8, !tbaa !51
  %i.l = load i64, ptr %i.b, align 8, !tbaa !49   ; 3 uses
  store i64 %i.l, ptr %i.j, align 8, !tbaa !52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(45) %i.k, ptr noundef nonnull align 1 dereferenceable(45) @.str.79, i64 45, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  store i8 0, ptr %i.n, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  invoke void @_ZN2cv14GKernelPackage9removeAPIERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.d unwind label %bb.y

bb.d:                                             ; preds = %.noexc18
  %i.o = load ptr, ptr %4, align 8, !tbaa !51     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.j
end_hunk_9
begin_hunk_10_@_ZN2cv4gapi5fluid17GFluidCmpLEScalar3runERKNS1_4ViewERKNS_7Scalar_IdEERNS1_6BufferE:bb.a
  %bound0 = icmp ult ptr %i.gf, %i.ie
  %bound1 = icmp ult ptr %i.gd, %i.ic
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph71.i36.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count92.i35.i, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %.val27, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %index ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %wide.load = load <4 x float>, ptr %i.if, align 4, !tbaa !135, !alias.scope !1848
  %wide.load75 = load <4 x float>, ptr %i.ig, align 4, !tbaa !135, !alias.scope !1848
  %i.ih = fpext <4 x float> %wide.load to <4 x double>
  %i.ii = fpext <4 x float> %wide.load75 to <4 x double>
  %i.ij = fcmp oge <4 x double> %broadcast.splat, %i.ih
  %i.ik = fcmp oge <4 x double> %broadcast.splat, %i.ii
  %i.il = sext <4 x i1> %i.ij to <4 x i8>
  %i.im = sext <4 x i1> %i.ik to <4 x i8>
  %i.in = getelementptr inbounds nuw i8, ptr %i.gf, i64 %index ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 4
  store <4 x i8> %i.il, ptr %i.in, align 1, !tbaa !52, !alias.scope !1849, !noalias !1848
  store <4 x i8> %i.im, ptr %i.io, align 1, !tbaa !52, !alias.scope !1849, !noalias !1848
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ip = icmp eq i64 %index.next, %n.vec
  br i1 %i.ip, label %middle.block, label %vector.body, !llvm.loop !1840

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count92.i35.i
  br i1 %cmp.n, label %_ZN2cv4gapi5fluidL7run_cmpIhhEEvRNS1_6BufferERKNS1_4ViewENS1_7CompareERKNS_7Scalar_IdEE.exit, label %.lr.ph71.i36.i.preheader

.lr.ph71.i36.i.preheader:                         ; preds = %vector.memcheck, %.lr.ph71.preheader.i34.i, %middle.block
  %indvars.iv89.i37.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph71.preheader.i34.i ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count92.i35.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph71.i36.i.prol.loopexit, label %.lr.ph71.i36.i.prol

.lr.ph71.i36.i.prol:                              ; preds = %.lr.ph71.i36.i.preheader
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv89.i37.i.ph
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !135
  %i.is = fpext float %i.ir to double
  %i.it = fcmp oge double %.val27, %i.is
  %i.iu = sext i1 %i.it to i8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.gf, i64 %indvars.iv89.i37.i.ph
  store i8 %i.iu, ptr %i.iv, align 1, !tbaa !52
  %indvars.iv.next90.i38.i.prol = or disjoint i64 %indvars.iv89.i37.i.ph, 1
  br label %.lr.ph71.i36.i.prol.loopexit

.lr.ph71.i36.i.prol.loopexit:                     ; preds = %.lr.ph71.i36.i.prol, %.lr.ph71.i36.i.preheader
  %indvars.iv89.i37.i.unr = phi i64 [ %indvars.iv89.i37.i.ph, %.lr.ph71.i36.i.preheader ], [ %indvars.iv.next90.i38.i.prol, %.lr.ph71.i36.i.prol ]
  %i.iw = add nsw i64 %wide.trip.count92.i35.i, -1
  %i.ix = icmp eq i64 %indvars.iv89.i37.i.ph, %i.iw
  br i1 %i.ix, label %_ZN2cv4gapi5fluidL7run_cmpIhhEEvRNS1_6BufferERKNS1_4ViewENS1_7CompareERKNS_7Scalar_IdEE.exit, label %.lr.ph71.i36.i

.lr.ph71.i36.i:                                   ; preds = %.lr.ph71.i36.i.prol.loopexit, %.lr.ph71.i36.i
  %indvars.iv89.i37.i = phi i64 [ %indvars.iv.next90.i38.i.1, %.lr.ph71.i36.i ], [ %indvars.iv89.i37.i.unr, %.lr.ph71.i36.i.prol.loopexit ] ; 4 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv89.i37.i
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !135
  %i.ja = fpext float %i.iz to double
  %i.jb = fcmp oge double %.val27, %i.ja
  %i.jc = sext i1 %i.jb to i8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.gf, i64 %indvars.iv89.i37.i
  store i8 %i.jc, ptr %i.jd, align 1, !tbaa !52
  %indvars.iv.next90.i38.i = add nuw nsw i64 %indvars.iv89.i37.i, 1 ; 2 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv.next90.i38.i
  %i.jf = load float, ptr %i.je, align 4, !tbaa !135
  %i.jg = fpext float %i.jf to double
  %i.jh = fcmp oge double %.val27, %i.jg
  %i.ji = sext i1 %i.jh to i8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.gf, i64 %indvars.iv.next90.i38.i
  store i8 %i.ji, ptr %i.jj, align 1, !tbaa !52
  %indvars.iv.next90.i38.i.1 = add nuw nsw i64 %indvars.iv89.i37.i, 2 ; 2 uses
  %exitcond93.not.i39.i.1 = icmp eq i64 %indvars.iv.next90.i38.i.1, %wide.trip.count92.i35.i
  br i1 %exitcond93.not.i39.i.1, label %_ZN2cv4gapi5fluidL7run_cmpIhhEEvRNS1_6BufferERKNS1_4ViewENS1_7CompareERKNS_7Scalar_IdEE.exit, label %.lr.ph71.i36.i, !llvm.loop !1841

bb.l:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv4gapi5fluid9GFluidAdd3runERKNS1_4ViewES5_iRNS1_6BufferE, ptr noundef nonnull @.str.2, i32 noundef 1993) #29
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.jk = landingpad { ptr, i32 }
          cleanup
  %i.jl = load ptr, ptr %3, align 8, !tbaa !51    ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.jn = icmp eq ptr %i.jl, %i.jm
  br i1 %i.jn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.jo = load i64, ptr %i.jm, align 8, !tbaa !52
  %i.jp = add i64 %i.jo, 1
  call void @_ZdlPvm(ptr noundef %i.jl, i64 noundef %i.jp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.jk

_ZN2cv4gapi5fluidL7run_cmpIhhEEvRNS1_6BufferERKNS1_4ViewENS1_7CompareERKNS_7Scalar_IdEE.exit: ; preds = %.lr.ph71.i36.i.prol.loopexit, %.lr.ph71.i36.i, %.lr.ph71.i.i.prol.loopexit, %.lr.ph71.i.i, %.lr.ph71.i29.i31.prol.loopexit, %.lr.ph71.i29.i31, %.lr.ph73.i.i37.prol.loopexit, %.lr.ph73.i.i37, %.lr.ph71.i29.i.prol.loopexit, %.lr.ph71.i29.i, %.lr.ph73.i.i.prol.loopexit, %.lr.ph73.i.i, %middle.block, %middle.block96, %middle.block118, %middle.block142, %vec.epilog.middle.block, %middle.block165, %vec.epilog.middle.block180, %middle.block198, %vec.epilog.middle.block213, %bb.k, %bb.j, %bb.h, %bb.g, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core12GCmpLEScalarESt5tupleIJNS_4GMatENS_7GScalarEEES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSM_RKSB_INS_4GArgESaISP_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.21") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::util::bad_variant_access", align 8 ; 5 uses
  %.sroa.6 = alloca [20 x i8], align 4            ; 5 uses
  %4 = alloca %"struct.cv::GMatDesc", align 8     ; 7 uses
  %5 = alloca [1 x %"class.cv::util::variant.73"], align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !151
  %i.c = load ptr, ptr %1, align 8, !tbaa !149    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 56                  ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.g, 1
  br i1 %.not.i.i.i, label %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.12, i64 noundef 1, i64 noundef %i.g) #29
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !143
  %.not.i.i = icmp eq i64 %i.i, 2
  br i1 %.not.i.i, label %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util18bad_variant_accessE, i64 16), ptr %3, align 8, !tbaa !38
  invoke void @_ZN2cv4util11throw_errorINS0_18bad_variant_accessEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %3) #29
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.body

_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit: ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx, i64 13, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !144, !noalias !1854 ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !140, !noalias !1854 ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit
  %i.r = icmp ugt i64 %i.q, 9223372036854775804
  br i1 %i.r, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !61

.noexc.i.i.i.i.i:                                 ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc10 unwind label %bb.u

.noexc10:                                         ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #28
          to label %.noexc11 unwind label %bb.u

.noexc11:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !145, !noalias !1854 ; 2 uses
  %.pre11.i.i = load ptr, ptr %i.l, align 8, !tbaa !145, !noalias !1854
  %.pre12.i.i = ptrtoint ptr %.pre11.i.i to i64
  %.pre13.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.g

bb.g:                                             ; preds = %.noexc11, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit
  %.pre-phi14.i.i = phi i64 [ %.pre13.i.i, %.noexc11 ], [ %i.p, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %.pre12.i.i, %.noexc11 ], [ %i.o, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 2 uses
  %i.t = phi ptr [ %.pre.i.i, %.noexc11 ], [ %i.n, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 5 uses
  %i.u = phi ptr [ %i.s, %.noexc11 ], [ null, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 8 uses
  %i.v = sub i64 %.pre-phi.i.i, %.pre-phi14.i.i   ; 9 uses
  %i.w = icmp sgt i64 %i.v, 4                     ; 2 uses
  br i1 %i.w, label %bb.h, label %bb.i, !prof !146

bb.h:                                             ; preds = %bb.g
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.u, ptr align 4 %i.t, i64 %i.v, i1 false), !noalias !1854
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.x = icmp eq i64 %i.v, 4
  br i1 %i.x, label %.thread43, label %bb.j

.thread43:                                        ; preds = %bb.i
  %i.y = load i32, ptr %i.t, align 4, !tbaa !60, !noalias !1854
  store i32 %i.y, ptr %i.u, align 4, !tbaa !60, !noalias !1854
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.thread43, %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !141
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.t to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.ad) #27
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store i64 1, ptr %5, align 8, !tbaa !143
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.ae, align 8
  %.sroa.6.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx28, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, i64 13, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i12 = icmp eq i64 %.pre-phi.i.i, %.pre-phi14.i.i
  br i1 %.not.i.i.i.i.i.i.i12, label %.thread, label %bb.l

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ah = getelementptr inbounds i8, ptr null, i64 %i.v ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !141
  br label %bb.p

bb.l:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.aj = icmp ugt i64 %i.v, 9223372036854775804
  br i1 %i.aj, label %.noexc.i.i.i.i.i14, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13, !prof !61

.noexc.i.i.i.i.i14:                               ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc15 unwind label %bb.w

.noexc15:                                         ; preds = %.noexc.i.i.i.i.i14
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13: ; preds = %bb.l
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #28
          to label %.noexc16 unwind label %bb.w   ; 5 uses

.noexc16:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13
  store ptr %i.ak, ptr %i.af, align 8, !tbaa !140
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !144
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.v ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.am, ptr %i.an, align 8, !tbaa !141
  br i1 %i.w, label %bb.m, label %bb.n, !prof !164

bb.m:                                             ; preds = %.noexc16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ak, ptr align 4 %i.u, i64 %i.v, i1 false)
  br label %bb.p

bb.n:                                             ; preds = %.noexc16
  %i.ao = icmp eq i64 %i.v, 4
  br i1 %i.ao, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ap = load i32, ptr %i.u, align 4, !tbaa !60
  store i32 %i.ap, ptr %i.ak, align 4, !tbaa !60
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %.thread
  %i.aq = phi ptr [ %i.am, %bb.m ], [ %i.am, %bb.n ], [ %i.am, %bb.o ], [ %i.ah, %.thread ]
  %i.ar = phi ptr [ %i.al, %bb.m ], [ %i.al, %bb.n ], [ %i.al, %bb.o ], [ %i.ag, %.thread ]
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.as = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread45 ; 4 uses

.thread45:                                        ; preds = %bb.p
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body17

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.as, ptr %0, align 8, !tbaa !149
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !150
  %i.ax = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %5, ptr noundef nonnull %i.au, ptr noundef nonnull %i.as)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef 56) #27
  br label %.body17

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !151
  %i.ba = load i64, ptr %5, align 8, !tbaa !143
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr @constinit.14, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !41
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.bc(ptr noundef nonnull %i.bd)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #26
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.not.i.i.i.i19 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i19, label %_ZN2cv8GMatDescD2Ev.exit20, label %bb.t

bb.t:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.q) #27
  br label %_ZN2cv8GMatDescD2Ev.exit20

_ZN2cv8GMatDescD2Ev.exit20:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.u:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i, %bb.b
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %i.bg, %bb.u ], [ %i.j, %bb.e ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !140 ; 3 uses
  %.not.i.i.i.i21 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i21, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.v

bb.v:                                             ; preds = %.body
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !141
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bn) #27
  br label %_ZN2cv8GMatDescD2Ev.exit22

bb.w:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13, %.noexc.i.i.i.i.i14
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body17:                                          ; preds = %.thread45, %bb.q
  %i.bp = phi { ptr, i32 } [ %i.at, %.thread45 ], [ %i.ay, %bb.q ]
  %i.bq = load i64, ptr %5, align 8, !tbaa !143
  %i.br = getelementptr inbounds nuw [8 x i8], ptr @constinit.14, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !41
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.bs(ptr noundef nonnull %i.bt)
          to label %.loopexit unwind label %bb.x

bb.x:                                             ; preds = %.body17
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #26
  unreachable

.loopexit:                                        ; preds = %.body17, %bb.w
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.w ], [ %i.bp, %.body17 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.not.i.i.i.i24 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i24, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.y

bb.y:                                             ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.q) #27
  br label %_ZN2cv8GMatDescD2Ev.exit22

_ZN2cv8GMatDescD2Ev.exit22:                       ; preds = %bb.y, %.loopexit, %bb.v, %.body
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %bb.v ], [ %eh.lpad-body, %.body ], [ %.pn, %.loopexit ], [ %.pn, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv14GKernelPackage13includeHelperINS_4gapi5fluid17GFluidCmpLTScalarEEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.cv::gapi::GBackend", align 8 ; 7 uses
  %2 = alloca %"struct.cv::GKernelImpl", align 8  ; 11 uses
  %3 = alloca %"class.cv::GFluidKernel", align 8  ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"struct.std::pair", align 8        ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @_ZN2cv4gapi5fluid7backendEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::gapi::GBackend") align 8 %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZN2cv16GFluidKernelImplINS_4gapi5fluid17GFluidCmpLTScalarENS1_4core12GCmpLTScalarELb0EE6kernelEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::GFluidKernel") align 8 %3)
          to label %bb.b unwind label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #28
          to label %.noexc unwind label %bb.v     ; 4 uses

.noexc:                                           ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util3any11holder_implINS_12GFluidKernelEEE, i64 16), ptr %i.c, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke void @_ZN2cv12GFluidKernelC2EOS0_(ptr noundef nonnull align 8 dereferenceable(176) %i.d, ptr noundef nonnull align 8 dereferenceable(176) %3)
          to label %_ZNSt8functionIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEEC2IPSK_vEEOT_.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 184) #27
  br label %.body

_ZNSt8functionIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEEC2IPSK_vEEOT_.exit: ; preds = %.noexc
  store ptr %i.c, ptr %2, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr @_ZN2cv6detail10MetaHelperINS_4gapi4core12GCmpLTScalarESt5tupleIJNS_4GMatENS_7GScalarEEES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EE, ptr %i.f, align 8, !tbaa !41
  store ptr @_ZNSt17_Function_handlerIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEPSK_E9_M_invokeERKSt9_Any_dataSE_SJ_, ptr %i.h, align 8, !tbaa !44
  store ptr @_ZNSt17_Function_handlerIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEPSK_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation, ptr %i.i, align 8, !tbaa !45
  call void @_ZN2cv12GFluidKernelD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 45, ptr %i.b, align 8, !tbaa !49
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc18 unwind label %bb.x   ; 3 uses

.noexc18:                                         ; preds = %_ZNSt8functionIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEEC2IPSK_vEEOT_.exit
  store ptr %i.k, ptr %4, align 8, !tbaa !51
  %i.l = load i64, ptr %i.b, align 8, !tbaa !49   ; 3 uses
  store i64 %i.l, ptr %i.j, align 8, !tbaa !52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(45) %i.k, ptr noundef nonnull align 1 dereferenceable(45) @.str.80, i64 45, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  store i8 0, ptr %i.n, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  invoke void @_ZN2cv14GKernelPackage9removeAPIERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.d unwind label %bb.y

bb.d:                                             ; preds = %.noexc18
  %i.o = load ptr, ptr %4, align 8, !tbaa !51     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.j
end_hunk_10
begin_hunk_11_@_ZN2cv4gapi5fluid17GFluidCmpLTScalar3runERKNS1_4ViewERKNS_7Scalar_IdEERNS1_6BufferE:bb.a
  %bound0 = icmp ult ptr %i.gp, %i.io
  %bound1 = icmp ult ptr %i.gn, %i.im
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i22.i43.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i21.i42, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %.val27, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %index ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %wide.load = load <4 x float>, ptr %i.ip, align 4, !tbaa !135, !alias.scope !1897
  %wide.load82 = load <4 x float>, ptr %i.iq, align 4, !tbaa !135, !alias.scope !1897
  %i.ir = fpext <4 x float> %wide.load to <4 x double>
  %i.is = fpext <4 x float> %wide.load82 to <4 x double>
  %i.it = fcmp ogt <4 x double> %broadcast.splat, %i.ir
  %i.iu = fcmp ogt <4 x double> %broadcast.splat, %i.is
  %i.iv = sext <4 x i1> %i.it to <4 x i8>
  %i.iw = sext <4 x i1> %i.iu to <4 x i8>
  %i.ix = getelementptr inbounds nuw i8, ptr %i.gp, i64 %index ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 4
  store <4 x i8> %i.iv, ptr %i.ix, align 1, !tbaa !52, !alias.scope !1898, !noalias !1897
  store <4 x i8> %i.iw, ptr %i.iy, align 1, !tbaa !52, !alias.scope !1898, !noalias !1897
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.iz = icmp eq i64 %index.next, %n.vec
  br i1 %i.iz, label %middle.block, label %vector.body, !llvm.loop !1889

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i21.i42
  br i1 %cmp.n, label %_ZN2cv4gapi5fluidL7run_cmpIhhEEvRNS1_6BufferERKNS1_4ViewENS1_7CompareERKNS_7Scalar_IdEE.exit, label %.lr.ph.i22.i43.preheader

.lr.ph.i22.i43.preheader:                         ; preds = %vector.memcheck, %.lr.ph.preheader.i20.i41, %middle.block
  %indvars.iv.i23.i44.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i20.i41 ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count.i21.i42, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i22.i43.prol.loopexit, label %.lr.ph.i22.i43.prol

.lr.ph.i22.i43.prol:                              ; preds = %.lr.ph.i22.i43.preheader
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv.i23.i44.ph
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !135
  %i.jc = fpext float %i.jb to double
  %i.jd = fcmp ogt double %.val27, %i.jc
  %i.je = sext i1 %i.jd to i8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.gp, i64 %indvars.iv.i23.i44.ph
  store i8 %i.je, ptr %i.jf, align 1, !tbaa !52
  %indvars.iv.next.i24.i45.prol = or disjoint i64 %indvars.iv.i23.i44.ph, 1
  br label %.lr.ph.i22.i43.prol.loopexit

.lr.ph.i22.i43.prol.loopexit:                     ; preds = %.lr.ph.i22.i43.prol, %.lr.ph.i22.i43.preheader
  %indvars.iv.i23.i44.unr = phi i64 [ %indvars.iv.i23.i44.ph, %.lr.ph.i22.i43.preheader ], [ %indvars.iv.next.i24.i45.prol, %.lr.ph.i22.i43.prol ]
  %i.jg = add nsw i64 %wide.trip.count.i21.i42, -1
  %i.jh = icmp eq i64 %indvars.iv.i23.i44.ph, %i.jg
  br i1 %i.jh, label %_ZN2cv4gapi5fluidL7run_cmpIhhEEvRNS1_6BufferERKNS1_4ViewENS1_7CompareERKNS_7Scalar_IdEE.exit, label %.lr.ph.i22.i43

.lr.ph.i22.i43:                                   ; preds = %.lr.ph.i22.i43.prol.loopexit, %.lr.ph.i22.i43
  %indvars.iv.i23.i44 = phi i64 [ %indvars.iv.next.i24.i45.1, %.lr.ph.i22.i43 ], [ %indvars.iv.i23.i44.unr, %.lr.ph.i22.i43.prol.loopexit ] ; 4 uses
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv.i23.i44
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !135
  %i.jk = fpext float %i.jj to double
  %i.jl = fcmp ogt double %.val27, %i.jk
  %i.jm = sext i1 %i.jl to i8
  %i.jn = getelementptr inbounds nuw i8, ptr %i.gp, i64 %indvars.iv.i23.i44
  store i8 %i.jm, ptr %i.jn, align 1, !tbaa !52
  %indvars.iv.next.i24.i45 = add nuw nsw i64 %indvars.iv.i23.i44, 1 ; 2 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv.next.i24.i45
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !135
  %i.jq = fpext float %i.jp to double
  %i.jr = fcmp ogt double %.val27, %i.jq
  %i.js = sext i1 %i.jr to i8
  %i.jt = getelementptr inbounds nuw i8, ptr %i.gp, i64 %indvars.iv.next.i24.i45
  store i8 %i.js, ptr %i.jt, align 1, !tbaa !52
  %indvars.iv.next.i24.i45.1 = add nuw nsw i64 %indvars.iv.i23.i44, 2 ; 2 uses
  %exitcond.not.i25.i46.1 = icmp eq i64 %indvars.iv.next.i24.i45.1, %wide.trip.count.i21.i42
  br i1 %exitcond.not.i25.i46.1, label %_ZN2cv4gapi5fluidL7run_cmpIhhEEvRNS1_6BufferERKNS1_4ViewENS1_7CompareERKNS_7Scalar_IdEE.exit, label %.lr.ph.i22.i43, !llvm.loop !1890

bb.l:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv4gapi5fluid9GFluidAdd3runERKNS1_4ViewES5_iRNS1_6BufferE, ptr noundef nonnull @.str.2, i32 noundef 2008) #29
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ju = landingpad { ptr, i32 }
          cleanup
  %i.jv = load ptr, ptr %3, align 8, !tbaa !51    ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.jx = icmp eq ptr %i.jv, %i.jw
  br i1 %i.jx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.jy = load i64, ptr %i.jw, align 8, !tbaa !52
  %i.jz = add i64 %i.jy, 1
  call void @_ZdlPvm(ptr noundef %i.jv, i64 noundef %i.jz) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.ju

_ZN2cv4gapi5fluidL7run_cmpIhhEEvRNS1_6BufferERKNS1_4ViewENS1_7CompareERKNS_7Scalar_IdEE.exit: ; preds = %.lr.ph.i22.i43.prol.loopexit, %.lr.ph.i22.i43, %.lr.ph.i.i49.prol.loopexit, %.lr.ph.i.i49, %.lr.ph.i22.i31.prol.loopexit, %.lr.ph.i22.i31, %.lr.ph.i.i37.prol.loopexit, %.lr.ph.i.i37, %.lr.ph.i22.i.prol.loopexit, %.lr.ph.i22.i, %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block, %middle.block103, %middle.block125, %middle.block149, %vec.epilog.middle.block, %middle.block172, %vec.epilog.middle.block187, %middle.block205, %vec.epilog.middle.block220, %bb.k, %bb.j, %bb.h, %bb.g, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core12GCmpLTScalarESt5tupleIJNS_4GMatENS_7GScalarEEES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSM_RKSB_INS_4GArgESaISP_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.21") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::util::bad_variant_access", align 8 ; 5 uses
  %.sroa.6 = alloca [20 x i8], align 4            ; 5 uses
  %4 = alloca %"struct.cv::GMatDesc", align 8     ; 7 uses
  %5 = alloca [1 x %"class.cv::util::variant.73"], align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !151
  %i.c = load ptr, ptr %1, align 8, !tbaa !149    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 56                  ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.g, 1
  br i1 %.not.i.i.i, label %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.12, i64 noundef 1, i64 noundef %i.g) #29
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !143
  %.not.i.i = icmp eq i64 %i.i, 2
  br i1 %.not.i.i, label %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util18bad_variant_accessE, i64 16), ptr %3, align 8, !tbaa !38
  invoke void @_ZN2cv4util11throw_errorINS0_18bad_variant_accessEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %3) #29
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.body

_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit: ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx, i64 13, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !144, !noalias !1903 ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !140, !noalias !1903 ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit
  %i.r = icmp ugt i64 %i.q, 9223372036854775804
  br i1 %i.r, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !61

.noexc.i.i.i.i.i:                                 ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc10 unwind label %bb.u

.noexc10:                                         ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #28
          to label %.noexc11 unwind label %bb.u

.noexc11:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !145, !noalias !1903 ; 2 uses
  %.pre11.i.i = load ptr, ptr %i.l, align 8, !tbaa !145, !noalias !1903
  %.pre12.i.i = ptrtoint ptr %.pre11.i.i to i64
  %.pre13.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.g

bb.g:                                             ; preds = %.noexc11, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit
  %.pre-phi14.i.i = phi i64 [ %.pre13.i.i, %.noexc11 ], [ %i.p, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %.pre12.i.i, %.noexc11 ], [ %i.o, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 2 uses
  %i.t = phi ptr [ %.pre.i.i, %.noexc11 ], [ %i.n, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 5 uses
  %i.u = phi ptr [ %i.s, %.noexc11 ], [ null, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 8 uses
  %i.v = sub i64 %.pre-phi.i.i, %.pre-phi14.i.i   ; 9 uses
  %i.w = icmp sgt i64 %i.v, 4                     ; 2 uses
  br i1 %i.w, label %bb.h, label %bb.i, !prof !146

bb.h:                                             ; preds = %bb.g
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.u, ptr align 4 %i.t, i64 %i.v, i1 false), !noalias !1903
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.x = icmp eq i64 %i.v, 4
  br i1 %i.x, label %.thread43, label %bb.j

.thread43:                                        ; preds = %bb.i
  %i.y = load i32, ptr %i.t, align 4, !tbaa !60, !noalias !1903
  store i32 %i.y, ptr %i.u, align 4, !tbaa !60, !noalias !1903
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.thread43, %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !141
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.t to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.ad) #27
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store i64 1, ptr %5, align 8, !tbaa !143
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.ae, align 8
  %.sroa.6.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx28, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, i64 13, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i12 = icmp eq i64 %.pre-phi.i.i, %.pre-phi14.i.i
  br i1 %.not.i.i.i.i.i.i.i12, label %.thread, label %bb.l

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ah = getelementptr inbounds i8, ptr null, i64 %i.v ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !141
  br label %bb.p

bb.l:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.aj = icmp ugt i64 %i.v, 9223372036854775804
  br i1 %i.aj, label %.noexc.i.i.i.i.i14, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13, !prof !61

.noexc.i.i.i.i.i14:                               ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc15 unwind label %bb.w

.noexc15:                                         ; preds = %.noexc.i.i.i.i.i14
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13: ; preds = %bb.l
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #28
          to label %.noexc16 unwind label %bb.w   ; 5 uses

.noexc16:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13
  store ptr %i.ak, ptr %i.af, align 8, !tbaa !140
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !144
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.v ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.am, ptr %i.an, align 8, !tbaa !141
  br i1 %i.w, label %bb.m, label %bb.n, !prof !164

bb.m:                                             ; preds = %.noexc16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ak, ptr align 4 %i.u, i64 %i.v, i1 false)
  br label %bb.p

bb.n:                                             ; preds = %.noexc16
  %i.ao = icmp eq i64 %i.v, 4
  br i1 %i.ao, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ap = load i32, ptr %i.u, align 4, !tbaa !60
  store i32 %i.ap, ptr %i.ak, align 4, !tbaa !60
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %.thread
  %i.aq = phi ptr [ %i.am, %bb.m ], [ %i.am, %bb.n ], [ %i.am, %bb.o ], [ %i.ah, %.thread ]
  %i.ar = phi ptr [ %i.al, %bb.m ], [ %i.al, %bb.n ], [ %i.al, %bb.o ], [ %i.ag, %.thread ]
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.as = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread45 ; 4 uses

.thread45:                                        ; preds = %bb.p
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body17

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.as, ptr %0, align 8, !tbaa !149
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !150
  %i.ax = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %5, ptr noundef nonnull %i.au, ptr noundef nonnull %i.as)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef 56) #27
  br label %.body17

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !151
  %i.ba = load i64, ptr %5, align 8, !tbaa !143
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr @constinit.14, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !41
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.bc(ptr noundef nonnull %i.bd)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #26
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.not.i.i.i.i19 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i19, label %_ZN2cv8GMatDescD2Ev.exit20, label %bb.t

bb.t:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.q) #27
  br label %_ZN2cv8GMatDescD2Ev.exit20

_ZN2cv8GMatDescD2Ev.exit20:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.u:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i, %bb.b
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %i.bg, %bb.u ], [ %i.j, %bb.e ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !140 ; 3 uses
  %.not.i.i.i.i21 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i21, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.v

bb.v:                                             ; preds = %.body
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !141
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bn) #27
  br label %_ZN2cv8GMatDescD2Ev.exit22

bb.w:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13, %.noexc.i.i.i.i.i14
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body17:                                          ; preds = %.thread45, %bb.q
  %i.bp = phi { ptr, i32 } [ %i.at, %.thread45 ], [ %i.ay, %bb.q ]
  %i.bq = load i64, ptr %5, align 8, !tbaa !143
  %i.br = getelementptr inbounds nuw [8 x i8], ptr @constinit.14, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !41
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.bs(ptr noundef nonnull %i.bt)
          to label %.loopexit unwind label %bb.x

bb.x:                                             ; preds = %.body17
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #26
  unreachable

.loopexit:                                        ; preds = %.body17, %bb.w
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.w ], [ %i.bp, %.body17 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.not.i.i.i.i24 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i24, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.y

bb.y:                                             ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.q) #27
  br label %_ZN2cv8GMatDescD2Ev.exit22

_ZN2cv8GMatDescD2Ev.exit22:                       ; preds = %bb.y, %.loopexit, %bb.v, %.body
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %bb.v ], [ %eh.lpad-body, %.body ], [ %.pn, %.loopexit ], [ %.pn, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv14GKernelPackage13includeHelperINS_4gapi5fluid17GFluidCmpEQScalarEEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.cv::gapi::GBackend", align 8 ; 7 uses
  %2 = alloca %"struct.cv::GKernelImpl", align 8  ; 11 uses
  %3 = alloca %"class.cv::GFluidKernel", align 8  ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"struct.std::pair", align 8        ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @_ZN2cv4gapi5fluid7backendEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::gapi::GBackend") align 8 %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZN2cv16GFluidKernelImplINS_4gapi5fluid17GFluidCmpEQScalarENS1_4core12GCmpEQScalarELb0EE6kernelEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::GFluidKernel") align 8 %3)
          to label %bb.b unwind label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #28
          to label %.noexc unwind label %bb.v     ; 4 uses

.noexc:                                           ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util3any11holder_implINS_12GFluidKernelEEE, i64 16), ptr %i.c, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke void @_ZN2cv12GFluidKernelC2EOS0_(ptr noundef nonnull align 8 dereferenceable(176) %i.d, ptr noundef nonnull align 8 dereferenceable(176) %3)
          to label %_ZNSt8functionIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEEC2IPSK_vEEOT_.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 184) #27
  br label %.body

_ZNSt8functionIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEEC2IPSK_vEEOT_.exit: ; preds = %.noexc
  store ptr %i.c, ptr %2, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr @_ZN2cv6detail10MetaHelperINS_4gapi4core12GCmpEQScalarESt5tupleIJNS_4GMatENS_7GScalarEEES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EE, ptr %i.f, align 8, !tbaa !41
  store ptr @_ZNSt17_Function_handlerIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEPSK_E9_M_invokeERKSt9_Any_dataSE_SJ_, ptr %i.h, align 8, !tbaa !44
  store ptr @_ZNSt17_Function_handlerIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEPSK_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation, ptr %i.i, align 8, !tbaa !45
  call void @_ZN2cv12GFluidKernelD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 45, ptr %i.b, align 8, !tbaa !49
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc18 unwind label %bb.x   ; 3 uses

.noexc18:                                         ; preds = %_ZNSt8functionIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEEC2IPSK_vEEOT_.exit
  store ptr %i.k, ptr %4, align 8, !tbaa !51
  %i.l = load i64, ptr %i.b, align 8, !tbaa !49   ; 3 uses
  store i64 %i.l, ptr %i.j, align 8, !tbaa !52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(45) %i.k, ptr noundef nonnull align 1 dereferenceable(45) @.str.81, i64 45, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  store i8 0, ptr %i.n, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  invoke void @_ZN2cv14GKernelPackage9removeAPIERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.d unwind label %bb.y

bb.d:                                             ; preds = %.noexc18
  %i.o = load ptr, ptr %4, align 8, !tbaa !51     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.j
end_hunk_11
begin_hunk_12_@_ZN2cv4gapi5fluid17GFluidCmpEQScalar3runERKNS1_4ViewERKNS_7Scalar_IdEERNS1_6BufferE:bb.a
  %bound0 = icmp ult ptr %i.gp, %i.io
  %bound1 = icmp ult ptr %i.gn, %i.im
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph77.i57.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count107.i56.i, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %.val27, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %index ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %wide.load = load <4 x float>, ptr %i.ip, align 4, !tbaa !135, !alias.scope !1946
  %wide.load74 = load <4 x float>, ptr %i.iq, align 4, !tbaa !135, !alias.scope !1946
  %i.ir = fpext <4 x float> %wide.load to <4 x double>
  %i.is = fpext <4 x float> %wide.load74 to <4 x double>
  %i.it = fcmp oeq <4 x double> %broadcast.splat, %i.ir
  %i.iu = fcmp oeq <4 x double> %broadcast.splat, %i.is
  %i.iv = sext <4 x i1> %i.it to <4 x i8>
  %i.iw = sext <4 x i1> %i.iu to <4 x i8>
  %i.ix = getelementptr inbounds nuw i8, ptr %i.gp, i64 %index ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 4
  store <4 x i8> %i.iv, ptr %i.ix, align 1, !tbaa !52, !alias.scope !1947, !noalias !1946
  store <4 x i8> %i.iw, ptr %i.iy, align 1, !tbaa !52, !alias.scope !1947, !noalias !1946
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.iz = icmp eq i64 %index.next, %n.vec
  br i1 %i.iz, label %middle.block, label %vector.body, !llvm.loop !1938

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count107.i56.i
  br i1 %cmp.n, label %_ZN2cv4gapi5fluidL7run_cmpIhhEEvRNS1_6BufferERKNS1_4ViewENS1_7CompareERKNS_7Scalar_IdEE.exit, label %.lr.ph77.i57.i.preheader

.lr.ph77.i57.i.preheader:                         ; preds = %vector.memcheck, %.lr.ph77.preheader.i55.i, %middle.block
  %indvars.iv104.i58.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph77.preheader.i55.i ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count107.i56.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph77.i57.i.prol.loopexit, label %.lr.ph77.i57.i.prol

.lr.ph77.i57.i.prol:                              ; preds = %.lr.ph77.i57.i.preheader
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv104.i58.i.ph
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !135
  %i.jc = fpext float %i.jb to double
  %i.jd = fcmp oeq double %.val27, %i.jc
  %i.je = sext i1 %i.jd to i8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.gp, i64 %indvars.iv104.i58.i.ph
  store i8 %i.je, ptr %i.jf, align 1, !tbaa !52
  %indvars.iv.next105.i59.i.prol = or disjoint i64 %indvars.iv104.i58.i.ph, 1
  br label %.lr.ph77.i57.i.prol.loopexit

.lr.ph77.i57.i.prol.loopexit:                     ; preds = %.lr.ph77.i57.i.prol, %.lr.ph77.i57.i.preheader
  %indvars.iv104.i58.i.unr = phi i64 [ %indvars.iv104.i58.i.ph, %.lr.ph77.i57.i.preheader ], [ %indvars.iv.next105.i59.i.prol, %.lr.ph77.i57.i.prol ]
  %i.jg = add nsw i64 %wide.trip.count107.i56.i, -1
  %i.jh = icmp eq i64 %indvars.iv104.i58.i.ph, %i.jg
  br i1 %i.jh, label %_ZN2cv4gapi5fluidL7run_cmpIhhEEvRNS1_6BufferERKNS1_4ViewENS1_7CompareERKNS_7Scalar_IdEE.exit, label %.lr.ph77.i57.i

.lr.ph77.i57.i:                                   ; preds = %.lr.ph77.i57.i.prol.loopexit, %.lr.ph77.i57.i
  %indvars.iv104.i58.i = phi i64 [ %indvars.iv.next105.i59.i.1, %.lr.ph77.i57.i ], [ %indvars.iv104.i58.i.unr, %.lr.ph77.i57.i.prol.loopexit ] ; 4 uses
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv104.i58.i
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !135
  %i.jk = fpext float %i.jj to double
  %i.jl = fcmp oeq double %.val27, %i.jk
  %i.jm = sext i1 %i.jl to i8
  %i.jn = getelementptr inbounds nuw i8, ptr %i.gp, i64 %indvars.iv104.i58.i
  store i8 %i.jm, ptr %i.jn, align 1, !tbaa !52
  %indvars.iv.next105.i59.i = add nuw nsw i64 %indvars.iv104.i58.i, 1 ; 2 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv.next105.i59.i
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !135
  %i.jq = fpext float %i.jp to double
  %i.jr = fcmp oeq double %.val27, %i.jq
  %i.js = sext i1 %i.jr to i8
  %i.jt = getelementptr inbounds nuw i8, ptr %i.gp, i64 %indvars.iv.next105.i59.i
  store i8 %i.js, ptr %i.jt, align 1, !tbaa !52
  %indvars.iv.next105.i59.i.1 = add nuw nsw i64 %indvars.iv104.i58.i, 2 ; 2 uses
  %exitcond108.not.i60.i.1 = icmp eq i64 %indvars.iv.next105.i59.i.1, %wide.trip.count107.i56.i
  br i1 %exitcond108.not.i60.i.1, label %_ZN2cv4gapi5fluidL7run_cmpIhhEEvRNS1_6BufferERKNS1_4ViewENS1_7CompareERKNS_7Scalar_IdEE.exit, label %.lr.ph77.i57.i, !llvm.loop !1939

bb.l:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv4gapi5fluid9GFluidAdd3runERKNS1_4ViewES5_iRNS1_6BufferE, ptr noundef nonnull @.str.2, i32 noundef 1933) #29
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ju = landingpad { ptr, i32 }
          cleanup
  %i.jv = load ptr, ptr %3, align 8, !tbaa !51    ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.jx = icmp eq ptr %i.jv, %i.jw
  br i1 %i.jx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.jy = load i64, ptr %i.jw, align 8, !tbaa !52
  %i.jz = add i64 %i.jy, 1
  call void @_ZdlPvm(ptr noundef %i.jv, i64 noundef %i.jz) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.ju

_ZN2cv4gapi5fluidL7run_cmpIhhEEvRNS1_6BufferERKNS1_4ViewENS1_7CompareERKNS_7Scalar_IdEE.exit: ; preds = %.lr.ph77.i57.i.prol.loopexit, %.lr.ph77.i57.i, %.lr.ph77.i.i.prol.loopexit, %.lr.ph77.i.i, %.lr.ph77.i37.i31.prol.loopexit, %.lr.ph77.i37.i31, %.lr.ph79.i.i37.prol.loopexit, %.lr.ph79.i.i37, %.lr.ph77.i37.i.prol.loopexit, %.lr.ph77.i37.i, %.lr.ph79.i.i.prol.loopexit, %.lr.ph79.i.i, %middle.block, %middle.block95, %middle.block117, %middle.block141, %vec.epilog.middle.block, %middle.block164, %vec.epilog.middle.block179, %middle.block197, %vec.epilog.middle.block212, %bb.k, %bb.j, %bb.h, %bb.g, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core12GCmpEQScalarESt5tupleIJNS_4GMatENS_7GScalarEEES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSM_RKSB_INS_4GArgESaISP_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.21") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::util::bad_variant_access", align 8 ; 5 uses
  %.sroa.6 = alloca [20 x i8], align 4            ; 5 uses
  %4 = alloca %"struct.cv::GMatDesc", align 8     ; 7 uses
  %5 = alloca [1 x %"class.cv::util::variant.73"], align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !151
  %i.c = load ptr, ptr %1, align 8, !tbaa !149    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 56                  ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.g, 1
  br i1 %.not.i.i.i, label %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.12, i64 noundef 1, i64 noundef %i.g) #29
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !143
  %.not.i.i = icmp eq i64 %i.i, 2
  br i1 %.not.i.i, label %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util18bad_variant_accessE, i64 16), ptr %3, align 8, !tbaa !38
  invoke void @_ZN2cv4util11throw_errorINS0_18bad_variant_accessEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %3) #29
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.body

_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit: ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx, i64 13, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !144, !noalias !1952 ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !140, !noalias !1952 ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit
  %i.r = icmp ugt i64 %i.q, 9223372036854775804
  br i1 %i.r, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !61

.noexc.i.i.i.i.i:                                 ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc10 unwind label %bb.u

.noexc10:                                         ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #28
          to label %.noexc11 unwind label %bb.u

.noexc11:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !145, !noalias !1952 ; 2 uses
  %.pre11.i.i = load ptr, ptr %i.l, align 8, !tbaa !145, !noalias !1952
  %.pre12.i.i = ptrtoint ptr %.pre11.i.i to i64
  %.pre13.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.g

bb.g:                                             ; preds = %.noexc11, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit
  %.pre-phi14.i.i = phi i64 [ %.pre13.i.i, %.noexc11 ], [ %i.p, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %.pre12.i.i, %.noexc11 ], [ %i.o, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 2 uses
  %i.t = phi ptr [ %.pre.i.i, %.noexc11 ], [ %i.n, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 5 uses
  %i.u = phi ptr [ %i.s, %.noexc11 ], [ null, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 8 uses
  %i.v = sub i64 %.pre-phi.i.i, %.pre-phi14.i.i   ; 9 uses
  %i.w = icmp sgt i64 %i.v, 4                     ; 2 uses
  br i1 %i.w, label %bb.h, label %bb.i, !prof !146

bb.h:                                             ; preds = %bb.g
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.u, ptr align 4 %i.t, i64 %i.v, i1 false), !noalias !1952
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.x = icmp eq i64 %i.v, 4
  br i1 %i.x, label %.thread43, label %bb.j

.thread43:                                        ; preds = %bb.i
  %i.y = load i32, ptr %i.t, align 4, !tbaa !60, !noalias !1952
  store i32 %i.y, ptr %i.u, align 4, !tbaa !60, !noalias !1952
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.thread43, %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !141
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.t to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.ad) #27
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store i64 1, ptr %5, align 8, !tbaa !143
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.ae, align 8
  %.sroa.6.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx28, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, i64 13, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i12 = icmp eq i64 %.pre-phi.i.i, %.pre-phi14.i.i
  br i1 %.not.i.i.i.i.i.i.i12, label %.thread, label %bb.l

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ah = getelementptr inbounds i8, ptr null, i64 %i.v ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !141
  br label %bb.p

bb.l:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.aj = icmp ugt i64 %i.v, 9223372036854775804
  br i1 %i.aj, label %.noexc.i.i.i.i.i14, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13, !prof !61

.noexc.i.i.i.i.i14:                               ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc15 unwind label %bb.w

.noexc15:                                         ; preds = %.noexc.i.i.i.i.i14
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13: ; preds = %bb.l
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #28
          to label %.noexc16 unwind label %bb.w   ; 5 uses

.noexc16:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13
  store ptr %i.ak, ptr %i.af, align 8, !tbaa !140
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !144
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.v ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.am, ptr %i.an, align 8, !tbaa !141
  br i1 %i.w, label %bb.m, label %bb.n, !prof !164

bb.m:                                             ; preds = %.noexc16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ak, ptr align 4 %i.u, i64 %i.v, i1 false)
  br label %bb.p

bb.n:                                             ; preds = %.noexc16
  %i.ao = icmp eq i64 %i.v, 4
  br i1 %i.ao, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ap = load i32, ptr %i.u, align 4, !tbaa !60
  store i32 %i.ap, ptr %i.ak, align 4, !tbaa !60
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %.thread
  %i.aq = phi ptr [ %i.am, %bb.m ], [ %i.am, %bb.n ], [ %i.am, %bb.o ], [ %i.ah, %.thread ]
  %i.ar = phi ptr [ %i.al, %bb.m ], [ %i.al, %bb.n ], [ %i.al, %bb.o ], [ %i.ag, %.thread ]
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.as = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread45 ; 4 uses

.thread45:                                        ; preds = %bb.p
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body17

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.as, ptr %0, align 8, !tbaa !149
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !150
  %i.ax = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %5, ptr noundef nonnull %i.au, ptr noundef nonnull %i.as)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef 56) #27
  br label %.body17

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !151
  %i.ba = load i64, ptr %5, align 8, !tbaa !143
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr @constinit.14, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !41
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.bc(ptr noundef nonnull %i.bd)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #26
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.not.i.i.i.i19 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i19, label %_ZN2cv8GMatDescD2Ev.exit20, label %bb.t

bb.t:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.q) #27
  br label %_ZN2cv8GMatDescD2Ev.exit20

_ZN2cv8GMatDescD2Ev.exit20:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.u:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i, %bb.b
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %i.bg, %bb.u ], [ %i.j, %bb.e ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !140 ; 3 uses
  %.not.i.i.i.i21 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i21, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.v

bb.v:                                             ; preds = %.body
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !141
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bn) #27
  br label %_ZN2cv8GMatDescD2Ev.exit22

bb.w:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13, %.noexc.i.i.i.i.i14
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body17:                                          ; preds = %.thread45, %bb.q
  %i.bp = phi { ptr, i32 } [ %i.at, %.thread45 ], [ %i.ay, %bb.q ]
  %i.bq = load i64, ptr %5, align 8, !tbaa !143
  %i.br = getelementptr inbounds nuw [8 x i8], ptr @constinit.14, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !41
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.bs(ptr noundef nonnull %i.bt)
          to label %.loopexit unwind label %bb.x

bb.x:                                             ; preds = %.body17
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #26
  unreachable

.loopexit:                                        ; preds = %.body17, %bb.w
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.w ], [ %i.bp, %.body17 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.not.i.i.i.i24 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i24, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.y

bb.y:                                             ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.q) #27
  br label %_ZN2cv8GMatDescD2Ev.exit22

_ZN2cv8GMatDescD2Ev.exit22:                       ; preds = %bb.y, %.loopexit, %bb.v, %.body
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %bb.v ], [ %eh.lpad-body, %.body ], [ %.pn, %.loopexit ], [ %.pn, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv14GKernelPackage13includeHelperINS_4gapi5fluid17GFluidCmpNEScalarEEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.cv::gapi::GBackend", align 8 ; 7 uses
  %2 = alloca %"struct.cv::GKernelImpl", align 8  ; 11 uses
  %3 = alloca %"class.cv::GFluidKernel", align 8  ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"struct.std::pair", align 8        ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @_ZN2cv4gapi5fluid7backendEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::gapi::GBackend") align 8 %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZN2cv16GFluidKernelImplINS_4gapi5fluid17GFluidCmpNEScalarENS1_4core12GCmpNEScalarELb0EE6kernelEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::GFluidKernel") align 8 %3)
          to label %bb.b unwind label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #28
          to label %.noexc unwind label %bb.v     ; 4 uses

.noexc:                                           ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util3any11holder_implINS_12GFluidKernelEEE, i64 16), ptr %i.c, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke void @_ZN2cv12GFluidKernelC2EOS0_(ptr noundef nonnull align 8 dereferenceable(176) %i.d, ptr noundef nonnull align 8 dereferenceable(176) %3)
          to label %_ZNSt8functionIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEEC2IPSK_vEEOT_.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 184) #27
  br label %.body

_ZNSt8functionIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEEC2IPSK_vEEOT_.exit: ; preds = %.noexc
  store ptr %i.c, ptr %2, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr @_ZN2cv6detail10MetaHelperINS_4gapi4core12GCmpNEScalarESt5tupleIJNS_4GMatENS_7GScalarEEES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EE, ptr %i.f, align 8, !tbaa !41
  store ptr @_ZNSt17_Function_handlerIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEPSK_E9_M_invokeERKSt9_Any_dataSE_SJ_, ptr %i.h, align 8, !tbaa !44
  store ptr @_ZNSt17_Function_handlerIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEPSK_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation, ptr %i.i, align 8, !tbaa !45
  call void @_ZN2cv12GFluidKernelD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 45, ptr %i.b, align 8, !tbaa !49
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc18 unwind label %bb.x   ; 3 uses

.noexc18:                                         ; preds = %_ZNSt8functionIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEEC2IPSK_vEEOT_.exit
  store ptr %i.k, ptr %4, align 8, !tbaa !51
  %i.l = load i64, ptr %i.b, align 8, !tbaa !49   ; 3 uses
  store i64 %i.l, ptr %i.j, align 8, !tbaa !52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(45) %i.k, ptr noundef nonnull align 1 dereferenceable(45) @.str.82, i64 45, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  store i8 0, ptr %i.n, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  invoke void @_ZN2cv14GKernelPackage9removeAPIERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.d unwind label %bb.y

bb.d:                                             ; preds = %.noexc18
  %i.o = load ptr, ptr %4, align 8, !tbaa !51     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.j
end_hunk_12
begin_hunk_13_@_ZN2cv4gapi5fluid17GFluidCmpNEScalar3runERKNS1_4ViewERKNS_7Scalar_IdEERNS1_6BufferE:bb.a
  %bound0 = icmp ult ptr %i.gf, %i.ie
  %bound1 = icmp ult ptr %i.gd, %i.ic
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph75.i50.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count102.i49.i, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %.val27, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %index ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %wide.load = load <4 x float>, ptr %i.if, align 4, !tbaa !135, !alias.scope !1995
  %wide.load75 = load <4 x float>, ptr %i.ig, align 4, !tbaa !135, !alias.scope !1995
  %i.ih = fpext <4 x float> %wide.load to <4 x double>
  %i.ii = fpext <4 x float> %wide.load75 to <4 x double>
  %i.ij = fcmp une <4 x double> %broadcast.splat, %i.ih
  %i.ik = fcmp une <4 x double> %broadcast.splat, %i.ii
  %i.il = sext <4 x i1> %i.ij to <4 x i8>
  %i.im = sext <4 x i1> %i.ik to <4 x i8>
  %i.in = getelementptr inbounds nuw i8, ptr %i.gf, i64 %index ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 4
  store <4 x i8> %i.il, ptr %i.in, align 1, !tbaa !52, !alias.scope !1996, !noalias !1995
  store <4 x i8> %i.im, ptr %i.io, align 1, !tbaa !52, !alias.scope !1996, !noalias !1995
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ip = icmp eq i64 %index.next, %n.vec
  br i1 %i.ip, label %middle.block, label %vector.body, !llvm.loop !1987

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count102.i49.i
  br i1 %cmp.n, label %_ZN2cv4gapi5fluidL7run_cmpIhhEEvRNS1_6BufferERKNS1_4ViewENS1_7CompareERKNS_7Scalar_IdEE.exit, label %.lr.ph75.i50.i.preheader

.lr.ph75.i50.i.preheader:                         ; preds = %vector.memcheck, %.lr.ph75.preheader.i48.i, %middle.block
  %indvars.iv99.i51.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph75.preheader.i48.i ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count102.i49.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph75.i50.i.prol.loopexit, label %.lr.ph75.i50.i.prol

.lr.ph75.i50.i.prol:                              ; preds = %.lr.ph75.i50.i.preheader
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv99.i51.i.ph
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !135
  %i.is = fpext float %i.ir to double
  %i.it = fcmp une double %.val27, %i.is
  %i.iu = sext i1 %i.it to i8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.gf, i64 %indvars.iv99.i51.i.ph
  store i8 %i.iu, ptr %i.iv, align 1, !tbaa !52
  %indvars.iv.next100.i52.i.prol = or disjoint i64 %indvars.iv99.i51.i.ph, 1
  br label %.lr.ph75.i50.i.prol.loopexit

.lr.ph75.i50.i.prol.loopexit:                     ; preds = %.lr.ph75.i50.i.prol, %.lr.ph75.i50.i.preheader
  %indvars.iv99.i51.i.unr = phi i64 [ %indvars.iv99.i51.i.ph, %.lr.ph75.i50.i.preheader ], [ %indvars.iv.next100.i52.i.prol, %.lr.ph75.i50.i.prol ]
  %i.iw = add nsw i64 %wide.trip.count102.i49.i, -1
  %i.ix = icmp eq i64 %indvars.iv99.i51.i.ph, %i.iw
  br i1 %i.ix, label %_ZN2cv4gapi5fluidL7run_cmpIhhEEvRNS1_6BufferERKNS1_4ViewENS1_7CompareERKNS_7Scalar_IdEE.exit, label %.lr.ph75.i50.i

.lr.ph75.i50.i:                                   ; preds = %.lr.ph75.i50.i.prol.loopexit, %.lr.ph75.i50.i
  %indvars.iv99.i51.i = phi i64 [ %indvars.iv.next100.i52.i.1, %.lr.ph75.i50.i ], [ %indvars.iv99.i51.i.unr, %.lr.ph75.i50.i.prol.loopexit ] ; 4 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv99.i51.i
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !135
  %i.ja = fpext float %i.iz to double
  %i.jb = fcmp une double %.val27, %i.ja
  %i.jc = sext i1 %i.jb to i8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.gf, i64 %indvars.iv99.i51.i
  store i8 %i.jc, ptr %i.jd, align 1, !tbaa !52
  %indvars.iv.next100.i52.i = add nuw nsw i64 %indvars.iv99.i51.i, 1 ; 2 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv.next100.i52.i
  %i.jf = load float, ptr %i.je, align 4, !tbaa !135
  %i.jg = fpext float %i.jf to double
  %i.jh = fcmp une double %.val27, %i.jg
  %i.ji = sext i1 %i.jh to i8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.gf, i64 %indvars.iv.next100.i52.i
  store i8 %i.ji, ptr %i.jj, align 1, !tbaa !52
  %indvars.iv.next100.i52.i.1 = add nuw nsw i64 %indvars.iv99.i51.i, 2 ; 2 uses
  %exitcond103.not.i53.i.1 = icmp eq i64 %indvars.iv.next100.i52.i.1, %wide.trip.count102.i49.i
  br i1 %exitcond103.not.i53.i.1, label %_ZN2cv4gapi5fluidL7run_cmpIhhEEvRNS1_6BufferERKNS1_4ViewENS1_7CompareERKNS_7Scalar_IdEE.exit, label %.lr.ph75.i50.i, !llvm.loop !1988

bb.l:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv4gapi5fluid9GFluidAdd3runERKNS1_4ViewES5_iRNS1_6BufferE, ptr noundef nonnull @.str.2, i32 noundef 1948) #29
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.jk = landingpad { ptr, i32 }
          cleanup
  %i.jl = load ptr, ptr %3, align 8, !tbaa !51    ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.jn = icmp eq ptr %i.jl, %i.jm
  br i1 %i.jn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.jo = load i64, ptr %i.jm, align 8, !tbaa !52
  %i.jp = add i64 %i.jo, 1
  call void @_ZdlPvm(ptr noundef %i.jl, i64 noundef %i.jp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.jk

_ZN2cv4gapi5fluidL7run_cmpIhhEEvRNS1_6BufferERKNS1_4ViewENS1_7CompareERKNS_7Scalar_IdEE.exit: ; preds = %.lr.ph75.i50.i.prol.loopexit, %.lr.ph75.i50.i, %.lr.ph75.i.i.prol.loopexit, %.lr.ph75.i.i, %.lr.ph75.i34.i31.prol.loopexit, %.lr.ph75.i34.i31, %.lr.ph77.i.i37.prol.loopexit, %.lr.ph77.i.i37, %.lr.ph75.i34.i.prol.loopexit, %.lr.ph75.i34.i, %.lr.ph77.i.i.prol.loopexit, %.lr.ph77.i.i, %middle.block, %middle.block96, %middle.block118, %middle.block142, %vec.epilog.middle.block, %middle.block165, %vec.epilog.middle.block180, %middle.block198, %vec.epilog.middle.block213, %bb.k, %bb.j, %bb.h, %bb.g, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core12GCmpNEScalarESt5tupleIJNS_4GMatENS_7GScalarEEES6_E15getOutMeta_implIJLi0ELi1EEEESt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSM_RKSB_INS_4GArgESaISP_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.21") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::util::bad_variant_access", align 8 ; 5 uses
  %.sroa.6 = alloca [20 x i8], align 4            ; 5 uses
  %4 = alloca %"struct.cv::GMatDesc", align 8     ; 7 uses
  %5 = alloca [1 x %"class.cv::util::variant.73"], align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !151
  %i.c = load ptr, ptr %1, align 8, !tbaa !149    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 56                  ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.g, 1
  br i1 %.not.i.i.i, label %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.12, i64 noundef 1, i64 noundef %i.g) #29
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !143
  %.not.i.i = icmp eq i64 %i.i, 2
  br i1 %.not.i.i, label %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util18bad_variant_accessE, i64 16), ptr %3, align 8, !tbaa !38
  invoke void @_ZN2cv4util11throw_errorINS0_18bad_variant_accessEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %3) #29
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.body

_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit: ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx, i64 13, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !144, !noalias !2001 ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !140, !noalias !2001 ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit
  %i.r = icmp ugt i64 %i.q, 9223372036854775804
  br i1 %i.r, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !61

.noexc.i.i.i.i.i:                                 ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc10 unwind label %bb.u

.noexc10:                                         ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #28
          to label %.noexc11 unwind label %bb.u

.noexc11:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !145, !noalias !2001 ; 2 uses
  %.pre11.i.i = load ptr, ptr %i.l, align 8, !tbaa !145, !noalias !2001
  %.pre12.i.i = ptrtoint ptr %.pre11.i.i to i64
  %.pre13.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.g

bb.g:                                             ; preds = %.noexc11, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit
  %.pre-phi14.i.i = phi i64 [ %.pre13.i.i, %.noexc11 ], [ %i.p, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %.pre12.i.i, %.noexc11 ], [ %i.o, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 2 uses
  %i.t = phi ptr [ %.pre.i.i, %.noexc11 ], [ %i.n, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 5 uses
  %i.u = phi ptr [ %i.s, %.noexc11 ], [ null, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ] ; 8 uses
  %i.v = sub i64 %.pre-phi.i.i, %.pre-phi14.i.i   ; 9 uses
  %i.w = icmp sgt i64 %i.v, 4                     ; 2 uses
  br i1 %i.w, label %bb.h, label %bb.i, !prof !146

bb.h:                                             ; preds = %bb.g
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.u, ptr align 4 %i.t, i64 %i.v, i1 false), !noalias !2001
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.x = icmp eq i64 %i.v, 4
  br i1 %i.x, label %.thread43, label %bb.j

.thread43:                                        ; preds = %bb.i
  %i.y = load i32, ptr %i.t, align 4, !tbaa !60, !noalias !2001
  store i32 %i.y, ptr %i.u, align 4, !tbaa !60, !noalias !2001
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.thread43, %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !141
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.t to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.ad) #27
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store i64 1, ptr %5, align 8, !tbaa !143
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.ae, align 8
  %.sroa.6.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6.0..sroa_idx28, ptr noundef nonnull align 4 dereferenceable(13) %.sroa.6, i64 13, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i12 = icmp eq i64 %.pre-phi.i.i, %.pre-phi14.i.i
  br i1 %.not.i.i.i.i.i.i.i12, label %.thread, label %bb.l

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ah = getelementptr inbounds i8, ptr null, i64 %i.v ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !141
  br label %bb.p

bb.l:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.aj = icmp ugt i64 %i.v, 9223372036854775804
  br i1 %i.aj, label %.noexc.i.i.i.i.i14, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13, !prof !61

.noexc.i.i.i.i.i14:                               ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc15 unwind label %bb.w

.noexc15:                                         ; preds = %.noexc.i.i.i.i.i14
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13: ; preds = %bb.l
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #28
          to label %.noexc16 unwind label %bb.w   ; 5 uses

.noexc16:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13
  store ptr %i.ak, ptr %i.af, align 8, !tbaa !140
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !144
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.v ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.am, ptr %i.an, align 8, !tbaa !141
  br i1 %i.w, label %bb.m, label %bb.n, !prof !164

bb.m:                                             ; preds = %.noexc16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ak, ptr align 4 %i.u, i64 %i.v, i1 false)
  br label %bb.p

bb.n:                                             ; preds = %.noexc16
  %i.ao = icmp eq i64 %i.v, 4
  br i1 %i.ao, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ap = load i32, ptr %i.u, align 4, !tbaa !60
  store i32 %i.ap, ptr %i.ak, align 4, !tbaa !60
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %.thread
  %i.aq = phi ptr [ %i.am, %bb.m ], [ %i.am, %bb.n ], [ %i.am, %bb.o ], [ %i.ah, %.thread ]
  %i.ar = phi ptr [ %i.al, %bb.m ], [ %i.al, %bb.n ], [ %i.al, %bb.o ], [ %i.ag, %.thread ]
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.as = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread45 ; 4 uses

.thread45:                                        ; preds = %bb.p
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body17

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.as, ptr %0, align 8, !tbaa !149
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !150
  %i.ax = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %5, ptr noundef nonnull %i.au, ptr noundef nonnull %i.as)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef 56) #27
  br label %.body17

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !151
  %i.ba = load i64, ptr %5, align 8, !tbaa !143
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr @constinit.14, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !41
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.bc(ptr noundef nonnull %i.bd)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #26
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.not.i.i.i.i19 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i19, label %_ZN2cv8GMatDescD2Ev.exit20, label %bb.t

bb.t:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.q) #27
  br label %_ZN2cv8GMatDescD2Ev.exit20

_ZN2cv8GMatDescD2Ev.exit20:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.u:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i, %bb.b
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %i.bg, %bb.u ], [ %i.j, %bb.e ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !140 ; 3 uses
  %.not.i.i.i.i21 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i21, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.v

bb.v:                                             ; preds = %.body
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !141
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bn) #27
  br label %_ZN2cv8GMatDescD2Ev.exit22

bb.w:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i13, %.noexc.i.i.i.i.i14
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body17:                                          ; preds = %.thread45, %bb.q
  %i.bp = phi { ptr, i32 } [ %i.at, %.thread45 ], [ %i.ay, %bb.q ]
  %i.bq = load i64, ptr %5, align 8, !tbaa !143
  %i.br = getelementptr inbounds nuw [8 x i8], ptr @constinit.14, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !41
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void %i.bs(ptr noundef nonnull %i.bt)
          to label %.loopexit unwind label %bb.x

bb.x:                                             ; preds = %.body17
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #26
  unreachable

.loopexit:                                        ; preds = %.body17, %bb.w
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.w ], [ %i.bp, %.body17 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.not.i.i.i.i24 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i24, label %_ZN2cv8GMatDescD2Ev.exit22, label %bb.y

bb.y:                                             ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.q) #27
  br label %_ZN2cv8GMatDescD2Ev.exit22

_ZN2cv8GMatDescD2Ev.exit22:                       ; preds = %bb.y, %.loopexit, %bb.v, %.body
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %bb.v ], [ %eh.lpad-body, %.body ], [ %.pn, %.loopexit ], [ %.pn, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv14GKernelPackage13includeHelperINS_4gapi5fluid15GFluidThresholdEEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.cv::gapi::GBackend", align 8 ; 7 uses
  %2 = alloca %"struct.cv::GKernelImpl", align 8  ; 11 uses
  %3 = alloca %"class.cv::GFluidKernel", align 8  ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"struct.std::pair", align 8        ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @_ZN2cv4gapi5fluid7backendEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::gapi::GBackend") align 8 %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZN2cv16GFluidKernelImplINS_4gapi5fluid15GFluidThresholdENS1_4core10GThresholdELb0EE6kernelEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::GFluidKernel") align 8 %3)
          to label %bb.b unwind label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #28
          to label %.noexc unwind label %bb.v     ; 4 uses

.noexc:                                           ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util3any11holder_implINS_12GFluidKernelEEE, i64 16), ptr %i.c, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke void @_ZN2cv12GFluidKernelC2EOS0_(ptr noundef nonnull align 8 dereferenceable(176) %i.d, ptr noundef nonnull align 8 dereferenceable(176) %3)
          to label %_ZNSt8functionIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEEC2IPSK_vEEOT_.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 184) #27
  br label %.body

_ZNSt8functionIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEEC2IPSK_vEEOT_.exit: ; preds = %.noexc
  store ptr %i.c, ptr %2, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr @_ZN2cv6detail10MetaHelperINS_4gapi4core10GThresholdESt5tupleIJNS_4GMatENS_7GScalarES7_iEES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EE, ptr %i.f, align 8, !tbaa !41
  store ptr @_ZNSt17_Function_handlerIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEPSK_E9_M_invokeERKSt9_Any_dataSE_SJ_, ptr %i.h, align 8, !tbaa !44
  store ptr @_ZNSt17_Function_handlerIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEPSK_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation, ptr %i.i, align 8, !tbaa !45
  call void @_ZN2cv12GFluidKernelD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 34, ptr %i.b, align 8, !tbaa !49
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc18 unwind label %bb.x   ; 3 uses

.noexc18:                                         ; preds = %_ZNSt8functionIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEEC2IPSK_vEEOT_.exit
  store ptr %i.k, ptr %4, align 8, !tbaa !51
  %i.l = load i64, ptr %i.b, align 8, !tbaa !49   ; 3 uses
  store i64 %i.l, ptr %i.j, align 8, !tbaa !52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(34) %i.k, ptr noundef nonnull align 1 dereferenceable(34) @.str.83, i64 34, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  store i8 0, ptr %i.n, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  invoke void @_ZN2cv14GKernelPackage9removeAPIERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.d unwind label %bb.y

bb.d:                                             ; preds = %.noexc18
  %i.o = load ptr, ptr %4, align 8, !tbaa !51     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.j
end_hunk_13
begin_hunk_14_@_ZN2cv4gapi5fluid13GFluidInRange3runERKNS1_4ViewERKNS_7Scalar_IdEES9_RNS1_6BufferE:bb.a
bb.dc:                                            ; preds = %bb.db
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN2cv4gapi5fluidL11run_inrangeIhhEEvRNS1_6BufferERKNS1_4ViewERKNS_7Scalar_IdEESB_, ptr noundef nonnull @.str.2, i32 noundef 2171) #29
          to label %bb.dd unwind label %bb.df

bb.dd:                                            ; preds = %bb.dc
  unreachable

bb.de:                                            ; preds = %bb.db
  %i.yh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i

bb.df:                                            ; preds = %bb.dc
  %i.yi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yj = load ptr, ptr %6, align 8, !tbaa !51    ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.yl = icmp eq ptr %i.yj, %i.yk
  br i1 %i.yl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112.i: ; preds = %bb.df
  %i.ym = load i64, ptr %i.yk, align 8, !tbaa !52
  %i.yn = add i64 %i.ym, 1
  call void @_ZdlPvm(ptr noundef %i.yj, i64 noundef %i.yn) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i: ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112.i, %bb.de
  %.pn95.i = phi { ptr, i32 } [ %i.yh, %bb.de ], [ %i.yi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112.i ], [ %i.yi, %bb.df ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %common.resume

_ZN2cv4gapi5fluidL11run_inrangeIhfEEvRNS1_6BufferERKNS1_4ViewERKNS_7Scalar_IdEESB_.exit: ; preds = %bb.da, %bb.cu, %bb.cp, %scalar.ph292.prol.loopexit, %scalar.ph292, %middle.block303, %.preheader5.i, %.preheader3.i, %.preheader1.i, %.preheader.i183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.dl

bb.dg:                                            ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %bb.dh unwind label %bb.dj

bb.dh:                                            ; preds = %bb.dg
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @__func__._ZN2cv4gapi5fluid9GFluidAdd3runERKNS1_4ViewES5_iRNS1_6BufferE, ptr noundef nonnull @.str.2, i32 noundef 2188) #29
          to label %bb.di unwind label %bb.dk

bb.di:                                            ; preds = %bb.dh
  unreachable

bb.dj:                                            ; preds = %bb.dg
  %i.yo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.dk:                                            ; preds = %bb.dh
  %i.yp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yq = load ptr, ptr %20, align 8, !tbaa !51   ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.ys = icmp eq ptr %i.yq, %i.yr
  br i1 %i.ys, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.dk
  %i.yt = load i64, ptr %i.yr, align 8, !tbaa !52
  %i.yu = add i64 %i.yt, 1
  call void @_ZdlPvm(ptr noundef %i.yq, i64 noundef %i.yu) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.dj
  %.pn = phi { ptr, i32 } [ %i.yo, %bb.dj ], [ %i.yp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.yp, %bb.dk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  br label %common.resume

bb.dl:                                            ; preds = %_ZN2cv4gapi5fluidL11run_inrangeIhfEEvRNS1_6BufferERKNS1_4ViewERKNS_7Scalar_IdEESB_.exit, %_ZN2cv4gapi5fluidL11run_inrangeIhsEEvRNS1_6BufferERKNS1_4ViewERKNS_7Scalar_IdEESB_.exit, %_ZN2cv4gapi5fluidL11run_inrangeIhtEEvRNS1_6BufferERKNS1_4ViewERKNS_7Scalar_IdEESB_.exit, %_ZN2cv4gapi5fluidL11run_inrangeIhhEEvRNS1_6BufferERKNS1_4ViewERKNS_7Scalar_IdEESB_.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #19

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail10MetaHelperINS_4gapi4core8GInRangeESt5tupleIJNS_4GMatENS_7GScalarES7_EES6_E15getOutMeta_implIJLi0ELi1ELi2EEEESt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSM_RKSB_INS_4GArgESaISP_EENS0_3SeqIJXspT_EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.21") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::util::bad_variant_access", align 8 ; 5 uses
  %4 = alloca %"class.cv::util::bad_variant_access", align 8 ; 5 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 5 uses
  %5 = alloca %"struct.cv::GMatDesc", align 8     ; 7 uses
  %6 = alloca [1 x %"class.cv::util::variant.73"], align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::GMatDesc") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !151
  %i.c = load ptr, ptr %1, align 8, !tbaa !149    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 56                  ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.g, 1
  br i1 %.not.i.i.i, label %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i, label %.invoke

_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !143
  %.not.i.i = icmp eq i64 %i.i, 2
  br i1 %.not.i.i, label %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit, label %bb.b

bb.b:                                             ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util18bad_variant_accessE, i64 16), ptr %4, align 8, !tbaa !38
  invoke void @_ZN2cv4util11throw_errorINS0_18bad_variant_accessEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %4) #29
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %.body

_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit: ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i
  %.not.i.i.i12.not = icmp eq i64 %i.f, 112
  br i1 %.not.i.i.i12.not, label %.invoke, label %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i13

.invoke:                                          ; preds = %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit, %bb.a
  %i.k = phi i64 [ 1, %bb.a ], [ 2, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.12, i64 noundef %i.k, i64 noundef %i.g) #29
          to label %.cont unwind label %bb.w

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i13: ; preds = %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.m = load i64, ptr %i.l, align 8, !tbaa !143
  %.not.i.i14 = icmp eq i64 %i.m, 2
  br i1 %.not.i.i14, label %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit18, label %bb.e

bb.e:                                             ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util18bad_variant_accessE, i64 16), ptr %3, align 8, !tbaa !38
  invoke void @_ZN2cv4util11throw_errorINS0_18bad_variant_accessEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %3) #29
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.body

_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit18: ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit.i13
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(9) %.sroa.7.0..sroa_idx, i64 9, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !144, !noalias !2132 ; 2 uses
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !140, !noalias !2132 ; 3 uses
  %i.s = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.u = sub i64 %i.s, %i.t                       ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit18
  %i.v = icmp ugt i64 %i.u, 9223372036854775804
  br i1 %i.v, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !61

.noexc.i.i.i.i.i:                                 ; preds = %bb.h
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc19 unwind label %bb.w

.noexc19:                                         ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.h
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #28
          to label %.noexc20 unwind label %bb.w

.noexc20:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.o, align 8, !tbaa !145, !noalias !2132 ; 2 uses
  %.pre11.i.i = load ptr, ptr %i.p, align 8, !tbaa !145, !noalias !2132
  %.pre12.i.i = ptrtoint ptr %.pre11.i.i to i64
  %.pre13.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.i

bb.i:                                             ; preds = %.noexc20, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit18
  %.pre-phi14.i.i = phi i64 [ %.pre13.i.i, %.noexc20 ], [ %i.t, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit18 ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ %.pre12.i.i, %.noexc20 ], [ %i.s, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit18 ] ; 2 uses
  %i.x = phi ptr [ %.pre.i.i, %.noexc20 ], [ %i.r, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit18 ] ; 5 uses
  %i.y = phi ptr [ %i.w, %.noexc20 ], [ null, %_ZN2cv6detail11get_in_metaINS_7GScalarEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi.exit18 ] ; 8 uses
  %i.z = sub i64 %.pre-phi.i.i, %.pre-phi14.i.i   ; 9 uses
  %i.aa = icmp sgt i64 %i.z, 4                    ; 2 uses
  br i1 %i.aa, label %bb.j, label %bb.k, !prof !146

bb.j:                                             ; preds = %bb.i
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.y, ptr align 4 %i.x, i64 %i.z, i1 false), !noalias !2132
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ab = icmp eq i64 %i.z, 4
  br i1 %i.ab, label %.thread55, label %bb.l

.thread55:                                        ; preds = %bb.k
  %i.ac = load i32, ptr %i.x, align 4, !tbaa !60, !noalias !2132
  store i32 %i.ac, ptr %i.y, align 4, !tbaa !60, !noalias !2132
  br label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %.thread55, %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !141
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.x to i64
  %i.ah = sub i64 %i.af, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ah) #27
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store i64 1, ptr %6, align 8, !tbaa !143
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.ai, align 8
  %.sroa.6.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 1, ptr %.sroa.6.0..sroa_idx37, align 4
  %.sroa.7.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.sroa.7.0..sroa_idx39, ptr noundef nonnull align 8 dereferenceable(9) %.sroa.7, i64 9, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i21 = icmp eq i64 %.pre-phi.i.i, %.pre-phi14.i.i
  br i1 %.not.i.i.i.i.i.i.i21, label %.thread, label %bb.n

.thread:                                          ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.al = getelementptr inbounds i8, ptr null, i64 %i.z ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  store ptr %i.al, ptr %i.am, align 8, !tbaa !141
  br label %bb.r

bb.n:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.an = icmp ugt i64 %i.z, 9223372036854775804
  br i1 %i.an, label %.noexc.i.i.i.i.i23, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i22, !prof !61

.noexc.i.i.i.i.i23:                               ; preds = %bb.n
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc24 unwind label %bb.y

.noexc24:                                         ; preds = %.noexc.i.i.i.i.i23
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i22: ; preds = %bb.n
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #28
          to label %.noexc25 unwind label %bb.y   ; 5 uses

.noexc25:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i22
  store ptr %i.ao, ptr %i.aj, align 8, !tbaa !140
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 4 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !144
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.z ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !141
  br i1 %i.aa, label %bb.o, label %bb.p, !prof !164

bb.o:                                             ; preds = %.noexc25
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ao, ptr align 4 %i.y, i64 %i.z, i1 false)
  br label %bb.r

bb.p:                                             ; preds = %.noexc25
  %i.as = icmp eq i64 %i.z, 4
  br i1 %i.as, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.at = load i32, ptr %i.y, align 4, !tbaa !60
  store i32 %i.at, ptr %i.ao, align 4, !tbaa !60
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %.thread
  %i.au = phi ptr [ %i.aq, %bb.o ], [ %i.aq, %bb.p ], [ %i.aq, %bb.q ], [ %i.al, %.thread ]
  %i.av = phi ptr [ %i.ap, %bb.o ], [ %i.ap, %bb.p ], [ %i.ap, %bb.q ], [ %i.ak, %.thread ]
  store ptr %i.au, ptr %i.av, align 8, !tbaa !144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.aw = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28
          to label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i unwind label %.thread57 ; 4 uses

.thread57:                                        ; preds = %bb.r
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body26

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i: ; preds = %bb.r
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %i.aw, ptr %0, align 8, !tbaa !149
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !150
  %i.bb = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %6, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.aw)
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef 56) #27
  br label %.body26

bb.t:                                             ; preds = %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_M_allocateEm.exit.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bb, ptr %i.bd, align 8, !tbaa !151
  %i.be = load i64, ptr %6, align 8, !tbaa !143
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr @constinit.14, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !41
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 8
  invoke void %i.bg(ptr noundef nonnull %i.bh)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #26
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %.not.i.i.i.i28 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i28, label %_ZN2cv8GMatDescD2Ev.exit29, label %bb.v

bb.v:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.u) #27
  br label %_ZN2cv8GMatDescD2Ev.exit29

_ZN2cv8GMatDescD2Ev.exit29:                       ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEED2Ev.exit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  ret void

bb.w:                                             ; preds = %.invoke, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.w, %bb.g, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.bk, %bb.w ], [ %i.n, %bb.g ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !140 ; 3 uses
  %.not.i.i.i.i30 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i30, label %_ZN2cv8GMatDescD2Ev.exit31, label %bb.x

bb.x:                                             ; preds = %.body
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !141
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bm to i64
  %i.br = sub i64 %i.bp, %i.bq
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.br) #27
  br label %_ZN2cv8GMatDescD2Ev.exit31

bb.y:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i22, %.noexc.i.i.i.i.i23
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body26:                                          ; preds = %.thread57, %bb.s
  %i.bt = phi { ptr, i32 } [ %i.ax, %.thread57 ], [ %i.bc, %bb.s ]
  %i.bu = load i64, ptr %6, align 8, !tbaa !143
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr @constinit.14, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !41
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 8
  invoke void %i.bw(ptr noundef nonnull %i.bx)
          to label %.loopexit unwind label %bb.z

bb.z:                                             ; preds = %.body26
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #26
  unreachable

.loopexit:                                        ; preds = %.body26, %bb.y
  %.pn = phi { ptr, i32 } [ %i.bs, %bb.y ], [ %i.bt, %.body26 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %.not.i.i.i.i33 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i33, label %_ZN2cv8GMatDescD2Ev.exit31, label %bb.aa

bb.aa:                                            ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.u) #27
  br label %_ZN2cv8GMatDescD2Ev.exit31

_ZN2cv8GMatDescD2Ev.exit31:                       ; preds = %bb.aa, %.loopexit, %bb.x, %.body
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %bb.x ], [ %eh.lpad-body, %.body ], [ %.pn, %.loopexit ], [ %.pn, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv14GKernelPackage13includeHelperINS_4gapi5fluid10GFluidSqrtEEENSt9enable_ifIXsr3std10is_base_ofINS_6detail9KernelTagET_EE5valueEvE4typeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.cv::gapi::GBackend", align 8 ; 7 uses
  %2 = alloca %"struct.cv::GKernelImpl", align 8  ; 11 uses
  %3 = alloca %"class.cv::GFluidKernel", align 8  ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"struct.std::pair", align 8        ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @_ZN2cv4gapi5fluid7backendEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::gapi::GBackend") align 8 %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZN2cv16GFluidKernelImplINS_4gapi5fluid10GFluidSqrtENS1_4core5GSqrtELb0EE6kernelEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::GFluidKernel") align 8 %3)
          to label %bb.b unwind label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #28
          to label %.noexc unwind label %bb.v     ; 4 uses

.noexc:                                           ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util3any11holder_implINS_12GFluidKernelEEE, i64 16), ptr %i.c, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke void @_ZN2cv12GFluidKernelC2EOS0_(ptr noundef nonnull align 8 dereferenceable(176) %i.d, ptr noundef nonnull align 8 dereferenceable(176) %3)
          to label %_ZNSt8functionIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEEC2IPSK_vEEOT_.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 184) #27
  br label %.body

_ZNSt8functionIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEEC2IPSK_vEEOT_.exit: ; preds = %.noexc
  store ptr %i.c, ptr %2, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr @_ZN2cv6detail10MetaHelperINS_4gapi4core5GSqrtESt5tupleIJNS_4GMatEEES6_E10getOutMetaERKSt6vectorINS_4util7variantIJNSA_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISI_EERKS9_INS_4GArgESaISN_EE, ptr %i.f, align 8, !tbaa !41
  store ptr @_ZNSt17_Function_handlerIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEPSK_E9_M_invokeERKSt9_Any_dataSE_SJ_, ptr %i.h, align 8, !tbaa !44
  store ptr @_ZNSt17_Function_handlerIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEPSK_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation, ptr %i.i, align 8, !tbaa !45
  call void @_ZN2cv12GFluidKernelD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 25, ptr %i.b, align 8, !tbaa !49
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc18 unwind label %bb.x   ; 2 uses

.noexc18:                                         ; preds = %_ZNSt8functionIFSt6vectorIN2cv4util7variantIJNS2_9monostateENS1_8GMatDescENS1_11GScalarDescENS1_10GArrayDescENS1_11GOpaqueDescENS1_10GFrameDescEEEESaISA_EERKSC_RKS0_INS1_4GArgESaISF_EEEEC2IPSK_vEEOT_.exit
  store ptr %i.k, ptr %4, align 8, !tbaa !51
  %i.l = load i64, ptr %i.b, align 8, !tbaa !49   ; 3 uses
  store i64 %i.l, ptr %i.j, align 8, !tbaa !52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.k, ptr noundef nonnull align 1 dereferenceable(25) @.str.87, i64 25, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !53
  %i.n = load ptr, ptr %4, align 8, !tbaa !51
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  invoke void @_ZN2cv14GKernelPackage9removeAPIERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.d unwind label %bb.y

bb.d:                                             ; preds = %.noexc18
  %i.p = load ptr, ptr %4, align 8, !tbaa !51     ; 2 uses
end_hunk_14
