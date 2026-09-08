Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/dataset_loader?download=true
inline.NumInlined: 4751
inline.NumDeleted: 1921
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN8LightGBM13DatasetLoader24SampleTextDataFromMemoryERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = trunc i64 %i.k to i32
  call void @_ZN8LightGBM6Random6SampleEii(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.19") align 8 %3, ptr noundef nonnull align 4 dereferenceable(4) %i.l, i32 noundef %i.m, i32 noundef %spec.select)
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !214  ; 2 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !215    ; 3 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = ashr exact i64 %i.s, 2                   ; 6 uses
  %i.u = icmp ugt i64 %i.t, 288230376151711743
  br i1 %i.u, label %bb.b, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #36
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not.i.i.i.i, label %._crit_edge, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.v = shl nuw nsw i64 %i.s, 3
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #37
          to label %.noexc18 unwind label %bb.c   ; 5 uses

.noexc18:                                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !112
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %i.t
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.x, ptr %i.y, align 8, !tbaa !114
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc18, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.prol ], [ %i.w, %.noexc18 ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.ab, %.lr.ph.i.i.i.i.i.prol ], [ %i.t, %.noexc18 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc18 ]
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.z, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !104
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.aa, align 8, !tbaa !105
  store i8 0, ptr %i.z, align 8, !tbaa !106
  %i.ab = add i64 %.057.i.i.i.i.i.prol, -1        ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !545

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc18
  %.lcssa50.unr = phi ptr [ poison, %.noexc18 ], [ %i.ac, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.w, %.noexc18 ], [ %i.ac, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.t, %.noexc18 ], [ %i.ab, %.lr.ph.i.i.i.i.i.prol ]
  %i.ad = icmp ult i64 %i.t, 4
  br i1 %i.ad, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.ae, ptr %.08.i.i.i.i.i, align 8, !tbaa !104
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.af, align 8, !tbaa !105
  store i8 0, ptr %i.ae, align 8, !tbaa !106
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !104
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.ai, align 8, !tbaa !105
  store i8 0, ptr %i.ah, align 8, !tbaa !106
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !104
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.al, align 8, !tbaa !105
  store i8 0, ptr %i.ak, align 8, !tbaa !106
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.an, ptr %i.am, align 8, !tbaa !104
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.ao, align 8, !tbaa !105
  store i8 0, ptr %i.an, align 8, !tbaa !106
  %i.ap = add i64 %.057.i.i.i.i.i, -4             ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !546

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa50 = phi ptr [ %.lcssa50.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.aq, %.lr.ph.i.i.i.i.i ]
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !214
  %.pre32 = load ptr, ptr %3, align 8, !tbaa !215 ; 4 uses
  %.pre33 = ptrtoint ptr %.pre32 to i64
  %i.ar = icmp eq ptr %.pre, %.pre32
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.lcssa50, ptr %i.as, align 8, !tbaa !113
  br i1 %i.ar, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %bb.b
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.lr.ph:                                           ; preds = %.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.au = phi ptr [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ], [ %.pre32, %.loopexit ]
  %.027 = phi i64 [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ], [ 0, %.loopexit ] ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %.027
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !134
  %i.ax = sext i32 %i.aw to i64
  %i.ay = load ptr, ptr %2, align 8, !tbaa !112
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %i.ay, i64 %i.ax
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %.027
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %i.az)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %.lr.ph
  %i.bb = add nuw i64 %.027, 1                    ; 2 uses
  %i.bc = load ptr, ptr %i.n, align 8, !tbaa !214
  %i.bd = load ptr, ptr %3, align 8, !tbaa !215   ; 3 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64               ; 2 uses
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 2
  %i.bi = icmp ult i64 %i.bb, %i.bh
  br i1 %i.bi, label %.lr.ph, label %._crit_edge, !llvm.loop !547

bb.d:                                             ; preds = %.lr.ph
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #20
  br label %bb.f

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i, %.loopexit
  %.lcssa24 = phi ptr [ %.pre32, %.loopexit ], [ %i.p, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i ], [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ] ; 2 uses
  %.lcssa = phi i64 [ %.pre33, %.loopexit ], [ %i.r, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ]
  %.not.i.i.i = icmp eq ptr %.lcssa24, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !216
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = sub i64 %i.bm, %.lcssa
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa24, i64 noundef %i.bn) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

bb.f:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.bj, %bb.d ], [ %i.at, %bb.c ]
  %i.bo = load ptr, ptr %3, align 8, !tbaa !215   ; 3 uses
  %.not.i.i.i20 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIiSaIiEED2Ev.exit21, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !216
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit21

_ZNSt6vectorIiSaIiEED2Ev.exit21:                  ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN8LightGBM13DatasetLoader31ConstructBinMappersFromTextDataEiiRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEPKNS_6ParserEPNS_7DatasetE(ptr noundef nonnull align 8 dereferenceable(201) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %8 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %9 = alloca %"class.std::vector.24", align 8    ; 19 uses
  %10 = alloca %"class.std::vector.29", align 8   ; 13 uses
  %11 = alloca %"class.std::vector.270", align 8  ; 12 uses
  %i.g = alloca double, align 8                   ; 4 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %13 = alloca %"class.std::vector.24", align 8   ; 12 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 19 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %17 = alloca %"class.std::vector.155", align 8  ; 23 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %18 = alloca %class.ThreadExceptionHelper, align 8 ; 7 uses
  %19 = alloca %"class.std::vector.19", align 8   ; 15 uses
  %20 = alloca %"class.std::vector.19", align 8   ; 18 uses
  %21 = alloca %class.ThreadExceptionHelper, align 8 ; 8 uses
  %22 = alloca %"class.std::vector.19", align 8   ; 10 uses
  %i.i = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1) ; 2 uses
  store i32 %1, ptr %i.f, align 4, !tbaa !134
  %i.j = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !113
  %i.m = load ptr, ptr %3, align 8, !tbaa !112    ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = lshr exact i64 %i.p, 5
  %i.r = trunc i64 %i.q to i32
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph529, label %._crit_edge530

.lr.ph529:                                        ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  br label %bb.b

._crit_edge530:                                   ; preds = %._crit_edge, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !230  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !231 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, %i.z
  br i1 %.not.i.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge530, %_ZSt8_DestroyISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ad, %_ZSt8_DestroyISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.z, %._crit_edge530 ] ; 2 uses
  %i.ac = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !233 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN8LightGBM12FeatureGroupEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN8LightGBM12FeatureGroupEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZN8LightGBM12FeatureGroupD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.ac) #20
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef 96) #35
  br label %_ZSt8_DestroyISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN8LightGBM12FeatureGroupEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, %i.ab
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !9

_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !231
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE5clearEv.exit

_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE5clearEv.exit: ; preds = %._crit_edge530, %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !234
  %i.ag = load ptr, ptr %9, align 8, !tbaa !235
  %i.ah = load ptr, ptr %4, align 8, !tbaa !133
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = invoke noundef i32 %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.aa unwind label %bb.ad

bb.b:                                             ; preds = %.lr.ph529, %._crit_edge
  %i.al = phi ptr [ null, %.lr.ph529 ], [ %i.ay, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph529 ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %i.am = phi ptr [ %i.m, %.lr.ph529 ], [ %i.ba, %._crit_edge ]
  %i.an = load ptr, ptr %11, align 8, !tbaa !238  ; 2 uses
  %i.ao = load ptr, ptr %i.t, align 8, !tbaa !239
  %.not.i.i174 = icmp eq ptr %i.ao, %i.an
  br i1 %.not.i.i174, label %_ZNSt6vectorISt4pairIidESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPSt4pairIidES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt4pairIidES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.b
  store ptr %i.an, ptr %i.t, align 8, !tbaa !239
  br label %_ZNSt6vectorISt4pairIidESaIS1_EE5clearEv.exit

_ZNSt6vectorISt4pairIidESaIS1_EE5clearEv.exit:    ; preds = %bb.b, %_ZSt8_DestroyIPSt4pairIidES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %i.am, i64 %indvars.iv
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !107
  %i.ar = load ptr, ptr %4, align 8, !tbaa !133
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  invoke void %i.at(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.aq, ptr noundef nonnull %11, ptr noundef nonnull %i.g)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNSt6vectorISt4pairIidESaIS1_EE5clearEv.exit
  %i.au = load ptr, ptr %11, align 8, !tbaa !240  ; 2 uses
  %i.av = load ptr, ptr %i.t, align 8, !tbaa !240 ; 2 uses
  %.not498525 = icmp eq ptr %i.au, %i.av
  br i1 %.not498525, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.aw = trunc nuw nsw i64 %indvars.iv to i32
  %i.ax = trunc nuw nsw i64 %indvars.iv to i32
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit, %bb.c
  %i.ay = phi ptr [ %i.al, %bb.c ], [ %i.eu, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.az = load ptr, ptr %i.k, align 8, !tbaa !113
  %i.ba = load ptr, ptr %3, align 8, !tbaa !112   ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %sext = shl i64 %i.bd, 27
  %i.be = ashr i64 %sext, 32
  %i.bf = icmp slt i64 %indvars.iv.next, %i.be
  br i1 %i.bf, label %bb.b, label %._crit_edge530, !llvm.loop !548

bb.d:                                             ; preds = %_ZNSt6vectorISt4pairIidESaIS1_EE5clearEv.exit
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit
  %i.bh = phi ptr [ %i.eu, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit ], [ %i.al, %.lr.ph.preheader ] ; 10 uses
  %.sroa.0472.0526 = phi ptr [ %i.he, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit ], [ %i.au, %.lr.ph.preheader ] ; 6 uses
  %i.bi = load i32, ptr %.sroa.0472.0526, align 8, !tbaa !242 ; 3 uses
  %i.bj = sext i32 %i.bi to i64
  %i.bk = load ptr, ptr %i.u, align 8, !tbaa !234 ; 7 uses
  %i.bl = load ptr, ptr %9, align 8, !tbaa !235   ; 6 uses
  %i.bm = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.bn = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.bo = sub i64 %i.bm, %i.bn                    ; 2 uses
  %i.bp = sdiv exact i64 %i.bo, 24                ; 8 uses
  %.not170 = icmp ugt i64 %i.bp, %i.bj
  br i1 %.not170, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.bq = add nsw i32 %i.bi, 1
  %i.br = sext i32 %i.bq to i64                   ; 4 uses
  %i.bs = icmp ult i64 %i.bp, %i.br
  br i1 %i.bs, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.bt = sub nuw nsw i64 %i.br, %i.bp            ; 5 uses
  %i.bu = load ptr, ptr %i.v, align 8, !tbaa !243
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = sub i64 %i.bv, %i.bm
  %i.bx = sdiv exact i64 %i.bw, 24                ; 2 uses
  %i.by = icmp ult i64 %i.bp, 384307168202282326
  call void @llvm.assume(i1 %i.by)
  %i.bz = sub nuw nsw i64 384307168202282325, %i.bp
  %i.ca = icmp ule i64 %i.bx, %i.bz
  call void @llvm.assume(i1 %i.ca)
  %.not28.i = icmp ult i64 %i.bx, %i.bt
  br i1 %.not28.i, label %bb.g, label %_ZSt27__uninitialized_default_n_aIPSt6vectorIdSaIdEEmS2_ET_S4_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPSt6vectorIdSaIdEEmS2_ET_S4_T0_RSaIT1_E.exit.i: ; preds = %bb.f
  %i.cb = mul nuw nsw i64 %i.bt, 24               ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.bk, i8 0, i64 %i.cb, i1 false)
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.bk, i64 %i.cb
  store ptr %scevgep.i.i.i.i, ptr %i.u, align 8, !tbaa !234
  br label %_ZNSt6vectorIS_IdSaIdEESaIS1_EE6resizeEm.exit

bb.g:                                             ; preds = %bb.f
  %i.cc = icmp slt i32 %i.bi, -1
  br i1 %i.cc, label %.invoke, label %_ZNKSt6vectorIS_IdSaIdEESaIS1_EE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorIS_IdSaIdEESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.g
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bp, i64 %i.bt)
  %i.cd = add nuw nsw i64 %.sroa.speculated.i.i, %i.bp
  %i.ce = call i64 @llvm.umin.i64(i64 %i.cd, i64 384307168202282325) ; 2 uses
  %i.cf = mul nuw nsw i64 %i.ce, 24
  %i.cg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cf) #37
          to label %.noexc392 unwind label %.loopexit511 ; 4 uses

.noexc392:                                        ; preds = %_ZNKSt6vectorIS_IdSaIdEESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.bo ; 2 uses
  %i.ci = mul nuw nsw i64 %i.bt, 24
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ch, i8 0, i64 %i.ci, i1 false)
  %.not10.i.i.i.i = icmp eq ptr %i.bl, %i.bk
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i389

.lr.ph.i.i.i.i389:                                ; preds = %.noexc392, %.lr.ph.i.i.i.i389
  %.012.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i389 ], [ %i.cg, %.noexc392 ] ; 3 uses
  %.0911.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i389 ], [ %i.bl, %.noexc392 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !588)
  call void @llvm.experimental.noalias.scope.decl(metadata !589)
  %i.cj = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !244, !alias.scope !589, !noalias !588
  store <2 x ptr> %i.cj, ptr %.012.i.i.i.i, align 8, !tbaa !244, !alias.scope !588, !noalias !589
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !245, !alias.scope !589, !noalias !588
  store ptr %i.cm, ptr %i.ck, align 8, !tbaa !245, !alias.scope !588, !noalias !589
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !589, !noalias !588
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24
  %.not.i.i.i.i390 = icmp eq ptr %i.cn, %i.bk
  br i1 %.not.i.i.i.i390, label %_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i389, !llvm.loop !552

_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i389, %.noexc392
  %.not.i36.i = icmp eq ptr %i.bl, null
  br i1 %.not.i36.i, label %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE13_M_deallocateEPS2_m.exit37.i, label %bb.h
end_hunk_0
begin_hunk_1_@_ZN8LightGBM13DatasetLoader31ConstructBinMappersFromTextDataEiiRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEPKNS_6ParserEPNS_7DatasetE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  store ptr %i.lu, ptr %15, align 8, !tbaa !133
  %i.nj = load i64, ptr %i.lw, align 8
  %i.nk = getelementptr inbounds i8, ptr %15, i64 %i.nj
  store ptr %i.lv, ptr %i.nk, align 8, !tbaa !133
  store ptr %i.lx, ptr %i.lm, align 8, !tbaa !133
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ly, align 8, !tbaa !133
  %i.nl = load ptr, ptr %i.ls, align 8, !tbaa !107 ; 2 uses
  %i.nm = icmp eq ptr %i.nl, %i.lz
  br i1 %i.nm, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209
  %i.nn = load i64, ptr %i.lz, align 8, !tbaa !106
  %i.no = add i64 %i.nn, 1
  call void @_ZdlPvm(ptr noundef %i.nl, i64 noundef %i.no) #35
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ly, align 8, !tbaa !133
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ma) #20
  store ptr %i.mb, ptr %15, align 8, !tbaa !133
  %i.np = load i64, ptr %i.md, align 8
  %i.nq = getelementptr inbounds i8, ptr %15, i64 %i.np
  store ptr %i.mc, ptr %i.nq, align 8, !tbaa !133
  store i64 0, ptr %i.me, align 8, !tbaa !155
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.mf) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  %i.nr = add nuw nsw i32 %.099531, 1             ; 2 uses
  %i.ns = load i32, ptr %i.hk, align 4, !tbaa !253
  %i.nt = icmp slt i32 %i.nr, %i.ns
  br i1 %i.nt, label %bb.bj, label %.loopexit510, !llvm.loop !561

bb.bs:                                            ; preds = %bb.bj
  %i.nu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bt:                                            ; preds = %bb.bk, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.nv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bu:                                            ; preds = %bb.br
  %i.nw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nx = load ptr, ptr %16, align 8, !tbaa !107  ; 2 uses
  %i.ny = icmp eq ptr %i.nx, %i.ln
  br i1 %i.ny, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.bu, %bb.bn
  %.sink = phi ptr [ %i.mr, %bb.bn ], [ %i.nx, %bb.bu ]
  %.pn163.ph = phi { ptr, i32 } [ %i.mq, %bb.bn ], [ %i.nw, %bb.bu ]
  %i.nz = load i64, ptr %i.ln, align 8, !tbaa !106
  %i.oa = add i64 %i.nz, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.oa) #35
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.bu, %bb.bn
  %.pn163 = phi { ptr, i32 } [ %i.mq, %bb.bn ], [ %i.nw, %bb.bu ], [ %.pn163.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %bb.bv

bb.bv:                                            ; preds = %.body, %bb.bt
  %.pn163.pn = phi { ptr, i32 } [ %.pn163, %.body ], [ %i.nv, %bb.bt ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %15) #20
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bs
  %.pn163.pn.pn = phi { ptr, i32 } [ %.pn163.pn, %bb.bv ], [ %i.nu, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br label %bb.fw

.loopexit510:                                     ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %.preheader509, %bb.bi
  invoke void @_ZN8LightGBM7Dataset17set_feature_namesERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(864) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.hq)
          to label %bb.bx unwind label %bb.bb

bb.bx:                                            ; preds = %.loopexit510
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  %i.ob = load i32, ptr %i.hk, align 4, !tbaa !253 ; 3 uses
  %i.oc = sext i32 %i.ob to i64                   ; 2 uses
  %i.od = icmp slt i32 %i.ob, 0
  br i1 %i.od, label %bb.by, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #36
          to label %.noexc214 unwind label %bb.cf

.noexc214:                                        ; preds = %bb.by
  unreachable

_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.bx
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %.not.i.i.i.i213 = icmp eq i32 %i.ob, 0
  br i1 %.not.i.i.i.i213, label %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EEC2EmRKS6_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  store i64 0, ptr %17, align 8
  br label %bb.bz

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.oe = shl nuw nsw i64 %i.oc, 3                ; 3 uses
  %i.of = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.oe) #37
          to label %.noexc215 unwind label %bb.cf ; 4 uses

.noexc215:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.of, ptr %17, align 8, !tbaa !256
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.of, i64 %i.oc
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.of, i8 0, i64 %i.oe, i1 false), !tbaa !259
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.of, i64 %i.oe
  br label %bb.bz

bb.bz:                                            ; preds = %.noexc215, %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EEC2EmRKS6_.exit.thread.i
  %.sink.i = phi ptr [ null, %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %i.og, %.noexc215 ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %scevgep.i.i.i.i.i, %.noexc215 ]
  %i.oh = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  store ptr %.sink.i, ptr %i.oi, align 8, !tbaa !260
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.oh, align 8, !tbaa !261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  %i.oj = load ptr, ptr %0, align 8, !tbaa !108, !nonnull !100, !align !109
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 308
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !262
  %i.om = sext i32 %i.ol to i64
  %i.on = load ptr, ptr %i.k, align 8, !tbaa !113
  %i.oo = load ptr, ptr %3, align 8, !tbaa !112
  %i.op = ptrtoint ptr %i.on to i64
  %i.oq = ptrtoint ptr %i.oo to i64
  %i.or = sub i64 %i.op, %i.oq
  %i.os = ashr exact i64 %i.or, 5
  %i.ot = mul i64 %i.os, %i.om
  %i.ou = uitofp i64 %i.ot to double
  %i.ov = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.ow = load i32, ptr %i.ov, align 8, !tbaa !213
  %i.ox = sitofp i32 %i.ow to double
  %i.oy = fdiv double %i.ou, %i.ox
  %i.oz = fptosi double %i.oy to i32
  store i32 %i.oz, ptr %i.h, align 4, !tbaa !134
  %i.pa = icmp eq i32 %2, 1
  br i1 %i.pa, label %bb.ca, label %bb.ch

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %18, i8 0, i64 48, i1 false)
  %i.pb = invoke i32 @OMP_NUM_THREADS()
          to label %bb.cb unwind label %bb.cg

bb.cb:                                            ; preds = %bb.ca
  call void @__kmpc_push_num_threads(ptr nonnull @1, i32 %i.i, i32 %i.pb)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 7, ptr nonnull @_ZN8LightGBM13DatasetLoader31ConstructBinMappersFromTextDataEiiRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEPKNS_6ParserEPNS_7DatasetE.omp_outlined, ptr nonnull %9, ptr nonnull %0, ptr nonnull %17, ptr nonnull %3, ptr nonnull %i.h, ptr nonnull %13, ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.pc = load ptr, ptr %18, align 8, !tbaa !264  ; 2 uses
  %.not.i216 = icmp eq ptr %i.pc, null
  br i1 %.not.i216, label %_ZN21ThreadExceptionHelperD2Ev.exit, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i: ; preds = %bb.cb
  store ptr %i.pc, ptr %8, align 8, !tbaa !264
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr nofree noundef nonnull align 8 dereferenceable(8) %8) #36
          to label %bb.cc unwind label %bb.cd

bb.cc:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i
  unreachable

bb.cd:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i
  %i.pd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pe = load ptr, ptr %8, align 8, !tbaa !264
  %.not.i3.i = icmp eq ptr %i.pe, null
  br i1 %.not.i3.i, label %.body217, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  br label %.body217

_ZN21ThreadExceptionHelperD2Ev.exit:              ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  br label %bb.ev

bb.cf:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.by
  %i.pf = landingpad { ptr, i32 }
          cleanup
  br label %bb.fv

bb.cg:                                            ; preds = %bb.ca
  %i.pg = landingpad { ptr, i32 }
          cleanup
  br label %.body217

.body217:                                         ; preds = %bb.cd, %bb.ce, %bb.cg
  %eh.lpad-body218 = phi { ptr, i32 } [ %i.pg, %bb.cg ], [ %i.pd, %bb.ce ], [ %i.pd, %bb.cd ]
  call void @_ZN21ThreadExceptionHelperD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  br label %_ZNSt6vectorIPiSaIS0_EED2Ev.exit352

bb.ch:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  %i.ph = sext i32 %2 to i64                      ; 5 uses
  %i.pi = icmp slt i32 %2, 0
  br i1 %i.pi, label %bb.ci, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.ci:                                            ; preds = %bb.ch
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #36
          to label %.noexc221 unwind label %bb.cj

.noexc221:                                        ; preds = %bb.ci
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.ch
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %.not.i.i.i.i220 = icmp eq i32 %2, 0
  br i1 %.not.i.i.i.i220, label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i228, label %23

23:                                               ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %24 = shl nuw nsw i64 %i.ph, 2                  ; 2 uses
  %25 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %24) #37
          to label %.noexc222 unwind label %bb.cj ; 4 uses

.noexc222:                                        ; preds = %23
  store ptr %25, ptr %19, align 8, !tbaa !215
  %26 = getelementptr inbounds nuw [4 x i8], ptr %25, i64 %i.ph
  %27 = getelementptr inbounds nuw i8, ptr %19, i64 16
  store ptr %26, ptr %27, align 8, !tbaa !216
  store i32 0, ptr %25, align 4, !tbaa !134
  %28 = getelementptr i8, ptr %25, i64 4          ; 3 uses
  %29 = add nsw i64 %i.ph, -1                     ; 3 uses
  %30 = icmp eq i64 %29, 0                        ; 2 uses
  br i1 %30, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.a, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc222
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %29, 2    ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %28, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !134
  %31 = getelementptr inbounds nuw i8, ptr %28, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.a

_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i228: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  br label %.noexc230

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.a: ; preds = %.noexc222, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i.ph = phi ptr [ %31, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %28, %.noexc222 ]
  %32 = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %.0.i.i.i.i.i.ph, ptr %32, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  %i.pj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %24) #37
          to label %.noexc222.a unwind label %bb.ck ; 6 uses

.noexc222.a:                                      ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.a
  store ptr %i.pj, ptr %20, align 8, !tbaa !215
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.pj, i64 %i.ph
  %i.pl = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %i.pk, ptr %i.pl, align 8, !tbaa !216
  store i32 0, ptr %i.pj, align 4, !tbaa !134
  %i.pm = getelementptr i8, ptr %i.pj, i64 4      ; 3 uses
  br i1 %30, label %.noexc230, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i225

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i225: ; preds = %.noexc222.a
  %.idx.i.i.i.i.i.i.i226 = shl nuw nsw i64 %29, 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.pm, i8 0, i64 %.idx.i.i.i.i.i.i.i226, i1 false), !tbaa !134
  %33 = getelementptr inbounds nuw i8, ptr %i.pm, i64 %.idx.i.i.i.i.i.i.i226
  br label %.noexc230

.noexc230:                                        ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i225, %.noexc222.a, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i228
  %34 = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i228 ], [ %i.pj, %.noexc222.a ], [ %i.pj, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i225 ] ; 9 uses
  %.0.i.i.i.i.i227 = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i228 ], [ %i.pm, %.noexc222.a ], [ %33, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i225 ]
  %i.pn = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %.0.i.i.i.i.i227, ptr %i.pn, align 8, !tbaa !214
  %i.po = load i32, ptr %i.hk, align 4, !tbaa !253
  %i.pp = add nsw i32 %2, -1                      ; 7 uses
  %i.pq = add i32 %i.pp, %i.po
  %i.pr = sdiv i32 %i.pq, %2
  %spec.store.select = call i32 @llvm.smax.i32(i32 %i.pr, i32 1) ; 6 uses
  %35 = load ptr, ptr %19, align 8, !tbaa !215    ; 14 uses
  store i32 0, ptr %35, align 4, !tbaa !134
  br i1 %i.hl, label %.lver.check, label %._crit_edge536

.lver.check:                                      ; preds = %.noexc230
  %wide.trip.count = zext nneg i32 %i.pp to i64   ; 5 uses
  %i.ps = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %scevgep783 = getelementptr i8, ptr %34, i64 %i.ps
  %i.pt = getelementptr i8, ptr %35, i64 %i.ps
  %scevgep784 = getelementptr i8, ptr %i.pt, i64 4
  %bound0785 = icmp ult ptr %34, %scevgep784
  %bound1786 = icmp ult ptr %35, %scevgep783
  %found.conflict787 = and i1 %bound0785, %bound1786
  br i1 %found.conflict787, label %.ph.lver.orig.preheader, label %.ph

.ph.lver.orig.preheader:                          ; preds = %.lver.check
  %xtraiter800 = and i64 %wide.trip.count, 1
  %i.pu = icmp eq i32 %i.pp, 1
  br i1 %i.pu, label %.ph.lver.orig.epil.preheader, label %.ph.lver.orig.preheader.new

.ph.lver.orig.preheader.new:                      ; preds = %.ph.lver.orig.preheader
  %unroll_iter805 = and i64 %wide.trip.count, 2147483646
  br label %.ph.lver.orig

.ph.lver.orig:                                    ; preds = %.ph.lver.orig, %.ph.lver.orig.preheader.new
  %i.pv = phi i32 [ 0, %.ph.lver.orig.preheader.new ], [ %i.qi, %.ph.lver.orig ]
  %indvars.iv562.lver.orig = phi i64 [ 0, %.ph.lver.orig.preheader.new ], [ %indvars.iv.next563.lver.orig.1, %.ph.lver.orig ] ; 4 uses
  %niter806 = phi i64 [ 0, %.ph.lver.orig.preheader.new ], [ %niter806.next.1, %.ph.lver.orig ]
  %i.pw = load i32, ptr %i.hk, align 4, !tbaa !253
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %indvars.iv562.lver.orig
  %i.py = sub nsw i32 %i.pw, %i.pv
  %.sroa.speculated.lver.orig = call i32 @llvm.smin.i32(i32 %i.py, i32 %spec.store.select) ; 2 uses
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %34, i64 %indvars.iv562.lver.orig
  store i32 %.sroa.speculated.lver.orig, ptr %i.pz, align 4, !tbaa !134
  %i.qa = load i32, ptr %i.px, align 4, !tbaa !134
  %i.qb = add nsw i32 %i.qa, %.sroa.speculated.lver.orig ; 2 uses
  %indvars.iv.next563.lver.orig = or disjoint i64 %indvars.iv562.lver.orig, 1 ; 3 uses
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %indvars.iv.next563.lver.orig
  store i32 %i.qb, ptr %i.qc, align 4, !tbaa !134
  %i.qd = load i32, ptr %i.hk, align 4, !tbaa !253
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %indvars.iv.next563.lver.orig
  %i.qf = sub nsw i32 %i.qd, %i.qb
  %.sroa.speculated.lver.orig.1 = call i32 @llvm.smin.i32(i32 %i.qf, i32 %spec.store.select) ; 2 uses
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %34, i64 %indvars.iv.next563.lver.orig
  store i32 %.sroa.speculated.lver.orig.1, ptr %i.qg, align 4, !tbaa !134
  %i.qh = load i32, ptr %i.qe, align 4, !tbaa !134
  %i.qi = add nsw i32 %i.qh, %.sroa.speculated.lver.orig.1 ; 3 uses
  %indvars.iv.next563.lver.orig.1 = add nuw nsw i64 %indvars.iv562.lver.orig, 2 ; 3 uses
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %indvars.iv.next563.lver.orig.1
  store i32 %i.qi, ptr %i.qj, align 4, !tbaa !134
  %niter806.next.1 = add nuw i64 %niter806, 2     ; 2 uses
  %niter806.ncmp.1 = icmp eq i64 %niter806.next.1, %unroll_iter805
  br i1 %niter806.ncmp.1, label %._crit_edge536.loopexit.unr-lcssa, label %.ph.lver.orig, !llvm.loop !562

.ph:                                              ; preds = %.lver.check
  %load_initial = load i32, ptr %35, align 4      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.qk = icmp eq i32 %i.pp, 1
  br i1 %i.qk, label %.epil.preheader, label %.ph.new

.ph.new:                                          ; preds = %.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.cl

bb.cj:                                            ; preds = %23, %bb.ci
  %i.ql = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit317

bb.ck:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.a
  %i.qm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit315

._crit_edge536.loopexit.unr-lcssa:                ; preds = %.ph.lver.orig
  %lcmp.mod803.not = icmp eq i64 %xtraiter800, 0
  br i1 %lcmp.mod803.not, label %._crit_edge536, label %.ph.lver.orig.epil.preheader

.ph.lver.orig.epil.preheader:                     ; preds = %._crit_edge536.loopexit.unr-lcssa, %.ph.lver.orig.preheader
  %.epil.init802 = phi i32 [ 0, %.ph.lver.orig.preheader ], [ %i.qi, %._crit_edge536.loopexit.unr-lcssa ]
  %indvars.iv562.lver.orig.epil.init = phi i64 [ 0, %.ph.lver.orig.preheader ], [ %indvars.iv.next563.lver.orig.1, %._crit_edge536.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod804 = trunc i32 %i.pp to i1
  call void @llvm.assume(i1 %lcmp.mod804)
  %i.qn = load i32, ptr %i.hk, align 4, !tbaa !253
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %indvars.iv562.lver.orig.epil.init
  %i.qp = sub nsw i32 %i.qn, %.epil.init802
  %.sroa.speculated.lver.orig.epil = call i32 @llvm.smin.i32(i32 %i.qp, i32 %spec.store.select) ; 2 uses
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %34, i64 %indvars.iv562.lver.orig.epil.init
  store i32 %.sroa.speculated.lver.orig.epil, ptr %i.qq, align 4, !tbaa !134
  %i.qr = load i32, ptr %i.qo, align 4, !tbaa !134
  %i.qs = add nsw i32 %i.qr, %.sroa.speculated.lver.orig.epil
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %indvars.iv562.lver.orig.epil.init
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 4
  store i32 %i.qs, ptr %i.qu, align 4, !tbaa !134
  br label %._crit_edge536

._crit_edge536.loopexit797.unr-lcssa:             ; preds = %bb.cl
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge536, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge536.loopexit797.unr-lcssa, %.ph
  %store_forwarded.epil.init = phi i32 [ %load_initial, %.ph ], [ %i.rr, %._crit_edge536.loopexit797.unr-lcssa ]
  %.epil.init = phi i32 [ 0, %.ph ], [ %i.rr, %._crit_edge536.loopexit797.unr-lcssa ]
  %indvars.iv562.epil.init = phi i64 [ 0, %.ph ], [ %indvars.iv.next563.1, %._crit_edge536.loopexit797.unr-lcssa ] ; 2 uses
  %lcmp.mod799 = trunc i32 %i.pp to i1
  call void @llvm.assume(i1 %lcmp.mod799)
  %i.qv = load i32, ptr %i.hk, align 4, !tbaa !253
  %i.qw = sub nsw i32 %i.qv, %.epil.init
  %.sroa.speculated.epil = call i32 @llvm.smin.i32(i32 %i.qw, i32 %spec.store.select) ; 2 uses
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %34, i64 %indvars.iv562.epil.init
  store i32 %.sroa.speculated.epil, ptr %i.qx, align 4, !tbaa !134
  %i.qy = add nsw i32 %store_forwarded.epil.init, %.sroa.speculated.epil
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %indvars.iv562.epil.init
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 4
  store i32 %i.qy, ptr %i.ra, align 4, !tbaa !134
  br label %._crit_edge536

._crit_edge536:                                   ; preds = %.epil.preheader, %._crit_edge536.loopexit797.unr-lcssa, %.ph.lver.orig.epil.preheader, %._crit_edge536.loopexit.unr-lcssa, %.noexc230
  %i.rb = load i32, ptr %i.hk, align 4, !tbaa !253
  %i.rc = sext i32 %i.pp to i64                   ; 4 uses
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %i.rc
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !134
  %i.rf = sub nsw i32 %i.rb, %i.re
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %34, i64 %i.rc
  store i32 %i.rf, ptr %i.rg, align 4, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %21, i8 0, i64 48, i1 false)
  %i.rh = invoke i32 @OMP_NUM_THREADS()
          to label %bb.cm unwind label %bb.ct

bb.cl:                                            ; preds = %bb.cl, %.ph.new
  %store_forwarded = phi i32 [ %load_initial, %.ph.new ], [ %i.rr, %bb.cl ]
  %i.ri = phi i32 [ 0, %.ph.new ], [ %i.rr, %bb.cl ]
  %indvars.iv562 = phi i64 [ 0, %.ph.new ], [ %indvars.iv.next563.1, %bb.cl ] ; 3 uses
  %niter = phi i64 [ 0, %.ph.new ], [ %niter.next.1, %bb.cl ]
  %i.rj = load i32, ptr %i.hk, align 4, !tbaa !253
  %i.rk = sub nsw i32 %i.rj, %i.ri
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.rk, i32 %spec.store.select) ; 2 uses
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %34, i64 %indvars.iv562
  store i32 %.sroa.speculated, ptr %i.rl, align 4, !tbaa !134
  %i.rm = add nsw i32 %store_forwarded, %.sroa.speculated ; 3 uses
  %indvars.iv.next563 = or disjoint i64 %indvars.iv562, 1 ; 2 uses
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %indvars.iv.next563
  store i32 %i.rm, ptr %i.rn, align 4, !tbaa !134
  %i.ro = load i32, ptr %i.hk, align 4, !tbaa !253
  %i.rp = sub nsw i32 %i.ro, %i.rm
  %.sroa.speculated.1 = call i32 @llvm.smin.i32(i32 %i.rp, i32 %spec.store.select) ; 2 uses
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %34, i64 %indvars.iv.next563
  store i32 %.sroa.speculated.1, ptr %i.rq, align 4, !tbaa !134
  %i.rr = add nsw i32 %i.rm, %.sroa.speculated.1  ; 5 uses
  %indvars.iv.next563.1 = add nuw nsw i64 %indvars.iv562, 2 ; 3 uses
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %35, i64 %indvars.iv.next563.1
  store i32 %i.rr, ptr %i.rs, align 4, !tbaa !134
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge536.loopexit797.unr-lcssa, label %bb.cl, !llvm.loop !562

bb.cm:                                            ; preds = %._crit_edge536
  call void @__kmpc_push_num_threads(ptr nonnull @1, i32 %i.i, i32 %i.rh)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 10, ptr nonnull @_ZN8LightGBM13DatasetLoader31ConstructBinMappersFromTextDataEiiRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEPKNS_6ParserEPNS_7DatasetE.omp_outlined.93, ptr nonnull %i.f, ptr nonnull %20, ptr nonnull %0, ptr nonnull %19, ptr nonnull %17, ptr nonnull %9, ptr nonnull %3, ptr nonnull %i.h, ptr nonnull %13, ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.rt = load ptr, ptr %21, align 8, !tbaa !264  ; 2 uses
  %.not.i233 = icmp eq ptr %i.rt, null
  br i1 %.not.i233, label %_ZN21ThreadExceptionHelper7ReThrowEv.exit239, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i234

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i234: ; preds = %bb.cm
  store ptr %i.rt, ptr %7, align 8, !tbaa !264
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #20
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr nofree noundef nonnull align 8 dereferenceable(8) %7) #36
          to label %bb.cn unwind label %bb.co

bb.cn:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i234
  unreachable

bb.co:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i234
  %i.ru = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rv = load ptr, ptr %7, align 8, !tbaa !264
  %.not.i3.i235 = icmp eq ptr %i.rv, null
  br i1 %.not.i3.i235, label %.body237, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #20
  br label %.body237

_ZN21ThreadExceptionHelper7ReThrowEv.exit239:     ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.rw = load i32, ptr %i.f, align 4, !tbaa !134 ; 2 uses
  %i.rx = sext i32 %i.rw to i64                   ; 2 uses
  %i.ry = load ptr, ptr %20, align 8, !tbaa !215  ; 2 uses
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.ry, i64 %i.rx
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !134
  %i.sb = icmp sgt i32 %i.sa, 0
  br i1 %i.sb, label %.lr.ph539, label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit

.lr.ph539:                                        ; preds = %_ZN21ThreadExceptionHelper7ReThrowEv.exit239
  %i.sc = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.sf = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.cu

._crit_edge540:                                   ; preds = %.loopexit506
  %i.sg = zext nneg i32 %.197 to i64              ; 3 uses
  %i.sh = icmp slt i32 %.197, 0
  br i1 %i.sh, label %bb.cq, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i

bb.cq:                                            ; preds = %._crit_edge540
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #36
          to label %.noexc242 unwind label %bb.dc

.noexc242:                                        ; preds = %bb.cq
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %._crit_edge540
  %.not.i.i.i.i240 = icmp eq i32 %.197, 0
  br i1 %.not.i.i.i.i240, label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit, label %bb.cr

bb.cr:                                            ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  %i.si = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sg) #37
          to label %.noexc243 unwind label %bb.dc ; 5 uses

.noexc243:                                        ; preds = %bb.cr
  %i.sj = getelementptr i8, ptr %i.si, i64 %i.sg  ; 2 uses
  store i8 0, ptr %i.si, align 1, !tbaa !106
  %i.sk = add nsw i64 %i.sg, -1                   ; 2 uses
  %i.sl = icmp eq i64 %i.sk, 0
  br i1 %i.sl, label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit, label %bb.cs

bb.cs:                                            ; preds = %.noexc243
  %i.sm = getelementptr inbounds nuw i8, ptr %i.si, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.sm, i8 0, i64 %i.sk, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit

bb.ct:                                            ; preds = %._crit_edge536
  %i.sn = landingpad { ptr, i32 }
          cleanup
  br label %.body237

bb.cu:                                            ; preds = %.lr.ph539, %.loopexit506
  %i.so = phi ptr [ %i.ry, %.lr.ph539 ], [ %i.tw, %.loopexit506 ] ; 3 uses
  %i.sp = phi i32 [ %i.rw, %.lr.ph539 ], [ %i.tx, %.loopexit506 ] ; 3 uses
  %indvars.iv565 = phi i64 [ 0, %.lr.ph539 ], [ %indvars.iv.next566, %.loopexit506 ] ; 3 uses
  %i.sq = phi i64 [ %i.rx, %.lr.ph539 ], [ %i.ty, %.loopexit506 ]
  %.096537 = phi i32 [ 0, %.lr.ph539 ], [ %.197, %.loopexit506 ] ; 4 uses
  %i.sr = load ptr, ptr %19, align 8, !tbaa !215
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.sr, i64 %i.sq
  %i.st = load i32, ptr %i.ss, align 4, !tbaa !134
  %i.su = trunc nuw nsw i64 %indvars.iv565 to i32
  %i.sv = add nsw i32 %i.st, %i.su                ; 4 uses
  %i.sw = load i64, ptr %i.sc, align 8, !tbaa !181
  %.not.not.i.i.i = icmp eq i64 %i.sw, 0
  br i1 %.not.not.i.i.i, label %.preheader558, label %bb.cw

.preheader558:                                    ; preds = %bb.cu, %bb.cv
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.cv ], [ %i.sf, %bb.cu ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !137 ; 3 uses
  %.not.i.i.i245 = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i245, label %.loopexit505, label %bb.cv

bb.cv:                                            ; preds = %.preheader558
  %i.sx = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !134
  %i.sz = icmp eq i32 %i.sv, %i.sy
  br i1 %i.sz, label %.loopexit506, label %.preheader558, !llvm.loop !13

bb.cw:                                            ; preds = %bb.cu
  %i.ta = sext i32 %i.sv to i64
  %i.tb = load i64, ptr %i.se, align 8, !tbaa !94 ; 2 uses
  %i.tc = urem i64 %i.ta, %i.tb                   ; 2 uses
  %i.td = load ptr, ptr %i.sd, align 8, !tbaa !93
  %i.te = getelementptr inbounds nuw [8 x i8], ptr %i.td, i64 %i.tc
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !172 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.tf, null
  br i1 %.not.i.i.i.i.i, label %.loopexit505, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !137 ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 8
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !134
  %i.tj = icmp eq i32 %i.sv, %i.ti
  br i1 %i.tj, label %.loopexit506, label %.lr.ph.i.i.i.i.i

bb.cy:                                            ; preds = %bb.cz
  %i.tk = icmp eq i32 %i.sv, %i.tn
  br i1 %i.tk, label %.loopexit506, label %.lr.ph.i.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.cx, %bb.cy
  %.020.i.i.i.i.i = phi ptr [ %i.tl, %bb.cy ], [ %i.tg, %bb.cx ]
  %i.tl = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !137 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.tl, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit505, label %bb.cz

bb.cz:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 8
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !134 ; 2 uses
  %i.to = sext i32 %i.tn to i64
  %i.tp = urem i64 %i.to, %i.tb
  %.not19.i.i.i.i.i = icmp eq i64 %i.tp, %i.tc
  br i1 %.not19.i.i.i.i.i, label %bb.cy, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !7

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.cz
  br label %.loopexit505, !llvm.loop !7

.loopexit505:                                     ; preds = %.lr.ph.i.i.i.i.i, %.preheader558, %..loopexit_crit_edge21.i.i.i.i.i, %bb.cw
  %i.tq = load ptr, ptr %17, align 8, !tbaa !256
  %i.tr = getelementptr inbounds nuw [8 x i8], ptr %i.tq, i64 %indvars.iv565
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !265
  %i.tt = invoke noundef i64 @_ZNK8LightGBM9BinMapper11SizesInByteEv(ptr noundef nonnull align 8 dereferenceable(160) %i.ts)
          to label %bb.da unwind label %bb.db

bb.da:                                            ; preds = %.loopexit505
  %i.tu = trunc i64 %i.tt to i32
  %i.tv = add nsw i32 %.096537, %i.tu
  %.pre589.a = load i32, ptr %i.f, align 4, !tbaa !134
  %.pre590.a = load ptr, ptr %20, align 8, !tbaa !215
  br label %.loopexit506

.loopexit506:                                     ; preds = %bb.cy, %bb.cv, %bb.cx, %bb.da
  %i.tw = phi ptr [ %.pre590.a, %bb.da ], [ %i.so, %bb.cv ], [ %i.so, %bb.cx ], [ %i.so, %bb.cy ] ; 2 uses
  %i.tx = phi i32 [ %.pre589.a, %bb.da ], [ %i.sp, %bb.cv ], [ %i.sp, %bb.cx ], [ %i.sp, %bb.cy ] ; 2 uses
  %.197 = phi i32 [ %i.tv, %bb.da ], [ %.096537, %bb.cv ], [ %.096537, %bb.cx ], [ %.096537, %bb.cy ] ; 6 uses
  %indvars.iv.next566 = add nuw nsw i64 %indvars.iv565, 1 ; 2 uses
  %i.ty = sext i32 %i.tx to i64                   ; 2 uses
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.tw, i64 %i.ty
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !134
  %i.ub = sext i32 %i.ua to i64
  %i.uc = icmp slt i64 %indvars.iv.next566, %i.ub
  br i1 %i.uc, label %bb.cu, label %._crit_edge540, !llvm.loop !563

bb.db:                                            ; preds = %.loopexit505
  %i.ud = landingpad { ptr, i32 }
          cleanup
  br label %.body237

_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit:               ; preds = %_ZN21ThreadExceptionHelper7ReThrowEv.exit239, %bb.cs, %.noexc243, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  %.096.lcssa725728 = phi i32 [ %.197, %bb.cs ], [ %.197, %.noexc243 ], [ 0, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i ], [ 0, %_ZN21ThreadExceptionHelper7ReThrowEv.exit239 ]
  %.sroa.0447.0 = phi ptr [ %i.si, %bb.cs ], [ %i.si, %.noexc243 ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i ], [ null, %_ZN21ThreadExceptionHelper7ReThrowEv.exit239 ] ; 8 uses
  %.sroa.11452.0 = phi ptr [ %i.sj, %bb.cs ], [ %i.sj, %.noexc243 ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i ], [ null, %_ZN21ThreadExceptionHelper7ReThrowEv.exit239 ] ; 2 uses
  %i.ue = load i32, ptr %i.f, align 4, !tbaa !134
  %i.uf = sext i32 %i.ue to i64                   ; 2 uses
  %i.ug = load ptr, ptr %20, align 8, !tbaa !215
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.ug, i64 %i.uf
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !134
  %i.uj = icmp sgt i32 %i.ui, 0
  br i1 %i.uj, label %.lr.ph544, label %._crit_edge545

.lr.ph544:                                        ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit
  %i.uk = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.um = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.un = getelementptr inbounds nuw i8, ptr %0, i64 80
end_hunk_1
