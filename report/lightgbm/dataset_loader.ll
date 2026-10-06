Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/dataset_loader?download=true
inline.NumInlined: 4751
inline.NumDeleted: 1921
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN8LightGBM13DatasetLoader24SampleTextDataFromMemoryERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE:bb.a
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 5                   ; 2 uses
  %spec.select22 = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.d)
  %spec.select = trunc i64 %spec.select22 to i32
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
  store ptr %i.w, ptr %0, align 8, !tbaa !113
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %i.t
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.x, ptr %i.y, align 8, !tbaa !115
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc18, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.prol ], [ %i.w, %.noexc18 ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.ab, %.lr.ph.i.i.i.i.i.prol ], [ %i.t, %.noexc18 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc18 ]
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.z, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !105
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.aa, align 8, !tbaa !106
  store i8 0, ptr %i.z, align 8, !tbaa !107
  %i.ab = add nsw i64 %.057.i.i.i.i.i.prol, -1    ; 2 uses
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
  store ptr %i.ae, ptr %.08.i.i.i.i.i, align 8, !tbaa !105
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.af, align 8, !tbaa !106
  store i8 0, ptr %i.ae, align 8, !tbaa !107
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !105
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.ai, align 8, !tbaa !106
  store i8 0, ptr %i.ah, align 8, !tbaa !107
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !105
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.al, align 8, !tbaa !106
  store i8 0, ptr %i.ak, align 8, !tbaa !107
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.an, ptr %i.am, align 8, !tbaa !105
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.ao, align 8, !tbaa !106
  store i8 0, ptr %i.an, align 8, !tbaa !107
  %i.ap = add nsw i64 %.057.i.i.i.i.i, -4         ; 2 uses
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
  store ptr %.lcssa50, ptr %i.as, align 8, !tbaa !114
  br i1 %i.ar, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %bb.b
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.lr.ph:                                           ; preds = %.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.au = phi ptr [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ], [ %.pre32, %.loopexit ]
  %.027 = phi i64 [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ], [ 0, %.loopexit ] ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %.027
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !135
  %i.ax = sext i32 %i.aw to i64
  %i.ay = load ptr, ptr %2, align 8, !tbaa !113
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
  store i32 %1, ptr %i.f, align 4, !tbaa !135
  %i.j = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !114
  %i.m = load ptr, ptr %3, align 8, !tbaa !113    ; 2 uses
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
  %i.ah = load ptr, ptr %4, align 8, !tbaa !134
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
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !108
  %i.ar = load ptr, ptr %4, align 8, !tbaa !134
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
  %i.az = load ptr, ptr %i.k, align 8, !tbaa !114
  %i.ba = load ptr, ptr %3, align 8, !tbaa !113   ; 2 uses
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
  br label %bb.ga

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
end_hunk_0
begin_hunk_1_@_ZN8LightGBM13DatasetLoader31ConstructBinMappersFromTextDataEiiRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEPKNS_6ParserEPNS_7DatasetE:bb.a
  %i.mf = getelementptr inbounds nuw i8, ptr %15, i64 128
  br label %bb.bj

bb.bj:                                            ; preds = %.lr.ph532, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %.099531 = phi i32 [ 0, %.lr.ph532 ], [ %i.nr, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %15)
          to label %bb.bk unwind label %bb.bs

bb.bk:                                            ; preds = %bb.bj
  %i.mg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.lm, ptr noundef nonnull @.str.61, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.bt ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.bk
  %i.mh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.lm, i32 noundef %.099531)
          to label %bb.bl unwind label %bb.bt     ; 0 uses

bb.bl:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !592)
  call void @llvm.experimental.noalias.scope.decl(metadata !593)
  store ptr %i.ln, ptr %16, align 8, !tbaa !105, !alias.scope !594
  store i64 0, ptr %i.lo, align 8, !tbaa !106, !alias.scope !594
  store i8 0, ptr %i.ln, align 8, !tbaa !107, !alias.scope !594
  %i.mi = load ptr, ptr %i.lp, align 8, !tbaa !153, !noalias !594 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.mi, null
  %i.mj = load ptr, ptr %i.lq, align 8, !noalias !594 ; 2 uses
  %i.mk = icmp ugt ptr %i.mi, %i.mj
  %.08.i.i.i = select i1 %i.mk, ptr %i.mi, ptr %i.mj ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i204 = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i204, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ml = load ptr, ptr %i.lr, align 8, !tbaa !154, !noalias !594 ; 2 uses
  %i.mm = ptrtoint ptr %.08.i.i.i to i64
  %i.mn = ptrtoint ptr %i.ml to i64
  %i.mo = sub i64 %i.mm, %i.mn
  %i.mp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef 0, i64 noundef 0, ptr noundef %i.ml, i64 noundef %i.mo)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.bn ; 0 uses

bb.bn:                                            ; preds = %bb.bo, %bb.bm
  %i.mq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mr = load ptr, ptr %16, align 8, !tbaa !108, !alias.scope !594 ; 2 uses
  %i.ms = icmp eq ptr %i.mr, %i.ln
  br i1 %i.ms, label %.body, label %.body.sink.split

bb.bo:                                            ; preds = %bb.bl
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %i.ls)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.bn

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.bo, %bb.bm
  %i.mt = load ptr, ptr %i.hs, align 8, !tbaa !114 ; 6 uses
  %i.mu = load ptr, ptr %i.lt, align 8, !tbaa !115
  %.not.i.i205 = icmp eq ptr %i.mt, %i.mu
  br i1 %.not.i.i205, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mt, i64 16 ; 3 uses
  store ptr %i.mv, ptr %i.mt, align 8, !tbaa !105
  %i.mw = load ptr, ptr %16, align 8, !tbaa !108  ; 2 uses
  %i.mx = icmp eq ptr %i.mw, %i.ln
  br i1 %i.mx, label %bb.bq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.bq:                                            ; preds = %bb.bp
  %i.my = load i64, ptr %i.lo, align 8, !tbaa !106 ; 3 uses
  %i.mz = icmp ult i64 %i.my, 16
  call void @llvm.assume(i1 %i.mz)
  %i.na = add nuw nsw i64 %i.my, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.mv, ptr noundef nonnull align 8 dereferenceable(1) %i.ln, i64 %i.na, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.bp
  store ptr %i.mw, ptr %i.mt, align 8, !tbaa !108
  %i.nb = load i64, ptr %i.ln, align 8, !tbaa !107
  store i64 %i.nb, ptr %i.mv, align 8, !tbaa !107
  %.pre586 = load i64, ptr %i.lo, align 8, !tbaa !106
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.nc = phi i64 [ %.pre586, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.my, %bb.bq ]
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  store i64 %i.nc, ptr %i.nd, align 8, !tbaa !106
  store ptr %i.ln, ptr %16, align 8, !tbaa !108
  store i64 0, ptr %i.lo, align 8, !tbaa !106
  %i.ne = load ptr, ptr %i.hs, align 8, !tbaa !114
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 32
  store ptr %i.nf, ptr %i.hs, align 8, !tbaa !114
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209

bb.br:                                            ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.hq, ptr %i.mt, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.bu

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.br
  %.pre587 = load ptr, ptr %16, align 8, !tbaa !108 ; 2 uses
  %i.ng = icmp eq ptr %.pre587, %i.ln
  br i1 %i.ng, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.nh = load i64, ptr %i.ln, align 8, !tbaa !107
  %i.ni = add i64 %i.nh, 1
  call void @_ZdlPvm(ptr noundef %.pre587, i64 noundef %i.ni) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  store ptr %i.lu, ptr %15, align 8, !tbaa !134
  %i.nj = load i64, ptr %i.lw, align 8
  %i.nk = getelementptr inbounds i8, ptr %15, i64 %i.nj
  store ptr %i.lv, ptr %i.nk, align 8, !tbaa !134
  store ptr %i.lx, ptr %i.lm, align 8, !tbaa !134
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ly, align 8, !tbaa !134
  %i.nl = load ptr, ptr %i.ls, align 8, !tbaa !108 ; 2 uses
  %i.nm = icmp eq ptr %i.nl, %i.lz
  br i1 %i.nm, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209
  %i.nn = load i64, ptr %i.lz, align 8, !tbaa !107
  %i.no = add i64 %i.nn, 1
  call void @_ZdlPvm(ptr noundef %i.nl, i64 noundef %i.no) #35
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ly, align 8, !tbaa !134
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ma) #20
  store ptr %i.mb, ptr %15, align 8, !tbaa !134
  %i.np = load i64, ptr %i.md, align 8
  %i.nq = getelementptr inbounds i8, ptr %15, i64 %i.np
  store ptr %i.mc, ptr %i.nq, align 8, !tbaa !134
  store i64 0, ptr %i.me, align 8, !tbaa !156
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
  %i.nx = load ptr, ptr %16, align 8, !tbaa !108  ; 2 uses
  %i.ny = icmp eq ptr %i.nx, %i.ln
  br i1 %i.ny, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.bu, %bb.bn
  %.sink = phi ptr [ %i.mr, %bb.bn ], [ %i.nx, %bb.bu ]
  %.pn163.ph = phi { ptr, i32 } [ %i.mq, %bb.bn ], [ %i.nw, %bb.bu ]
  %i.nz = load i64, ptr %i.ln, align 8, !tbaa !107
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
  br label %bb.fz

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
  %i.oj = load ptr, ptr %0, align 8, !tbaa !109, !nonnull !100, !align !110
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 308
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !262
  %i.om = sext i32 %i.ol to i64
  %i.on = load ptr, ptr %i.k, align 8, !tbaa !114
  %i.oo = load ptr, ptr %3, align 8, !tbaa !113
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
  store i32 %i.oz, ptr %i.h, align 4, !tbaa !135
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
  br label %bb.ey

bb.cf:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.by
  %i.pf = landingpad { ptr, i32 }
          cleanup
  br label %bb.fy

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
          to label %.noexc221 unwind label %bb.cm

.noexc221:                                        ; preds = %bb.ci
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.ch
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %.not.i.i.i.i220 = icmp eq i32 %2, 0
  br i1 %.not.i.i.i.i220, label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i228, label %bb.cj

bb.cj:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.pj = shl nuw nsw i64 %i.ph, 2                ; 2 uses
  %i.pk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pj) #37
          to label %.noexc222 unwind label %bb.cm ; 4 uses

.noexc222:                                        ; preds = %bb.cj
  store ptr %i.pk, ptr %19, align 8, !tbaa !215
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %i.ph
  %i.pm = getelementptr inbounds nuw i8, ptr %19, i64 16
  store ptr %i.pl, ptr %i.pm, align 8, !tbaa !216
  store i32 0, ptr %i.pk, align 4, !tbaa !135
  %i.pn = getelementptr i8, ptr %i.pk, i64 4      ; 3 uses
  %i.po = add nsw i64 %i.ph, -1                   ; 3 uses
  %i.pp = icmp eq i64 %i.po, 0                    ; 2 uses
  br i1 %i.pp, label %bb.ck, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc222
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.po, 2  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.pn, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !135
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pn, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.ck

_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i228: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  br label %bb.cl

bb.ck:                                            ; preds = %.noexc222, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i.ph = phi ptr [ %i.pq, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.pn, %.noexc222 ]
  %i.pr = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %.0.i.i.i.i.i.ph, ptr %i.pr, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  %i.ps = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pj) #37
          to label %.noexc230 unwind label %bb.cn ; 6 uses

.noexc230:                                        ; preds = %bb.ck
  store ptr %i.ps, ptr %20, align 8, !tbaa !215
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.ps, i64 %i.ph
  %i.pu = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %i.pt, ptr %i.pu, align 8, !tbaa !216
  store i32 0, ptr %i.ps, align 4, !tbaa !135
  %i.pv = getelementptr i8, ptr %i.ps, i64 4      ; 3 uses
  br i1 %i.pp, label %bb.cl, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i225

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i225: ; preds = %.noexc230
  %.idx.i.i.i.i.i.i.i226 = shl nuw nsw i64 %i.po, 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.pv, i8 0, i64 %.idx.i.i.i.i.i.i.i226, i1 false), !tbaa !135
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 %.idx.i.i.i.i.i.i.i226
  br label %bb.cl

bb.cl:                                            ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i225, %.noexc230, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i228
  %i.px = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i228 ], [ %i.ps, %.noexc230 ], [ %i.ps, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i225 ] ; 9 uses
  %.0.i.i.i.i.i227 = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i228 ], [ %i.pv, %.noexc230 ], [ %i.pw, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i225 ]
  %i.py = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %.0.i.i.i.i.i227, ptr %i.py, align 8, !tbaa !214
  %i.pz = load i32, ptr %i.hk, align 4, !tbaa !253
  %i.qa = add nsw i32 %2, -1                      ; 7 uses
  %i.qb = add i32 %i.qa, %i.pz
  %i.qc = sdiv i32 %i.qb, %2
  %spec.store.select = call i32 @llvm.smax.i32(i32 %i.qc, i32 1) ; 6 uses
  %i.qd = load ptr, ptr %19, align 8, !tbaa !215  ; 14 uses
  store i32 0, ptr %i.qd, align 4, !tbaa !135
  br i1 %i.hl, label %.lver.check, label %._crit_edge536

.lver.check:                                      ; preds = %bb.cl
  %wide.trip.count = zext nneg i32 %i.qa to i64   ; 5 uses
  %i.qe = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %scevgep = getelementptr i8, ptr %i.px, i64 %i.qe
  %i.qf = getelementptr i8, ptr %i.qd, i64 %i.qe
  %scevgep787 = getelementptr i8, ptr %i.qf, i64 4
  %bound0788 = icmp ult ptr %i.px, %scevgep787
  %bound1789 = icmp ult ptr %i.qd, %scevgep
  %found.conflict790 = and i1 %bound0788, %bound1789
  br i1 %found.conflict790, label %.ph.lver.orig.preheader, label %.ph

.ph.lver.orig.preheader:                          ; preds = %.lver.check
  %xtraiter803 = and i64 %wide.trip.count, 1
  %i.qg = icmp eq i32 %i.qa, 1
  br i1 %i.qg, label %.ph.lver.orig.epil.preheader, label %.ph.lver.orig.preheader.new

.ph.lver.orig.preheader.new:                      ; preds = %.ph.lver.orig.preheader
  %unroll_iter808 = and i64 %wide.trip.count, 2147483646
  br label %.ph.lver.orig

.ph.lver.orig:                                    ; preds = %.ph.lver.orig, %.ph.lver.orig.preheader.new
  %i.qh = phi i32 [ 0, %.ph.lver.orig.preheader.new ], [ %i.qu, %.ph.lver.orig ]
  %indvars.iv562.lver.orig = phi i64 [ 0, %.ph.lver.orig.preheader.new ], [ %indvars.iv.next563.lver.orig.1, %.ph.lver.orig ] ; 4 uses
  %niter809 = phi i64 [ 0, %.ph.lver.orig.preheader.new ], [ %niter809.next.1, %.ph.lver.orig ]
  %i.qi = load i32, ptr %i.hk, align 4, !tbaa !253
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.qd, i64 %indvars.iv562.lver.orig
  %i.qk = sub nsw i32 %i.qi, %i.qh
  %.sroa.speculated.lver.orig = call i32 @llvm.smin.i32(i32 %i.qk, i32 %spec.store.select) ; 2 uses
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.px, i64 %indvars.iv562.lver.orig
  store i32 %.sroa.speculated.lver.orig, ptr %i.ql, align 4, !tbaa !135
  %i.qm = load i32, ptr %i.qj, align 4, !tbaa !135
  %i.qn = add nsw i32 %i.qm, %.sroa.speculated.lver.orig ; 2 uses
  %indvars.iv.next563.lver.orig = or disjoint i64 %indvars.iv562.lver.orig, 1 ; 3 uses
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %i.qd, i64 %indvars.iv.next563.lver.orig
  store i32 %i.qn, ptr %i.qo, align 4, !tbaa !135
  %i.qp = load i32, ptr %i.hk, align 4, !tbaa !253
end_hunk_1
begin_hunk_2_@_ZNSt19__shrink_to_fit_auxISt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS3_EESaIS6_EELb1EE8_S_do_itERS8_:bb.a
          to label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EED2Ev.exit unwind label %bb.d

_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block
  %.lcssa = phi ptr [ %i.u, %middle.block ], [ %i.ad, %.lr.ph.i.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %.pre = load ptr, ptr %0, align 8, !tbaa !230   ; 4 uses
  %.pre18 = load ptr, ptr %i.b, align 8, !tbaa !231 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !292 ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !230
  store ptr %.lcssa, ptr %i.b, align 8, !tbaa !231
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !292
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre18
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit, %_ZSt8_DestroyISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ak, %_ZSt8_DestroyISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EEEvPT_.exit.i.i.i ], [ %.pre, %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit ] ; 2 uses
  %i.aj = load ptr, ptr %.05.i.i.i, align 8, !tbaa !233 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN8LightGBM12FeatureGroupEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN8LightGBM12FeatureGroupEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZN8LightGBM12FeatureGroupD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.aj) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 96) #35
  br label %_ZSt8_DestroyISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN8LightGBM12FeatureGroupEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.ak, %.pre18
  br i1 %.not.i.i.i10, label %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !9

_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EEEvPT_.exit.i.i.i, %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit.thread, %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit
  %i.al = phi ptr [ %i.j, %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit.thread ], [ %i.ai, %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit ], [ %i.ai, %_ZSt8_DestroyISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EEEvPT_.exit.i.i.i ]
  %i.am = phi ptr [ %i.a, %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit.thread ], [ %.pre, %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit ], [ %.pre, %_ZSt8_DestroyISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EEEvPT_.exit.i.i.i ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ap) #35
  br label %_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %bb.c, %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i
  %.0 = phi i1 [ false, %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i ], [ true, %_ZSt8_DestroyIPSt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i ], [ true, %bb.c ]
  ret i1 %.0

bb.d:                                             ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  tail call void @__clang_call_terminate(ptr %i.ar) #34
  unreachable
}

declare void @_ZN8LightGBM8Metadata14LoadFromMemoryEPKv(ptr noundef nonnull align 8 dereferenceable(300), ptr noundef) local_unnamed_addr #11

declare void @_ZN8LightGBM8Metadata14PartitionLabelERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(300), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM12FeatureGroupC2EPKviRKSt6vectorIiSaIiEEi(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, i8 0, i64 80, i1 false)
  %i.e = invoke noundef ptr @_ZN8LightGBM12FeatureGroup24LoadDefinitionFromMemoryEPKvi(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, i32 noundef %4)
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %3, align 8, !tbaa !163    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !163  ; 2 uses
  %i.i = icmp eq ptr %i.f, %i.h
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.f to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 2
  %i.n = trunc i64 %i.m to i32
  %.017 = select i1 %i.i, i32 %2, i32 %i.n
  invoke void @_ZN8LightGBM12FeatureGroup12AllocateBinsEi(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %.017)
          to label %bb.d unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.q = load i8, ptr %i.p, align 8, !tbaa !332, !range !99, !noundef !100
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.d
  %i.s = load i32, ptr %0, align 8, !tbaa !334
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph, label %.loopexit

bb.e:                                             ; preds = %bb.i, %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.lr.ph:                                           ; preds = %.preheader, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %.preheader ] ; 3 uses
  %.02124 = phi ptr [ %i.ai, %bb.g ], [ %i.e, %.preheader ] ; 2 uses
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !340
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !310  ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !134
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef %.02124, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %.lr.ph
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !340
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !310 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !134
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = invoke noundef i64 %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.02124, i64 %i.ah
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aj = load i32, ptr %0, align 8, !tbaa !334
  %i.ak = sext i32 %i.aj to i64
  %i.al = icmp slt i64 %indvars.iv.next, %i.ak
  br i1 %i.al, label %.lr.ph, label %.loopexit, !llvm.loop !731

bb.h:                                             ; preds = %bb.f, %.lr.ph
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !310 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !134
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8
  invoke void %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef %i.e, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %.loopexit unwind label %bb.e

.loopexit:                                        ; preds = %bb.g, %.preheader, %bb.i
  ret void

bb.j:                                             ; preds = %bb.e, %bb.h, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %i.o, %bb.c ], [ %i.am, %bb.h ], [ %i.u, %bb.e ]
  tail call void @_ZNSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.d) #20
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !310 ; 3 uses
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN8LightGBM3BinESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN8LightGBM3BinEEclEPS1_.exit.i

_ZNKSt14default_deleteIN8LightGBM3BinEEclEPS1_.exit.i: ; preds = %bb.j
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !134
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(8) %i.ar) #20, !inline_history !17
  br label %_ZNSt10unique_ptrIN8LightGBM3BinESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN8LightGBM3BinESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.j, %_ZNKSt14default_deleteIN8LightGBM3BinEEclEPS1_.exit.i
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !312 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt10unique_ptrIN8LightGBM3BinESt14default_deleteIS1_EED2Ev.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !313
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ba) #35
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt10unique_ptrIN8LightGBM3BinESt14default_deleteIS1_EED2Ev.exit, %bb.k
  tail call void @_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #20
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN8LightGBM13DatasetLoader23ConstructFromSampleDataEPPdPPiiPKimil(ptr noundef nonnull align 8 dereferenceable(201) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i64 noundef %5, i32 noundef %6, i64 noundef %7) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %9 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %10 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 7 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %11 = alloca %"class.std::vector.155", align 8  ; 23 uses
  %12 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 19 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %15 = alloca %"class.std::vector.24", align 8   ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.j = alloca i32, align 4                      ; 6 uses
  %17 = alloca %class.ThreadExceptionHelper, align 8 ; 7 uses
  %i.k = alloca i32, align 4                      ; 9 uses
  %18 = alloca %"class.std::vector.19", align 8   ; 15 uses
  %19 = alloca %"class.std::vector.19", align 8   ; 18 uses
  %20 = alloca %class.ThreadExceptionHelper, align 8 ; 8 uses
  %21 = alloca %"class.std::vector.19", align 8   ; 10 uses
  %22 = alloca %"class.std::unique_ptr.105", align 8 ; 5 uses
  %i.l = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1) ; 2 uses
  store ptr %1, ptr %i.f, align 8, !tbaa !342
  store i32 %3, ptr %i.g, align 4, !tbaa !135
  store ptr %4, ptr %i.h, align 8, !tbaa !163
  store i64 %5, ptr %i.i, align 8, !tbaa !112
  %i.m = uitofp i64 %5 to double
  %i.n = uitofp i64 %7 to double
  %i.o = fdiv double %i.m, %i.n
  %i.p = fcmp olt double %i.o, f0x3FC99999A0000000
  %i.q = icmp ult i64 %5, 100000
  %or.cond.i = and i1 %i.q, %i.p
  br i1 %or.cond.i, label %bb.b, label %_ZN8LightGBM15CheckSampleSizeEmm.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8LightGBM3Log7WarningEPKcz(ptr noundef nonnull @.str.39)
  br label %_ZN8LightGBM15CheckSampleSizeEmm.exit

_ZN8LightGBM15CheckSampleSizeEmm.exit:            ; preds = %bb.a, %bb.b
  %i.r = tail call noundef i32 @_ZN8LightGBM7Network12num_machinesEv()
  %i.s = icmp sgt i32 %i.r, 1
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN8LightGBM15CheckSampleSizeEmm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %3, ptr %i.c, align 4, !tbaa !135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i32 %3, ptr %i.d, align 4, !tbaa !135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  store ptr @_ZZN8LightGBM7Network17GlobalSyncUpByMaxIiEET_S2_ENUlPKcPciiE_8__invokeES4_S5_ii, ptr %i.e, align 8, !tbaa !81
  call void @_ZN8LightGBM7Network9AllreduceEPciiS1_RKPFvPKcS1_iiE(ptr noundef nonnull %i.c, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  %i.t = load i32, ptr %i.d, align 4, !tbaa !135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN8LightGBM15CheckSampleSizeEmm.exit
  %.066 = phi i32 [ %i.t, %bb.c ], [ %3, %_ZN8LightGBM15CheckSampleSizeEmm.exit ] ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.u = sext i32 %.066 to i64                    ; 2 uses
  %i.v = icmp slt i32 %.066, 0
  br i1 %i.v, label %.noexc, label %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #36
  unreachable

_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq i32 %.066, 0            ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EEC2EmRKS6_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  store i64 0, ptr %11, align 8
  br label %bb.e

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.w = shl nuw nsw i64 %i.u, 3                  ; 3 uses
  %i.x = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #37 ; 4 uses
  store ptr %i.x, ptr %11, align 8, !tbaa !256
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.u
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.x, i8 0, i64 %i.w, i1 false), !tbaa !259
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.x, i64 %i.w
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EEC2EmRKS6_.exit.thread.i
  %.sink.i = phi ptr [ null, %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %i.y, %.lr.ph.preheader.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %scevgep.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr %.sink.i, ptr %i.aa, align 8, !tbaa !260
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.z, align 8, !tbaa !261
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !116
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !116
  %i.af = icmp eq ptr %i.ac, %i.ae
  %i.ag = load i32, ptr %i.g, align 4             ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  %or.cond = select i1 %i.af, i1 %i.ah, i1 false
  br i1 %or.cond, label %.lr.ph, label %.loopexit329

.lr.ph:                                           ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 11 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 96 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aq = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.as = getelementptr i8, ptr %i.aq, i64 -24
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 112 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %12, i64 80
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.az = getelementptr i8, ptr %i.ax, i64 -24
  %i.ba = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %12, i64 128
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %.071336 = phi i32 [ 0, %.lr.ph ], [ %i.cn, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %12)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.61, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.g
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, i32 noundef %.071336)
          to label %bb.h unwind label %bb.p       ; 0 uses

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !743)
  call void @llvm.experimental.noalias.scope.decl(metadata !744)
  store ptr %i.aj, ptr %13, align 8, !tbaa !105, !alias.scope !745
  store i64 0, ptr %i.ak, align 8, !tbaa !106, !alias.scope !745
  store i8 0, ptr %i.aj, align 8, !tbaa !107, !alias.scope !745
  %i.be = load ptr, ptr %i.al, align 8, !tbaa !153, !noalias !745 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.be, null
  %i.bf = load ptr, ptr %i.am, align 8, !noalias !745 ; 2 uses
  %i.bg = icmp ugt ptr %i.be, %i.bf
  %.08.i.i.i = select i1 %i.bg, ptr %i.be, ptr %i.bf ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bh = load ptr, ptr %i.an, align 8, !tbaa !154, !noalias !745 ; 2 uses
  %i.bi = ptrtoint ptr %.08.i.i.i to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef 0, ptr noundef %i.bh, i64 noundef %i.bk)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = load ptr, ptr %13, align 8, !tbaa !108, !alias.scope !745 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.aj
  br i1 %i.bo, label %.body, label %.body.sink.split

bb.k:                                             ; preds = %bb.h
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.ao)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.j

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.k, %bb.i
  %i.bp = load ptr, ptr %i.ad, align 8, !tbaa !114 ; 6 uses
  %i.bq = load ptr, ptr %i.ap, align 8, !tbaa !115
  %.not.i.i129 = icmp eq ptr %i.bp, %i.bq
  br i1 %.not.i.i129, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 3 uses
  store ptr %i.br, ptr %i.bp, align 8, !tbaa !105
  %i.bs = load ptr, ptr %13, align 8, !tbaa !108  ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.aj
  br i1 %i.bt, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.bu = load i64, ptr %i.ak, align 8, !tbaa !106 ; 3 uses
  %i.bv = icmp ult i64 %i.bu, 16
  call void @llvm.assume(i1 %i.bv)
  %i.bw = add nuw nsw i64 %i.bu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.br, ptr noundef nonnull align 8 dereferenceable(1) %i.aj, i64 %i.bw, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.l
  store ptr %i.bs, ptr %i.bp, align 8, !tbaa !108
  %i.bx = load i64, ptr %i.aj, align 8, !tbaa !107
  store i64 %i.bx, ptr %i.br, align 8, !tbaa !107
  %.pre = load i64, ptr %i.ak, align 8, !tbaa !106
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.by = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bu, %bb.m ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !106
  store ptr %i.aj, ptr %13, align 8, !tbaa !108
  store i64 0, ptr %i.ak, align 8, !tbaa !106
  %i.ca = load ptr, ptr %i.ad, align 8, !tbaa !114
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  store ptr %i.cb, ptr %i.ad, align 8, !tbaa !114
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.n:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.q

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.n
  %.pre381 = load ptr, ptr %13, align 8, !tbaa !108 ; 2 uses
  %i.cc = icmp eq ptr %.pre381, %i.aj
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.cd = load i64, ptr %i.aj, align 8, !tbaa !107
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %.pre381, i64 noundef %i.ce) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  store ptr %i.aq, ptr %12, align 8, !tbaa !134
  %i.cf = load i64, ptr %i.as, align 8
  %i.cg = getelementptr inbounds i8, ptr %12, i64 %i.cf
  store ptr %i.ar, ptr %i.cg, align 8, !tbaa !134
  store ptr %i.at, ptr %i.ai, align 8, !tbaa !134
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.au, align 8, !tbaa !134
  %i.ch = load ptr, ptr %i.ao, align 8, !tbaa !108 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.av
  br i1 %i.ci, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cj = load i64, ptr %i.av, align 8, !tbaa !107
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #35
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.au, align 8, !tbaa !134
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aw) #20
  store ptr %i.ax, ptr %12, align 8, !tbaa !134
  %i.cl = load i64, ptr %i.az, align 8
  %i.cm = getelementptr inbounds i8, ptr %12, i64 %i.cl
  store ptr %i.ay, ptr %i.cm, align 8, !tbaa !134
  store i64 0, ptr %i.ba, align 8, !tbaa !156
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bb) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.cn = add nuw nsw i32 %.071336, 1             ; 2 uses
  %i.co = load i32, ptr %i.g, align 4, !tbaa !135 ; 2 uses
  %i.cp = icmp slt i32 %i.cn, %i.co
  br i1 %i.cp, label %bb.f, label %.loopexit329, !llvm.loop !736

bb.o:                                             ; preds = %bb.f
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.p:                                             ; preds = %bb.g, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.n
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ct = load ptr, ptr %13, align 8, !tbaa !108  ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.aj
  br i1 %i.cu, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.q, %bb.j
  %.sink.a = phi ptr [ %i.bn, %bb.j ], [ %i.ct, %bb.q ]
  %.pn121.ph = phi { ptr, i32 } [ %i.bm, %bb.j ], [ %i.cs, %bb.q ]
  %i.cv = load i64, ptr %i.aj, align 8, !tbaa !107
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %.sink.a, i64 noundef %i.cw) #35
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.q, %bb.j
  %.pn121 = phi { ptr, i32 } [ %i.bm, %bb.j ], [ %i.cs, %bb.q ], [ %.pn121.ph, %.body.sink.split ]
end_hunk_2
