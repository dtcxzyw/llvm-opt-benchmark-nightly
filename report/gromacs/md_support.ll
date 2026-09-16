Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/md_support?download=true
inline.NumInlined: 480
inline.NumDeleted: 250
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZL19calc_ke_part_normalILb0EEvPA3_KfN3gmx8ArrayRefIKNS3_11BasicVectorIfEEEES8_S2_PK9t_grpoptsPK9t_mdatomsP14gmx_ekindata_tP6t_nrnbb.omp_outlined:bb.a

bb.g:                                             ; preds = %bb.f
  %i.cl = load ptr, ptr %i.bh, align 8, !tbaa !185
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv69
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !146
  %i.co = load ptr, ptr %i.bi, align 8, !tbaa !185
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv69
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !146
  %i.cr = fsub float %i.cn, %i.cq
  %i.cs = fpext float %i.cr to double
  %i.ct = fmul double %i.cs, 5.000000e-01
  %i.cu = fmul float %.sroa.8.0.copyload, %.sroa.8.0.copyload
  %i.cv = extractelement <3 x float> %i.bv, i64 0 ; 2 uses
  %i.cw = call float @llvm.fmuladd.f32(float %i.cv, float %i.cv, float %i.cu)
  %i.cx = call noundef float @llvm.fmuladd.f32(float %i.bw, float %i.bw, float %i.cw)
  %i.cy = fpext float %i.cx to double
  %i.cz = load float, ptr %i.al, align 4, !tbaa !146
  %i.da = fpext float %i.cz to double
  %i.db = call double @llvm.fmuladd.f64(double %i.ct, double %i.cy, double %i.da)
  %i.dc = fptrunc double %i.db to float
  store float %i.dc, ptr %i.al, align 4, !tbaa !146
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.preheader
  %indvars.iv.next70 = add nsw i64 %indvars.iv69, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next70, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !407

._crit_edge61:                                    ; preds = %.loopexit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge61, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z32computeGlobalCommunicationPeriodPK10t_inputrec(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !214  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = load i32, ptr %i.d, align 8, !tbaa !215
  %i.f = icmp eq i32 %i.e, 0                      ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.c, label %.thread16

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.h = load i32, ptr %i.g, align 4, !tbaa !216
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.thread, label %bb.h

bb.d:                                             ; preds = %bb.a
  br i1 %i.f, label %.thread, label %.thread16

.thread16:                                        ; preds = %bb.b, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.j = load i32, ptr %i.i, align 4, !tbaa !217
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %.thread16
  %i.k = phi i32 [ %i.j, %.thread16 ], [ 0, %bb.d ], [ 0, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.m = load i32, ptr %i.l, align 4, !tbaa !216
  %.not12 = icmp eq i32 %i.m, 0
  br i1 %.not12, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.o = load i32, ptr %i.n, align 4, !tbaa !218
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e
  %i.p = phi i32 [ %i.o, %bb.e ], [ 0, %.thread ]
  %i.q = tail call fastcc noundef i32 @_ZL4lcd3iii(i32 noundef %i.b, i32 noundef %i.k, i32 noundef %i.p) ; 3 uses
  %i.r = icmp sgt i32 %i.q, 200
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = tail call fastcc noundef i32 @_ZL4lcd3iii(i32 noundef %i.q, i32 noundef 200, i32 noundef 0)
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.f, %bb.g
  %.0 = phi i32 [ %i.q, %bb.f ], [ %i.s, %bb.g ], [ 200, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL4lcd3iii(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
_ZL8min_zeroPii.exit:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.265", align 1 ; 3 uses
  %5 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.a = icmp sgt i32 %0, 0
  %spec.select = tail call i32 @llvm.smax.i32(i32 %0, i32 0) ; 4 uses
  %i.b = icmp sgt i32 %1, 0                       ; 3 uses
  %i.c = icmp slt i32 %0, 1
  %i.d = tail call i32 @llvm.umin.i32(i32 %1, i32 %spec.select)
  %spec.select34 = select i1 %i.c, i32 %1, i32 %i.d ; 3 uses
  %.2 = select i1 %i.b, i32 %spec.select34, i32 %spec.select ; 2 uses
  %i.e = icmp sgt i32 %2, 0                       ; 5 uses
  %i.f = add i32 %.2, -1
  %or.cond.i24.not = icmp uge i32 %i.f, %2
  %i.g = and i1 %i.e, %or.cond.i24.not
  %.3 = select i1 %i.g, i32 %2, i32 %.2           ; 7 uses
  %i.h = icmp eq i32 %.3, 0
  br i1 %i.h, label %bb.f, label %.preheader

.preheader:                                       ; preds = %_ZL8min_zeroPii.exit
  %i.i = icmp sgt i32 %.3, 1
  br i1 %i.i, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  br i1 %i.a, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.b, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  br i1 %i.e, label %.lr.ph.split.us.split.us.split.us, label %.lr.ph.split.us.split.us.split

.lr.ph.split.us.split.us.split.us:                ; preds = %.lr.ph.split.us.split.us, %.critedge2.us.us.us
  %.036.us.us.us = phi i32 [ %i.m, %.critedge2.us.us.us ], [ %.3, %.lr.ph.split.us.split.us ] ; 6 uses
  %i.j = urem i32 %0, %.036.us.us.us
  %.not.us.us.us = icmp eq i32 %i.j, 0
  br i1 %.not.us.us.us, label %bb.a, label %.critedge2.us.us.us

bb.a:                                             ; preds = %.lr.ph.split.us.split.us.split.us
  %i.k = urem i32 %1, %.036.us.us.us
  %.not18.us.us.us = icmp eq i32 %i.k, 0
  br i1 %.not18.us.us.us, label %bb.b, label %.critedge2.us.us.us

bb.b:                                             ; preds = %bb.a
  %i.l = urem i32 %2, %.036.us.us.us
  %.not19.us.us.us = icmp eq i32 %i.l, 0
  br i1 %.not19.us.us.us, label %.critedge, label %.critedge2.us.us.us

.critedge2.us.us.us:                              ; preds = %bb.b, %bb.a, %.lr.ph.split.us.split.us.split.us
  %i.m = add nsw i32 %.036.us.us.us, -1
  %i.n = icmp sgt i32 %.036.us.us.us, 2
  br i1 %i.n, label %.lr.ph.split.us.split.us.split.us, label %.critedge, !llvm.loop !408

.lr.ph.split.us.split.us.split:                   ; preds = %.lr.ph.split.us.split.us, %.critedge2.us.us
  %.036.us.us = phi i32 [ %i.q, %.critedge2.us.us ], [ %spec.select34, %.lr.ph.split.us.split.us ] ; 5 uses
  %i.o = urem i32 %0, %.036.us.us
  %.not.us.us = icmp eq i32 %i.o, 0
  br i1 %.not.us.us, label %bb.c, label %.critedge2.us.us

bb.c:                                             ; preds = %.lr.ph.split.us.split.us.split
  %i.p = urem i32 %1, %.036.us.us
  %.not18.us.us = icmp eq i32 %i.p, 0
  br i1 %.not18.us.us, label %.critedge, label %.critedge2.us.us

.critedge2.us.us:                                 ; preds = %bb.c, %.lr.ph.split.us.split.us.split
  %i.q = add nsw i32 %.036.us.us, -1
  %i.r = icmp sgt i32 %.036.us.us, 2
  br i1 %i.r, label %.lr.ph.split.us.split.us.split, label %.critedge, !llvm.loop !408

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  br i1 %i.e, label %.lr.ph.split.us.split.split.us, label %.lr.ph.split.us.split.split

.lr.ph.split.us.split.split.us:                   ; preds = %.lr.ph.split.us.split, %.critedge2.us.us69
  %.036.us.us66 = phi i32 [ %i.u, %.critedge2.us.us69 ], [ %.3, %.lr.ph.split.us.split ] ; 5 uses
  %i.s = urem i32 %0, %.036.us.us66
  %.not.us.us67 = icmp eq i32 %i.s, 0
  br i1 %.not.us.us67, label %bb.d, label %.critedge2.us.us69

bb.d:                                             ; preds = %.lr.ph.split.us.split.split.us
  %i.t = urem i32 %2, %.036.us.us66
  %.not19.us.us68 = icmp eq i32 %i.t, 0
  br i1 %.not19.us.us68, label %.critedge, label %.critedge2.us.us69

.critedge2.us.us69:                               ; preds = %bb.d, %.lr.ph.split.us.split.split.us
  %i.u = add nsw i32 %.036.us.us66, -1
  %i.v = icmp sgt i32 %.036.us.us66, 2
  br i1 %i.v, label %.lr.ph.split.us.split.split.us, label %.critedge, !llvm.loop !408

.lr.ph.split.us.split.split:                      ; preds = %.lr.ph.split.us.split, %.critedge2.us
  %.036.us = phi i32 [ %i.x, %.critedge2.us ], [ %spec.select, %.lr.ph.split.us.split ] ; 4 uses
  %i.w = urem i32 %0, %.036.us
  %.not.us = icmp eq i32 %i.w, 0
  br i1 %.not.us, label %.critedge, label %.critedge2.us

.critedge2.us:                                    ; preds = %.lr.ph.split.us.split.split
  %i.x = add nsw i32 %.036.us, -1
  %i.y = icmp sgt i32 %.036.us, 2
  br i1 %i.y, label %.lr.ph.split.us.split.split, label %.critedge, !llvm.loop !408

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.b, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  br i1 %i.e, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us, %.critedge2.us46.us
  %.036.us43.us = phi i32 [ %i.ab, %.critedge2.us46.us ], [ %.3, %.lr.ph.split.split.us ] ; 5 uses
  %i.z = urem i32 %1, %.036.us43.us
  %.not18.us44.us = icmp eq i32 %i.z, 0
  br i1 %.not18.us44.us, label %bb.e, label %.critedge2.us46.us

bb.e:                                             ; preds = %.lr.ph.split.split.us.split.us
  %i.aa = urem i32 %2, %.036.us43.us
  %.not19.us45.us = icmp eq i32 %i.aa, 0
  br i1 %.not19.us45.us, label %.critedge, label %.critedge2.us46.us

.critedge2.us46.us:                               ; preds = %bb.e, %.lr.ph.split.split.us.split.us
  %i.ab = add nsw i32 %.036.us43.us, -1
  %i.ac = icmp sgt i32 %.036.us43.us, 2
  br i1 %i.ac, label %.lr.ph.split.split.us.split.us, label %.critedge, !llvm.loop !408

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us, %.critedge2.us46
  %.036.us43 = phi i32 [ %i.ae, %.critedge2.us46 ], [ %spec.select34, %.lr.ph.split.split.us ] ; 4 uses
  %i.ad = urem i32 %1, %.036.us43
  %.not18.us44 = icmp eq i32 %i.ad, 0
  br i1 %.not18.us44, label %.critedge, label %.critedge2.us46

.critedge2.us46:                                  ; preds = %.lr.ph.split.split.us.split
  %i.ae = add nsw i32 %.036.us43, -1
  %i.af = icmp sgt i32 %.036.us43, 2
  br i1 %i.af, label %.lr.ph.split.split.us.split, label %.critedge, !llvm.loop !408

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  br i1 %i.e, label %.lr.ph.split.split.split.us, label %.critedge

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split, %.critedge2.us55
  %.036.us53 = phi i32 [ %7, %.critedge2.us55 ], [ %.3, %.lr.ph.split.split ] ; 4 uses
  %6 = urem i32 %2, %.036.us53
  %.not19.us54 = icmp eq i32 %6, 0
  br i1 %.not19.us54, label %.critedge, label %.critedge2.us55

.critedge2.us55:                                  ; preds = %.lr.ph.split.split.split.us
  %7 = add nsw i32 %.036.us53, -1
  %8 = icmp sgt i32 %.036.us53, 2
  br i1 %8, label %.lr.ph.split.split.split.us, label %.critedge, !llvm.loop !408

bb.f:                                             ; preds = %_ZL8min_zeroPii.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.59, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA65_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 1 dereferenceable(65) @.str.55, i8 noundef zeroext 2)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  invoke void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef nonnull @.str.58, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 620) #20
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #6
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.j ], [ %i.ag, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  %i.ai = load ptr, ptr %3, align 8, !tbaa !207   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !148
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  resume { ptr, i32 } %.pn

.critedge:                                        ; preds = %.lr.ph.split.split.split.us, %.critedge2.us55, %.lr.ph.split.split.us.split, %.critedge2.us46, %bb.e, %.critedge2.us46.us, %.lr.ph.split.us.split.split, %.critedge2.us, %bb.d, %.critedge2.us.us69, %bb.c, %.critedge2.us.us, %bb.b, %.critedge2.us.us.us, %.lr.ph.split.split, %.preheader
  %.0.lcssa = phi i32 [ %.3, %.preheader ], [ 1, %.critedge2.us.us.us ], [ %spec.select, %.lr.ph.split.split ], [ 1, %.critedge2.us46 ], [ %.036.us43.us, %bb.e ], [ 1, %.critedge2.us ], [ 1, %.critedge2.us.us69 ], [ 1, %.critedge2.us.us ], [ %.036.us.us.us, %bb.b ], [ %.036.us.us, %bb.c ], [ %.036.us.us66, %bb.d ], [ %.036.us, %.lr.ph.split.us.split.split ], [ 1, %.critedge2.us46.us ], [ %.036.us43, %.lr.ph.split.split.us.split ], [ 1, %.critedge2.us55 ], [ %.036.us53, %.lr.ph.split.split.split.us ]
  ret i32 %.0.lcssa
}

; Function Attrs: noreturn
declare void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !204
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.57) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #6 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i64 %i.d, ptr %i.a, align 8, !tbaa !205
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !207
  %i.g = load i64, ptr %i.a, align 8, !tbaa !205
  store i64 %i.g, ptr %i.b, align 8, !tbaa !148
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !148
  store i8 %i.i, ptr %i.h, align 1, !tbaa !148
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !205  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !208
  %i.l = load ptr, ptr %0, align 8, !tbaa !207
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z32computeGlobalCommunicationPeriodRKN3gmx8MDLoggerEPK10t_inputrecRKNS_7MpiCommE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.gmx::LogEntryWriter", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !214  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.e = load i32, ptr %i.d, align 8, !tbaa !215
  %i.f = icmp eq i32 %i.e, 0                      ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.c, label %.thread16.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.h = load i32, ptr %i.g, align 4, !tbaa !216
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %.thread.i, label %_Z32computeGlobalCommunicationPeriodPK10t_inputrec.exit

bb.d:                                             ; preds = %bb.a
  br i1 %i.f, label %.thread.i, label %.thread16.i

.thread16.i:                                      ; preds = %bb.d, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 196
  %i.j = load i32, ptr %i.i, align 4, !tbaa !217
  br label %.thread.i

.thread.i:                                        ; preds = %.thread16.i, %bb.d, %bb.c
  %i.k = phi i32 [ %i.j, %.thread16.i ], [ 0, %bb.d ], [ 0, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.m = load i32, ptr %i.l, align 4, !tbaa !216
  %.not12.i = icmp eq i32 %i.m, 0
  br i1 %.not12.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 212
  %i.o = load i32, ptr %i.n, align 4, !tbaa !218
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread.i
  %i.p = phi i32 [ %i.o, %bb.e ], [ 0, %.thread.i ]
  %i.q = tail call fastcc noundef i32 @_ZL4lcd3iii(i32 noundef %i.b, i32 noundef %i.k, i32 noundef %i.p) ; 3 uses
  %i.r = icmp sgt i32 %i.q, 200
  br i1 %i.r, label %bb.g, label %_Z32computeGlobalCommunicationPeriodPK10t_inputrec.exit

bb.g:                                             ; preds = %bb.f
  %i.s = tail call fastcc noundef i32 @_ZL4lcd3iii(i32 noundef %i.q, i32 noundef 200, i32 noundef 0)
  br label %_Z32computeGlobalCommunicationPeriodPK10t_inputrec.exit

_Z32computeGlobalCommunicationPeriodPK10t_inputrec.exit: ; preds = %bb.c, %bb.f, %bb.g
  %.0.i = phi i32 [ %i.q, %bb.f ], [ %i.s, %bb.g ], [ 200, %bb.c ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !200
  %i.v = icmp sgt i32 %i.u, 1
  br i1 %i.v, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_Z32computeGlobalCommunicationPeriodPK10t_inputrec.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !412  ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.aa, ptr %3, align 8, !tbaa !204
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.ab, align 8, !tbaa !208
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 0, ptr %i.ac, align 8, !tbaa !414
  %i.ad = invoke noundef nonnull align 8 dereferenceable(40) ptr (ptr, ptr, ...) @_ZN3gmx14LogEntryWriter19appendTextFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull @.str.60, i32 noundef %.0.i)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !220
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 8 dereferenceable(40) %i.ad)
          to label %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit unwind label %bb.k, !inline_history !409

_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit: ; preds = %bb.j
  %i.ah = load ptr, ptr %3, align 8, !tbaa !207   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.aa
  br i1 %i.ai, label %_ZN3gmx14LogEntryWriterD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit
  %i.aj = load i64, ptr %i.aa, align 8, !tbaa !148
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #21
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit

_ZN3gmx14LogEntryWriterD2Ev.exit:                 ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  br label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %3, align 8, !tbaa !207   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.aa
  br i1 %i.an, label %_ZN3gmx14LogEntryWriterD2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i6: ; preds = %bb.k
  %i.ao = load i64, ptr %i.aa, align 8, !tbaa !148
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #21
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit8

_ZN3gmx14LogEntryWriterD2Ev.exit8:                ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  resume { ptr, i32 } %i.al

bb.l:                                             ; preds = %_ZN3gmx14LogEntryWriterD2Ev.exit, %bb.h, %_Z32computeGlobalCommunicationPeriodPK10t_inputrec.exit
  ret i32 %.0.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN3gmx14LogEntryWriter19appendTextFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_Z19rerun_parallel_commRKN3gmx7MpiCommEP10t_trxframePb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !415
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %2, align 1, !tbaa !201, !range !137, !noundef !138
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_0
